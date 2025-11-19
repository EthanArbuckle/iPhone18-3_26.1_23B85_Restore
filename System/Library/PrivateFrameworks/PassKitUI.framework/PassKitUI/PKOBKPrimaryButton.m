@interface PKOBKPrimaryButton
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)updateConfiguration;
@end

@implementation PKOBKPrimaryButton

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  objc_storeStrong(&self->_cachedTitle, a3);

  [(PKOBKPrimaryButton *)self setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  v7.receiver = self;
  v7.super_class = PKOBKPrimaryButton;
  [(PKOBKPrimaryButton *)&v7 updateConfiguration];
  v3 = [(PKOBKPrimaryButton *)self configuration];
  if ([(PKLegacyButtonInterfaceButton *)self showSpinner])
  {
    v4 = [v3 title];
    cachedTitle = v4;
    if (!v4)
    {
      cachedTitle = self->_cachedTitle;
    }

    objc_storeStrong(&self->_cachedTitle, cachedTitle);

    [v3 setTitle:0];
  }

  else if (self->_cachedTitle)
  {
    [v3 setTitle:?];
    v6 = self->_cachedTitle;
    self->_cachedTitle = 0;
  }

  [(PKOBKPrimaryButton *)self setConfiguration:v3];
}

@end