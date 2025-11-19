@interface VFXView
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)deviceForOptions:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)_canJitter;
- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded;
- (BOOL)framebufferOnly;
- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4;
- (CGColorSpace)colorSpace;
- (CGRect)currentViewport;
- (CGSize)_updateBackingSize;
- (CGSize)backingSizeForBoundSize:(CGSize)a3;
- (MTLCommandQueue)commandQueue;
- (NSString)description;
- (VFXCameraController)defaultCameraController;
- (VFXView)initWithCoder:(id)a3;
- (VFXView)initWithFrame:(CGRect)a3 options:(id)a4;
- (double)contentScaleFactor;
- (double)projectPoint:(uint64_t)a3;
- (double)scaleFactor;
- (id)_rendererForPrepare;
- (id)effect;
- (id)hitTest:(CGPoint)a3 options:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)legacyView;
- (id)nodesInsideFrustumWithPointOfView:(id)a3;
- (id)postRenderCallback;
- (id)scene;
- (id)setupLegacyView;
- (id)snapshot;
- (id)statistics;
- (int64_t)preferredFramesPerSecond;
- (uint64_t)unprojectPoint:(uint64_t)a3;
- (unint64_t)pixelFormat;
- (unsigned)resizingMode;
- (void)_adjustBackingLayerPixelFormat;
- (void)_backgroundDidChange;
- (void)_commonInit:(id)a3;
- (void)_createDisplayLinkIfNeeded;
- (void)_drawWithUpdate:(id)a3;
- (void)_enterBackground:(id)a3;
- (void)_enterForeground:(id)a3;
- (void)_initializeDisplayLinkWithCompletionHandler:(id)a3;
- (void)_resizeIfNeeded;
- (void)_setNeedsDisplay;
- (void)_systemTimeAnimationStarted:(id)a3;
- (void)_updateContentsScaleFactor;
- (void)_updateOpacity;
- (void)_worldDidUpdateEnabledTriggers:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLink:(id)a3 didUpdate:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)eventHandlerWantsRedraw;
- (void)invalidateDisplayLink;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseDisplayLink;
- (void)renderWithCompletion:(id)a3;
- (void)renderWithPresentWithTransaction:(BOOL)a3 completion:(id)a4;
- (void)resumeDisplayLink;
- (void)safeAreaInsetsDidChange;
- (void)setAllowsCameraControl:(BOOL)a3;
- (void)setAntialiasingMode:(unint64_t)a3;
- (void)setAutoenablesDefaultLighting:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColorSpace:(CGColorSpace *)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setDebugOptions:(unint64_t)a3;
- (void)setDisplayLink:(id)a3;
- (void)setEffect:(id)a3;
- (void)setEventHandler:(id)a3;
- (void)setFramebufferOnly:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setJitteringEnabled:(BOOL)a3;
- (void)setLowLatency:(BOOL)a3;
- (void)setNavigationCameraController:(id)a3;
- (void)setNeedsDisplay;
- (void)setPixelFormat:(unint64_t)a3;
- (void)setPointOfCulling:(id)a3;
- (void)setPointOfView:(id)a3;
- (void)setPointOfView:(id)a3 animate:(BOOL)a4;
- (void)setPostRenderCallback:(id)a3;
- (void)setPreferredFramesPerSecond:(int64_t)a3;
- (void)setRenderMode:(unint64_t)a3;
- (void)setRendererKind:(unint64_t)a3;
- (void)setRendersContinuously:(BOOL)a3;
- (void)setResizingMode:(unsigned __int8)a3;
- (void)setScaleFactor:(double)a3;
- (void)setScene:(id)a3;
- (void)setShowsStatistics:(BOOL)a3;
- (void)setWantsExtendedDynamicRange:(BOOL)a3;
- (void)setWorld:(id)a3;
- (void)set_legacyView:(id)a3;
- (void)switchToCameraNamed:(id)a3;
- (void)switchToNextCamera;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayerLatency;
- (void)vfx_setBackingLayer:(id)a3;
- (void)vfx_setGestureRecognizers:(id)a3;
- (void)vfx_updateGestureRecognizers;
- (void)willMoveToWindow:(id)a3;
@end

@implementation VFXView

- (void)_initializeDisplayLinkWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1AF3B5310;
  aBlock[3] = &unk_1E7A7FD10;
  objc_copyWeak(&v18, &location);
  v5 = v4;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  objc_msgSend__renderThreadPriority(self, v7, v8, v9);
  v11 = v10;
  memset(&v20, 0, sizeof(v20));
  pthread_attr_init(&v20);
  pthread_attr_setschedpolicy(&v20, 2);
  v12 = v11;
  if (v11 == 0.0)
  {
    v12 = 45;
  }

  v15.sched_priority = v12;
  *v15.__opaque = 0;
  pthread_attr_setschedparam(&v20, &v15);
  v13 = _Block_copy(v6);
  v14 = 0;
  pthread_create(&v14, &v20, sub_1AF3B5570, v13);
  pthread_attr_destroy(&v20);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

+ (id)deviceForOptions:(id)a3
{
  v3 = CFXMTLCreateSystemDefaultDevice();
  if (!v3 && (byte_1EB658E89 & 1) == 0)
  {
    byte_1EB658E89 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFBA8C(v4);
    }
  }

  return v3;
}

- (void)_adjustBackingLayerPixelFormat
{
  if (self->_legacyView || !self->_renderer)
  {
    return;
  }

  objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(self->_renderer, v5, v6, v7);
  isOpaque = objc_msgSend_isOpaque(self, v8, v9, v10);
  v15 = objc_msgSend__renderContextMetal(self->_renderer, v12, v13, v14);
  objc_msgSend_setIsOpaque_(v15, v16, isOpaque, v17);
  if (sub_1AF28A130())
  {
    v21 = objc_msgSend_window(self, v18, v19, v20);
    v25 = objc_msgSend_screen(v21, v22, v23, v24);
    if (objc_msgSend_gamut(v25, v26, v27, v28) == 1)
    {
      v29 = 1;
LABEL_8:
      v32 = 1;
      v31 = v29;
      goto LABEL_9;
    }
  }

  v30 = objc_msgSend_wantsExtendedDynamicRange(self, v18, v19, v20);
  v29 = 0;
  v31 = 0;
  v32 = 0;
  if (v30)
  {
    goto LABEL_8;
  }

LABEL_9:
  v33 = objc_msgSend_antialiasingMode(self->_renderer, v18, v19, v20);
  v37 = objc_msgSend__renderContextMetal(self->_renderer, v34, v35, v36);
  objc_msgSend_setWantsWideGamut_(v37, v38, v31, v39);
  objc_msgSend_colorSpace(self, v40, v41, v42);
  backingLayer = self->_backingLayer;
  if ((*(self + 425) & 0x10) == 0)
  {
    v46 = v32 | 8;
    if (!v33)
    {
      v46 = v32;
    }

    if (isOpaque)
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 | 0x10;
    }

    v48 = sub_1AF1F2C50(v47);
    objc_msgSend_setPixelFormat_(backingLayer, v49, v48, v50);
  }

  objc_msgSend_setWantsExtendedDynamicRangeContent_(backingLayer, v43, (*(self + 424) >> 2) & 1, v44);
  objc_msgSend_unlock(self->_renderer, v51, v52, v53);

  objc_msgSend_unlock(self, v54, v55, v56);
}

- (unint64_t)pixelFormat
{
  if (self->_legacyView)
  {
    legacyView = self->_legacyView;
  }

  else
  {
    legacyView = objc_msgSend_layer(self, a2, v2, v3);
  }

  return objc_msgSend_pixelFormat(legacyView, a2, v2, v3);
}

