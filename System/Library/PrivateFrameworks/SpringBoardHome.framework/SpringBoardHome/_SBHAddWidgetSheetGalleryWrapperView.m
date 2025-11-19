@interface _SBHAddWidgetSheetGalleryWrapperView
- (NSDirectionalEdgeInsets)contentInsets;
- (_SBHAddWidgetSheetGalleryWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setContentView:(id)a3;
@end

@implementation _SBHAddWidgetSheetGalleryWrapperView

- (_SBHAddWidgetSheetGalleryWrapperView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = _SBHAddWidgetSheetGalleryWrapperView;
  v7 = [(_SBHAddWidgetSheetGalleryWrapperView *)&v12 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_contentScaleFactor = 1.0;
    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    scalingView = v8->_scalingView;
    v8->_scalingView = v9;

    [(_SBHAddWidgetSheetGalleryWrapperView *)v8 addSubview:v8->_scalingView];
  }

  return v8;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)self->_contentView removeFromSuperview];
    [(UIView *)self->_scalingView addSubview:v6];
    v5 = v6;
  }
}

- (void)setContentScaleFactor:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentScaleFactor = a3;

    [(_SBHAddWidgetSheetGalleryWrapperView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(_SBHAddWidgetSheetGalleryWrapperView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = _SBHAddWidgetSheetGalleryWrapperView;
  [(_SBHAddWidgetSheetGalleryWrapperView *)&v23 layoutSubviews];
  [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  SBHDirectionalEdgeInsetsGetEdgeInsets();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SBHAddWidgetSheetGalleryWrapperView *)self bounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeScale(&v22, self->_contentScaleFactor, self->_contentScaleFactor);
  scalingView = self->_scalingView;
  v21 = v22;
  [(UIView *)scalingView setTransform:&v21];
  [(UIView *)self->_scalingView setFrame:v12, v14, v16, v18];
  contentView = self->_contentView;
  [(UIView *)self->_scalingView bounds];
  [(UIView *)contentView setFrame:?];
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end