@interface PKOBKPrimaryButton
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)updateConfiguration;
@end

@implementation PKOBKPrimaryButton

- (void)setTitle:(id)title forState:(unint64_t)state
{
  objc_storeStrong(&self->_cachedTitle, title);

  [(PKOBKPrimaryButton *)self setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  v7.receiver = self;
  v7.super_class = PKOBKPrimaryButton;
  [(PKOBKPrimaryButton *)&v7 updateConfiguration];
  configuration = [(PKOBKPrimaryButton *)self configuration];
  if ([(PKLegacyButtonInterfaceButton *)self showSpinner])
  {
    title = [configuration title];
    cachedTitle = title;
    if (!title)
    {
      cachedTitle = self->_cachedTitle;
    }

    objc_storeStrong(&self->_cachedTitle, cachedTitle);

    [configuration setTitle:0];
  }

  else if (self->_cachedTitle)
  {
    [configuration setTitle:?];
    v6 = self->_cachedTitle;
    self->_cachedTitle = 0;
  }

  [(PKOBKPrimaryButton *)self setConfiguration:configuration];
}

@end