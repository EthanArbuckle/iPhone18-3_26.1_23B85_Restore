@interface SBAppResizeGrabberView
- (CGRect)_pillViewContainerViewFrame;
- (CGRect)_pointerRegionRect;
- (CGRect)frameInContentRect:(CGRect)rect;
- (SBAppResizeGrabberView)initWithCorner:(unint64_t)corner cornerRadius:(double)radius;
- (double)_grabberCurve;
- (double)_grabberRotation;
- (id)_grabberPathForLength:(double)length curve:(double)curve rotation:(double)rotation;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateGrabberPathAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:(id)change;
- (void)setCornerRadius:(double)radius;
@end

@implementation SBAppResizeGrabberView

- (SBAppResizeGrabberView)initWithCorner:(unint64_t)corner cornerRadius:(double)radius
{
  v28.receiver = self;
  v28.super_class = SBAppResizeGrabberView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(SBAppResizeGrabberView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D26710]);
    mEMORY[0x277D26708] = [MEMORY[0x277D26708] sharedInstance];
    v13 = [v11 initWithFrame:mEMORY[0x277D26708] settings:-100 graphicsQuality:{v6, v7, v8, v9}];

    [v13 setStyle:1];
    [v13 setBackgroundLumninanceObserver:v10];
    [v13 bs_setHitTestingDisabled:1];
    [v13 setClipsToBounds:0];
    layer = [v13 layer];
    v15 = objc_opt_class();
    v16 = layer;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [v18 setScale:1.0];
    v19 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBAppResizeGrabberView *)v10 _pillViewContainerViewFrame];
    v20 = [v19 initWithFrame:?];
    [(UIView *)v20 addSubview:v13];
    [(UIView *)v20 bs_setHitTestingDisabled:1];
    [(SBAppResizeGrabberView *)v10 addSubview:v20];
    [(SBAppResizeGrabberView *)v10 setAlpha:0.0];
    layer2 = [(SBAppResizeGrabberView *)v10 layer];
    [layer2 setHitTestsAsOpaque:1];

    v22 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v10];
    [(SBAppResizeGrabberView *)v10 addInteraction:v22];
    v10->_corner = corner;
    radiusCopy = 18.0;
    if (radius >= 18.0)
    {
      radiusCopy = radius;
    }

    v10->_cornerRadius = radiusCopy;
    pillViewContainerView = v10->_pillViewContainerView;
    v10->_pillViewContainerView = v20;
    v25 = v20;

    pillView = v10->_pillView;
    v10->_pillView = v13;

    [(SBAppResizeGrabberView *)v10 _updateGrabberPathAnimated:0];
    [(SBAppResizeGrabberView *)v10 setAccessibilityIdentifier:@"resize-grabber"];
  }

  return v10;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBAppResizeGrabberView;
  [(SBAppResizeGrabberView *)&v5 layoutSubviews];
  pillViewContainerView = self->_pillViewContainerView;
  [(SBAppResizeGrabberView *)self _pillViewContainerViewFrame];
  [(UIView *)pillViewContainerView setFrame:?];
  pillView = self->_pillView;
  [(SBAppResizeGrabberView *)self _pointerRegionRect];
  [(SBAppResizeGrabberView *)self convertRect:self->_pillViewContainerView toView:?];
  [(MTLumaDodgePillView *)pillView setFrame:?];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    v8 = v3;
    if (radius < 18.0)
    {
      radius = 18.0;
    }

    self->_cornerRadius = radius;
    [(SBAppResizeGrabberView *)self _updateGrabberPathAnimated:1, v4, v8, v5];

    [(SBAppResizeGrabberView *)self setNeedsLayout];
  }
}