- (void)setPixelFormat:(unint64_t)a3
{
  legacyView = self->_legacyView;
  if (legacyView)
  {

    objc_msgSend_setPixelFormat_(legacyView, a2, a3, v3);
  }

  else if (self->_renderer)
  {
    objc_msgSend_lock(self, a2, a3, v3);
    v10 = objc_msgSend_colorSpace(self, v7, v8, v9);
    *(self + 425) |= 0x10u;
    v14 = objc_msgSend_layer(self, v11, v12, v13);
    objc_msgSend_setPixelFormat_(v14, v15, a3, v16);
    if ((*(self + 425) & 0x20) != 0)
    {
      objc_msgSend_setColorSpace_(self, v17, v10, v19);
    }

    objc_msgSend_unlock(self, v17, v18, v19);

    objc_msgSend__setNeedsDisplay(self, v20, v21, v22);
  }
}

- (CGColorSpace)colorSpace
{
  v4 = objc_msgSend_layer(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_colorspace, v5, v6);
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  objc_msgSend_lock(self, a2, a3, v3);
  *(self + 425) |= 0x20u;
  v9 = objc_msgSend_layer(self, v6, v7, v8);
  objc_msgSend_setColorspace_(v9, v10, a3, v11);
  objc_msgSend_unlock(self, v12, v13, v14);

  objc_msgSend__setNeedsDisplay(self, v15, v16, v17);
}

- (void)_commonInit:(id)a3
{
  sub_1AF332204();
  *(self + 424) |= 1u;
  *(self + 424) |= 0x20u;
  self->_currentSystemTime = CACurrentMediaTime();
  self->_lock = objc_alloc_init(VFXRecursiveLock);
  v8 = objc_msgSend_layer(self, v5, v6, v7);
  sub_1AF3B64F4(v8);
  objc_msgSend_vfx_setBackingLayer_(self, v9, v8, v10);
  self->_device = objc_msgSend_device(v8, v11, v12, v13);
  v14 = objc_opt_class();
  if (objc_msgSend_shouldObserveApplicationStateToPreventBackgroundGPUAccess(v14, v15, v16, v17))
  {
    if (_UIApplicationIsExtension())
    {
      v24 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22, v23);
      objc_msgSend_addObserver_selector_name_object_(v24, v25, self, sel__enterForeground_, *MEMORY[0x1E696A2C0], 0);
      v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v26, v27, v28);
      v31 = MEMORY[0x1E696A2D8];
    }

    else
    {
      v32 = objc_msgSend__applicationKeyWindow(MEMORY[0x1E69DD2E8], v21, v22, v23);
      isHostedInAnotherProcess = objc_msgSend__isHostedInAnotherProcess(v32, v33, v34, v35);
      v40 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v37, v38, v39);
      if (isHostedInAnotherProcess)
      {
        objc_msgSend_addObserver_selector_name_object_(v40, v41, self, sel__enterForeground_, @"_UIViewServiceHostDidBecomeActiveNotification", 0);
        v45 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v42, v43, v44);
        objc_msgSend_addObserver_selector_name_object_(v45, v46, self, sel__enterBackground_, @"_UIViewServiceHostWillResignActiveNotification", 0);
        goto LABEL_8;
      }

      objc_msgSend_addObserver_selector_name_object_(v40, v41, self, sel__enterForeground_, *MEMORY[0x1E69DDAB0], 0);
      v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v47, v48, v49);
      v31 = MEMORY[0x1E69DDBC8];
    }

    objc_msgSend_addObserver_selector_name_object_(v29, v30, self, sel__enterBackground_, *v31, 0);
  }

LABEL_8:
  v50 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], v18, v19, v20);
  objc_msgSend_nativeScale(v50, v51, v52, v53);
  objc_msgSend_setContentScaleFactor_(self, v54, v55, v56);
  objc_msgSend_setContentMode_(self, v57, 4, v58);
  objc_msgSend_setMultipleTouchEnabled_(self, v59, 1, v60);
  if (self->_device)
  {
    v61 = [VFXRenderer alloc];
    self->_renderer = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v61, v62, self->_device, a3, 1, self, 1);
  }

  v63 = [VFXJitterer alloc];
  self->_jitterer = objc_msgSend_initWithDelegate_(v63, v64, self, v65);
  v69 = objc_msgSend__defaultBackgroundColor(self, v66, v67, v68);
  objc_msgSend_setBackgroundColor_(self, v70, v69, v71);
  if (sub_1AF0D5C40(1))
  {
    objc_msgSend_setAllowsCameraControl_(self, v72, 1, v73);
  }

  if (sub_1AF0D5C40(0))
  {
    objc_msgSend_setShowsStatistics_(self, v74, 1, v75);
  }

  v76 = [VFXCameraNavigationController alloc];
  v80 = objc_msgSend_initWithView_(v76, v77, self, v78);

  objc_msgSend_setNavigationCameraController_(self, v79, v80, v81);
}

- (VFXView)initWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v12.receiver = self;
  v12.super_class = VFXView;
  v7 = [(VFXView *)&v12 initWithFrame:a3.origin.x, a3.origin.y];
  v10 = v7;
  if (v7)
  {
    v7->_boundsSize.width = width;
    v7->_boundsSize.height = height;
    objc_msgSend__commonInit_(v7, v8, a4, v9);
  }

  return v10;
}

- (VFXView)initWithCoder:(id)a3
{
  v42.receiver = self;
  v42.super_class = VFXView;
  v4 = [(VFXView *)&v42 initWithCoder:?];
  v8 = v4;
  if (v4)
  {
    p_boundsSize = &v4->_boundsSize;
    objc_msgSend_bounds(v4, v5, v6, v7);
    *&p_boundsSize->width = v10;
    v8->_boundsSize.height = v11;
    objc_msgSend__commonInit_(v8, v12, 0, v13);
    if (objc_msgSend_containsValueForKey_(a3, v14, @"autoenablesDefaultLighting", v15))
    {
      v18 = objc_msgSend_decodeBoolForKey_(a3, v16, @"autoenablesDefaultLighting", v17);
      objc_msgSend_setAutoenablesDefaultLighting_(v8, v19, v18, v20);
    }

    if (objc_msgSend_containsValueForKey_(a3, v16, @"jitteringEnabled", v17))
    {
      v23 = objc_msgSend_decodeBoolForKey_(a3, v21, @"jitteringEnabled", v22);
      objc_msgSend_setJitteringEnabled_(v8, v24, v23, v25);
    }

    if (objc_msgSend_containsValueForKey_(a3, v21, @"temporalAntialiasingEnabled", v22))
    {
      v28 = objc_msgSend_decodeBoolForKey_(a3, v26, @"temporalAntialiasingEnabled", v27);
      objc_msgSend_setTemporalAntialiasingEnabled_(v8, v29, v28, v30);
    }

    if (objc_msgSend_containsValueForKey_(a3, v26, @"allowsCameraControl", v27))
    {
      v33 = objc_msgSend_decodeBoolForKey_(a3, v31, @"allowsCameraControl", v32);
      objc_msgSend_setAllowsCameraControl_(v8, v34, v33, v35);
    }

    if (objc_msgSend_containsValueForKey_(a3, v31, @"backgroundColor", v32))
    {
      v36 = objc_opt_class();
      v38 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v37, v36, @"backgroundColor");
      objc_msgSend_setBackgroundColor_(v8, v39, v38, v40);
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v30.receiver = self;
  v30.super_class = VFXView;
  [(VFXView *)&v30 encodeWithCoder:?];
  v8 = objc_msgSend_autoenablesDefaultLighting(self, v5, v6, v7);
  objc_msgSend_encodeBool_forKey_(a3, v9, v8, @"autoenablesDefaultLighting");
  isJitteringEnabled = objc_msgSend_isJitteringEnabled(self, v10, v11, v12);
  objc_msgSend_encodeBool_forKey_(a3, v14, isJitteringEnabled, @"jitteringEnabled");
  isTemporalAntialiasingEnabled = objc_msgSend_isTemporalAntialiasingEnabled(self, v15, v16, v17);
  objc_msgSend_encodeBool_forKey_(a3, v19, isTemporalAntialiasingEnabled, @"temporalAntialiasingEnabled");
  v23 = objc_msgSend_allowsCameraControl(self, v20, v21, v22);
  objc_msgSend_encodeBool_forKey_(a3, v24, v23, @"allowsCameraControl");
  v28 = objc_msgSend_backgroundColor(self, v25, v26, v27);
  objc_msgSend_encodeObject_forKey_(a3, v29, v28, @"backgroundColor");
}

- (void)dealloc
{
  *(self + 424) |= 0x20u;
  *(self + 424) |= 0x80u;
  objc_msgSend_vfx_setGestureRecognizers_(self, a2, 0, v2);
  objc_msgSend_invalidateDisplayLink(self, v4, v5, v6);
  objc_msgSend_delegateWillDie(self->_jitterer, v7, v8, v9);

  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11, v12);
  objc_msgSend_removeObserver_(v13, v14, self, v15);

  objc_msgSend_viewWillDie(self->_renderer, v16, v17, v18);
  objc_msgSend_worldWillChange(self->_navigationCameraController, v19, v20, v21);
  objc_msgSend_setDelegate_(self->_navigationCameraController, v22, 0, v23);

  objc_msgSend_removeObserver_forKeyPath_(self->_world, v24, self, @"background.contents");
  v25.receiver = self;
  v25.super_class = VFXView;
  [(VFXView *)&v25 dealloc];
}

