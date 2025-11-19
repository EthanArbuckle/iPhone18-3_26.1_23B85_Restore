@interface VKCImageSubjectBaseView
- (BOOL)subjectExistsAtPoint:(CGPoint)a3;
- (CALayer)pulseLayer;
- (CGRect)imageBounds;
- (CGRect)subjectFrame;
- (CGSize)imageSize;
- (NSIndexSet)activeSubjectIndexSet;
- (NSIndexSet)allSubjectsIndexSet;
- (UIBezierPath)normalizedSubjectPath;
- (UIBezierPath)subjectPathInBoundsCoordinates;
- (VKCImageAnalysisResult)analysisResult;
- (VKCImageSubjectBaseView)initWithFrame:(CGRect)a3;
- (VKCImageSubjectBaseViewDelegate)baseSubjectDelegate;
- (id)cachedSubjectForIndexSet:(id)a3;
- (id)convertNormalizedPathToBoundsCoordinates:(id)a3;
- (id)imageSubjectPathWithIndexes:(id)a3;
- (id)indexOfSubjectAtPoint:(CGPoint)a3;
- (id)loadPulsePackage;
- (id)opacityAnimationFromValue:(double)a3 toValue:(double)a4;
- (void)_loadSubjectMaskIfNecessaryWithCompletion:(id)a3;
- (void)_updateForImageBoundsChange;
- (void)clearCachedSubject;
- (void)configureMaskForCurrentSubjectContextWithLayer:(id)a3 animated:(BOOL)a4;
- (void)configurePulseAnimationWithViewScale:(double)a3;
- (void)configureSubjectLiftAtPoint:(CGPoint)a3;
- (void)loadImageSubjectIfNecessaryWithCompletion:(id)a3;
- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4;
- (void)loadPulsePackage;
- (void)loadSubjectMaskIfNecessaryWithCompletion:(id)a3;
- (void)sendSubjectAnalyticsEventWithEventType:(int64_t)a3 interactionType:(int64_t)a4 subjectFound:(BOOL)a5 processingDuration:(double)a6;
- (void)setActiveSubjectIndexSet:(id)a3 animated:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCachedSubject:(id)a3 forIndexSet:(id)a4;
- (void)setContentsRect:(CGRect)a3;
- (void)setCustomImageForRemoveBackground:(id)a3;
- (void)setGlowLayerActive:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setRecognitionResult:(id)a3;
- (void)setSubjectContext:(id)a3;
- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3;
- (void)showPulseAnimationWithViewScale:(double)a3;
- (void)updateDimmingColorForAppearance;
- (void)updateForImageBoundsChangeIfNecessary;
- (void)updateGlowLayerForActiveSubjectIndexSet;
- (void)updateMaskForCurrentSubjectIndexesAnimated:(BOOL)a3;
@end

@implementation VKCImageSubjectBaseView

- (VKCImageSubjectBaseView)initWithFrame:(CGRect)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = VKCImageSubjectBaseView;
  v3 = [(VKCImageBaseOverlayView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6979398]);
    colorLayer = v3->_colorLayer;
    v3->_colorLayer = v4;

    [(VKCImageSubjectBaseView *)v3 setUsesLightDimmingViewInLightMode:0];
    v6 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageHighlightLayer = v3->_imageHighlightLayer;
    v3->_imageHighlightLayer = v6;

    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageHighlightLayerMask = v3->_imageHighlightLayerMask;
    v3->_imageHighlightLayerMask = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    intersectionMask = v3->_intersectionMask;
    v3->_intersectionMask = v10;

    [(CAShapeLayer *)v3->_intersectionMask setHidden:1];
    [(CALayer *)v3->_imageHighlightLayerMask addSublayer:v3->_intersectionMask];
    [(CALayer *)v3->_imageHighlightLayer setMask:v3->_imageHighlightLayerMask];
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageHighlightLayerContainerShadow = v3->_imageHighlightLayerContainerShadow;
    v3->_imageHighlightLayerContainerShadow = v12;

    v14 = objc_alloc_init(VKCImageSubjectGlowLayer);
    glowLayer = v3->_glowLayer;
    v3->_glowLayer = v14;

    v16 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageHighlightLayerContainer = v3->_imageHighlightLayerContainer;
    v3->_imageHighlightLayerContainer = v16;

    [(CALayer *)v3->_imageHighlightLayerContainer setAllowsGroupOpacity:1];
    [(CALayer *)v3->_imageHighlightLayerContainerShadow setAllowsGroupOpacity:1];
    v18 = [MEMORY[0x1E69DC888] blackColor];
    -[CALayer setShadowColor:](v3->_imageHighlightLayerContainer, "setShadowColor:", [v18 CGColor]);

    v19 = [MEMORY[0x1E69DC888] blackColor];
    -[CALayer setShadowColor:](v3->_imageHighlightLayerContainerShadow, "setShadowColor:", [v19 CGColor]);

    [(CALayer *)v3->_imageHighlightLayerContainer addSublayer:v3->_imageHighlightLayerContainerShadow];
    [(CALayer *)v3->_imageHighlightLayerContainerShadow addSublayer:v3->_imageHighlightLayer];
    [(CALayer *)v3->_imageHighlightLayer setOpacity:0.0];
    [(CALayer *)v3->_imageHighlightLayerContainer setOpacity:0.0];
    LODWORD(v20) = 1.0;
    [(CALayer *)v3->_imageHighlightLayerContainerShadow setOpacity:v20];
    [(CALayer *)v3->_colorLayer setOpacity:0.0];
    v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v21 setValue:&unk_1F2C390C8 forKeyPath:*MEMORY[0x1E6979BA8]];
    v40[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v23 = [(CALayer *)v3->_imageHighlightLayer mask];
    [v23 setFilters:v22];

    v24 = [(VKCImageSubjectBaseView *)v3 layer];
    [v24 addSublayer:v3->_colorLayer];

    v25 = [(VKCImageSubjectBaseView *)v3 layer];
    [v25 addSublayer:v3->_imageHighlightLayerContainer];

    v26 = [(VKCImageSubjectBaseView *)v3 layer];
    [v26 addSublayer:v3->_glowLayer];

    v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v28 = dispatch_queue_create("VKImageSubjectBaseViewBackground", v27);
    backgroundQueue = v3->_backgroundQueue;
    v3->_backgroundQueue = v28;

    v30 = _os_feature_enabled_impl();
    v3->_subjectHighlightFeatureFlagEnabled = v30;
    if (v30)
    {
      v31 = objc_alloc_init(VKCRemoveBackgroundRequestHandler);
      removeBackgroundRequestHandler = v3->_removeBackgroundRequestHandler;
      v3->_removeBackgroundRequestHandler = v31;
    }

    objc_initWeak(&location, v3);
    v33 = dispatch_time(0, 1000000000);
    v34 = v3->_backgroundQueue;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __41__VKCImageSubjectBaseView_initWithFrame___block_invoke;
    v36[3] = &unk_1E7BE4280;
    objc_copyWeak(&v37, &location);
    dispatch_after(v33, v34, v36);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __41__VKCImageSubjectBaseView_initWithFrame___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x1E695F620]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMaskLoadContext:v3];
}

