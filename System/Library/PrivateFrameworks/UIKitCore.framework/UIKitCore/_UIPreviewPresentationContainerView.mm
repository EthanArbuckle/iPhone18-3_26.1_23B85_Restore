@interface _UIPreviewPresentationContainerView
- (BOOL)shouldRasterizeForTransition;
- (CGRect)_preferredPlatterRectForContainerRect:(CGRect)rect;
- (CGSize)_standardPreferredContentSize;
- (CGSize)preferredContentSize;
- (_UIPreviewPresentationContainerView)initWithFrame:(CGRect)frame;
- (double)blurRadius;
- (void)initPlatterViewsIfNeeded;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)radius;
- (void)setContentView:(id)view;
- (void)setCornerRadius:(double)radius;
- (void)setShouldRasterizeForTransition:(BOOL)transition;
@end

@implementation _UIPreviewPresentationContainerView

- (_UIPreviewPresentationContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIPreviewPresentationContainerView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIPreviewPresentationContainerView *)v3 initPlatterViewsIfNeeded];
    v5 = v4;
  }

  return v4;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    contentTransformView = [(_UIPreviewPresentationContainerView *)self contentTransformView];
    [contentTransformView addSubview:v8];

    [(UIView *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (double)blurRadius
{
  platterView = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView blurRadius];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)radius
{
  platterView = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView setBlurRadius:radius];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)shouldRasterizeForTransition
{
  platterView = [(_UIPreviewPresentationContainerView *)self platterView];
  shouldRasterizeForTransition = [platterView shouldRasterizeForTransition];

  return shouldRasterizeForTransition;
}

- (void)setShouldRasterizeForTransition:(BOOL)transition
{
  transitionCopy = transition;
  platterView = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView setShouldRasterizeForTransition:transitionCopy];
}

- (void)layoutSubviews
{
  v89.receiver = self;
  v89.super_class = _UIPreviewPresentationContainerView;
  [(UIView *)&v89 layoutSubviews];
  [(UIView *)self bounds];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v84 = CGRectGetWidth(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v81 = CGRectGetHeight(v91);
  [(_UIPreviewPresentationContainerView *)self preferredContentSize];
  v8 = v7;
  v10 = v9;
  [(_UIPreviewPresentationContainerView *)self _standardPreferredContentSize];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = v8 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8);
  v86 = *MEMORY[0x1E695F058];
  if (v14)
  {
    rect = *(MEMORY[0x1E695F058] + 24);
    v83 = v11 / v12;
    v92.origin.x = x;
    v92.origin.y = y;
    v18 = *MEMORY[0x1E695F058];
    v92.size.width = width;
    v92.size.height = height;
    v93.size.width = CGRectGetWidth(v92);
    v93.origin.x = v18;
    v93.origin.y = v13;
    v85 = v93.size.width;
    v93.size.height = rect;
    v82 = CGRectGetWidth(v93) / v83;
LABEL_14:
    v19 = v13;
    goto LABEL_16;
  }

  v15 = v84 / v81;
  if (v8 == 0.0)
  {
    v16 = width;
  }

  else
  {
    v16 = v8;
  }

  if (v10 == 0.0)
  {
    v17 = height;
  }

  else
  {
    v17 = v10;
  }

  v82 = v17;
  v85 = v16;
  if (v16 / v17 > v15)
  {
    goto LABEL_14;
  }

  v19 = *(MEMORY[0x1E695F058] + 8);
LABEL_16:
  UIRoundToViewScale(self);
  v21 = v20;
  UIRoundToViewScale(self);
  v23 = v22;
  [(_UIPreviewPresentationContainerView *)self _preferredPlatterRectForContainerRect:x, y, width, height];
  v24 = v94.origin.x;
  v25 = v94.origin.y;
  v26 = v94.size.width;
  v27 = v94.size.height;
  MidX = CGRectGetMidX(v94);
  v95.origin.x = v24;
  v95.origin.y = v25;
  v95.size.width = v26;
  v95.size.height = v27;
  MidY = CGRectGetMidY(v95);
  if ([(_UIPreviewPresentationContainerView *)self shouldLayoutForCommitPhase])
  {
    [(UIView *)self bounds];
    v31 = v30;
    v33 = v32;
    v21 = v34;
    v23 = v35;
  }

  else
  {
    v31 = MidX - v21 * 0.5;
    v33 = MidY - v23 * 0.5;
  }

  platterView = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView setFrame:{v31, v33, v21, v23}];

  platterView2 = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView2 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  platterClippingView = [(_UIPreviewPresentationContainerView *)self platterClippingView];
  [platterClippingView setFrame:{v39, v41, v43, v45}];

  v47 = 0.0;
  if (![(_UIPreviewPresentationContainerView *)self shouldLayoutForCommitPhase])
  {
    [(_UIPreviewPresentationContainerView *)self cornerRadius];
    v47 = v48;
  }

  platterClippingView2 = [(_UIPreviewPresentationContainerView *)self platterClippingView];
  [platterClippingView2 _setContinuousCornerRadius:v47];

  platterView3 = [(_UIPreviewPresentationContainerView *)self platterView];
  [platterView3 bounds];
  v52 = v51 + -13.0;
  v54 = v53 + -36.0;
  v56 = v55 + 26.0;
  v58 = v57 + 72.0;

  v96.origin.x = v52;
  v96.origin.y = v54;
  v96.size.width = v56;
  v96.size.height = v58;
  v97 = CGRectOffset(v96, 0.0, 4.0);
  v59 = v97.origin.x;
  v60 = v97.origin.y;
  v61 = v97.size.width;
  v62 = v97.size.height;
  platterShadowView = [(_UIPreviewPresentationContainerView *)self platterShadowView];
  [platterShadowView setFrame:{v59, v60, v61, v62}];

  platterClippingView3 = [(_UIPreviewPresentationContainerView *)self platterClippingView];
  [platterClippingView3 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  contentTransformView = [(_UIPreviewPresentationContainerView *)self contentTransformView];
  v74 = *(MEMORY[0x1E695EFD0] + 16);
  *&v88.a = *MEMORY[0x1E695EFD0];
  *&v88.c = v74;
  *&v88.tx = *(MEMORY[0x1E695EFD0] + 32);
  [contentTransformView setTransform:&v88];

  contentTransformView2 = [(_UIPreviewPresentationContainerView *)self contentTransformView];
  [contentTransformView2 setFrame:{v66, v68, v70, v72}];

  contentView = [(_UIPreviewPresentationContainerView *)self contentView];
  [contentView setFrame:{v86, v19, v85, v82}];

  v98.origin.x = v66;
  v98.origin.y = v68;
  v98.size.width = v70;
  v98.size.height = v72;
  v77 = CGRectGetWidth(v98);
  v99.origin.x = v86;
  v99.origin.y = v19;
  v99.size.width = v85;
  v99.size.height = v82;
  v78 = CGRectGetWidth(v99);
  if (![(_UIPreviewPresentationContainerView *)self shouldLayoutForCommitPhase])
  {
    CGAffineTransformMakeScale(&v87, v77 / v78, v77 / v78);
    contentTransformView3 = [(_UIPreviewPresentationContainerView *)self contentTransformView];
    v88 = v87;
    [contentTransformView3 setTransform:&v88];
  }
}

