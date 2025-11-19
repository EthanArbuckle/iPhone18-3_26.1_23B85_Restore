@interface SBFullscreenZoomView
- (SBFullscreenZoomView)initWithView:(id)a3 containingSceneSnapshot:(id)a4 forDisplayConfiguration:(id)a5;
- (id)_initWithFrame:(CGRect)a3;
- (id)_initWithView:(id)a3 displayConfiguration:(id)a4;
- (id)initWithContainingBounds:(double)a3 contentFrame:(double)a4 statusBarFrame:(double)a5 snapshot:(double)a6 snapshotOrientation:(double)a7 interfaceOrientation:(double)a8 doubleHeightStatusBar:(double)a9 allowStatusBarToOverlap:(uint64_t)a10 useLargerCornerRadii:(void *)a11 preventSplit:(uint64_t)a12 needsZoomFilter:(uint64_t)a13 asyncDecodeImage:(uint64_t)a14 forJail:(uint64_t)a15 hasOrientationMismatchForClassicApp:(uint64_t)a16;
- (void)_addBlackBackground;
@end

@implementation SBFullscreenZoomView

- (id)_initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SBFullscreenZoomView;
  v3 = [(SBZoomView *)&v7 _initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 layer];
    [v5 setEdgeAntialiasingMask:0];
    [v5 setName:@"zoomView"];
    SBSetShouldRasterizeLayer(v5, 1);
  }

  return v4;
}

- (id)_initWithView:(id)a3 displayConfiguration:(id)a4
{
  v6 = a3;
  [a4 bounds];
  v7 = [(SBFullscreenZoomView *)self _initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 layer];
    SBSetShouldRasterizeLayer(v9, 0);

    [v8[51] addSubview:v6];
  }

  return v8;
}

- (id)initWithContainingBounds:(double)a3 contentFrame:(double)a4 statusBarFrame:(double)a5 snapshot:(double)a6 snapshotOrientation:(double)a7 interfaceOrientation:(double)a8 doubleHeightStatusBar:(double)a9 allowStatusBarToOverlap:(uint64_t)a10 useLargerCornerRadii:(void *)a11 preventSplit:(uint64_t)a12 needsZoomFilter:(uint64_t)a13 asyncDecodeImage:(uint64_t)a14 forJail:(uint64_t)a15 hasOrientationMismatchForClassicApp:(uint64_t)a16
{
  v37 = a11;
  v38 = [a1 _initWithFrame:{a2, a3, a4, a5}];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 layer];
    SBSetShouldRasterizeLayer(v40, 0);

    v41 = [v37 imageForInterfaceOrientation:a12 generationOptions:1];
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

      [v39[51] setFrame:{a6, a7, a8, a9, v50, v51, v52, v53}];
      if (a24)
      {
        [v39[51] center];
        [v39[51] setCenter:{v46, v45}];
      }

      [v39[51] bounds];
      [v42 setFrame:?];
      v47 = [v42 layer];
      [v47 setAllowsDisplayCompositing:0];

      [v39[51] addSubview:v42];
      if (SBFEffectiveHomeButtonType() == 2 && a23)
      {
        [v39[51] sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpaceForInterfaceOrientation:a13 allowStatusBarToOverlap:a15 useDeviceCornerRadius:a16];
      }

      v48 = [v41 sbs_hasAlpha];
      if ((a23 & 1) == 0 && ([v37 isImageOpaque] & v48) != 1)
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

- (SBFullscreenZoomView)initWithView:(id)a3 containingSceneSnapshot:(id)a4 forDisplayConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CF0D78];
  v11 = a5;
  v12 = [v10 alloc];
  [v11 bounds];
  v13 = [v12 initWithFrame:?];
  v14 = [(SBFullscreenZoomView *)self _initWithView:v13 displayConfiguration:v11];

  if (v14)
  {
    v15 = [v9 IOSurface];
    surface = v14->_surface;
    v14->_surface = v15;

    [v13 addContentView:v8];
    v17 = [v9 configuration];
    v18 = [v17 settings];
    [v13 setContentOrientation:{objc_msgSend(v18, "interfaceOrientation")}];
  }

  return v14;
}

- (void)_addBlackBackground
{
  v3 = [MEMORY[0x277D75348] blackColor];
  [(SBFullscreenZoomView *)self setBackgroundColor:v3];

  v4 = [(SBFullscreenZoomView *)self layer];
  SBSetShouldRasterizeLayer(v4, 1);
  [v4 setAllowsGroupOpacity:1];
}

@end