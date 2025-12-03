@interface _UIPreviewPresentationPlatterView
- (CGSize)contentClippingSize;
- (CGSize)contentSize;
- (_UIPreviewPresentationPlatterView)initWithContentView:(id)view;
- (double)blurRadius;
- (double)cornerRadius;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)radius;
- (void)setContentClippingSize:(CGSize)size;
- (void)setContentSize:(CGSize)size;
- (void)setCornerRadius:(double)radius;
- (void)setDropShadowEnabled:(BOOL)enabled;
@end

@implementation _UIPreviewPresentationPlatterView

- (_UIPreviewPresentationPlatterView)initWithContentView:(id)view
{
  viewCopy = view;
  v26.receiver = self;
  v26.super_class = _UIPreviewPresentationPlatterView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v26 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(_UIPreviewPresentationPlatterView *)v9 setContentView:viewCopy];
    [(UIView *)v10 setClipsToBounds:0];
    v11 = objc_alloc_init(_UIPreviewPresentationEffectView);
    [(UIView *)v10 bounds];
    [(UIView *)v11 setFrame:?];
    [(_UIPreviewPresentationEffectView *)v11 setBlurRadius:0.0];
    [(_UIPreviewPresentationPlatterView *)v10 setContentEffectView:v11];

    v12 = objc_alloc_init(_UIPreviewPresentationEffectView);
    [(UIView *)v12 setClipsToBounds:1];
    [(_UIPreviewPresentationPlatterView *)v10 setContentClipView:v12];

    v13 = objc_alloc_init(UIView);
    [(UIView *)v13 setAutoresizesSubviews:0];
    [(UIView *)v13 setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(_UIPreviewPresentationPlatterView *)v10 setContentTransformView:v13];

    v14 = [[UIImageView alloc] initWithFrame:v5, v6, v7, v8];
    v15 = [UIImage kitImageNamed:@"_UIPreviewPlatterShadow"];
    [(UIImageView *)v14 setImage:v15];

    [(_UIPreviewPresentationPlatterView *)v10 setContentShadowView:v14];
    contentTransformView = [(_UIPreviewPresentationPlatterView *)v10 contentTransformView];
    [contentTransformView addSubview:viewCopy];

    contentClipView = [(_UIPreviewPresentationPlatterView *)v10 contentClipView];
    contentTransformView2 = [(_UIPreviewPresentationPlatterView *)v10 contentTransformView];
    [contentClipView addSubview:contentTransformView2];

    contentEffectView = [(_UIPreviewPresentationPlatterView *)v10 contentEffectView];
    contentClipView2 = [(_UIPreviewPresentationPlatterView *)v10 contentClipView];
    [contentEffectView addSubview:contentClipView2];

    contentEffectView2 = [(_UIPreviewPresentationPlatterView *)v10 contentEffectView];
    [(UIView *)v10 addSubview:contentEffectView2];

    contentShadowView = [(_UIPreviewPresentationPlatterView *)v10 contentShadowView];
    contentEffectView3 = [(_UIPreviewPresentationPlatterView *)v10 contentEffectView];
    [(UIView *)v10 insertSubview:contentShadowView belowSubview:contentEffectView3];

    v24 = v10;
  }

  return v10;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIPreviewPresentationPlatterView *)self contentSize];
  if (width != v7 || height != v6)
  {
    self->_contentSize.width = width;
    self->_contentSize.height = height;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setContentClippingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIPreviewPresentationPlatterView *)self contentClippingSize];
  if (width != v7 || height != v6)
  {
    self->_contentClippingSize.width = width;
    self->_contentClippingSize.height = height;

    [(UIView *)self setNeedsLayout];
  }
}

- (double)blurRadius
{
  contentEffectView = [(_UIPreviewPresentationPlatterView *)self contentEffectView];
  [contentEffectView blurRadius];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)radius
{
  contentEffectView = [(_UIPreviewPresentationPlatterView *)self contentEffectView];
  [contentEffectView setBlurRadius:radius];
}

- (void)setCornerRadius:(double)radius
{
  contentClipView = [(_UIPreviewPresentationPlatterView *)self contentClipView];
  [contentClipView setCornerRadius:radius];
}

