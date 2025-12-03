@interface _SFAirDropRemoteViewController
- (SFAirDropViewServiceHostProtocol)airDropHost;
- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)success;
- (void)airDropViewServiceDidRequestDismissal;
- (void)airDropViewServiceDidStartTransfer;
- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler;
- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler;
- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient;
@end

@implementation _SFAirDropRemoteViewController

- (void)airDropViewServiceWillStartTransferToRecipient:(id)recipient
{
  recipientCopy = recipient;
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceWillStartTransferToRecipient:recipientCopy];
}

- (void)airDropViewServiceDidStartTransfer
{
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceDidStartTransfer];
}

- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)success
{
  successCopy = success;
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceDidFinishTransferWithSuccess:successCopy];
}

- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceRequestingSharedItemsWithDataRequest:requestCopy completionHandler:handlerCopy];
}

- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:handlerCopy];
}

- (void)airDropViewServiceDidRequestDismissal
{
  airDropHost = [(_SFAirDropRemoteViewController *)self airDropHost];
  [airDropHost airDropViewServiceDidRequestDismissal];
}

- (SFAirDropViewServiceHostProtocol)airDropHost
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropHost);

  return WeakRetained;
}

@end