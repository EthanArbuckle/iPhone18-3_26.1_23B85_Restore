@interface PUIProgressWindow
+ (BOOL)_usesPreBoardAppearance;
+ (void)setUsesPreBoardAppearance;
- (CGColor)_copyCGColorRefWithComponents:(const double *)components;
- (CGImage)_createImageWithName:(const char *)name scale:(int)scale displayHeight:(int)height;
- (CGRect)appleLogoFrameWithinAsset;
- (PUIProgressWindow)initWithOptions:(unint64_t)options contextLevel:(float)level appearance:(int64_t)appearance;
- (const)_productSuffix;
- (id)_initWithOptions:(unint64_t)options contextLevel:(float)level appearance:(int64_t)appearance environment:(id)environment;
- (void)_appendErrorDescriptionWithString:(id)string;
- (void)_collectDisplayInfo;
- (void)_createContext;
- (void)_createLayer;
- (void)_drawProgressLayerInContext:(CGContext *)context;
- (void)_layoutScreen;
- (void)_unsupportedScreenClass;
- (void)_updateIOSurface;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)setProgressValue:(float)value;
- (void)setStatusText:(id)text;
- (void)setVisible:(BOOL)visible;
@end

@implementation PUIProgressWindow

+ (void)setUsesPreBoardAppearance
{
  v2 = sem_open("puiprogresswindow.pba", 512, 256, 0);
  if (v2 == -1)
  {
    v3 = __error();
    strerror(*v3);
    _DMLogFunc();
  }

  else
  {
    sem_close(v2);

    _DMLogFunc();
  }
}

+ (BOOL)_usesPreBoardAppearance
{
  v2 = sem_open("puiprogresswindow.pba", 0);
  v3 = v2;
  if (v2 != -1)
  {
    sem_close(v2);
  }

  _DMLogFunc();
  return v3 != -1;
}

- (PUIProgressWindow)initWithOptions:(unint64_t)options contextLevel:(float)level appearance:(int64_t)appearance
{
  v9 = objc_alloc_init(PUIEnvironment);
  *&v10 = level;
  v11 = [(PUIProgressWindow *)self _initWithOptions:options contextLevel:appearance appearance:v9 environment:v10];

  return v11;
}

- (id)_initWithOptions:(unint64_t)options contextLevel:(float)level appearance:(int64_t)appearance environment:(id)environment
{
  environmentCopy = environment;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
  *&v13 = level;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:appearance];
  _DMLogFunc();

  v30.receiver = self;
  v30.super_class = PUIProgressWindow;
  v15 = [(PUIProgressWindow *)&v30 init:v12];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environment, environment);
    BYTE2(v16->_progressLayer) = options & 1;
    LOWORD(v16->_progressLayer) = appearance == 1;
    *&v16->_productType = [(PUIEnvironment *)v16->_environment productType];
    deviceClass = [(PUIEnvironment *)v16->_environment deviceClass];
    v16->_screenClass = deviceClass;
    v25 = [MEMORY[0x277CCABB0] numberWithInt:deviceClass];
    _DMLogFunc();

    if (v16->_screenClass == -1)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInt:{0xFFFFFFFFLL, v25}];
      _DMLogFunc();

      v18 = +[PUIProgressWindow _errorDescriptionForUnknownDeviceClass];
      [(PUIProgressWindow *)v16 _appendErrorDescriptionWithString:v18];
    }

    mainScreenClass = [(PUIEnvironment *)v16->_environment mainScreenClass];
    *&v16->_isSecurityResearchDevice = mainScreenClass;
    v27 = [MEMORY[0x277CCABB0] numberWithInt:mainScreenClass];
    _DMLogFunc();

    v20 = MGGetBoolAnswer();
    LOBYTE(v16->_displaySize.width) = v20;
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{v20, v27}];
    _DMLogFunc();

    [(PUIProgressWindow *)v16 _collectDisplayInfo];
    if ((options & 4) == 0)
    {
      v16->_weCreatedTheContext = 0;
      context = v16->_context;
      v16->_context = 0;

LABEL_8:
      [(PUIProgressWindow *)v16 _createLayer];
      goto LABEL_9;
    }

    [(PUIProgressWindow *)v16 _createContext];
    v23 = v16->_context;
    if (v23)
    {
      *&v22 = level;
      [(CAContext *)v23 setLevel:v22];
      goto LABEL_8;
    }
  }

LABEL_9:

  return v16;
}

- (void)_appendErrorDescriptionWithString:(id)string
{
  stringCopy = string;
  if (![(PUIProgressWindow *)self _currentDeviceShouldMuteErrors])
  {
    layer = self->_layer;
    if (layer)
    {
      v5 = [(CALayer *)layer stringByAppendingString:@", "];
    }

    else
    {
      v5 = &stru_287363EB8;
    }

    v6 = self->_layer;
    self->_layer = v5;

    v7 = [(CALayer *)self->_layer stringByAppendingString:stringCopy];
    v8 = self->_layer;
    self->_layer = v7;
  }
}

- (void)_unsupportedScreenClass
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*&self->_isSecurityResearchDevice];
  _DMLogFunc();

  v4 = +[PUIProgressWindow _errorDescriptionForUnsupportedScreenClass];
  [(PUIProgressWindow *)self _appendErrorDescriptionWithString:v4];
}

