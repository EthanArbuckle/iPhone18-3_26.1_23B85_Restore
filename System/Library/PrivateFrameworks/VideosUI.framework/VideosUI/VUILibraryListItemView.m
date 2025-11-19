@interface VUILibraryListItemView
- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setItemImage:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation VUILibraryListItemView

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  titleLabel = self->_titleLabel;
  if (titleLabel != v5)
  {
    v7 = v5;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, a3);
    if (self->_titleLabel)
    {
      [(VUILibraryListItemView *)self addSubview:?];
    }

    [(VUILibraryListItemView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setItemImage:(id)a3
{
  v5 = a3;
  if (self->_itemImage != v5)
  {
    v8 = v5;
    [(UIImageView *)self->_listImageView removeFromSuperview];
    objc_storeStrong(&self->_itemImage, a3);
    if (self->_itemImage)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_itemImage];
      listImageView = self->_listImageView;
      self->_listImageView = v6;

      [(VUILibraryListItemView *)self addSubview:self->_listImageView];
    }

    [(VUILibraryListItemView *)self setNeedsLayout];
    v5 = v8;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUILibraryListItemView *)self _layoutWithSize:1 metricsOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(VUILibraryListItemView *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v8 forTraitCollection:56.0];
  v10 = v9;

  [(VUILabel *)self->_titleLabel sizeThatFits:width, height];
  v12 = v11;
  v14 = v13;
  [(UIImageView *)self->_listImageView sizeToFit];
  v15 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  v16 = [v15 traitCollection];
  if ([v16 userInterfaceIdiom] == 1)
  {
    [(UIImageView *)self->_listImageView frame];
    width = v12 + CGRectGetWidth(v25) + 84.0;
  }

  if (!a4)
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