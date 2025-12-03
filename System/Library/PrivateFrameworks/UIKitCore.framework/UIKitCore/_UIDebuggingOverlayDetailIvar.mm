@interface _UIDebuggingOverlayDetailIvar
- (id)viewController;
- (void)_createVCIfNecessary;
- (void)_updateForInspectedView:(id)view;
- (void)_updateForInspectedViewController:(id)controller;
@end

@implementation _UIDebuggingOverlayDetailIvar

- (void)_createVCIfNecessary
{
  if (!self->_vc)
  {
    v3 = objc_alloc_init(UIDebuggingIvarViewController);
    vc = self->_vc;
    self->_vc = v3;
  }
}

- (id)viewController
{
  [(_UIDebuggingOverlayDetailIvar *)self _createVCIfNecessary];
  vc = self->_vc;

  return vc;
}

- (void)_updateForInspectedView:(id)view
{
  viewCopy = view;
  [(_UIDebuggingOverlayDetailIvar *)self _createVCIfNecessary];
  [(UIDebuggingIvarViewController *)self->_vc setInspectedObject:viewCopy];
}

- (void)_updateForInspectedViewController:(id)controller
{
  controllerCopy = controller;
  [(_UIDebuggingOverlayDetailIvar *)self _createVCIfNecessary];
  [(UIDebuggingIvarViewController *)self->_vc setInspectedObject:controllerCopy];
}

@end