- (void)set_legacyView:(id)a3
{
  self->_legacyView = a3;
  objc_msgSend_delegateWillDie(self->_jitterer, v5, v6, v7);

  self->_jitterer = 0;
  v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9, v10);
  objc_msgSend_removeObserver_(v11, v12, self, v13);

  self->_backgroundColor = 0;
  self->_backingLayer = 0;

  self->_navigationCameraController = 0;
  self->_renderer = 0;

  objc_msgSend_invalidateDisplayLink(self, v14, v15, v16);
}

- (void)setHidden:(BOOL)a3
{
  v4 = a3;
  objc_msgSend_setHidden_(self->_legacyView, a2, a3, v3);
  v6.receiver = self;
  v6.super_class = VFXView;
  [(VFXView *)&v6 setHidden:v4];
  self->_isHidden = v4;
}

- (void)applyConfiguration:(id)a3
{
  v6 = objc_msgSend_wantsExtendedDynamicRange(a3, a2, a3, v3);
  objc_msgSend_setWantsExtendedDynamicRange_(self, v7, v6, v8);
  if (objc_msgSend_colorSpaceName(a3, v9, v10, v11))
  {
    v15 = objc_msgSend_colorSpaceName(a3, v12, v13, v14);
    v16 = CGColorSpaceCreateWithName(v15);
    if (v16)
    {
      v17 = v16;
      objc_msgSend_setColorSpace_(self, v12, v16, v14);
      CFRelease(v17);
    }
  }

  if (objc_msgSend_pixelFormat(a3, v12, v13, v14))
  {
    v21 = objc_msgSend_pixelFormat(a3, v18, v19, v20);
    objc_msgSend_setPixelFormat_(self, v22, v21, v23);
  }

  if (objc_msgSend_additiveWritesToAlpha(a3, v18, v19, v20))
  {

    objc_msgSend_setAdditiveWritesToAlpha_(self, v24, 1, v25);
  }
}

- (void)setWorld:(id)a3
{
  if (self->_world != a3)
  {
    objc_msgSend_lock(self, a2, a3, v3);
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7, v8);
    objc_msgSend_removeObserver_name_object_(v9, v10, self, @"kCFXWorldDidUpdateNotification", 0);
    objc_msgSend_removeObserver_forKeyPath_(self->_world, v11, self, @"background.contents");
    objc_msgSend_worldWillChange(self->_navigationCameraController, v12, v13, v14);

    v15 = a3;
    self->_world = v15;
    if (v15)
    {
      v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17, v18);
      v23 = objc_msgSend_worldRef(self->_world, v20, v21, v22);
      objc_msgSend_addObserver_selector_name_object_(v19, v24, self, sel__worldDidUpdate_, @"kCFXWorldDidUpdateNotification", v23);
      objc_msgSend_addObserver_forKeyPath_options_context_(self->_world, v25, self, @"background.contents", 0, @"kVFXViewObservingContext");
      v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v26, v27, v28);
      objc_msgSend_addObserver_selector_name_object_(v29, v30, self, sel__worldDidUpdateEnabledTriggers_, @"kCFXWorldDidUpdateEnabledTriggersNotification", self->_world);
      v34 = objc_msgSend_debugOptions(self, v31, v32, v33);
      objc_msgSend_setDebugOptions_(self, v35, v34, v36);
    }

    renderer = self->_renderer;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_1AF3B738C;
    v56[3] = &unk_1E7A7A770;
    v56[4] = self;
    objc_msgSend_setWorld_completionHandler_(renderer, v16, a3, v56);
    v41 = objc_msgSend_preferredConfiguration(a3, v38, v39, v40);
    objc_msgSend_applyConfiguration_(self, v42, v41, v43);
    objc_msgSend_worldDidChange(self->_navigationCameraController, v44, v45, v46);
    objc_msgSend_startRuntimeThread(self->_world, v47, v48, v49);
    objc_msgSend_unlock(self, v50, v51, v52);
    objc_msgSend__updateOpacity(self, v53, v54, v55);
  }
}

- (void)setRenderMode:(unint64_t)a3
{
  objc_msgSend_setRenderMode_(self->_renderer, a2, a3, v3);

  objc_msgSend__setNeedsDisplay(self, v5, v6, v7);
}

- (void)setRendererKind:(unint64_t)a3
{
  objc_msgSend_setRendererKind_(self->_renderer, a2, a3, v3);

  objc_msgSend__setNeedsDisplay(self, v5, v6, v7);
}

- (void)vfx_setBackingLayer:(id)a3
{
  backingLayer = self->_backingLayer;
  if (backingLayer != a3)
  {

    self->_backingLayer = a3;
  }
}

- (void)setJitteringEnabled:(BOOL)a3
{
  v4 = a3;
  objc_msgSend_setEnabled_(self->_jitterer, a2, a3, v3);
  objc_msgSend_setJitteringEnabled_(self->_renderer, v6, v4, v7);

  objc_msgSend__setNeedsDisplay(self, v8, v9, v10);
}

- (BOOL)_canJitter
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AF130548(v4);
    v6.n128_u64[0] = vmvn_s8(vclez_f32(*&vextq_s8(v6, v6, 8uLL)));
    if (v6.n128_u32[0] & v6.n128_u32[1])
    {
      sub_1AF12E2AC(v5);
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)updateLayerLatency
{
  v7 = objc_msgSend_lowLatency(self, a2, v2, v3);
  backingLayer = self->_backingLayer;
  if (v7)
  {
    objc_msgSend_setMaximumDrawableCount_(backingLayer, v5, 2, v6);
  }

  else
  {
    objc_msgSend_setMaximumDrawableCount_(backingLayer, v5, 3, v6);
  }

  objc_msgSend_setLowLatency_(backingLayer, v9, v7, v10);
}

- (void)setLowLatency:(BOOL)a3
{
  if (self->_legacyView)
  {
    self->_lowLatency = a3;
    objc_msgSend_setLowLatency_(self->_legacyView, a2, a3, v3);
  }

  else if (self->_lowLatency != a3)
  {
    self->_lowLatency = a3;
    (MEMORY[0x1EEE66B58])(self, sel_updateLayerLatency, a3);
  }
}

- (void)displayLink:(id)a3 didUpdate:(id)a4
{
  v6 = objc_msgSend_world(self, a2, a3, a4);
  v10 = objc_msgSend_worldRef(v6, v7, v8, v9);
  if (v10)
  {
    v14 = sub_1AF1CF878(v10);
    if (v14)
    {
      v18 = v14;
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * self) ^ ((0x9DDFEA08EB382D69 * self) >> 47));
      v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1AF3B7914;
      v39[3] = &unk_1E7A7FD48;
      objc_copyWeak(&v40, &location);
      v39[4] = a4;
      objc_msgSend_triggerRenderWithRendererIdentifier_with_(v18, v21, v20, v39);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      v37 = objc_msgSend__renderingQueue(self, v15, v16, v17);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3B7A10;
      block[3] = &unk_1E7A7E198;
      block[4] = self;
      block[5] = a4;
      dispatch_sync(v37, block);
    }
  }

  else
  {
    objc_msgSend__backingSize(self->_renderer, v11, v12, v13);
    v27 = v26;
    if (v26 >= 1.0 && v25 >= 1.0)
    {
      v29 = v25;
      objc_msgSend_drawableSize(self->_backingLayer, v22, v23, v24);
      if (v27 != v34 || v29 != v33)
      {
        objc_msgSend_setDrawableSize_(self->_backingLayer, v30, v31, v32, v27, v29);
      }

      renderer = self->_renderer;

      MEMORY[0x1EEE66B58](renderer, sel_clearBackBufferWithUpdate_, a4, v32);
    }
  }
}

