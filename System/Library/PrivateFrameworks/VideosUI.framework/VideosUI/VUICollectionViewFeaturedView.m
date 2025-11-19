@interface VUICollectionViewFeaturedView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUICollectionViewFeaturedView)initWithFrame:(CGRect)a3;
- (void)setGradientView:(id)a3;
- (void)setImageView:(id)a3;
- (void)setOverlayView:(id)a3;
@end

@implementation VUICollectionViewFeaturedView

- (VUICollectionViewFeaturedView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VUICollectionViewFeaturedView;
  return [(VUICollectionViewFeaturedView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:v5 oldView:self->_imageView];
  if (self->_imageView != v5)
  {
    objc_storeStrong(&self->_imageView, a3);
  }

  [(VUICollectionViewFeaturedView *)self vui_setNeedsLayout];
}

- (void)setGradientView:(id)a3
{
  v5 = a3;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:v5 oldView:self->_gradientView];
  if (self->_gradientView != v5)
  {
    objc_storeStrong(&self->_gradientView, a3);
    if (self->_gradientView)
    {
      if (self->_overlayView)
      {
        [(VUICollectionViewFeaturedView *)self vui_bringSubviewToFront:?];
      }
    }
  }

  [(VUICollectionViewFeaturedView *)self vui_setNeedsLayout];
}

- (void)setOverlayView:(id)a3
{
  v5 = a3;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:v5 oldView:self->_overlayView];
  if (self->_overlayView != v5)
  {
    objc_storeStrong(&self->_overlayView, a3);
  }

  [(VUICollectionViewFeaturedView *)self vui_setNeedsLayout];
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v21.receiver = self;
  v21.super_class = VUICollectionViewFeaturedView;
  [VUICollectionViewFeaturedView vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  v7 = v6;
  v9 = v8;
  if (!a4)
  {
    [(VUICollectionViewFeaturedView *)self bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIView *)self->_imageView setFrame:?];
    [(UIView *)self->_overlayView setFrame:v11, v13, v15, v17];
    if (self->_overlayView)
    {
      [(VUICollectionViewFeaturedView *)self vui_bringSubviewToFront:?];
    }

    [(VUICollectionViewFeaturedView *)self preferredGradientHeight];
    if (v18 != 0.0)
    {
      [(VUICollectionViewFeaturedView *)self preferredGradientHeight];
    }

    [(VUICollectionViewFeaturedView *)self bounds];
    [(VUICollectionViewFeaturedView *)self vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [(UIView *)self->_gradientView setFrame:?];
  }

  v19 = v7;
  v20 = v9;
  result.height = v20;
  result.width = v19;
  return result;
}

@end