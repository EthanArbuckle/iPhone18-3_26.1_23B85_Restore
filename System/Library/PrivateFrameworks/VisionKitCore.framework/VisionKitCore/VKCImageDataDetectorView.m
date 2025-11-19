@interface VKCImageDataDetectorView
- (BOOL)dataDetectorElementView:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)needsElementFrameUpdate;
- (BOOL)shouldFilterElementForSpecialCase:(id)a3;
- (CGRect)boundsUsedToCalculateElementFrames;
- (CGRect)contentsRectUsedToCalculateElementFrames;
- (CGRect)frameForDataDetectorElement:(id)a3;
- (CGRect)previewImageBoundsForDataDetectorElementView:(id)a3;
- (NSArray)displayedElementViews;
- (NSArray)displayedElements;
- (NSArray)unfilteredElements;
- (VKCImageDataDetectorView)initWithFrame:(CGRect)a3;
- (VKCImageDataDetectorViewDelegate)delegate;
- (id)closestElementToPoint:(CGPoint)a3 maxDistance:(double)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)presentingViewControllerForInteractionWithDataDetectorElementView:(id)a3;
- (id)previewForDataDetectorElementView:(id)a3;
- (id)previewImageForDataDetectorElementView:(id)a3;
- (id)viewSpaceQuadsForDataDetectorElement:(id)a3;
- (void)_appendMRCAsyncElement:(id)a3;
- (void)activateLongPressDataDetectorAtPoint:(CGPoint)a3 maxDistance:(double)a4;
- (void)appendMRCAsyncElement:(id)a3;
- (void)dataDetectorElementView:(id)a3 analyticsEventOccured:(id)a4;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)loadDataDetectorViewsFromDisplayedElements;
- (void)setAllowLongPressDDActivationOnly:(BOOL)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setCustomAnalyticsIdentifier:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightSelectableItems:(BOOL)a3 animated:(BOOL)a4;
- (void)setRecognitionResult:(id)a3;
- (void)updateAllElementViewFrames;
- (void)updateAllElementViewFramesIfNecessary;
- (void)updateDisplayedElements;
- (void)willDismissMenuForDataDetectorElementView:(id)a3;
- (void)willDisplayMenuForDataDetectorElementView:(id)a3;
@end

@implementation VKCImageDataDetectorView

- (VKCImageDataDetectorView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = VKCImageDataDetectorView;
  v3 = [(VKCImageBaseOverlayView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    displayedElementViews = v3->__displayedElementViews;
    v3->__displayedElementViews = v4;

    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 16);
    v3->_boundsUsedToCalculateElementFrames.origin = *MEMORY[0x1E695F058];
    v3->_boundsUsedToCalculateElementFrames.size = v7;
    v3->_contentsRectUsedToCalculateElementFrames.origin = v6;
    v3->_contentsRectUsedToCalculateElementFrames.size = v7;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allElements = v3->__allElements;
    v3->__allElements = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unfilteredElements = v3->__unfilteredElements;
    v3->__unfilteredElements = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    displayedElements = v3->__displayedElements;
    v3->__displayedElements = v12;
  }

  return v3;
}

- (void)setRecognitionResult:(id)a3
{
  v9.receiver = self;
  v9.super_class = VKCImageDataDetectorView;
  v4 = a3;
  [(VKCImageBaseOverlayView *)&v9 setRecognitionResult:v4];
  v5 = [v4 dataDetectors];
  v6 = [v5 mutableCopy];
  [(VKCImageDataDetectorView *)self set_allElements:v6];

  v7 = [v4 unfilteredDataDetectors];

  v8 = [v7 mutableCopy];
  [(VKCImageDataDetectorView *)self set_unfilteredElements:v8];

  [(VKCImageDataDetectorView *)self updateDisplayedElements];
}

- (void)appendMRCAsyncElement:(id)a3
{
  if (a3)
  {

    [(VKCImageDataDetectorView *)self _appendMRCAsyncElement:?];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageDataDetectorView appendMRCAsyncElement:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
  }
}