- (void)_updateContentsScaleFactor
{
  objc_msgSend_contentScaleFactor(self, a2, v2, v3);
  *&v8 = v8;
  renderer = self->_renderer;

  objc_msgSend__setContentsScaleFactor_(renderer, v5, v6, v7, v8);
}

- (CGSize)backingSizeForBoundSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend__contentsScaleFactor(self->_renderer, a2, v3, v4);
  v8 = v7;
  v9 = width * v7;
  v10 = height * v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_updateBackingSize
{
  objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend__updateContentsScaleFactor(self, v5, v6, v7);
  objc_msgSend_bounds(self, v8, v9, v10);
  self->_boundsSize.width = v11;
  self->_boundsSize.height = v12;
  objc_msgSend_backingSizeForBoundSize_(self, v13, v14, v15, v11, v12);
  v17 = v16;
  v19 = v18;
  prof_beginFlame("Set drawableSize", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/Views/VFXView.m", 1041);
  objc_msgSend_setDrawableSize_(self->_backingLayer, v20, v21, v22, v17, v19);
  prof_endFlame();
  objc_msgSend_unlock(self, v23, v24, v25);
  v26 = v17;
  v27 = v19;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)_drawWithUpdate:(id)a3
{
  if (!self->_legacyView)
  {
    if (*(self + 424) < 0 || (*(self + 424) & 0x20) != 0)
    {
      if ((*(self + 424) & 0x40) == 0)
      {
        return;
      }

      *(self + 424) &= ~0x40u;
    }

    self->_didTriggerRedrawWhileRendering = 0;
    objc_msgSend_stopIfNeeded(self->_jitterer, a2, a3, v3);
    objc_msgSend__displayLinkStatsTick(self->_renderer, v6, v7, v8);
    objc_msgSend_lock(self, v9, v10, v11);
    v15 = objc_msgSend_drawable(a3, v12, v13, v14);
    v19 = objc_msgSend_texture(v15, v16, v17, v18);
    v23 = objc_msgSend_width(v19, v20, v21, v22);
    v27 = objc_msgSend_drawable(a3, v24, v25, v26);
    v31 = objc_msgSend_texture(v27, v28, v29, v30);
    v35 = objc_msgSend_height(v31, v32, v33, v34);
    if (v23 && v35)
    {
      v39 = v23;
      v40 = v35;
      navigationCameraController = self->_navigationCameraController;
      v42 = CACurrentMediaTime();
      objc_msgSend_viewWillDrawAtTime_(navigationCameraController, v43, v44, v45, v42);
      objc_msgSend_lock(self->_renderer, v46, v47, v48);
      context = objc_autoreleasePoolPush();
      objc_msgSend__backingSize(self->_renderer, v49, v50, v51);
      if (v56 != v39 || v55 != v40)
      {
        objc_msgSend__setBackingSize_(self->_renderer, v52, v53, v54, v39, v40);
        objc_msgSend_set_viewport_(self->_renderer, v58, v59, v60, 0.0);
      }

      objc_msgSend_lock(self->_world, v52, v53, v54);
      objc_msgSend_setMetalDisplayLinkUpdate_(self->_renderer, v61, a3, v62);
      world = self->_world;
      if (world && (v67 = objc_msgSend_worldRef(world, v63, v64, v65), (v68 = sub_1AF1CF8AC(v67)) != 0))
      {
        v69 = sub_1AF0FB884(v68);
        objc_msgSend_beginTransaction(v69, v70, v71, v72);
      }

      else
      {
        v69 = 0;
      }

      objc_msgSend__beginFrame(self->_renderer, v63, v64, v65);
      v76 = objc_msgSend__engineContext(self->_renderer, v73, v74, v75);
      v77 = sub_1AF12DE5C(v76);
      v78 = sub_1AF0D5194();
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v79 = v78;
        if (os_signpost_enabled(v78))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v77, "RenderFrame (View)", &unk_1AFF70A1D, buf, 2u);
        }
      }

      v80 = CACurrentMediaTime();
      objc_msgSend_targetTimestamp(a3, v81, v82, v83);
      if (v87 != 0.0)
      {
        objc_msgSend_targetTimestamp(a3, v84, v85, v86);
        v80 = v88;
      }

      self->_currentSystemTime = v80;
      objc_msgSend_updateAtTime_(self->_renderer, v84, v85, v86, v80);
      objc_msgSend__render(self->_renderer, v89, v90, v91);
      objc_msgSend__endFrame(self->_renderer, v92, v93, v94);
      objc_msgSend_endTransaction(v69, v95, v96, v97);
      objc_msgSend_unlock(self->_world, v98, v99, v100);
      v101 = sub_1AF0D5194();
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v102 = v101;
        if (os_signpost_enabled(v101))
        {
          *v126 = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v102, OS_SIGNPOST_INTERVAL_END, v77, "RenderFrame (View)", &unk_1AFF70A1D, v126, 2u);
        }
      }

      objc_autoreleasePoolPop(context);
      objc_msgSend_nextFrameTime(self->_renderer, v103, v104, v105);
      v107 = v106;
      v108 = CACurrentMediaTime();
      objc_msgSend_unlock(self->_renderer, v109, v110, v111);
      objc_msgSend_viewDidDrawAtTime_(self->_navigationCameraController, v112, v113, v114, self->_currentSystemTime);
      if (objc_msgSend__checkAndUpdateDisplayLinkStateIfNeeded(self, v115, v116, v117))
      {
        v121 = v107 - v108;
        if (v107 - v108 > 2.0)
        {
          objc_msgSend_restart(self->_jitterer, v118, v119, v120, v121);
        }
      }

      objc_msgSend_unlock(self, v118, v119, v120, v121);
      objc_msgSend__displayLinkStatsTack(self->_renderer, v122, v123, v124);
    }

    else
    {

      objc_msgSend_unlock(self, v36, v37, v38);
    }
  }
}

- (void)_resizeIfNeeded
{
  objc_msgSend_contentScaleFactor(self, a2, v2, v3);
  v6 = v5;
  objc_msgSend_bounds(self, v7, v8, v9);
  v15 = self->_boundsSize.width == v14 && self->_boundsSize.height == v13;
  if (!v15 || (v16 = v6, objc_msgSend__contentsScaleFactor(self->_renderer, v10, v11, v12), v17 != v16))
  {
    objc_msgSend__updateBackingSize(self, v10, v11, v12);

    objc_msgSend__setNeedsDisplay(self, v18, v19, v20);
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VFXView;
  [(VFXView *)&v6 layoutSubviews];
  objc_msgSend__resizeIfNeeded(self, v3, v4, v5);
}

- (void)setPointOfView:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  objc_msgSend_begin(VFXTransaction, a2, a3, a4);
  if (v4)
  {
    objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, 0.75);
  }

  else
  {
    objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, 0.0);
  }

  objc_msgSend_setPointOfView_(self, v10, a3, v11);

  objc_msgSend_commit(VFXTransaction, v12, v13, v14);
}

