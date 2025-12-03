@interface TPRevealingRingView
+ (id)classIdentifier;
- (BOOL)_shouldDrawAsCircle:(CGSize)circle cornerRadius:(double)radius;
- (CGSize)ringSize;
- (TPRevealingRingView)initWithFrame:(CGRect)frame paddingOutsideRing:(UIEdgeInsets)ring;
- (UIEdgeInsets)paddingOutsideRing;
- (id)description;
- (void)_animateForReveal:(BOOL)reveal withDuration:(float)duration delay:(double)delay;
- (void)_calculateOuter:(CGRect *)outer inner:(CGRect *)inner newXOffset:(double *)offset newYOffset:(double *)yOffset withScale:(double)scale;
- (void)_computeInnerViewDrawingPropertiesWithScale:(double)scale;
- (void)_computeOuterViewDrawingPropertiesWithScale:(double)scale;
- (void)_evaluateCircularness;
- (void)layoutSubviews;
- (void)setAlphaInsideRing:(double)ring;
- (void)setColorInsideRing:(id)ring;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setPaddingOutsideRing:(UIEdgeInsets)ring;
- (void)setRevealed:(BOOL)revealed animated:(BOOL)animated delay:(double)delay;
@end

@implementation TPRevealingRingView

+ (id)classIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = NSStringFromClass(self);
  v7 = [v3 stringWithFormat:@"%@.%@", bundleIdentifier, v6];

  return v7;
}

- (TPRevealingRingView)initWithFrame:(CGRect)frame paddingOutsideRing:(UIEdgeInsets)ring
{
  right = ring.right;
  bottom = ring.bottom;
  left = ring.left;
  top = ring.top;
  v23.receiver = self;
  v23.super_class = TPRevealingRingView;
  v8 = [(TPRevealingRingView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v8;
  if (v8)
  {
    [(TPRevealingRingView *)v8 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TPRevealingRingView *)v9 setBackgroundColor:clearColor];

    layer = [(TPRevealingRingView *)v9 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(TPRevealingRingView *)v9 layer];
    [layer2 setAllowsGroupOpacity:0];

    v13 = objc_alloc_init(_TPTemplatedColoredImageView);
    outerView = v9->_outerView;
    v9->_outerView = v13;

    v15 = v9->_outerView;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(_TPTemplatedColoredImageView *)v15 setBackgroundColor:clearColor2];

    [(_TPTemplatedColoredImageView *)v9->_outerView setAlpha:1.0];
    [(TPRevealingRingView *)v9 addSubview:v9->_outerView];
    v17 = objc_alloc_init(_TPTemplatedColoredImageView);
    innerView = v9->_innerView;
    v9->_innerView = v17;

    v19 = v9->_innerView;
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [(_TPTemplatedColoredImageView *)v19 setBackgroundColor:clearColor3];

    [(_TPTemplatedColoredImageView *)v9->_innerView setAlpha:0.0];
    [(TPRevealingRingView *)v9 addSubview:v9->_innerView];
    [(TPRevealingRingView *)v9 setDefaultRingStrokeWidth:TPPixelCGCeiling(1.5)];
    [(TPRevealingRingView *)v9 setRevealAnimationDuration:0.00100000005];
    [(TPRevealingRingView *)v9 setUnrevealAnimationDuration:0.392500013];
    [(TPRevealingRingView *)v9 setPaddingOutsideRing:top, left, bottom, right];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(TPRevealingRingView *)v9 setColorInsideRing:whiteColor];

    [(TPRevealingRingView *)v9 setCornerRadius:0.0];
    v9->_alphaInsideRing = 1.0;
    v9->_alphaOutsideRing = 1.0;
  }

  return v9;
}

- (CGSize)ringSize
{
  [(TPRevealingRingView *)self bounds];
  v4 = v3 - (self->_paddingOutsideRing.left + self->_paddingOutsideRing.right);
  v6 = v5 - (self->_paddingOutsideRing.top + self->_paddingOutsideRing.bottom);
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setPaddingOutsideRing:(UIEdgeInsets)ring
{
  v3.f64[0] = ring.top;
  v3.f64[1] = ring.left;
  v4.f64[0] = ring.bottom;
  v4.f64[1] = ring.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_paddingOutsideRing.top, v3), vceqq_f64(*&self->_paddingOutsideRing.bottom, v4)))) & 1) == 0)
  {
    self->_paddingOutsideRing = ring;
    [(TPRevealingRingView *)self setNeedsLayout];
  }
}

