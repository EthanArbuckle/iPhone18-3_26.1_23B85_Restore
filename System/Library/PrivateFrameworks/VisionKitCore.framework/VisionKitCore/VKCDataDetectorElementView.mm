@interface VKCDataDetectorElementView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)ignoresHitTest;
- (BOOL)isPointInQuad:(CGPoint)quad;
- (BOOL)shouldUseBCSAction;
- (CGRect)rectForMrcActionInViewController:(id)controller;
- (NSArray)subQuadsInBoundsCoordinates;
- (NSDictionary)dataDetectorContext;
- (VKCDataDetectorElementView)initWithDataDetectorElement:(id)element unfilteredElements:(id)elements;
- (VKCDataDetectorElementViewDelegate)delegate;
- (VKCMRCDataDetectorElement)mrcElement;
- (VKQuad)boundingQuadInBoundsCoordinates;
- (double)lineWithForAverageSubquadHeight;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)accessibilityValue;
- (id)analyticsEventWithDDType:(int64_t)type;
- (id)calcPathForUnderline;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)presentingViewControllerForInteraction;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didTap:(id)tap;
- (void)highlighter:(id)highlighter shouldHighlight:(BOOL)highlight;
- (void)layoutSubviews;
- (void)manuallyActivateLongPressMenuInteraction;
- (void)sendAnalyticsEventIfNecessaryForDDType:(int64_t)type;
- (void)setAllowLongPressDDActivationOnly:(BOOL)only;
- (void)updateHighlightPath;
@end

@implementation VKCDataDetectorElementView

- (VKCDataDetectorElementView)initWithDataDetectorElement:(id)element unfilteredElements:(id)elements
{
  elementCopy = element;
  elementsCopy = elements;
  v21.receiver = self;
  v21.super_class = VKCDataDetectorElementView;
  v9 = [(VKCDataDetectorElementView *)&v21 init];
  if (v9)
  {
    if (!elementCopy)
    {
      [VKAssert handleFailedAssertWithCondition:"((element) != nil)" functionName:"[VKCDataDetectorElementView initWithDataDetectorElement:unfilteredElements:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "element"];
    }

    objc_storeStrong(&v9->_dataDetectorElement, element);
    objc_storeStrong(&v9->_allDataDetectorElements, elements);
    v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightPathLayer = v9->_highlightPathLayer;
    v9->_highlightPathLayer = v10;

    [(CAShapeLayer *)v9->_highlightPathLayer setContentsGravity:*MEMORY[0x1E6979DF0]];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v9->_highlightPathLayer, "setFillColor:", [clearColor CGColor]);

    layer = [(VKCDataDetectorElementView *)v9 layer];
    [layer addSublayer:v9->_highlightPathLayer];

    [(VKCDataDetectorElementView *)v9 setAccessibilityIdentifier:@"com.apple.visionkit.dataDetectorElementView"];
    v14 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v9];
    menuInteraction = v9->_menuInteraction;
    v9->_menuInteraction = v14;

    [(VKCDataDetectorElementView *)v9 addInteraction:v9->_menuInteraction];
    v16 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v9];
    pointerInteraction = v9->_pointerInteraction;
    v9->_pointerInteraction = v16;

    [(VKCDataDetectorElementView *)v9 addInteraction:v9->_pointerInteraction];
    v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel_didTap_];
    [v18 setDelegate:v9];
    [(VKCDataDetectorElementView *)v9 addGestureRecognizer:v18];
    [(VKCDataDetectorElementView *)v9 setTapGestureRecognizer:v18];
    mrcElement = [(VKCDataDetectorElementView *)v9 mrcElement];
    [mrcElement setDelegate:v9];
  }

  return v9;
}

- (BOOL)shouldUseBCSAction
{
  mrcElement = [(VKCDataDetectorElementView *)self mrcElement];
  barcodeAction = [mrcElement barcodeAction];
  v4 = barcodeAction != 0;

  return v4;
}

- (VKCMRCDataDetectorElement)mrcElement
{
  v3 = objc_opt_class();
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v5 = VKDynamicCast(v3, dataDetectorElement);

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCDataDetectorElementView;
  [(VKCDataDetectorElementView *)&v3 layoutSubviews];
  [(VKCDataDetectorElementView *)self updateHighlightPath];
}