- (void)setPointOfView:(id)a3
{
  if (objc_msgSend_pointOfView(self, a2, a3, v3) != a3)
  {
    objc_msgSend_cameraWillChange(self->_navigationCameraController, v6, v7, v8);
    objc_msgSend_setPointOfView_(self->_renderer, v9, a3, v10);
    objc_msgSend_cameraDidChange(self->_navigationCameraController, v11, v12, v13);
    v17 = objc_msgSend_world(self, v14, v15, v16);
    IfNeeded = objc_msgSend_authoringEnvironmentForWorld_createIfNeeded_(VFXAuthoringEnvironment2, v18, v17, 0);

    MEMORY[0x1EEE66B58](IfNeeded, sel_didSetPointOfView_, a3, v20);
  }
}

- (CGRect)currentViewport
{
  (MEMORY[0x1EEE66B58])(self->_renderer, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setPointOfCulling:(id)a3
{
  if (objc_msgSend_pointOfCulling(self, a2, a3, v3) != a3)
  {
    renderer = self->_renderer;

    MEMORY[0x1EEE66B58](renderer, sel_setPointOfCulling_, a3, v6);
  }
}

- (void)setAllowsCameraControl:(BOOL)a3
{
  v4 = sub_1AF0D5C40(1) | a3;
  if (v4 != objc_msgSend_enabled(self->_navigationCameraController, v5, v6, v7))
  {
    navigationCameraController = self->_navigationCameraController;

    objc_msgSend_setEnabled_(navigationCameraController, v8, v4, v9);
  }
}

- (VFXCameraController)defaultCameraController
{
  v4 = objc_msgSend_navigationCameraController(self, a2, v2, v3);

  return objc_msgSend_cameraController(v4, v5, v6, v7);
}

- (void)setWantsExtendedDynamicRange:(BOOL)a3
{
  v4 = *(self + 424);
  if (((((v4 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *(self + 424) = v4 & 0xFB | v5;
    *(self + 425) &= ~0x20u;
    *(self + 425) &= ~0x10u;
    objc_msgSend__adjustBackingLayerPixelFormat(self, a2, a3, v3);
  }
}

- (void)setRendersContinuously:(BOOL)a3
{
  v4 = *(self + 424);
  if (((((v4 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 424) = v4 & 0xFD | v6;
    objc_msgSend_setRendersContinuously_(self->_renderer, a2, a3, v3);
    if ((*(self + 424) & 2) != 0)
    {
      v15 = objc_msgSend_displayLink(self, v7, v8, v9);

      objc_msgSend_setPaused_(v15, v16, 0, v17);
    }

    else
    {
      objc_msgSend_nextFrameTime(self->_renderer, v7, v8, v9);
      if (v13 - CACurrentMediaTime() > 2.0)
      {
        jitterer = self->_jitterer;

        objc_msgSend_restart(jitterer, v10, v11, v12);
      }
    }
  }
}

- (id)hitTest:(CGPoint)a3 options:(id)a4
{
  y = a3.y;
  objc_msgSend__flipY_(self, a2, a4, v4, a3.x);
  renderer = self->_renderer;

  return MEMORY[0x1EEE66B58](renderer, sel__hitTest_viewport_options_, a4, v8);
}

- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4
{
  renderer = self->_renderer;
  objc_msgSend__viewport(self, a2, a3, a4);

  return MEMORY[0x1EEE66B58](renderer, sel__isNodeInsideFrustum_withPointOfView_viewport_, a3, a4);
}

- (id)nodesInsideFrustumWithPointOfView:(id)a3
{
  renderer = self->_renderer;
  objc_msgSend__viewport(self, a2, a3, v3);

  return MEMORY[0x1EEE66B58](renderer, sel__nodesInsideFrustumWithPointOfView_viewport_, a3, v6);
}

- (id)_rendererForPrepare
{
  CompatibleRenderer = objc_msgSend_makeCompatibleRenderer(self->_renderer, a2, v2, v3);
  objc_msgSend__viewport(CompatibleRenderer, v6, v7, v8);
  if (v12 == 0.0)
  {
    objc_msgSend_backingSizeForBoundSize_(self, v9, v10, v11, self->_boundsSize.width, self->_boundsSize.height);
    v23 = v14;
    v24 = v13;
    objc_msgSend__setBackingSize_(CompatibleRenderer, v15, v16, v17);
    v18.f64[0] = v24;
    v18.f64[1] = v23;
    objc_msgSend_set_viewport_(CompatibleRenderer, v19, v20, v21, *vcvt_hight_f32_f64(0, v18).i64);
  }

  return CompatibleRenderer;
}

- (double)projectPoint:(uint64_t)a3
{
  v6 = a1[55];
  objc_msgSend__viewport(a1, a2, a3, a4);
  objc_msgSend__projectPoint_viewport_(v6, v7, v8, v9, a5, v10);
  LODWORD(a5) = v11;
  LODWORD(v12) = HIDWORD(v12);
  objc_msgSend__flipY_(a1, v13, v14, v15, v12);
  return COERCE_DOUBLE(__PAIR64__(v16, LODWORD(a5)));
}

- (uint64_t)unprojectPoint:(uint64_t)a3
{
  LODWORD(a5) = HIDWORD(a5);
  objc_msgSend__flipY_(a1, a2, a3, a4, a5);
  v6 = a1[55];
  objc_msgSend__viewport(a1, v7, v8, v9);

  return MEMORY[0x1EEE66B58](v6, sel__unprojectPoint_viewport_, v10, v11);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"kVFXViewObservingContext")
  {
    if (objc_msgSend_isEqualToString_(a3, a2, @"background.contents", a4, a5))
    {

      objc_msgSend__updateOpacity(self, v7, v8, v9);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VFXView;
    [(VFXView *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v22.receiver = a1;
  v22.super_class = &OBJC_METACLASS___VFXView;
  v5 = objc_msgSendSuper2(&v22, sel_keyPathsForValuesAffectingValueForKey_);
  v9 = objc_msgSend__kvoKeysForwardedToRenderer(a1, v6, v7, v8);
  if (objc_msgSend_containsObject_(v9, v10, a3, v11))
  {
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"renderer.%@", v13, a3);
    v18 = objc_msgSend_setWithObject_(v14, v16, v15, v17);
    return objc_msgSend_setByAddingObjectsFromSet_(v18, v19, v5, v20);
  }

  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v6 = objc_msgSend__kvoKeysForwardedToRenderer(a1, a2, a3, v3);
  if (objc_msgSend_containsObject_(v6, v7, a3, v8))
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VFXView;
  return objc_msgSendSuper2(&v10, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)setEventHandler:(id)a3
{
  objc_msgSend_setNavigationCameraController_(self, a2, a3, v3);
  objc_msgSend_setView_(a3, v6, self, v7);

  objc_msgSend_setAllowsCameraControl_(self, v8, 1, v9);
}

- (void)setNavigationCameraController:(id)a3
{
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController != a3)
  {
    objc_msgSend_setDelegate_(navigationCameraController, a2, 0, v3);

    self->_navigationCameraController = a3;
    v10 = objc_msgSend_navigationCameraController(self, v7, v8, v9);
    objc_msgSend_setDelegate_(v10, v11, self, v12);

    MEMORY[0x1EEE66B58](self, sel_vfx_updateGestureRecognizers, v13, v14);
  }
}

- (void)eventHandlerWantsRedraw
{
  v4 = objc_msgSend_displayLink(self, a2, v2, v3);

  objc_msgSend_setPaused_(v4, v5, 0, v6);
}

- (void)_backgroundDidChange
{
  objc_msgSend__updateOpacity(self, a2, v2, v3);

  objc_msgSend__adjustBackingLayerPixelFormat(self, v5, v6, v7);
}

- (void)_updateOpacity
{
  v5 = objc_msgSend_background(self->_world, a2, v2, v3);
  v9 = objc_msgSend_contents(v5, v6, v7, v8);
  v10 = sub_1AF3710D4(v9);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v10)
  {
    v10 = objc_msgSend_backgroundColor(self, v11, v12, v13);
    if (!v10)
    {
      v10 = objc_msgSend__defaultBackgroundColor(self, v11, v14, v15);
    }
  }

  v27 = 0;
  objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v10, v11, 0, &v27);
  LODWORD(v19) = HIDWORD(v16);
  v20 = *(self + 424);
  v21 = (v27 ^ 1) & 1u | (*(&v16 + 1) == 1.0);
  *(self + 424) = v20 & 0xFE | v27 ^ 1 | (*(&v16 + 1) == 1.0);
  if (v21 != (v20 & 1))
  {
    v22 = objc_msgSend_layer(self, v16, v17, v18, v19);
    objc_msgSend_setOpaque_(v22, v23, v21, v24);
    objc_msgSend_setOpaque_(self, v25, *(self + 424) & 1, v26);
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  legacyView = self->_legacyView;
  if (legacyView)
  {

    objc_msgSend_setBackgroundColor_(legacyView, a2, a3, v3);
  }

  else
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor != a3)
    {

      self->_backgroundColor = v4;
    }

    if (!v4)
    {
      v4 = objc_msgSend__defaultBackgroundColor(self, a2, a3, v3);
    }

    v21.receiver = self;
    v21.super_class = VFXView;
    [(VFXView *)&v21 setBackgroundColor:v4];
    v11 = objc_msgSend_traitCollection(self, v8, v9, v10);
    v15 = objc_msgSend_world(self, v12, v13, v14);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1AF3B8C8C;
    v20[3] = &unk_1E7A7E3B0;
    v20[4] = v11;
    v20[5] = self;
    v20[6] = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, v15, v20);
    objc_msgSend__backgroundDidChange(self, v17, v18, v19);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v17.receiver = self;
  v17.super_class = VFXView;
  [(VFXView *)&v17 traitCollectionDidChange:?];
  v8 = objc_msgSend_traitCollection(self, v5, v6, v7);
  if (objc_msgSend_hasDifferentColorAppearanceComparedToTraitCollection_(v8, v9, a3, v10))
  {
    v14 = objc_msgSend_world(self, v11, v12, v13);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF3B8E08;
    v16[3] = &unk_1E7A7E220;
    v16[4] = v8;
    v16[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v15, v14, v16);
  }
}

- (void)setAutoenablesDefaultLighting:(BOOL)a3
{
  objc_msgSend_setAutoenablesDefaultLighting_(self->_renderer, a2, a3, v3);

  objc_msgSend__setNeedsDisplay(self, v5, v6, v7);
}

- (MTLCommandQueue)commandQueue
{
  if (self->_legacyView)
  {
    return objc_msgSend_commandQueue(self->_legacyView, a2, v2, v3);
  }

  else
  {
    return objc_msgSend_commandQueue(self->_renderer, a2, v2, v3);
  }
}

- (void)setDisplayLink:(id)a3
{
  displayLink = self->_displayLink;
  if (displayLink != a3)
  {
    objc_msgSend_invalidate(displayLink, a2, a3, v3);

    self->_displayLink = a3;
  }
}

- (void)invalidateDisplayLink
{
  objc_msgSend_invalidate(self->_displayLink, a2, v2, v3);

  self->_displayLink = 0;
}

- (void)_createDisplayLinkIfNeeded
{
  if (!self->_legacyView && !self->_displayLink && !self->_displayLinkCreationRequested)
  {
    if (self->_renderer)
    {
      v5 = objc_msgSend_lowLatency(self, a2, v2, v3);
      self->_displayLinkCreationRequested = 1;
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x3052000000;
      v10[3] = sub_1AF3B91E8;
      v10[4] = sub_1AF3B91F8;
      v10[5] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF3B9204;
      v8[3] = &unk_1E7A7FD98;
      v8[4] = v10;
      v9 = v5;
      objc_msgSend__initializeDisplayLinkWithCompletionHandler_(self, v6, v8, v7);
      _Block_object_dispose(v10, 8);
    }
  }
}

- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    return 0;
  }

  if ((*(self + 424) & 2) != 0 || self->_didTriggerRedrawWhileRendering)
  {
    v6 = 0;
  }

  else
  {
    v8 = objc_msgSend_eventHandler(self, a2, v2, v3);
    v6 = objc_msgSend_wantsRedraw(v8, v9, v10, v11) ^ 1;
    displayLink = self->_displayLink;
  }

  objc_msgSend_nextFrameTime(self->_renderer, a2, v2, v3);

  return MEMORY[0x1EEE66B58](displayLink, sel_setPaused_nextFrameTimeHint_lastUpdate_, v6, v12);
}

- (int64_t)preferredFramesPerSecond
{
  v5 = objc_msgSend_displayLink(self, a2, v2, v3);
  if (v5)
  {
    objc_msgSend_preferredFrameRate(v5, v6, v7, v8);
  }

  else
  {
    return self->_preferredFramePerSeconds;
  }

  return v9;
}

- (void)setPreferredFramesPerSecond:(int64_t)a3
{
  legacyView = self->_legacyView;
  if (!legacyView)
  {
    v7 = objc_msgSend_displayLink(self, a2, a3, v3);
    if (v7)
    {
      *&v11 = a3;
      objc_msgSend_setPreferredFrameRate_(v7, v8, v9, v10, v11);
    }

    self->_preferredFramePerSeconds = a3;
    v12 = objc_msgSend_renderer(self, v8, v9, v10);
    legacyView = objc_msgSend__renderContextMetal(v12, v13, v14, v15);
  }

  MEMORY[0x1EEE66B58](legacyView, sel_setPreferredFramesPerSecond_, a3, v3);
}

- (void)_setNeedsDisplay
{
  v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2, v3);
  if (objc_msgSend_isMainThread(v5, v6, v7, v8))
  {
    if ((*(self + 424) & 0x20) == 0)
    {
      objc_msgSend_stopIfNeeded(self->_jitterer, v9, v10, v11);
      displayLink = self->_displayLink;
      if (displayLink)
      {
        if (objc_msgSend_isPaused(displayLink, v12, v13, v14))
        {
          v19 = self->_displayLink;

          objc_msgSend_setNeedsDisplay(v19, v16, v17, v18);
        }
      }

      else
      {

        objc_msgSend__createDisplayLinkIfNeeded(self, v12, v13, v14);
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF3B95C8;
    block[3] = &unk_1E7A7A770;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_systemTimeAnimationStarted:(id)a3
{
  v4 = objc_msgSend_displayLink(self, a2, a3, v3);

  objc_msgSend_setPaused_(v4, v5, 0, v6);
}

- (void)_worldDidUpdateEnabledTriggers:(id)a3
{
  v6 = objc_msgSend_debugOptions(self, a2, a3, v3);

  objc_msgSend_setDebugOptions_(self, v5, v6, v7);
}

- (void)setShowsStatistics:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1AF0D5C40(0);
  objc_msgSend_lock(self->_renderer, v6, v7, v8);
  objc_msgSend_setShowsStatistics_(self->_renderer, v9, v5 | v3, v10);
  objc_msgSend_unlock(self->_renderer, v11, v12, v13);

  objc_msgSend__setNeedsDisplay(self, v14, v15, v16);
}

- (id)statistics
{
  VFXSetPerformanceStatisticsEnabled(1);
  v6 = objc_msgSend__copyPerformanceStatistics(self->_renderer, v3, v4, v5);

  return v6;
}

- (id)snapshot
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  objc_msgSend_contentScaleFactor(self, a2, v2, v3);
  v8 = width * v7;
  objc_msgSend_contentScaleFactor(self, v9, v10, v11);
  renderer = self->_renderer;

  return objc_msgSend_snapshotWithSize_(renderer, v12, v13, v14, v8, height * v15);
}

- (NSString)description
{
  objc_msgSend_frame(self, a2, v2, v3);
  v5 = NSStringFromCGRect(v20);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v12 = objc_msgSend_world(self, v9, v10, v11);
  v16 = objc_msgSend_pointOfView(self, v13, v14, v15);
  return objc_msgSend_stringWithFormat_(v6, v17, @"<%@: %p | world=%@ frame=%@ pointOfView=%@>", v18, v8, self, v12, v5, v16);
}

- (void)switchToCameraNamed:(id)a3
{
  v6 = objc_msgSend_world(self, a2, a3, v3);
  v10 = objc_msgSend_rootNode(v6, v7, v8, v9);
  v12 = objc_msgSend_childNodeWithName_recursively_(v10, v11, a3, 1);
  if (v12)
  {

    MEMORY[0x1EEE66B58](self, sel_setPointOfView_animate_, v12, 1);
  }

  else
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFBAD0(a3, v13);
    }
  }
}

- (void)switchToNextCamera
{
  v5 = objc_msgSend_world(self, a2, v2, v3);
  v9 = objc_msgSend_rootNode(v5, v6, v7, v8);
  v12 = objc_msgSend_childNodesPassingTest_(v9, v10, &unk_1F24ED398, v11);
  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_pointOfView(self->_renderer, v16, v17, v18);
    v22 = objc_msgSend_indexOfObject_(v12, v20, v19, v21);
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      Object = objc_msgSend_firstObject(v12, v23, v24, v25);
    }

    else
    {
      v27 = v22 + 1;
      v28 = objc_msgSend_count(v12, v23, v24, v25);
      Object = objc_msgSend_objectAtIndex_(v12, v29, v27 % v28, v30);
    }

    MEMORY[0x1EEE66B58](self, sel_setPointOfView_animate_, Object, 1);
  }
}

- (void)setDebugOptions:(unint64_t)a3
{
  objc_msgSend_setDebugOptions_(self->_renderer, a2, a3, v3);

  objc_msgSend__setNeedsDisplay(self, v5, v6, v7);
}

- (void)setAntialiasingMode:(unint64_t)a3
{
  objc_msgSend_setAntialiasingMode_(self->_renderer, a2, a3, v3);

  objc_msgSend__setNeedsDisplay(self, v5, v6, v7);
}

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = VFXView;
  [(VFXView *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)a3
{
  v10.receiver = self;
  v10.super_class = VFXView;
  [(VFXView *)&v10 setContentScaleFactor:a3];
  if (self->_renderer)
  {
    objc_msgSend__updateBackingSize(self, v4, v5, v6);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setNeedsDisplay
{
  v6.receiver = self;
  v6.super_class = VFXView;
  [(VFXView *)&v6 setNeedsDisplay];
  objc_msgSend__setNeedsDisplay(self, v3, v4, v5);
}

- (void)vfx_updateGestureRecognizers
{
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController)
  {
    v10 = objc_msgSend_gestureRecognizers(navigationCameraController, v5, v6, v7);
    objc_msgSend_addObjectsFromArray_(v8, v11, v10, v12);
  }

  objc_msgSend_vfx_setGestureRecognizers_(self, v5, v8, v7);
}

- (void)vfx_setGestureRecognizers:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  controllerGestureRecognizers = self->_controllerGestureRecognizers;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllerGestureRecognizers, a2, &v24, v29, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(controllerGestureRecognizers);
        }

        objc_msgSend_removeGestureRecognizer_(self, v7, *(*(&v24 + 1) + 8 * i), v8);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllerGestureRecognizers, v7, &v24, v29, 16);
    }

    while (v9);
  }

  v12 = a3;
  self->_controllerGestureRecognizers = v12;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v28, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addGestureRecognizer_(self, v15, *(*(&v20 + 1) + 8 * j), v16);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v20, v28, 16);
    }

    while (v17);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v72 = *MEMORY[0x1E69E9840];
  if (sub_1AF28D89C())
  {
    v10 = objc_msgSend_hitTest_options_(self, v8, 0, v9, x, y);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v67, v71, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v68;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          v20 = objc_msgSend_node(v19, v13, v14, v15);
          v24 = objc_msgSend_model(v20, v21, v22, v23);
          v28 = objc_msgSend_materials(v24, v25, v26, v27);
          if (objc_msgSend_count(v28, v29, v30, v31))
          {
            v35 = objc_msgSend_materials(v24, v32, v33, v34);
            v39 = objc_msgSend_meshElementIndex(v19, v36, v37, v38);
            v43 = objc_msgSend_materials(v24, v40, v41, v42);
            v47 = objc_msgSend_count(v43, v44, v45, v46);
            v50 = objc_msgSend_objectAtIndexedSubscript_(v35, v48, v39 % v47, v49);
            v54 = objc_msgSend_diffuse(v50, v51, v52, v53);
          }

          else
          {
            v50 = 0;
            v54 = objc_msgSend_diffuse(0, v32, v33, v34);
          }

          objc_msgSend_contents(v54, v55, v56, v57);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_1AF3B50B0(self);
            v62 = objc_msgSend_diffuse(v50, v59, v60, v61);
            return objc_msgSend_contents(v62, v63, v64, v65);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v67, v71, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  v66.receiver = self;
  v66.super_class = VFXView;
  return [(VFXView *)&v66 hitTest:a4 withEvent:x, y];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_showsStatistics(self, a2, a3, a4) || (v10 = objc_msgSend_anyObject(a3, v7, v8, v9), objc_msgSend_locationInView_(v10, v11, self, v12), v14 = v13, v16 = v15, objc_msgSend_bounds(self, v17, v18, v19), v21 = v20 - v16, v25 = objc_msgSend__authoringEnvironment(self, v22, v23, v24), (objc_msgSend_didTapAtPoint_(v25, v26, v27, v28, v14, v21) & 1) == 0))
  {
    if (objc_msgSend_triggersEnabled(self, v7, v8, v9))
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v31 = objc_msgSend_touchesForView_(a4, v29, self, v30);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v44, v48, 16);
      if (v33)
      {
        v37 = v33;
        v38 = *v45;
        do
        {
          v39 = 0;
          do
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(v31);
            }

            v40 = *(*(&v44 + 1) + 8 * v39);
            v41 = objc_msgSend_triggerManager(self->_world, v34, v35, v36);
            objc_msgSend_triggerTouch_event_fromView_(v41, v42, @"VFXTriggerTypeTapBegan", v40, self);
            ++v39;
          }

          while (v37 != v39);
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v44, v48, 16);
        }

        while (v37);
      }
    }

    v43.receiver = self;
    v43.super_class = VFXView;
    [(VFXView *)&v43 touchesBegan:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, a3, a4))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_touchesForView_(a4, v7, self, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v15 = v11;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = objc_msgSend_triggerManager(self->_world, v12, v13, v14);
          objc_msgSend_triggerTouch_event_fromView_(v19, v20, @"VFXTriggerTypeTapEnded", v18, self);
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
      }

      while (v15);
    }
  }

  v21.receiver = self;
  v21.super_class = VFXView;
  [(VFXView *)&v21 touchesBegan:a3 withEvent:a4];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, a3, a4))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_touchesForView_(a4, v7, self, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v15 = v11;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = objc_msgSend_triggerManager(self->_world, v12, v13, v14);
          objc_msgSend_triggerTouch_event_fromView_(v19, v20, @"VFXTriggerTypeTapDragged", v18, self);
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
      }

      while (v15);
    }
  }

  v21.receiver = self;
  v21.super_class = VFXView;
  [(VFXView *)&v21 touchesBegan:a3 withEvent:a4];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, a3, a4))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_touchesForView_(a4, v7, self, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v15 = v11;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = objc_msgSend_triggerManager(self->_world, v12, v13, v14);
          objc_msgSend_triggerTouch_event_fromView_(v19, v20, @"VFXTriggerTypeTapCancelled", v18, self);
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
      }

      while (v15);
    }
  }

  v21.receiver = self;
  v21.super_class = VFXView;
  [(VFXView *)&v21 touchesBegan:a3 withEvent:a4];
}

