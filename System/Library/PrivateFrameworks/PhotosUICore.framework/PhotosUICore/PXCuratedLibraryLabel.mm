@interface PXCuratedLibraryLabel
+ (CGSize)sizeThatFits:(CGSize)a3 withConfiguration:(id)a4;
- (CGRect)clippingRect;
- (void)setUserData:(id)a3;
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

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  userData = self->_userData;
  self->_userData = v5;

  v7 = [v4 text];
  [(PXCuratedLibraryLabel *)self setText:v7];

  -[PXCuratedLibraryLabel setTextAlignment:](self, "setTextAlignment:", [v4 textAlignment]);
  v8 = +[PXCuratedLibraryOverlayButton defaultTitleFont];
  [(PXCuratedLibraryLabel *)self setFont:v8];

  v9 = [v4 textColor];

  [(PXCuratedLibraryLabel *)self setTextColor:v9];
}

+ (CGSize)sizeThatFits:(CGSize)a3 withConfiguration:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = sizeThatFits_withConfiguration__onceToken;
  v7 = a4;
  if (v6 != -1)
  {
    dispatch_once(&sizeThatFits_withConfiguration__onceToken, &__block_literal_global_250044);
  }

  [sizeThatFits_withConfiguration__measuringLabel setUserData:v7];

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