- (void)updateHighlightPath
{
  if ((vk_isSeedBuild() & 1) == 0)
  {
    calcPathForUnderline = [(VKCDataDetectorElementView *)self calcPathForUnderline];
    [(VKCDataDetectorElementView *)self setHighlightPath:calcPathForUnderline];

    highlightPath = [(VKCDataDetectorElementView *)self highlightPath];
    vk_CGPath = [highlightPath vk_CGPath];
    highlightPathLayer = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [highlightPathLayer setPath:vk_CGPath];

    [(VKCDataDetectorElementView *)self lineWithForAverageSubquadHeight];
    v8 = v7;
    highlightPathLayer2 = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [highlightPathLayer2 setLineWidth:v8];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v10 = systemGrayColor;
    cGColor = [systemGrayColor CGColor];
    highlightPathLayer3 = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [highlightPathLayer3 setStrokeColor:cGColor];
  }
}

- (void)setAllowLongPressDDActivationOnly:(BOOL)only
{
  if (self->_allowLongPressDDActivationOnly != only)
  {
    self->_allowLongPressDDActivationOnly = only;
    [(VKCDataDetectorElementView *)self updateHighlightPath];
    allowLongPressDDActivationOnly = self->_allowLongPressDDActivationOnly;
    pointerInteraction = [(VKCDataDetectorElementView *)self pointerInteraction];
    [pointerInteraction setEnabled:!allowLongPressDDActivationOnly];
  }
}

- (double)lineWithForAverageSubquadHeight
{
  v21 = *MEMORY[0x1E69E9840];
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  isTextDataDetector = [dataDetectorElement isTextDataDetector];

  v5 = 2.0;
  if (isTextDataDetector)
  {
    subQuadsInBoundsCoordinates = [(VKCDataDetectorElementView *)self subQuadsInBoundsCoordinates];
    if ([subQuadsInBoundsCoordinates count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = subQuadsInBoundsCoordinates;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        v11 = 0.0;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v16 + 1) + 8 * i) maxHeight];
            v11 = v11 + v13;
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0.0;
      }

      v14 = [v7 count];
      if (v11 / v14 * 0.07 >= 1.0)
      {
        v5 = v11 / v14 * 0.07;
      }

      else
      {
        v5 = 1.0;
      }
    }
  }

  return v5;
}

- (id)calcPathForUnderline
{
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v4 = dataDetectorElement;
  if (!dataDetectorElement)
  {
    goto LABEL_5;
  }

  if (![dataDetectorElement isTextDataDetector] || -[VKCDataDetectorElementView allowLongPressDDActivationOnly](self, "allowLongPressDDActivationOnly"))
  {
    [v4 isMRCDataDetector];
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DC728]);
  subQuadsInBoundsCoordinates = [(VKCDataDetectorElementView *)self subQuadsInBoundsCoordinates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__VKCDataDetectorElementView_calcPathForUnderline__block_invoke;
  v9[3] = &unk_1E7BE4640;
  v5 = v7;
  v10 = v5;
  [subQuadsInBoundsCoordinates enumerateObjectsUsingBlock:v9];

LABEL_6:

  return v5;
}

uint64_t __50__VKCDataDetectorElementView_calcPathForUnderline__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bottomLeft];
  [v3 moveToPoint:?];
  v5 = *(a1 + 32);
  [v4 bottomRight];
  v7 = v6;
  v9 = v8;

  return [v5 vk_addLineToPoint:{v7, v9}];
}