- (void)_appendMRCAsyncElement:(id)a3
{
  v29 = a3;
  v4 = [(VKCImageDataDetectorView *)self _unfilteredElements];
  [v4 addObject:v29];

  v5 = [(VKCImageDataDetectorView *)self _displayedElements];
  [v5 addObject:v29];

  v6 = [(VKCImageDataDetectorView *)self _allElements];
  [v6 addObject:v29];

  v7 = [VKCDataDetectorElementView alloc];
  v8 = [(VKCImageDataDetectorView *)self _unfilteredElements];
  v9 = [(VKCDataDetectorElementView *)v7 initWithDataDetectorElement:v29 unfilteredElements:v8];

  v10 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  [(VKCDataDetectorElementView *)v9 setCustomAnalyticsIdentifier:v10];

  v11 = [(VKCImageBaseOverlayView *)self analysisResult];
  -[VKCDataDetectorElementView setAnalysisRequestID:](v9, "setAnalysisRequestID:", [v11 analysisRequestID]);

  [(VKCDataDetectorElementView *)v9 setDelegate:self];
  [(VKCDataDetectorElementView *)v9 setAllowLongPressDDActivationOnly:[(VKCImageDataDetectorView *)self allowLongPressDDActivationOnly]];
  v12 = [(VKCImageDataDetectorView *)self _displayedElementViews];
  [v12 addObject:v9];

  [(VKCImageDataDetectorView *)self addSubview:v9];
  [(VKCImageDataDetectorView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (VKMRectHasArea(v14, v16, v18, v20) && VKMRectHasArea(v22, v24, v26, v28))
  {
    [(VKCImageDataDetectorView *)self frameForDataDetectorElement:v29];
    [(VKCDataDetectorElementView *)v9 setFrame:?];
  }
}

- (NSArray)displayedElements
{
  v2 = [(VKCImageDataDetectorView *)self _displayedElements];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)unfilteredElements
{
  v2 = [(VKCImageDataDetectorView *)self _unfilteredElements];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)displayedElementViews
{
  v2 = [(VKCImageDataDetectorView *)self _displayedElementViews];
  v3 = [v2 allObjects];

  return v3;
}

- (void)setContentsRect:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageDataDetectorView;
  [(VKCImageBaseOverlayView *)&v4 setContentsRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageDataDetectorView *)self updateAllElementViewFramesIfNecessary];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCImageDataDetectorView;
  [(VKCImageDataDetectorView *)&v3 layoutSubviews];
  [(VKCImageDataDetectorView *)self updateAllElementViewFramesIfNecessary];
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = VKCImageDataDetectorView;
  [(VKCImageDataDetectorView *)&v8 didMoveToSuperview];
  v3 = [(VKCImageDataDetectorView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(VKCImageDataDetectorView *)self displayedElementViews];
    if ([v5 count])
    {
    }

    else
    {
      v6 = [(VKCImageDataDetectorView *)self displayedElements];
      v7 = [v6 count];

      if (v7)
      {
        [(VKCImageDataDetectorView *)self loadDataDetectorViewsFromDisplayedElements];
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageDataDetectorView;
  [(VKCImageDataDetectorView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageDataDetectorView *)self updateAllElementViewFramesIfNecessary];
}

- (void)setCustomAnalyticsIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKCImageDataDetectorView;
  [(VKCImageBaseOverlayView *)&v9 setCustomAnalyticsIdentifier:v4];
  v5 = [(VKCImageDataDetectorView *)self _displayedElementViews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VKCImageDataDetectorView_setCustomAnalyticsIdentifier___block_invoke;
  v7[3] = &unk_1E7BE6D70;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)activateLongPressDataDetectorAtPoint:(CGPoint)a3 maxDistance:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [VKCImageDataDetectorView closestElementToPoint:"closestElementToPoint:maxDistance:" maxDistance:?];
  v9 = [(VKCImageDataDetectorView *)self _displayedElementViews];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__VKCImageDataDetectorView_activateLongPressDataDetectorAtPoint_maxDistance___block_invoke;
  v13[3] = &unk_1E7BE6D98;
  v10 = v8;
  v14 = v10;
  v11 = [v9 vk_objectPassingTest:v13];

  if (!v11)
  {
    v12 = VKMUIStringForPoint(x, y);
    [VKAssert handleFailedAssertWithCondition:"elementView != ((void*)0)" functionName:"[VKCImageDataDetectorView activateLongPressDataDetectorAtPoint:maxDistance:]" simulateCrash:0 showAlert:0 format:@"Attempting to activate a long press data detector but no elementView was found. point: %@ maxDistance: %f", v12, *&a4];
  }

  [v11 manuallyActivateLongPressMenuInteraction];
}

BOOL __77__VKCImageDataDetectorView_activateLongPressDataDetectorAtPoint_maxDistance___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dataDetectorElement];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)setAllowLongPressDDActivationOnly:(BOOL)a3
{
  if (self->_allowLongPressDDActivationOnly != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_allowLongPressDDActivationOnly = a3;
    v6 = [(VKCImageDataDetectorView *)self _displayedElementViews];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__VKCImageDataDetectorView_setAllowLongPressDDActivationOnly___block_invoke;
    v7[3] = &__block_descriptor_33_e40_v24__0__VKCDataDetectorElementView_8_B16l;
    v8 = a3;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)updateDisplayedElements
{
  v3 = [(VKCImageDataDetectorView *)self _allElements];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VKCImageDataDetectorView_updateDisplayedElements__block_invoke;
  v6[3] = &unk_1E7BE6DE0;
  v6[4] = self;
  v4 = [v3 vk_objectsPassingTest:v6];
  v5 = [v4 mutableCopy];
  [(VKCImageDataDetectorView *)self set_displayedElements:v5];

  [(VKCImageDataDetectorView *)self loadDataDetectorViewsFromDisplayedElements];
}

uint64_t __51__VKCImageDataDetectorView_updateDisplayedElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 520);
  v5 = [v3 dataDetectorTypes] & v4;
  if (v5 == [v3 dataDetectorTypes])
  {
    v6 = [*(a1 + 32) shouldFilterElementForSpecialCase:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldFilterElementForSpecialCase:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageBaseOverlayView *)self recognitionResult];
  if ([v4 dataDetectorTypes] == 4)
  {
    [v5 imageSize];
    v7 = v6;
    v8 = VKMRectWithSize();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v4 quad];
    [v15 boundingBox];
    VKMRectFromNormalizedSubrect(v8, v10, v12, v14, v16, v17, v18, v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if (![v28 vk_isRTL])
    {
      v7 = 0.0;
    }

    VKMDistanceToRect(v7, 0.0, v21, v23, v25, v27);
    v30 = v29 < 120.0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = VKCImageDataDetectorView;
  v5 = [(VKCImageDataDetectorView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = objc_opt_class();
  v7 = VKDynamicCast(v6, v5);
  if (!-[VKCImageDataDetectorView allowHitTestingForIgnoredElementViews](self, "allowHitTestingForIgnoredElementViews") && v7 && [v7 ignoresHitTest])
  {

    v5 = 0;
  }

  v8 = v5;

  return v5;
}

- (void)loadDataDetectorViewsFromDisplayedElements
{
  v3 = [(VKCImageDataDetectorView *)self superview];

  if (v3)
  {
    v4 = [(VKCImageDataDetectorView *)self _displayedElementViews];
    [v4 makeObjectsPerformSelector:sel_removeFromSuperview];
    [v4 removeAllObjects];
    v5 = [(VKCImageDataDetectorView *)self unfilteredElements];
    v6 = [(VKCImageDataDetectorView *)self displayedElements];
    v7 = objc_opt_class();
    v8 = [(VKCImageDataDetectorView *)self allowLongPressDDActivationOnly];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__VKCImageDataDetectorView_loadDataDetectorViewsFromDisplayedElements__block_invoke;
    v11[3] = &unk_1E7BE6E08;
    v12 = v5;
    v13 = self;
    v14 = v4;
    v15 = v7;
    v16 = v8;
    v9 = v4;
    v10 = v5;
    [v6 enumerateObjectsUsingBlock:v11];
    [(VKCImageDataDetectorView *)self updateAllElementViewFrames];
  }
}

void __70__VKCImageDataDetectorView_loadDataDetectorViewsFromDisplayedElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  v7 = [[v3 alloc] initWithDataDetectorElement:v4 unfilteredElements:*(a1 + 32)];

  v5 = [*(a1 + 40) customAnalyticsIdentifier];
  [v7 setCustomAnalyticsIdentifier:v5];

  v6 = [*(a1 + 40) analysisResult];
  [v7 setAnalysisRequestID:{objc_msgSend(v6, "analysisRequestID")}];

  [*(a1 + 48) addObject:v7];
  [v7 setDelegate:*(a1 + 40)];
  [v7 setAllowLongPressDDActivationOnly:*(a1 + 64)];
  [*(a1 + 40) addSubview:v7];
}

- (void)updateAllElementViewFramesIfNecessary
{
  if ([(VKCImageDataDetectorView *)self needsElementFrameUpdate])
  {

    [(VKCImageDataDetectorView *)self updateAllElementViewFrames];
  }
}

- (void)updateAllElementViewFrames
{
  v28 = *MEMORY[0x1E69E9840];
  [(VKCImageDataDetectorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (VKMRectHasArea(v4, v6, v8, v10) && VKMRectHasArea(v12, v14, v16, v18))
  {
    [(VKCImageDataDetectorView *)self setBoundsUsedToCalculateElementFrames:v4, v6, v8, v10];
    [(VKCImageDataDetectorView *)self setContentsRectUsedToCalculateElementFrames:v12, v14, v16, v18];
    v19 = [(VKCImageDataDetectorView *)self _displayedElementViews];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__VKCImageDataDetectorView_updateAllElementViewFrames__block_invoke;
    v23[3] = &unk_1E7BE6D70;
    v23[4] = self;
    [v19 enumerateObjectsUsingBlock:v23];
  }

  else
  {
    v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = VKMUIStringForRect(v4, v6, v8, v10);
      v22 = VKMUIStringForRect(v12, v14, v16, v18);
      *buf = 138412546;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      _os_log_error_impl(&dword_1B4335000, v20, OS_LOG_TYPE_ERROR, "Attempting to update all DD element frames, but the bounds or contentsRect are invalid. Bounds: %@, contentsRect: %@ , skipping", buf, 0x16u);
    }
  }
}

void __54__VKCImageDataDetectorView_updateAllElementViewFrames__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 dataDetectorElement];
  [v2 frameForDataDetectorElement:v4];
  [v3 setFrame:?];
}

