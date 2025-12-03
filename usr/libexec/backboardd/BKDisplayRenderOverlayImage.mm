@interface BKDisplayRenderOverlayImage
- (BKDisplayRenderOverlayImage)initWithOverlayDescriptor:(id)descriptor level:(float)level;
- (BOOL)_applyProgressIndicatorPropertiesToKernelIfNecessary;
- (BOOL)_presentWithAnimationSettings:(id)settings;
- (BOOL)disablesDisplayUpdates;
- (id)_animationForKeyPath:(id)path withSettings:(id)settings;
- (id)_initWithPersistenceData:(id)data;
- (id)_persistenceData;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_cleanup;
- (void)_dismissWithAnimationSettings:(id)settings;
- (void)_freeze;
- (void)dealloc;
@end

@implementation BKDisplayRenderOverlayImage

- (BOOL)_applyProgressIndicatorPropertiesToKernelIfNecessary
{
  descriptor = [(BKDisplayRenderOverlay *)self descriptor];
  progressIndicatorProperties = [descriptor progressIndicatorProperties];

  if (progressIndicatorProperties)
  {
    v29 = 0;
    v28 = 0u;
    v27 = 0u;
    if ([progressIndicatorProperties style] == 2)
    {
      v5 = 22;
    }

    else
    {
      v5 = 14;
    }

    v26[0] = v5;
    v24 = 0.0;
    v25 = 0.0;
    v23 = 1.0;
    display = [(BKDisplayRenderOverlay *)self display];
    uniqueId = [display uniqueId];
    sub_100007090(uniqueId, &v25, &v24, &v23, 0, 0);

    v8 = v25 / v23;
    v9 = v24 / v23;
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

    v26[1] = v14;
    if (BSFloatEqualToFloat())
    {
      v16 = -1;
    }

    else
    {
      v16 = fmin(fmax(fmin(fmax(v13 / v9, 0.0), 1.0) * 4294967300.0, 0.0), 4294967300.0);
    }

    LODWORD(v27) = v16;
    v17 = sub_100052810();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      style = [progressIndicatorProperties style];
      *buf = 67109632;
      v31 = style;
      v32 = 1024;
      v33 = v14;
      v34 = 1024;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Setting progress indicator (style = %d) for overlay at position (%u, %u).", buf, 0x14u);
    }

    v19 = sysctlbyname("kern.progressoptions", 0, 0, v26, 0x2CuLL);
    v15 = v19 >= 0;
    v20 = sub_100052810();
    v21 = v20;
    if (v19 < 0)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v31 = v19;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unable to apply kernel progress indicator - error %d.", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully applied kernel progress indicator.", buf, 2u);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_animationForKeyPath:(id)path withSettings:(id)settings
{
  settingsCopy = settings;
  pathCopy = path;
  isSpringAnimation = [settingsCopy isSpringAnimation];
  v8 = CASpringAnimation_ptr;
  if (!isSpringAnimation)
  {
    v8 = CABasicAnimation_ptr;
  }

  v9 = *v8;
  v10 = [objc_opt_class() animationWithKeyPath:pathCopy];

  [settingsCopy applyToCAAnimation:v10];

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = BKDisplayRenderOverlayImage;
  v4 = [(BKDisplayRenderOverlay *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  context = self->_context;
  if (context)
  {
    v6 = [NSString stringWithFormat:@"%x (%u)", [(CAContext *)context contextId], [(CAContext *)self->_context contextId]];
    v7 = [v4 appendObject:v6 withName:@"contextID"];
  }

  return v4;
}

- (void)_cleanup
{
  +[CATransaction begin];
  layer = [(CAContext *)self->_context layer];
  [layer removeAllAnimations];

  [(CAContext *)self->_context setLayer:0];
  [(CAContext *)self->_context invalidate];
  context = self->_context;
  self->_context = 0;

  +[CATransaction commit];
}

- (id)_persistenceData
{
  v5.receiver = self;
  v5.super_class = BKDisplayRenderOverlayImage;
  _persistenceData = [(BKDisplayRenderOverlay *)&v5 _persistenceData];
  [_persistenceData setImage:self->_imageRef];
  [_persistenceData setFrozen:self->_frozen];

  return _persistenceData;
}

- (void)_dismissWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v10 = settingsCopy;
  if (settingsCopy)
  {
    v5 = [(BKDisplayRenderOverlayImage *)self _animationForKeyPath:@"opacity" withSettings:settingsCopy];
    [v5 setFromValue:&off_100107C10];
    [v5 setToValue:&off_100107C00];
    [v5 setDelegate:self];
    layer = [(CAContext *)self->_context layer];
    [layer setOpacity:0.0];

    layer2 = [(CAContext *)self->_context layer];
    [layer2 addAnimation:v5 forKey:@"opacity"];
  }

  else
  {
    [(BKDisplayRenderOverlayImage *)self _cleanup];
  }

  imageRef = self->_imageRef;
  if (imageRef)
  {
    CGImageRelease(imageRef);
    self->_imageRef = 0;
  }

  _persistenceCoordinator = [(BKDisplayRenderOverlay *)self _persistenceCoordinator];
  [_persistenceCoordinator destroyOverlay:self];
}

- (void)_freeze
{
  if (!self->_frozen)
  {
    self->_frozen = 1;
    _persistenceCoordinator = [(BKDisplayRenderOverlay *)self _persistenceCoordinator];
    [_persistenceCoordinator saveOverlay:self];

    [(BKDisplayRenderOverlayImage *)self _applyProgressIndicatorPropertiesToKernelIfNecessary];
  }
}

- (BOOL)_presentWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_context)
  {
    v55 = [NSString stringWithFormat:@"Already have a context"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v56 = NSStringFromSelector(a2);
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      LODWORD(v77.a) = 138544642;
      *(&v77.a + 4) = v56;
      WORD2(v77.b) = 2114;
      *(&v77.b + 6) = v58;
      HIWORD(v77.c) = 2048;
      *&v77.d = self;
      LOWORD(v77.tx) = 2114;
      *(&v77.tx + 2) = @"BKDisplayRenderOverlayImage.m";
      WORD1(v77.ty) = 1024;
      HIDWORD(v77.ty) = 78;
      v78 = 2114;
      v79 = v55;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v77, 0x3Au);
    }

    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10002A800);
  }

  v6 = settingsCopy;
  v70 = 0.0;
  v71 = 0.0;
  v69 = 0x3FF0000000000000;
  v68 = 0;
  descriptor = [(BKDisplayRenderOverlay *)self descriptor];
  displayUUID = [descriptor displayUUID];

  sub_100007090(displayUUID, &v71, &v70, &v69, &v68, 0);
  descriptor2 = [(BKDisplayRenderOverlay *)self descriptor];
  display = [descriptor2 display];

  if (!display)
  {
    v12 = BKLogDisplay();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v77.a) = 138543362;
      *(&v77.a + 4) = displayUUID;
      v52 = "[BKDisplayRenderOverlay] No CADisplay found for UUID: %{public}@";
      v53 = v12;
      v54 = 12;
      goto LABEL_34;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  if (!self->_imageRef)
  {
    v66 = displayUUID;
    v67 = v6;
    v27 = display;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      classForCoder = [v27 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v60 = NSStringFromClass(classForCoder);
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v60, v62];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v64 = [NSString stringWithUTF8String:"CGImageRef BKDisplayCaptureImage(CADisplay *__strong)"];
        LODWORD(v77.a) = 138544130;
        *(&v77.a + 4) = v64;
        WORD2(v77.b) = 2114;
        *(&v77.b + 6) = @"BKDisplay.m";
        HIWORD(v77.c) = 1024;
        LODWORD(v77.d) = 889;
        WORD2(v77.d) = 2114;
        *(&v77.d + 6) = v63;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v77, 0x26u);
      }

      [v63 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10002A91CLL);
    }

    +[CATransaction flush];
    +[CATransaction synchronize];
    v76 = 0.0;
    sx = 1.0;
    v75 = 0.0;
    v73 = 0;
    uniqueId = [v27 uniqueId];
    sub_100007090(uniqueId, &v76, &v75, &sx, &v73, 0);

    v65 = v27;
    [v27 name];
    memset(&v77, 0, sizeof(v77));
    CGAffineTransformMakeScale(&v77, sx, sx);
    BSDegreesToRadians();
    v72 = v77;
    CGAffineTransformRotate(&v80, &v72, v29);
    v77 = v80;
    v81.size.width = v76 / sx;
    v81.size.height = v75 / sx;
    v81.origin.x = 0.0;
    v81.origin.y = 0.0;
    v82 = CGRectApplyAffineTransform(v81, &v80);
    height = v82.size.height;
    width = v82.size.width;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v33 = [NSNumber numberWithUnsignedLong:width];
    v34 = [NSNumber numberWithUnsignedLong:height];
    v35 = [NSNumber numberWithUnsignedLong:AlignedBytesPerRow];
    height = [NSNumber numberWithUnsignedLong:AlignedBytesPerRow * height];
    v37 = [NSDictionary dictionaryWithObjectsAndKeys:v33, kIOSurfaceWidth, v34, kIOSurfaceHeight, v35, kIOSurfaceBytesPerRow, height, kIOSurfaceAllocSize, &off_1001078F8, kIOSurfaceBytesPerElement, &off_100107910, kIOSurfacePixelFormat, 0];

    v38 = IOSurfaceCreate(v37);
    if (v38)
    {
      v39 = v38;
      IOSurfaceLock(v38, 0, 0);
      CARenderServerRenderDisplay();
      IOSurfaceUnlock(v39, 0, 0);
      IOSurfaceLock(v39, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v39);
      BytesPerRow = IOSurfaceGetBytesPerRow(v39);
      v42 = IOSurfaceGetWidth(v39);
      v43 = IOSurfaceGetHeight(v39);
      AllocSize = IOSurfaceGetAllocSize(v39);
      v45 = CGDataProviderCreateWithData(v39, BaseAddress, AllocSize, sub_10002971C);
      CFRetain(v39);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v47 = CGImageCreate(v42, v43, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, 0x2006u, v45, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v45);
      CGColorSpaceRelease(DeviceRGB);
      if (v47)
      {
        CFRelease(v39);

        self->_imageRef = v47;
        displayUUID = v66;
        v6 = v67;
        goto LABEL_4;
      }

      v50 = BKLogCommon();
      v49 = v27;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v80.a) = 136315138;
        *(&v80.a + 4) = "BKDisplayCaptureImage";
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s Unable to create CGImageRef from IOSurface!", &v80, 0xCu);
      }

      CFRelease(v39);
      displayUUID = v66;
      v6 = v67;
    }

    else
    {
      v48 = BKLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v80.a) = 136315394;
        *(&v80.a + 4) = "BKDisplayCaptureImage";
        WORD2(v80.b) = 2114;
        *(&v80.b + 6) = v37;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s Unable to create IOSurface with properties: %{public}@", &v80, 0x16u);
      }

      displayUUID = v66;
      v6 = v67;
      v49 = v65;
    }

    self->_imageRef = 0;
    v51 = BKLogDisplay();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v77.a) = 138543362;
      *(&v77.a + 4) = v49;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "[BKDisplayRenderOverlay] Unable to capture display image for display! %{public}@", &v77, 0xCu);
    }

    if (self->_imageRef)
    {
      goto LABEL_4;
    }

    v12 = sub_100052810();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v77.a) = 0;
      v52 = "No image";
      v53 = v12;
      v54 = 2;
