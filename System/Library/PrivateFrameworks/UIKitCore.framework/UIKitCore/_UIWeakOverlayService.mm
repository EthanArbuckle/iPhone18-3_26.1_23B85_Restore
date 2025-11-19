@interface _UIWeakOverlayService
- (_UIOverlayService)service;
- (_UIWeakOverlayService)initWithService:(id)a3;
- (void)performOverlayClientAction:(id)a3;
@end

@implementation _UIWeakOverlayService

- (_UIWeakOverlayService)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIWeakOverlayService;
  v5 = [(_UIWeakOverlayService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

- (void)performOverlayClientAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained performOverlayClientAction:v4];
}

- (_UIOverlayService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end