- (BOOL)needsElementFrameUpdate
{
  v2 = self;
  [(VKCImageDataDetectorView *)self bounds];
  v31 = v4;
  v32 = v3;
  v6 = v5;
  v8 = v7;
  [(VKCImageBaseOverlayView *)v2 contentsRect];
  v35 = v10;
  v36 = v9;
  v33 = v12;
  v34 = v11;
  [(VKCImageDataDetectorView *)v2 boundsUsedToCalculateElementFrames];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(VKCImageDataDetectorView *)v2 contentsRectUsedToCalculateElementFrames];
  v22 = v21;
  v24 = v23;
  v29 = v26;
  v30 = v25;
  LODWORD(v2) = VKMSizeIsEmptyOrHasNanOrInf(v6, v8);
  v27 = VKMNearlyEqualRects(v32, v31, v6, v8, v14, v16, v18, v20);
  return ((v2 | v27 & VKMNearlyEqualRects(v36, v35, v34, v33, v22, v24, v30, v29)) & 1) == 0;
}

- (CGRect)frameForDataDetectorElement:(id)a3
{
  v4 = a3;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 quad];

  v14 = [v13 quadByConvertingFromNormalizedRectToView:self contentsRect:{v6, v8, v10, v12}];

  [v14 boundingBox];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)viewSpaceQuadsForDataDetectorElement:(id)a3
{
  v4 = a3;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = self;
  v14 = [v4 boundingQuads];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__VKCImageDataDetectorView_viewSpaceQuadsForDataDetectorElement___block_invoke;
  v18[3] = &unk_1E7BE6E30;
  v19 = v13;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v15 = v13;
  v16 = [v14 vk_compactMap:v18];

  return v16;
}

