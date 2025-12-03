@interface VKCImageTextSelectionView_iOS
+ (BOOL)processHasSnapshotDragEntitlement;
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (BOOL)longPressHandler:(id)handler gestureRecognizer:(id)recognizer shouldRecieveTouch:(id)touch;
- (BOOL)longPressHandler:(id)handler gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (NSArray)gesturesForFailureRequirements;
- (UITextInputDelegate)inputDelegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (VKCImageTextSelectionView_iOS)initWithCoder:(id)coder;
- (VKCImageTextSelectionView_iOS)initWithFrame:(CGRect)frame;
- (VKCTextPointerTrackingView)textPointerTrackingView;
- (id)_accessibilityUserTestingChildren;
- (id)_rvItemForSelectedRange;
- (id)_rvItemInRange:(_NSRange)range;
- (id)_textImageFromRect:(CGRect)rect;
- (id)_textRangeForActions;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)selectedTextPathsConvertedToView:(id)view;
- (id)targetedDragPreviewForCurrentSelection;
- (id)targetedDragPreviewWithLabelsForCurrentSelection;
- (id)text;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)_availableTextServices;
- (unint64_t)currentDraggedRectEdge;
- (void)_addShortcut:(id)shortcut;
- (void)_define:(id)_define;
- (void)_lookup:(id)_lookup;
- (void)_share:(id)_share;
- (void)_translate:(id)_translate;
- (void)beginSelectionChange;
- (void)commonInit;
- (void)copy:(id)copy;
- (void)didLongPress:(id)press;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)endSelectionChange;
- (void)presentShareSheetForCustomStrings:(id)strings attributedString:(id)string;
- (void)selectAll:(id)all;
- (void)setContentsRect:(CGRect)rect;
- (void)setHidden:(BOOL)hidden;
- (void)setLongPressDataDetectorsInTextMode:(BOOL)mode;
- (void)setRecognitionResult:(id)result;
- (void)setSelectedTextRange:(id)range;
- (void)setSelectedVKRange:(id)range;
- (void)suppressSelectionViewGrabbers;
- (void)updateSelectionRectsForWindowChange;
- (void)useInteractionOptions:(unint64_t)options;
@end

@implementation VKCImageTextSelectionView_iOS

- (void)commonInit
{
  v10 = [MEMORY[0x1E69DD110] textInteractionForMode:1];
  [v10 setTextInput:self];
  [v10 setDelegate:self];
  v3 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
  [v3 setEnabled:1];
  [(VKCImageTextSelectionView_iOS *)self addInteraction:v3];
  [(VKCImageTextSelectionView_iOS *)self setDragInteraction:v3];
  [(VKCImageTextSelectionView_iOS *)self addInteraction:v10];
  [(VKCImageTextSelectionView_iOS *)self setTextInteraction:v10];
  v4 = +[VKTextRange emptyRange];
  [(VKCImageTextSelectionView_iOS *)self setSelectedTextRange:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_didLongPress_];
  longPressGR = self->_longPressGR;
  self->_longPressGR = v5;

  v7 = objc_alloc_init(VKCTextSelectionLongPressDelegateHandler);
  longPressHandler = self->_longPressHandler;
  self->_longPressHandler = v7;

  [(VKCTextSelectionLongPressDelegateHandler *)self->_longPressHandler setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_longPressGR setDelegate:self->_longPressHandler];
  [(UILongPressGestureRecognizer *)self->_longPressGR setAllowableMovement:5.0];
  [(VKCImageTextSelectionView_iOS *)self addGestureRecognizer:self->_longPressGR];
  v9 = [objc_alloc(MEMORY[0x1E69DCEC8]) initWithDelegate:self];
  [(VKCImageTextSelectionView_iOS *)self addInteraction:v9];

  self->_initializationComplete = 1;
}

- (VKCImageTextSelectionView_iOS)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VKCImageTextSelectionView_iOS;
  v3 = [(VKCImageTextSelectionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VKCImageTextSelectionView_iOS *)v3 commonInit];
  }

  return v4;
}

- (VKCImageTextSelectionView_iOS)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VKCImageTextSelectionView_iOS;
  v3 = [(VKCImageTextSelectionView_iOS *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(VKCImageTextSelectionView_iOS *)v3 commonInit];
  }

  return v4;
}

