@interface _UIPanelControllerContentView
- (UIPanelController)_panelController;
- (id)description;
@end

@implementation _UIPanelControllerContentView

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIPanelControllerContentView;
  v3 = [(UIView *)&v7 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->__panelController);
    [v4 appendFormat:@" panelController=%p", WeakRetained];
  }

  return v4;
}

- (UIPanelController)_panelController
{
  WeakRetained = objc_loadWeakRetained(&self->__panelController);

  return WeakRetained;
}

@end