- (void)pauseDisplayLink
{
  objc_msgSend_stopIfNeeded(self->_jitterer, a2, v2, v3);
  v8 = objc_msgSend_displayLink(self, v5, v6, v7);

  objc_msgSend_setPaused_(v8, v9, 1, v10);
}

- (void)resumeDisplayLink
{
  objc_msgSend__createDisplayLinkIfNeeded(self, a2, v2, v3);
  v8 = objc_msgSend_displayLink(self, v5, v6, v7);
  v9 = (*(self + 424) & 2) == 0;
  objc_msgSend_nextFrameTime(self->_renderer, v10, v11, v12);

  MEMORY[0x1EEE66B58](v8, sel_setPaused_nextFrameTimeHint_lastUpdate_, v9, v13);
}

- (void)didMoveToWindow
{
  if (objc_msgSend_window(self, a2, v2, v3))
  {
    *(self + 424) &= ~0x20u;
    objc_msgSend_resumeDisplayLink(self, v5, v6, v7);
    objc_msgSend__setNeedsDisplay(self, v8, v9, v10);
  }

  v20.receiver = self;
  v20.super_class = VFXView;
  [(VFXView *)&v20 didMoveToWindow];
  objc_msgSend__adjustBackingLayerPixelFormat(self, v11, v12, v13);
  objc_msgSend__updateBackingSize(self, v14, v15, v16);
  objc_msgSend__interfaceOrientationDidChange(self->_renderer, v17, v18, v19);
}