- (void)useInteractionOptions:(unint64_t)options
{
  optionsCopy = options;
  textInteraction = [(VKCImageTextSelectionView_iOS *)self textInteraction];

  if (textInteraction)
  {
    textInteraction2 = [(VKCImageTextSelectionView_iOS *)self textInteraction];
    [(VKCImageTextSelectionView_iOS *)self removeInteraction:textInteraction2];
  }

  if (optionsCopy)
  {
    v7 = [MEMORY[0x1E69DD110] textInteractionForMode:1001];
    if ((optionsCopy & 2) == 0)
    {
      v12 = v7;
      [v7 _setAllowsSelectionCommands:1];
      v7 = v12;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69DD110] textInteractionForMode:1];
  }

  v13 = v7;
  [v7 setTextInput:self];
  [v13 setDelegate:self];
  [(VKCImageTextSelectionView_iOS *)self addInteraction:v13];
  [(VKCImageTextSelectionView_iOS *)self setTextInteraction:v13];
  v8 = +[VKTextRange emptyRange];
  [(VKCImageTextSelectionView_iOS *)self setSelectedTextRange:v8];

  dragInteraction = [(VKCImageTextSelectionView_iOS *)self dragInteraction];

  if (dragInteraction)
  {
    dragInteraction2 = [(VKCImageTextSelectionView_iOS *)self dragInteraction];
    [(VKCImageTextSelectionView_iOS *)self removeInteraction:dragInteraction2];
  }

  if ((optionsCopy & 4) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
    [v11 setEnabled:1];
    [(VKCImageTextSelectionView_iOS *)self addInteraction:v11];
    [(VKCImageTextSelectionView_iOS *)self setDragInteraction:v11];
  }
}

- (int64_t)_availableTextServices
{
  v8.receiver = self;
  v8.super_class = VKCImageTextSelectionView_iOS;
  _availableTextServices = [(VKCImageTextSelectionView_iOS *)&v8 _availableTextServices];
  if (!_availableTextServices)
  {
    if ([MEMORY[0x1E69DC938] vk_isiPad])
    {
      return 0;
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

    if (!v5)
    {
      return 0;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      _availableTextServices = [mEMORY[0x1E69DC668] _availableTextServices];
    }
  }

  return _availableTextServices;
}

- (void)beginSelectionChange
{
  [(VKCImageTextSelectionView_iOS *)self setBeginSelectionChangedCalled:1];
  [(VKCImageTextSelectionView_iOS *)self setDraggedRectEdge:[(VKCImageTextSelectionView_iOS *)self currentDraggedRectEdge]];
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  [(VKCImageTextSelectionView_iOS *)self setPreSelectionChangeSelectedRange:selectedVKRange];
}

- (void)endSelectionChange
{
  [(VKCImageTextSelectionView_iOS *)self setDraggedRectEdge:0];
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  [(VKCImageTextSelectionView_iOS *)self setPreSelectionChangeSelectedRange:selectedVKRange];

  [(VKCImageTextSelectionView_iOS *)self setBeginSelectionChangedCalled:0];

  [(VKCImageTextSelectionView *)self sendAnalyticsEventWithSelector:0 type:0 source:1];
}

- (void)setSelectedVKRange:(id)range
{
  rangeCopy = range;
  inputDelegate = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
  [inputDelegate selectionWillChange:self];

  [(VKCImageTextSelectionView_iOS *)self setManuallySettingSelectedRange:1];
  [(VKCImageTextSelectionView_iOS *)self setSelectedTextRange:rangeCopy];

  [(VKCImageTextSelectionView_iOS *)self setManuallySettingSelectedRange:0];
  inputDelegate2 = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
  [inputDelegate2 selectionDidChange:self];
}

- (void)setHidden:(BOOL)hidden
{
  v7.receiver = self;
  v7.super_class = VKCImageTextSelectionView_iOS;
  [(VKCImageTextSelectionView_iOS *)&v7 setHidden:hidden];
  textInteraction = [(VKCImageTextSelectionView_iOS *)self textInteraction];
  if ([(VKCImageTextSelectionView_iOS *)self isHidden])
  {
    [(VKCImageTextSelectionView_iOS *)self removeInteraction:textInteraction];
  }

  else
  {
    interactions = [(VKCImageTextSelectionView_iOS *)self interactions];
    v6 = [interactions containsObject:textInteraction];

    if ((v6 & 1) == 0)
    {
      [(VKCImageTextSelectionView_iOS *)self addInteraction:textInteraction];
    }
  }
}

- (id)_textImageFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v9 = [textSelectionDelegate viewForImageSnapshotForTextSelectionView:self];

  [(VKCImageTextSelectionView_iOS *)self convertRect:v9 toView:x, y, width, height];
  v10 = [v9 vk_renderImageFromViewBackingStoreWithSubrect:?];

  return v10;
}

- (void)selectAll:(id)all
{
  v10 = *MEMORY[0x1E69E9840];
  allCopy = all;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Select All: %@", &v8, 0xCu);
  }

  documentRange = [(VKCImageTextSelectionView *)self documentRange];
  [(VKCImageTextSelectionView_iOS *)self setSelectedVKRange:documentRange];

  objc_opt_class();
  LOBYTE(documentRange) = objc_opt_isKindOfClass();

  if (documentRange)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [(VKCImageTextSelectionView *)self sendAnalyticsEventWithSelector:0 type:2 source:v7];
}

