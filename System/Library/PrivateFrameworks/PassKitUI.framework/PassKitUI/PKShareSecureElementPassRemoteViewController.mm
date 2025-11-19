@interface PKShareSecureElementPassRemoteViewController
- (void)didCreateShareURL:(id)a3 activationCode:(id)a4 error:(id)a5;
- (void)didFinishShareWithDidUserShare:(BOOL)a3 error:(id)a4;
@end

@implementation PKShareSecureElementPassRemoteViewController

- (void)didCreateShareURL:(id)a3 activationCode:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKShareSecureElementPassRemoteViewController *)self parentViewController];
  [v11 didCreateShareURL:v10 activationCode:v9 error:v8];
}

- (void)didFinishShareWithDidUserShare:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PKShareSecureElementPassRemoteViewController *)self parentViewController];
  [v7 didFinishShareWithDidUserShare:v4 error:v6];
}

@end