- (UIBezierPath)normalizedSubjectPath
{
  v3 = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v4 = [v3 normalizedPathForActiveSubjectsWithContentsRect:1 topLevelOnly:?];

  return v4;
}

- (UIBezierPath)subjectPathInBoundsCoordinates
{
  v3 = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v4 = [v3 normalizedPathForActiveSubjectsWithContentsRect:1 topLevelOnly:?];

  v5 = [(VKCImageSubjectBaseView *)self convertNormalizedPathToBoundsCoordinates:v4];

  return v5;
}

- (id)convertNormalizedPathToBoundsCoordinates:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  if (v4)
  {
    [(VKCImageSubjectBaseView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v4 copy];

    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, v11, v13);
    CGAffineTransformMakeTranslation(&t2, v7, v9);
    v16 = v19;
    CGAffineTransformConcat(&v18, &v16, &t2);
    v19 = v18;
    [v14 vk_applyTransform:&v18];
    v5 = v14;
  }

  return v5;
}

- (CALayer)pulseLayer
{
  v2 = [(VKCImageSubjectBaseView *)self pulsePackage];
  v3 = [v2 rootLayer];

  return v3;
}

- (void)setGlowLayerActive:(BOOL)a3
{
  v44 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(VKCImageSubjectBaseView *)self subjectContext];

    if (v5)
    {
      if (self->_glowLayerActive == v4)
      {
        return;
      }

      self->_glowLayerActive = v4;
      v6 = [(VKCImageSubjectBaseView *)self window];
      v7 = [v6 screen];
      [v7 scale];
      v9 = v8;

      v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
        v12 = [v11 vk_indexString];
        *buf = 138412546;
        v41 = v12;
        v42 = 2112;
        v43 = self;
        _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "Activating glow for indexes: %@, : %@", buf, 0x16u);
      }

      v13 = [(VKCImageSubjectBaseView *)self subjectContext];
      v14 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
      [(VKCImageBaseOverlayView *)self contentsRect];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(VKCImageSubjectBaseView *)self setActiveGlowLayerIndexSet:v14];
      if ([v14 count]== 1)
      {
        v23 = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
        v24 = [(VKCImageSubjectBaseView *)self glowLayer];
        [(UIView *)self vk_viewPointRatioFromWindow];
        [v24 beginAnimationWithViewScale:v23 screenScale:0 path:1 index:&unk_1F2C38E18 count:? identifier:?];
      }

      else
      {
        if (![v14 count])
        {
          v30 = [v13 allSubjectIndexes];

          v14 = v30;
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __46__VKCImageSubjectBaseView_setGlowLayerActive___block_invoke;
        v31[3] = &unk_1E7BE4C30;
        v35 = v16;
        v36 = v18;
        v37 = v20;
        v38 = v22;
        v32 = v13;
        v33 = self;
        v39 = v9;
        v14 = v14;
        v34 = v14;
        [v14 enumerateIndexesUsingBlock:v31];

        v23 = v32;
      }

      goto LABEL_15;
    }

    v25 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = self;
      _os_log_impl(&dword_1B4335000, v25, OS_LOG_TYPE_DEFAULT, "Trying to set the glow layer active, but no subject context exists: %@", buf, 0xCu);
    }
  }

  if (!self->_glowLayerActive)
  {
    return;
  }

  self->_glowLayerActive = 0;
  v26 = [(VKCImageSubjectBaseView *)self glowLayer];
  [v26 stopAnimationAnimated:1];

  [(VKCImageSubjectBaseView *)self setActiveGlowLayerIndexSet:0];
  v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
    v28 = [v27 vk_indexString];
    *buf = 138412546;
    v41 = v28;
    v42 = 2112;
    v43 = self;
    _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_DEFAULT, "Deactivating glow for indexes: %@, %@", buf, 0x16u);
  }

  v13 = v14;
LABEL_15:

  v29 = [(VKCImageSubjectBaseView *)self baseSubjectDelegate];
  [v29 subjectBaseViewGlowLayerActiveDidChange:self];

  [(VKCImageSubjectBaseView *)self sendSubjectAnalyticsEventWithEventType:1 interactionType:0 subjectFound:1 processingDuration:0.0];
}

void __46__VKCImageSubjectBaseView_setGlowLayerActive___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v13 = [v4 normalizedPathForSubjectAtIndex:v5 contentsRect:1 topLevelOnly:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  v6 = [*(a1 + 40) convertNormalizedPathToBoundsCoordinates:v13];
  v7 = [*(a1 + 40) glowLayer];
  [*(a1 + 40) vk_viewPointRatioFromWindow];
  v9 = v8;
  v10 = *(a1 + 88);
  v11 = [*(a1 + 48) count];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v7 beginAnimationWithViewScale:v6 screenScale:a2 path:v11 index:v12 count:v9 identifier:v10];
}

- (void)updateGlowLayerForActiveSubjectIndexSet
{
  v3 = [(VKCImageSubjectBaseView *)self subjectContext];
  v4 = [(VKCImageSubjectBaseView *)self activeGlowLayerIndexSet];
  v5 = [v3 convertIndexSetToConcreteSubjectIndexes:v4];

  v6 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  v7 = [v3 convertIndexSetToConcreteSubjectIndexes:v6];

  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v5];
  [v10 addIndexes:v7];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke;
  v44[3] = &unk_1E7BE4C58;
  v11 = v5;
  v45 = v11;
  v12 = v7;
  v46 = v12;
  v13 = v8;
  v47 = v13;
  v14 = v9;
  v48 = v14;
  [v10 enumerateIndexesUsingBlock:v44];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke_2;
  v43[3] = &unk_1E7BE4C80;
  v43[4] = self;
  [v13 enumerateIndexesUsingBlock:v43];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(VKCImageSubjectBaseView *)self window];
  v24 = [v23 screen];
  [v24 scale];
  v26 = v25;

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v27 = [v14 count];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke_3;
  v32 = &unk_1E7BE4CA8;
  v28 = v3;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  v39 = v22;
  v33 = v28;
  v34 = self;
  v40 = v26;
  v35 = v42;
  v41 = v27;
  [v14 enumerateIndexesUsingBlock:&v29];
  [(VKCImageSubjectBaseView *)self setActiveGlowLayerIndexSet:v12, v29, v30, v31, v32];

  _Block_object_dispose(v42, 8);
}