- (void)copy:(id)copy
{
  v20 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Copy: %@", buf, 0xCu);
  }

  _textRangeForActions = [(VKCImageTextSelectionView_iOS *)self _textRangeForActions];
  selectedText = [(VKCImageTextSelectionView *)self selectedText];
  v8 = [(VKCImageTextSelectionView *)self attributedTextInRange:_textRangeForActions];
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v10 = [textSelectionDelegate textSelectionView:self updateStringForCopy:selectedText];

  textSelectionDelegate2 = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v12 = [textSelectionDelegate2 textSelectionView:self updateAttributedStringForCopy:v8];

  v13 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v10];
  [v13 registerObject:v12 visibility:0];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v17 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [generalPasteboard setItemProviders:v15];

  objc_opt_class();
  LOBYTE(generalPasteboard) = objc_opt_isKindOfClass();

  if (generalPasteboard)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  [(VKCImageTextSelectionView *)self sendAnalyticsEventWithSelector:0 type:1 source:v16];
}

- (NSArray)gesturesForFailureRequirements
{
  textInteraction = [(VKCImageTextSelectionView_iOS *)self textInteraction];
  gesturesForFailureRequirements = [textInteraction gesturesForFailureRequirements];
  longPressGR = [(VKCImageTextSelectionView_iOS *)self longPressGR];
  v6 = [gesturesForFailureRequirements vk_arrayByAddingNonNilObject:longPressGR];

  return v6;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCImageBaseOverlayView *)self contentsRect];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (!CGRectEqualToRect(v15, v16))
  {
    inputDelegate = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
    [inputDelegate textWillChange:self];

    v14.receiver = self;
    v14.super_class = VKCImageTextSelectionView_iOS;
    [(VKCImageBaseOverlayView *)&v14 setContentsRect:x, y, width, height];
    inputDelegate2 = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
    [inputDelegate2 textDidChange:self];
  }
}

- (void)setRecognitionResult:(id)result
{
  v8.receiver = self;
  v8.super_class = VKCImageTextSelectionView_iOS;
  resultCopy = result;
  [(VKCImageTextSelectionView *)&v8 setRecognitionResult:resultCopy];
  v5 = [VKTextInputStringTokenizer alloc];
  v6 = [(VKTextInputStringTokenizer *)v5 initWithTextInput:self recognitionResult:resultCopy, v8.receiver, v8.super_class];
  [(VKCImageTextSelectionView_iOS *)self setTokenizer:v6];

  [resultCopy setTextDelegate:self];
  inputDelegate = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
  [inputDelegate textDidChange:self];

  [(VKCImageTextSelectionView_iOS *)self setAccessibilityElements:0];
}

- (void)setLongPressDataDetectorsInTextMode:(BOOL)mode
{
  modeCopy = mode;
  v6.receiver = self;
  v6.super_class = VKCImageTextSelectionView_iOS;
  [(VKCImageTextSelectionView *)&v6 setLongPressDataDetectorsInTextMode:?];
  longPressGR = [(VKCImageTextSelectionView_iOS *)self longPressGR];
  [longPressGR setEnabled:modeCopy];
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];

  if (!textSelectionDelegate)
  {
    return 1;
  }

  textSelectionDelegate2 = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v9 = [textSelectionDelegate2 textSelectionView:self shouldBeginAtPoint:{x, y}];

  return v9;
}

