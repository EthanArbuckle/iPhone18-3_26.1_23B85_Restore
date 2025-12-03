@interface DBSDeviceDisplayZoomAnimationView
- (CGSize)intrinsicContentSize;
- (CGSize)preferredSize;
- (DBSDeviceDisplayZoomAnimationView)initWithDisplayZoomOption:(unint64_t)option;
- (void)_configureView;
- (void)_setPackage:(id)package;
- (void)_startAnimationForLayer:(id)layer;
- (void)_stepAnimamtionForLayer:(id)layer;
- (void)drawRect:(CGRect)rect;
- (void)setPackage:(id)package;
- (void)setScale:(double)scale;
- (void)startAnimation;
- (void)stopAnimation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBSDeviceDisplayZoomAnimationView

- (DBSDeviceDisplayZoomAnimationView)initWithDisplayZoomOption:(unint64_t)option
{
  v11.receiver = self;
  v11.super_class = DBSDeviceDisplayZoomAnimationView;
  v4 = [(DBSDeviceDisplayZoomAnimationView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(DBSDeviceDisplayZoomAnimationView *)v4 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(DBSDeviceDisplayZoomAnimationView *)v5 setBackgroundColor:clearColor];

    v5->_displayZoomOption = option;
    v5->_duration = 3.0;
    if (DBSReverseZoomEnabled())
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isiPad = [currentDevice sf_isiPad];
      v9 = 1.0;
      if (sf_isiPad)
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
  displayZoomOption = [(DBSDeviceDisplayZoomAnimationView *)self displayZoomOption];
  traitCollection = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  traitCollection2 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v7 = DBSAnimationPackageURLForDisplayZoomOptionAndUserInterfaceStyle(displayZoomOption, userInterfaceStyle, [traitCollection2 layoutDirection]);
  v8 = [v3 packageWithContentsOfURL:v7 type:*MEMORY[0x277CDA7F8] options:0 error:0];
  [(DBSDeviceDisplayZoomAnimationView *)self setPackage:v8];
}

- (void)setPackage:(id)package
{
  packageCopy = package;
  if (self->_package != packageCopy)
  {
    v6 = packageCopy;
    objc_storeStrong(&self->_package, package);
    [(DBSDeviceDisplayZoomAnimationView *)self _setPackage:v6];
    packageCopy = v6;
  }
}

- (void)_setPackage:(id)package
{
  packageCopy = package;
  packageLayer = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [packageLayer removeFromSuperlayer];

  rootLayer = [packageCopy rootLayer];
  isGeometryFlipped = [packageCopy isGeometryFlipped];

  [rootLayer setGeometryFlipped:isGeometryFlipped];
  [rootLayer setContentsGravity:*MEMORY[0x277CDA710]];
  [rootLayer setMasksToBounds:1];
  [rootLayer setFillMode:*MEMORY[0x277CDA228]];
  layer = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [layer setShouldRasterize:1];

  layer2 = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [layer2 addSublayer:rootLayer];

  [(DBSDeviceDisplayZoomAnimationView *)self setPackageLayer:rootLayer];
  [(DBSDeviceDisplayZoomAnimationView *)self invalidateIntrinsicContentSize];
}

- (void)drawRect:(CGRect)rect
{
  packageLayer = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  UIRectGetCenter();
  [packageLayer setPosition:?];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6;

  scale = self->_scale;
  packageLayer2 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  packageLayer3 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v11 = packageLayer3;
  if (packageLayer3)
  {
    [packageLayer3 contentsTransform];
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
  [packageLayer2 setAffineTransform:&v14];
}

- (CGSize)intrinsicContentSize
{
  packageLayer = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [packageLayer bounds];
  v20 = v5;
  v21 = v4;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  scale = self->_scale;
  packageLayer2 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v11 = packageLayer2;
  if (packageLayer2)
  {
    [packageLayer2 contentsTransform];
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

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = DBSDeviceDisplayZoomAnimationView;
  [(DBSDeviceDisplayZoomAnimationView *)&v12 traitCollectionDidChange:change];
  isAnimating = [(DBSDeviceDisplayZoomAnimationView *)self isAnimating];
  [(DBSDeviceDisplayZoomAnimationView *)self stopAnimation];
  v5 = MEMORY[0x277CD9F28];
  displayZoomOption = [(DBSDeviceDisplayZoomAnimationView *)self displayZoomOption];
  traitCollection = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  traitCollection2 = [(DBSDeviceDisplayZoomAnimationView *)self traitCollection];
  v10 = DBSAnimationPackageURLForDisplayZoomOptionAndUserInterfaceStyle(displayZoomOption, userInterfaceStyle, [traitCollection2 layoutDirection]);
  v11 = [v5 packageWithContentsOfURL:v10 type:*MEMORY[0x277CDA7F8] options:0 error:0];
  [(DBSDeviceDisplayZoomAnimationView *)self setPackage:v11];

  [(DBSDeviceDisplayZoomAnimationView *)self setNeedsDisplay];
  if (isAnimating)
  {
    [(DBSDeviceDisplayZoomAnimationView *)self startAnimation];
  }
}

- (void)startAnimation
{
  layer = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [layer setShouldRasterize:0];

  packageLayer = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [(DBSDeviceDisplayZoomAnimationView *)self _startAnimationForLayer:packageLayer];

  [(DBSDeviceDisplayZoomAnimationView *)self setAnimating:1];
}

- (void)stopAnimation
{
  layer = [(DBSDeviceDisplayZoomAnimationView *)self layer];
  [layer setShouldRasterize:1];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  stateController = [(DBSDeviceDisplayZoomAnimationView *)self stateController];

  if (stateController)
  {
    stateController2 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    [stateController2 cancelTimers];

    stateController3 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    removeAllStateChanges = [stateController3 removeAllStateChanges];

    [(DBSDeviceDisplayZoomAnimationView *)self setStateController:0];
  }

  [(DBSDeviceDisplayZoomAnimationView *)self setAnimating:0];
}

- (CGSize)preferredSize
{
  packageLayer = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  [packageLayer bounds];
  v19 = v5;
  v20 = v4;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  packageLayer2 = [(DBSDeviceDisplayZoomAnimationView *)self packageLayer];
  v10 = packageLayer2;
  if (packageLayer2)
  {
    [packageLayer2 contentsTransform];
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

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(DBSDeviceDisplayZoomAnimationView *)self setNeedsLayout];
  }
}

- (void)_startAnimationForLayer:(id)layer
{
  v4 = MEMORY[0x277CD9FB8];
  layerCopy = layer;
  v5 = [[v4 alloc] initWithLayer:layerCopy];
  [(DBSDeviceDisplayZoomAnimationView *)self setStateController:v5];

  [(DBSDeviceDisplayZoomAnimationView *)self setState:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  stateController = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
  LODWORD(v7) = 1.0;
  [stateController setInitialStatesOfLayer:layerCopy transitionSpeed:v7];

  [(DBSDeviceDisplayZoomAnimationView *)self _stepAnimamtionForLayer:layerCopy];
}

- (void)_stepAnimamtionForLayer:(id)layer
{
  layerCopy = layer;
  state = [(DBSDeviceDisplayZoomAnimationView *)self state];
  if (state <= 3 && (v5 = off_278459970[state], -[DBSDeviceDisplayZoomAnimationView setState:](self, "setState:", qword_22105F428[state]), [layerCopy stateWithName:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    stateController = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    LODWORD(v9) = 1.0;
    [stateController setState:v7 ofLayer:layerCopy transitionSpeed:v9];

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [(DBSDeviceDisplayZoomAnimationView *)self duration];
    [(DBSDeviceDisplayZoomAnimationView *)self performSelector:sel__stepAnimamtionForLayer_ withObject:layerCopy afterDelay:v10];
  }

  else
  {
    stateController2 = [(DBSDeviceDisplayZoomAnimationView *)self stateController];
    [stateController2 setInitialStatesOfLayer:layerCopy];

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [(DBSDeviceDisplayZoomAnimationView *)self performSelector:sel__stepAnimamtionForLayer_ withObject:layerCopy afterDelay:0.5];
  }
}

@end