uint64_t __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) containsIndex:a2];
  result = [*(a1 + 40) containsIndex:a2];
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 48;
  }

  else
  {
    if (v4 & 1 | ((result & 1) == 0))
    {
      return result;
    }

    v7 = 56;
  }

  v8 = *(a1 + v7);

  return [v8 addIndex:a2];
}

void __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) glowLayer];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v4 stopAnimationForIdentifier:v3 animated:1];
}

void __66__VKCImageSubjectBaseView_updateGlowLayerForActiveSubjectIndexSet__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v15 = [v4 normalizedPathForSubjectAtIndex:v5 contentsRect:1 topLevelOnly:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  v6 = [*(a1 + 40) convertNormalizedPathToBoundsCoordinates:v15];
  v7 = [*(a1 + 40) glowLayer];
  [*(a1 + 40) vk_viewPointRatioFromWindow];
  v9 = v8;
  v10 = *(a1 + 88);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = *(a1 + 96);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v7 beginAnimationWithViewScale:v6 screenScale:v12 path:v13 index:v14 count:v9 identifier:v10];
}

- (void)setActiveSubjectIndexSet:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 vk_indexString];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Setting Active subject indexes: %@, %@", &v11, 0x16u);
  }

  v9 = [v6 copy];
  v10 = [(VKCImageSubjectBaseView *)self subjectContext];
  [v10 setActiveSubjectIndexes:v9];

  [(VKCImageSubjectBaseView *)self updateMaskForCurrentSubjectIndexesAnimated:v4];
}

- (NSIndexSet)activeSubjectIndexSet
{
  v2 = [(VKCImageSubjectBaseView *)self subjectContext];
  v3 = [v2 activeSubjectIndexes];
  v4 = [v3 copy];

  return v4;
}

- (void)showPulseAnimationWithViewScale:(double)a3
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(VKCImageSubjectBaseView *)self configurePulseAnimationWithViewScale:a3];
  v33 = [(VKCImageSubjectBaseView *)self pulsePackage];
  v5 = [v33 rootLayer];
  [v5 setDisableUpdateMask:2];
  v6 = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(VKCImageSubjectBaseView *)self burstPoint];
  if (v15)
  {
    v16 = [(VKCImageSubjectBaseView *)self burstPoint];
    [v16 vk_pointValue];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = VKMCenterOfRect(v8, v10, v12, v14);
    v20 = v21;
  }

  v22 = VKMNormalizedPointInRect(v18, v20, v8, v10, v12);
  v24 = v23;
  [(VKCImageSubjectBaseView *)self configureSubjectLiftAtPoint:v18, v20];
  v25 = VKMDistance(v22, v24, 0.5, 0.5);
  v26 = (fmax(fmin(v25 + v25, 1.0), 0.0) + 1.0) * 0.5;
  *&v26 = v26;
  [v5 setSpeed:v26];
  v27 = [(VKCImageSubjectBaseView *)self layer];
  v28 = [v5 superlayer];
  [v27 convertPoint:v28 toLayer:{v18, v20}];
  v30 = v29;
  v32 = v31;

  [v5 setPosition:{v30, v32}];
  [v5 setBeginTime:CACurrentMediaTime()];
  [MEMORY[0x1E6979518] commit];
}

- (void)configurePulseAnimationWithViewScale:(double)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = [(VKCImageSubjectBaseView *)self pulsePackage];
  if (v4)
  {
    v5 = v4;
    goto LABEL_4;
  }

  v5 = [(VKCImageSubjectBaseView *)self loadPulsePackage];
  [(VKCImageSubjectBaseView *)self setPulsePackage:v5];
  v6 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
  v7 = [v5 rootLayer];
  [v6 addSublayer:v7];

  if (v5)
  {
LABEL_4:
    v8 = [v5 rootLayer];
    v9 = [v5 publishedObjectWithName:@"sharpLayer"];
    v10 = [v5 publishedObjectWithName:@"blurLayer"];
    v11 = v10;
    if (v8 && v9 && v10)
    {
      v12 = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v13 = [(VKCImageSubjectBaseView *)self subjectPathInBoundsCoordinates];
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      [v8 bounds];
      memset(&v31.c, 0, 32);
      if (v15 / v18 >= v17 / v19)
      {
        v20 = v15 / v18;
      }

      else
      {
        v20 = v17 / v19;
      }

      *&v31.a = 0uLL;
      v21 = VKMRandomBetween(0.0, 6.28318531);
      CGAffineTransformMakeRotation(&v31, v21);
      v30 = v31;
      [v8 setAffineTransform:&v30];
      memset(&v30, 0, sizeof(v30));
      CGAffineTransformMakeScale(&v30, v20 * 3.0, v20 * 3.0);
      v29 = v30;
      [v9 setAffineTransform:&v29];
      v29 = v30;
      [v11 setAffineTransform:&v29];
      LODWORD(v22) = 1.0;
      [v9 setOpacity:v22];
      [v9 setLineWidth:1.5];
      v23 = __64__VKCImageSubjectBaseView_configurePulseAnimationWithViewScale___block_invoke(1.5);
      v33[0] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      [v9 setFilters:v24];

      LODWORD(v25) = 1036831949;
      [v11 setOpacity:v25];
      [v11 setLineWidth:16.0];
      v26 = __64__VKCImageSubjectBaseView_configurePulseAnimationWithViewScale___block_invoke(20.0);
      v32 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [v11 setFilters:v27];

      [MEMORY[0x1E6979518] setDisableActions:v12];
    }

    else
    {
      v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [VKCImageSubjectBaseView configurePulseAnimationWithViewScale:v28];
      }
    }

    goto LABEL_15;
  }

  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [VKCImageSubjectBaseView configurePulseAnimationWithViewScale:v5];
  }

LABEL_15:
}

id __64__VKCImageSubjectBaseView_configurePulseAnimationWithViewScale___block_invoke(double a1)
{
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  [v2 setValue:v3 forKeyPath:*MEMORY[0x1E6979BA8]];

  [v2 setValue:@"low" forKey:*MEMORY[0x1E6979BA0]];

  return v2;
}

