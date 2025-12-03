@interface VUICollectionViewFeaturedView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUICollectionViewFeaturedView)initWithFrame:(CGRect)frame;
- (void)setGradientView:(id)view;
- (void)setImageView:(id)view;
- (void)setOverlayView:(id)view;
@end

@implementation VUICollectionViewFeaturedView

- (VUICollectionViewFeaturedView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VUICollectionViewFeaturedView;
  return [(VUICollectionViewFeaturedView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:viewCopy oldView:self->_imageView];
  if (self->_imageView != viewCopy)
  {
    objc_storeStrong(&self->_imageView, view);
  }

  [(VUICollectionViewFeaturedView *)self vui_setNeedsLayout];
}

- (void)setGradientView:(id)view
{
  viewCopy = view;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:viewCopy oldView:self->_gradientView];
  if (self->_gradientView != viewCopy)
  {
    objc_storeStrong(&self->_gradientView, view);
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

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  [(VUICollectionViewFeaturedView *)self vui_addSubview:viewCopy oldView:self->_overlayView];
  if (self->_overlayView != viewCopy)
  {
    objc_storeStrong(&self->_overlayView, view);
  }

  [(VUICollectionViewFeaturedView *)self vui_setNeedsLayout];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  v21.receiver = self;
  v21.super_class = VUICollectionViewFeaturedView;
  [VUICollectionViewFeaturedView vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  v7 = v6;
  v9 = v8;
  if (!only)
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