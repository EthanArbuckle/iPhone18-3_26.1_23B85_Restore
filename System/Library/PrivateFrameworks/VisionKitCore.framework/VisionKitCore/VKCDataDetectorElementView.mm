@interface VKCDataDetectorElementView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)ignoresHitTest;
- (BOOL)isPointInQuad:(CGPoint)a3;
- (BOOL)shouldUseBCSAction;
- (CGRect)rectForMrcActionInViewController:(id)a3;
- (NSArray)subQuadsInBoundsCoordinates;
- (NSDictionary)dataDetectorContext;
- (VKCDataDetectorElementView)initWithDataDetectorElement:(id)a3 unfilteredElements:(id)a4;
- (VKCDataDetectorElementViewDelegate)delegate;
- (VKCMRCDataDetectorElement)mrcElement;
- (VKQuad)boundingQuadInBoundsCoordinates;
- (double)lineWithForAverageSubquadHeight;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)accessibilityValue;
- (id)analyticsEventWithDDType:(int64_t)a3;
- (id)calcPathForUnderline;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)presentingViewControllerForInteraction;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didTap:(id)a3;
- (void)highlighter:(id)a3 shouldHighlight:(BOOL)a4;
- (void)layoutSubviews;
- (void)manuallyActivateLongPressMenuInteraction;
- (void)sendAnalyticsEventIfNecessaryForDDType:(int64_t)a3;
- (void)setAllowLongPressDDActivationOnly:(BOOL)a3;
- (void)updateHighlightPath;
@end

@implementation VKCDataDetectorElementView

- (VKCDataDetectorElementView)initWithDataDetectorElement:(id)a3 unfilteredElements:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = VKCDataDetectorElementView;
  v9 = [(VKCDataDetectorElementView *)&v21 init];
  if (v9)
  {
    if (!v7)
    {
      [VKAssert handleFailedAssertWithCondition:"((element) != nil)" functionName:"[VKCDataDetectorElementView initWithDataDetectorElement:unfilteredElements:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "element"];
    }

    objc_storeStrong(&v9->_dataDetectorElement, a3);
    objc_storeStrong(&v9->_allDataDetectorElements, a4);
    v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
    highlightPathLayer = v9->_highlightPathLayer;
    v9->_highlightPathLayer = v10;

    [(CAShapeLayer *)v9->_highlightPathLayer setContentsGravity:*MEMORY[0x1E6979DF0]];
    v12 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v9->_highlightPathLayer, "setFillColor:", [v12 CGColor]);

    v13 = [(VKCDataDetectorElementView *)v9 layer];
    [v13 addSublayer:v9->_highlightPathLayer];

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
    v19 = [(VKCDataDetectorElementView *)v9 mrcElement];
    [v19 setDelegate:v9];
  }

  return v9;
}

- (BOOL)shouldUseBCSAction
{
  v2 = [(VKCDataDetectorElementView *)self mrcElement];
  v3 = [v2 barcodeAction];
  v4 = v3 != 0;

  return v4;
}

- (VKCMRCDataDetectorElement)mrcElement
{
  v3 = objc_opt_class();
  v4 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v5 = VKDynamicCast(v3, v4);

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
    v3 = [(VKCDataDetectorElementView *)self calcPathForUnderline];
    [(VKCDataDetectorElementView *)self setHighlightPath:v3];

    v4 = [(VKCDataDetectorElementView *)self highlightPath];
    v5 = [v4 vk_CGPath];
    v6 = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [v6 setPath:v5];

    [(VKCDataDetectorElementView *)self lineWithForAverageSubquadHeight];
    v8 = v7;
    v9 = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [v9 setLineWidth:v8];

    v13 = [MEMORY[0x1E69DC888] systemGrayColor];
    v10 = v13;
    v11 = [v13 CGColor];
    v12 = [(VKCDataDetectorElementView *)self highlightPathLayer];
    [v12 setStrokeColor:v11];
  }
}

