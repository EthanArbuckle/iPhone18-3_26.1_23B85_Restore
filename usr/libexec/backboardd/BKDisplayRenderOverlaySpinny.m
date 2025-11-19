@interface BKDisplayRenderOverlaySpinny
+ (id)overlayWithLevel:(float)a3 display:(id)a4;
- (BKDisplayRenderOverlaySpinny)initWithOverlayDescriptor:(id)a3 level:(float)a4;
- (BOOL)_useLightBackground;
- (id)_prepareContentLayerForPresentation:(id)a3;
- (id)_spinnyImageSequence;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_cleanUpContentLayer;
- (void)_setScale:(double)a3;
- (void)_startAnimating;
- (void)_unloadSpinnyImageSequence;
@end

@implementation BKDisplayRenderOverlaySpinny

- (BOOL)_useLightBackground
{
  background = self->_background;
  if (!background)
  {
    v5.receiver = self;
    v5.super_class = BKDisplayRenderOverlaySpinny;
    if ([(BKDisplayBootUIRenderOverlay *)&v5 _useLightBackground])
    {
      return 1;
    }

    background = self->_background;
  }

  return background == 2;
}

- (void)_unloadSpinnyImageSequence
{
  v3 = sub_1000524BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%p unload spinny", &v5, 0xCu);
  }

  imageSequence = self->_imageSequence;
  self->_imageSequence = 0;
}

- (id)_spinnyImageSequence
{
  imageSequence = self->_imageSequence;
  if (!imageSequence)
  {
    v4 = sub_1000524BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134217984;
      v12 = self;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%p load spinny", &v11, 0xCu);
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [(BKDisplayRenderOverlaySpinny *)self _assetPrefix];
    v7 = [BKImageSequence alloc];
    [(BKDisplayRenderOverlay *)self _scale];
    v8 = [(BKImageSequence *)v7 initWithBasename:v6 bundle:v5 imageCount:24 scale:?];
    v9 = self->_imageSequence;
    self->_imageSequence = v8;

    imageSequence = self->_imageSequence;
  }

  return imageSequence;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlaySpinny;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendUnsignedInteger:self->_background withName:@"_background"];

  return v4;
}

- (void)_setScale:(double)a3
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlaySpinny;
  [(BKDisplayRenderOverlay *)&v7 _setScale:a3];
  [(BKDisplayRenderOverlaySpinny *)self _unloadSpinnyImageSequence];
  animation = self->_animation;
  if (animation)
  {
    v5 = [(BKDisplayRenderOverlaySpinny *)self _spinnyImageSequence];
    v6 = [v5 allImages];
    [(CAKeyframeAnimation *)animation setValues:v6];
  }
}

- (void)_cleanUpContentLayer
{
  v3 = [(BKDisplayBootUIRenderOverlay *)self contentLayer];
  [v3 removeAllAnimations];

  [(BKDisplayRenderOverlaySpinny *)self _unloadSpinnyImageSequence];
}

- (id)_prepareContentLayerForPresentation:(id)a3
{
  v4 = [(BKDisplayRenderOverlay *)self display];
  v5 = [v4 uniqueId];

  sub_100028DEC(v5);
  v6 = [(BKDisplayRenderOverlaySpinny *)self _spinnyImageSequence];
  v7 = [v6 imageAtIndex:0];

  v8 = +[CALayer layer];
  [(BKDisplayBootUIRenderOverlay *)self _bounds];
  v10 = v9 * 0.5;
  v12 = v11 * 0.5;
  Width = CGImageGetWidth(v7);
  [v8 setBounds:{0.0, 0.0, Width, CGImageGetHeight(v7)}];
  [v8 setPosition:{v10, v12}];
  [v8 setContents:v7];

  return v8;
}

- (void)_startAnimating
{
  v3 = objc_alloc_init(CAKeyframeAnimation);
  [(CAKeyframeAnimation *)v3 setKeyPath:@"contents"];
  v4 = [(BKDisplayRenderOverlaySpinny *)self _spinnyImageSequence];
  v5 = [v4 allImages];
  [(CAKeyframeAnimation *)v3 setValues:v5];

  [(CAKeyframeAnimation *)v3 setCalculationMode:kCAAnimationDiscrete];
  [(CAKeyframeAnimation *)v3 setRepeatCount:3.53369517e72];
  [(CAKeyframeAnimation *)v3 setDuration:1.0];
  v6 = [(BKDisplayBootUIRenderOverlay *)self contentLayer];
  [v6 addAnimation:v3 forKey:@"contents"];

  animation = self->_animation;
  self->_animation = v3;
}

- (BKDisplayRenderOverlaySpinny)initWithOverlayDescriptor:(id)a3 level:(float)a4
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlaySpinny;
  v4 = [(BKDisplayBootUIRenderOverlay *)&v7 initWithOverlayDescriptor:a3 level:?];
  v5 = v4;
  if (v4)
  {
    [(BKDisplayRenderOverlay *)v4 _setType:2];
    v5->_background = 0;
  }

  return v5;
}

+ (id)overlayWithLevel:(float)a3 display:(id)a4
{
  v5 = a4;
  v6 = [BKSDisplayRenderOverlayDescriptor alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithName:v8 display:v5];

  [v9 setLockBacklight:0];
  v10 = [BKDisplayRenderOverlaySpinny alloc];
  *&v11 = a3;
  v12 = [(BKDisplayRenderOverlaySpinny *)v10 initWithOverlayDescriptor:v9 level:v11];

  return v12;
}

@end