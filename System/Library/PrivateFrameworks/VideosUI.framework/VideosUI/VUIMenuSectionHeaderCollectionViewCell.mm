@interface VUIMenuSectionHeaderCollectionViewCell
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation VUIMenuSectionHeaderCollectionViewCell

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    [(VUILabel *)self->_titleLabel removeFromSuperview];
    if (self->_title)
    {
      v5 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v5 setTextStyle:20];
      [(VUITextLayout *)v5 setFontWeight:10];
      vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
      [(VUITextLayout *)v5 setColor:vui_primaryTextColor];

      [(VUITextLayout *)v5 setAlignment:1];
      [(VUITextLayout *)v5 setNumberOfLines:1];
      v7 = [VUILabel labelWithString:self->_title textLayout:v5 existingLabel:0];
      titleLabel = self->_titleLabel;
      self->_titleLabel = v7;

      contentView = [(VUIMenuSectionHeaderCollectionViewCell *)self contentView];
      [contentView addSubview:self->_titleLabel];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIMenuSectionHeaderCollectionViewCell *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIMenuSectionHeaderCollectionViewCell;
  [(VUIMenuSectionHeaderCollectionViewCell *)&v4 layoutSubviews];
  [(VUIMenuSectionHeaderCollectionViewCell *)self bounds];
  Width = CGRectGetWidth(v5);
  [(VUIMenuSectionHeaderCollectionViewCell *)self bounds];
  [(VUIMenuSectionHeaderCollectionViewCell *)self _layoutWithSize:0 metricsOnly:Width, CGRectGetHeight(v6)];
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  onlyCopy = only;
  width = size.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v8 = v7;
  [(VUILabel *)self->_titleLabel sizeThatFits:width - (v7 + v9), 1.79769313e308];
  v11 = v10;
  v13 = v12;
  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:50.0];
  v15 = v14;
  [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:16.0];
  v17 = v16;
  if (!onlyCopy)
  {
    v18 = v13;
    if ([(VUIMenuSectionHeaderCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(VUIMenuSectionHeaderCollectionViewCell *)self bounds];
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v8 = v20;
      v11 = v21;
      v18 = v22;
    }

    else
    {
      v19 = v15;
    }

    [(VUILabel *)self->_titleLabel setFrame:v8, v19, v11, v18];
  }

  v23 = v13 + v15 + 0.0 + v17;
  v24 = width;
  result.height = v23;
  result.width = v24;
  return result;
}

@end