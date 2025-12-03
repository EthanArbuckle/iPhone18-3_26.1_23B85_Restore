@interface BKDisplayRenderOverlayPinkForTesting
+ (id)overlayWithLevel:(float)level display:(id)display;
+ (void)doItHide;
+ (void)doItShow;
+ (void)doItShowKernel;
- (BKDisplayRenderOverlayPinkForTesting)initWithOverlayDescriptor:(id)descriptor level:(float)level;
- (BOOL)_applyProgressIndicatorPropertiesToKernelIfNecessary;
- (BOOL)_presentWithAnimationSettings:(id)settings;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_dismissWithAnimationSettings:(id)settings;
- (void)dealloc;
@end

@implementation BKDisplayRenderOverlayPinkForTesting

- (BOOL)_applyProgressIndicatorPropertiesToKernelIfNecessary
{
  descriptor = [(BKDisplayRenderOverlay *)self descriptor];
  progressIndicatorProperties = [descriptor progressIndicatorProperties];

  if (progressIndicatorProperties)
  {
    v32 = 0;
    v31 = 0u;
    v30 = 0u;
    if ([progressIndicatorProperties style] == 2)
    {
      v5 = 22;
    }

    else
    {
      v5 = 14;
    }

    v29[0] = v5;
    v27 = 0.0;
    v28 = 0.0;
    v26 = 1.0;
    display = [(BKDisplayRenderOverlay *)self display];
    uniqueId = [display uniqueId];
    sub_100007090(uniqueId, &v28, &v27, &v26, 0, 0);

    v8 = v28 / v26;
    v9 = v27 / v26;
    [progressIndicatorProperties position];
    v11 = v10;
    v13 = v12;
    if (BSFloatEqualToFloat())
    {
      v14 = -1;
    }

    else
    {
      v14 = fmin(fmax(fmin(fmax(v11 / v8, 0.0), 1.0) * 4294967300.0, 0.0), 4294967300.0);
    }

    v29[1] = v14;
    if (BSFloatEqualToFloat())
    {
      v16 = -1;
    }

    else
    {
      v16 = fmin(fmax(fmin(fmax(v13 / v9, 0.0), 1.0) * 4294967300.0, 0.0), 4294967300.0);
    }

    LODWORD(v30) = v16;
    v17 = sub_100052810();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      style = [progressIndicatorProperties style];
      *buf = 67109632;
      v34 = style;
      v35 = 1024;
      v36 = v14;
      v37 = 1024;
      v38 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Setting progress indicator (style = %d) for overlay at position (%u, %u).", buf, 0x14u);
    }

    v18 = sysctlbyname("kern.progressoptions", 0, 0, v29, 0x2CuLL);
    v15 = v18 >= 0;
    v19 = sub_100052810();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v18 < 0)
    {
      if (v20)
      {
        *buf = 67109120;
        v34 = v18;
        v21 = "Unable to apply kernel progress indicator - error %d.";
        v22 = v19;
        v23 = 8;
        goto LABEL_21;
      }
    }

    else if (v20)
    {
      *buf = 0;
      v21 = "Successfully applied kernel progress indicator.";
      v22 = v19;
      v23 = 2;
LABEL_21:
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v21, buf, v23);
    }

    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = BKDisplayRenderOverlayPinkForTesting;
  v4 = [(BKDisplayRenderOverlay *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  context = self->_context;
  if (context)
  {
    v6 = [NSString stringWithFormat:@"%x (%u)", [(CAContext *)context contextId], [(CAContext *)self->_context contextId]];
    v7 = [v4 appendObject:v6 withName:@"contextID"];
  }

  return v4;
}

- (void)_dismissWithAnimationSettings:(id)settings
{
  [(CAContext *)self->_context setLayer:0];
  [(CAContext *)self->_context invalidate];
  context = self->_context;
  self->_context = 0;

  layer = self->_layer;
  self->_layer = 0;
}

- (BOOL)_presentWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_context)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"BKDisplayRenderOverlayPinkForTesting.m" lineNumber:57 description:@"Already have a _context"];
  }

  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:kCFBooleanTrue forKey:kCAContextDisplayable];
  [v6 setObject:kCFBooleanTrue forKey:kCAContextSecure];
  v30 = 1.0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100002FE0;
  v31[3] = &unk_1000FA7F8;
  v31[4] = 0;
  v31[5] = 0;
  v31[6] = &v30;
  memset(&v31[7], 0, 24);
  sub_100002E40(v31);
  v7 = [CAContext remoteContextWithOptions:v6];
  context = self->_context;
  self->_context = v7;

  v9 = self->_context;
  if (!v9)
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"BKDisplayRenderOverlayPinkForTesting.m" lineNumber:67 description:@"Couldn't create remote context"];

    v9 = self->_context;
  }

  [(BKDisplayRenderOverlay *)self level];
  [(CAContext *)v9 setLevel:?];
  v10 = +[CALayer layer];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v12 = DeviceRGB;
    v13 = CGColorCreate(DeviceRGB, dbl_100124EB0);
    if (v13)
    {
      v14 = v13;
      [(CALayer *)v10 setBackgroundColor:v13];
      CFRelease(v14);
    }

    CFRelease(v12);
  }

  descriptor = [(BKDisplayRenderOverlay *)self descriptor];
  display = [descriptor display];
  [display bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(CALayer *)v10 setBounds:v18, v20, v22, v24];
  [(CALayer *)v10 setContentsScale:v30];
  [(CALayer *)v10 setHidden:0];
  [(CALayer *)v10 setPosition:v22 * 0.5, v24 * 0.5];
  layer = self->_layer;
  self->_layer = v10;
  v26 = v10;

  [(CAContext *)self->_context setLayer:self->_layer];
  return 1;
}