- (void)setAllowLongPressDDActivationOnly:(BOOL)a3
{
  if (self->_allowLongPressDDActivationOnly != a3)
  {
    self->_allowLongPressDDActivationOnly = a3;
    [(VKCDataDetectorElementView *)self updateHighlightPath];
    allowLongPressDDActivationOnly = self->_allowLongPressDDActivationOnly;
    v5 = [(VKCDataDetectorElementView *)self pointerInteraction];
    [v5 setEnabled:!allowLongPressDDActivationOnly];
  }
}

- (double)lineWithForAverageSubquadHeight
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v4 = [v3 isTextDataDetector];

  v5 = 2.0;
  if (v4)
  {
    v6 = [(VKCDataDetectorElementView *)self subQuadsInBoundsCoordinates];
    if ([v6 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
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
  v3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (![v3 isTextDataDetector] || -[VKCDataDetectorElementView allowLongPressDDActivationOnly](self, "allowLongPressDDActivationOnly"))
  {
    [v4 isMRCDataDetector];
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v8 = [(VKCDataDetectorElementView *)self subQuadsInBoundsCoordinates];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__VKCDataDetectorElementView_calcPathForUnderline__block_invoke;
  v9[3] = &unk_1E7BE4640;
  v5 = v7;
  v10 = v5;
  [v8 enumerateObjectsUsingBlock:v9];

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
  v11 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  [v11 boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v21 = [v20 boundingQuads];
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
  v22 = [v21 vk_compactMap:v24];

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
  v3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  [v3 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v13 = [v12 quad];

  [(VKCDataDetectorElementView *)self bounds];
  v15 = v14;
  v17 = v16;
  v18 = [v13 subquadFromRect:{v5, v7, v9, v11}];
  v19 = [v18 quadMultipliedBySize:{v15, v17}];

  return v19;
}

- (NSDictionary)dataDetectorContext
{
  if (!self->_dataDetectorContext)
  {
    v3 = [(VKCDataDetectorElementView *)self dataDetectorElement];
    v4 = [v3 scannerResult];

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [(VKCDataDetectorElementView *)self allDataDetectorElements];
    v7 = [v6 vk_compactMap:&__block_literal_global_26];

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
      v10 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      v11 = [v10 groupedElementData];
      [(NSDictionary *)v5 vk_addEntriesFromNonNilDictionary:v11];

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

      v15 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      v16 = [v15 scannerResult];
      v17 = [v16 value];
      v18 = [v17 length];

      if (!v18)
      {
LABEL_15:
        dataDetectorContext = self->_dataDetectorContext;
        self->_dataDetectorContext = v5;

        goto LABEL_16;
      }

      v19 = [v4 value];
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
        [(NSDictionary *)v5 setObject:v19 forKeyedSubscript:*v20];

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

- (void)didTap:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  if ([(VKCDataDetectorElementView *)self isPointInQuad:?])
  {
    v8 = [(VKCDataDetectorElementView *)self delegate];
    v9 = [v8 dataDetectorElementView:self shouldBeginAtPoint:{v5, v7}];

    if (v9)
    {
      [(VKCDataDetectorElementView *)self setIsPerformingManualContextInvocation:1];
      v10 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      v11 = [v10 scannerResult];

      if (v11 && (vk_isSeedBuild() & 1) == 0)
      {
        v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(VKCDataDetectorElementView *)self dataDetectorElement];
          v21 = 138412546;
          v22 = v14;
          v23 = 1024;
          v24 = [(VKCDataDetectorElementView *)self analysisRequestID];
          _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_DEFAULT, "Performing default action for DD: %@, %d", &v21, 0x12u);
        }

        v15 = [(VKCDataDetectorElementView *)self dataDetectorElement];
        v16 = [v15 scannerResult];
        v17 = [v16 coreResult];

        DDContextMenuActionClass_0 = getDDContextMenuActionClass_0();
        v19 = [(VKCDataDetectorElementView *)self menuInteraction];
        v20 = [(VKCDataDetectorElementView *)self dataDetectorContext];
        [DDContextMenuActionClass_0 performDefaultActionWithResult:v17 inView:self atLocation:v19 withMenuInteraction:v20 context:{v5, v7}];
      }

      else
      {
        v12 = [(VKCDataDetectorElementView *)self menuInteraction];
        [v12 _presentMenuAtLocation:{v5, v7}];
      }

      [(VKCDataDetectorElementView *)self sendAnalyticsEventIfNecessaryForDDType:0];
      [(VKCDataDetectorElementView *)self setIsPerformingManualContextInvocation:0];
    }
  }
}

- (BOOL)ignoresHitTest
{
  v2 = [(VKCDataDetectorElementView *)self pointerInteraction];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCD98] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)manuallyActivateLongPressMenuInteraction
{
  v4 = [(VKCDataDetectorElementView *)self menuInteraction];
  v3 = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  [v3 vertexCentroid];
  [v4 _presentMenuAtLocation:?];
}

- (void)sendAnalyticsEventIfNecessaryForDDType:(int64_t)a3
{
  v5 = [(VKCDataDetectorElementView *)self analyticsEventWithDDType:a3];
  if (v5)
  {
    v4 = [(VKCDataDetectorElementView *)self delegate];
    [v4 dataDetectorElementView:self analyticsEventOccured:v5];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCDataDetectorElementView sendAnalyticsEventIfNecessaryForDDType:]" simulateCrash:0 showAlert:0 format:@"Trying to send an analytics event, but the event was nil, bailing"];
  }
}

- (id)analyticsEventWithDDType:(int64_t)a3
{
  v5 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  if ([v5 isMRCDataDetector])
  {
    v6 = off_1E7BE3030;
LABEL_5:
    v7 = objc_alloc(*v6);
    v8 = objc_opt_class();
    v9 = VKCheckedDynamicCast(v8, v5);
    v10 = [(VKCDataDetectorElementView *)self customAnalyticsIdentifier];
    v11 = [v7 initWithElement:v9 eventType:a3 customIdentifier:v10];

    goto LABEL_7;
  }

  if ([v5 isTextDataDetector])
  {
    v6 = off_1E7BE3018;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCDataDetectorElementView *)self tapGestureRecognizer];

  if (v8 == v7)
  {
    v9 = [(VKCDataDetectorElementView *)self allowLongPressDDActivationOnly];

    if (!v9)
    {
      [v6 locationInView:self];
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
  v3 = [(VKCDataDetectorElementView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 presentingViewControllerForInteractionWithDataDetectorElementView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:self];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(VKCDataDetectorElementView *)self isPointInQuad:a4, a3.x, a3.y])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPointInQuad:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(VKCDataDetectorElementView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(VKCDataDetectorElementView *)self alpha];
  if (v6 <= 0.0)
  {
    return 0;
  }

  v7 = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  v8 = [v7 containsPoint:{x, y}];

  return v8;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(VKCDataDetectorElementView *)self delegate];
  v8 = [v7 dataDetectorElementView:self shouldBeginAtPoint:{x, y}];

  if (v8)
  {
    v9 = [(VKCDataDetectorElementView *)self isPerformingManualContextInvocation];
    v10 = @"manualInvocation";
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10;
    if ([(VKCDataDetectorElementView *)self shouldUseBCSAction])
    {
      v12 = [(VKCDataDetectorElementView *)self mrcElement];
      v13 = [(VKCDataDetectorElementView *)self presentingViewControllerForInteraction];
      [v12 setPresentingViewControllerForMrcAction:v13];

      v14 = [v12 mrcMenu];
      v15 = MEMORY[0x1E69DC8D8];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__VKCDataDetectorElementView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
      v24[3] = &unk_1E7BE6528;
      v25 = v14;
      v16 = v14;
      v17 = [v15 configurationWithIdentifier:v11 previewProvider:&__block_literal_global_193 actionProvider:v24];
    }

    else
    {
      DDContextMenuActionClass_0 = getDDContextMenuActionClass_0();
      v19 = [(VKCDataDetectorElementView *)self dataDetectorElement];
      v20 = [v19 scannerResult];
      v21 = [v20 coreResult];
      v22 = [(VKCDataDetectorElementView *)self dataDetectorContext];
      v17 = [DDContextMenuActionClass_0 contextMenuConfigurationWithResult:v21 inView:self context:v22 menuIdentifier:v11];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v5 = [(VKCDataDetectorElementView *)self delegate:a3];
  v6 = [v5 previewForDataDetectorElementView:self];

  if (!v6)
  {
    v30 = [(VKCDataDetectorElementView *)self delegate];
    v31 = [v30 previewImageForDataDetectorElementView:self];

    if (v31)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [v32 setImage:v31];
      v33 = [(VKCDataDetectorElementView *)self delegate];
      [v33 previewImageBoundsForDataDetectorElementView:self];
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
      v6 = self;
    }

    else
    {
      v15 = 0;
      v6 = 0;
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
  [(VKCDataDetectorElementView *)self convertRect:v6 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [VKCDataDetectorElementView resizableSnapshotViewFromRect:v6 afterScreenUpdates:"resizableSnapshotViewFromRect:afterScreenUpdates:withCapInsets:" withCapInsets:0];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = [(VKCDataDetectorElementView *)self boundingQuadInBoundsCoordinates];
  v17 = [v16 quadByConvertingFromView:self toView:v6 isNormalized:0];

  v18 = [v17 quadFromSubtractingPoint:{v8, v10}];

  v19 = [v18 path];
  v20 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  [v18 maxHeight];
  v22 = v21 * 0.15;
  v23 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  if ([v23 isMRCDataDetector])
  {
    v22 = 0.0;
  }

  v24 = MEMORY[0x1E69DC728];
  v49[0] = v19;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  v26 = [v24 vk_groupAndRoundPaths:v25 radius:v22 offset:0.0];

  [v20 setVisiblePath:v26];
  v27 = objc_alloc(MEMORY[0x1E69DD068]);
  v28 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:v6 center:{VKMCenterOfRect(v8, v10, v12, v14)}];
  v29 = [v27 initWithView:v15 parameters:v20 target:v28];

LABEL_11:

  return v29;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(VKCDataDetectorElementView *)self delegate:a3];
  [v6 willDisplayMenuForDataDetectorElementView:self];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a4;
  v7 = [(VKCDataDetectorElementView *)self delegate];
  [v7 willDismissMenuForDataDetectorElementView:self];

  v8 = objc_opt_class();
  v9 = [v6 identifier];

  v10 = VKDynamicCast(v8, v9);
  v11 = [v10 isEqual:@"manualInvocation"];

  [(VKCDataDetectorElementView *)self sendAnalyticsEventIfNecessaryForDDType:v11 ^ 1u];
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
    [v8 performPreviewActionForMenuWithAnimator:v9];
  }
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [v4 identifier];

  v7 = VKDynamicCast(v5, v6);
  LODWORD(v4) = [v7 isEqualToString:@"manualInvocation"];

  if (v4)
  {
    v8 = [MEMORY[0x1E69DD440] defaultStyle];
    [v8 setPreferredLayout:3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)highlighter:(id)a3 shouldHighlight:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = [(VKCDataDetectorElementView *)self highlightPathLayer];
  v7 = v6;
  if (v4)
  {
    v8 = [v13 elementView];
    v9 = [v8 boundingQuadInBoundsCoordinates];
    v10 = [v9 path];
    [v7 setPath:{objc_msgSend(v10, "vk_CGPath")}];

    [(UIView *)self vk_viewPointRatioFromWindow];
    [v7 setLineWidth:v11 + v11];
    v12 = [MEMORY[0x1E69DC888] yellowColor];
    [v7 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

    [v7 setHidden:0];
  }

  else
  {
    [v6 setHidden:1];
  }
}

- (id)accessibilityValue
{
  v2 = [(VKCDataDetectorElementView *)self dataDetectorElement];
  v3 = [v2 scannerResult];
  v4 = [v3 value];

  return v4;
}

- (CGRect)rectForMrcActionInViewController:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(VKCDataDetectorElementView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v4 view];

    [(VKCDataDetectorElementView *)self convertRect:v13 toView:v6, v8, v10, v12];
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