- (void)updateSelectionRectsForWindowChange
{
  interactionAssistant = [(VKCImageTextSelectionView_iOS *)self interactionAssistant];
  selectionView = [interactionAssistant selectionView];
  [selectionView updateSelectionRects];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type] == 11 && (vk_isSeedBuild() & 1) == 0)
  {
    [(VKCImageBaseOverlayView *)self normalizedPointFromViewPoint:x, y];
    v15 = v14;
    v17 = v16;
    recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
    allLineQuads = [recognitionResult allLineQuads];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__VKCImageTextSelectionView_iOS_hitTest_withEvent___block_invoke;
    v27[3] = &__block_descriptor_48_e23_B32__0__VKQuad_8Q16_B24l;
    v27[4] = v15;
    v27[5] = v17;
    textPointerTrackingView3 = [allLineQuads vk_objectPassingTest:v27];

    if (textPointerTrackingView3)
    {
      [(VKCImageBaseOverlayView *)self contentsRect];
      v20 = [textPointerTrackingView3 quadByConvertingFromNormalizedRectToView:self contentsRect:?];
      textPointerTrackingView = [(VKCImageTextSelectionView_iOS *)self textPointerTrackingView];
      quad = [textPointerTrackingView quad];
      v23 = VKMNearlyEqualVKQuads(quad, v20);

      if (!v23)
      {
        textPointerTrackingView2 = [(VKCImageTextSelectionView_iOS *)self textPointerTrackingView];
        [textPointerTrackingView2 removeFromSuperview];

        v25 = [[VKCTextPointerTrackingView alloc] initWithQuad:v20];
        [(VKCImageTextSelectionView_iOS *)self addSubview:v25];
        [(VKCImageTextSelectionView_iOS *)self setTextPointerTrackingView:v25];
      }
    }
  }

  else
  {
    textPointerTrackingView3 = [(VKCImageTextSelectionView_iOS *)self textPointerTrackingView];
    [textPointerTrackingView3 removeFromSuperview];
  }

  v26.receiver = self;
  v26.super_class = VKCImageTextSelectionView_iOS;
  selfCopy = [(VKCImageTextSelectionView_iOS *)&v26 hitTest:eventCopy withEvent:x, y];
  if (!selfCopy)
  {
    if (-[VKCImageTextSelectionView longPressDataDetectorsInTextMode](self, "longPressDataDetectorsInTextMode") && (-[VKCImageTextSelectionView textSelectionDelegate](self, "textSelectionDelegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 textSelectionView:self dataDetectorExistsAtPoint:{x, y}], v10, v11))
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  if (vk_isSeedBuild())
  {
    buttonMask = [eventCopy buttonMask];
    if (selfCopy == self && buttonMask == 2 && ![(VKCImageTextSelectionView *)self containsTextAtPoint:x, y])
    {

      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (BOOL)longPressHandler:(id)handler gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  longPressGR = [(VKCImageTextSelectionView_iOS *)self longPressGR];

  if (longPressGR == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [recognizerCopy locationInView:self];
    v11 = v10;
    v13 = v12;
    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    v15 = [textSelectionDelegate textSelectionView:self dataDetectorExistsAtPoint:{v11, v13}] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)longPressHandler:(id)handler gestureRecognizer:(id)recognizer shouldRecieveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  longPressGR = [(VKCImageTextSelectionView_iOS *)self longPressGR];

  if (longPressGR == recognizerCopy)
  {
    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    [touchCopy locationInView:self];
    v10 = [textSelectionDelegate textSelectionView:self dataDetectorExistsAtPoint:?];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)didLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    [pressCopy locationInView:self];
    [textSelectionDelegate textSelectionView:self requestsDataDetectorActivationAtPoint:?];
  }
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VKCImageTextSelectionView_iOS__addShortcut___block_invoke;
  v7[3] = &unk_1E7BE4768;
  v7[4] = self;
  v8 = shortcutCopy;
  v6 = shortcutCopy;
  [textSelectionDelegate textSelectionView:self prepareForCalloutAction:sel__addShortcut_ completion:v7];
}

- (void)_lookup:(id)_lookup
{
  _lookupCopy = _lookup;
  if (vk_isCameraApp())
  {
    selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    isEmpty = [selectedVKRange isEmpty];

    if (isEmpty)
    {
      documentRange = [(VKCImageTextSelectionView *)self documentRange];
      [(VKCImageTextSelectionView_iOS *)self setSelectedVKRange:documentRange];
    }
  }

  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__VKCImageTextSelectionView_iOS__lookup___block_invoke;
  v10[3] = &unk_1E7BE4768;
  v10[4] = self;
  v11 = _lookupCopy;
  v9 = _lookupCopy;
  [textSelectionDelegate textSelectionView:self prepareForCalloutAction:sel__lookup_ completion:v10];
}

- (void)_define:(id)_define
{
  _defineCopy = _define;
  if (vk_isCameraApp())
  {
    selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    isEmpty = [selectedVKRange isEmpty];

    if (isEmpty)
    {
      documentRange = [(VKCImageTextSelectionView *)self documentRange];
      [(VKCImageTextSelectionView_iOS *)self setSelectedVKRange:documentRange];
    }
  }

  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__VKCImageTextSelectionView_iOS__define___block_invoke;
  v10[3] = &unk_1E7BE4768;
  v11 = _defineCopy;
  selfCopy = self;
  v9 = _defineCopy;
  [textSelectionDelegate textSelectionView:self prepareForCalloutAction:sel__define_ completion:v10];
}

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  if (vk_isCameraApp())
  {
    selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    isEmpty = [selectedVKRange isEmpty];

    if (isEmpty)
    {
      documentRange = [(VKCImageTextSelectionView *)self documentRange];
      [(VKCImageTextSelectionView_iOS *)self setSelectedVKRange:documentRange];
    }
  }

  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__VKCImageTextSelectionView_iOS__translate___block_invoke;
  v10[3] = &unk_1E7BE4768;
  v10[4] = self;
  v11 = _translateCopy;
  v9 = _translateCopy;
  [textSelectionDelegate textSelectionView:self prepareForCalloutAction:sel__translate_ completion:v10];
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = &unk_1B44420A2;
  v5 = *(MEMORY[0x1E695F050] + 16);
  v25 = *MEMORY[0x1E695F050];
  v26 = v5;
  if (vk_isCameraApp())
  {
    selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    isEmpty = [selectedVKRange isEmpty];

    if (isEmpty)
    {
      documentRange = [(VKCImageTextSelectionView *)self documentRange];
      [(VKCImageTextSelectionView_iOS *)self setSelectedVKRange:documentRange];
    }
  }

  selectedVKRange2 = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  v10 = [(VKCImageTextSelectionView *)self selectionRectsForRange:selectedVKRange2];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__VKCImageTextSelectionView_iOS__share___block_invoke;
  v20[3] = &unk_1E7BE7308;
  v20[4] = &v21;
  [v10 enumerateObjectsUsingBlock:v20];

  if (!CGRectIsNull(v22[1]))
  {
    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    selectedVKRange3 = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    nsRangeArray = [selectedVKRange3 nsRangeArray];
    p_x = &v22->origin.x;
    selectedText = [(VKCImageTextSelectionView *)self selectedText];
    selectedAttributedText = [(VKCImageTextSelectionView *)self selectedAttributedText];
    LODWORD(p_x) = [textSelectionDelegate textSelectionView:self shouldHandleShareWithRanges:nsRangeArray boundingRect:selectedText selectedText:selectedAttributedText selectedAttributedText:{p_x[4], p_x[5], p_x[6], p_x[7]}];

    if (p_x)
    {
      textSelectionDelegate2 = [(VKCImageTextSelectionView *)self textSelectionDelegate];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__VKCImageTextSelectionView_iOS__share___block_invoke_2;
      v18[3] = &unk_1E7BE4768;
      v18[4] = self;
      v19 = _shareCopy;
      [textSelectionDelegate2 textSelectionView:self prepareForCalloutAction:sel__share_ completion:v18];
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)presentShareSheetForCustomStrings:(id)strings attributedString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  stringCopy = string;
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  rootViewController = [textSelectionDelegate presentingViewControllerForTextSelectionView:self];
  if (rootViewController)
  {
  }

  else
  {
    window = [(VKCImageTextSelectionView_iOS *)self window];
    rootViewController = [window rootViewController];

    if (!rootViewController)
    {
      goto LABEL_7;
    }
  }

  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "presentShareSheetForCustomStrings: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x4010000000;
  v30 = &unk_1B44420A2;
  v12 = *(MEMORY[0x1E695F050] + 16);
  v31 = *MEMORY[0x1E695F050];
  v32 = v12;
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  v14 = [(VKCImageTextSelectionView *)self selectionRectsForRange:selectedVKRange];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__VKCImageTextSelectionView_iOS_presentShareSheetForCustomStrings_attributedString___block_invoke;
  v25[3] = &unk_1E7BE7308;
  v25[4] = &buf;
  [v14 enumerateObjectsUsingBlock:v25];

  v15 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v27[0] = stringCopy;
  v27[1] = stringsCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [v15 initWithActivityItems:v16 applicationActivities:MEMORY[0x1E695E0F0]];

  v26 = *MEMORY[0x1E69CDB18];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v17 setExcludedActivityTypes:v18];

  v19 = *(*(&buf + 1) + 32);
  v20 = *(*(&buf + 1) + 40);
  v21 = *(*(&buf + 1) + 48);
  v22 = *(*(&buf + 1) + 56);
  popoverPresentationController = [v17 popoverPresentationController];
  [popoverPresentationController setSourceRect:{v19, v20, v21, v22}];

  popoverPresentationController2 = [v17 popoverPresentationController];
  [popoverPresentationController2 setSourceView:self];

  [rootViewController presentViewController:v17 animated:1 completion:0];
  _Block_object_dispose(&buf, 8);

LABEL_7:
}

- (BOOL)becomeFirstResponder
{
  isFirstResponder = [(VKCImageTextSelectionView_iOS *)self isFirstResponder];
  v9.receiver = self;
  v9.super_class = VKCImageTextSelectionView_iOS;
  becomeFirstResponder = [(VKCImageTextSelectionView_iOS *)&v9 becomeFirstResponder];
  if ((isFirstResponder & 1) == 0 && [(VKCImageTextSelectionView_iOS *)self isFirstResponder])
  {
    inputDelegate = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
    [inputDelegate selectionWillChange:self];

    selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    [(VKCImageTextSelectionView_iOS *)self setSelectedTextRange:selectedVKRange];

    inputDelegate2 = [(VKCImageTextSelectionView_iOS *)self inputDelegate];
    [inputDelegate2 selectionDidChange:self];
  }

  return becomeFirstResponder;
}

- (void)setSelectedTextRange:(id)range
{
  v10 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (([(UITextRange *)self->_selectedTextRange isEqual:rangeCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedTextRange, range);
    if (![(VKCImageTextSelectionView_iOS *)self beginSelectionChangedCalled]&& ![(VKCImageTextSelectionView_iOS *)self manuallySettingSelectedRange]&& [(VKCImageTextSelectionView_iOS *)self initializationComplete])
    {
      [(VKCImageTextSelectionView *)self sendAnalyticsEventWithSelector:0 type:0 source:3];
    }

    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Text Selection Changed: %@", &v8, 0xCu);
    }

    textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
    [textSelectionDelegate textSelectionView:self selectionDidChange:rangeCopy];
  }
}

- (UITextPosition)beginningOfDocument
{
  documentRange = [(VKCImageTextSelectionView *)self documentRange];
  start = [documentRange start];

  return start;
}

- (UITextPosition)endOfDocument
{
  documentRange = [(VKCImageTextSelectionView *)self documentRange];
  v3 = [documentRange end];

  return v3;
}

- (id)text
{
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  text = [recognitionResult text];

  return text;
}

- (BOOL)hasText
{
  text = [(VKCImageTextSelectionView_iOS *)self text];
  v3 = [text length] != 0;

  return v3;
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  v7 = [[VKTextRange alloc] initWithStart:positionCopy end:toPositionCopy];

  return v7;
}

- (unint64_t)currentDraggedRectEdge
{
  interactionAssistant = [(VKCImageTextSelectionView_iOS *)self interactionAssistant];
  if (objc_opt_respondsToSelector())
  {
    currentDraggedHandle = [interactionAssistant currentDraggedHandle];
  }

  else
  {
    currentDraggedHandle = 0;
  }

  return currentDraggedHandle;
}

- (id)_textRangeForActions
{
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  if (-[VKCImageTextSelectionView_iOS useFullDocumentRangeForEmptySelection](self, "useFullDocumentRangeForEmptySelection") && [selectedVKRange isEmpty])
  {
    documentRange = [(VKCImageTextSelectionView *)self documentRange];

    selectedVKRange = documentRange;
  }

  return selectedVKRange;
}

- (id)_rvItemForSelectedRange
{
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  nsRange = [selectedVKRange nsRange];
  v6 = [(VKCImageTextSelectionView_iOS *)self _rvItemInRange:nsRange, v5];

  return v6;
}

- (id)_rvItemInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc(MEMORY[0x1E69C7518]);
  text = [(VKCImageTextSelectionView_iOS *)self text];
  v8 = [v6 initWithText:text selectedRange:{location, length}];

  textQueryProvider = [(VKCImageTextSelectionView *)self textQueryProvider];
  [v8 setTextQueryProvider:textQueryProvider];

  return v8;
}

+ (BOOL)processHasSnapshotDragEntitlement
{
  if (processHasSnapshotDragEntitlement_onceToken != -1)
  {
    +[VKCImageTextSelectionView_iOS processHasSnapshotDragEntitlement];
  }

  return processHasSnapshotDragEntitlement_sHasEntitlement;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  if (([objc_opt_class() processHasSnapshotDragEntitlement] & 1) != 0 || (-[VKCImageBaseOverlayView analysisResult](self, "analysisResult"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "request"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasImageData"), v7, v6, v8))
  {
    targetedDragPreviewForCurrentSelection = [(VKCImageTextSelectionView_iOS *)self targetedDragPreviewForCurrentSelection];
  }

  else
  {
    targetedDragPreviewForCurrentSelection = [(VKCImageTextSelectionView_iOS *)self targetedDragPreviewWithLabelsForCurrentSelection];
  }

  return targetedDragPreviewForCurrentSelection;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v25[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  selectedText = [(VKCImageTextSelectionView *)self selectedText];
  [sessionCopy locationInView:self];
  v8 = v7;
  v10 = v9;

  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  v12 = [(VKCImageTextSelectionView *)self selectionRectsForRange:selectedVKRange];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__VKCImageTextSelectionView_iOS_dragInteraction_itemsForBeginningSession___block_invoke;
  v24[3] = &__block_descriptor_48_e36_B32__0__UITextSelectionRect_8Q16_B24l;
  v24[4] = v8;
  v24[5] = v10;
  v13 = [v12 vk_containsObjectPassingTest:v24];

  if (v13 && [selectedText length])
  {
    selectedVKRange2 = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
    v15 = [(VKCImageTextSelectionView *)self attributedTextInRange:selectedVKRange2];

    v16 = objc_alloc(MEMORY[0x1E696ACA0]);
    selectedText2 = [(VKCImageTextSelectionView *)self selectedText];
    v18 = [v16 initWithObject:selectedText2];

    [v18 registerObject:v15 visibility:0];
    v19 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v18];
    v25[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  v22 = v21;

  return v21;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Beginning VisionKit Text Drag: %@", &v6, 0xCu);
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "VisionKit Text Drag Did End: %@", &v7, 0xCu);
  }
}

- (id)targetedDragPreviewWithLabelsForCurrentSelection
{
  recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  [(VKCImageBaseOverlayView *)self contentsRect];
  v5 = [recognitionResult selectionRectsForRange:selectedVKRange documentView:self contentRect:1 addTranscript:?];

  v6 = [(VKCImageTextSelectionView_iOS *)self selectedTextPathsConvertedToView:self];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 bounds];
  v19 = VKMCenterOfRect(v15, v16, v17, v18);
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x1E69DD250]);
  [v6 bounds];
  v23 = [v22 initWithFrame:?];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __81__VKCImageTextSelectionView_iOS_targetedDragPreviewWithLabelsForCurrentSelection__block_invoke;
  v31[3] = &unk_1E7BE7350;
  v33 = v8;
  v34 = v10;
  v35 = v12;
  v36 = v14;
  v32 = v23;
  v24 = v23;
  [v5 enumerateObjectsUsingBlock:v31];
  v25 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v25 setBackgroundColor:clearColor];

  v27 = objc_alloc(MEMORY[0x1E69DD068]);
  v28 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:self center:{v19, v21}];
  v29 = [v27 initWithView:v24 parameters:v25 target:v28];

  return v29;
}

