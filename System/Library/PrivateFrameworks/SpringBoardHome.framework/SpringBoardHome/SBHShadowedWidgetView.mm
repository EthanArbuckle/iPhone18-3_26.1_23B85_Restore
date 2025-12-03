@interface SBHShadowedWidgetView
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)shadowSupplementalTransform;
- (SBHShadowedWidgetView)initWithContentView:(id)view shadowView:(id)shadowView perspectiveEnabled:(BOOL)enabled;
- (void)_layoutShadowView;
- (void)_updateZPositions;
- (void)layoutSubviews;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setContentView:(id)view;
- (void)setCornerRadius:(double)radius;
- (void)setPerspectiveEnabled:(BOOL)enabled;
- (void)setShadowSupplementalTransform:(CGAffineTransform *)transform;
- (void)setShadowView:(id)view;
@end

@implementation SBHShadowedWidgetView

- (SBHShadowedWidgetView)initWithContentView:(id)view shadowView:(id)shadowView perspectiveEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  viewCopy = view;
  shadowViewCopy = shadowView;
  v30.receiver = self;
  v30.super_class = SBHShadowedWidgetView;
  v10 = [(SBHShadowedWidgetView *)&v30 init];
  v11 = v10;
  if (v10)
  {
    layer = [(SBHShadowedWidgetView *)v10 layer];
    v13 = *(MEMORY[0x1E69792E8] + 48);
    v23 = *(MEMORY[0x1E69792E8] + 32);
    v24 = v13;
    v25 = *(MEMORY[0x1E69792E8] + 64);
    v14 = *(MEMORY[0x1E69792E8] + 80);
    v15 = *(MEMORY[0x1E69792E8] + 16);
    v21 = *MEMORY[0x1E69792E8];
    v22 = v15;
    v26 = v14;
    v27 = 0xBF60624DD2F1A9FCLL;
    v16 = *(MEMORY[0x1E69792E8] + 112);
    v28 = *(MEMORY[0x1E69792E8] + 96);
    v29 = v16;
    [layer setTransform:&v21];

    [(SBHShadowedWidgetView *)v11 setContentView:viewCopy];
    [(SBHShadowedWidgetView *)v11 setShadowView:shadowViewCopy];
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    v21 = *MEMORY[0x1E695EFD0];
    v20 = v21;
    v22 = v19;
    v23 = *(MEMORY[0x1E695EFD0] + 32);
    v18 = v23;
    [(SBHShadowedWidgetView *)v11 setContentTransform:&v21];
    v21 = v20;
    v22 = v19;
    v23 = v18;
    [(SBHShadowedWidgetView *)v11 setShadowSupplementalTransform:&v21];
    [(SBHShadowedWidgetView *)v11 setPerspectiveEnabled:enabledCopy];
  }

  return v11;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBHShadowedWidgetView;
  [(SBHShadowedWidgetView *)&v6 layoutSubviews];
  [(SBHShadowedWidgetView *)self bounds];
  UIRectGetCenter();
  [(UIView *)self->_contentView setCenter:?];
  contentView = self->_contentView;
  v4 = *&self->_contentTransform.c;
  v5[0] = *&self->_contentTransform.a;
  v5[1] = v4;
  v5[2] = *&self->_contentTransform.tx;
  [(UIView *)contentView setTransform:v5];
  [(SBHShadowedWidgetView *)self _layoutShadowView];
  [(SBHShadowedWidgetView *)self bringSubviewToFront:self->_contentView];
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_contentTransform.c;
  *&v10.a = *&self->_contentTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_contentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    [(SBHShadowedWidgetView *)self setNeedsLayout];
    if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
    {
      [(SBHShadowedWidgetView *)self layoutIfNeeded];
    }
  }
}

- (void)setShadowSupplementalTransform:(CGAffineTransform *)transform
{
  p_shadowSupplementalTransform = &self->_shadowSupplementalTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_shadowSupplementalTransform.c;
  *&v10.a = *&self->_shadowSupplementalTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_shadowSupplementalTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_shadowSupplementalTransform->c = *&transform->c;
    *&p_shadowSupplementalTransform->tx = v9;
    *&p_shadowSupplementalTransform->a = v8;
    [(SBHShadowedWidgetView *)self setNeedsLayout];
    if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
    {
      [(SBHShadowedWidgetView *)self layoutIfNeeded];
    }
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(SBHShadowedWidgetView *)self addSubview:self->_contentView];
    contentView = [(SBHShadowedWidgetView *)self _updateZPositions];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](contentView, viewCopy);
}

- (void)setShadowView:(id)view
{
  viewCopy = view;
  shadowView = self->_shadowView;
  if (shadowView != viewCopy)
  {
    [(UIView *)shadowView removeFromSuperview];
    v7 = self->_shadowView;
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v9[0] = *MEMORY[0x1E695EFD0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(UIView *)v7 setTransform:v9];
    objc_storeStrong(&self->_shadowView, view);
    [(SBHShadowedWidgetView *)self addSubview:self->_shadowView];
    [(SBHShadowedWidgetView *)self _updateZPositions];
  }
}

- (void)setPerspectiveEnabled:(BOOL)enabled
{
  if (self->_perspectiveEnabled != enabled)
  {
    self->_perspectiveEnabled = enabled;
    [(SBHShadowedWidgetView *)self _updateZPositions];
  }
}

- (void)setCornerRadius:(double)radius
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = radius;
    [(SBHShadowedWidgetView *)self _setContinuousCornerRadius:radius];
    shadowView = self->_shadowView;

    [(UIView *)shadowView _setContinuousCornerRadius:radius];
  }
}

- (void)_layoutShadowView
{
  [(SBHShadowedWidgetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_shadowView setBounds:v4, v6, v8, v10];
  [(UIView *)self->_shadowView setCenter:v12, v14];
  v15 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v15;
  *&t1.tx = *&self->_contentTransform.tx;
  memset(&v20, 0, sizeof(v20));
  v16 = *&self->_shadowSupplementalTransform.c;
  *&v18.a = *&self->_shadowSupplementalTransform.a;
  *&v18.c = v16;
  *&v18.tx = *&self->_shadowSupplementalTransform.tx;
  CGAffineTransformConcat(&v20, &t1, &v18);
  if (self->_perspectiveEnabled)
  {
    v18 = v20;
    CGAffineTransformScale(&t1, &v18, 1.2, 1.2);
    v20 = t1;
  }

  shadowView = self->_shadowView;
  t1 = v20;
  [(UIView *)shadowView setTransform:&t1];
}

- (void)_updateZPositions
{
  perspectiveEnabled = self->_perspectiveEnabled;
  layer = [(UIView *)self->_shadowView layer];
  v5 = layer;
  v6 = -80.0;
  if (perspectiveEnabled)
  {
    v7 = 20.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [layer setZPosition:v6];

  layer2 = [(UIView *)self->_contentView layer];
  [layer2 setZPosition:v7];

  [(SBHShadowedWidgetView *)self setNeedsLayout];
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[9].d;
  *&retstr->a = *&self[9].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].ty;
  return self;
}

- (CGAffineTransform)shadowSupplementalTransform
{
  v3 = *&self[10].d;
  *&retstr->a = *&self[10].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].ty;
  return self;
}

@end