- (id)loadPulsePackage
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"SubjectPulseLayer" withExtension:@"caar"];

  v4 = *MEMORY[0x1E6979EF0];
  v9 = 0;
  v5 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v3 type:v4 options:0 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(VKCImageSubjectBaseView *)v6 loadPulsePackage];
    }
  }

  return v5;
}

- (CGSize)imageSize
{
  v2 = [(VKCImageSubjectBaseView *)self subjectContext];
  [v2 imageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setSubjectContext:(id)a3
{
  v5 = a3;
  if (self->_subjectContext != v5)
  {
    objc_storeStrong(&self->_subjectContext, a3);
    [(VKCImageSubjectBaseView *)self setBurstPoint:0];
    [(VKCImageSubjectBaseView *)self clearCachedSubject];
    subjectContext = self->_subjectContext;
    v7 = [(VKCImageSubjectBaseView *)self analysisResult];
    [v7 setCachedSubjectContext:subjectContext];

    v8 = [(VKCImageSubjectBaseView *)self customImageForRemoveBackground];
    v9 = [v8 vk_cgImage];

    v10 = [(VKCImageSubjectBaseView *)self customImageForRemoveBackground];
    v11 = [v10 vk_imageOrientation];

    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    vk_transformToImageOrientation(v11, &v21);
    if (!v9)
    {
      v12 = [(VKCImageSubjectContext *)self->_subjectContext request];
      v9 = [v12 CGImage];

      vk_transformToImageOrientation([(VKCImageSubjectContext *)self->_subjectContext imageOrientation], &v18);
      v21 = v18;
      v22 = v19;
      v23 = v20;
    }

    v13 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
    [v13 setContents:v9];

    v15 = v21;
    v16 = v22;
    v17 = v23;
    v14 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
    v18 = v15;
    v19 = v16;
    v20 = v17;
    [v14 setAffineTransform:&v18];

    [(VKCImageSubjectBaseView *)self updateMaskForCurrentSubjectIndexesAnimated:0];
    [(VKCImageSubjectBaseView *)self updateForImageBoundsChangeIfNecessary];
  }
}

- (void)configureSubjectLiftAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24 = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:x, y];
  v6 = [v24 indexOfSubjectAtNormalizedPoint:?];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v7 = [v24 normalizedPathForSubjectAtIndex:v6 contentsRect:1 topLevelOnly:?];
  [v7 bounds];
  v12 = VKMCenterOfRect(v8, v9, v10, v11);
  v14 = v13;
  v15 = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainer];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 setAnchorPoint:{v12, v14}];
  [v15 setFrame:{v17, v19, v21, v23}];
}

- (void)updateMaskForCurrentSubjectIndexesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKCImageSubjectBaseView *)self imageHighlightLayerMask];
  [(VKCImageSubjectBaseView *)self configureMaskForCurrentSubjectContextWithLayer:v5 animated:v3];
}

- (void)configureMaskForCurrentSubjectContextWithLayer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
  [v15 bounds];
  v44 = v17;
  v45 = v16;
  v42 = v19;
  v43 = v18;

  v20 = [(VKCImageSubjectBaseView *)self subjectContext];
  v21 = [(VKCImageSubjectBaseView *)self activeSubjectIndexSet];
  v22 = [v20 normalizedPathForSubjectWithIndexSet:v21 contentsRect:0 topLevelOnly:{0.0, 0.0, 1.0, 1.0}];

  memset(&v54, 0, sizeof(v54));
  CGAffineTransformMakeTranslation(&v54, -0.5, -0.5);
  v23 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
  v24 = v23;
  if (v23)
  {
    [v23 affineTransform];
  }

  else
  {
    memset(&v53, 0, sizeof(v53));
  }

  CGAffineTransformInvert(&t2, &v53);
  t1 = v54;
  CGAffineTransformConcat(&v53, &t1, &t2);
  v54 = v53;

  CGAffineTransformMakeTranslation(&t2, 0.5, 0.5);
  t1 = v54;
  CGAffineTransformConcat(&v53, &t1, &t2);
  v54 = v53;
  VKMTransformConvertingRectToRect(&t2, 0.0, 1.0, 1.0, v8, v10, v12, v14);
  t1 = v54;
  CGAffineTransformConcat(&v53, &t1, &t2);
  v54 = v53;
  [v22 vk_applyTransform:&v53];
  memset(&v53, 0, sizeof(v53));
  CGAffineTransformMakeTranslation(&v53, -v8, -v10);
  VKMTransformConvertingRectToRect(&t1, v8, v12, v14, v45, v44, v43, v42);
  v50 = v53;
  CGAffineTransformConcat(&t2, &v50, &t1);
  v53 = t2;
  [v22 vk_applyTransform:&t2];
  v25 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v26 = [v6 sublayers];
  v27 = [v26 reverseObjectEnumerator];
  v28 = [v27 allObjects];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __83__VKCImageSubjectBaseView_configureMaskForCurrentSubjectContextWithLayer_animated___block_invoke;
  v49[3] = &unk_1E7BE4CD0;
  v49[4] = self;
  v29 = [v28 vk_objectPassingTest:v49];

  [v6 setFrame:{v45, v44, v43, v42}];
  [v25 setFrame:{v45, v44, v43, v42}];
  [v25 setPath:{objc_msgSend(v22, "vk_CGPath")}];
  v30 = [MEMORY[0x1E69DC888] whiteColor];
  [v25 setFillColor:{objc_msgSend(v30, "CGColor")}];

  v31 = *MEMORY[0x1E69797F8];
  [v25 setFillRule:*MEMORY[0x1E69797F8]];
  v32 = [(VKCImageSubjectBaseView *)self intersectionMask];
  [MEMORY[0x1E6979518] begin];
  if ([v29 path] && v4)
  {
    v41 = v4;
    v33 = v6;
    [MEMORY[0x1E6979518] setDisableActions:1];
    v34 = [MEMORY[0x1E69DC728] vk_pathFromCGPath:{objc_msgSend(v29, "path")}];
    v35 = [v22 vk_intersectAndFlattenWithPath:v34];

    if (([v35 isEmpty] & 1) == 0)
    {
      [v32 setFrame:{v45, v44, v43, v42}];
      [v32 setPath:{objc_msgSend(v35, "vk_CGPath")}];
      v36 = [MEMORY[0x1E69DC888] whiteColor];
      [v32 setFillColor:{objc_msgSend(v36, "CGColor")}];

      [v32 setFillRule:v31];
      [v32 setHidden:0];
    }

    v6 = v33;
    v4 = v41;
  }

  [v6 addSublayer:v25];
  [MEMORY[0x1E6979518] commit];
  if (!v4)
  {
    if (v29)
    {
      [v29 removeFromSuperlayer];
    }

    goto LABEL_14;
  }

  v37 = [(VKCImageSubjectBaseView *)self opacityAnimationFromValue:0.0 toValue:1.0];
  [v37 setRemovedOnCompletion:1];
  [v25 addAnimation:v37 forKey:@"fade-in"];

  if (!v29)
  {
LABEL_14:
    [v32 setHidden:1];
    goto LABEL_15;
  }

  [MEMORY[0x1E6979518] begin];
  v38 = [(VKCImageSubjectBaseView *)self opacityAnimationFromValue:1.0 toValue:0.0];
  [v38 setRemovedOnCompletion:0];
  v39 = MEMORY[0x1E6979518];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __83__VKCImageSubjectBaseView_configureMaskForCurrentSubjectContextWithLayer_animated___block_invoke_2;
  v46[3] = &unk_1E7BE4768;
  v40 = v29;
  v47 = v40;
  v48 = v32;
  [v39 setCompletionBlock:v46];
  [v40 addAnimation:v38 forKey:@"fade-out"];
  [MEMORY[0x1E6979518] commit];

