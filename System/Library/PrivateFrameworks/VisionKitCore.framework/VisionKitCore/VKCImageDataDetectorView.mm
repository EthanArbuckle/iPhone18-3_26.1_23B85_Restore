@interface VKCImageDataDetectorView
- (BOOL)dataDetectorElementView:(id)view shouldBeginAtPoint:(CGPoint)point;
- (BOOL)needsElementFrameUpdate;
- (BOOL)shouldFilterElementForSpecialCase:(id)case;
- (CGRect)boundsUsedToCalculateElementFrames;
- (CGRect)contentsRectUsedToCalculateElementFrames;
- (CGRect)frameForDataDetectorElement:(id)element;
- (CGRect)previewImageBoundsForDataDetectorElementView:(id)view;
- (NSArray)displayedElementViews;
- (NSArray)displayedElements;
- (NSArray)unfilteredElements;
- (VKCImageDataDetectorView)initWithFrame:(CGRect)frame;
- (VKCImageDataDetectorViewDelegate)delegate;
- (id)closestElementToPoint:(CGPoint)point maxDistance:(double)distance;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)presentingViewControllerForInteractionWithDataDetectorElementView:(id)view;
- (id)previewForDataDetectorElementView:(id)view;
- (id)previewImageForDataDetectorElementView:(id)view;
- (id)viewSpaceQuadsForDataDetectorElement:(id)element;
- (void)_appendMRCAsyncElement:(id)element;
- (void)activateLongPressDataDetectorAtPoint:(CGPoint)point maxDistance:(double)distance;
- (void)appendMRCAsyncElement:(id)element;
- (void)dataDetectorElementView:(id)view analyticsEventOccured:(id)occured;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)loadDataDetectorViewsFromDisplayedElements;
- (void)setAllowLongPressDDActivationOnly:(BOOL)only;
- (void)setContentsRect:(CGRect)rect;
- (void)setCustomAnalyticsIdentifier:(id)identifier;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated;
- (void)setRecognitionResult:(id)result;
- (void)updateAllElementViewFrames;
- (void)updateAllElementViewFramesIfNecessary;
- (void)updateDisplayedElements;
- (void)willDismissMenuForDataDetectorElementView:(id)view;
- (void)willDisplayMenuForDataDetectorElementView:(id)view;
@end

@implementation VKCImageDataDetectorView

