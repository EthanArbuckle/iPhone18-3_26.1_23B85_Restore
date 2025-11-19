@interface SBHNavigationController
- (id)_backgroundColorForModalFormSheet;
- (void)setModalPresentedBackgroundColor:(id)a3;
@end

@implementation SBHNavigationController

- (void)setModalPresentedBackgroundColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5.receiver = self;
    v5.super_class = SBHNavigationController;
    v4 = [(SBHNavigationController *)&v5 _backgroundColorForModalFormSheet];
  }

  if (([(UIColor *)self->_modalPresentedBackgroundColor isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_modalPresentedBackgroundColor, v4);
  }
}

- (id)_backgroundColorForModalFormSheet
{
  v3 = [(SBHNavigationController *)self modalPresentedBackgroundColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHNavigationController;
    v5 = [(SBHNavigationController *)&v8 _backgroundColorForModalFormSheet];
  }

  v6 = v5;

  return v6;
}

@end