- (void)dealloc
{
  if (*&self->_currentProgress)
  {
    v3 = +[PUIFramebufferSizeChangeNotifier sharedInstance];
    [v3 removeListener:*&self->_currentProgress];
  }

  if (self->_weCreatedTheContext)
  {
    [(CAContext *)self->_context invalidate];
  }

  progressXDelta = self->_progressXDelta;
  if (progressXDelta != 0.0)
  {
    CFRelease(*&progressXDelta);
  }

  [(NSString *)self->_errorDescription setContents:0];
  ioSurfaceLayer = self->_ioSurfaceLayer;
  if (ioSurfaceLayer)
  {
    CFRelease(ioSurfaceLayer);
  }

  [(CATextLayer *)self->_statusTextLayer setDelegate:0];
  v6.receiver = self;
  v6.super_class = PUIProgressWindow;
  [(PUIProgressWindow *)&v6 dealloc];
}

- (void)_collectDisplayInfo
{
  if (self->_screenClass == 4)
  {
    *(&self->_renderWithIOSurface + 3) = 0;
    LOBYTE(self->_framebufferListenerToken) = 0;
    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    v4 = mainDisplay;
    if (!mainDisplay || ([mainDisplay bounds], v5 == 0.0) || (objc_msgSend(v4, "bounds"), v6 == 0.0))
    {
      _DMLogFunc();
      *&self->_displaySize.height = xmmword_260E8DDC0;
      *&self->_framebufferSize.height = *&self->_displaySize.height;
    }

    else
    {
      [v4 bounds];
      self->_framebufferSize.height = v7;
      self->_layerPositioningSize.width = v8;
      p_height = &self->_displaySize.height;
      if (v7 > 1920.0)
      {
        *p_height = xmmword_260E8DDC0;
        v10 = v7 / 1920.0;
LABEL_15:
        *&self->_sideways = v10;
        objc_initWeak(&valuePtr, self);
        v21 = +[PUIFramebufferSizeChangeNotifier sharedInstance];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __40__PUIProgressWindow__collectDisplayInfo__block_invoke;
        v54[3] = &unk_279AC4B60;
        objc_copyWeak(&v55, &valuePtr);
        v22 = [v21 addListener:v54];
        v23 = *&self->_currentProgress;
        *&self->_currentProgress = v22;

        objc_destroyWeak(&v55);
        objc_destroyWeak(&valuePtr);

        v24 = 0.0;
        goto LABEL_45;
      }

      *p_height = *&self->_framebufferSize.height;
    }

    v10 = 1.0;
    goto LABEL_15;
  }

  LODWORD(valuePtr) = 0;
  mainScreenScale = [(PUIEnvironment *)self->_environment mainScreenScale];
  v12 = mainScreenScale;
  if (mainScreenScale)
  {
    [mainScreenScale floatValue];
    *&self->_sideways = v13;
  }

  v14 = MGCopyAnswer();
  if (v14)
  {
    v15 = v14;
    CFNumberGetValue(v14, kCFNumberFloat32Type, &valuePtr);
    *(&self->_renderWithIOSurface + 3) = valuePtr;
    CFRelease(v15);
  }

  mainDisplay2 = [MEMORY[0x277CD9E40] mainDisplay];
  [mainDisplay2 bounds];
  self->_framebufferSize.height = v17;
  self->_layerPositioningSize.width = v18;

  v19 = MGCopyAnswer();
  if (v19)
  {
    v20 = v19;
    CFNumberGetValue(v19, kCFNumberFloat32Type, &valuePtr);
    self->_displaySize.height = *&valuePtr;
    CFRelease(v20);
  }

  else
  {
    self->_displaySize.height = self->_framebufferSize.height;
  }

  v25 = MGCopyAnswer();
  if (v25)
  {
    v26 = v25;
    CFNumberGetValue(v25, kCFNumberFloat32Type, &valuePtr);
    self->_framebufferSize.width = *&valuePtr;
    CFRelease(v26);
  }

  else
  {
    self->_framebufferSize.width = self->_layerPositioningSize.width;
  }

  v27 = MGCopyAnswer();
  v28 = v27;
  if (v27)
  {
    [v27 floatValue];
    v24 = v29;
    if (v29 != 0.0)
    {
      v30 = v29 + -90.0;
      if ((v24 + -90.0) < 0.0)
      {
        v30 = -(v24 + -90.0);
      }

      if (v30 >= 0.01)
      {
        v34 = v24 + -180.0;
        if ((v24 + -180.0) < 0.0)
        {
          v34 = -(v24 + -180.0);
        }

        if (v34 < 0.01)
        {
          v35 = *(&self->_renderWithIOSurface + 3) + 3.14159265;
          *(&self->_renderWithIOSurface + 3) = v35;
          goto LABEL_37;
        }

        v36 = v24 + -270.0;
        if ((v24 + -270.0) < 0.0)
        {
          v36 = -(v24 + -270.0);
        }

        if (v36 >= 0.01)
        {
          goto LABEL_37;
        }

        v31 = *(&self->_renderWithIOSurface + 3);
        v32 = 1.57079633;
      }

      else
      {
        v31 = *(&self->_renderWithIOSurface + 3);
        v32 = 4.71238898;
      }

      v33 = v31 + v32;
      *(&self->_renderWithIOSurface + 3) = v33;
      *&self->_displaySize.height = vextq_s8(*&self->_displaySize.height, *&self->_displaySize.height, 8uLL);
    }
  }

  else
  {
    v24 = 0.0;
  }

LABEL_37:
  v37 = *(&self->_renderWithIOSurface + 3);
  v38 = -(v37 + -1.57079633);
  if (v37 + -1.57079633 >= 0.0)
  {
    v38 = v37 + -1.57079633;
  }

  if (v38 >= 0.01)
  {
    v40 = v37 + -4.71238898;
    if (v40 < 0.0)
    {
      v40 = -v40;
    }

    v39 = v40 < 0.01;
  }

  else
  {
    v39 = 1;
  }

  LOBYTE(self->_framebufferListenerToken) = v39;

LABEL_45:
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_displaySize.height];
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_framebufferSize.width];
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_framebufferSize.height];
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_layerPositioningSize.width];
  LODWORD(v44) = *&self->_sideways;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  LODWORD(v46) = *(&self->_renderWithIOSurface + 3);
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v48 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(self->_framebufferListenerToken)];
  *&v49 = v24;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  v50 = v53;
  _DMLogFunc();

  if (MGGetSInt32Answer() == 1 || !BYTE1(self->_progressLayer) && [objc_opt_class() _usesPreBoardAppearance])
  {
    _DMLogFunc();
    BYTE1(self->_progressLayer) = 1;
  }

  if (LOBYTE(self->_progressLayer) == 1)
  {
    BYTE1(self->_progressLayer) ^= 1u;
  }

  *&self->_layerPositioningSize.height = *&self->_framebufferSize.height;
  v51 = [MEMORY[0x277CCABB0] numberWithBool:{BYTE1(self->_framebufferListenerToken), v50}];
  _DMLogFunc();
}