- (VKCImageDataDetectorView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = VKCImageDataDetectorView;
  v3 = [(VKCImageBaseOverlayView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setRecognitionResult:(id)result
{
  v9.receiver = self;
  v9.super_class = VKCImageDataDetectorView;
  resultCopy = result;
  [(VKCImageBaseOverlayView *)&v9 setRecognitionResult:resultCopy];
  dataDetectors = [resultCopy dataDetectors];
  v6 = [dataDetectors mutableCopy];
  [(VKCImageDataDetectorView *)self set_allElements:v6];

  unfilteredDataDetectors = [resultCopy unfilteredDataDetectors];

  v8 = [unfilteredDataDetectors mutableCopy];
  [(VKCImageDataDetectorView *)self set_unfilteredElements:v8];

  [(VKCImageDataDetectorView *)self updateDisplayedElements];
}

- (void)appendMRCAsyncElement:(id)element
{
  if (element)
  {

    [(VKCImageDataDetectorView *)self _appendMRCAsyncElement:?];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageDataDetectorView appendMRCAsyncElement:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
  }
}

- (void)_appendMRCAsyncElement:(id)element
{
  elementCopy = element;
  _unfilteredElements = [(VKCImageDataDetectorView *)self _unfilteredElements];
  [_unfilteredElements addObject:elementCopy];

  _displayedElements = [(VKCImageDataDetectorView *)self _displayedElements];
  [_displayedElements addObject:elementCopy];

  _allElements = [(VKCImageDataDetectorView *)self _allElements];
  [_allElements addObject:elementCopy];

  v7 = [VKCDataDetectorElementView alloc];
  _unfilteredElements2 = [(VKCImageDataDetectorView *)self _unfilteredElements];
  v9 = [(VKCDataDetectorElementView *)v7 initWithDataDetectorElement:elementCopy unfilteredElements:_unfilteredElements2];

  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  [(VKCDataDetectorElementView *)v9 setCustomAnalyticsIdentifier:customAnalyticsIdentifier];

  analysisResult = [(VKCImageBaseOverlayView *)self analysisResult];
  -[VKCDataDetectorElementView setAnalysisRequestID:](v9, "setAnalysisRequestID:", [analysisResult analysisRequestID]);

  [(VKCDataDetectorElementView *)v9 setDelegate:self];
  [(VKCDataDetectorElementView *)v9 setAllowLongPressDDActivationOnly:[(VKCImageDataDetectorView *)self allowLongPressDDActivationOnly]];
  _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
  [_displayedElementViews addObject:v9];

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
    [(VKCImageDataDetectorView *)self frameForDataDetectorElement:elementCopy];
    [(VKCDataDetectorElementView *)v9 setFrame:?];
  }
}

- (NSArray)displayedElements
{
  _displayedElements = [(VKCImageDataDetectorView *)self _displayedElements];
  v3 = [_displayedElements copy];

  return v3;
}

- (NSArray)unfilteredElements
{
  _unfilteredElements = [(VKCImageDataDetectorView *)self _unfilteredElements];
  v3 = [_unfilteredElements copy];

  return v3;
}

- (NSArray)displayedElementViews
{
  _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
  allObjects = [_displayedElementViews allObjects];

  return allObjects;
}

- (void)setContentsRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = VKCImageDataDetectorView;
  [(VKCImageBaseOverlayView *)&v4 setContentsRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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
  superview = [(VKCImageDataDetectorView *)self superview];
  if (superview)
  {
    v4 = superview;
    displayedElementViews = [(VKCImageDataDetectorView *)self displayedElementViews];
    if ([displayedElementViews count])
    {
    }

    else
    {
      displayedElements = [(VKCImageDataDetectorView *)self displayedElements];
      v7 = [displayedElements count];

      if (v7)
      {
        [(VKCImageDataDetectorView *)self loadDataDetectorViewsFromDisplayedElements];
      }
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VKCImageDataDetectorView;
  [(VKCImageDataDetectorView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VKCImageDataDetectorView *)self updateAllElementViewFramesIfNecessary];
}

- (void)setCustomAnalyticsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = VKCImageDataDetectorView;
  [(VKCImageBaseOverlayView *)&v9 setCustomAnalyticsIdentifier:identifierCopy];
  _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VKCImageDataDetectorView_setCustomAnalyticsIdentifier___block_invoke;
  v7[3] = &unk_1E7BE6D70;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [_displayedElementViews enumerateObjectsUsingBlock:v7];
}

- (void)activateLongPressDataDetectorAtPoint:(CGPoint)point maxDistance:(double)distance
{
  y = point.y;
  x = point.x;
  v8 = [VKCImageDataDetectorView closestElementToPoint:"closestElementToPoint:maxDistance:" maxDistance:?];
  _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__VKCImageDataDetectorView_activateLongPressDataDetectorAtPoint_maxDistance___block_invoke;
  v13[3] = &unk_1E7BE6D98;
  v10 = v8;
  v14 = v10;
  v11 = [_displayedElementViews vk_objectPassingTest:v13];

  if (!v11)
  {
    v12 = VKMUIStringForPoint(x, y);
    [VKAssert handleFailedAssertWithCondition:"elementView != ((void*)0)" functionName:"[VKCImageDataDetectorView activateLongPressDataDetectorAtPoint:maxDistance:]" simulateCrash:0 showAlert:0 format:@"Attempting to activate a long press data detector but no elementView was found. point: %@ maxDistance: %f", v12, *&distance];
  }

  [v11 manuallyActivateLongPressMenuInteraction];
}

BOOL __77__VKCImageDataDetectorView_activateLongPressDataDetectorAtPoint_maxDistance___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dataDetectorElement];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)setAllowLongPressDDActivationOnly:(BOOL)only
{
  if (self->_allowLongPressDDActivationOnly != only)
  {
    v9 = v3;
    v10 = v4;
    self->_allowLongPressDDActivationOnly = only;
    _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__VKCImageDataDetectorView_setAllowLongPressDDActivationOnly___block_invoke;
    v7[3] = &__block_descriptor_33_e40_v24__0__VKCDataDetectorElementView_8_B16l;
    onlyCopy = only;
    [_displayedElementViews enumerateObjectsUsingBlock:v7];
  }
}

- (void)updateDisplayedElements
{
  _allElements = [(VKCImageDataDetectorView *)self _allElements];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VKCImageDataDetectorView_updateDisplayedElements__block_invoke;
  v6[3] = &unk_1E7BE6DE0;
  v6[4] = self;
  v4 = [_allElements vk_objectsPassingTest:v6];
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

- (BOOL)shouldFilterElementForSpecialCase:(id)case
{
  caseCopy = case;
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  if ([caseCopy dataDetectorTypes] == 4)
  {
    [recognitionResult imageSize];
    v7 = v6;
    v8 = VKMRectWithSize();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    quad = [caseCopy quad];
    [quad boundingBox];
    VKMRectFromNormalizedSubrect(v8, v10, v12, v14, v16, v17, v18, v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if (![currentTraitCollection vk_isRTL])
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = VKCImageDataDetectorView;
  v5 = [(VKCImageDataDetectorView *)&v10 hitTest:event withEvent:test.x, test.y];
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
  superview = [(VKCImageDataDetectorView *)self superview];

  if (superview)
  {
    _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
    [_displayedElementViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [_displayedElementViews removeAllObjects];
    unfilteredElements = [(VKCImageDataDetectorView *)self unfilteredElements];
    displayedElements = [(VKCImageDataDetectorView *)self displayedElements];
    v7 = objc_opt_class();
    allowLongPressDDActivationOnly = [(VKCImageDataDetectorView *)self allowLongPressDDActivationOnly];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__VKCImageDataDetectorView_loadDataDetectorViewsFromDisplayedElements__block_invoke;
    v11[3] = &unk_1E7BE6E08;
    v12 = unfilteredElements;
    selfCopy = self;
    v14 = _displayedElementViews;
    v15 = v7;
    v16 = allowLongPressDDActivationOnly;
    v9 = _displayedElementViews;
    v10 = unfilteredElements;
    [displayedElements enumerateObjectsUsingBlock:v11];
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
    _displayedElementViews = [(VKCImageDataDetectorView *)self _displayedElementViews];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__VKCImageDataDetectorView_updateAllElementViewFrames__block_invoke;
    v23[3] = &unk_1E7BE6D70;
    v23[4] = self;
    [_displayedElementViews enumerateObjectsUsingBlock:v23];
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
  selfCopy = self;
  [(VKCImageDataDetectorView *)self bounds];
  v31 = v4;
  v32 = v3;
  v6 = v5;
  v8 = v7;
  [(VKCImageBaseOverlayView *)selfCopy contentsRect];
  v35 = v10;
  v36 = v9;
  v33 = v12;
  v34 = v11;
  [(VKCImageDataDetectorView *)selfCopy boundsUsedToCalculateElementFrames];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(VKCImageDataDetectorView *)selfCopy contentsRectUsedToCalculateElementFrames];
  v22 = v21;
  v24 = v23;
  v29 = v26;
  v30 = v25;
  LODWORD(selfCopy) = VKMSizeIsEmptyOrHasNanOrInf(v6, v8);
  v27 = VKMNearlyEqualRects(v32, v31, v6, v8, v14, v16, v18, v20);
  return ((selfCopy | v27 & VKMNearlyEqualRects(v36, v35, v34, v33, v22, v24, v30, v29)) & 1) == 0;
}

- (CGRect)frameForDataDetectorElement:(id)element
{
  elementCopy = element;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  quad = [elementCopy quad];

  v14 = [quad quadByConvertingFromNormalizedRectToView:self contentsRect:{v6, v8, v10, v12}];

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

- (id)viewSpaceQuadsForDataDetectorElement:(id)element
{
  elementCopy = element;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  selfCopy = self;
  boundingQuads = [elementCopy boundingQuads];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__VKCImageDataDetectorView_viewSpaceQuadsForDataDetectorElement___block_invoke;
  v18[3] = &unk_1E7BE6E30;
  v19 = selfCopy;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v15 = selfCopy;
  v16 = [boundingQuads vk_compactMap:v18];

  return v16;
}

- (id)closestElementToPoint:(CGPoint)point maxDistance:(double)distance
{
  y = point.y;
  x = point.x;
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
  displayedElementViews = [(VKCImageDataDetectorView *)self displayedElementViews];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__VKCImageDataDetectorView_closestElementToPoint_maxDistance___block_invoke;
  v19[3] = &unk_1E7BE6E58;
  *&v19[7] = distance;
  *&v19[8] = x;
  *&v19[9] = y;
  v19[10] = v9;
  v19[11] = v11;
  v19[12] = v13;
  v19[13] = v15;
  v19[4] = self;
  v19[5] = v20;
  v19[6] = &v21;
  [displayedElementViews enumerateObjectsUsingBlock:v19];

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

- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated
{
  if (self->_highlightSelectableItems != items)
  {
    self->_highlightSelectableItems = items;
  }
}

- (BOOL)dataDetectorElementView:(id)view shouldBeginAtPoint:(CGPoint)point
{
  selfCopy = self;
  [view convertPoint:self toView:{point.x, point.y}];
  v6 = v5;
  v8 = v7;
  delegate = [(VKCImageDataDetectorView *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate dataDetectorView:selfCopy dataDetectorInteractionShouldBeginAtPoint:{v6, v8}];

  return selfCopy;
}

- (void)willDisplayMenuForDataDetectorElementView:(id)view
{
  v13 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataDetectorElement = [viewCopy dataDetectorElement];
    analysisResult = [(VKCImageBaseOverlayView *)self analysisResult];
    v9 = 138412546;
    v10 = dataDetectorElement;
    v11 = 1024;
    analysisRequestID = [analysisResult analysisRequestID];
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Presenting menu for DD: %@ : id: %d", &v9, 0x12u);
  }

  delegate = [(VKCImageDataDetectorView *)self delegate];
  [delegate willDisplayMenuForDataDetectorView:self];
}

- (void)willDismissMenuForDataDetectorElementView:(id)view
{
  v13 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataDetectorElement = [viewCopy dataDetectorElement];
    analysisResult = [(VKCImageBaseOverlayView *)self analysisResult];
    v9 = 138412546;
    v10 = dataDetectorElement;
    v11 = 1024;
    analysisRequestID = [analysisResult analysisRequestID];
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing menu for DD: %@ : id: %d", &v9, 0x12u);
  }

  delegate = [(VKCImageDataDetectorView *)self delegate];
  [delegate willDismissMenuForDataDetectorView:self];
}

- (id)presentingViewControllerForInteractionWithDataDetectorElementView:(id)view
{
  delegate = [(VKCImageDataDetectorView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate presentingViewControllerForInteractionWithDataDetectorView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)previewForDataDetectorElementView:(id)view
{
  viewCopy = view;
  delegate = [(VKCImageDataDetectorView *)self delegate];
  v6 = [delegate previewForDataDetectorElementView:viewCopy];

  return v6;
}

- (id)previewImageForDataDetectorElementView:(id)view
{
  viewCopy = view;
  delegate = [(VKCImageDataDetectorView *)self delegate];
  v6 = [delegate previewImageForDataDetectorElementView:viewCopy];

  return v6;
}

- (CGRect)previewImageBoundsForDataDetectorElementView:(id)view
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

- (void)dataDetectorElementView:(id)view analyticsEventOccured:(id)occured
{
  occuredCopy = occured;
  delegate = [(VKCImageDataDetectorView *)self delegate];
  [delegate dataDetectorView:self analyticsEventOccured:occuredCopy];
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