@interface PKLegacyButtonInterfaceButton
- (PKLegacyButtonInterfaceButton)initWithFrame:(CGRect)frame;
- (void)setShowSpinner:(BOOL)spinner;
- (void)updateBackgroundColorWithColor:(id)color;
- (void)updateTitleColorWithColor:(id)color;
- (void)updateWithImage:(id)image;
@end

@implementation PKLegacyButtonInterfaceButton

- (PKLegacyButtonInterfaceButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKLegacyButtonInterfaceButton;
  v3 = [(PKLegacyButtonInterfaceButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateBackgroundColorWithColor:(id)color
{
  colorCopy = color;
  if (self->_overrideBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_overrideBackgroundColor, color);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    colorCopy = v6;
  }
}

- (void)updateTitleColorWithColor:(id)color
{
  colorCopy = color;
  if (self->_overrideForegroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_overrideForegroundColor, color);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    colorCopy = v6;
  }
}

- (void)updateWithImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(PKLegacyButtonInterfaceButton *)self setNeedsUpdateConfiguration];
    imageCopy = v6;
  }
}

@end