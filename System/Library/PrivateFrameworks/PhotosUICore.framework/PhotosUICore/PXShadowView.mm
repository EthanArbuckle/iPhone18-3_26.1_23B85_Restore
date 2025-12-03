@interface PXShadowView
- (CGRect)castingFrame;
- (PXShadowView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCastingFrame:(CGRect)frame;
- (void)setCornerRadius:(double)radius;
- (void)setShadow:(id)shadow;
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
  shadow = [(PXShadowView *)self shadow];
  if (self->_resizableShadowImageNeedsUpdate)
  {
    v4 = +[PXShadowImageCache sharedInstance];
    [(PXShadowView *)self cornerRadius];
    v6 = v5;
    window = [(PXShadowView *)self window];
    screen = [window screen];
    [screen scale];
    v10 = [v4 stretchableShadowImageFor:shadow cornerRadius:v6 screenScale:v9];
    resizableShadowImage = self->_resizableShadowImage;
    self->_resizableShadowImage = v10;

    self->_resizableShadowImageNeedsUpdate = 0;
  }

  [(UIImageView *)self->_imageView setImage:self->_resizableShadowImage];
  if (shadow)
  {
    [(PXShadowView *)self castingFrame];
    PXGResizableShadowImageFrameForCastingFrame();
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXShadowView *)self _invalidateResizableShadowImage];
  }
}

- (void)setShadow:(id)shadow
{
  shadowCopy = shadow;
  shadow = self->_shadow;
  if (shadow != shadowCopy)
  {
    v9 = shadowCopy;
    v6 = [(NSShadow *)shadow isEqual:shadowCopy];
    shadowCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSShadow *)v9 copy];
      v8 = self->_shadow;
      self->_shadow = v7;

      [(PXShadowView *)self _invalidateResizableShadowImage];
      shadowCopy = v9;
    }
  }
}

- (void)setCastingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_castingFrame = &self->_castingFrame;
  if (!CGRectEqualToRect(self->_castingFrame, frame))
  {
    p_castingFrame->origin.x = x;
    p_castingFrame->origin.y = y;
    p_castingFrame->size.width = width;
    p_castingFrame->size.height = height;

    [(PXShadowView *)self setNeedsLayout];
  }
}

- (PXShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXShadowView;
  v3 = [(PXShadowView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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