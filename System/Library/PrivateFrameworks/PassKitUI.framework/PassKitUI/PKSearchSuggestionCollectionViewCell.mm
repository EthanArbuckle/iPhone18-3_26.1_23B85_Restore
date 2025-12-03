@interface PKSearchSuggestionCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSearchSuggestionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)resetFonts;
@end

@implementation PKSearchSuggestionCollectionViewCell

- (PKSearchSuggestionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKSearchSuggestionCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKSearchSuggestionCollectionViewCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    labelSuggestion = v4->_labelSuggestion;
    v4->_labelSuggestion = v11;

    [(UILabel *)v4->_labelSuggestion setLineBreakMode:4];
    [contentView addSubview:v4->_labelSuggestion];
    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    imageViewIcon = v4->_imageViewIcon;
    v4->_imageViewIcon = v13;

    [(UIImageView *)v4->_imageViewIcon setContentMode:1];
    v15 = v4->_imageViewIcon;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v15 setTintColor:labelColor];

    [contentView addSubview:v4->_imageViewIcon];
    [(PKSearchSuggestionCollectionViewCell *)v4 resetFonts];
    v21[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v18 = [(PKSearchSuggestionCollectionViewCell *)v4 registerForTraitChanges:v17 withHandler:&__block_literal_global_62];
  }

  return v4;
}

- (void)resetFonts
{
  traitCollection = [(PKSearchSuggestionCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(UILabel *)self->_labelSuggestion setNumberOfLines:!IsAccessibilityCategory];
  labelSuggestion = self->_labelSuggestion;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
  [(UILabel *)labelSuggestion setFont:v7];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSearchSuggestionCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKSearchSuggestionCollectionViewCell *)self bounds];
  [(PKSearchSuggestionCollectionViewCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKSearchSuggestionCollectionViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldReverseLayoutDirection = [(PKSearchSuggestionCollectionViewCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  if (_shouldReverseLayoutDirection)
  {
    v9 = CGRectMaxXEdge;
  }

  else
  {
    v9 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
  {
    v10 = CGRectMinXEdge;
  }

  else
  {
    v10 = CGRectMaxXEdge;
  }

  [(PKDashboardCollectionViewCell *)self horizontalInset:*&x];
  v12 = v11;
  font = [(UILabel *)self->_labelSuggestion font];
  [font lineHeight];
  v15 = v14;

  [(UILabel *)self->_labelSuggestion sizeThatFits:width - v15 + -8.0 + v12 * -2.0, height + -20.0];
  v17 = v16 + 20.0;
  if (v16 + 20.0 >= 44.0)
  {
    v18 = v16 + 20.0;
  }

  else
  {
    v18 = 44.0;
  }

  v22.size.height = v18;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = v18;
  CGRectDivide(v25, &slice, &v22, 10.0, CGRectMinYEdge);
  CGRectDivide(v22, &slice, &v22, 10.0, CGRectMaxYEdge);
  CGRectDivide(v22, &slice, &v22, v12, v9);
  CGRectDivide(v22, &slice, &v22, v12, v10);
  CGRectDivide(v22, &slice, &v22, v15, v9);
  if (!self->_isTemplateLayout)
  {
    imageViewIcon = self->_imageViewIcon;
    if (v17 >= 44.0)
    {
      PKContentAlignmentMake();
    }

    PKSizeAlignedInRect();
    [(UIImageView *)imageViewIcon setFrame:?];
  }

  CGRectDivide(v22, &slice, &v22, 8.0, v9);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_labelSuggestion setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  }

  v20 = width;
  v21 = v18;
  result.height = v21;
  result.width = v20;
  return result;
}

@end