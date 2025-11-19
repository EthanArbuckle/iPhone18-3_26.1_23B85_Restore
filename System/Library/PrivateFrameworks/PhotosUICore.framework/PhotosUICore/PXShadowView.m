@interface PXShadowView
- (CGRect)castingFrame;
- (PXShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCastingFrame:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
- (void)setShadow:(id)a3;
@end

@implementation PXShadowView

- (CGRect)castingFrame
{
  x = self->_castingFrame.origin.x;
  y = self->_castingFrame.origin.y;
  width = self->_castingFrame.size.width;
  height = self->_castingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXShadowView;
  [(PXShadowView *)&v12 layoutSubviews];
  v3 = [(PXShadowView *)self shadow];
  if (self->_resizableShadowImageNeedsUpdate)
  {
    v4 = +[PXShadowImageCache sharedInstance];
    [(PXShadowView *)self cornerRadius];
    v6 = v5;
    v7 = [(PXShadowView *)self window];
    v8 = [v7 screen];
    [v8 scale];
    v10 = [v4 stretchableShadowImageFor:v3 cornerRadius:v6 screenScale:v9];
    resizableShadowImage = self->_resizableShadowImage;
    self->_resizableShadowImage = v10;

    self->_resizableShadowImageNeedsUpdate = 0;
  }

  [(UIImageView *)self->_imageView setImage:self->_resizableShadowImage];
  if (v3)
  {
    [(PXShadowView *)self castingFrame];
    PXGResizableShadowImageFrameForCastingFrame();
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXShadowView *)self _invalidateResizableShadowImage];
  }
}

- (void)setShadow:(id)a3
{
  v4 = a3;
  shadow = self->_shadow;
  if (shadow != v4)
  {
    v9 = v4;
    v6 = [(NSShadow *)shadow isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSShadow *)v9 copy];
      v8 = self->_shadow;
      self->_shadow = v7;

      [(PXShadowView *)self _invalidateResizableShadowImage];
      v4 = v9;
    }
  }
}

- (void)setCastingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_castingFrame = &self->_castingFrame;
  if (!CGRectEqualToRect(self->_castingFrame, a3))
  {
    p_castingFrame->origin.x = x;
    p_castingFrame->origin.y = y;
    p_castingFrame->size.width = width;
    p_castingFrame->size.height = height;

    [(PXShadowView *)self setNeedsLayout];
  }
}

- (PXShadowView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXShadowView;
  v3 = [(PXShadowView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(PXShadowView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

@end