LABEL_15:
}

BOOL __83__VKCImageSubjectBaseView_configureMaskForCurrentSubjectContextWithLayer_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 intersectionMask];

  return v4 != v3;
}

uint64_t __83__VKCImageSubjectBaseView_configureMaskForCurrentSubjectContextWithLayer_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = *(a1 + 40);

  return [v2 setHidden:1];
}

- (id)opacityAnimationFromValue:(double)a3 toValue:(double)a4
{
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v6 setDuration:0.2];
  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v6 setFromValue:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v6 setToValue:v8];

  return v6;
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageSubjectBaseView;
  [(VKCImageSubjectBaseView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageSubjectBaseView *)self updateForImageBoundsChangeIfNecessary];
}

- (void)setContentsRect:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageSubjectBaseView;
  [(VKCImageBaseOverlayView *)&v4 setContentsRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageSubjectBaseView *)self updateForImageBoundsChangeIfNecessary];
}

- (void)setHidden:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VKCImageSubjectBaseView;
  [(VKCImageSubjectBaseView *)&v5 setHidden:a3];
  if ([(VKCImageSubjectBaseView *)self isHidden])
  {
    [(VKCImageSubjectBaseView *)self setGlowLayerActive:0];
    v4 = [(VKCImageSubjectBaseView *)self pulseLayer];
    [v4 removeAllAnimations];
  }
}

- (void)updateForImageBoundsChangeIfNecessary
{
  [(VKCImageSubjectBaseView *)self imageBounds];
  if (VKMRectIsFinite(v3, v4, v5, v6))
  {
    v7 = [(VKCImageSubjectBaseView *)self subjectContext];
    v8 = [v7 subjectCount];

    if (v8)
    {

      [(VKCImageSubjectBaseView *)self _updateForImageBoundsChange];
    }
  }
}

- (void)_updateForImageBoundsChange
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(VKCImageSubjectBaseView *)self updateMaskForCurrentSubjectIndexesAnimated:0];
  v53 = [(VKCImageSubjectBaseView *)self colorLayer];
  v3 = [(VKCImageSubjectBaseView *)self imageHighlightLayer];
  v4 = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainer];
  v5 = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainerShadow];
  v6 = [(VKCImageSubjectBaseView *)self glowLayer];
  [(VKCImageSubjectBaseView *)self imageBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(VKCImageSubjectBaseView *)self subjectContext];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v16 = [v15 normalizedPathForActiveSubjectsWithContentsRect:1 topLevelOnly:?];
  [v16 bounds];
  v51 = v18;
  v52 = v17;
  v20 = v19;
  v22 = v21;

  [v53 setFrame:{v8, v10, v12, v14}];
  v23 = VKMCenterOfRect(v8, v10, v12, v14);
  v25 = v24;
  v26 = VKMMultiplyPointScalar(v12, v14, 1.1);
  [v4 setFrame:{VKMRectWithCenterAndSize(v23, v25, v26)}];
  [v4 bounds];
  [v5 setFrame:?];
  v27 = [v4 superlayer];
  [v4 convertRect:v27 fromLayer:{v8, v10, v12, v14}];
  [v3 setFrame:?];

  [v3 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v3 mask];
  [v36 setFrame:{v29, v31, v33, v35}];

  [v53 bounds];
  VKMRectFromNormalizedSubrect(v37, v38, v39, v40, v52, v51, v20, v22);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [v53 mask];
  [v49 setFrame:{v42, v44, v46, v48}];

  v50 = [v6 superlayer];
  [v50 bounds];
  [v6 setFrame:?];

  [MEMORY[0x1E6979518] commit];
}

- (CGRect)imageBounds
{
  [(VKCImageSubjectBaseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKCImageBaseOverlayView *)self contentsRect];

  VKMRectFromNormalizedSubrect(v4, v6, v8, v10, v11, v12, v13, v14);
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)subjectFrame
{
  v3 = [(VKCImageSubjectBaseView *)self subjectContext];

  if (v3)
  {
    [(VKCImageSubjectBaseView *)self imageBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(VKCImageSubjectBaseView *)self subjectContext];
    [v12 normalizedCropRect];
    VKMRectFromNormalizedSubrect(v5, v7, v9, v11, v13, v14, v15, v16);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v18 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 8);
    v22 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
  }

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)setRecognitionResult:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VKCImageSubjectBaseView;
  v5 = [(VKCImageBaseOverlayView *)&v16 recognitionResult];

  if (v5 != v4)
  {
    v15.receiver = self;
    v15.super_class = VKCImageSubjectBaseView;
    [(VKCImageBaseOverlayView *)&v15 setRecognitionResult:v4];
    v6 = objc_opt_class();
    v7 = VKDynamicCast(v6, v4);
    v8 = [v7 cachedCustomImageForRemoveBackground];

    if (v8)
    {
      [(VKCImageSubjectBaseView *)self setCustomImageForRemoveBackground:v8];
    }

    [(VKCImageSubjectBaseView *)self setLoadMaskRequestStatus:0];
    v9 = [(VKCImageSubjectBaseView *)self analysisResult];
    v10 = [v9 cachedSubjectContext];
    [(VKCImageSubjectBaseView *)self setSubjectContext:v10];

    v11 = [(VKCImageSubjectBaseView *)self analysisResult];
    v12 = [v11 request];
    -[VKCImageSubjectBaseView setImageOrientation:](self, "setImageOrientation:", [v12 imageOrientation]);

    [(VKCImageSubjectBaseView *)self setGlowLayerActive:0];
    [(VKCImageSubjectBaseView *)self setLoadMaskIndex:[(VKCImageSubjectBaseView *)self loadMaskIndex]+ 1];
    v13 = [(VKCImageSubjectBaseView *)self colorLayer];
    [v13 setOpacity:0.0];

    v14 = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainer];
    [v14 setOpacity:0.0];

    [(VKCImageSubjectBaseView *)self beginImageSubjectAnalysisWithDelayIfNecessary];
  }
}