- (id)targetedDragPreviewForCurrentSelection
{
  textSelectionDelegate = [(VKCImageTextSelectionView *)self textSelectionDelegate];
  v4 = [textSelectionDelegate viewForImageSnapshotForTextSelectionView:self];

  if (v4 && (-[VKCImageBaseOverlayView analysisResult](self, "analysisResult"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasImageData], v5, (v6 & 1) == 0))
  {
    v7 = [(VKCImageTextSelectionView_iOS *)self selectedTextPathsConvertedToView:v4];
    [v7 bounds];
    v15 = [v4 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
    [v7 bounds];
    v28 = VKMCenterOfRect(v24, v25, v26, v27);
    v30 = v29;
    [v7 bounds];
    v32 = -v31;
    [v7 bounds];
    CGAffineTransformMakeTranslation(&v37, v32, -v33);
    [v7 vk_applyTransform:&v37];
    v17 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    [v17 setVisiblePath:v7];
    v34 = objc_alloc(MEMORY[0x1E69DD068]);
    v35 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:self center:{v28, v30}];
    v23 = [v34 initWithView:v15 parameters:v17 target:v35];
  }

  else
  {
    v7 = [(VKCImageTextSelectionView_iOS *)self selectedTextPathsConvertedToView:self];
    [v7 bounds];
    v12 = VKMCenterOfRect(v8, v9, v10, v11);
    v14 = v13;
    v15 = [(VKCImageBaseOverlayView *)self normalizedPathFromViewPath:v7];
    analysisResult = [(VKCImageBaseOverlayView *)self analysisResult];
    [v15 bounds];
    v17 = [analysisResult imageFromNormalizedSubrect:?];

    vk_imageView = [v17 vk_imageView];
    [vk_imageView bounds];
    v19 = [v15 vk_pathByFittingToRect:?];
    v20 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    [v20 setVisiblePath:v19];
    v21 = objc_alloc(MEMORY[0x1E69DD068]);
    v22 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:self center:{v12, v14}];
    v23 = [v21 initWithView:vk_imageView parameters:v20 target:v22];
  }

  return v23;
}