- (void)dealloc
{
  [(CAContext *)self->_context invalidate];
  v3.receiver = self;
  v3.super_class = BKDisplayRenderOverlayPinkForTesting;
  [(BKDisplayRenderOverlay *)&v3 dealloc];
}

- (BKDisplayRenderOverlayPinkForTesting)initWithOverlayDescriptor:(id)descriptor level:(float)level
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlayPinkForTesting;
  v4 = [(BKDisplayRenderOverlay *)&v7 initWithOverlayDescriptor:descriptor level:?];
  v5 = v4;
  if (v4)
  {
    [(BKDisplayRenderOverlay *)v4 _setType:4];
  }

  return v5;
}

+ (void)doItHide
{
  if (qword_100126028)
  {
    [qword_100126028 dismissWithAnimationSettings:0];
    v2 = qword_100126028;
    qword_100126028 = 0;
  }
}

+ (void)doItShow
{
  +[BKDisplayRenderOverlayPinkForTesting doItHide];
  v2 = [BKSDisplayRenderOverlayDescriptor alloc];
  v3 = +[CADisplay mainDisplay];
  v8 = [v2 initWithName:@"Testing" display:v3];

  v4 = [BKDisplayRenderOverlayPinkForTesting alloc];
  LODWORD(v5) = 1161527296;
  v6 = [(BKDisplayRenderOverlayPinkForTesting *)v4 initWithOverlayDescriptor:v8 level:v5];
  v7 = qword_100126028;
  qword_100126028 = v6;

  [qword_100126028 presentWithAnimationSettings:0];
}

+ (void)doItShowKernel
{
  +[BKDisplayRenderOverlayPinkForTesting doItHide];
  v2 = [BKSDisplayRenderOverlayDescriptor alloc];
  v3 = +[CADisplay mainDisplay];
  v9 = [v2 initWithName:@"Testing" display:v3];

  v4 = [BKSDisplayProgressIndicatorProperties progressIndicatorWithStyle:2 position:100.0, 175.0];
  [v9 setProgressIndicatorProperties:v4];
  v5 = [BKDisplayRenderOverlayPinkForTesting alloc];
  LODWORD(v6) = 1176255488;
  v7 = [(BKDisplayRenderOverlayPinkForTesting *)v5 initWithOverlayDescriptor:v9 level:v6];
  v8 = qword_100126028;
  qword_100126028 = v7;

  [qword_100126028 presentWithAnimationSettings:0];
}

+ (id)overlayWithLevel:(float)level display:(id)display
{
  displayCopy = display;
  v6 = [BKSDisplayRenderOverlayDescriptor alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithName:v8 display:displayCopy];

  [v9 setLockBacklight:0];
  v10 = [BKDisplayRenderOverlayPinkForTesting alloc];
  *&v11 = level;
  v12 = [(BKDisplayRenderOverlayPinkForTesting *)v10 initWithOverlayDescriptor:v9 level:v11];

  return v12;
}

@end