- (void)setColorInsideRing:(id)ring
{
  ringCopy = ring;
  if (self->_colorInsideRing != ringCopy)
  {
    v6 = ringCopy;
    objc_storeStrong(&self->_colorInsideRing, ring);
    [(_TPTemplatedColoredImageView *)self->_innerView setTemplateImageColor:self->_colorInsideRing];
    ringCopy = v6;
  }
}

- (void)setAlphaInsideRing:(double)ring
{
  self->_alphaInsideRing = ring;
  if (!self->_revealed)
  {
    [(_TPTemplatedColoredImageView *)self->_innerView setAlpha:0.0];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(TPRevealingRingView *)self _evaluateCircularness];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TPRevealingRingView;
  [(TPRevealingRingView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TPRevealingRingView *)self _evaluateCircularness];
}

- (void)setRevealed:(BOOL)revealed animated:(BOOL)animated delay:(double)delay
{
  if (self->_revealed != revealed)
  {
    self->_revealed = revealed;
    v6 = &OBJC_IVAR___TPRevealingRingView__unrevealAnimationDuration;
    if (revealed)
    {
      v6 = &OBJC_IVAR___TPRevealingRingView__revealAnimationDuration;
    }

    v7 = *(&self->super.super.super.isa + *v6);
    *&v7 = v7;
    [(TPRevealingRingView *)self _animateForReveal:v7 withDuration:delay delay:?];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  colorOutsideRing = self->_colorOutsideRing;
  colorInsideRing = self->_colorInsideRing;
  v8 = NSStringFromUIEdgeInsets(self->_paddingOutsideRing);
  defaultRingStrokeWidth = self->_defaultRingStrokeWidth;
  v10 = [v3 stringWithFormat:@"<%@:%p - colorOutsideRing: %@, colorInsideRing: %@, paddingOutsideRing: %@, strokeWidth: %.2f, _cornerRadius: %.2f, circularRing: %d, _revealed: %d>", v5, self, colorOutsideRing, colorInsideRing, v8, *&defaultRingStrokeWidth, *&self->_cornerRadius, self->_isCircularRing, self->_revealed];

  return v10;
}

- (void)layoutSubviews
{
  [(TPRevealingRingView *)self bounds];
  top = self->_paddingOutsideRing.top;
  left = self->_paddingOutsideRing.left;
  v22.origin.x = v9 + left;
  x = v22.origin.x;
  v22.origin.y = v10 + top;
  y = v22.origin.y;
  v22.size.width = v11 - (left + self->_paddingOutsideRing.right);
  width = v22.size.width;
  v22.size.height = v12 - (top + self->_paddingOutsideRing.bottom);
  height = v22.size.height;
  v23 = CGRectInset(v22, self->_defaultRingStrokeWidth, self->_defaultRingStrokeWidth);
  v13 = v23.origin.x;
  v14 = v23.origin.y;
  v15 = v23.size.width;
  v16 = v23.size.height;
  [(_TPTemplatedColoredImageView *)self->_outerView setFrame:x, y, width, height];
  [(TPRevealingRingView *)self _computeOuterViewDrawingPropertiesWithScale:1.0];
  outerView = self->_outerView;
  v18 = __imageForRoundedRectProperties(&self->_outerViewDrawingProperties);
  [(_TPTemplatedColoredImageView *)outerView setImage:v18];

  [(_TPTemplatedColoredImageView *)self->_innerView setFrame:v13, v14, v15, v16];
  [(TPRevealingRingView *)self _computeInnerViewDrawingPropertiesWithScale:1.0];
  innerView = self->_innerView;
  v20 = __imageForRoundedRectProperties(&self->_innerViewDrawingProperties);
  [(_TPTemplatedColoredImageView *)innerView setImage:v20];

  v21.receiver = self;
  v21.super_class = TPRevealingRingView;
  [(TPRevealingRingView *)&v21 layoutSubviews];
}

- (void)_calculateOuter:(CGRect *)outer inner:(CGRect *)inner newXOffset:(double *)offset newYOffset:(double *)yOffset withScale:(double)scale
{
  [(TPRevealingRingView *)self bounds];
  top = self->_paddingOutsideRing.top;
  left = self->_paddingOutsideRing.left;
  v16 = v15 + left;
  v18 = v17 + top;
  v20 = v19 - (left + self->_paddingOutsideRing.right);
  v22 = v21 - (top + self->_paddingOutsideRing.bottom);
  v23.origin.x = v15 + left;
  v23.origin.y = v17 + top;
  v23.size.width = v20;
  v23.size.height = v22;
  v24 = CGRectInset(v23, self->_defaultRingStrokeWidth, self->_defaultRingStrokeWidth);
  if (outer)
  {
    outer->origin.x = v16;
    outer->origin.y = v18;
    outer->size.width = v20;
    outer->size.height = v22;
  }

  if (inner)
  {
    *inner = v24;
  }

  if (offset)
  {
    *offset = v24.size.width * 0.5 - v24.size.width * 0.5 * scale;
  }

  if (yOffset)
  {
    *yOffset = v24.size.height * 0.5 - v24.size.height * 0.5 * scale;
  }
}

- (void)_computeInnerViewDrawingPropertiesWithScale:(double)scale
{
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  v14 = 0u;
  v11 = 0.0;
  v12 = 0.0;
  [(TPRevealingRingView *)self _calculateOuter:v15 inner:&v13 newXOffset:&v12 newYOffset:&v11 withScale:?];
  v5 = v11;
  v4 = v12;
  v6 = (self->_cornerRadius - self->_defaultRingStrokeWidth) * scale;
  v10 = vmulq_n_f64(v14, scale);
  [(_TPTemplatedColoredImageView *)self->_innerView size];
  self->_innerViewDrawingProperties.size.width = v7;
  self->_innerViewDrawingProperties.size.height = v8;
  self->_innerViewDrawingProperties.outerPath.rect.origin.x = v4;
  self->_innerViewDrawingProperties.outerPath.rect.origin.y = v5;
  self->_innerViewDrawingProperties.outerPath.rect.size = v10;
  self->_innerViewDrawingProperties.outerPath.cornerRadius = v6;
}

- (void)_computeOuterViewDrawingPropertiesWithScale:(double)scale
{
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v16 = 0.0;
  v17 = 0.0;
  [(TPRevealingRingView *)self _calculateOuter:v20 inner:&v18 newXOffset:&v17 newYOffset:&v16 withScale:?];
  v4 = (self->_cornerRadius - self->_defaultRingStrokeWidth) * scale;
  [(_TPTemplatedColoredImageView *)self->_outerView bounds];
  v6 = v5;
  [(_TPTemplatedColoredImageView *)self->_outerView bounds];
  v8 = v7;
  defaultRingStrokeWidth = self->_defaultRingStrokeWidth;
  v10 = v6 * 0.5 - (v6 * 0.5 - defaultRingStrokeWidth) * scale;
  v11 = v8 * 0.5 - (v8 * 0.5 - defaultRingStrokeWidth) * scale;
  v16 = v11;
  v17 = v10;
  v15 = vmulq_n_f64(v19, scale);
  [(_TPTemplatedColoredImageView *)self->_outerView size];
  self->_outerViewDrawingProperties.size.width = v12;
  self->_outerViewDrawingProperties.size.height = v13;
  self->_outerViewDrawingProperties.outerPath.rect.origin.x = 0.0;
  self->_outerViewDrawingProperties.outerPath.rect.origin.y = 0.0;
  self->_outerViewDrawingProperties.outerPath.rect.size.width = v6;
  self->_outerViewDrawingProperties.outerPath.rect.size.height = v8;
  self->_outerViewDrawingProperties.outerPath.cornerRadius = self->_cornerRadius;
  self->_outerViewDrawingProperties.innerPath.rect.origin.x = v10;
  self->_outerViewDrawingProperties.innerPath.rect.origin.y = v11;
  self->_outerViewDrawingProperties.innerPath.rect.size = v15;
  self->_outerViewDrawingProperties.innerPath.cornerRadius = v4;
}

- (void)_evaluateCircularness
{
  [(TPRevealingRingView *)self ringSize];
  cornerRadius = self->_cornerRadius;
  self->_isCircularRing = [TPRevealingRingView _shouldDrawAsCircle:"_shouldDrawAsCircle:cornerRadius:" cornerRadius:?];
}

- (BOOL)_shouldDrawAsCircle:(CGSize)circle cornerRadius:(double)radius
{
  width = circle.width;
  v6 = [(TPRevealingRingView *)self _isSquare:circle.width, circle.height];
  if (v6)
  {
    LOBYTE(v6) = vabdd_f64(width * 0.5, fabs(radius)) < 0.1;
  }

  return v6;
}

- (void)_animateForReveal:(BOOL)reveal withDuration:(float)duration delay:(double)delay
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__TPRevealingRingView__animateForReveal_withDuration_delay___block_invoke;
  v5[3] = &unk_1E7C0C070;
  v5[4] = self;
  revealCopy = reveal;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:duration];
}

uint64_t __60__TPRevealingRingView__animateForReveal_withDuration_delay___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 624);
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  return [*(*(a1 + 32) + 624) setAlpha:v2];
}

- (UIEdgeInsets)paddingOutsideRing
{
  top = self->_paddingOutsideRing.top;
  left = self->_paddingOutsideRing.left;
  bottom = self->_paddingOutsideRing.bottom;
  right = self->_paddingOutsideRing.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end