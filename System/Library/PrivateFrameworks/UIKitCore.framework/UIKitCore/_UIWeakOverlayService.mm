@interface _UIWeakOverlayService
- (_UIOverlayService)service;
- (_UIWeakOverlayService)initWithService:(id)service;
- (void)performOverlayClientAction:(id)action;
@end

@implementation _UIWeakOverlayService

- (_UIWeakOverlayService)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = _UIWeakOverlayService;
  v5 = [(_UIWeakOverlayService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

- (void)performOverlayClientAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained performOverlayClientAction:actionCopy];
}

- (_UIOverlayService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end