- (id)closestElementToPoint:(CGPoint)a3 maxDistance:(double)a4
{
  y = a3.y;
  x = a3.x;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17;
  v25 = __Block_byref_object_dispose__17;
  v26 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x7FF0000000000000;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(VKCImageDataDetectorView *)self displayedElementViews];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__VKCImageDataDetectorView_closestElementToPoint_maxDistance___block_invoke;
  v19[3] = &unk_1E7BE6E58;
  *&v19[7] = a4;
  *&v19[8] = x;
  *&v19[9] = y;
  v19[10] = v9;
  v19[11] = v11;
  v19[12] = v13;
  v19[13] = v15;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = &v21;
  [v16 enumerateObjectsUsingBlock:v19];

  v17 = v22[5];
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);

  return v17;
}

void __62__VKCImageDataDetectorView_closestElementToPoint_maxDistance___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  [v6 frame];
  v30.origin.x = VKMRectFromAddingSize(v7, v8, v9, v10, *(a1 + 56));
  if (CGRectContainsPoint(v30, *(a1 + 64)))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v6 dataDetectorElement];
    v12 = [v11 boundingQuads];

    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) quadByConvertingFromNormalizedRectToView:*(a1 + 32) contentsRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
          [v17 mininumDistanceToPoint:{*(a1 + 64), *(a1 + 72)}];
          v19 = v18;
          v20 = *(*(*(a1 + 40) + 8) + 24);
          if (v19 < v20)
          {
            v21 = [v6 dataDetectorElement];
            v22 = *(*(a1 + 48) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;

            *(*(*(a1 + 40) + 8) + 24) = v19;
            v20 = *(*(*(a1 + 40) + 8) + 24);
          }

          if (v20 <= 0.0)
          {
            *a4 = 1;

            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)setHighlightSelectableItems:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_highlightSelectableItems != a3)
  {
    self->_highlightSelectableItems = a3;
  }
}