- (void)willMoveToWindow:(id)a3
{
  if (!a3)
  {
    sub_1AF3B50F0(self);
    objc_msgSend_pauseDisplayLink(self, v5, v6, v7);
    *(self + 424) |= 0x20u;
  }

  v8.receiver = self;
  v8.super_class = VFXView;
  [(VFXView *)&v8 willMoveToWindow:a3];
}

- (void)_enterForeground:(id)a3
{
  if (!self->_legacyView)
  {
    *(self + 424) &= ~0x80u;
    if (*(self + 425))
    {
      *(self + 425) &= ~1u;
      v5 = objc_msgSend_world(self, a2, a3, v3);
      v9 = objc_msgSend_clock(v5, v6, v7, v8);
      objc_msgSend_setPaused_(v9, v10, 0, v11);
    }

    v12 = sub_1AF15ACD8(0, a2, a3, v3);
    if (v12)
    {
      objc_msgSend_startAndReturnError_(v12, v13, 0, v15);
    }

    v16 = objc_msgSend_renderer(self, v13, v14, v15);
    objc_msgSend_lock(v16, v17, v18, v19);
    v23 = objc_msgSend_world(self, v20, v21, v22);
    v27 = objc_msgSend_worldRef(v23, v24, v25, v26);
    if (v27)
    {
      v31 = v27;
      v32 = sub_1AF1CF878(v27);
      sub_1AF1CEA20(v31);
      objc_msgSend_enterForeground(v32, v33, v34, v35);
      sub_1AF1CEA9C(v31);
    }

    v36 = objc_msgSend_renderer(self, v28, v29, v30);
    objc_msgSend_unlock(v36, v37, v38, v39);
    if ((*(self + 424) & 0x20) == 0)
    {

      objc_msgSend_resumeDisplayLink(self, v40, v41, v42);
    }
  }
}

