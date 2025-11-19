@interface DBSDeviceDisplayZoomAnimationView
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSize;
- (DBSDeviceDisplayZoomAnimationView)initWithDisplayZoomOption:(unint64_t)a3;
- (void)_configureView;
- (void)_setPackage:(id)a3;
- (void)_startAnimationForLayer:(id)a3;
- (void)_stepAnimamtionForLayer:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setPackage:(id)a3;
- (void)setScale:(double)a3;
- (void)startAnimation;
- (void)stopAnimation;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBSDeviceDisplayZoomAnimationView

- (DBSDeviceDisplayZoomAnimationView)initWithDisplayZoomOption:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = DBSDeviceDisplayZoomAnimationView;
  v4 = [(DBSDeviceDisplayZoomAnimationView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(DBSDeviceDisplayZoomAnimationView *)v4 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(DBSDeviceDisplayZoomAnimationView *)v5 setBackgroundColor:v6];

    v5->_displayZoomOption = a3;
    v5->_duration = 3.0;
    if (DBSReverseZoomEnabled())
    {
      v7 = [MEMORY[0x277D75418] currentDevice];
      v8 = [v7 sf_isiPad];
      v9 = 1.0;
      if (v8)
      {
        v9 = 0.5;
      }

      v5->_scale = v9;
    }

    else
    {
      v5->_scale = 1.0;
    }

    [(DBSDeviceDisplayZoomAnimationView *)v5 _configureView];
  }

  return v5;
}

- (void)_configureView
{
  v3 = MEMORY[0x277CD9F28];
  v4 = [(DBSDeviceDisplayZoomAnimationView *)self displayZoomOption];
  v9 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v5 = [v9 userInterfaceStyle];
  v6 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v7 = DBSAnimationPackageURLForDisplayZoomOptionAndUserInterfaceStyle(v4, v5, [v6 layoutDirection]);
  v8 = [v3 packageWithContentsOfURL:v7 type:*MEMORY[0x277CDA7F8] options:0 error:0];
  [(DBSDeviceDisplayZoomAnimationView *)self setPackage:v8];
}

- (void)setPackage:(id)a3
{
  v5 = a3;
  if (self->_package != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_package, a3);
    [(DBSDeviceDisplayZoomAnimationView *)self _setPackage:v6];
    v5 = v6;
  }
}

