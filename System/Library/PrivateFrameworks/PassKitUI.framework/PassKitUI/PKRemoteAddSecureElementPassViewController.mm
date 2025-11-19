@interface PKRemoteAddSecureElementPassViewController
- (void)didFinishWithPasses:(id)a3 error:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemoteAddSecureElementPassViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "View service terminated with error: %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [(PKRemoteAddSecureElementPassViewController *)self didFinishWithPasses:0 error:v6];
}

- (void)didFinishWithPasses:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKRemoteAddSecureElementPassViewController *)self parentViewController];
  [v8 didFinishWithPasses:v7 error:v6];
}

@end