- (NSArray)subQuadsInBoundsCoordinates
{
  [(VKCDataDetectorElementView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  [dataDetectorElement boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  dataDetectorElement2 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  boundingQuads = [dataDetectorElement2 boundingQuads];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__VKCDataDetectorElementView_subQuadsInBoundsCoordinates__block_invoke;
  v24[3] = &__block_descriptor_96_e22__32__0__VKQuad_8q16q24l;
  v24[4] = v13;
  v24[5] = v15;
  v24[6] = v17;
  v24[7] = v19;
  v24[8] = v4;
  v24[9] = v6;
  v24[10] = v8;
  v24[11] = v10;
  v22 = [boundingQuads vk_compactMap:v24];

  return v22;
}

id __57__VKCDataDetectorElementView_subQuadsInBoundsCoordinates__block_invoke(double *a1, void *a2)
{
  v3 = [a2 subquadFromRect:{a1[4], a1[5], a1[6], a1[7]}];
  v4 = [v3 quadMultipliedBySize:{a1[10], a1[11]}];

  return v4;
}

- (VKQuad)boundingQuadInBoundsCoordinates
{
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  [dataDetectorElement boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  dataDetectorElement2 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  quad = [dataDetectorElement2 quad];

  [(VKCDataDetectorElementView *)self bounds];
  v15 = v14;
  v17 = v16;
  v18 = [quad subquadFromRect:{v5, v7, v9, v11}];
  v19 = [v18 quadMultipliedBySize:{v15, v17}];

  return v19;
}

- (NSDictionary)dataDetectorContext
{
  if (!self->_dataDetectorContext)
  {
    dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
    scannerResult = [dataDetectorElement scannerResult];

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allDataDetectorElements = [(VKCDataDetectorElementView *)self allDataDetectorElements];
    v7 = [allDataDetectorElements vk_compactMap:&__block_literal_global_26];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v8 = getkDataDetectorsAllResultsKeySymbolLoc_ptr_0;
    v31 = getkDataDetectorsAllResultsKeySymbolLoc_ptr_0;
    if (!getkDataDetectorsAllResultsKeySymbolLoc_ptr_0)
    {
      v9 = DataDetectorsUILibrary_3();
      v29[3] = dlsym(v9, "kDataDetectorsAllResultsKey");
      getkDataDetectorsAllResultsKeySymbolLoc_ptr_0 = v29[3];
      v8 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v8)
    {
      [(NSDictionary *)v5 vk_setNonNilObject:v7 forKey:*v8];
      dataDetectorElement2 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      groupedElementData = [dataDetectorElement2 groupedElementData];
      [(NSDictionary *)v5 vk_addEntriesFromNonNilDictionary:groupedElementData];

      if (vk_isSeedBuild())
      {
        v12 = objc_alloc_init(VKCDataDetectorCatalystRevealHighlighter);
        [(VKCDataDetectorCatalystRevealHighlighter *)v12 setDelegate:self];
        [(VKCDataDetectorCatalystRevealHighlighter *)v12 setElementView:self];
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v13 = getkDDHighlighterKeySymbolLoc_ptr_0;
        v31 = getkDDHighlighterKeySymbolLoc_ptr_0;
        if (!getkDDHighlighterKeySymbolLoc_ptr_0)
        {
          v14 = DataDetectorsUILibrary_3();
          v29[3] = dlsym(v14, "kDDHighlighterKey");
          getkDDHighlighterKeySymbolLoc_ptr_0 = v29[3];
          v13 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (!v13)
        {
LABEL_21:
          v27 = getkDDRVInteractionDidFinishNotification_cold_1();
          _Block_object_dispose(&v28, 8);
          _Unwind_Resume(v27);
        }

        [(NSDictionary *)v5 vk_setNonNilObject:v12 forKey:*v13];
      }

      dataDetectorElement3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      scannerResult2 = [dataDetectorElement3 scannerResult];
      value = [scannerResult2 value];
      v18 = [value length];

      if (!v18)
      {
LABEL_15:
        dataDetectorContext = self->_dataDetectorContext;
        self->_dataDetectorContext = v5;

        goto LABEL_16;
      }

      value2 = [scannerResult value];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v20 = getkDataDetectorsMiddleTextSymbolLoc_ptr;
      v31 = getkDataDetectorsMiddleTextSymbolLoc_ptr;
      if (!getkDataDetectorsMiddleTextSymbolLoc_ptr)
      {
        v21 = DataDetectorsUILibrary_3();
        v29[3] = dlsym(v21, "kDataDetectorsMiddleText");
        getkDataDetectorsMiddleTextSymbolLoc_ptr = v29[3];
        v20 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v20)
      {
        [(NSDictionary *)v5 setObject:value2 forKeyedSubscript:*v20];

        goto LABEL_15;
      }
    }

    else
    {
      getkDDRVInteractionDidFinishNotification_cold_1();
    }

    getkDDRVInteractionDidFinishNotification_cold_1();
    goto LABEL_21;
  }

LABEL_16:
  DDContextMenuActionClass_0 = getDDContextMenuActionClass_0();
  v24 = self->_dataDetectorContext;
  [(VKCDataDetectorElementView *)self bounds];
  v25 = [DDContextMenuActionClass_0 updateContext:v24 withSourceRect:?];

  return v25;
}

id __49__VKCDataDetectorElementView_dataDetectorContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 scannerResult];
  v3 = [v2 coreResult];

  return v3;
}

- (void)didTap:(id)tap
{
  v25 = *MEMORY[0x1E69E9840];
  [tap locationInView:self];
  v5 = v4;
  v7 = v6;
  if ([(VKCDataDetectorElementView *)self isPointInQuad:?])
  {
    delegate = [(VKCDataDetectorElementView *)self delegate];
    v9 = [delegate dataDetectorElementView:self shouldBeginAtPoint:{v5, v7}];

    if (v9)
    {
      [(VKCDataDetectorElementView *)self setIsPerformingManualContextInvocation:1];
      dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
      scannerResult = [dataDetectorElement scannerResult];

      if (scannerResult && (vk_isSeedBuild() & 1) == 0)
      {
        v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          dataDetectorElement2 = [(VKCDataDetectorElementView *)self dataDetectorElement];
          v21 = 138412546;
          v22 = dataDetectorElement2;
          v23 = 1024;
          analysisRequestID = [(VKCDataDetectorElementView *)self analysisRequestID];
          _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_DEFAULT, "Performing default action for DD: %@, %d", &v21, 0x12u);
        }

        dataDetectorElement3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
        scannerResult2 = [dataDetectorElement3 scannerResult];
        coreResult = [scannerResult2 coreResult];

        DDContextMenuActionClass_0 = getDDContextMenuActionClass_0();
        menuInteraction = [(VKCDataDetectorElementView *)self menuInteraction];
        dataDetectorContext = [(VKCDataDetectorElementView *)self dataDetectorContext];
        [DDContextMenuActionClass_0 performDefaultActionWithResult:coreResult inView:self atLocation:menuInteraction withMenuInteraction:dataDetectorContext context:{v5, v7}];
      }

      else
      {
        menuInteraction2 = [(VKCDataDetectorElementView *)self menuInteraction];
        [menuInteraction2 _presentMenuAtLocation:{v5, v7}];
      }

      [(VKCDataDetectorElementView *)self sendAnalyticsEventIfNecessaryForDDType:0];
      [(VKCDataDetectorElementView *)self setIsPerformingManualContextInvocation:0];
    }
  }
}

- (BOOL)ignoresHitTest
{
  pointerInteraction = [(VKCDataDetectorElementView *)self pointerInteraction];
  isEnabled = [pointerInteraction isEnabled];

  return isEnabled ^ 1;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCD98] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)manuallyActivateLongPressMenuInteraction
{
  menuInteraction = [(VKCDataDetectorElementView *)self menuInteraction];
  boundingQuadInBoundsCoordinates = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  [boundingQuadInBoundsCoordinates vertexCentroid];
  [menuInteraction _presentMenuAtLocation:?];
}

