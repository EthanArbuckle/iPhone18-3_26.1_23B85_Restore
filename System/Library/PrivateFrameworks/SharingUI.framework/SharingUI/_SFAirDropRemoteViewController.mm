@interface _SFAirDropRemoteViewController
- (SFAirDropViewServiceHostProtocol)airDropHost;
- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)a3;
- (void)airDropViewServiceDidRequestDismissal;
- (void)airDropViewServiceDidStartTransfer;
- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)a3;
- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)a3 completionHandler:(id)a4;
- (void)airDropViewServiceWillStartTransferToRecipient:(id)a3;
@end

@implementation _SFAirDropRemoteViewController

- (void)airDropViewServiceWillStartTransferToRecipient:(id)a3
{
  v4 = a3;
  v5 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v5 airDropViewServiceWillStartTransferToRecipient:v4];
}

- (void)airDropViewServiceDidStartTransfer
{
  v2 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v2 airDropViewServiceDidStartTransfer];
}

- (void)airDropViewServiceDidFinishTransferWithSuccess:(BOOL)a3
{
  v3 = a3;
  v4 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v4 airDropViewServiceDidFinishTransferWithSuccess:v3];
}

- (void)airDropViewServiceRequestingSharedItemsWithDataRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v8 airDropViewServiceRequestingSharedItemsWithDataRequest:v7 completionHandler:v6];
}

- (void)airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v5 airDropViewServiceRequestingSendingAppBundleIdentifierWithCompletionHandler:v4];
}

- (void)airDropViewServiceDidRequestDismissal
{
  v2 = [(_SFAirDropRemoteViewController *)self airDropHost];
  [v2 airDropViewServiceDidRequestDismissal];
}

- (SFAirDropViewServiceHostProtocol)airDropHost
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropHost);

  return WeakRetained;
}

@end