- (void)initPlatterViewsIfNeeded
{
  platterView = [(_UIPreviewPresentationContainerView *)self platterView];

  if (!platterView)
  {
    v4 = objc_alloc_init(_UIPreviewPresentationEffectView);
    [(UIView *)self bounds];
    [(UIView *)v4 setFrame:?];
    [(_UIPreviewPresentationEffectView *)v4 setBlurRadius:8.0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(_UIPreviewPresentationContainerView *)self setPlatterView:v4];

    v5 = objc_alloc_init(_UIPreviewPresentationEffectView);
    [(UIView *)v5 setClipsToBounds:1];
    [(UIView *)v5 setUserInteractionEnabled:0];
    [(_UIPreviewPresentationContainerView *)self setPlatterClippingView:v5];

    v6 = [UIImageView alloc];
    v7 = [(UIImageView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = [UIImage kitImageNamed:@"_UIPreviewPlatterShadow"];
    [(UIImageView *)v7 setImage:v8];

    [(_UIPreviewPresentationContainerView *)self setPlatterShadowView:v7];
    v9 = objc_alloc_init(UIView);
    [(UIView *)v9 setAutoresizesSubviews:0];
    [(UIView *)v9 setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(_UIPreviewPresentationContainerView *)self setContentTransformView:v9];

    platterClippingView = [(_UIPreviewPresentationContainerView *)self platterClippingView];
    contentTransformView = [(_UIPreviewPresentationContainerView *)self contentTransformView];
    [platterClippingView addSubview:contentTransformView];

    platterView2 = [(_UIPreviewPresentationContainerView *)self platterView];
    platterClippingView2 = [(_UIPreviewPresentationContainerView *)self platterClippingView];
    [platterView2 addSubview:platterClippingView2];

    platterView3 = [(_UIPreviewPresentationContainerView *)self platterView];
    platterShadowView = [(_UIPreviewPresentationContainerView *)self platterShadowView];
    platterClippingView3 = [(_UIPreviewPresentationContainerView *)self platterClippingView];
    [platterView3 insertSubview:platterShadowView belowSubview:platterClippingView3];

    platterView4 = [(_UIPreviewPresentationContainerView *)self platterView];
    [(UIView *)self addSubview:platterView4];

    [(_UIPreviewPresentationContainerView *)self setCornerRadius:13.0];
  }
}

- (CGRect)_preferredPlatterRectForContainerRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    _UIPreviewInteractionPlatterInsetsForRect(x, y, width, height);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v7 = x + v13;
    v8 = y + v12;
    v9 = width - (v14 + v17);
    v10 = height - (v12 + v16);
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)_standardPreferredContentSize
{
  [(UIView *)self bounds];
  [(_UIPreviewPresentationContainerView *)self _preferredPlatterRectForContainerRect:?];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end