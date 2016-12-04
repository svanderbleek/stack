import StackTest

main :: IO ()
main = do
    stackCheckStdErr
      ["build", "--ghc-options=-ddump-simpl"]
      (expectMessage "Core files for other-modules for this executable written to: ")
