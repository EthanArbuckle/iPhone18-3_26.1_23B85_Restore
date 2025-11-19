@interface PKLegacyButtonInterfaceButton
- (PKLegacyButtonInterfaceButton)initWithFrame:(CGRect)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)updateBackgroundColorWithColor:(id)a3;
- (void)updateTitleColorWithColor:(id)a3;
- (void)updateWithImage:(id)a3;
@end

@implementation PKLegacyButtonInterfaceButton

- (PKLegacyButtonInterfaceButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKLegacyButtonInterfaceButton;
  v3 = [(PKLegacyButtonInterfaceButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = PKLegacyButtonInterfaceButton;
    [(PKLegacyButtonInterfaceButton *)&v6 setConfigurationUpdateHandler:&__block_literal_global_104];
  }

  return v4;
}

void __47__PKLegacyButtonInterfaceButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 configuration];
  [v3 setShowsActivityIndicator:v2[744]];
  [v3 setBaseBackgroundColor:*(v2 + 94)];
  [v3 setBaseForegroundColor:*(v2 + 95)];
  [v3 setImage:*(v2 + 96)];
  v4 = [v3 updatedConfigurationForButton:v2];

  [v2 setConfiguration:v4];
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateBackgroundColorWithColor:(id)a3
{
  v5 = a3;
  if (self->_overrideBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideBackgroundColor, a3);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

- (void)updateTitleColorWithColor:(id)a3
{
  v5 = a3;
  if (self->_overrideForegroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideForegroundColor, a3);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

- (void)updateWithImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

@end