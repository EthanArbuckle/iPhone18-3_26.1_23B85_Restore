@interface _UIDebuggingOverlayDetailIvar
- (id)viewController;
- (void)_createVCIfNecessary;
- (void)_updateForInspectedView:(id)a3;
- (void)_updateForInspectedViewController:(id)a3;
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

- (void)_updateForInspectedView:(id)a3
{
  v4 = a3;
  [(_UIDebuggingOverlayDetailIvar *)self _createVCIfNecessary];
  [(UIDebuggingIvarViewController *)self->_vc setInspectedObject:v4];
}

- (void)_updateForInspectedViewController:(id)a3
{
  v4 = a3;
  [(_UIDebuggingOverlayDetailIvar *)self _createVCIfNecessary];
  [(UIDebuggingIvarViewController *)self->_vc setInspectedObject:v4];
}

@end