void __40__PUIProgressWindow__collectDisplayInfo__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLayerForFramebufferSize:{a2, a3}];
}

- (void)_createContext
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = *MEMORY[0x277CBED28];
  v9 = v3;
  if (*&self->_sideways == 2.0)
  {
    [v3 setObject:v4 forKey:*MEMORY[0x277CDA108]];
    [v9 setObject:v4 forKey:*MEMORY[0x277CDA110]];
    v3 = v9;
  }

  [v3 setObject:v4 forKey:*MEMORY[0x277CDA100]];
  v5 = 3;
  while (1)
  {
    v6 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v9];
    context = self->_context;
    self->_context = v6;

    v8 = self->_context;
    if (v8)
    {
      break;
    }

    _DMLogFunc();
    sleep(2u);
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  [(CAContext *)v8 setSecure:1];
  self->_weCreatedTheContext = 1;
LABEL_8:
  if (!self->_context)
  {
    _DMLogFunc();
  }
}

- (CGColor)_copyCGColorRefWithComponents:(const double *)components
{
  result = CGColorSpaceCreateDeviceRGB();
  if (result)
  {
    v5 = result;
    v6 = CGColorCreate(result, components);
    CFRelease(v5);
    return v6;
  }

  return result;
}

- (void)_createLayer
{
  layer = [MEMORY[0x277CD9ED0] layer];
  [layer setDisableUpdateMask:16];
  if (BYTE1(self->_progressLayer) == 1)
  {
    _copyWhiteCGColorRef = [(PUIProgressWindow *)self _copyWhiteCGColorRef];
  }

  else
  {
    _copyWhiteCGColorRef = [(PUIProgressWindow *)self _copyBlackCGColorRef];
  }

  v5 = _copyWhiteCGColorRef;
  if (_copyWhiteCGColorRef)
  {
    [layer setBackgroundColor:_copyWhiteCGColorRef];
    CFRelease(v5);
  }

  CGAffineTransformMakeRotation(&v137, -*(&self->_renderWithIOSurface + 3));
  v136 = v137;
  [layer setAffineTransform:&v136];
  __asm { FMOV            V1.2D, #0.5 }

  [layer setPosition:{vmulq_f64(*&self->_layerPositioningSize.height, _Q1)}];
  [layer setBounds:{0.0, 0.0, self->_displaySize.height, self->_framebufferSize.width}];
  v11 = MEMORY[0x277CCABB0];
  [layer position];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [layer position];
  v15 = [v13 numberWithDouble:v14];
  v16 = MEMORY[0x277CCABB0];
  [layer bounds];
  v17 = [v16 numberWithDouble:?];
  v18 = MEMORY[0x277CCABB0];
  [layer bounds];
  v20 = [v18 numberWithDouble:v19];
  v21 = MEMORY[0x277CCABB0];
  [layer bounds];
  v23 = [v21 numberWithDouble:v22];
  v24 = MEMORY[0x277CCABB0];
  [layer bounds];
  v93 = [v24 numberWithDouble:v25];
  _DMLogFunc();

  [layer setHidden:{1, v12, v15, v17, v20, v23, v93}];
  objc_storeStrong(&self->_appleLogoAssetLayer, layer);
  context = self->_context;
  if (context)
  {
    [(CAContext *)context setLayer:layer];
  }

  if (BYTE1(self->_framebufferListenerToken) == 1)
  {
    v27 = _IOSurfacePropertyDictionaryForRect(0.0, 0.0, self->_displaySize.height, self->_framebufferSize.width);
    self->_ioSurfaceLayer = IOSurfaceCreate(v27);
    layer2 = [MEMORY[0x277CD9ED0] layer];
    errorDescription = self->_errorDescription;
    self->_errorDescription = layer2;

    [(NSString *)self->_errorDescription setAllowsDisplayCompositing:1];
    CGAffineTransformMakeRotation(&v135, -*(&self->_renderWithIOSurface + 3));
    v30 = self->_errorDescription;
    v136 = v135;
    [(NSString *)v30 setAffineTransform:&v136];
    [(NSString *)self->_errorDescription setFrame:0.0, 0.0, self->_framebufferSize.height, self->_layerPositioningSize.width];
    [(NSString *)self->_errorDescription setContents:self->_ioSurfaceLayer];
    [(NSString *)self->_errorDescription setHidden:1];
    [(CAContext *)self->_context setLayer:self->_errorDescription];
  }

  v31 = 72;
  if (LOBYTE(self->_framebufferListenerToken))
  {
    v32 = 80;
  }

  else
  {
    v32 = 72;
  }

  if (!LOBYTE(self->_framebufferListenerToken))
  {
    v31 = 80;
  }

  v33 = *(&self->super.isa + v31);
  v34 = *(&self->super.isa + v32);
  if (v34 != self->_displaySize.height || v33 != self->_framebufferSize.width)
  {
    v35 = MEMORY[0x277CCABB0];
    appleLogoAssetLayer = self->_appleLogoAssetLayer;
    if (appleLogoAssetLayer)
    {
      [(CALayer *)appleLogoAssetLayer affineTransform];
      v37 = *&v134;
    }

    else
    {
      v133 = 0u;
      v134 = 0u;
      v132 = 0u;
      v37 = 0.0;
    }

    v38 = [v35 numberWithDouble:v37];
    v39 = MEMORY[0x277CCABB0];
    v40 = self->_appleLogoAssetLayer;
    if (v40)
    {
      [(CALayer *)v40 affineTransform];
      v41 = *(&v131 + 1);
    }

    else
    {
      v130 = 0u;
      v131 = 0u;
      v129 = 0u;
      v41 = 0.0;
    }

    v42 = [v39 numberWithDouble:v41];
    v43 = MEMORY[0x277CCABB0];
    v44 = self->_appleLogoAssetLayer;
    if (v44)
    {
      [(CALayer *)v44 affineTransform];
      v45 = *&v126;
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v45 = 0.0;
    }

    v46 = [v43 numberWithDouble:v45];
    v47 = MEMORY[0x277CCABB0];
    v48 = self->_appleLogoAssetLayer;
    if (v48)
    {
      [(CALayer *)v48 affineTransform];
      v49 = *(&v123 + 1);
    }

    else
    {
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v49 = 0.0;
    }

    v50 = [v47 numberWithDouble:v49];
    v51 = MEMORY[0x277CCABB0];
    v52 = self->_appleLogoAssetLayer;
    if (v52)
    {
      [(CALayer *)v52 affineTransform];
      v53 = *&v121;
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      v53 = 0.0;
    }

    v54 = [v51 numberWithDouble:v53];
    v55 = MEMORY[0x277CCABB0];
    v56 = self->_appleLogoAssetLayer;
    if (v56)
    {
      [(CALayer *)v56 affineTransform];
      v57 = *(&v118 + 1);
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      v57 = 0.0;
    }

    [v55 numberWithDouble:v57];
    v95 = v92 = v54;
    v88 = v46;
    v90 = v50;
    v84 = v38;
    v86 = v42;
    _DMLogFunc();

    memset(&v136, 0, sizeof(v136));
    CGAffineTransformMakeScale(&v136, v34 / self->_displaySize.height, v33 / self->_framebufferSize.width);
    v58 = self->_appleLogoAssetLayer;
    if (v58)
    {
      [(CALayer *)v58 affineTransform:v38];
      v59 = self->_appleLogoAssetLayer;
    }

    else
    {
      v59 = 0;
      memset(&t1, 0, sizeof(t1));
    }

    t2 = v136;
    CGAffineTransformConcat(&v116, &t1, &t2);
    t1 = v116;
    [(CALayer *)v59 setAffineTransform:&t1];
    v60 = MEMORY[0x277CCABB0];
    v61 = self->_appleLogoAssetLayer;
    if (v61)
    {
      [(CALayer *)v61 affineTransform];
      v62 = *&v113;
    }

    else
    {
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v62 = 0.0;
    }

    v63 = [v60 numberWithDouble:{v62, v84, v86, v88, v90, v92, v95}];
    v64 = MEMORY[0x277CCABB0];
    v65 = self->_appleLogoAssetLayer;
    if (v65)
    {
      [(CALayer *)v65 affineTransform];
      v66 = *(&v110 + 1);
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      v66 = 0.0;
    }

    v67 = [v64 numberWithDouble:v66];
    v68 = MEMORY[0x277CCABB0];
    v69 = self->_appleLogoAssetLayer;
    if (v69)
    {
      [(CALayer *)v69 affineTransform];
      v70 = *&v105;
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      v70 = 0.0;
    }

    v71 = [v68 numberWithDouble:v70];
    v72 = MEMORY[0x277CCABB0];
    v73 = self->_appleLogoAssetLayer;
    if (v73)
    {
      [(CALayer *)v73 affineTransform];
      v74 = *(&v102 + 1);
    }

    else
    {
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v74 = 0.0;
    }

    v75 = [v72 numberWithDouble:v74];
    v76 = MEMORY[0x277CCABB0];
    v77 = self->_appleLogoAssetLayer;
    if (v77)
    {
      [(CALayer *)v77 affineTransform];
      v78 = *&v100;
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      v78 = 0.0;
    }

    v79 = [v76 numberWithDouble:v78];
    v80 = MEMORY[0x277CCABB0];
    v81 = self->_appleLogoAssetLayer;
    if (v81)
    {
      [(CALayer *)v81 affineTransform];
      v82 = *(&v97 + 1);
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v82 = 0.0;
    }

    [v80 numberWithDouble:v82];
    v94 = v91 = v79;
    v87 = v71;
    v89 = v75;
    v83 = v63;
    v85 = v67;
    _DMLogFunc();
  }

  [(PUIProgressWindow *)self _layoutScreen:v83];
}

- (void)_updateIOSurface
{
  IOSurfaceLock(self->_ioSurfaceLayer, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(self->_ioSurfaceLayer);
  Width = IOSurfaceGetWidth(self->_ioSurfaceLayer);
  Height = IOSurfaceGetHeight(self->_ioSurfaceLayer);
  BytesPerRow = IOSurfaceGetBytesPerRow(self->_ioSurfaceLayer);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  if (v8)
  {
    CGContextTranslateCTM(v8, 0.0, Height);
    CGContextScaleCTM(v8, 1.0, -1.0);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextSetBaseCTM();
    isHidden = [(CALayer *)self->_appleLogoAssetLayer isHidden];
    [(CALayer *)self->_appleLogoAssetLayer setHidden:0];
    [(CALayer *)self->_appleLogoAssetLayer renderInContext:v8];
    [(CALayer *)self->_appleLogoAssetLayer setHidden:isHidden];
    CGContextRelease(v8);
  }

  IOSurfaceUnlock(self->_ioSurfaceLayer, 0, 0);
  [(NSString *)self->_errorDescription setContents:0];
  [(NSString *)self->_errorDescription setContents:self->_ioSurfaceLayer];
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  [MEMORY[0x277CD9FF0] begin];
  [(CALayer *)self->_appleLogoAssetLayer setHidden:!visibleCopy];
  [(NSString *)self->_errorDescription setHidden:!visibleCopy];
  [MEMORY[0x277CD9FF0] commit];
  _DMLogFunc();
}

- (void)setProgressValue:(float)value
{
  *&self->_appleLogo = value;
  [(CATextLayer *)self->_statusTextLayer setNeedsDisplay];
  if (BYTE1(self->_framebufferListenerToken) == 1)
  {

    [(PUIProgressWindow *)self _updateIOSurface];
  }
}

- (void)setStatusText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy && !self->_ioSurface)
  {
    v16 = textCopy;
    v6 = objc_alloc_init(MEMORY[0x277CD9FC8]);
    ioSurface = self->_ioSurface;
    self->_ioSurface = v6;

    [(__IOSurface *)self->_ioSurface setString:0];
    [(__IOSurface *)self->_ioSurface setFontSize:50.0];
    height = self->_displaySize.height;
    v9 = 1000.0;
    if (height + -200.0 <= 1000.0)
    {
      v9 = height + -200.0;
    }

    [(__IOSurface *)self->_ioSurface setFrame:(height - v9) * 0.5, self->_framebufferSize.width + -300.0, v9, 300.0];
    [(__IOSurface *)self->_ioSurface setWrapped:1];
    [(__IOSurface *)self->_ioSurface setAlignmentMode:@"center"];
    if (BYTE1(self->_progressLayer) == 1)
    {
      _copyBlackCGColorRef = [(PUIProgressWindow *)self _copyBlackCGColorRef];
    }

    else
    {
      _copyBlackCGColorRef = [(PUIProgressWindow *)self _copyWhiteCGColorRef];
    }

    v11 = _copyBlackCGColorRef;
    if (_copyBlackCGColorRef)
    {
      [(__IOSurface *)self->_ioSurface setForegroundColor:_copyBlackCGColorRef];
      CFRelease(v11);
    }

    [(CALayer *)self->_appleLogoAssetLayer addSublayer:self->_ioSurface];
    v5 = v16;
  }

  v12 = self->_ioSurface;
  if (v12)
  {
    v17 = v5;
    string = [(__IOSurface *)v12 string];
    if (string == v17)
    {
    }

    else
    {
      string2 = [(__IOSurface *)self->_ioSurface string];
      v15 = [v17 isEqualToString:string2];

      if ((v15 & 1) == 0)
      {
        [(__IOSurface *)self->_ioSurface setString:v17];
        if (BYTE1(self->_framebufferListenerToken) == 1)
        {
          [(PUIProgressWindow *)self _updateIOSurface];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (const)_productSuffix
{
  screenClass = self->_screenClass;
  if (screenClass > 3)
  {
    if (screenClass == 4)
    {
      return "appletv";
    }

    if (screenClass != 6)
    {
      return 0;
    }

    v7 = *&self->_isSecurityResearchDevice;
    if (v7 <= 26)
    {
      if (v7 > 16)
      {
        if (v7 == 17)
        {
          return "watch-448h";
        }

        if (v7 == 26)
        {
          return "watch-484h";
        }
      }

      else
      {
        if (v7 == 13)
        {
          return "watch-compact";
        }

        if (v7 == 16)
        {
          return "watch-394h";
        }
      }
    }

    else if (v7 <= 33)
    {
      if (v7 == 27)
      {
        return "watch-430h";
      }

      if (v7 == 29)
      {
        return "watch-502h";
      }
    }

    else
    {
      switch(v7)
      {
        case '""':
          return "watch-446h";
        case '#':
          return "watch-496h";
        case '&':
          return "watch-514h";
      }
    }

    return "watch-regular";
  }

  else
  {
    v3 = screenClass - 1;
    v4 = screenClass == 3;
    v5 = "ipad";
    if (!v4)
    {
      v5 = 0;
    }

    if (v3 >= 2)
    {
      return v5;
    }

    else
    {
      return "iphone";
    }
  }
}

- (void)_layoutScreen
{
  v3 = 0;
  v4 = *(MEMORY[0x277CBF398] + 16);
  *&self->_appleLogoFrameWithinAsset.origin.y = *MEMORY[0x277CBF398];
  *&self->_appleLogoFrameWithinAsset.size.height = v4;
  if (BYTE1(self->_progressLayer))
  {
    v5 = "apple-logo-black";
  }

  else
  {
    v5 = "apple-logo";
  }

  screenClass = self->_screenClass;
  v7 = 0.0;
  if (screenClass > 4)
  {
    if (screenClass != 5)
    {
      if (screenClass != 6)
      {
        goto LABEL_56;
      }

      v13 = *&self->_isSecurityResearchDevice;
      if (v13 > 0x26 || ((1 << v13) & 0x4C2C033000) == 0)
      {
LABEL_54:
        [(PUIProgressWindow *)self _unsupportedScreenClass];
      }

LABEL_55:
      v3 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    if ((screenClass - 1) < 2)
    {
      v8 = *&self->_isSecurityResearchDevice;
      if (v8 <= 0x27)
      {
        if (((1 << v8) & 0xB0C2400000) != 0)
        {
LABEL_8:
          v9 = "apple-logo-d5x";
          v10 = "apple-logo-black-d5x";
LABEL_9:
          if (BYTE1(self->_progressLayer))
          {
            v5 = v10;
          }

          else
          {
            v5 = v9;
          }

          v11 = xmmword_260E8DE30;
          v12 = xmmword_260E8DE40;
LABEL_13:
          *&self->_appleLogoFrameWithinAsset.origin.y = v11;
          *&self->_appleLogoFrameWithinAsset.size.height = v12;
          v3 = 1;
LABEL_56:
          v15 = 0.0;
          goto LABEL_57;
        }

        if (v8 == 19)
        {
          if (LOBYTE(self->_displaySize.width) != 1)
          {
            if (BYTE1(self->_progressLayer))
            {
              v5 = "apple-logo-black-n84";
            }

            else
            {
              v5 = "apple-logo-n84";
            }

            v11 = xmmword_260E8DE60;
            v12 = xmmword_260E8DE70;
            goto LABEL_13;
          }

          if (BYTE1(self->_progressLayer))
          {
            v5 = "apple-logo-black-1792-SRD";
          }

          else
          {
            v5 = "apple-logo-1792-SRD";
          }

          *&self->_appleLogoFrameWithinAsset.origin.y = xmmword_260E8DE80;
          *&self->_appleLogoFrameWithinAsset.size.height = xmmword_260E8DE90;
          v3 = 1;
          *&v16 = -38.0;
          goto LABEL_52;
        }

        if (v8 == 24)
        {
          if (LOBYTE(self->_displaySize.width) != 1)
          {
            goto LABEL_8;
          }

          if (BYTE1(self->_progressLayer))
          {
            v5 = "apple-logo-black-2532-SRD";
          }

          else
          {
            v5 = "apple-logo-2532-SRD";
          }

          *&self->_appleLogoFrameWithinAsset.origin.y = xmmword_260E8DE50;
          *&self->_appleLogoFrameWithinAsset.size.height = xmmword_260E8DE40;
          v3 = 1;
          *&v16 = -54.0;
LABEL_52:
          v7 = *&v16;
          goto LABEL_56;
        }
      }

      if (v8 == -1)
      {
        goto LABEL_54;
      }

      if (v8 == 18)
      {
        v9 = "apple-logo-d3x";
        v10 = "apple-logo-black-d3x";
        goto LABEL_9;
      }

      if (v8 >= 18)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (screenClass != 3)
    {
      goto LABEL_56;
    }
  }

  v14 = *&self->_isSecurityResearchDevice;
  if (v14 != 11)
  {
    if (v14 == 33 || v14 == 20)
    {
      v3 = 0;
      if (BYTE1(self->_progressLayer))
      {
        v5 = "apple-logo-black-j317";
      }

      else
      {
        v5 = "apple-logo-j317";
      }

      *&self->_appleLogoFrameWithinAsset.origin.y = xmmword_260E8DDD0;
      *&self->_appleLogoFrameWithinAsset.size.height = xmmword_260E8DDE0;
      v15 = 254.0;
      goto LABEL_57;
    }

    goto LABEL_29;
  }

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v14 = *&self->_isSecurityResearchDevice;
LABEL_29:
    if (v14 == -1)
    {
      goto LABEL_46;
    }

    if (v14 == 32)
    {
      goto LABEL_31;
    }

    if (v14 >= 29)
    {
LABEL_46:
      [(PUIProgressWindow *)self _unsupportedScreenClass];
      v3 = 0;
    }

    else
    {
      v3 = 0;
      *&self->_appleLogoFrameWithinAsset.origin.y = xmmword_260E8DE10;
      *&self->_appleLogoFrameWithinAsset.size.height = xmmword_260E8DE20;
    }

    v15 = 224.0;
    goto LABEL_57;
  }

LABEL_31:
  v3 = 0;
  if (BYTE1(self->_progressLayer))
  {
    v5 = "apple-logo-black-j320";
  }

  else
  {
    v5 = "apple-logo-j320";
  }

  *&self->_appleLogoFrameWithinAsset.origin.y = xmmword_260E8DDF0;
  *&self->_appleLogoFrameWithinAsset.size.height = xmmword_260E8DE00;
  v15 = 286.0;
LABEL_57:
  v17 = [(PUIProgressWindow *)self _createImageWithName:v5 scale:*&self->_sideways displayHeight:self->_framebufferSize.width];
  *&self->_progressXDelta = v17;
  v18 = self->_screenClass;
  if ((v18 - 1) < 2)
  {
    v22 = *&self->_sideways;
    height = self->_displaySize.height;
    v24 = (height - CGImageGetWidth(v17)) * 0.5;
    width = self->_framebufferSize.width;
    self->_progressYDelta = ceil(self->_displaySize.height * 0.192647059);
    if (v3)
    {
      v21 = floor((width - CGImageGetHeight(*&self->_progressXDelta)) * 0.5);
      v26 = v7 + v21 + CGImageGetHeight(*&self->_progressXDelta) + (*&self->_sideways * -12.0);
    }

    else
    {
      if (width <= 1136.0)
      {
        if (width <= 960.0)
        {
          self->_progressWidth = 592.0;
          v21 = 364.0;
        }

        else
        {
          self->_progressWidth = 680.0;
          v21 = 452.0;
        }

        goto LABEL_72;
      }

      v21 = floor(v22 * -18.5) + floor((width - CGImageGetHeight(*&self->_progressXDelta)) * 0.5);
      v26 = v21 + CGImageGetHeight(*&self->_progressXDelta) + (*&self->_sideways * 35.0);
    }

    self->_progressWidth = ceil(v26);
LABEL_72:
    v20 = ceil(v24);
    v32 = (*&self->_sideways * 4.0);
    self->_progressHeight = self->_displaySize.height + self->_progressYDelta * -2.0;
    *&self->_forceInverted = v32;
    goto LABEL_96;
  }

  if (v18 == 4)
  {
    v20 = ceil((self->_displaySize.height - CGImageGetWidth(v17)) * 0.5);
    v21 = ceil((self->_framebufferSize.width - CGImageGetHeight(*&self->_progressXDelta)) * 0.5);
    self->_progressYDelta = ceil(self->_displaySize.height * 0.15625);
    v27 = CGImageGetHeight(*&self->_progressXDelta);
    v28 = self->_displaySize.height + self->_progressYDelta * -2.0;
    self->_progressWidth = v21 + v27 + ceil(self->_framebufferSize.width * 0.037037037);
    self->_progressHeight = v28;
    *&self->_forceInverted = (*&self->_sideways * 4.0);
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progressWidth];
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progressHeight];
    [MEMORY[0x277CCABB0] numberWithDouble:*&self->_forceInverted];
    v56 = v55 = v31;
    v53 = v29;
    v54 = v30;
    _DMLogFunc();

    goto LABEL_96;
  }

  if (v18 != 6)
  {
    v20 = ceil((self->_displaySize.height - CGImageGetWidth(v17)) * 0.5);
    v33 = self->_framebufferSize.width;
    v34 = CGImageGetHeight(*&self->_progressXDelta);
    v35 = vcvtq_f64_f32(vmul_n_f32(0x40800000436F0000, *&self->_sideways));
    *&self->_progressHeight = v35;
    v21 = ceil((v33 - v34) * 0.5);
    v36 = ceil((self->_displaySize.height - v35.f64[0]) * 0.5);
    v35.f64[0] = v15 + ceil(self->_framebufferSize.width * 0.5);
    self->_progressYDelta = v36;
    self->_progressWidth = v35.f64[0];
    goto LABEL_96;
  }

  v19 = *&self->_isSecurityResearchDevice;
  if (v19 > 26)
  {
    if (v19 <= 33)
    {
      if (v19 == 27)
      {
        v20 = 131.0;
        v21 = 153.0;
        goto LABEL_96;
      }

      if (v19 == 29)
      {
        v20 = 155.0;
        v21 = 190.0;
        goto LABEL_96;
      }
    }

    else if ((v19 - 34) < 2 || v19 == 38)
    {
      goto LABEL_95;
    }
  }

  else
  {
    if (v19 > 15)
    {
      if (v19 != 16)
      {
        if (v19 == 17)
        {
          v20 = 135.0;
          v21 = 155.0;
          goto LABEL_96;
        }

        if (v19 == 26)
        {
          v20 = 147.0;
          v21 = 173.0;
          goto LABEL_96;
        }

        goto LABEL_94;
      }

      v20 = 122.0;
LABEL_92:
      v21 = 137.0;
      goto LABEL_96;
    }

    if (v19 == 12)
    {
      v20 = 113.0;
      goto LABEL_92;
    }

    if (v19 == 13)
    {
      v20 = 99.0;
      v21 = 119.0;
      goto LABEL_96;
    }
  }

LABEL_94:
  _DMLogFunc();
LABEL_95:
  v21 = 0.0;
  v20 = 0.0;
LABEL_96:
  if (BYTE2(self->_progressLayer) == 1)
  {
    v37 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    statusTextLayer = self->_statusTextLayer;
    self->_statusTextLayer = v37;

    if (self->_screenClass == 6)
    {
      v39 = *&self->_displaySize.height;
      __asm { FMOV            V0.2D, #0.5 }

      v45 = vmulq_f64(v39, _Q0);
      *&progressWidth = *&vsubq_f64(vdupq_laneq_s64(v45, 1), v45);
      v47 = self->_statusTextLayer;
      progressYDelta = 0.0;
      v49 = self->_displaySize.height;
    }

    else
    {
      progressYDelta = self->_progressYDelta;
      progressWidth = self->_progressWidth;
      v39.f64[0] = self->_progressHeight;
      v49 = *&self->_forceInverted;
      v47 = self->_statusTextLayer;
    }

    [(CATextLayer *)v47 setFrame:progressYDelta, progressWidth, v39.f64[0], v49, v53, v54, v55, v56];
    [(CATextLayer *)self->_statusTextLayer setDelegate:self];
    [(CATextLayer *)self->_statusTextLayer setNeedsDisplay];
    [(CALayer *)self->_appleLogoAssetLayer addSublayer:self->_statusTextLayer];
  }

  layer = [MEMORY[0x277CD9ED0] layer];
  x = self->_appleLogoFrameWithinAsset.origin.x;
  *&self->_appleLogoFrameWithinAsset.origin.x = layer;

  [*&self->_appleLogoFrameWithinAsset.origin.x setContents:*&self->_progressXDelta];
  v52 = CGImageGetWidth(*&self->_progressXDelta);
  [*&self->_appleLogoFrameWithinAsset.origin.x setFrame:{v20, v21, v52, CGImageGetHeight(*&self->_progressXDelta)}];
  [(CALayer *)self->_appleLogoAssetLayer addSublayer:*&self->_appleLogoFrameWithinAsset.origin.x];
  if (BYTE1(self->_framebufferListenerToken) == 1)
  {

    [(PUIProgressWindow *)self _updateIOSurface];
  }
}

- (void)_drawProgressLayerInContext:(CGContext *)context
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_screenClass == 6)
  {
    v5 = self->_displaySize.height * 0.5;
    v6 = *&self->_isSecurityResearchDevice;
    v7 = 5.5;
    v8 = v6 > 0x22;
    v9 = (1 << v6) & 0x408012000;
    if (v8 || v9 == 0)
    {
      v7 = 6.0;
    }

    v11 = v5 - v7 * *&self->_sideways;
    CGContextSaveGState(context);
    *components = xmmword_260E8DEA8;
    v34 = unk_260E8DEB8;
    v32[0] = xmmword_260E8DEC8;
    v32[1] = unk_260E8DED8;
    CGContextSetLineWidth(context, *&self->_sideways);
    [(CATextLayer *)self->_statusTextLayer bounds:xmmword_260E8DEC8];
    v13 = v12 * 0.5;
    [(CATextLayer *)self->_statusTextLayer bounds];
    CGContextTranslateCTM(context, v13, v14 * 0.5);
    CGContextRotateCTM(context, 3.14159265);
    v15 = llroundf(*&self->_appleLogo * 100.0);
    CGContextSetStrokeColor(context, components);
    v16 = 0;
    v17 = 0;
    do
    {
      if (v16 > v15 && (v17 & 1) == 0)
      {
        CGContextSetStrokeColor(context, v32);
        v17 = 1;
      }

      CGContextMoveToPoint(context, 0.0, v11);
      CGContextAddLineToPoint(context, 0.0, v5);
      CGContextStrokePath(context);
      CGContextRotateCTM(context, 0.0628318531);
      ++v16;
    }

    while (v16 != 100);
    CGContextRestoreGState(context);
    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    progressHeight = self->_progressHeight;
    v19 = *&self->_forceInverted;
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = progressHeight;
    v37.size.height = v19;
    v21 = CGPathCreateWithRoundedRect(v37, v19 * 0.5, v19 * 0.5, 0);
    v22 = floor(self->_progressHeight * *&self->_appleLogo);
    if (*&self->_sideways == 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = self->_progressHeight * *&self->_appleLogo;
    }

    CGContextSaveGState(context);
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = v23;
    v38.size.height = v19;
    CGContextClipToRect(context, v38);
    CGContextAddPath(context, v21);
    if (BYTE1(self->_progressLayer) == 1)
    {
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
    }

    else
    {
      v24 = 1.0;
      v25 = 1.0;
      v26 = 1.0;
    }

    CGContextSetRGBFillColor(context, v24, v25, v26, 1.0);
    CGContextFillPath(context);
    CGContextRestoreGState(context);
    v39.size.width = progressHeight - v23;
    v39.origin.y = 0.0;
    v39.origin.x = v23;
    v39.size.height = v19;
    CGContextClipToRect(context, v39);
    CGContextAddPath(context, v21);
    if (BYTE1(self->_progressLayer) == 1)
    {
      v27 = 0.2;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
    }

    else
    {
      v27 = 0.3;
      v28 = 1.0;
      v29 = 1.0;
      v30 = 1.0;
    }

    CGContextSetRGBFillColor(context, v28, v29, v30, v27);
    CGContextFillPath(context);
    v31 = *MEMORY[0x277D85DE8];

    CGPathRelease(v21);
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (self->_statusTextLayer == layer)
  {
    [(PUIProgressWindow *)self _drawProgressLayerInContext:context];
  }
}

- (CGImage)_createImageWithName:(const char *)name scale:(int)scale displayHeight:(int)height
{
  v24 = *MEMORY[0x277D85DE8];
  _productSuffix = [(PUIProgressWindow *)self _productSuffix];
  if (_productSuffix)
  {
    v8 = strcmp(_productSuffix, [(PUIProgressWindow *)self _appleTVProductSuffix]) == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourcePath = [v9 resourcePath];
  uTF8String = [resourcePath UTF8String];

  if (!_productSuffix)
  {
    goto LABEL_27;
  }

  if (v8)
  {
    snprintf(__str, 0x400uLL, "%s/%s@%d~%s.png");
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s/%s@%dx~%s.png");
  }

  _DMLogFunc();
  if (access(__str, 0))
  {
LABEL_27:
    if (v8)
    {
      snprintf(__str, 0x400uLL, "%s/%s@%d.png");
    }

    else
    {
      snprintf(__str, 0x400uLL, "%s/%s@%dx.png");
    }

    _DMLogFunc();
    if (access(__str, 0))
    {
      snprintf(__str, 0x400uLL, "%s/%s~%s.png", uTF8String, name, _productSuffix);
      _DMLogFunc();
      if (access(__str, 0))
      {
        _DMLogFunc();
        v12 = +[PUIProgressWindow _errorDescriptionForAppleLogoNotFound];
        [(PUIProgressWindow *)self _appendErrorDescriptionWithString:v12];

LABEL_21:
        ImageAtIndex = 0;
        goto LABEL_24;
      }
    }
  }

  _DMLogFunc();
  v13 = strlen(__str);
  v14 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], __str, v13, 0);
  if (!v14)
  {
    _DMLogFunc();
    goto LABEL_21;
  }

  v15 = v14;
  v21 = *MEMORY[0x277CD3618];
  v22 = *MEMORY[0x277CBED28];
  v16 = CGImageSourceCreateWithURL(v14, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:{1, __str}]);
  if (v16)
  {
    v17 = v16;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
    if (!ImageAtIndex)
    {
      _DMLogFunc();
    }

    CFRelease(v17);
  }

  else
  {
    _DMLogFunc();
    ImageAtIndex = 0;
  }

  CFRelease(v15);
LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
  return ImageAtIndex;
}

- (CGRect)appleLogoFrameWithinAsset
{
  y = self->_appleLogoFrameWithinAsset.origin.y;
  width = self->_appleLogoFrameWithinAsset.size.width;
  height = self->_appleLogoFrameWithinAsset.size.height;
  isa = self[1].super.isa;
  result.size.height = *&isa;
  result.size.width = height;
  result.origin.y = width;
  result.origin.x = y;
  return result;
}

@end