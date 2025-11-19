@interface AFKEndpointInterfacePowerlogDisplay
- (PLIOKitOperatorComposition)comp;
- (void)cancel;
@end

@implementation AFKEndpointInterfacePowerlogDisplay

- (void)cancel
{
  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v4.receiver = self;
  v4.super_class = AFKEndpointInterfacePowerlogDisplay;
  [(AFKEndpointInterface *)&v4 cancel];
}

- (PLIOKitOperatorComposition)comp
{
  WeakRetained = objc_loadWeakRetained(&self->_comp);

  return WeakRetained;
}

@end