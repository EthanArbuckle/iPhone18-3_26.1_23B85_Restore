@interface PBFPosterGalleryShadowContainerView
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)shadowSupplementalTransform;
- (PBFPosterGalleryShadowContainerView)initWithContentView:(id)a3 shadowView:(id)a4 perspectiveEnabled:(BOOL)a5;
- (void)_layoutShadowView;
- (void)_updateShadowView;
- (void)_updateZPositions;
- (void)layoutSubviews;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setContentView:(id)a3;
- (void)setPerspectiveEnabled:(BOOL)a3;
- (void)setShadowSupplementalTransform:(CGAffineTransform *)a3;
- (void)setShadowView:(id)a3;
@end

@implementation PBFPosterGalleryShadowContainerView

- (PBFPosterGalleryShadowContainerView)initWithContentView:(id)a3 shadowView:(id)a4 perspectiveEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = PBFPosterGalleryShadowContainerView;
  v10 = [(PBFPosterGalleryShadowContainerView *)&v19 init];
  v11 = v10;
  if (v10)
  {
    [(PBFPosterGalleryShadowContainerView *)v10 setContentView:v8];
    [(PBFPosterGalleryShadowContainerView *)v11 setShadowView:v9];
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    v16 = *MEMORY[0x277CBF2C0];
    v15 = v16;
    v17 = v14;
    v18 = *(MEMORY[0x277CBF2C0] + 32);
    v13 = v18;
    [(PBFPosterGalleryShadowContainerView *)v11 setContentTransform:&v16];
    v16 = v15;
    v17 = v14;
    v18 = v13;
    [(PBFPosterGalleryShadowContainerView *)v11 setShadowSupplementalTransform:&v16];
    [(PBFPosterGalleryShadowContainerView *)v11 setPerspectiveEnabled:v5];
    [(PBFPosterGalleryShadowContainerView *)v11 pui_setGlassGroupBackground];
  }

  return v11;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PBFPosterGalleryShadowContainerView;
  [(PBFPosterGalleryShadowContainerView *)&v18 layoutSubviews];
  [(PBFPosterGalleryShadowContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_contentView setBounds:v4, v6, v8, v10];
  [(UIView *)self->_contentView setCenter:v12, v14];
  contentView = self->_contentView;
  v16 = *&self->_contentTransform.c;
  v17[0] = *&self->_contentTransform.a;
  v17[1] = v16;
  v17[2] = *&self->_contentTransform.tx;
  [(UIView *)contentView setTransform:v17];
  [(PBFPosterGalleryShadowContainerView *)self _layoutShadowView];
  [(PBFPosterGalleryShadowContainerView *)self bringSubviewToFront:self->_contentView];
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_contentTransform.c;
  *&v10.a = *&self->_contentTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_contentTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentTransform->c = *&a3->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    [(PBFPosterGalleryShadowContainerView *)self setNeedsLayout];
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      [(PBFPosterGalleryShadowContainerView *)self layoutIfNeeded];
    }
  }
}

- (void)setShadowSupplementalTransform:(CGAffineTransform *)a3
{
  p_shadowSupplementalTransform = &self->_shadowSupplementalTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_shadowSupplementalTransform.c;
  *&v10.a = *&self->_shadowSupplementalTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_shadowSupplementalTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_shadowSupplementalTransform->c = *&a3->c;
    *&p_shadowSupplementalTransform->tx = v9;
    *&p_shadowSupplementalTransform->a = v8;
    [(PBFPosterGalleryShadowContainerView *)self setNeedsLayout];
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      [(PBFPosterGalleryShadowContainerView *)self layoutIfNeeded];
    }
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(PBFPosterGalleryShadowContainerView *)self addSubview:self->_contentView];
    [(PBFPosterGalleryShadowContainerView *)self _updateZPositions];
    v5 = v7;
  }
}

- (void)setShadowView:(id)a3
{
  v5 = a3;
  shadowView = self->_shadowView;
  if (shadowView != v5)
  {
    [(PBFShadowMetricsProviding *)shadowView removeFromSuperview];
    v7 = self->_shadowView;
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v9[0] = *MEMORY[0x277CBF2C0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(PBFShadowMetricsProviding *)v7 setTransform:v9];
    objc_storeStrong(&self->_shadowView, a3);
    [(PBFPosterGalleryShadowContainerView *)self addSubview:self->_shadowView];
    [(PBFPosterGalleryShadowContainerView *)self _updateShadowView];
    [(PBFPosterGalleryShadowContainerView *)self _updateZPositions];
  }
}

- (void)setPerspectiveEnabled:(BOOL)a3
{
  if (self->_perspectiveEnabled != a3)
  {
    self->_perspectiveEnabled = a3;
    [(PBFPosterGalleryShadowContainerView *)self _updateZPositions];
  }

  [(PBFPosterGalleryShadowContainerView *)self _updateShadowView];
}

- (void)_updateShadowView
{
  [(PBFPosterGalleryShadowContainerView *)self setNeedsLayout];
  if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {

    [(PBFPosterGalleryShadowContainerView *)self layoutIfNeeded];
  }
}

- (void)_layoutShadowView
{
  shadowView = self->_shadowView;
  [(UIView *)self->_contentView frame];
  [(PBFShadowMetricsProviding *)shadowView frameWithContentWithFrame:?];
  [(PBFShadowMetricsProviding *)self->_shadowView setBounds:0.0, 0.0];
  v4 = self->_shadowView;
  UIRectGetCenter();
  [(PBFShadowMetricsProviding *)v4 setCenter:?];
  [(PBFShadowMetricsProviding *)self->_shadowView setNeedsLayout];
  v5 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_contentTransform.tx;
  memset(&v10, 0, sizeof(v10));
  v6 = *&self->_shadowSupplementalTransform.c;
  *&v8.a = *&self->_shadowSupplementalTransform.a;
  *&v8.c = v6;
  *&v8.tx = *&self->_shadowSupplementalTransform.tx;
  CGAffineTransformConcat(&v10, &t1, &v8);
  if (self->_perspectiveEnabled)
  {
    v8 = v10;
    CGAffineTransformScale(&t1, &v8, 1.2, 1.2);
    v10 = t1;
  }

  v7 = self->_shadowView;
  t1 = v10;
  [(PBFShadowMetricsProviding *)v7 setTransform:&t1];
}

- (void)_updateZPositions
{
  v3 = MEMORY[0x277CD9DE8];
  v4 = *(MEMORY[0x277CD9DE8] + 88);
  perspectiveEnabled = self->_perspectiveEnabled;
  v6 = [(PBFShadowMetricsProviding *)self->_shadowView layer];
  v7 = v6;
  v8 = -80.0;
  if (perspectiveEnabled)
  {
    v9 = 20.0;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  if (perspectiveEnabled)
  {
    v4 = -0.002;
  }

  [v6 setZPosition:v8];

  v10 = [(UIView *)self->_contentView layer];
  [v10 setZPosition:v9];

  v11 = [(PBFPosterGalleryShadowContainerView *)self layer];
  v12 = *(v3 + 48);
  v15[2] = *(v3 + 32);
  v15[3] = v12;
  v15[4] = *(v3 + 64);
  v16 = *(v3 + 80);
  v13 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v13;
  v17 = v4;
  v14 = *(v3 + 112);
  v18 = *(v3 + 96);
  v19 = v14;
  [v11 setTransform:v15];

  [(PBFPosterGalleryShadowContainerView *)self setNeedsLayout];
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