- (id)selectedTextPathsConvertedToView:(id)view
{
  viewCopy = view;
  selectedVKRange = [(VKCImageTextSelectionView_iOS *)self selectedVKRange];
  v6 = [(VKCImageTextSelectionView *)self selectionRectsForRange:selectedVKRange];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __66__VKCImageTextSelectionView_iOS_selectedTextPathsConvertedToView___block_invoke;
  v14 = &unk_1E7BE7378;
  v15 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [v6 vk_compactMap:&v11];
  v9 = [MEMORY[0x1E69DC728] vk_groupAndRoundPaths:v8 radius:0.0 offset:{0.0, v11, v12, v13, v14}];

  return v9;
}

- (id)_accessibilityUserTestingChildren
{
  v67 = *MEMORY[0x1E69E9840];
  accessibilityElements = self->_accessibilityElements;
  if (!accessibilityElements)
  {
    array = [MEMORY[0x1E695DF70] array];
    recognitionResult = [(VKCImageBaseOverlayView *)self recognitionResult];
    sourceVNDocument = [recognitionResult sourceVNDocument];

    v51 = sourceVNDocument;
    [sourceVNDocument blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v63 = 0u;
    v6 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v61;
      v9 = *MEMORY[0x1E695F050];
      v10 = *(MEMORY[0x1E695F050] + 8);
      v11 = *(MEMORY[0x1E695F050] + 16);
      v12 = *(MEMORY[0x1E695F050] + 24);
      v44 = *v61;
      do
      {
        v13 = 0;
        v45 = v7;
        do
        {
          if (*v61 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v60 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v13;
            v15 = v14;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v47 = v15;
            getChildren = [v15 getChildren];
            v16 = [getChildren countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v57;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v57 != v18)
                  {
                    objc_enumerationMutation(getChildren);
                  }

                  v20 = *(*(&v56 + 1) + 8 * i);
                  string = [v20 string];
                  v22 = [string length];

                  if (v22)
                  {
                    v23 = [v51 rangeOfTextBlock:v20];
                    v25 = [VKTextRange rangeWithNSRange:v23, v24];
                    v26 = [(VKCImageTextSelectionView *)self selectionRectsForRange:v25];
                    v52 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v27 = [v26 countByEnumeratingWithState:&v52 objects:v64 count:16];
                    height = v12;
                    width = v11;
                    y = v10;
                    x = v9;
                    if (v27)
                    {
                      v32 = v27;
                      v33 = *v53;
                      height = v12;
                      width = v11;
                      y = v10;
                      x = v9;
                      do
                      {
                        for (j = 0; j != v32; ++j)
                        {
                          if (*v53 != v33)
                          {
                            objc_enumerationMutation(v26);
                          }

                          [*(*(&v52 + 1) + 8 * j) rect];
                          v72.origin.x = v35;
                          v72.origin.y = v36;
                          v72.size.width = v37;
                          v72.size.height = v38;
                          v69.origin.x = x;
                          v69.origin.y = y;
                          v69.size.width = width;
                          v69.size.height = height;
                          v70 = CGRectUnion(v69, v72);
                          x = v70.origin.x;
                          y = v70.origin.y;
                          width = v70.size.width;
                          height = v70.size.height;
                        }

                        v32 = [v26 countByEnumeratingWithState:&v52 objects:v64 count:16];
                      }

                      while (v32);
                    }

                    v71.origin.x = x;
                    v71.origin.y = y;
                    v71.size.width = width;
                    v71.size.height = height;
                    if (!CGRectIsEmpty(v71))
                    {
                      v39 = [[VKCImageTextSelectionViewAccessibilityElement alloc] initWithAccessibilityContainer:self];
                      string2 = [v20 string];
                      [(VKCImageTextSelectionViewAccessibilityElement *)v39 setAccessibilityValue:string2];

                      [(VKCImageTextSelectionViewAccessibilityElement *)v39 setAccessibilityFrameInContainerSpace:x, y, width, height];
                      [array addObject:v39];
                    }
                  }
                }

                v17 = [getChildren countByEnumeratingWithState:&v56 objects:v65 count:16];
              }

              while (v17);
            }

            v8 = v44;
            v7 = v45;
            v13 = v48;
          }

          ++v13;
        }

        while (v13 != v7);
        v7 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v7);
    }

    v41 = [array copy];
    v42 = self->_accessibilityElements;
    self->_accessibilityElements = v41;

    accessibilityElements = self->_accessibilityElements;
  }

  return accessibilityElements;
}

- (void)suppressSelectionViewGrabbers
{
  interactionAssistant = [(VKCImageTextSelectionView_iOS *)self interactionAssistant];
  selectionView = [interactionAssistant selectionView];
  obtainGrabberSuppressionAssertion = [selectionView obtainGrabberSuppressionAssertion];
  [(VKCImageTextSelectionView_iOS *)self setTextSelectionGrabberSuppression:obtainGrabberSuppressionAssertion];

  interactionAssistant2 = [(VKCImageTextSelectionView_iOS *)self interactionAssistant];
  selectionView2 = [interactionAssistant2 selectionView];
  [selectionView2 layoutChangedByScrolling:0];
}

- (UITextInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (VKCTextPointerTrackingView)textPointerTrackingView
{
  WeakRetained = objc_loadWeakRetained(&self->_textPointerTrackingView);

  return WeakRetained;
}

@end