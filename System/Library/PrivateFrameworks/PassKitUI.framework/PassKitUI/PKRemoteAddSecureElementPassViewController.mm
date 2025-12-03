@interface PKRemoteAddSecureElementPassViewController
- (void)didFinishWithPasses:(id)passes error:(id)error;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemoteAddSecureElementPassViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "View service terminated with error: %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [(PKRemoteAddSecureElementPassViewController *)self didFinishWithPasses:0 error:v6];
}

- (void)didFinishWithPasses:(id)passes error:(id)error
{
  errorCopy = error;
  passesCopy = passes;
  parentViewController = [(PKRemoteAddSecureElementPassViewController *)self parentViewController];
  [parentViewController didFinishWithPasses:passesCopy error:errorCopy];
}

@end