- (BOOL)dataDetectorElementView:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  v4 = self;
  [a3 convertPoint:self toView:{a4.x, a4.y}];
  v6 = v5;
  v8 = v7;
  v9 = [(VKCImageDataDetectorView *)v4 delegate];
  LOBYTE(v4) = [v9 dataDetectorView:v4 dataDetectorInteractionShouldBeginAtPoint:{v6, v8}];

  return v4;
}

- (void)willDisplayMenuForDataDetectorElementView:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 dataDetectorElement];
    v7 = [(VKCImageBaseOverlayView *)self analysisResult];
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = [v7 analysisRequestID];
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Presenting menu for DD: %@ : id: %d", &v9, 0x12u);
  }

  v8 = [(VKCImageDataDetectorView *)self delegate];
  [v8 willDisplayMenuForDataDetectorView:self];
}

- (void)willDismissMenuForDataDetectorElementView:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 dataDetectorElement];
    v7 = [(VKCImageBaseOverlayView *)self analysisResult];
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = [v7 analysisRequestID];
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing menu for DD: %@ : id: %d", &v9, 0x12u);
  }

  v8 = [(VKCImageDataDetectorView *)self delegate];
  [v8 willDismissMenuForDataDetectorView:self];
}

- (id)presentingViewControllerForInteractionWithDataDetectorElementView:(id)a3
{
  v4 = [(VKCImageDataDetectorView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 presentingViewControllerForInteractionWithDataDetectorView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)previewForDataDetectorElementView:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageDataDetectorView *)self delegate];
  v6 = [v5 previewForDataDetectorElementView:v4];

  return v6;
}

- (id)previewImageForDataDetectorElementView:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageDataDetectorView *)self delegate];
  v6 = [v5 previewImageForDataDetectorElementView:v4];

  return v6;
}

- (CGRect)previewImageBoundsForDataDetectorElementView:(id)a3
{
  [(VKCImageDataDetectorView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(VKCImageBaseOverlayView *)self contentsRect];

  VKMRectFromNormalizedSubrect(v5, v7, v9, v11, v12, v13, v14, v15);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)dataDetectorElementView:(id)a3 analyticsEventOccured:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageDataDetectorView *)self delegate];
  [v6 dataDetectorView:self analyticsEventOccured:v5];
}

- (VKCImageDataDetectorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)boundsUsedToCalculateElementFrames
{
  x = self->_boundsUsedToCalculateElementFrames.origin.x;
  y = self->_boundsUsedToCalculateElementFrames.origin.y;
  width = self->_boundsUsedToCalculateElementFrames.size.width;
  height = self->_boundsUsedToCalculateElementFrames.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentsRectUsedToCalculateElementFrames
{
  x = self->_contentsRectUsedToCalculateElementFrames.origin.x;
  y = self->_contentsRectUsedToCalculateElementFrames.origin.y;
  width = self->_contentsRectUsedToCalculateElementFrames.size.width;
  height = self->_contentsRectUsedToCalculateElementFrames.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

id __56__VKCImageDataDetectorView_macOS_setupButtonForElement___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a4 - 1 == a3)
  {
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 normalizedQuadFromView:v5];

  return v7;
}

@end