- (void)setCustomImageForRemoveBackground:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_customImageForRemoveBackground != v5)
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Setting custom image for remove background: %@, %@", &v8, 0x16u);
    }

    objc_storeStrong(&self->_customImageForRemoveBackground, a3);
    if (v5)
    {
      v7 = [(VKCImageSubjectBaseView *)self analysisResult];
      [v7 setCachedCustomImageForRemoveBackground:v5];
    }

    [(VKCImageSubjectBaseView *)self updateMaskForCurrentSubjectIndexesAnimated:0];
  }
}

- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3
{
  if (a3)
  {
    [(VKCImageSubjectBaseView *)self updateDimmingColorForAppearance];
    v4 = [(VKCImageSubjectBaseView *)self traitChangeRegistration];

    if (!v4)
    {
      v9 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v5 = [(VKCImageSubjectBaseView *)self registerForTraitChanges:v9 withTarget:self action:sel_updateDimmingColorForAppearance];
      [(VKCImageSubjectBaseView *)self setTraitChangeRegistration:v5];
    }
  }

  else
  {
    v6 = [(VKCImageSubjectBaseView *)self traitChangeRegistration];

    if (v6)
    {
      v7 = [(VKCImageSubjectBaseView *)self traitChangeRegistration];
      [(VKCImageSubjectBaseView *)self unregisterForTraitChanges:v7];
    }

    v8 = [MEMORY[0x1E69DD1B8] appearanceClassForType:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__VKCImageSubjectBaseView_setUsesLightDimmingViewInLightMode___block_invoke;
    v10[3] = &unk_1E7BE4208;
    v10[4] = self;
    [v8 vk_performAsCurrent:v10];
  }
}

void __62__VKCImageSubjectBaseView_setUsesLightDimmingViewInLightMode___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v2 = [v3 colorWithAlphaComponent:0.3];
  [*(*(a1 + 32) + 528) setBackgroundColor:{objc_msgSend(v2, "CGColor")}];
}

- (void)clearCachedSubject
{
  [(VKCImageSubjectBaseView *)self set_cachedSubjectIndexSet:0];

  [(VKCImageSubjectBaseView *)self set_cachedSubject:0];
}

- (void)setCachedSubject:(id)a3 forIndexSet:(id)a4
{
  v6 = a3;
  [(VKCImageSubjectBaseView *)self set_cachedSubjectIndexSet:a4];
  [(VKCImageSubjectBaseView *)self set_cachedSubject:v6];
}

- (id)cachedSubjectForIndexSet:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageSubjectBaseView *)self _cachedSubjectIndexSet];
  v6 = [v5 isEqualToIndexSet:v4];

  if (v6)
  {
    v7 = [(VKCImageSubjectBaseView *)self _cachedSubject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateDimmingColorForAppearance
{
  v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v15 = [v3 colorWithAlphaComponent:0.8];

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [v4 colorWithAlphaComponent:0.7];

  v6 = [(VKCImageSubjectBaseView *)self traitCollection];
  v7 = [v6 vk_isDark];

  v8 = v15;
  if (v7)
  {
    v8 = v5;
  }

  v9 = [v8 CGColor];
  v10 = [(VKCImageSubjectBaseView *)self colorLayer];
  [v10 setBackgroundColor:v9];

  v11 = [(VKCImageSubjectBaseView *)self imageHighlightLayerContainerShadow];
  v12 = v11;
  if (v7)
  {
    [v11 setShadowOpacity:0.0];
  }

  else
  {
    [v11 setShadowRadius:30.0];
    LODWORD(v13) = 1050253722;
    [v12 setShadowOpacity:v13];
    v14 = [MEMORY[0x1E69DC888] blackColor];
    [v12 setShadowColor:{objc_msgSend(v14, "CGColor")}];

    [v12 setShadowOffset:{0.0, 5.0}];
  }
}

- (VKCImageAnalysisResult)analysisResult
{
  v3 = objc_opt_class();
  v4 = [(VKCImageBaseOverlayView *)self recognitionResult];
  v5 = VKDynamicCast(v3, v4);

  return v5;
}

- (BOOL)subjectExistsAtPoint:(CGPoint)a3
{
  v3 = [(VKCImageSubjectBaseView *)self indexOfSubjectAtPoint:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (id)indexOfSubjectAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageSubjectBaseView *)self subjectContext];

  if (v6)
  {
    [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:x, y];
    v8 = v7;
    v10 = v9;
    v11 = [(VKCImageSubjectBaseView *)self subjectContext];
    v12 = [v11 indexOfSubjectAtNormalizedPoint:{v8, v10}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSIndexSet)allSubjectsIndexSet
{
  v2 = [(VKCImageSubjectBaseView *)self subjectContext];
  v3 = [v2 allSubjectIndexes];
  v4 = [v3 copy];

  return v4;
}

- (void)loadSubjectMaskIfNecessaryWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(VKCImageSubjectBaseView *)self subjectContext];

  if (v4)
  {
    if (v5)
    {
      v5[2]();
    }
  }

  else
  {
    [(VKCImageSubjectBaseView *)self _loadSubjectMaskIfNecessaryWithCompletion:v5];
  }
}

- (void)_loadSubjectMaskIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageSubjectBaseView *)self analysisResult];
  if (![(VKCImageSubjectBaseView *)self loadMaskRequestStatus])
  {
    v6 = [(VKCImageSubjectBaseView *)self subjectContext];
    if (v6 || !v5)
    {
    }

    else if ([(VKCImageSubjectBaseView *)self subjectHighlightFeatureFlagEnabled])
    {
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = ([(VKCImageSubjectBaseView *)self loadMaskIndex]+ 1);
      [(VKCImageSubjectBaseView *)self setLoadMaskIndex:v8];
      [(VKCImageSubjectBaseView *)self setLoadMaskRequestStatus:1];
      v9 = [(VKCImageSubjectBaseView *)self baseSubjectDelegate];
      [v9 subjectBaseViewDidBeginSubjectAnalysis:self];

      objc_initWeak(&location, self);
      v10 = [(VKCImageSubjectBaseView *)self backgroundQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke;
      v12[3] = &unk_1E7BE4D98;
      v13 = v7;
      v11 = v7;
      objc_copyWeak(v16, &location);
      v14 = v5;
      v15 = v4;
      v16[1] = v8;
      dispatch_async(v10, v12);

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }
  }
}