- (void)sendAnalyticsEventIfNecessaryForDDType:(int64_t)type
{
  v5 = [(VKCDataDetectorElementView *)self analyticsEventWithDDType:type];
  if (v5)
  {
    delegate = [(VKCDataDetectorElementView *)self delegate];
    [delegate dataDetectorElementView:self analyticsEventOccured:v5];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCDataDetectorElementView sendAnalyticsEventIfNecessaryForDDType:]" simulateCrash:0 showAlert:0 format:@"Trying to send an analytics event, but the event was nil, bailing"];
  }
}

- (id)analyticsEventWithDDType:(int64_t)type
{
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  if ([dataDetectorElement isMRCDataDetector])
  {
    v6 = off_1E7BE3030;
LABEL_5:
    v7 = objc_alloc(*v6);
    v8 = objc_opt_class();
    v9 = VKCheckedDynamicCast(v8, dataDetectorElement);
    customAnalyticsIdentifier = [(VKCDataDetectorElementView *)self customAnalyticsIdentifier];
    v11 = [v7 initWithElement:v9 eventType:type customIdentifier:customAnalyticsIdentifier];

    goto LABEL_7;
  }

  if ([dataDetectorElement isTextDataDetector])
  {
    v6 = off_1E7BE3018;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(VKCDataDetectorElementView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == recognizerCopy)
  {
    allowLongPressDDActivationOnly = [(VKCDataDetectorElementView *)self allowLongPressDDActivationOnly];

    if (!allowLongPressDDActivationOnly)
    {
      [touchCopy locationInView:self];
      v10 = [(VKCDataDetectorElementView *)self isPointInQuad:?];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)presentingViewControllerForInteraction
{
  delegate = [(VKCDataDetectorElementView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate presentingViewControllerForInteractionWithDataDetectorElementView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:self];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(VKCDataDetectorElementView *)self isPointInQuad:event, test.x, test.y])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isPointInQuad:(CGPoint)quad
{
  y = quad.y;
  x = quad.x;
  if (([(VKCDataDetectorElementView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(VKCDataDetectorElementView *)self alpha];
  if (v6 <= 0.0)
  {
    return 0;
  }

  boundingQuadInBoundsCoordinates = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  v8 = [boundingQuadInBoundsCoordinates containsPoint:{x, y}];

  return v8;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  delegate = [(VKCDataDetectorElementView *)self delegate];
  v8 = [delegate dataDetectorElementView:self shouldBeginAtPoint:{x, y}];

  if (v8)
  {
    isPerformingManualContextInvocation = [(VKCDataDetectorElementView *)self isPerformingManualContextInvocation];
    v10 = @"manualInvocation";
    if (!isPerformingManualContextInvocation)
    {
      v10 = 0;
    }

    v11 = v10;
    if ([(VKCDataDetectorElementView *)self shouldUseBCSAction])
    {
      mrcElement = [(VKCDataDetectorElementView *)self mrcElement];
      presentingViewControllerForInteraction = [(VKCDataDetectorElementView *)self presentingViewControllerForInteraction];
      [mrcElement setPresentingViewControllerForMrcAction:presentingViewControllerForInteraction];

      mrcMenu = [mrcElement mrcMenu];
      v15 = MEMORY[0x1E69DC8D8];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__VKCDataDetectorElementView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
      v24[3] = &unk_1E7BE6528;
      v25 = mrcMenu;
      v16 = mrcMenu;
      v17 = [v15 configurationWithIdentifier:v11 previewProvider:&__block_literal_global_193 actionProvider:v24];
    }

    else
    {
      DDContextMenuActionClass_0 = getDDContextMenuActionClass_0();
      dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
      scannerResult = [dataDetectorElement scannerResult];
      coreResult = [scannerResult coreResult];
      dataDetectorContext = [(VKCDataDetectorElementView *)self dataDetectorContext];
      v17 = [DDContextMenuActionClass_0 contextMenuConfigurationWithResult:coreResult inView:self context:dataDetectorContext menuIdentifier:v11];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v49[1] = *MEMORY[0x1E69E9840];
  v5 = [(VKCDataDetectorElementView *)self delegate:interaction];
  selfCopy = [v5 previewForDataDetectorElementView:self];

  if (!selfCopy)
  {
    delegate = [(VKCDataDetectorElementView *)self delegate];
    v31 = [delegate previewImageForDataDetectorElementView:self];

    if (v31)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [v32 setImage:v31];
      delegate2 = [(VKCDataDetectorElementView *)self delegate];
      [delegate2 previewImageBoundsForDataDetectorElementView:self];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [v32 setFrame:{v35, v37, v39, v41}];
      [(VKCDataDetectorElementView *)self frame];
      v15 = [v32 resizableSnapshotViewFromRect:1 afterScreenUpdates:VKMSubtractPoints(v42 withCapInsets:{v43, v35)}];
      [(VKCDataDetectorElementView *)self bounds];
      v8 = v44;
      v10 = v45;
      v12 = v46;
      v14 = v47;
      selfCopy = self;
    }

    else
    {
      v15 = 0;
      selfCopy = 0;
      v12 = *(MEMORY[0x1E695F058] + 16);
      v14 = *(MEMORY[0x1E695F058] + 24);
      v8 = *MEMORY[0x1E695F058];
      v10 = *(MEMORY[0x1E695F058] + 8);
    }

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  [(VKCDataDetectorElementView *)self bounds];
  [(VKCDataDetectorElementView *)self convertRect:selfCopy toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [VKCDataDetectorElementView resizableSnapshotViewFromRect:selfCopy afterScreenUpdates:"resizableSnapshotViewFromRect:afterScreenUpdates:withCapInsets:" withCapInsets:0];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_3:
  boundingQuadInBoundsCoordinates = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  v17 = [boundingQuadInBoundsCoordinates quadByConvertingFromView:self toView:selfCopy isNormalized:0];

  v18 = [v17 quadFromSubtractingPoint:{v8, v10}];

  path = [v18 path];
  v20 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  [v18 maxHeight];
  v22 = v21 * 0.15;
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  if ([dataDetectorElement isMRCDataDetector])
  {
    v22 = 0.0;
  }

  v24 = MEMORY[0x1E69DC728];
  v49[0] = path;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  v26 = [v24 vk_groupAndRoundPaths:v25 radius:v22 offset:0.0];

  [v20 setVisiblePath:v26];
  v27 = objc_alloc(MEMORY[0x1E69DD068]);
  v28 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:selfCopy center:{VKMCenterOfRect(v8, v10, v12, v14)}];
  v29 = [v27 initWithView:v15 parameters:v20 target:v28];

LABEL_11:

  return v29;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = [(VKCDataDetectorElementView *)self delegate:interaction];
  [v6 willDisplayMenuForDataDetectorElementView:self];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  delegate = [(VKCDataDetectorElementView *)self delegate];
  [delegate willDismissMenuForDataDetectorElementView:self];

  v8 = objc_opt_class();
  identifier = [configurationCopy identifier];

  v10 = VKDynamicCast(v8, identifier);
  v11 = [v10 isEqual:@"manualInvocation"];

  [(VKCDataDetectorElementView *)self sendAnalyticsEventIfNecessaryForDDType:v11 ^ 1u];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v10 = getDDContextMenuConfigurationClass_softClass;
  v16 = getDDContextMenuConfigurationClass_softClass;
  if (!getDDContextMenuConfigurationClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getDDContextMenuConfigurationClass_block_invoke;
    v12[3] = &unk_1E7BE3F48;
    v12[4] = &v13;
    __getDDContextMenuConfigurationClass_block_invoke(v12);
    v10 = v14[3];
  }

  v11 = v10;
  _Block_object_dispose(&v13, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [configurationCopy performPreviewActionForMenuWithAnimator:animatorCopy];
  }
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_opt_class();
  identifier = [configurationCopy identifier];

  v7 = VKDynamicCast(v5, identifier);
  LODWORD(configurationCopy) = [v7 isEqualToString:@"manualInvocation"];

  if (configurationCopy)
  {
    defaultStyle = [MEMORY[0x1E69DD440] defaultStyle];
    [defaultStyle setPreferredLayout:3];
  }

  else
  {
    defaultStyle = 0;
  }

  return defaultStyle;
}

- (void)highlighter:(id)highlighter shouldHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  highlighterCopy = highlighter;
  highlightPathLayer = [(VKCDataDetectorElementView *)self highlightPathLayer];
  v7 = highlightPathLayer;
  if (highlightCopy)
  {
    elementView = [highlighterCopy elementView];
    boundingQuadInBoundsCoordinates = [elementView boundingQuadInBoundsCoordinates];
    path = [boundingQuadInBoundsCoordinates path];
    [v7 setPath:{objc_msgSend(path, "vk_CGPath")}];

    [(UIView *)self vk_viewPointRatioFromWindow];
    [v7 setLineWidth:v11 + v11];
    yellowColor = [MEMORY[0x1E69DC888] yellowColor];
    [v7 setStrokeColor:{objc_msgSend(yellowColor, "CGColor")}];

    [v7 setHidden:0];
  }

  else
  {
    [highlightPathLayer setHidden:1];
  }
}

- (id)accessibilityValue
{
  dataDetectorElement = [(VKCDataDetectorElementView *)self dataDetectorElement];
  scannerResult = [dataDetectorElement scannerResult];
  value = [scannerResult value];

  return value;
}

- (CGRect)rectForMrcActionInViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    [(VKCDataDetectorElementView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    view = [controllerCopy view];

    [(VKCDataDetectorElementView *)self convertRect:view toView:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (VKCDataDetectorElementViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end