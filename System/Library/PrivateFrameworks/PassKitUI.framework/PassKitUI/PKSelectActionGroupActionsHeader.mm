@interface PKSelectActionGroupActionsHeader
- (CGSize)_imageSize;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSelectActionGroupActionsHeader)initWithPass:(id)pass title:(id)title subtitle:(id)subtitle;
- (void)layoutSubviews;
- (void)setLoading:(BOOL)loading;
@end

@implementation PKSelectActionGroupActionsHeader

- (PKSelectActionGroupActionsHeader)initWithPass:(id)pass title:(id)title subtitle:(id)subtitle
{
  passCopy = pass;
  titleCopy = title;
  subtitleCopy = subtitle;
  v34.receiver = self;
  v34.super_class = PKSelectActionGroupActionsHeader;
  v11 = [(PKSelectActionGroupActionsHeader *)&v34 init];
  v12 = v11;
  if (v11)
  {
    v11->_isTemplateLayout = 0;
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v13;

    v15 = v12->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

    [(UILabel *)v12->_titleLabel setText:titleCopy];
    v17 = v12->_titleLabel;
    v18 = *MEMORY[0x1E69DDC30];
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC30], 2, 0);
    [(UILabel *)v17 setFont:v19];

    [(UILabel *)v12->_titleLabel setNumberOfLines:0];
    [(UILabel *)v12->_titleLabel sizeToFit];
    [(UILabel *)v12->_titleLabel setLineBreakMode:0];
    [(UILabel *)v12->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v12->_titleLabel setTextAlignment:1];
    [(UILabel *)v12->_titleLabel setAlpha:1.0];
    [(PKSelectActionGroupActionsHeader *)v12 addSubview:v12->_titleLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v12->_subtitleLabel;
    v12->_subtitleLabel = v20;

    [(UILabel *)v12->_subtitleLabel setText:subtitleCopy];
    v22 = v12->_subtitleLabel;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v22 setTextColor:labelColor2];

    v24 = v12->_subtitleLabel;
    v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v18);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v12->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v12->_subtitleLabel sizeToFit];
    [(UILabel *)v12->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v12->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v12->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v12->_subtitleLabel setAlpha:1.0];
    [(PKSelectActionGroupActionsHeader *)v12 addSubview:v12->_subtitleLabel];
    v26 = [[PKPassView alloc] initWithPass:passCopy content:5];
    v27 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PKSelectActionGroupActionsHeader *)v12 _imageSize];
    v28 = [(PKPassView *)v26 snapshotOfFrontFaceWithRequestedSize:?];
    v29 = [v27 initWithImage:v28];
    imageView = v12->_imageView;
    v12->_imageView = v29;

    [(PKSelectActionGroupActionsHeader *)v12 addSubview:v12->_imageView];
    v31 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v12->_spinner;
    v12->_spinner = v31;

    [(UIActivityIndicatorView *)v12->_spinner startAnimating];
    [(UIActivityIndicatorView *)v12->_spinner setAlpha:0.0];
    [(PKSelectActionGroupActionsHeader *)v12 addSubview:v12->_spinner];
  }

  return v12;
}

- (void)setLoading:(BOOL)loading
{
  self->_loading = loading;
  spinner = self->_spinner;
  v4 = 0.0;
  if (loading)
  {
    v4 = 1.0;
  }

  [(UIActivityIndicatorView *)spinner setAlpha:v4];
}

- (CGSize)_imageSize
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = dbl_1BE1159E0[v2 < 5];
  v4 = dbl_1BE1159F0[v2 < 5];
  if (!v2)
  {
    v4 = 81.0;
    v3 = 51.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKSelectActionGroupActionsHeader *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSelectActionGroupActionsHeader;
  [(PKSelectActionGroupActionsHeader *)&v3 layoutSubviews];
  [(PKSelectActionGroupActionsHeader *)self bounds];
  [(PKSelectActionGroupActionsHeader *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v6 = bounds.origin.x + 20.0;
  v7 = bounds.origin.y + 0.0;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = bounds.origin.x + 20.0;
  remainder.origin.y = bounds.origin.y + 0.0;
  v8 = bounds.size.width + -40.0;
  remainder.size.width = bounds.size.width + -40.0;
  remainder.size.height = bounds.size.height;
  [(PKSelectActionGroupActionsHeader *)self _imageSize];
  v10 = v9;
  v12 = v11;
  v26.origin.x = v6;
  v26.origin.y = v7;
  v26.size.width = width + -40.0;
  v26.size.height = height;
  CGRectDivide(v26, &slice, &remainder, 20.0, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v12, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    v13 = fmin(v10, v8);
    [(UIImageView *)self->_imageView setFrame:(width - v13) * 0.5, 20.0, v13, v12];
  }

  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, 1.79769313e308];
  v15 = v14;
  CGRectDivide(remainder, &slice, &remainder, 20.0, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v15, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:remainder.size.width, 1.79769313e308];
  v17 = v16;
  CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v17, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_subtitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  PKFloatRoundToPixel();
  v19 = v18;
  if (!self->_isTemplateLayout)
  {
    spinner = self->_spinner;
    [(UIActivityIndicatorView *)spinner frame];
    PKRectCenteredIntegralRect();
    [(UIActivityIndicatorView *)spinner setFrame:?];
  }

  v21 = width;
  v22 = v19;
  result.height = v22;
  result.width = v21;
  return result;
}

@end