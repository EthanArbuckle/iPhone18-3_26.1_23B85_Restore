@interface CSDRelayIDSMessenger
- (CSDRelayIDSMessengerDelegate)delegate;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation CSDRelayIDSMessenger

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (CSDRelayIDSMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end