@interface VUILibraryListItemView
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setItemImage:(id)image;
- (void)setTitleLabel:(id)label;
@end

@implementation VUILibraryListItemView

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  titleLabel = self->_titleLabel;
  if (titleLabel != labelCopy)
  {
    v7 = labelCopy;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, label);
    if (self->_titleLabel)
    {
      [(VUILibraryListItemView *)self addSubview:?];
    }

    [(VUILibraryListItemView *)self setNeedsLayout];
    labelCopy = v7;
  }
}

- (void)setItemImage:(id)image
{
  imageCopy = image;
  if (self->_itemImage != imageCopy)
  {
    v8 = imageCopy;
    [(UIImageView *)self->_listImageView removeFromSuperview];
    objc_storeStrong(&self->_itemImage, image);
    if (self->_itemImage)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_itemImage];
      listImageView = self->_listImageView;
      self->_listImageView = v6;

      [(VUILibraryListItemView *)self addSubview:self->_listImageView];
    }

    [(VUILibraryListItemView *)self setNeedsLayout];
    imageCopy = v8;
  }
}

- (void)layoutSubviews
{
  [(VUILibraryListItemView *)self bounds];
  Width = CGRectGetWidth(v6);
  [(VUILibraryListItemView *)self bounds];
  Height = CGRectGetHeight(v7);

  [(VUILibraryListItemView *)self _layoutWithSize:0 metricsOnly:Width, Height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUILibraryListItemView *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  height = size.height;
  width = size.width;
  traitCollection = [(VUILibraryListItemView *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:56.0];
  v10 = v9;

  [(VUILabel *)self->_titleLabel sizeThatFits:width, height];
  v12 = v11;
  v14 = v13;
  [(UIImageView *)self->_listImageView sizeToFit];
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  traitCollection2 = [vui_keyWindow traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 1)
  {
    [(UIImageView *)self->_listImageView frame];
    width = v12 + CGRectGetWidth(v25) + 84.0;
  }

  if (!only)
  {
    [(VUILabel *)self->_titleLabel setFrame:32.0, v10 * 0.5 - v14 * 0.5, v12, v14];
    listImageView = self->_listImageView;
    [(VUILibraryListItemView *)self bounds];
    MaxX = CGRectGetMaxX(v26);
    [(UIImageView *)self->_listImageView frame];
    v19 = MaxX - (CGRectGetWidth(v27) + 32.0);
    [(UIImageView *)self->_listImageView frame];
    v20 = v10 * 0.5 - CGRectGetHeight(v28) * 0.5;
    [(UIImageView *)self->_listImageView frame];
    v21 = CGRectGetWidth(v29);
    [(UIImageView *)self->_listImageView frame];
    [(UIImageView *)listImageView setFrame:v19, v20, v21, CGRectGetHeight(v30)];
  }

  v22 = width;
  v23 = v10;
  result.height = v23;
  result.width = v22;
  return result;
}

@end