LABEL_34:
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v52, &v77, v54);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_4:
  +[CATransaction activate];
  v11 = +[CALayer layer];
  v12 = v11;
  v13 = v68 & 0xFD;
  if (v13 == 1)
  {
    v14 = v70;
  }

  else
  {
    v14 = v71;
  }

  if (v13 == 1)
  {
    v15 = v71;
  }

  else
  {
    v15 = v70;
  }

  [v11 setFrame:0.0, 0.0, v14, v15];
  [v12 setContents:self->_imageRef];
  name = [(BKDisplayRenderOverlay *)self name];
  v17 = [NSString stringWithFormat:@"BKDisplayRenderOverlayImage:%@", name];
  [v12 setName:v17];

  [v12 setHidden:0];
  v18 = +[BSColor blackColor];
  -[NSObject setBackgroundColor:](v12, "setBackgroundColor:", [v18 CGColor]);

  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:kCFBooleanTrue forKey:kCAContextDisableGroupOpacity];
  [v19 setObject:kCFBooleanTrue forKey:kCAContextIgnoresHitTest];
  [v19 setObject:kCFBooleanTrue forKey:kCAContextDisplayable];
  [v19 setObject:kCFBooleanTrue forKey:kCAContextSecure];
  name2 = [display name];
  if (name2)
  {
    [v19 setObject:name2 forKey:kCAContextDisplayName];
  }

  v21 = [CAContext remoteContextWithOptions:v19];
  context = self->_context;
  self->_context = v21;

  v23 = self->_context;
  [(BKDisplayRenderOverlay *)self level];
  [(CAContext *)v23 setLevel:?];
  [(CAContext *)self->_context setLayer:v12];
  if (v6)
  {
    v24 = [(BKDisplayRenderOverlayImage *)self _animationForKeyPath:@"opacity" withSettings:v6];
    [v24 setFromValue:&off_100107C00];
    [v24 setToValue:&off_100107C10];
    [v12 addAnimation:v24 forKey:@"opacity"];
  }

  v25 = 1;