- (double)cornerRadius
{
  contentClipView = [(_UIPreviewPresentationPlatterView *)self contentClipView];
  [contentClipView cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setDropShadowEnabled:(BOOL)enabled
{
  if ([(_UIPreviewPresentationPlatterView *)self isDropShadowEnabled]!= enabled)
  {
    self->_dropShadowEnabled = enabled;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v64.receiver = self;
  v64.super_class = _UIPreviewPresentationPlatterView;
  [(UIView *)&v64 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentEffectView = [(_UIPreviewPresentationPlatterView *)self contentEffectView];
  v58 = v6;
  v59 = v8;
  v60 = v10;
  [contentEffectView setFrame:{v4, v6, v8, v10}];

  contentEffectView2 = [(_UIPreviewPresentationPlatterView *)self contentEffectView];
  [contentEffectView2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(_UIPreviewPresentationPlatterView *)self contentClippingSize];
  v24 = *MEMORY[0x1E695F060];
  v23 = *(MEMORY[0x1E695F060] + 8);
  if (v21 == *MEMORY[0x1E695F060] && v22 == v23)
  {
    v26 = v20;
  }

  else
  {
    v26 = v22;
    v16 = round(v16 + v20 * 0.5 - v22 * 0.5);
    v14 = round(v14 + v18 * 0.5 - v21 * 0.5);
    v18 = v21;
  }

  contentClipView = [(_UIPreviewPresentationPlatterView *)self contentClipView];
  [contentClipView setFrame:{v14, v16, v18, v26}];

  contentClipView2 = [(_UIPreviewPresentationPlatterView *)self contentClipView];
  [contentClipView2 convertRect:self fromView:{v4, v58, v59, v60}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __51___UIPreviewPresentationPlatterView_layoutSubviews__block_invoke;
  v63[3] = &unk_1E70F3590;
  v63[4] = self;
  [UIView performWithoutAnimation:v63];
  contentTransformView = [(_UIPreviewPresentationPlatterView *)self contentTransformView];
  [contentTransformView setFrame:{v30, v32, v34, v36}];

  [(_UIPreviewPresentationPlatterView *)self contentSize];
  v40 = v39;
  if (v39 == v24 && v38 == v23)
  {
    contentTransformView2 = [(_UIPreviewPresentationPlatterView *)self contentTransformView];
    [contentTransformView2 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    contentView = [(_UIPreviewPresentationPlatterView *)self contentView];
    [contentView setFrame:{v43, v45, v47, v49}];
  }

  else
  {
    v65.origin.x = v30;
    v65.origin.y = v32;
    v65.size.width = v34;
    v65.size.height = v36;
    Height = CGRectGetHeight(v65);
    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    v52 = Height * (v40 / CGRectGetWidth(v66));
    contentView2 = [(_UIPreviewPresentationPlatterView *)self contentView];
    [contentView2 setFrame:{0.0, 0.0, v40, v52}];

    v67.origin.x = v30;
    v67.origin.y = v32;
    v67.size.width = v34;
    v67.size.height = v36;
    Width = CGRectGetWidth(v67);
    CGAffineTransformMakeScale(&v62, Width / v40, Width / v40);
    contentTransformView2 = [(_UIPreviewPresentationPlatterView *)self contentTransformView];
    v61 = v62;
    [contentTransformView2 setTransform:&v61];
  }

  contentShadowView = [(_UIPreviewPresentationPlatterView *)self contentShadowView];
  v68.origin.x = v4 + -13.0;
  v68.origin.y = v58 + -36.0;
  v68.size.width = v59 + 26.0;
  v68.size.height = v60 + 72.0;
  v69 = CGRectOffset(v68, 0.0, 4.0);
  [contentShadowView setFrame:{v69.origin.x, v69.origin.y, v69.size.width, v69.size.height}];
  isDropShadowEnabled = [(_UIPreviewPresentationPlatterView *)self isDropShadowEnabled];
  v57 = 1.0;
  if (!isDropShadowEnabled)
  {
    v57 = 0.0;
  }

  [contentShadowView setAlpha:v57];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentClippingSize
{
  width = self->_contentClippingSize.width;
  height = self->_contentClippingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end