void __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E7BE4D20;
  v32 = *(a1 + 32);
  objc_copyWeak(&v35, (a1 + 56));
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  v2 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained loadMaskIndex] == *(a1 + 64))
  {
    v5 = [*(a1 + 40) request];
    if ([v5 isPhotosAssetRequest])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v4 customImageForRemoveBackground];
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = !v9;

    if ((v10 & 1) == 0)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v4;
        _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Using custom image for remove background: %@", buf, 0xCu);
      }

      v12 = [v4 customImageForRemoveBackground];
      v13 = [v12 vk_cgImage];

      if (v13)
      {
        goto LABEL_23;
      }
    }

    if ([v5 requestType] != 5)
    {
      v13 = [v5 blockingGenerateCGImage];
      if (v13)
      {
        goto LABEL_23;
      }

      v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v4;
        _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_DEFAULT, "No image is available for subject detection processing: %@", buf, 0xCu);
      }

      v2[2](v2, 0);
    }

    if (!v7)
    {
LABEL_29:

      goto LABEL_30;
    }

    v13 = 0;
LABEL_23:
    v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v4;
      _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Beginning Remove Subject processing: %@", buf, 0xCu);
    }

    if (v7)
    {
      v16 = [[VKCRemoveBackgroundRequest alloc] initWithPhotosAnalyzerRequest:v5];
    }

    else
    {
      v16 = +[VKCRemoveBackgroundRequest requestWithImage:orientation:canResize:](VKCRemoveBackgroundRequest, "requestWithImage:orientation:canResize:", v13, [v5 imageOrientation], 1);
    }

    v17 = v16;
    v18 = [v5 viImageType];
    [(VKCRemoveBackgroundRequest *)v17 setVIImageType:v18];

    [(VKCRemoveBackgroundRequest *)v17 setMaskOnly:1];
    v19 = [MEMORY[0x1E695DF00] date];
    v20 = [v4 removeBackgroundRequestHandler];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_214;
    v24[3] = &unk_1E7BE4D70;
    objc_copyWeak(v30, (a1 + 56));
    v29 = v2;
    v21 = *(a1 + 40);
    v22 = *(a1 + 64);
    v25 = v21;
    v30[1] = v22;
    v23 = v19;
    v26 = v23;
    v27 = *(a1 + 32);
    v28 = v4;
    [v20 performRequest:v17 completion:v24];

    objc_destroyWeak(v30);
    goto LABEL_29;
  }

LABEL_30:

  objc_destroyWeak(&v35);
}

void __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_3;
  v5[3] = &unk_1E7BE4CF8;
  objc_copyWeak(v8, (a1 + 56));
  v6 = *(a1 + 40);
  v8[1] = v4;
  v7 = *(a1 + 48);
  vk_performBlockOnMainThread(v5);

  objc_destroyWeak(v8);
}

void __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained analysisResult];
    v5 = *(a1 + 32);

    v3 = v8;
    if (v4 == v5)
    {
      [v8 sendSubjectAnalyticsEventWithEventType:0 interactionType:0 subjectFound:0 processingDuration:*(a1 + 56)];
      [v8 setLoadMaskRequestStatus:2];
      v6 = [v8 baseSubjectDelegate];
      [v6 subjectBaseViewViewDidCompleteSubjectAnalysis:v8];

      v3 = v8;
      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, v8);
        v3 = v8;
      }
    }
  }
}

void __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_214(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (!v6)
  {
    if (!WeakRetained)
    {
      goto LABEL_12;
    }

    v10 = [WeakRetained analysisResult];
    if (v10 == *(a1 + 32))
    {
      v11 = [v8 loadMaskIndex];
      v12 = *(a1 + 80);

      if (v11 != v12)
      {
        goto LABEL_12;
      }

      if (!v5)
      {
        v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          *buf = 138412290;
          v32 = v17;
          _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Subject not found for analysis: %@", buf, 0xCu);
        }

        goto LABEL_4;
      }

      v13 = [[VKCImageSubjectContext alloc] initWithMaskResult:v5];
      v14 = [v8 maskLoadContext];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E695F620]);
      }

      v10 = v16;

      [(VKCImageSubjectContext *)v13 preparePathsAndImageMaskIfNecessaryWithContext:v10];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_216;
      v25[3] = &unk_1E7BE4D48;
      v25[4] = v8;
      v18 = *(a1 + 32);
      v30 = *(a1 + 80);
      v26 = v18;
      v27 = v13;
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v24 = *(a1 + 56);
      v21 = *(&v24 + 1);
      *&v22 = v19;
      *(&v22 + 1) = v20;
      v29 = v24;
      v28 = v22;
      v23 = v13;
      vk_performBlockOnMainThread(v25);
    }

    goto LABEL_12;
  }

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_214_cold_1();
  }

LABEL_4:

  (*(*(a1 + 64) + 16))();
LABEL_12:
}

void __69__VKCImageSubjectBaseView__loadSubjectMaskIfNecessaryWithCompletion___block_invoke_216(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) analysisResult];
  if (v2 != *(a1 + 40))
  {
LABEL_4:

    return;
  }

  v18 = v2;
  v3 = [*(a1 + 32) subjectContext];
  if (v3)
  {

    v2 = v18;
    goto LABEL_4;
  }

  v4 = [*(a1 + 32) loadMaskIndex];
  v5 = *(a1 + 88);

  if (v4 == v5)
  {
    [*(a1 + 32) setSubjectContext:*(a1 + 48)];
    v6 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSinceDate:*(a1 + 56)];
    v8 = v7;

    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSinceDate:*(a1 + 64)];
    v11 = v10;

    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 72) subjectContext];
      v14 = [v13 animatedStickerScore];
      v15 = *(a1 + 32);
      *buf = 134218754;
      v20 = v8 * 1000.0;
      v21 = 2048;
      v22 = v11 * 1000.0;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_1B4335000, v12, OS_LOG_TYPE_DEFAULT, "Remove Subject mask for analysis complete with madDuration: %f total duration: %fms stickerScore:%@, %@", buf, 0x2Au);
    }

    v16 = [*(a1 + 32) normalizedSubjectPath];
    v17 = v16;
    if (v16)
    {
      [v16 isEmpty];
    }

    (*(*(a1 + 80) + 16))();
  }
}

- (void)loadImageSubjectIfNecessaryWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKCImageSubjectBaseView *)self subjectContext];
  v6 = [v5 activeSubjectIndexes];

  v7 = [(VKCImageSubjectBaseView *)self cachedSubjectForIndexSet:v6];
  if (v7)
  {
    v4[2](v4, v7);
    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 vk_indexString];
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "Found Cached subject for indexSet: %@, %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 vk_indexString];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "Did not find subject for indexSet, creating: %@, %@", buf, 0x16u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__VKCImageSubjectBaseView_loadImageSubjectIfNecessaryWithCompletion___block_invoke;
    v12[3] = &unk_1E7BE4DC0;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    [(VKCImageSubjectBaseView *)self loadImageSubjectWithIndexes:v13 completion:v12];
  }
}

void __69__VKCImageSubjectBaseView_loadImageSubjectIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) setCachedSubject:v3 forIndexSet:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VKCImageSubjectBaseView *)self analysisResult];
  v9 = [(VKCImageSubjectBaseView *)self subjectContext];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__4;
  v34[4] = __Block_byref_object_dispose__4;
  v35 = 0;
  objc_initWeak(&location, self);
  v10 = [v9 request];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke;
  aBlock[3] = &unk_1E7BE4DE8;
  v11 = v7;
  v31 = v11;
  v32 = v34;
  v12 = _Block_copy(aBlock);
  v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = self;
    _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to generate subject image, but no subject analysis exists: %@", buf, 0xCu);
  }

  if (!v10 || !v8)
  {
    goto LABEL_22;
  }

  v14 = ![(VKCImageSubjectBaseView *)self subjectHighlightFeatureFlagEnabled];
  if (!v6)
  {
    LOBYTE(v14) = 1;
  }

  if (v14)
  {
    goto LABEL_22;
  }

  if ([v6 count])
  {
    v15 = [v9 convertExternalIndexSetToInternal:v6];
    v16 = [v15 count];
    if (v16 != [v6 count])
    {
      v17 = [v15 count];
      log = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      v18 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v18)
        {
          *buf = 138412290;
          v37 = self;
          v19 = log;
          _os_log_impl(&dword_1B4335000, log, OS_LOG_TYPE_DEFAULT, "Subject image request contains one of more invalid indexes, ignoring invalid indexes: %@", buf, 0xCu);
        }

        else
        {
          v19 = log;
        }
      }

      else
      {
        if (v18)
        {
          *buf = 138412290;
          v37 = self;
          _os_log_impl(&dword_1B4335000, log, OS_LOG_TYPE_DEFAULT, "Subject image request indexes contain no valid indexes, returning nil: %@", buf, 0xCu);
        }

        v19 = v10;
        v10 = 0;
      }
    }
  }

  else
  {
    [v9 allSubjectIndexes];
    v6 = v15 = v6;
  }

  if (v9 && v10)
  {
    [v10 setMaskOnly:0];
    [v10 setCropToFit:1];
    v20 = [(VKCImageSubjectBaseView *)self subjectContext];
    v21 = [v20 madSubjectIndexesForVKSubjectIndexes:v6];
    [v10 setSelectedIndexSet:v21];

    v22 = [(VKCImageSubjectBaseView *)self removeBackgroundRequestHandler];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke_219;
    v24[3] = &unk_1E7BE4E10;
    objc_copyWeak(&v29, &location);
    v25 = v8;
    v27 = v12;
    v10 = v10;
    v26 = v10;
    v28 = v34;
    [v22 performRequest:v10 completion:v24];

    objc_destroyWeak(&v29);
  }

  else
  {
LABEL_22:
    v12[2](v12);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);
}

uint64_t __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke_219(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained analysisResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = *(a1 + 32), v9, v9 != v10))
  {
LABEL_11:
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  if (!v5 || v6)
  {
    v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke_219_cold_1();
    }

    goto LABEL_11;
  }

  v11 = vk_cgImageFromPixelBuffer([v5 pixelBuffer]);
  v12 = [*(a1 + 40) imageOrientation];
  v13 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v11];
  if (v12)
  {
    v14 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromImage:v13 toOrientation:v12];

    v13 = v14;
  }

  CGImageRelease(v11);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
  (*(*(a1 + 48) + 16))();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke_221;
  v16[3] = &unk_1E7BE4A18;
  objc_copyWeak(&v18, (a1 + 64));
  v17 = *(a1 + 32);
  vk_dispatchMainAfterDelay(v16, 0.0);

  objc_destroyWeak(&v18);
LABEL_12:
}

void __66__VKCImageSubjectBaseView_loadImageSubjectWithIndexes_completion___block_invoke_221(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained analysisResult];

    WeakRetained = v2;
  }
}

- (id)imageSubjectPathWithIndexes:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKCImageSubjectBaseView *)self subjectContext];

  if (v5)
  {
    v6 = [(VKCImageSubjectBaseView *)self subjectContext];
    [(VKCImageBaseOverlayView *)self contentsRect];
    v7 = [v6 normalizedPathForSubjectWithIndexSet:v4 contentsRect:1 topLevelOnly:?];

    v8 = [(VKCImageSubjectBaseView *)self convertNormalizedPathToBoundsCoordinates:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to access subject path, but no subject analysis exists: %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)sendSubjectAnalyticsEventWithEventType:(int64_t)a3 interactionType:(int64_t)a4 subjectFound:(BOOL)a5 processingDuration:(double)a6
{
  v7 = a5;
  v11 = [VKAnalyticsSubjectEvent alloc];
  v12 = [(VKCImageBaseOverlayView *)self baseDelegate];
  v13 = [v12 customAnalyticsIdentifier];
  v15 = [(VKAnalyticsSubjectEvent *)v11 initWithEventType:a3 interactionType:a4 subjectFound:v7 processingDuration:v13 customIdentifier:a6];

  v14 = [(VKCImageSubjectBaseView *)self baseSubjectDelegate];
  [v14 subjectBaseView:self analyticsEventOccurred:v15];
}

- (VKCImageSubjectBaseViewDelegate)baseSubjectDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_baseSubjectDelegate);

  return WeakRetained;
}

- (void)loadPulsePackage
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Error getting pulse animation package: %@", &v2, 0xCu);
}

@end