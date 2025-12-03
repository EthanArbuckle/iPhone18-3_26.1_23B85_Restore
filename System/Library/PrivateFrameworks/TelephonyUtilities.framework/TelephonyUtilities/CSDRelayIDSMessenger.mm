@interface CSDRelayIDSMessenger
- (CSDRelayIDSMessengerDelegate)delegate;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation CSDRelayIDSMessenger

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (CSDRelayIDSMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end