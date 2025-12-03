@interface SBHNavigationController
- (id)_backgroundColorForModalFormSheet;
- (void)setModalPresentedBackgroundColor:(id)color;
@end

@implementation SBHNavigationController

- (void)setModalPresentedBackgroundColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v5.receiver = self;
    v5.super_class = SBHNavigationController;
    colorCopy = [(SBHNavigationController *)&v5 _backgroundColorForModalFormSheet];
  }

  if (([(UIColor *)self->_modalPresentedBackgroundColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_modalPresentedBackgroundColor, colorCopy);
  }
}

- (id)_backgroundColorForModalFormSheet
{
  modalPresentedBackgroundColor = [(SBHNavigationController *)self modalPresentedBackgroundColor];
  v4 = modalPresentedBackgroundColor;
  if (modalPresentedBackgroundColor)
  {
    _backgroundColorForModalFormSheet = modalPresentedBackgroundColor;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHNavigationController;
    _backgroundColorForModalFormSheet = [(SBHNavigationController *)&v8 _backgroundColorForModalFormSheet];
  }

  v6 = _backgroundColorForModalFormSheet;

  return v6;
}

@end