- (CGRect)frameInContentRect:(CGRect)rect
{
  corner = self->_corner;
  if (corner == 3)
  {
    v4 = rect.size.width + -20.0;
    v5 = rect.size.height + -20.0;
  }

  else
  {
    v4 = -20.0;
    if (corner == 2)
    {
      v5 = rect.size.height + -20.0;
    }

    else
    {
      v5 = -20.0;
      if (corner == 1)
      {
        v4 = rect.size.width + -20.0;
      }
    }
  }

  v6 = 40.0;
  v7 = 40.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:(id)change
{
  changeCopy = change;
  backgroundLuminance = [changeCopy backgroundLuminance];
  v4 = 2;
  if (backgroundLuminance == 1)
  {
    v4 = 4;
  }

  if (backgroundLuminance == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  [changeCopy setStyle:v5];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  if ([request _isPencilInitiated])
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277D75880];
    [(SBAppResizeGrabberView *)self _pointerRegionRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    identifier = [regionCopy identifier];
    v8 = [v9 regionWithRect:identifier identifier:{v11, v13, v15, v17}];
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_pillViewContainerView];
  v6 = [MEMORY[0x277D75878] effectWithPreview:v5];
  v7 = MEMORY[0x277D75890];
  v8 = [MEMORY[0x277D75888] shapeWithPath:self->_grabberPath];
  v9 = [v7 styleWithEffect:v6 shape:v8];

  return v9;
}

- (id)_grabberPathForLength:(double)length curve:(double)curve rotation:(double)rotation
{
  v8 = curve * 0.5;
  v9 = round(curve * 3.14159265 + curve * 3.14159265);
  if (v9 * 0.25 <= length)
  {
    length = v9 * 0.25;
  }

  v10 = length / v9 * 3.14159265 + length / v9 * 3.14159265;
  v11 = 1.57079633;
  if (v10 <= 1.57079633)
  {
    v14 = 0.785398163 - v10 * 0.5;
    v11 = v10 * 0.5 + 0.785398163;
    v13 = 0.0;
  }

  else
  {
    v12 = floor((length - v9 * 0.25) * 0.5);
    v13 = v12 + v12;
    v14 = 0.0;
  }

  v15 = -v8;
  v16 = objc_alloc_init(MEMORY[0x277D75208]);
  v17 = v16;
  if (v13 <= 0.0)
  {
    v20 = __sincos_stret(v11);
    v21 = curve * v20.__sinval - v8;
    [v17 moveToPoint:{curve * v20.__cosval - v8, v21}];
    [v17 addLineToPoint:{curve * v20.__cosval - v8, v21}];
    [v17 addArcWithCenter:0 radius:v15 startAngle:v15 endAngle:curve clockwise:{v11, v14}];
    v22 = __sincos_stret(v14);
    v8 = curve * v22.__cosval - v8;
    v19 = v15 + curve * v22.__sinval;
  }

  else
  {
    v18 = v13 * 0.5;
    [v16 moveToPoint:{v15 - v18, curve * 0.5}];
    [v17 addLineToPoint:{-v8, curve * 0.5}];
    [v17 addArcWithCenter:0 radius:-v8 startAngle:-v8 endAngle:curve clockwise:{v11, v14}];
    v19 = v15 / v18;
  }

  [v17 addLineToPoint:{v8, v19}];
  CGAffineTransformMakeRotation(&v34, rotation);
  [v17 applyTransform:&v34];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&v33.a = *MEMORY[0x277CBF2C0];
  *&v33.c = v23;
  *&v33.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v34.a = *&v33.a;
  *&v34.c = v23;
  *&v34.tx = *&v33.tx;
  CGAffineTransformTranslate(&v33, &v34, 20.0, 20.0);
  [(SBAppResizeGrabberView *)self _pillViewContainerViewOffset];
  v25 = v24;
  [(SBAppResizeGrabberView *)self _grabberCurve];
  v27 = v25 - (v26 * 0.5 + 6.0);
  corner = self->_corner;
  if (corner > 1)
  {
    if (corner == 2)
    {
      v32 = v33;
      v30 = 0.0;
    }

    else
    {
      if (corner != 3)
      {
        goto LABEL_20;
      }

      v32 = v33;
      v30 = v25 - (v26 * 0.5 + 6.0);
    }

    v29 = v27;
  }

  else if (corner)
  {
    if (corner != 1)
    {
      goto LABEL_20;
    }

    v32 = v33;
    v29 = 0.0;
    v30 = v25 - (v26 * 0.5 + 6.0);
  }

  else
  {
    v32 = v33;
    v30 = 0.0;
    v29 = 0.0;
  }

  CGAffineTransformTranslate(&v34, &v32, v30, v29);
  v33 = v34;
LABEL_20:
  v34 = v33;
  [v17 applyTransform:{&v34, *&v32.a, *&v32.c, *&v32.tx}];

  return v17;
}

- (void)_updateGrabberPathAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBAppResizeGrabberView *)self _grabberCurve];
  v6 = v5;
  [(SBAppResizeGrabberView *)self _grabberRotation];
  v8 = [(SBAppResizeGrabberView *)self _grabberPathForLength:30.0 curve:v6 rotation:v7];
  [(MTLumaDodgePillView *)self->_pillView setCustomPillShapePath:v8 animated:animatedCopy];
  grabberPath = self->_grabberPath;
  self->_grabberPath = v8;
}

- (double)_grabberCurve
{
  result = self->_cornerRadius + -6.0;
  if (result < 6.0)
  {
    return 6.0;
  }

  return result;
}

- (double)_grabberRotation
{
  corner = self->_corner;
  result = 0.0;
  if (corner <= 2)
  {
    return dbl_21F8A5F00[corner];
  }

  return result;
}

- (CGRect)_pillViewContainerViewFrame
{
  [(SBAppResizeGrabberView *)self _pillViewContainerViewOffset];
  v4 = v3;
  corner = self->_corner;
  v6 = 0.0;
  if (corner > 1)
  {
    if (corner == 2)
    {
      [(SBAppResizeGrabberView *)self bounds];
      v15 = -v4;
      v14 = v4;
      goto LABEL_11;
    }

    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    if (corner == 3)
    {
      [(SBAppResizeGrabberView *)self bounds:0.0];
      v14 = -v4;
      v15 = -v4;
LABEL_11:
      *(&v6 - 3) = CGRectOffset(*&v10, v14, v15);
    }
  }

  else
  {
    if (!corner)
    {
      [(SBAppResizeGrabberView *)self bounds];
      v14 = v4;
      goto LABEL_9;
    }

    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    if (corner == 1)
    {
      [(SBAppResizeGrabberView *)self bounds:0.0];
      v14 = -v4;
LABEL_9:
      v15 = v4;
      goto LABEL_11;
    }
  }

  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (CGRect)_pointerRegionRect
{
  [(SBAppResizeGrabberView *)self _pillViewContainerViewOffset];
  v4 = 20.0;
  corner = self->_corner;
  v6 = 0.0;
  if (corner > 1)
  {
    if (corner == 2)
    {
      v4 = -v3;
      v7 = 20.0;
      goto LABEL_10;
    }

    v4 = 0.0;
    v7 = 0.0;
    if (corner == 3)
    {
      v4 = -v3;
      v6 = v3 + 20.0;
      v7 = -v3;
    }
  }

  else if (corner)
  {
    v4 = 0.0;
    v7 = 0.0;
    if (corner == 1)
    {
      v7 = -v3;
      v4 = 20.0;
LABEL_10:
      v6 = v3 + 20.0;
    }
  }

  else
  {
    v6 = v3 + 20.0;
    v7 = 20.0;
  }

  v8 = v7;
  v9 = v6;
  result.size.height = v9;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v8;
  return result;
}

@end