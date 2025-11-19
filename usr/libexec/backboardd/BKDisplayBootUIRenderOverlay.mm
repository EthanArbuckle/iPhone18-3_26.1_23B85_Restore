@interface BKDisplayBootUIRenderOverlay
- (BKDisplayBootUIRenderOverlay)initWithOverlayDescriptor:(id)a3 level:(float)a4;
- (BOOL)_presentWithAnimationSettings:(id)a3;
- (CGRect)_bounds;
- (id)_animationForBackgroundLayerCrossfading:(id)a3;
- (id)_animationForContentLayerCrossfading:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_cleanup;
- (void)_dismissWithAnimationSettings:(id)a3;
- (void)_setBounds:(CGRect)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation BKDisplayBootUIRenderOverlay

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"bounds", a4, a5, a6}])
  {
    [(BKDisplayBootUIRenderOverlay *)self _bounds];
    v8 = v7;
    v10 = v9;
    [(BKDisplayBootUIRenderOverlay *)self _setBounds:?];
    v11 = sub_1000524BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134218496;
      v13 = self;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v8;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "-----------> %p: bounds of display changed: size.width: %f size.height: %f, updating overlay position", &v12, 0x20u);
    }
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKDisplayBootUIRenderOverlay;
  v4 = [(BKDisplayRenderOverlay *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  context = self->_context;
  if (context)
  {
    v6 = [NSString stringWithFormat:@"%x (%u)", [(CAContext *)context contextId], [(CAContext *)self->_context contextId]];
    v7 = [v4 appendObject:v6 withName:@"contextID"];
  }

  return v4;
}

- (id)_animationForBackgroundLayerCrossfading:(id)a3
{
  v3 = [(BKDisplayBootUIRenderOverlay *)self _animationForContentLayerCrossfading:a3];
  [v3 setBeginTimeMode:kCAAnimationRelative];
  [v3 duration];
  [v3 setBeginTime:?];
  [v3 setFillMode:kCAFillModeBoth];

  return v3;
}

- (id)_animationForContentLayerCrossfading:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  [v4 duration];
  v7 = v6;

  [v5 setDuration:v7 * 0.5];
  v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v5 applyToCAAnimation:v8];
  [v8 setFromValue:&off_100107BE0];
  [v8 setToValue:&off_100107BF0];
  [v8 setDelegate:self];

  return v8;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  outstandingAnimationsCount = self->_outstandingAnimationsCount;
  if (outstandingAnimationsCount)
  {
    v7 = outstandingAnimationsCount - 1;
    self->_outstandingAnimationsCount = v7;
    if (!v7)
    {
      v8 = v5;
      [(BKDisplayBootUIRenderOverlay *)self _cleanup];
      v5 = v8;
    }
  }
}

- (void)_cleanup
{
  v3 = [(BKDisplayRenderOverlay *)self descriptor];
  v4 = [v3 display];
  [v4 removeObserver:self forKeyPath:@"bounds"];

  [(BKDisplayBootUIRenderOverlay *)self _cleanUpContentLayer];
  [(CALayer *)self->_backgroundLayer removeAllAnimations];
  v5 = sub_1000524BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    context = self->_context;
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = context;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up %@ - Destroying context: %@", &v9, 0x16u);
  }

  [(CAContext *)self->_context setLayer:0];
  [(CAContext *)self->_context invalidate];
  v7 = self->_context;
  self->_context = 0;

  backgroundLayer = self->_backgroundLayer;
  self->_backgroundLayer = 0;
}

- (void)_dismissWithAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = sub_1000524BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%p dismiss", &v12, 0xCu);
  }

  if (v4)
  {
    v6 = [(BKDisplayBootUIRenderOverlay *)self _animationForContentLayerCrossfading:v4];
    [(CALayer *)self->_contentLayer setOpacity:0.0];
    contentLayer = self->_contentLayer;
    v8 = [v6 keyPath];
    [(CALayer *)contentLayer addAnimation:v6 forKey:v8];

    v9 = [(BKDisplayBootUIRenderOverlay *)self _animationForBackgroundLayerCrossfading:v4];
    [(CALayer *)self->_backgroundLayer setOpacity:0.0];
    backgroundLayer = self->_backgroundLayer;
    v11 = [v9 keyPath];
    [(CALayer *)backgroundLayer addAnimation:v9 forKey:v11];

    self->_outstandingAnimationsCount += 2;
  }

  else
  {
    [(BKDisplayBootUIRenderOverlay *)self _cleanup];
  }
}

