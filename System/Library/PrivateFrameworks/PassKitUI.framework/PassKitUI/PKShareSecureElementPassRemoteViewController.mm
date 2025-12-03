@interface PKShareSecureElementPassRemoteViewController
- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error;
- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error;
@end

@implementation PKShareSecureElementPassRemoteViewController

- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error
{
  errorCopy = error;
  codeCopy = code;
  lCopy = l;
  parentViewController = [(PKShareSecureElementPassRemoteViewController *)self parentViewController];
  [parentViewController didCreateShareURL:lCopy activationCode:codeCopy error:errorCopy];
}

- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error
{
  shareCopy = share;
  errorCopy = error;
  parentViewController = [(PKShareSecureElementPassRemoteViewController *)self parentViewController];
  [parentViewController didFinishShareWithDidUserShare:shareCopy error:errorCopy];
}

@end