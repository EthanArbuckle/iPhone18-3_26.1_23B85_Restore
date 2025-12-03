@interface PXCuratedLibraryLabel
+ (CGSize)sizeThatFits:(CGSize)fits withConfiguration:(id)configuration;
- (CGRect)clippingRect;
- (void)setUserData:(id)data;
@end

@implementation PXCuratedLibraryLabel

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy copy];
  userData = self->_userData;
  self->_userData = v5;

  text = [dataCopy text];
  [(PXCuratedLibraryLabel *)self setText:text];

  -[PXCuratedLibraryLabel setTextAlignment:](self, "setTextAlignment:", [dataCopy textAlignment]);
  v8 = +[PXCuratedLibraryOverlayButton defaultTitleFont];
  [(PXCuratedLibraryLabel *)self setFont:v8];

  textColor = [dataCopy textColor];

  [(PXCuratedLibraryLabel *)self setTextColor:textColor];
}

+ (CGSize)sizeThatFits:(CGSize)fits withConfiguration:(id)configuration
{
  height = fits.height;
  width = fits.width;
  v6 = sizeThatFits_withConfiguration__onceToken;
  configurationCopy = configuration;
  if (v6 != -1)
  {
    dispatch_once(&sizeThatFits_withConfiguration__onceToken, &__block_literal_global_250044);
  }

  [sizeThatFits_withConfiguration__measuringLabel setUserData:configurationCopy];

  [sizeThatFits_withConfiguration__measuringLabel sizeThatFits:{width, height}];
  v10 = ceil(v9);
  result.height = v8;
  result.width = v10;
  return result;
}

void __56__PXCuratedLibraryLabel_sizeThatFits_withConfiguration___block_invoke()
{
  v0 = objc_alloc_init(PXCuratedLibraryLabel);
  v1 = sizeThatFits_withConfiguration__measuringLabel;
  sizeThatFits_withConfiguration__measuringLabel = v0;
}

@end