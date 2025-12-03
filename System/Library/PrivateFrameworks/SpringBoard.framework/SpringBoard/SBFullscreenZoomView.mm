@interface SBFullscreenZoomView
- (SBFullscreenZoomView)initWithView:(id)view containingSceneSnapshot:(id)snapshot forDisplayConfiguration:(id)configuration;
- (id)_initWithFrame:(CGRect)frame;
- (id)_initWithView:(id)view displayConfiguration:(id)configuration;
- (id)initWithContainingBounds:(double)bounds contentFrame:(double)frame statusBarFrame:(double)barFrame snapshot:(double)snapshot snapshotOrientation:(double)orientation interfaceOrientation:(double)interfaceOrientation doubleHeightStatusBar:(double)bar allowStatusBarToOverlap:(uint64_t)self0 useLargerCornerRadii:(void *)self1 preventSplit:(uint64_t)self2 needsZoomFilter:(uint64_t)self3 asyncDecodeImage:(uint64_t)self4 forJail:(uint64_t)self5 hasOrientationMismatchForClassicApp:(uint64_t)self6;
- (void)_addBlackBackground;
@end

@implementation SBFullscreenZoomView

- (id)_initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SBFullscreenZoomView;
  v3 = [(SBZoomView *)&v7 _initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [v3 layer];
    [layer setEdgeAntialiasingMask:0];
    [layer setName:@"zoomView"];
    SBSetShouldRasterizeLayer(layer, 1);
  }

  return v4;
}

- (id)_initWithView:(id)view displayConfiguration:(id)configuration
{
  viewCopy = view;
  [configuration bounds];
  v7 = [(SBFullscreenZoomView *)self _initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    layer = [v7 layer];
    SBSetShouldRasterizeLayer(layer, 0);

    [v8[51] addSubview:viewCopy];
  }

  return v8;
}

- (id)initWithContainingBounds:(double)bounds contentFrame:(double)frame statusBarFrame:(double)barFrame snapshot:(double)snapshot snapshotOrientation:(double)orientation interfaceOrientation:(double)interfaceOrientation doubleHeightStatusBar:(double)bar allowStatusBarToOverlap:(uint64_t)self0 useLargerCornerRadii:(void *)self1 preventSplit:(uint64_t)self2 needsZoomFilter:(uint64_t)self3 asyncDecodeImage:(uint64_t)self4 forJail:(uint64_t)self5 hasOrientationMismatchForClassicApp:(uint64_t)self6
{
  radiiCopy = radii;
  v38 = [self _initWithFrame:{a2, bounds, frame, barFrame}];
  v39 = v38;
  if (v38)
  {
    layer = [v38 layer];
    SBSetShouldRasterizeLayer(layer, 0);

    v41 = [radiiCopy imageForInterfaceOrientation:split generationOptions:1];
    if (v41)
    {
      v42 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v41];
      if ([SBApp homeScreenRotationStyleWantsUIKitRotation])
      {
        v43 = a22 == 0;
      }

      else
      {
        v43 = 1;
      }

      if (!v43 && [v41 CGImage])
      {
        v44 = dispatch_get_global_queue(-32768, 0);
        v50 = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __284__SBFullscreenZoomView_initWithContainingBounds_contentFrame_statusBarFrame_snapshot_snapshotOrientation_interfaceOrientation_doubleHeightStatusBar_allowStatusBarToOverlap_useLargerCornerRadii_preventSplit_needsZoomFilter_asyncDecodeImage_forJail_hasOrientationMismatchForClassicApp___block_invoke;
        v53 = &unk_2783A92D8;
        v54 = v41;
        v55 = v42;
        dispatch_async(v44, &v50);
      }

      [v39[51] setFrame:{snapshot, orientation, interfaceOrientation, bar, v50, v51, v52, v53}];
      if (a24)
      {
        [v39[51] center];
        [v39[51] setCenter:{v46, v45}];
      }

      [v39[51] bounds];
      [v42 setFrame:?];
      layer2 = [v42 layer];
      [layer2 setAllowsDisplayCompositing:0];

      [v39[51] addSubview:v42];
      if (SBFEffectiveHomeButtonType() == 2 && a23)
      {
        [v39[51] sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpaceForInterfaceOrientation:filter allowStatusBarToOverlap:jail useDeviceCornerRadius:app];
      }

      sbs_hasAlpha = [v41 sbs_hasAlpha];
      if ((a23 & 1) == 0 && ([radiiCopy isImageOpaque] & sbs_hasAlpha) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [0 sbs_hasAlpha];
    }

    [v39 _addBlackBackground];
LABEL_19:
  }

  return v39;
}

void __284__SBFullscreenZoomView_initWithContainingBounds_contentFrame_statusBarFrame_snapshot_snapshotOrientation_interfaceOrientation_doubleHeightStatusBar_allowStatusBarToOverlap_useLargerCornerRadii_preventSplit_needsZoomFilter_asyncDecodeImage_forJail_hasOrientationMismatchForClassicApp___block_invoke(uint64_t a1)
{
  [*(a1 + 32) size];
  UIGraphicsBeginImageContextWithOptions(v11, 1, 0.0);
  v2 = *(a1 + 32);
  [v2 size];
  v4 = v3;
  [*(a1 + 32) size];
  [v2 drawInRect:{0.0, 0.0, v4, v5}];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __284__SBFullscreenZoomView_initWithContainingBounds_contentFrame_statusBarFrame_snapshot_snapshotOrientation_interfaceOrientation_doubleHeightStatusBar_allowStatusBarToOverlap_useLargerCornerRadii_preventSplit_needsZoomFilter_asyncDecodeImage_forJail_hasOrientationMismatchForClassicApp___block_invoke_2;
  v8[3] = &unk_2783A92D8;
  v9 = *(a1 + 40);
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (SBFullscreenZoomView)initWithView:(id)view containingSceneSnapshot:(id)snapshot forDisplayConfiguration:(id)configuration
{
  viewCopy = view;
  snapshotCopy = snapshot;
  v10 = MEMORY[0x277CF0D78];
  configurationCopy = configuration;
  v12 = [v10 alloc];
  [configurationCopy bounds];
  v13 = [v12 initWithFrame:?];
  v14 = [(SBFullscreenZoomView *)self _initWithView:v13 displayConfiguration:configurationCopy];

  if (v14)
  {
    iOSurface = [snapshotCopy IOSurface];
    surface = v14->_surface;
    v14->_surface = iOSurface;

    [v13 addContentView:viewCopy];
    configuration = [snapshotCopy configuration];
    settings = [configuration settings];
    [v13 setContentOrientation:{objc_msgSend(settings, "interfaceOrientation")}];
  }

  return v14;
}

- (void)_addBlackBackground
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(SBFullscreenZoomView *)self setBackgroundColor:blackColor];

  layer = [(SBFullscreenZoomView *)self layer];
  SBSetShouldRasterizeLayer(layer, 1);
  [layer setAllowsGroupOpacity:1];
}

@end