- (void)_setPackage:(id)a3
{
  v4 = a3;
  v5 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [v5 removeFromSuperlayer];

  v9 = [v4 rootLayer];
  v6 = [v4 isGeometryFlipped];

  [v9 setGeometryFlipped:v6];
  [v9 setContentsGravity:*MEMORY[0x277CDA710]];
  [v9 setMasksToBounds:1];
  [v9 setFillMode:*MEMORY[0x277CDA228]];
  v7 = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [v7 setShouldRasterize:1];

  v8 = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [v8 addSublayer:v9];

  [(DBSDeviceDisplayZoomAnimationView *)self setPackageLayer:v9];
  [(DBSDeviceDisplayZoomAnimationView *)self invalidateIntrinsicContentSize];
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  UIRectGetCenter();
  [v4 setPosition:?];

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  scale = self->_scale;
  v9 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v10 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v11 = v10;
  if (v10)
  {
    [v10 contentsTransform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v12 = v7 * 1.5;
  if (v7 >= 3.0)
  {
    v12 = v7;
  }

  CGAffineTransformScale(&v14, &v13, 1.0 / v12 * scale, 1.0 / v12 * scale);
  [v9 setAffineTransform:&v14];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [v3 bounds];
  v20 = v5;
  v21 = v4;

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  scale = self->_scale;
  v10 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v11 = v10;
  if (v10)
  {
    [v10 contentsTransform];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  v12 = v8 * 1.5;
  if (v8 >= 3.0)
  {
    v12 = v8;
  }

  CGAffineTransformScale(&v24, &v23, 1.0 / v12 * scale, 1.0 / v12 * scale);
  v22 = vmlaq_n_f64(vmulq_n_f64(*&v24.c, *&v20), *&v24.a, *&v21);

  __asm { FMOV            V0.2D, #2.0 }

  v18 = vaddq_f64(v22, _Q0);
  v19 = v18.f64[1];
  result.width = v18.f64[0];
  result.height = v19;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = DBSDeviceDisplayZoomAnimationView;
  [(DBSDeviceDisplayZoomAnimationView *)&v12 traitCollectionDidChange:a3];
  v4 = [(DBSDeviceDisplayZoomAnimationView *)self isAnimating];
  [(DBSDeviceDisplayZoomAnimationView *)self stopAnimation];
  v5 = MEMORY[0x277CD9F28];
  v6 = [(DBSDeviceDisplayZoomAnimationView *)self displayZoomOption];
  v7 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v8 = [v7 userInterfaceStyle];
  v9 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v10 = DBSAnimationPackageURLForDisplayZoomOptionAndUserInterfaceStyle(v6, v8, [v9 layoutDirection]);
  v11 = [v5 packageWithContentsOfURL:v10 type:*MEMORY[0x277CDA7F8] options:0 error:0];
  [(DBSDeviceDisplayZoomAnimationView *)self setPackage:v11];

  [(DBSDeviceDisplayZoomAnimationView *)self setNeedsDisplay];
  if (v4)
  {
    [(DBSDeviceDisplayZoomAnimationView *)self startAnimation];
  }
}

- (void)startAnimation
{
  v3 = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [v3 setShouldRasterize:0];

  v4 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [(DBSDeviceDisplayZoomAnimationView *)self _startAnimationForLayer:v4];

  [(DBSDeviceDisplayZoomAnimationView *)self setAnimating:1];
}

- (void)stopAnimation
{
  v3 = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [v3 setShouldRasterize:1];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v4 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];

  if (v4)
  {
    v5 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    [v5 cancelTimers];

    v6 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    v7 = [v6 removeAllStateChanges];

    [(DBSDeviceDisplayZoomAnimationView *)self setStateController:0];
  }

  [(DBSDeviceDisplayZoomAnimationView *)self setAnimating:0];
}

- (CGSize)preferredSize
{
  v3 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [v3 bounds];
  v19 = v5;
  v20 = v4;

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v10 = v9;
  if (v9)
  {
    [v9 contentsTransform];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  v11 = v8 * 1.5;
  if (v8 >= 3.0)
  {
    v11 = v8;
  }

  CGAffineTransformScale(&v23, &v22, 1.0 / v11, 1.0 / v11);
  v21 = vmlaq_n_f64(vmulq_n_f64(*&v23.c, *&v19), *&v23.a, *&v20);

  __asm { FMOV            V0.2D, #2.0 }

  v17 = vaddq_f64(v21, _Q0);
  v18 = v17.f64[1];
  result.width = v17.f64[0];
  result.height = v18;
  return result;
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(DBSDeviceDisplayZoomAnimationView *)self setNeedsLayout];
  }
}

- (void)_startAnimationForLayer:(id)a3
{
  v4 = MEMORY[0x277CD9FB8];
  v8 = a3;
  v5 = [[v4 alloc] initWithLayer:v8];
  [(DBSDeviceDisplayZoomAnimationView *)self setStateController:v5];

  [(DBSDeviceDisplayZoomAnimationView *)self setState:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v6 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
  LODWORD(v7) = 1.0;
  [v6 setInitialStatesOfLayer:v8 transitionSpeed:v7];

  [(DBSDeviceDisplayZoomAnimationView *)self _stepAnimamtionForLayer:v8];
}

- (void)_stepAnimamtionForLayer:(id)a3
{
  v12 = a3;
  v4 = [(DBSDeviceDisplayZoomAnimationView *)self state];
  if (v4 <= 3 && (v5 = off_278459970[v4], -[DBSDeviceDisplayZoomAnimationView setState:](self, "setState:", qword_22105F428[v4]), [v12 stateWithName:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    LODWORD(v9) = 1.0;
    [v8 setState:v7 ofLayer:v12 transitionSpeed:v9];

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [(DBSDeviceDisplayZoomAnimationView *)self duration];
    [(DBSDeviceDisplayZoomAnimationView *)self performSelector:sel__stepAnimamtionForLayer_ withObject:v12 afterDelay:v10];
  }

  else
  {
    v11 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    [v11 setInitialStatesOfLayer:v12];

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [(DBSDeviceDisplayZoomAnimationView *)self performSelector:sel__stepAnimamtionForLayer_ withObject:v12 afterDelay:0.5];
  }
}

@end