- (BOOL)_presentWithAnimationSettings:(id)a3
{
  v5 = a3;
  v6 = sub_1000524BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v47 = 134217984;
    v48 = self;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%p present", &v47, 0xCu);
  }

  if (self->_context)
  {
    v35 = [NSString stringWithFormat:@"Already have a context"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v47 = 138544642;
      v48 = v36;
      v49 = 2114;
      v50 = v38;
      v51 = 2048;
      v52 = self;
      v53 = 2114;
      v54 = @"BKDisplayBootUIRenderOverlay.m";
      v55 = 1024;
      v56 = 89;
      v57 = 2114;
      v58 = v35;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v47, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10002003CLL);
  }

  v7 = [(BKDisplayRenderOverlay *)self descriptor];
  v8 = [v7 display];
  [v8 addObserver:self forKeyPath:@"bounds" options:0 context:0];

  v9 = [(BKDisplayBootUIRenderOverlay *)self _prepareContentLayerForPresentation:v5];
  contentLayer = self->_contentLayer;
  self->_contentLayer = v9;

  if (!self->_contentLayer)
  {
    v39 = [NSString stringWithFormat:@"Content layer not set"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v47 = 138544642;
      v48 = v40;
      v49 = 2114;
      v50 = v42;
      v51 = 2048;
      v52 = self;
      v53 = 2114;
      v54 = @"BKDisplayBootUIRenderOverlay.m";
      v55 = 1024;
      v56 = 94;
      v57 = 2114;
      v58 = v39;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v47, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100020128);
  }

  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:kCFBooleanTrue forKey:kCAContextDisplayable];
  [v11 setObject:kCFBooleanTrue forKey:kCAContextSecure];
  v12 = [CAContext remoteContextWithOptions:v11];
  context = self->_context;
  self->_context = v12;

  v14 = self->_context;
  if (!v14)
  {
    v43 = [NSString stringWithFormat:@"Couldn't create remote context"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = 138544642;
      v48 = v44;
      v49 = 2114;
      v50 = v46;
      v51 = 2048;
      v52 = self;
      v53 = 2114;
      v54 = @"BKDisplayBootUIRenderOverlay.m";
      v55 = 1024;
      v56 = 101;
      v57 = 2114;
      v58 = v43;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v47, 0x3Au);
    }

    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100020214);
  }

  [(BKDisplayRenderOverlay *)self level];
  [(CAContext *)v14 setLevel:?];
  [(BKDisplayBootUIRenderOverlay *)self _bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v19 * 0.5;
  v24 = v21 * 0.5;
  v25 = +[CALayer layer];
  [v25 setBounds:{v16, v18, v20, v22}];
  [v25 setPosition:{v23, v24}];
  [(CAContext *)self->_context setLayer:v25];
  v26 = +[CALayer layer];
  [(CALayer *)v26 setBounds:v16, v18, v20, v22];
  [(CALayer *)v26 setPosition:v23, v24];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v28 = DeviceRGB;
    if ([(BKDisplayBootUIRenderOverlay *)self _useLightBackground])
    {
      v29 = &unk_100124318;
    }

    else
    {
      v29 = &unk_100124338;
    }

    v30 = CGColorCreate(v28, v29);
    if (v30)
    {
      v31 = v30;
      [(CALayer *)v26 setBackgroundColor:v30];
      CFRelease(v31);
    }

    CFRelease(v28);
  }

  [v25 addSublayer:v26];
  backgroundLayer = self->_backgroundLayer;
  self->_backgroundLayer = v26;
  v33 = v26;

  [v25 addSublayer:self->_contentLayer];
  return 1;
}

- (void)_setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a3.size.width * 0.5;
  v9 = a3.size.height * 0.5;
  v10 = sub_1000524BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218240;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "midBounds:%g,%g", &v13, 0x16u);
  }

  v11 = [(CAContext *)self->_context layer];
  [v11 setBounds:{x, y, width, height}];

  v12 = [(CAContext *)self->_context layer];
  [v12 setPosition:{v8, v9}];

  [(CALayer *)self->_backgroundLayer setBounds:x, y, width, height];
  [(CALayer *)self->_backgroundLayer setPosition:v8, v9];
  [(CALayer *)self->_contentLayer setPosition:v8, v9];
}

- (CGRect)_bounds
{
  v2 = [(BKDisplayRenderOverlay *)self descriptor];
  v3 = [v2 display];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = +[BSPlatform sharedInstance];
  LODWORD(v3) = [v12 deviceClass];

  if (v3 == 3 && (v9 < 1920.0 || v11 < 1080.0))
  {
    v5 = 0.0;
    v11 = 1080.0;
    v9 = 1920.0;
    v7 = 0.0;
  }

  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BKDisplayBootUIRenderOverlay)initWithOverlayDescriptor:(id)a3 level:(float)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"descriptor", v13];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v28 = v15;
      v29 = 2114;
      v30 = v17;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BKDisplayBootUIRenderOverlay.m";
      v35 = 1024;
      v36 = 35;
      v37 = 2114;
      v38 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100020694);
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [v8 classForCoder];
    if (!v18)
    {
      v18 = objc_opt_class();
    }

    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"descriptor", v19, v21];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v28 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BKDisplayBootUIRenderOverlay.m";
      v35 = 1024;
      v36 = 35;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000207D0);
  }

  v26.receiver = self;
  v26.super_class = BKDisplayBootUIRenderOverlay;
  *&v9 = a4;
  v10 = [(BKDisplayRenderOverlay *)&v26 initWithOverlayDescriptor:v8 level:v9];
  if (v10)
  {
    v10->_lightBackground = MGGetSInt32Answer() == 1;
  }

  return v10;
}

@end