LABEL_17:

  return v25;
}

- (BOOL)disablesDisplayUpdates
{
  if (self->_frozen)
  {
    return 1;
  }

  progressIndicatorProperties = [(BKDisplayRenderOverlay *)self progressIndicatorProperties];
  v2 = progressIndicatorProperties != 0;

  return v2;
}

- (void)dealloc
{
  if (self->_context)
  {
    v4 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_context == nil"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKDisplayRenderOverlayImage.m";
      v17 = 1024;
      v18 = 59;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10002AB0CLL);
  }

  CGImageRelease(self->_imageRef);
  v8.receiver = self;
  v8.super_class = BKDisplayRenderOverlayImage;
  [(BKDisplayRenderOverlay *)&v8 dealloc];
}

- (id)_initWithPersistenceData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v9.receiver = self;
    v9.super_class = BKDisplayRenderOverlayImage;
    v5 = [(BKDisplayRenderOverlay *)&v9 _initWithPersistenceData:dataCopy];
    if (v5)
    {
      image = [dataCopy image];
      if (image)
      {
        v5[7] = CGImageRetain(image);
        *(v5 + 64) = [dataCopy isFrozen];
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BKDisplayRenderOverlayImage)initWithOverlayDescriptor:(id)descriptor level:(float)level
{
  v7.receiver = self;
  v7.super_class = BKDisplayRenderOverlayImage;
  v4 = [(BKDisplayRenderOverlay *)&v7 initWithOverlayDescriptor:descriptor level:?];
  v5 = v4;
  if (v4)
  {
    [(BKDisplayRenderOverlay *)v4 _setType:1];
  }

  return v5;
}

@end