- (void)_enterBackground:(id)a3
{
  if (!self->_legacyView)
  {
    *(self + 424) |= 0x80u;
    v6 = objc_msgSend_world(self, a2, a3, v3);
    v10 = objc_msgSend_clock(v6, v7, v8, v9);
    if ((objc_msgSend_isPaused(v10, v11, v12, v13) & 1) == 0)
    {
      *(self + 425) |= 1u;
      v17 = objc_msgSend_world(self, v14, v15, v16);
      v21 = objc_msgSend_clock(v17, v18, v19, v20);
      objc_msgSend_setPaused_(v21, v22, 1, v23);
    }

    objc_msgSend_pauseDisplayLink(self, v14, v15, v16);
    v27 = sub_1AF15ACD8(0, v24, v25, v26);
    if (v27)
    {
      objc_msgSend_pause(v27, v28, v29, v30);
    }

    v31 = objc_msgSend_renderer(self, v28, v29, v30);
    objc_msgSend_lock(v31, v32, v33, v34);
    v38 = objc_msgSend_world(self, v35, v36, v37);
    v42 = objc_msgSend_worldRef(v38, v39, v40, v41);
    if (v42)
    {
      v46 = v42;
      v47 = sub_1AF1CF878(v42);
      sub_1AF1CEA20(v46);
      objc_msgSend_enterBackground(v47, v48, v49, v50);
      sub_1AF1CEA9C(v46);
    }

    v51 = objc_msgSend_renderer(self, v43, v44, v45);

    objc_msgSend_unlock(v51, v52, v53, v54);
  }
}

- (void)safeAreaInsetsDidChange
{
  v16.receiver = self;
  v16.super_class = VFXView;
  [(VFXView *)&v16 safeAreaInsetsDidChange];
  objc_msgSend_safeAreaInsets(self, v3, v4, v5);
  v7.f64[1] = v6;
  v9.f64[1] = v8;
  objc_msgSend_set_drawableSafeAreaInsets_(self->_renderer, v10, v11, v12, *vcvt_hight_f32_f64(vcvt_f32_f64(v9), v7).i64);
  objc_msgSend__interfaceOrientationDidChange(self->_renderer, v13, v14, v15);
}

- (id)setupLegacyView
{
  v3 = [_TtC3VFX13VFXViewLegacy alloc];
  objc_msgSend_bounds(self, v4, v5, v6);
  v10 = objc_msgSend_initWithFrame_(v3, v7, v8, v9);
  objc_msgSend_addSubview_(self, v11, v10, v12);
  objc_msgSend_setAutoresizingMask_(v10, v13, 18, v14);
  v18 = objc_msgSend_backgroundColor(self, v15, v16, v17);
  objc_msgSend_setBackgroundColor_(v10, v19, v18, v20);
  v32.receiver = self;
  v32.super_class = VFXView;
  [(VFXView *)&v32 setBackgroundColor:0];
  objc_msgSend_set_legacyView_(self, v21, v10, v22);
  if (objc_msgSend_lowLatency(self, v23, v24, v25))
  {
    objc_msgSend_setLowLatency_(v10, v26, 1, v27);
  }

  return objc_msgSend__legacyView(self, v28, v29, v30);
}

- (id)legacyView
{
  result = objc_msgSend__legacyView(self, a2, v2, v3);
  if (!result)
  {

    return MEMORY[0x1EEE66B58](self, sel_setupLegacyView, v6, v7);
  }

  return result;
}

- (id)scene
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  return objc_msgSend_scene(v4, v5, v6, v7);
}

- (void)setScene:(id)a3
{
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  objc_msgSend_setScene_(v5, v6, a3, v7);
}

- (id)postRenderCallback
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_postRenderCallback, v5, v6);
}

- (void)setPostRenderCallback:(id)a3
{
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  MEMORY[0x1EEE66B58](v5, sel_setPostRenderCallback_, a3, v6);
}

- (void)renderWithCompletion:(id)a3
{
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  MEMORY[0x1EEE66B58](v5, sel_renderWithCompletion_, a3, v6);
}

- (void)renderWithPresentWithTransaction:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  v6 = objc_msgSend_legacyView(self, a2, a3, a4);

  MEMORY[0x1EEE66B58](v6, sel_renderWithPresentWithTransaction_completion_, v5, a4);
}

- (id)effect
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_effect, v5, v6);
}

- (void)setEffect:(id)a3
{
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  MEMORY[0x1EEE66B58](v5, sel_setEffect_, a3, v6);
}

- (unsigned)resizingMode
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_resizingMode, v5, v6);
}

- (void)setResizingMode:(unsigned __int8)a3
{
  v4 = a3;
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  MEMORY[0x1EEE66B58](v5, sel_setResizingMode_, v4, v6);
}

- (double)scaleFactor
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_scaleFactor, v5, v6);
  return result;
}

- (void)setScaleFactor:(double)a3
{
  v5 = objc_msgSend_legacyView(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_setScaleFactor_, v6, v7);
}

- (BOOL)framebufferOnly
{
  v4 = objc_msgSend_legacyView(self, a2, v2, v3);

  return objc_msgSend_framebufferOnly(v4, v5, v6, v7);
}

- (void)setFramebufferOnly:(BOOL)a3
{
  v4 = a3;
  v5 = objc_msgSend_legacyView(self, a2, a3, v3);

  objc_msgSend_setFramebufferOnly_(v5, v6, v4, v7);
}

@end