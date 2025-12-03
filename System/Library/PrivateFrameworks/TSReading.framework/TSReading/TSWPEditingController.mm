@interface TSWPEditingController
+ (id)_targetedDragPreviewForSelection:(id)selection interactiveCanvasController:(id)controller reps:(id)reps applyScale:(BOOL)scale imageFrameUnion:(CGRect *)union;
+ (id)dragItemForHitRepWithDragInteraction:(id)interaction session:(id)session canvasView:(id)view icc:(id)icc withTouchPoint:(CGPoint)point;
+ (id)dropProposalForSession:(id)session;
+ (id)previewForDragItem:(id)item;
+ (id)retargetedDragItem:(id)item withDefault:(id)default canvasView:(id)view icc:(id)icc;
- (BOOL)allowAutomaticTextEditingToBeginWithDifferentEditor;
- (BOOL)canAddOrShowComment;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)canHandleSwipeGestureForGestureRecognizer:(id)recognizer outDelta:(int64_t *)delta outTextDirection:(int64_t *)direction outLayoutDirection:(int64_t *)layoutDirection;
- (BOOL)canHighlightCurrentSelection;
- (BOOL)canRemoveHighlightForCurrentSelection;
- (BOOL)canSetWritingDirection:(int)direction;
- (BOOL)canShowCommentForCurrentSelectionGetHighlight:(id *)highlight range:(_NSRange *)range;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isDisplayingPhoneticsHUD;
- (BOOL)isParagraphModeWithSelection:(id)selection onStorage:(id)storage;
- (BOOL)isSelectionSingleAnchoredDrawableAttachment;
- (BOOL)isUnscaledPointInTextSelection:(CGPoint)selection;
- (BOOL)pIsSelectionPlaceHolderTextWithSelection:(id)selection;
- (BOOL)p_canEditTextString;
- (BOOL)p_canInsertBreak;
- (BOOL)p_canSelectAllWithSender:(id)sender;
- (BOOL)p_hitListLabelAtCharIndex:(unint64_t)index atNaturalPoint:(CGPoint)point inRep:(id)rep;
- (BOOL)p_isCharIndex:(unint64_t)index withEolAffinity:(BOOL)affinity atBoundary:(int)boundary inDirection:(int64_t)direction;
- (BOOL)p_isCharIndex:(unint64_t)index withinTextUnit:(int)unit inDirection:(int64_t)direction;
- (BOOL)p_isIgnoringKeyboardInput;
- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)index;
- (BOOL)p_keyboardShouldShowOnscreen;
- (BOOL)p_respondsToHyperlinkGestures;
- (BOOL)p_respondsToListGestures;
- (BOOL)p_respondsToRubyGestures;
- (BOOL)p_selectionIsSimpleInsertionPoint;
- (BOOL)selectionIsOnEmptyParagraph;
- (BOOL)shouldShowEditMenu;
- (BOOL)swipeableParagraphIsSelected;
- (BOOL)textIsVerticalAtCharIndex:(unint64_t)index;
- (BOOL)textStorage:(id)storage hasWhitespaceBoundedWordAtSelection:(id)selection;
- (BOOL)trackingKnobInParagraphMode;
- (BOOL)wantsCaret;
- (CGPoint)autoscrollPoint;
- (CGPoint)knobTrackingDragPoint;
- (CGPoint)p_clampPointToLine:(CGPoint)line trackingRep:(id)rep;
- (CGRect)firstRectForRange:(_NSRange)range;
- (CGRect)overrideCaretRectForSelection:(id)selection;
- (CGRect)p_adjustedPopoverTargetRectForRange:(_NSRange)range;
- (CGRect)p_firstRectForRange:(_NSRange)range actualRange:(_NSRange *)actualRange;
- (CGRect)p_targetRectForSelection:(id)selection;
- (TSWPEditingController)initWithStorage:(id)storage interactiveCanvasController:(id)controller;
- (TSWPSelection)selection;
- (UIView)inputAccessoryView;
- (UIView)inputView;
- (_NSRange)editRange;
- (_NSRange)markedRange;
- (_NSRange)p_adjustVisualSelection:(id)selection withOtherSelection:(id)otherSelection;
- (_NSRange)p_expandParagraphRangeForEnumerator:(TSWPParagraphEnumerator *)enumerator;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward;
- (_NSRange)smartDeletionSelection:(id)selection isVisual:(BOOL *)visual;
- (_NSRange)tsax_rangeOfLineFragmentAtCharIndex:(unint64_t)index;
- (__CFStringTokenizer)p_createTokenizerForCharIndex:(unint64_t)index outTokenizerRange:(_NSRange *)range;
- (const)p_lastVisibleLineFragmentForCharIndex:(unint64_t)index eol:(BOOL)eol;
- (const)p_lineFragmentForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol;
- (const)p_lineFragmentWithCaretInfo:(id *)info forSelection:(id)selection;
- (const)p_nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)as xPos:(double)pos inColumn:(id)column;
- (double)p_effectiveFontSizeForCurrentSelection;
- (double)viewScaleForSelectionWithTargetPointSize:(double)size;
- (id)_addSelectionRectsForLayout:(id)layout selection:(id)selection;
- (id)_repsForStorage:(id)storage selection:(id)selection;
- (id)calculateVisualRunsFromSelection:(id)selection updateControllerSelection:(BOOL)controllerSelection;
- (id)characterStyleForDeletedRange:(_NSRange)range;
- (id)currentFontColor;
- (id)dictationInterpretationsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)dragItemForCurrentSelectionWithDragInteraction:(id)interaction session:(id)session withTouchPoint:(CGPoint)point;
- (id)editingReps;
- (id)editingSearchReference;
- (id)extendSelectionToParagraphs:(id)paragraphs;
- (id)extraMenuItems;
- (id)logicalToVisualSelection:(id)selection;
- (id)p_columnForCharIndex:(unint64_t)index;
- (id)p_columnForCharIndex:(unint64_t)index withStorage:(id)storage;
- (id)p_containingShapeRep;
- (id)p_documentViewController;
- (id)p_editingRepForCharIndex:(unint64_t)index;
- (id)p_extendSelectionToIncludeSmartFields:(id)fields;
- (id)p_highlightSelectionForSelection:(id)selection;
- (id)p_hitRepWithPoint:(CGPoint)point keyboardAdjustmentDelta:(double)delta;
- (id)p_layoutTargetForCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity;
- (id)p_previousAutocorrectionForWordAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)p_repForSwipeAtUnscaledLocation:(CGPoint)location;
- (id)p_selectionForRep:(id)rep point:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold precise:(BOOL)precise includeListLabels:(BOOL)labels allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)self0;
- (id)p_selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)link;
- (id)p_viewControllerForPresenting;
- (id)p_wordRangesForRange:(_NSRange)range;
- (id)pasteboardController;
- (id)selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)link;
- (id)selectionRectsForRange:(_NSRange)range;
- (id)selectionWithRange:(_NSRange)range;
- (id)stringFromSelection;
- (id)styleProvider;
- (id)textColorAtCharIndex:(unint64_t)index;
- (id)textFontAtCharIndex:(unint64_t)index;
- (id)textInRange:(_NSRange)range;
- (id)tsax_listItemLabelForCharIndex:(unint64_t)index textIsLiteral:(BOOL *)literal;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int)p_moveFromCharIndex:(unint64_t *)index tokenizerRef:(__CFStringTokenizer *)ref tokenizerRange:(_NSRange *)range direction:(int64_t)direction currentWordRange:(_NSRange)wordRange newWordRange:(_NSRange *)newWordRange reasonToStop:(unsigned int)stop;
- (int)p_writingDirectionForCharAtIndex:(unint64_t)index;
- (int)valueForWritingDirectionPropertyForInspector:(id)inspector;
- (int64_t)returnKeyType;
- (int64_t)writingDirectionForCharIndex:(unint64_t)index;
- (unint64_t)charIndexByMovingPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)preferPosition;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction;
- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)closestCharIndexToPoint:(CGPoint)point isAtEndOfLine:(BOOL *)line;
- (unint64_t)countOfHyperlinksInUserSelection;
- (unint64_t)insertionPoint;
- (unint64_t)p_LeftCharForInsertion:(id *)insertion;
- (unint64_t)p_MoveByLineRange:(_NSRange)range up:(BOOL)up;
- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)index forDirection:(int64_t)direction;
- (unint64_t)p_caretCharIndexForLayoutOrderCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)p_charIndexAtPoint:(CGPoint)point isAtEndOfLine:(BOOL *)line;
- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)index withEolAffinity:(BOOL *)affinity toBoundary:(int)boundary inDirection:(int64_t)direction preferPosition:(double *)position isLeadingEdge:(BOOL *)edge;
- (unint64_t)p_getVisualDeletionIndexForSelection:(id)selection backward:(BOOL *)backward;
- (unint64_t)p_getVisualInsertionPointIndexForString:(id)string selection:(id)selection;
- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)index inDirection:(int64_t)direction;
- (unint64_t)p_leftEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge;
- (unint64_t)p_lineIndexForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol;
- (unint64_t)p_rightEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge;
- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)count;
- (void)abandonMarkedText;
- (void)addAllDictationInterpretationRangesInRange:(_NSRange)range toRanges:(void *)ranges;
- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)autoscrollWillNotStart;
- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)point;
- (void)cancelKnobTrackingAndMagnifying;
- (void)clearMarkedRange;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)definitionAction:(id)action;
- (void)didBecomeCurrentEditor;
- (void)didBecomeTextInputEditor;
- (void)didEnterBackground;
- (void)dismissActivePopovers;
- (void)endEditing;
- (void)endEditingAndSelectParent:(id)parent;
- (void)extendSelectionLeft;
- (void)extendSelectionRight;
- (void)gestureSequenceDidEnd;
- (void)invalidateSelectionVisualRuns;
- (void)p_addCommonEditItemsIntoMenu:(id)menu;
- (void)p_addInsertItemsIntoMenu:(id)menu;
- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity;
- (void)p_adjustSelection:(id)selection withUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break;
- (void)p_beginKnobTrackingSelection:(id)selection forRep:(id)rep atPoint:(CGPoint)point;
- (void)p_beginMagnification:(id)magnification forRep:(id)rep atPoint:(CGPoint)point;
- (void)p_beginOperationAndTakeControl;
- (void)p_beginTapAndLongPress:(id)press;
- (void)p_cancelDelayedSelectors;
- (void)p_cancelTapAndLongPressPreviousSelector;
- (void)p_clearSecondaryHighlight;
- (void)p_createKnobTracker:(id)tracker forRep:(id)rep tapCount:(unint64_t)count;
- (void)p_dismissDefinitionPopover;
- (void)p_endAutoscroll;
- (void)p_handleKnobDragGestureRecognizer:(id)recognizer;
- (void)p_handleLongPressGesture:(id)gesture;
- (void)p_handleSwipeMoveCaretWithTextGranularity:(int64_t)granularity textDirection:(int64_t)direction layoutDirection:(int64_t)layoutDirection;
- (void)p_handleTapAndTouchGesture:(id)gesture;
- (void)p_handleTapGestures:(id)gestures;
- (void)p_highlightRubyTextWithRange:(_NSRange)range;
- (void)p_inputLanguageDidChangeNotification:(id)notification;
- (void)p_postSelectionContentsChangedNotification;
- (void)p_postWillStyleTextNotification;
- (void)p_removeAutocorrectionAtCharIndex:(unint64_t)index;
- (void)p_rescheduleDelayedUpdateHUDState;
- (void)p_selection:(id)p_selection toGlyphRange:(id *)range;
- (void)p_sendHandleTapNotification;
- (void)p_setInsertionStyle:(id)style;
- (void)p_setRevertibleSelection:(id)selection;
- (void)p_setSelection:(id)selection withFlags:(unint64_t)flags force:(BOOL)force;
- (void)p_setSelectionFromPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity includeListLabels:(BOOL)labels;
- (void)p_setTappedSelection:(id)selection;
- (void)p_suppressSelectionHighlight:(BOOL)highlight;
- (void)p_switchToReplaceSelection;
- (void)p_updateHUDState;
- (void)popoverControllerDidDismissPopoverBasedViewController:(id)controller;
- (void)referenceLibrarayViewControllerWasDismissed:(id)dismissed;
- (void)revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold;
- (void)select:(id)select;
- (void)selectAll:(id)all;
- (void)selectionChangedWithFlags:(unint64_t)flags wpFlags:(unint64_t)wpFlags;
- (void)setAutoscroll:(id)autoscroll;
- (void)setInsertionPoint:(unint64_t)point withFlags:(unint64_t)flags;
- (void)setKnobTracking:(BOOL)tracking;
- (void)setSelectionWithRange:(_NSRange)range endOfLine:(BOOL)line;
- (void)setSelectionWithRange:(_NSRange)range leadingEdge:(BOOL)edge endOfLine:(BOOL)line;
- (void)styleAction:(id)action;
- (void)tappedInRep:(id)rep point:(CGPoint)point tapCount:(unint64_t)count isTapHold:(BOOL)hold precise:(BOOL)precise;
- (void)tappedOnKnob:(id)knob;
- (void)teardown;
- (void)updateAfterAutoscroll:(id)autoscroll;
- (void)updateHUDState;
- (void)willEnterForeground;
- (void)willResignCurrentEditor;
- (void)willResignTextInputEditorAndDeselect:(BOOL)deselect;
@end

@implementation TSWPEditingController

- (TSWPSelection)selection
{
  selection = self->_selection;
  if (selection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController selection]"];
      [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 489, @"Bad selection class - returning nil."}];
      return 0;
    }
  }

  return selection;
}

- (TSWPEditingController)initWithStorage:(id)storage interactiveCanvasController:(id)controller
{
  v10.receiver = self;
  v10.super_class = TSWPEditingController;
  v6 = [(TSWPEditingController *)&v10 init];
  if (v6)
  {
    *(v6 + 1) = storage;
    *(v6 + 3) = controller;
    v7 = *MEMORY[0x277D6C268];
    *(v6 + 72) = *MEMORY[0x277D6C268];
    *(v6 + 13) = 0x7FFFFFFFFFFFFFFFLL;
    v6[113] = 1;
    v6[360] = 0;
    *(v6 + 152) = v7;
    [v6 setShouldDisplayKeyboard:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_p_inputLanguageDidChangeNotification_ name:*MEMORY[0x277D77200] object:0];
    [v6 setSupportsDataDetectors:1];
    [v6 setSuppressPhonetics:{objc_msgSend(storage, "allowsElementKind:", 4096) ^ 1}];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_knobTracking)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 597, @"-dealloc called while tracking"}];
  }

  if (self->_definitionPopoverController)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 599, @"expected nil value for '%s'", "_definitionPopoverController"}];
  }

  if ((TSUSupportsTextInteraction() & 1) == 0 && self->_definitionViewController)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [currentHandler3 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 602, @"expected nil value for '%s'", "_definitionViewController"}];
  }

  self->_inputViewForHidingKeyboard = 0;
  self->_autoscroll = 0;

  self->_selection = 0;
  self->_suggestions = 0;

  self->_insertionStyle = 0;
  self->_storage = 0;

  self->_fidgetResolver = 0;
  self->_tapInfo = 0;

  self->_markedText = 0;
  [(TSDMultiPaneController *)self->_insertBreakPopoverController dismissAnimated:0];

  self->_insertBreakPopoverController = 0;
  self->_dictationInterpretations = 0;

  self->_autocorrectedEntries = 0;
  self->_previousSelectedAnnotation = 0;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v9.receiver = self;
  v9.super_class = TSWPEditingController;
  [(TSWPEditingController *)&v9 dealloc];
}

- (void)teardown
{
  [(TSWPEditingController *)self p_cancelDelayedSelectors];
  self->_interactiveCanvasController = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter removeObserver:self];
}

- (void)setKnobTracking:(BOOL)tracking
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v5 = TSUProtocolCast();
  self->_knobTracking = tracking;
  if (tracking)
  {
    v6 = objc_alloc_init(TSKFidgetResolver);
    self->_fidgetResolver = v6;
    [(TSKFidgetResolver *)v6 setFidgetThreshold:0.2];
    if (objc_opt_respondsToSelector())
    {

      [v5 knobTrackingDidBegin];
    }
  }

  else
  {
    [(TSWPEditingController *)self setKnobTrackingTapCount:0];
    selection = self->_selection;
    if (selection && [(TSWPSelection *)selection isValid])
    {
      if ([(TSWPEditingController *)self isInParagraphMode])
      {
        v8 = [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
        interactiveCanvasController = self->_interactiveCanvasController;
        [v8 contentOffset];
        [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
        v11 = v10;
        v13 = v12;
        v14 = self->_interactiveCanvasController;
        [(TSDInteractiveCanvasController *)v14 viewScale];
        [(TSDInteractiveCanvasController *)v14 clampedUnscaledContentOffset:v11 forViewScale:v13, v15];
        [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsPoint:?];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __41__TSWPEditingController_setKnobTracking___block_invoke;
        v18[3] = &unk_279D476B8;
        v18[4] = v8;
        v18[5] = v16;
        v18[6] = v17;
        [MEMORY[0x277D75D18] animateWithDuration:v18 animations:0.25];
      }

      self->_fidgetResolver = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 knobTrackingDidEnd];
    }
  }
}

- (void)didBecomeCurrentEditor
{
  [(TSKChangeNotifier *)[(TSDInteractiveCanvasController *)self->_interactiveCanvasController changeNotifier] addObserver:self forChangeSource:self->_storage];
  [+[TSWPEditMenuController sharedEditMenuController](TSWPEditMenuController "sharedEditMenuController")];
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController didBeginEditingText];
  self->_initialStorageChangeCount = [(TSWPStorage *)self->_storage changeCount];
}

- (void)willResignCurrentEditor
{
  [(TSWPEditingController *)self dismissActivePopovers];
  [(TSWPEditingController *)self p_cancelDelayedSelectors];
  [(TSKChangeNotifier *)[(TSDInteractiveCanvasController *)self->_interactiveCanvasController changeNotifier] removeObserver:self forChangeSource:self->_storage];
  interactiveCanvasController = self->_interactiveCanvasController;

  [(TSWPInteractiveCanvasController *)interactiveCanvasController willEndEditingText];
}

- (void)didBecomeTextInputEditor
{
  self->_dictationInterpretations = 0;

  self->_autocorrectedEntries = 0;
}

- (id)p_containingShapeRep
{
  if (!self->_storage)
  {
    return 0;
  }

  v2 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repsForInfo:[(TSWPEditingController *)self storage]];
  objc_opt_class();
  [v2 anyObject];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  [v4 parentRep];

  return TSUDynamicCast();
}

- (void)willResignTextInputEditorAndDeselect:(BOOL)deselect
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_storage)
  {
    deselectCopy = deselect;
    if (![(TSWPInteractiveCanvasController *)self->_interactiveCanvasController isTearingDown])
    {
      v5 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repsForInfo:[(TSWPEditingController *)self storage]];
      objc_opt_class();
      [v5 anyObject];
      v6 = TSUDynamicCast();
      if (v6)
      {
        v7 = v6;
        objc_opt_class();
        [v7 parentRep];
        v8 = TSUDynamicCast();
        if (v8)
        {
          [v8 willEndEditingContainedRep];
        }
      }

      if (deselectCopy)
      {
        [(TSWPEditingController *)self setSelection:[TSWPSelection selectionWithRange:*MEMORY[0x277D6C268], *(MEMORY[0x277D6C268] + 8)]];
      }

      if ([v5 count] && -[TSWPStorage wpKind](-[TSWPEditingController storage](self, "storage"), "wpKind") == 5)
      {
        [v5 enumerateObjectsUsingBlock:&__block_literal_global_66];
      }

      +[TSWPEditMenuController hideEditMenu];

      self->_dictationInterpretations = 0;
      self->_autocorrectedEntries = 0;
    }
  }

  [(TSWPEditingController *)self setCoalescingText:0];
  if (self->_storage)
  {
    v10 = @"TSWPEditingControllerEditor";
    v11[0] = self;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

uint64_t __62__TSWPEditingController_willResignTextInputEditorAndDeselect___block_invoke()
{
  objc_opt_class();
  v0 = [TSUDynamicCast() parentRep];
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [v0 willEndEditingContainedRep];
  }

  return result;
}

- (void)willEnterForeground
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repsForInfo:[(TSWPEditingController *)self storage]];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) willEnterForeground];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)didEnterBackground
{
  v13 = *MEMORY[0x277D85DE8];
  [(TSWPEditingController *)self protectedStopMagnification];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repsForInfo:[(TSWPEditingController *)self storage]];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) didEnterBackground];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)cancelKnobTrackingAndMagnifying
{
  [(TSWPEditingController *)self p_cancelDelayedSelectors];
  if (self->_knobTracker)
  {
    self->_readyToEnd = 1;
    [(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] dynamicOperationController] handleTrackerManipulator:self];

    self->_knobTracker = 0;
  }

  else
  {

    [(TSWPEditingController *)self protectedStopMagnification];
  }
}

- (id)editingReps
{
  v3 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController repForInfo:[(TSWPEditingController *)self storage]];
  v4 = TSUDynamicCast();
  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (id)p_editingRepForCharIndex:(unint64_t)index
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  editingReps = [(TSWPEditingController *)self editingReps];
  v5 = [editingReps countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v18;
  v8 = index ? index - 1 : 0;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v18 != v7)
    {
      objc_enumerationMutation(editingReps);
    }

    v10 = *(*(&v17 + 1) + 8 * v9);
    range = [v10 range];
    if (v8 >= range && v8 - range < v12)
    {
      break;
    }

    if (v6 == ++v9)
    {
      v6 = [editingReps countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        goto LABEL_5;
      }

      break;
    }
  }

  if (!v10)
  {
LABEL_16:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_editingRepForCharIndex:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 1270, @"No valid rep for given char index"}];
    return 0;
  }

  return v10;
}

- (void)p_suppressSelectionHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  editingReps = [(TSWPEditingController *)self editingReps];
  v5 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(editingReps);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isSelectionHighlightSuppressed] != highlightCopy)
        {
          [v9 setSuppressSelectionHighlight:highlightCopy];
          [v9 invalidateKnobs];
        }
      }

      v6 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (CGRect)p_targetRectForSelection:(id)selection
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBF398];
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  editingReps = [(TSWPEditingController *)self editingReps];
  if (editingReps)
  {
    v11 = editingReps;
    v62 = v9;
    v63 = v8;
    v64 = v7;
    v65 = v6;
    v12 = *v5;
    v13 = v5[1];
    v14 = v5[2];
    v15 = v5[3];
    interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
    [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] visibleBoundsRectClippedToWindow];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledRect:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    isInsertionPoint = [selection isInsertionPoint];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = [v11 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v69;
      v66 = v18;
      do
      {
        v29 = 0;
        do
        {
          if (*v69 != v28)
          {
            objc_enumerationMutation(v11);
          }

          v30 = *(*(&v68 + 1) + 8 * v29);
          v67.size.width = v14;
          v67.size.height = v15;
          v67.origin.x = v12;
          v67.origin.y = v13;
          if (isInsertionPoint)
          {
            [v30 caretRectForSelection:selection];
          }

          else
          {
            [v30 rectForSelection:selection];
          }

          [v30 convertNaturalRectToUnscaledCanvas:?];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          parentRep = [v30 parentRep];
          v40 = v66;
          v41 = v20;
          v42 = v22;
          v43 = v24;
          if (parentRep)
          {
            parentRep2 = [v30 parentRep];
            [objc_msgSend(v30 "parentRep")];
            [parentRep2 convertNaturalRectToUnscaledCanvas:?];
            v81.origin.x = v45;
            v81.origin.y = v46;
            v81.size.width = v47;
            v81.size.height = v48;
            v74.origin.x = v66;
            v74.origin.y = v20;
            v74.size.width = v22;
            v74.size.height = v24;
            *&v40 = CGRectIntersection(v74, v81);
          }

          v82.origin.x = v32;
          v82.origin.y = v34;
          v82.size.width = v36;
          v82.size.height = v38;
          v75 = CGRectIntersection(*&v40, v82);
          x = v75.origin.x;
          y = v75.origin.y;
          width = v75.size.width;
          height = v75.size.height;
          if (CGRectGetHeight(v75) == 0.0 && (v76.origin.x = x, v76.origin.y = y, v76.size.width = width, v76.size.height = height, CGRectGetWidth(v76) == 0.0))
          {
            v12 = v67.origin.x;
            v13 = v67.origin.y;
            v14 = v67.size.width;
            v15 = v67.size.height;
          }

          else
          {
            v83.origin.x = x;
            v83.origin.y = y;
            v83.size.width = width;
            v83.size.height = height;
            v77 = CGRectUnion(v67, v83);
            v12 = v77.origin.x;
            v13 = v77.origin.y;
            v14 = v77.size.width;
            v15 = v77.size.height;
          }

          ++v29;
        }

        while (v27 != v29);
        v53 = [v11 countByEnumeratingWithState:&v68 objects:v72 count:16];
        v27 = v53;
      }

      while (v53);
    }

    v78.origin.x = v12;
    v78.origin.y = v13;
    v78.size.width = v14;
    v78.size.height = v15;
    v7 = v64;
    v6 = v65;
    v9 = v62;
    v8 = v63;
    if (CGRectGetHeight(v78) != 0.0 || (v79.origin.x = v12, v79.origin.y = v13, v79.size.width = v14, v79.size.height = v15, CGRectGetWidth(v79) != 0.0))
    {
      [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] convertUnscaledToBoundsRect:v12, v13, v14, v15];
      v6 = v54;
      v7 = v55;
      v8 = v56;
      v9 = v57;
    }
  }

  v58 = v6;
  v59 = v7;
  v60 = v8;
  v61 = v9;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (BOOL)shouldShowEditMenu
{
  if ((TSUSupportsTextInteraction() & 1) != 0 || self->_suppressEditMenu)
  {
    return 0;
  }

  if ([(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] documentRoot] isFindActive]|| [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] textGesturesInFlight]|| [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] currentlyScrolling]|| [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] animatingViewScale]|| self->_magnifying || [(TSWPEditingController *)self isSelectionSingleAnchoredDrawableAttachment])
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] inReadMode];
  }

  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    if (v5 && !self->_definitionViewController)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

LABEL_17:
  if (self->_definitionPopoverController)
  {
    return 0;
  }

  if (([(TSWPDismissBlockPopover *)self->_rubyTextViewController isVisible]& 1) != 0)
  {
    return 0;
  }

  if ([+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")])
  {
    return 0;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v6 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 editorAllowsEditMenu])
  {
    return 0;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v7 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 allowEditMenuToAppear])
  {
    return 0;
  }

  if (+[TSKPopoverController anyPopoversVisible]|| [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] inspectorModeEnabled]|| self->_markedRange.length || self->_knobTracking)
  {
    return 0;
  }

  selection = [(TSWPEditingController *)self selection];
  if ([(TSWPSelection *)selection isValid]&& [(TSWPSelection *)selection type]!= 2)
  {
    [(TSWPSelection *)selection range];
    v9 = v10 != 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(TSWPStorage *)[(TSWPEditingController *)self storage] wpKind]== 1 && [(TSWPStorage *)[(TSWPEditingController *)self storage] length]== 0;
  v3 = 1;
  if (!self->_shouldShowEditMenuForInsertionPoint && !v9 && !v11)
  {
    return self->_showNextEditMenu;
  }

  return v3;
}

- (void)dismissActivePopovers
{
  [(TSWPEditingController *)self p_dismissDefinitionPopover];
  insertBreakPopoverController = self->_insertBreakPopoverController;
  if (insertBreakPopoverController)
  {
    [(TSDMultiPaneController *)insertBreakPopoverController dismissAnimated:1];
    v4 = self->_insertBreakPopoverController;
    self->_insertBreakPopoverController = 0;
  }
}

- (BOOL)isSelectionSingleAnchoredDrawableAttachment
{
  selection = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)selection isRange])
  {
    return 0;
  }

  [(TSWPSelection *)selection range];
  if (v4 != 1)
  {
    return 0;
  }

  objc_opt_class();
  [(TSWPStorage *)[(TSWPEditingController *)self storage] attachmentAtCharIndex:[(TSWPSelection *)selection range]];
  v5 = TSUDynamicCast();

  return [v5 isAnchored];
}

- (void)p_rescheduleDelayedUpdateHUDState
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_updateHUDState object:0];

  [(TSWPEditingController *)self performSelector:sel_p_updateHUDState withObject:0 afterDelay:0.1];
}

- (void)p_updateHUDState
{
  v22 = *MEMORY[0x277D85DE8];
  if ([-[TSWPEditingController editingReps](self "editingReps")])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    editingReps = [(TSWPEditingController *)self editingReps];
    v4 = [editingReps countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(editingReps);
        }

        if (![objc_msgSend(*(*(&v17 + 1) + 8 * v7) "layout")])
        {
          goto LABEL_11;
        }

        if (v5 == ++v7)
        {
          v5 = [editingReps countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (+[TSWPEditMenuController isAnimating])
    {
LABEL_11:
      [(TSWPEditingController *)self p_rescheduleDelayedUpdateHUDState];
      return;
    }

    if ([(TSWPEditingController *)self shouldShowEditMenu]&& ([(TSWPEditingController *)self p_targetRectForSelection:[(TSWPEditingController *)self selection]], x = v23.origin.x, y = v23.origin.y, width = v23.size.width, height = v23.size.height, !CGRectIsNull(v23)))
    {
      [TSWPEditMenuController showEditMenuAtTargetRect:[(TSWPEditingController *)self canCenterHUD] canCenterHUD:[(TSWPEditingController *)self interactiveCanvasController] interactiveCanvasController:x, y, width, height];
      self->_editMenuIsVisible = 1;
    }

    else if ([(TSWPEditingController *)self editorCanHideEditMenu])
    {
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
      v12 = TSUProtocolCast();
      selection = [(TSWPEditingController *)self selection];
      +[TSWPEditMenuController hideEditMenu];
      self->_editMenuIsVisible = 0;
      if (objc_opt_respondsToSelector())
      {
        storage = self->_storage;
        range = [(TSWPSelection *)selection range];
        [v12 showCustomEditMenuForStorage:storage range:{range, v16}];
      }
    }
  }
}

- (void)p_cancelDelayedSelectors
{
  [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
  v3 = MEMORY[0x277D82BB8];

  [v3 cancelPreviousPerformRequestsWithTarget:self];
}

- (void)updateHUDState
{
  if (TSUSupportsTextInteraction())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [TSWPEditingController updateHUDState];
    }
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_updateHUDState object:0];

    [(TSWPEditingController *)self performSelector:sel_p_updateHUDState withObject:0 afterDelay:0.0];
  }
}

- (_NSRange)editRange
{
  if (!TSUSupportsTextInteraction())
  {
    if ([(TSWPSelection *)self->_selection isValid])
    {
      v6 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:[(TSWPSelection *)self->_selection start]];
      v8 = v7;
      range = [(TSWPSelection *)self->_selection range];
      if (v6 > range || v6 + v8 < range + v10)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController editRange]"];
        [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 1906, @"Bad range from selectionRangeForCharIndex."}];
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    v8 = 0;
LABEL_13:
    range2 = v6;
    v5 = v8;
    goto LABEL_14;
  }

  storage = self->_storage;
  if (!storage)
  {
    goto LABEL_12;
  }

  range2 = [(TSWPStorage *)storage range];
LABEL_14:
  result.length = v5;
  result.location = range2;
  return result;
}

- (double)p_effectiveFontSizeForCurrentSelection
{
  v6[3] = *MEMORY[0x277D85DE8];
  isValid = [(TSWPSelection *)self->_selection isValid];
  result = 0.0;
  if (isValid)
  {
    v5 = [(TSWPSelection *)self->_selection range:0.0];
    v6[1] = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:v5 - ((v5 != 0) & ~[(TSWPSelection *)self->_selection isRange]) effectiveRange:0];
    v6[2] = [-[TSWPEditingController styleProvider](self "styleProvider")];
    TSWPResolveFloatPropertyForStyles(v6, 3uLL, 17);
  }

  return result;
}

- (double)viewScaleForSelectionWithTargetPointSize:(double)size
{
  [(TSWPEditingController *)self p_effectiveFontSizeForCurrentSelection];
  v5 = size / v4;
  v6 = v4 <= 0.0;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (void)p_highlightRubyTextWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  editingReps = [(TSWPEditingController *)self editingReps];
  v6 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(editingReps);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSecondaryHighlightRange:location color:length pathStyle:{objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "colorWithRed:green:blue:alpha:", 0.0, 0.330000013, 0.649999976, 0.200000003), "CGColor"), 1}];
      }

      while (v7 != v9);
      v7 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_clearSecondaryHighlight
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  editingReps = [(TSWPEditingController *)self editingReps];
  v3 = [editingReps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(editingReps);
        }

        [*(*(&v7 + 1) + 8 * v6++) clearSecondaryHighlight];
      }

      while (v4 != v6);
      v4 = [editingReps countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)p_wordRangesForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x277CBEB18] array];
  string = [(TSWPStorage *)self->_storage string];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TSWPEditingController_p_wordRangesForRange___block_invoke;
  v10[3] = &unk_279D49A38;
  v10[4] = array;
  v11.location = location;
  v11.length = length;
  TSWPEnumerateWordsInStringWithBlock(string, v11, currentLocale, v10);
  return array;
}

uint64_t __46__TSWPEditingController_p_wordRangesForRange___block_invoke(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCAE60];
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
  v5 = [v3 valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];

  return [v2 addObject:v5];
}

- (id)p_viewControllerForPresenting
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v2 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 viewControllerForPresenting];
}

- (CGRect)p_adjustedPopoverTargetRectForRange:(_NSRange)range
{
  [(TSWPEditingController *)self p_targetRectForSelection:[TSWPSelection selectionWithRange:range.location, range.length]];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  canvasView = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layerHost] canvasView];
  v13 = [objc_msgSend(objc_msgSend(canvasView "window")];
  [canvasView convertRect:v13 toView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 bounds];
  v23 = v22;
  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  v24 = v23 - CGRectGetMaxX(v31);
  if (v15 >= v24)
  {
    if (v15 >= 350.0)
    {
      goto LABEL_7;
    }

    v25 = 350.0 - v15;
    v15 = v15 + 350.0 - v15;
  }

  else
  {
    if (v24 >= 350.0)
    {
      goto LABEL_7;
    }

    v25 = 350.0 - v24;
  }

  v19 = v19 - v25;
LABEL_7:

  [canvasView convertRect:v13 fromView:{v15, v17, v19, v21}];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)p_documentViewController
{
  v2 = [-[TSWPEditingController documentRoot](self "documentRoot")];
  if (!v2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_documentViewController]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 2146, @"invalid nil value for '%s'", "dvc"}];
  }

  return v2;
}

- (BOOL)isUnscaledPointInTextSelection:(CGPoint)selection
{
  y = selection.y;
  x = selection.x;
  selection = [(TSWPEditingController *)self selection];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRep:x, y];
  v7 = TSUDynamicCast();
  v8 = [v7 canEditWithEditor:self];
  if (![(TSWPSelection *)selection isValid]|| !v8)
  {
    return 0;
  }

  [v7 convertNaturalPointFromUnscaledCanvas:{x, y}];

  return [v7 isPointInSelectedArea:?];
}

- (BOOL)p_respondsToListGestures
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v2 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v2 editorAllowsListInteraction];
}

- (BOOL)p_respondsToHyperlinkGestures
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v2 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v2 editorAllowsHyperlinkInteraction];
}

- (BOOL)p_respondsToRubyGestures
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v2 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v2 editorAllowsRubyInteraction];
}

- (id)p_repForSwipeAtUnscaledLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v37 = *MEMORY[0x277D85DE8];
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  selection = [(TSWPEditingController *)self selection];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledSize:50.0, 50.0];
  v9 = v8;
  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(TSDInteractiveCanvasController *)interactiveCanvasController hitRepsAtPoint:x withSlop:y, v8, v10, 0];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = *v33;
  v16 = -v9;
  v17 = -v11;
LABEL_3:
  v18 = 0;
  while (1)
  {
    if (*v33 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v19 = *(*(&v32 + 1) + 8 * v18);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storage = [(TSWPEditingController *)self storage];
      if (storage == [v19 storage])
      {
        if ([(TSWPSelection *)selection isInsertionPoint])
        {
          [v19 caretRect];
        }

        else
        {
          [v19 rectForSelection:selection];
        }

        v39 = CGRectInset(*&v21, v16, v17);
        v25 = v39.origin.x;
        v26 = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        [v19 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v38.x = v29;
        v38.y = v30;
        v40.origin.x = v25;
        v40.origin.y = v26;
        v40.size.width = width;
        v40.size.height = height;
        if (CGRectContainsPoint(v40, v38))
        {
          return v19;
        }
      }
    }

    if (v14 == ++v18)
    {
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)canHandleSwipeGestureForGestureRecognizer:(id)recognizer outDelta:(int64_t *)delta outTextDirection:(int64_t *)direction outLayoutDirection:(int64_t *)layoutDirection
{
  direction = [recognizer direction];
  v12 = [(TSWPEditingController *)self textIsVerticalAtCharIndex:0];
  if (v12)
  {
    if (direction)
    {
      v13 = 3;
      if (direction != 4)
      {
        v13 = 0;
      }

      if (direction == 8)
      {
        v13 = 2;
      }

      *direction = v13;
    }

    if (layoutDirection)
    {
      *layoutDirection = direction == 4;
    }

    v14 = direction == 4;
    if (direction == 8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (direction)
    {
      v15 = 3;
      if (direction != 2)
      {
        v15 = 0;
      }

      if (direction == 1)
      {
        v15 = 2;
      }

      *direction = v15;
    }

    if (layoutDirection)
    {
      *layoutDirection = direction == 2;
    }

    v14 = direction == 2;
    if (direction == 1)
    {
      goto LABEL_22;
    }
  }

  if (!v14)
  {
    return 0;
  }

LABEL_22:
  if ([recognizer gestureKind] == @"TSWPOneFingerSwipe" && (v12 | !-[TSWPEditingController swipeableParagraphIsSelected](self, "swipeableParagraphIsSelected")) != 1 || -[TSWPEditingController isInParagraphMode](self, "isInParagraphMode"))
  {
    return 0;
  }

  if (delta)
  {
    *delta = 0;
  }

  return 1;
}

- (BOOL)swipeableParagraphIsSelected
{
  isValid = [(TSWPSelection *)self->_selection isValid];
  if (isValid)
  {
    isValid = [(TSWPEditingController *)self p_respondsToListGestures];
    if (isValid)
    {
      v4 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)self->_selection range]];
      v6 = v5;
      v7 = [(TSWPStorage *)self->_storage paragraphHasListLabelAtCharIndex:[(TSWPSelection *)self->_selection range]];
      if ([(TSWPSelection *)self->_selection isInsertionPoint]&& v6 <= 1 && v7 || [(TSWPSelection *)self->_selection type]== 2 || [(TSWPSelection *)self->_selection range]== v4 && ([(TSWPSelection *)self->_selection range], v8 == v6 && v7))
      {
        LOBYTE(isValid) = 1;
      }

      else
      {

        LOBYTE(isValid) = [(TSWPEditingController *)self isInParagraphMode];
      }
    }
  }

  return isValid;
}

- (BOOL)canHandleGesture:(id)gesture
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  [gesture unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] hitRep:v7, v9];
  v10 = TSUDynamicCast();
  v11 = [v10 canEditWithEditor:self];
  v21 = 0;
  v12 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitKnobAtPoint:&v21 returningRep:v7, v9];
  objc_opt_class();
  v13 = TSUDynamicCast();
  v14 = [v12 tag] == 11 || objc_msgSend(v12, "tag") == 10;
  v15 = 0;
  if (v12 && v13)
  {
    v15 = [v13 storage] == self->_storage && v14;
  }

  if (v13)
  {
    v11 &= v14;
  }

  gestureKind = [gesture gestureKind];
  v17 = gestureKind;
  if ((gestureKind == @"TSWPOneFingerSwipe" || gestureKind == @"TSWPTwoFingerSwipe" || gestureKind == @"TSWPThreeFingerSwipe") && [(TSWPSelection *)self->_selection isValid])
  {
    v15 = [(TSWPEditingController *)self canHandleSwipeGestureForGestureRecognizer:v5 outDelta:0 outTextDirection:0 outLayoutDirection:0];
    goto LABEL_26;
  }

  if (v17 == @"TSWPLongPress" && !v12)
  {
LABEL_16:
    v15 = v11;
    goto LABEL_26;
  }

  if (v17 != @"TSWPImmediatePress" || self->_ignoreFutureImmediatePresses)
  {
    if (v17 != @"TSWPImmediateSingleTap" && v17 != @"TSWPTwoFingerTap" && v17 != @"TSWPSecondarySingleTap" && v17 != @"TSWPImmediateDoubleTap" && v17 != @"TSWPTapAndTouch" && v17 != @"TSWPDoubleTapAndTouch")
    {
      v15 = 2 * (v17 != @"TSWPUndefinedGestureKind");
      goto LABEL_26;
    }

    goto LABEL_16;
  }

LABEL_26:
  if (v10 && v15)
  {
    [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];
    v18 = [v10 footnoteReferenceAttachmentAtPoint:?];
    if (v17 == @"TSWPTapAndTouch" && v18 != 0)
    {
      v15 = 0;
    }
  }

  return v15 == 1;
}

- (void)p_handleSwipeMoveCaretWithTextGranularity:(int64_t)granularity textDirection:(int64_t)direction layoutDirection:(int64_t)layoutDirection
{
  if (![(TSWPSelection *)self->_selection isValid])
  {
    return;
  }

  insertionPoint = [(TSWPEditingController *)self insertionPoint];
  if ([(TSWPSelection *)self->_selection isRange])
  {
    if (layoutDirection)
    {
      if (!granularity)
      {
        ++insertionPoint;
      }
    }

    else
    {
      range = [(TSWPSelection *)self->_selection range];
      insertionPoint = ((__PAIR128__(v11, granularity) - 1) >> 64) + range;
    }
  }

  v12 = [(TSWPSelection *)self->_selection caretAffinity]== 1;
  LODWORD(v13) = 2143289344;
  v14 = [(TSWPEditingController *)self charIndexByMovingPosition:[TSDTextPosition textPositionWithCharIndex:0 eolAffinity:v13 preferredPosition:? isPreferredStart:?], granularity, direction, 0];
  if (granularity == 1)
  {
    v15 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:insertionPoint backward:layoutDirection == 0];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (direction != 3)
      {
        if (direction != 2 || insertionPoint != v15 + v16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (insertionPoint == v15)
      {
LABEL_13:
        v17 = [(TSWPSelection *)self->_selection caretAffinity]== 1;
        LODWORD(v18) = 2143289344;
        v14 = [(TSWPEditingController *)self charIndexByMovingPosition:[TSDTextPosition textPositionWithCharIndex:0 eolAffinity:v18 preferredPosition:? isPreferredStart:?], 1, direction, 0];
      }
    }
  }

LABEL_14:
  range2 = [(TSWPStorage *)self->_storage range];
  if (v14 <= range2 + v20 && v14 >= [(TSWPStorage *)self->_storage range]|| (v21 = [(TSWPStorage *)self->_storage range], insertionPoint <= v21 + v22) && (v14 = insertionPoint, insertionPoint >= [(TSWPStorage *)self->_storage range]))
  {
    if (v14 != [(TSWPSelection *)self->_selection range]|| v26)
    {
      v27 = [[TSWPSelection alloc] initWithType:0 range:v14 styleInsertionBehavior:0 caretAffinity:0, direction == 2];
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setSelection:v27 onModel:self->_storage withFlags:80];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleSwipeMoveCaretWithTextGranularity:textDirection:layoutDirection:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];

    [currentHandler handleFailureInFunction:v24 file:v25 lineNumber:2939 description:@"Swipe gesture tried to set invalid insertion point"];
  }
}

- (void)p_handleLongPressGesture:(id)gesture
{
  [gesture locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), "view")}];
  v6 = v5;
  v8 = v7;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v10 = v9;
  v12 = v11;
  v30 = 0;
  v13 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitKnobAtPoint:&v30 returningRep:?];
  state = [gesture state];
  if ((state - 3) < 2)
  {
    objc_opt_class();
    [gesture targetRep];
    v17 = TSUDynamicCast();
    if (v17)
    {
      [v17 setShouldHideSelectionControls:0];
    }

    v18 = [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
    if (v18)
    {
      [v18 setShouldHideSelectionControls:0];
    }

    knobTracker = self->_knobTracker;
    if (knobTracker)
    {
      if (![(TSWPTextKnobTracker *)knobTracker didShowMagnifier]&& ![(TSWPEditingController *)self isInParagraphMode])
      {
        [(TSWPEditingController *)self tappedOnKnob:v13];
      }

      [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:gesture];

      self->_knobTracker = 0;
    }

    else
    {
      [(TSWPEditingController *)self p_endAutoscroll];
      [(TSWPEditingController *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
      [(TSWPEditingController *)self protectedStopMagnification];
      if ([gesture state] == 3)
      {
        self->_shouldShowEditMenuForInsertionPoint = 1;
        [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
      }
    }
  }

  else if (state == 2)
  {
    if (self->_knobTracker)
    {
LABEL_25:
      [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:gesture];
      return;
    }

    if ([(TSWPSelection *)self->_selection type]!= 2)
    {
      if ([objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")])
      {
        [TSDAutoscroll startAutoscroll:self unscaledPoint:v10, v12];
      }

      [(TSWPEditingController *)self p_setSelectionFromPoint:self->_initialPressTextSelectionGranularity textSelectionGranularity:0 includeListLabels:v10, v12];
    }
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    [(TSWPEditingController *)self p_clearEditMenuFlags];
    objc_opt_class();
    [gesture targetRep];
    v15 = TSUDynamicCast();
    if (v15)
    {
      v16 = v15;
      [v15 setShouldHideSelectionControls:1];
    }

    else
    {
      objc_opt_class();
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRep:v10, v12];
      v16 = TSUDynamicCast();
    }

    [v16 convertNaturalPointFromUnscaledCanvas:{v10, v12}];
    if (v13)
    {
      v20 = v30;
      [v13 position];
      [v20 convertNaturalPointToUnscaledCanvas:?];
      v22 = v21;
      v24 = v23;
      v25 = [(TSWPEditingController *)self icc];
      [gesture locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController icc](self, "icc"), "layerHost"), "asiOSCVC"), "view")}];
      [(TSDInteractiveCanvasController *)v25 convertBoundsToUnscaledPoint:?];
      self->_knobToTouchOffset.x = TSDSubtractPoints(v22, v24, v26);
      self->_knobToTouchOffset.y = v27;
      objc_opt_class();
      [(TSWPEditingController *)self p_createKnobTracker:v13 forRep:TSUDynamicCast() tapCount:1];
      [(TSWPEditingController *)self p_beginOperationAndTakeControl];
      goto LABEL_25;
    }

    [(TSWPEditingController *)self tappedInRep:v16 point:2 tapCount:1 isTapHold:0 precise:?];
    self->_initialPressTextSelectionGranularity = 1;
    selection = [(TSWPEditingController *)self selection];
    type = [(TSWPSelection *)selection type];
    if (![(TSWPEditingController *)self pIsSelectionPlaceHolderTextWithSelection:selection]&& type != 2)
    {
      [(TSWPEditingController *)self p_beginMagnification:selection forRep:v16 atPoint:v6, v8];
    }
  }
}

- (CGPoint)p_clampPointToLine:(CGPoint)line trackingRep:(id)rep
{
  y = line.y;
  x = line.x;
  [rep convertNaturalPointFromUnscaledCanvas:?];
  [rep pinToNaturalBounds:1 andLastLineFragment:?];
  if (rep)
  {
    [rep lineMetricsAtPoint:?];
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  if (!CGRectIsEmpty(*&v7))
  {
    [rep convertNaturalRectToUnscaledCanvas:{0, 0}];
    y = CGRectGetMidY(v14);
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)p_handleTapAndTouchGesture:(id)gesture
{
  v41[2] = *MEMORY[0x277D85DE8];
  self->_ignoreFutureImmediatePresses = 1;
  [gesture unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  [gesture targetRep];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    objc_opt_class();
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRep:v6, v8];
    v9 = TSUDynamicCast();
  }

  v10 = v9;
  [v9 convertNaturalPointFromUnscaledCanvas:{v6, v8}];
  v12 = v11;
  v14 = v13;
  numberOfTapsRequired = [gesture numberOfTapsRequired];
  if (!v10 || (v16 = numberOfTapsRequired, [(TSWPSelection *)self->_selection type]== 3) || [(TSWPSelection *)self->_selection type]== 5)
  {
    [(TSWPEditingController *)self p_endAutoscroll];
    [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
    if ([gesture gestureState] == 3 || objc_msgSend(gesture, "gestureState") == 4)
    {
      if (self->_knobTracker)
      {
        objc_opt_class();
        v17 = TSUDynamicCast();
        if (!v17)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
          [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3427, @"invalid nil value for '%s'", "gr"}];
        }

        [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:v17];

        self->_knobTracker = 0;
      }

      else if (self->_magnifying)
      {

        [(TSWPEditingController *)self protectedStopMagnification];
      }
    }

    else if (self->_magnifying)
    {
      if ([objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")])
      {
        [TSDAutoscroll startAutoscroll:self unscaledPoint:v6, v8];
      }

      initialPressTextSelectionGranularity = self->_initialPressTextSelectionGranularity;

      [(TSWPEditingController *)self p_setSelectionFromPoint:initialPressTextSelectionGranularity textSelectionGranularity:0 includeListLabels:v6, v8];
    }
  }

  else
  {
    v21 = v16 + 1;
    if ([gesture gestureState] == 1)
    {
      [(TSWPEditingController *)self p_clearEditMenuFlags];
      if (![(TSWPInteractiveCanvasController *)self->_interactiveCanvasController suppressDoubleTapForSelection])
      {
        [(TSWPEditingController *)self tappedInRep:v10 point:v21 tapCount:1 isTapHold:0 precise:v12, v14];
      }

      [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
      v40[0] = @"TSWPEditingControllerTextRepKey";
      v40[1] = @"TSWPEditingControllerRepPointKey";
      v41[0] = v10;
      v41[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v12, v14}];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      self->_tapInfo = v22;
      self->_tapAndLongPressIsPossible = 1;
      [(TSWPEditingController *)self performSelector:sel_p_beginTapAndLongPress_ withObject:v22 afterDelay:0.2];
    }

    else if ([gesture gestureState] == 2)
    {
      if ([(TSWPSelection *)self->_selection type]!= 2)
      {
        [-[NSDictionary objectForKey:](self->_tapInfo objectForKey:{@"TSWPEditingControllerRepPointKey", "CGPointValue"}];
        v24 = v23;
        v26 = v25;
        if ([(TSWPInteractiveCanvasController *)self->_interactiveCanvasController suppressDoubleTapForSelection])
        {
          v27 = TSDDistance(v24, v26, v12, v14) <= 5.0;
        }

        else
        {
          v27 = 0;
        }

        if (self->_tapAndLongPressIsPossible && !v27)
        {
          [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
          v38[0] = @"TSWPEditingControllerTextRepKey";
          v38[1] = @"TSWPEditingControllerRepPointKey";
          v39[0] = v10;
          v39[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{v12, v14}];
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
          self->_tapInfo = v32;
          self->_tapAndLongPressIsPossible = 1;
          [(TSWPEditingController *)self p_beginTapAndLongPress:v32];
        }

        if (self->_magnifying || !self->_knobTracker && (v33 = [MEMORY[0x277D6C290] currentHandler], v34 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPEditingController p_handleTapAndTouchGesture:]"), objc_msgSend(v33, "handleFailureInFunction:file:lineNumber:description:", v34, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3341, @"after beginTapAndLongPress, we must be either tracking the knobs, or magnifying"), self->_magnifying))
        {
          if ([objc_msgSend(-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")])
          {
            [TSDAutoscroll startAutoscroll:self unscaledPoint:v6, v8];
          }

          [(TSWPEditingController *)self p_setSelectionFromPoint:self->_initialPressTextSelectionGranularity textSelectionGranularity:0 includeListLabels:v6, v8];
        }

        else if (self->_knobTracker)
        {
          objc_opt_class();
          v35 = TSUDynamicCast();
          if (!v35)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
            [currentHandler2 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3354, @"invalid nil value for '%s'", "gr"}];
          }

          [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:v35];
        }
      }
    }

    else
    {
      [(TSWPEditingController *)self p_endAutoscroll];
      if (self->_tapAndLongPressIsPossible && v21 == 2)
      {
        [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController zoomColumnAtPoint:v6, v8];
      }

      [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
      if (self->_knobTracker)
      {
        objc_opt_class();
        v28 = TSUDynamicCast();
        if (!v28)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
          [currentHandler3 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3395, @"invalid nil value for '%s'", "gr"}];
        }

        [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:v28];

        self->_knobTracker = 0;
      }

      else
      {
        [(TSWPEditingController *)self protectedStopMagnification];
      }

      if ([gesture gestureState] != 5 && -[TSWPSelection isValid](-[TSWPEditingController selection](self, "selection"), "isValid"))
      {
        if (v21 == 2)
        {
          v31 = 3;
        }

        else
        {
          v31 = 1;
        }

        [(TSWPEditingController *)self selectionChangedWithFlags:0 wpFlags:v31];
      }
    }
  }
}

- (void)p_beginTapAndLongPress:(id)press
{
  if (!self->_tapAndLongPressIsPossible)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginTapAndLongPress:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3463, @"_tapAndLongPressIsPossible should be YES"}];
  }

  self->_tapAndLongPressIsPossible = 0;
  if ([(TSWPSelection *)self->_selection type]!= 2)
  {
    v7 = [press objectForKeyedSubscript:@"TSWPEditingControllerTextRepKey"];
    [objc_msgSend(press objectForKeyedSubscript:{@"TSWPEditingControllerRepPointKey", "CGPointValue"}];
    v9 = v8;
    v11 = v10;
    if ([(TSWPInteractiveCanvasController *)self->_interactiveCanvasController suppressDoubleTapForSelection])
    {
      [(TSWPEditingController *)self tappedInRep:v7 point:2 tapCount:1 isTapHold:0 precise:v9, v11];
    }

    selection = [(TSWPEditingController *)self selection];
    v13 = selection;
    if (!self->_knobTracker && [(TSWPSelection *)selection isValid]&& [(TSWPSelection *)v13 isRange])
    {
      [(TSWPEditingController *)self p_beginKnobTrackingSelection:v13 forRep:v7 atPoint:v9, v11];
    }

    else
    {
      [(TSWPEditingController *)self p_beginMagnification:v13 forRep:v7 atPoint:v9, v11];
    }
  }

  self->_tapInfo = 0;
}

- (void)p_cancelTapAndLongPressPreviousSelector
{
  if (self->_tapAndLongPressIsPossible)
  {
    self->_tapAndLongPressIsPossible = 0;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_beginTapAndLongPress_ object:self->_tapInfo];
  }

  self->_tapInfo = 0;
}

- (void)p_dismissDefinitionPopover
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    if ([(UIPopoverController *)self->_definitionPopoverController isPopoverVisible])
    {
      [(UIPopoverController *)self->_definitionPopoverController dismissPopoverAnimated:1];
    }

    [(TSWPReferenceLibraryViewController *)self->_definitionViewController setDelegate:0];

    self->_definitionViewController = 0;
    self->_definitionPopoverController = 0;
  }
}

- (void)p_beginKnobTrackingSelection:(id)selection forRep:(id)rep atPoint:(CGPoint)point
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [(TSWPEditingController *)self charIndexInRep:rep fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:point.x, point.y];
  range = [selection range];
  [selection range];
  if (v8 >= range + (v10 >> 1))
  {
    v11 = 10;
  }

  else
  {
    v11 = 11;
  }

  v12 = [rep knobForTag:v11];
  if (v12)
  {
LABEL_5:
    [(TSWPEditingController *)self p_createKnobTracker:v12 forRep:rep tapCount:2];
    [(TSWPEditingController *)self p_beginOperationAndTakeControl];
    return;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  siblings = [rep siblings];
  v14 = [siblings countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v19 != v16)
      {
        objc_enumerationMutation(siblings);
      }

      v12 = [*(*(&v18 + 1) + 8 * v17) knobForTag:v11];
      if (v12)
      {
        goto LABEL_5;
      }

      if (v15 == ++v17)
      {
        v15 = [siblings countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        return;
      }
    }
  }
}

- (void)p_createKnobTracker:(id)tracker forRep:(id)rep tapCount:(unint64_t)count
{
  if (!self->_knobTracker || (v9 = [MEMORY[0x277D6C290] currentHandler], v10 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPEditingController p_createKnobTracker:forRep:tapCount:]"), objc_msgSend(v9, "handleFailureInFunction:file:lineNumber:description:", v10, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3548, @"expected nil value for '%s'", "_knobTracker"), !self->_knobTracker))
  {
    [(TSWPEditingController *)self setKnobTrackingTapCount:count];
    v11 = [rep newTrackerForKnob:tracker];
    self->_knobTracker = v11;
  }
}

- (void)p_handleTapGestures:(id)gestures
{
  gestureKind = [gestures gestureKind];
  [gestures unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [gestures targetRep];
  v10 = TSUDynamicCast();
  if (!v10)
  {
    objc_opt_class();
    [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] hitRep:v7, v9];
    v10 = TSUDynamicCast();
  }

  v11 = v10;
  [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];
  v13 = v12;
  v15 = v14;
  if (gestureKind == @"TSWPImmediateSingleTap")
  {
    if (!v11)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapGestures:]"];
      [currentHandler handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3588, @"we should have gotten a valid textRep by now"}];
    }

    v26 = MEMORY[0x277D6C268];
    self->_originalSelectionRange = *MEMORY[0x277D6C268];
    [(TSWPEditingController *)self p_clearEditMenuFlags];
    if (!self->_editMenuIsVisible)
    {
      selection = [(TSWPEditingController *)self selection];
      if ([(TSWPSelection *)selection isValid])
      {
        range = [(TSWPSelection *)selection range];
      }

      else
      {
        range = *v26;
        v29 = v26[1];
      }

      self->_originalSelectionRange.location = range;
      self->_originalSelectionRange.length = v29;
    }

    [(TSWPEditingController *)self tappedInRep:v11 point:1 tapCount:0 isTapHold:0 precise:v13, v15];
    v22 = 0;
    v23 = 148;
    goto LABEL_26;
  }

  if (gestureKind != @"TSWPSecondarySingleTap" && (gestureKind == @"TSWPImmediateDoubleTap" || gestureKind == @"TSWPTwoFingerTap"))
  {
    v17 = gestureKind == @"TSWPImmediateDoubleTap" ? 2 : 4 * (gestureKind == @"TSWPTwoFingerTap");
    if (!v11)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapGestures:]"];
      [currentHandler2 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3763, @"we should have gotten a valid textRep by now"}];
    }

    [(TSWPEditingController *)self tappedInRep:v11 point:v17 tapCount:0 isTapHold:0 precise:v13, v15];
    selection2 = [(TSWPEditingController *)self selection];
    if (selection2)
    {
      [(TSWPSelection *)selection2 range];
      if (!v21)
      {
        v22 = 1;
        v23 = 232;
LABEL_26:
        *(&self->super.isa + v23) = v22;
      }
    }
  }
}

- (BOOL)handleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  self->_mostRecentGestureKind = gestureKind;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layerHost];
  [TSUDynamicCast() cancelDelayedTapAction];
  v7 = gestureKind == @"TSWPOneFingerSwipe" || gestureKind == @"TSWPTwoFingerSwipe" || gestureKind == @"TSWPThreeFingerSwipe";
  if (v7 && [(TSWPSelection *)self->_selection isValid])
  {
    v20 = 2;
    v21 = 0;
    v19 = 0;
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (v8 && [(TSWPEditingController *)self canHandleSwipeGestureForGestureRecognizer:v8 outDelta:&v21 outTextDirection:&v20 outLayoutDirection:&v19])
    {
      if (!v21)
      {
        if (gestureKind == @"TSWPOneFingerSwipe")
        {
          v10 = v19;
          v9 = v20;
          selfCopy2 = self;
          v12 = 0;
        }

        else
        {
          if (gestureKind == @"TSWPTwoFingerSwipe")
          {
            v17 = 1;
            [(TSWPEditingController *)self p_handleSwipeMoveCaretWithTextGranularity:1 textDirection:v20 layoutDirection:v19];
            return v17;
          }

          if (gestureKind != @"TSWPThreeFingerSwipe")
          {
            return 1;
          }

          v10 = v19;
          v9 = v20;
          selfCopy2 = self;
          v12 = 4;
        }

        [(TSWPEditingController *)selfCopy2 p_handleSwipeMoveCaretWithTextGranularity:v12 textDirection:v9 layoutDirection:v10];
      }

      return 1;
    }
  }

  else
  {
    if (gestureKind == @"TSWPLongPress" || gestureKind == @"TSWPImmediatePress")
    {
      [(TSWPEditingController *)self p_handleLongPressGesture:gesture];
      return 1;
    }

    if (gestureKind == @"TSWPTapAndTouch" || gestureKind == @"TSWPDoubleTapAndTouch")
    {
      [(TSWPEditingController *)self p_handleTapAndTouchGesture:TSUProtocolCast()];
      return 1;
    }

    if (gestureKind == @"TSWPImmediateSingleTap" || gestureKind == @"TSWPTwoFingerTap" || gestureKind == @"TSWPSecondarySingleTap" || gestureKind == @"TSWPImmediateDoubleTap")
    {
      [(TSWPEditingController *)self p_handleTapGestures:gesture];
      return 1;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController handleGesture:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3869, @"TSWPEditingController can't handle a gesture of kind %@", gestureKind}];
  }

  return 0;
}

- (void)gestureSequenceDidEnd
{
  self->_ignoreFutureImmediatePresses = 0;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layerHost];
  v3 = TSUDynamicCast();
  if ([v3 hasDelayedTapAction])
  {
    [v3 finishDelayedTapAction];
    goto LABEL_21;
  }

  selection = [(TSWPEditingController *)self selection];
  if (!selection)
  {
    goto LABEL_21;
  }

  mostRecentGestureKind = self->_mostRecentGestureKind;
  if (mostRecentGestureKind != @"TSWPImmediateSingleTap")
  {
    if (mostRecentGestureKind != @"TSWPTapAndTouch")
    {
      goto LABEL_21;
    }

    [(TSWPSelection *)selection range];
    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  range = [(TSWPSelection *)selection range];
  location = self->_originalSelectionRange.location;
  length = self->_originalSelectionRange.length;
  if ((location != *MEMORY[0x277D6C268] || length != *(MEMORY[0x277D6C268] + 8)) && range == location && v8 == length)
  {
LABEL_19:
    if (!self->_gestureBeganWhenEditingBegan)
    {
      self->_shouldShowEditMenuForInsertionPoint = 1;
    }
  }

LABEL_21:
  self->_gestureBeganWhenEditingBegan = 0;
}

- (void)setAutoscroll:(id)autoscroll
{
  autoscroll = self->_autoscroll;
  if (autoscroll != autoscroll)
  {

    self->_autoscroll = 0;
    self->_autoscroll = autoscroll;
  }
}

- (void)p_beginOperationAndTakeControl
{
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  if ([(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)interactiveCanvasController dynamicOperationController] isInOperation])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginOperationAndTakeControl]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4332, @"beginning WP operation in DOC when already in an operation"}];
  }

  [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)interactiveCanvasController tmCoordinator] registerTrackerManipulator:self];
  if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)interactiveCanvasController tmCoordinator] takeControlWithTrackerManipulator:self])
  {
    dynamicOperationController = [(TSDInteractiveCanvasController *)interactiveCanvasController dynamicOperationController];

    [(TSDDynamicOperationController *)dynamicOperationController beginOperation];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginOperationAndTakeControl]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
    [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)interactiveCanvasController tmCoordinator] controllingTM];
    v10 = objc_opt_class();
    [currentHandler2 handleFailureInFunction:v8 file:v9 lineNumber:4341 description:{@"could not take control with WP Editing Controller. Controlling TM is %@", NSStringFromClass(v10)}];
  }
}

- (void)p_endAutoscroll
{
  [(TSDAutoscroll *)[(TSWPEditingController *)self autoscroll] invalidate];

  [(TSWPEditingController *)self setAutoscroll:0];
}

- (void)p_handleKnobDragGestureRecognizer:(id)recognizer
{
  v5 = [recognizer state] == 3 || objc_msgSend(recognizer, "state") == 4;
  self->_readyToEnd = v5;
  if (!self->_knobTracker)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleKnobDragGestureRecognizer:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4355, @"invalid nil value for '%s'", "_knobTracker"}];
  }

  if ([recognizer state] == 3 || objc_msgSend(recognizer, "state") == 1)
  {
    [(TSWPTextKnobTracker *)self->_knobTracker setIgnoreNextCall:1];
  }

  v8 = [(TSWPEditingController *)self icc];
  [recognizer locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController icc](self, "icc"), "layerHost"), "asiOSCVC"), "view")}];
  [(TSDInteractiveCanvasController *)v8 convertBoundsToUnscaledPoint:?];
  v9 = TSDRoundedPoint();
  v11 = v10;
  [(TSDKnobTracker *)self->_knobTracker setCurrentPosition:TSDAddPoints(v9, v10, self->_knobToTouchOffset.x)];
  if (self->_readyToEnd)
  {
    [(TSWPEditingController *)self p_endAutoscroll];
  }

  else
  {
    [TSDAutoscroll startAutoscroll:self unscaledPoint:v9, v11];
  }

  dynamicOperationController = [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] dynamicOperationController];

  [(TSDDynamicOperationController *)dynamicOperationController handleTrackerManipulator:self];
}

- (unint64_t)insertionPoint
{
  if (![(TSWPSelection *)self->_selection isValid])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  selection = self->_selection;

  return [(TSWPSelection *)selection start];
}

- (void)setInsertionPoint:(unint64_t)point withFlags:(unint64_t)flags
{
  v6 = [[TSWPSelection alloc] initWithRange:point, 0];
  [(TSWPEditingController *)self setSelection:v6 withFlags:flags];
}

- (void)p_setRevertibleSelection:(id)selection
{
  [(TSKFidgetResolver *)self->_fidgetResolver pushValue:?];
  if ([selection isValid])
  {
    v5 = [selection end];
    if (v5 > [(TSWPStorage *)self->_storage length])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4421, @"Selection extends past end of storage"}];
    }

    if ([selection isInsertionPoint])
    {
      range = [selection range];
      if (range < -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [selection range]) & 0xFC00) == 0xDC00)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
        [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4427, @"Insertion point is before the wrong half of a surrogate pair"}];
        selection = [selection copyWithNewRange:{objc_msgSend(selection, "range") + 1, 0}];
      }
    }

    else
    {
      start = [selection start];
      if (start <= [(TSWPStorage *)self->_storage length])
      {
        start2 = [selection start];
        if (start2 != -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [selection start]) & 0xFC00) == 0xDC00)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
          [currentHandler3 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4436, @"Selection covers half of a surrogate pair"}];
        }
      }

      v15 = [selection end];
      if (v15 <= [(TSWPStorage *)self->_storage length])
      {
        v16 = [selection end];
        if (v16 != -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [selection end]) & 0xFC00) == 0xDC00)
        {
          currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
          [currentHandler4 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4441, @"Selection covers half of a surrogate pair"}];
        }
      }
    }
  }

  selectionCopy = selection;

  self->_selection = selection;
}

- (void)p_setSelection:(id)selection withFlags:(unint64_t)flags force:(BOOL)force
{
  v51[1] = *MEMORY[0x277D85DE8];
  if (selection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:4478 description:{@"[TSWPEditingController setSelection:] expected %@, got %@", v13, NSStringFromClass(v14)}];
    }
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  if ([(TSWPSelection *)v15 isValid])
  {
    v16 = [(TSWPSelection *)v15 end];
    if (v16 > [(TSWPStorage *)self->_storage length])
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
      [currentHandler2 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4480, @"Bad selection range"}];
    }
  }

  if (!selection)
  {
    v50 = @"TSDEditorControllerEditorKey";
    v51[0] = self;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  if (![(TSWPSelection *)v15 isValid])
  {

    self->_dictationInterpretations = 0;
    self->_autocorrectedEntries = 0;
  }

  if (![(TSWPSelection *)v15 isInsertionPoint])
  {
    insertBreakPopoverController = self->_insertBreakPopoverController;
    if (insertBreakPopoverController)
    {
      [(TSDMultiPaneController *)insertBreakPopoverController dismissAnimated:1];
      v21 = self->_insertBreakPopoverController;
      self->_insertBreakPopoverController = 0;
    }
  }

  [(TSWPEditingController *)self setCoalescingText:0];
  [(TSWPEditingController *)self p_clearEditMenuFlags];
  v22 = TSUSupportsTextInteraction();
  if ((flags & 0x20) == 0 && (v22 & 1) == 0)
  {
    if ([(TSWPEditingController *)self pIsSelectionPlaceHolderTextWithSelection:v15])
    {
      v23 = [-[TSWPStorage extendSelectionToIncludeSmartFields:](self->_storage extendSelectionToIncludeSmartFields:{v15), "copyWithNewType:", 3}];
    }

    else
    {
      v23 = [(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v15];
    }

    v15 = v23;
  }

  if ([(TSWPEditingController *)self isParagraphModeWithSelection:v15 onStorage:self->_storage])
  {
    v15 = [(TSWPEditingController *)self extendSelectionToParagraphs:v15];
  }

  if (force || (selection = self->_selection, selection != v15) && ![(TSWPSelection *)selection isEqual:v15])
  {
    if (![(TSWPSelection *)self->_selection isEquivalentForInsertionStyle:v15])
    {

      self->_insertionStyle = 0;
    }

    self->_selectionAnchor = 0x7FFFFFFFFFFFFFFFLL;
    if (![(TSWPSelection *)v15 isValid])
    {
      goto LABEL_46;
    }

    type = [(TSWPSelection *)v15 type];
    if (type <= 7)
    {
      if (((1 << type) & 0xD0) != 0)
      {
        goto LABEL_46;
      }

      if (((1 << type) & 0x28) != 0)
      {
        if (![(TSWPSelection *)v15 isRange])
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
          v29 = @"replace selection isn't a insertion range";
          v30 = currentHandler3;
          v31 = v27;
          v32 = 4576;
LABEL_45:
          [v30 handleFailureInFunction:v31 file:v28 lineNumber:v32 description:v29];
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      if (type == 2)
      {
        if (![(TSWPSelection *)v15 isRange])
        {
          currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          [currentHandler4 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4583, @"topic selection isn't a range"}];
        }

        range = [(TSWPSelection *)v15 range];
        v37 = v36;
        if (range != [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:range])
        {
          currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          [currentHandler5 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4585, @"Topic selection doesn't start at paragraph boundary"}];
        }

        v40 = range + v37;
        v41 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:v40 - 1];
        if (v40 == v41 + v42)
        {
          goto LABEL_46;
        }

        currentHandler6 = [MEMORY[0x277D6C290] currentHandler];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"Topic selection doesn't end at paragraph boundary";
        v30 = currentHandler6;
        v31 = v44;
        v32 = 4586;
        goto LABEL_45;
      }
    }

    if (type)
    {
      if (type != 1)
      {
        currentHandler7 = [MEMORY[0x277D6C290] currentHandler];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"illegal selection type";
        v30 = currentHandler7;
        v31 = v48;
        v32 = 4566;
        goto LABEL_45;
      }

      if (![(TSWPSelection *)v15 isInsertionPoint])
      {
        currentHandler8 = [MEMORY[0x277D6C290] currentHandler];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"label selection isn't an insertion point";
        v30 = currentHandler8;
        v31 = v46;
        v32 = 4579;
        goto LABEL_45;
      }
    }

LABEL_46:
    *&self->_selectionLastModifiedWithKnob = self->_knobTracking;
    self->_currentSelectionFlags = flags;
    [(TSWPEditingController *)self p_setRevertibleSelection:v15];
    [(TSWPEditingController *)self selectionChangedWithFlags:flags wpFlags:0];
  }

  v49 = self->_selection;
  if (v49 && [(TSWPSelection *)v49 isValid]&& (self->_markedRange.location != *MEMORY[0x277D6C268] || self->_markedRange.length != *(MEMORY[0x277D6C268] + 8)))
  {
    [(TSWPEditingController *)self clearMarkedRange];
  }

  if (![(TSWPSelection *)self->_selection isValid])
  {
    [(TSWPEditingController *)self p_clearEditMenuFlags];
  }

  self->_previousSelectedAnnotation = 0;
}

- (void)revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold
{
  nonFidgetValue = [(TSKFidgetResolver *)self->_fidgetResolver nonFidgetValue];
  if (nonFidgetValue)
  {
    v4 = nonFidgetValue;

    self->_selection = v4;
    currentSelectionFlags = self->_currentSelectionFlags;

    [(TSWPEditingController *)self selectionChangedWithFlags:currentSelectionFlags wpFlags:0];
  }
}

- (void)p_beginMagnification:(id)magnification forRep:(id)rep atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate:magnification];
  v8 = TSUProtocolCast();
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v10 = v9;
  v12 = v11;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v8 editorAllowsMagnifier])
  {
    initialPressTextSelectionGranularity = self->_initialPressTextSelectionGranularity;

    [(TSWPEditingController *)self p_setSelectionFromPoint:initialPressTextSelectionGranularity textSelectionGranularity:1 includeListLabels:v10, v12];
  }
}

- (void)p_postWillStyleTextNotification
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"TSDEditorControllerEditorKey";
  v4[0] = self;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)p_postSelectionContentsChangedNotification
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"TSWPEditingControllerEditor";
  v5[0] = self;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)selectionChangedWithFlags:(unint64_t)flags wpFlags:(unint64_t)wpFlags
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (self->_storage)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8[0] = @"TSWPEditingControllerEditor";
    v8[1] = @"TSWPEditingControllerSelectionFlagsKey";
    v9[0] = self;
    v9[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:flags];
    [defaultCenter postNotificationName:@"TSWPEditingControllerSelectionChanged" object:self->_storage userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
    [(TSWPEditingController *)self p_postSelectionContentsChangedNotification];
  }

  [(TSWPEditingController *)self dismissActivePopovers:flags];
  editorController = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController editorController];
  if (![(TSWPEditingController *)self trackingKnobInParagraphMode])
  {
    [(TSDEditorController *)editorController editorDidChangeSelection:self withSelectionFlags:flags];
    if ((flags & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [(TSDEditorController *)editorController editorDidChangeSelectionAndWantsKeyboard:self withSelectionFlags:flags];
  if ((flags & 0x10000) != 0)
  {
LABEL_7:
    [(TSWPEditingController *)self p_clearEditMenuFlags];
  }

LABEL_8:
  self->_suppressEditMenu = (flags & 0x20000) != 0;
  if (self->_magnifying)
  {
    if ([+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")])
    {
      [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
    }
  }
}

- (id)extendSelectionToParagraphs:(id)paragraphs
{
  storage = [(TSWPEditingController *)self storage];
  range = [paragraphs range];
  [(TSWPStorage *)self->_storage selectionRangeForCharIndex:[(TSWPStorage *)storage textRangeForParagraphsInCharRange:range, v7]];
  v8 = NSIntersectionRangeInclusive();
  v10 = [paragraphs copyWithNewRange:{v8, v9}];
  v11 = v10;

  return [(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v10];
}

- (id)p_columnForCharIndex:(unint64_t)index withStorage:(id)storage
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutsForModel:storage withSelection:[TSWPSelection selectionWithRange:index, 1]];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v29;
  v9 = &selRef_textView_editMenuForTextInRange_suggestedActions_;
  v23 = *v29;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = v9;
      v12 = TSUProtocolCast();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      columns = [v12 columns];
      v14 = [columns countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
LABEL_8:
        v17 = 0;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(columns);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          range = [v18 range];
          if (index >= range && index - range < v20)
          {
            return v18;
          }

          if (v15 == ++v17)
          {
            v15 = [columns countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v9 = v11;
      v8 = v23;
    }

    v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    v18 = 0;
    if (v7)
    {
      continue;
    }

    return v18;
  }
}

- (BOOL)isParagraphModeWithSelection:(id)selection onStorage:(id)storage
{
  if (!-[TSWPEditingController p_canEditTextString](self, "p_canEditTextString") || (-[TSDInteractiveCanvasController delegate](self->_interactiveCanvasController, "delegate"), v7 = TSUProtocolCast(), [selection isValid]) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v7, "editorShouldAlwaysBeInParagraphMode") & 1) != 0)
  {
    LOBYTE(isRange) = 1;
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || (isRange = [v7 editorAllowsParagraphMode]) != 0)
  {
    isRange = [selection isRange];
    if (isRange)
    {
      range = [selection range];
      v11 = v10;
      v12 = [storage selectedParagraphBreakCount:{range, v10}];
      v13 = [storage emptyParagraphCount:{range, v11}];
      v14 = v13 != 0;
      [storage paragraphIndexRangeForCharRange:{range, v11}];
      LOBYTE(isRange) = 0;
      if (storage)
      {
        if (v15 >= 2 && v12 != v14)
        {
          if ([selection type] == 3)
          {
            LOBYTE(isRange) = 0;
          }

          else
          {
            isRange = [(TSWPSelection *)self->_selection type];
            v16 = isRange == 5;
            LOBYTE(isRange) = isRange != 5;
            if (!v16 && v12 - v14 == 1)
            {
              v17 = v11 + range - 1;
              v18 = [(TSWPEditingController *)self p_columnForCharIndex:range withStorage:storage];
              v19 = [(TSWPEditingController *)self p_columnForCharIndex:v17 withStorage:storage];
              v20 = [v18 lineIndexForCharIndex:range eol:0];
              v21 = [v19 lineIndexForCharIndex:v17 eol:0] - v20;
              if (!v13)
              {
                ++v21;
              }

              LOBYTE(isRange) = v18 != v19 || v21 > 2;
            }
          }
        }
      }
    }
  }

  return isRange;
}

- (BOOL)trackingKnobInParagraphMode
{
  knobTracking = [(TSWPEditingController *)self knobTracking];
  if (knobTracking)
  {

    LOBYTE(knobTracking) = [(TSWPEditingController *)self isInParagraphMode];
  }

  return knobTracking;
}

- (_NSRange)markedRange
{
  length = self->_markedRange.length;
  location = self->_markedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)clearMarkedRange
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self->_markedRange.location != *MEMORY[0x277D6C268] || self->_markedRange.length != *(MEMORY[0x277D6C268] + 8))
  {
    self->_markedRange = *MEMORY[0x277D6C268];
    v5 = @"TSWPEditingControllerEditor";
    v6[0] = self;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

    self->_markedText = 0;
  }
}

- (unint64_t)countOfHyperlinksInUserSelection
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(TSWPSelection *)self->_selection isValid])
  {
    storage = self->_storage;
    range = [(TSWPSelection *)self->_selection range];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__TSWPEditingController_countOfHyperlinksInUserSelection__block_invoke;
    v8[3] = &unk_279D49A60;
    v8[4] = &v9;
    [(TSWPStorage *)storage enumerateSmartFieldsWithAttributeKind:6 inRange:range usingBlock:v5, v8];
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __57__TSWPEditingController_countOfHyperlinksInUserSelection__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 elementKind];
  if (result == 512)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)p_hitRepWithPoint:(CGPoint)point keyboardAdjustmentDelta:(double)delta
{
  v23 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:point.x, point.y + delta];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRep:v6, v8];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledSize:20.0, 2.0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRepsAtPoint:v6 withSlop:v8, v10, v11, 0];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v9 = *(*(&v18 + 1) + 8 * v16);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEditing] && objc_msgSend(v9, "storage") == self->_storage)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)count
{
  if (count - 2 >= 3)
  {
    return 4 * (count == 5);
  }

  else
  {
    return count - 1;
  }
}

- (void)tappedInRep:(id)rep point:(CGPoint)point tapCount:(unint64_t)count isTapHold:(BOOL)hold precise:(BOOL)precise
{
  preciseCopy = precise;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  [(TSWPEditingController *)self p_sendHandleTapNotification];
  v14 = [(TSWPEditingController *)self textSelectionGranularityForTapCount:count];
  if (count)
  {
    v15 = holdCopy;
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v17) = 0;
  [(TSWPEditingController *)self p_setTappedSelection:[(TSWPEditingController *)self p_selectionForRep:rep point:v14 textSelectionGranularity:holdCopy isTapHold:preciseCopy precise:v15 includeListLabels:0 allowPastBreak:x selectsEntireLink:y, v17]];
  if (holdCopy)
  {
    [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] delegate];
    v16 = TSUProtocolCast();
    if (objc_opt_respondsToSelector())
    {

      [v16 didSetTappedSelectionWithWPEditor:self onWPRep:rep];
    }
  }
}

- (void)tappedOnKnob:(id)knob
{
  v4 = [knob tag];
  selection = self->_selection;
  if (v4 == 11)
  {
    start = [(TSWPSelection *)selection start];
  }

  else
  {
    start = [(TSWPSelection *)selection end];
  }

  v7 = start;
  [(TSWPEditingController *)self p_sendHandleTapNotification];
  v8 = [[TSWPSelection alloc] initWithRange:v7, 0];
  [(TSWPEditingController *)self p_setTappedSelection:v8];
}

- (void)p_sendHandleTapNotification
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"TSDEditorControllerEditorKey";
  v4[0] = self;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)p_setTappedSelection:(id)selection
{
  if ([(TSWPEditingController *)self pIsSelectionPlaceHolderTextWithSelection:?])
  {
    v5 = 16464;
  }

  else
  {
    v5 = 16720;
  }

  interactiveCanvasController = self->_interactiveCanvasController;
  storage = self->_storage;

  [(TSDInteractiveCanvasController *)interactiveCanvasController setSelection:selection onModel:storage withFlags:v5];
}

- (BOOL)p_hitListLabelAtCharIndex:(unint64_t)index atNaturalPoint:(CGPoint)point inRep:(id)rep
{
  if (!rep)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  if (![(TSWPEditingController *)self p_respondsToListGestures])
  {
    return 0;
  }

  [rep labelRectForCharIndex:index];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = TSDRectWithCenterAndSize(x, y, 40.0);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = v16;

  return CGRectIntersectsRect(*&v24, *&v17);
}

- (id)p_selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)link
{
  breakCopy = break;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:x, y];
  v14 = TSUDynamicCast();
  if (![v14 isEditing])
  {
    return 0;
  }

  [v14 convertNaturalPointFromUnscaledCanvas:{x, y}];
  [v14 pinToClosestColumn:?];
  LOBYTE(v16) = link;
  return [(TSWPEditingController *)self p_selectionForRep:v14 point:granularity textSelectionGranularity:holdCopy isTapHold:1 precise:0 includeListLabels:breakCopy allowPastBreak:v16 selectsEntireLink:?];
}

- (id)p_selectionForRep:(id)rep point:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold precise:(BOOL)precise includeListLabels:(BOOL)labels allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)self0
{
  breakCopy = break;
  labelsCopy = labels;
  y = point.y;
  x = point.x;
  objc_opt_class();
  v17 = TSUDynamicCast();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v124[0] = 1;
  v123 = 0;
  storage = self->_storage;
  if (storage == [v17 storage])
  {
    v20 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:breakCopy allowPastBreak:&v123 isAtEndOfLine:v124 leadingEdge:x, y];
  }

  else
  {
    v20 = [(TSWPStorage *)self->_storage length];
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_selectionForRep:point:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:selectsEntireLink:]"];
    [currentHandler handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5299, @"The selection for the rep's storage is not the same as the editor's storage."}];
  }

  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v24 = v20;
  if ((v124[0] & 1) == 0)
  {
    v24 = [(TSWPStorage *)self->_storage nextCharacterIndex:v20];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  *&rect.origin.x = v20;
  v119 = *MEMORY[0x277D6C268];
  v25 = [TSWPFilteredStorage alloc];
  v26 = self->_storage;
  v27 = [(TSWPStorage *)v26 selectionRangeForCharIndex:v24];
  v29 = [(TSWPFilteredStorage *)v25 initWithStorage:v26 subRange:v27, v28];
  v30 = [(TSWPFilteredStorage *)v29 charIndexMappedFromStorage:v24];
  v31 = 8;
  if (granularity > 1)
  {
    if (granularity == 2)
    {
      v32 = v29;
      if ([(TSWPEditingController *)self charIndexInRep:v18 fromPoint:breakCopy allowPastBreak:0 allowNotFound:&v123 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        LOBYTE(rect.size.width) = 0;
        HIBYTE(rect.origin.y) = 0;
        v122.var0 = 0;
        width = COERCE_DOUBLE([(TSWPEditingController *)self p_charIndexByMovingCharIndex:v24 withEolAffinity:&rect.size toBoundary:2 inDirection:1 preferPosition:&v122 isLeadingEdge:&rect.origin.y + 7]);
        [(TSWPEditingController *)self p_charIndexByMovingCharIndex:v24 withEolAffinity:&rect.size toBoundary:2 inDirection:0 preferPosition:&v122 isLeadingEdge:v124];
        v31 = 0;
        goto LABEL_120;
      }
    }

    else
    {
      v32 = v29;
      if (granularity != 3)
      {
        width = v119;
        if (granularity != 4)
        {
          goto LABEL_120;
        }

        width = COERCE_DOUBLE([(TSWPStorage *)self->_storage range]);
        goto LABEL_65;
      }

      if ([(TSWPEditingController *)self charIndexInRep:v18 fromPoint:breakCopy allowPastBreak:0 allowNotFound:&v123 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v56 = self->_storage;
        if (v56)
        {
          [(TSWPStorage *)v56 paragraphEnumeratorAtCharIndex:v24 styleProvider:0];
        }

        else
        {
          memset(&v122, 0, sizeof(v122));
        }

        width = COERCE_DOUBLE(TSWPParagraphEnumerator::paragraphTextRange(&v122));
        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v122);
LABEL_65:
        v31 = 0;
        goto LABEL_120;
      }
    }

    v31 = 7;
    width = rect.origin.x;
    goto LABEL_120;
  }

  if (granularity)
  {
    if (granularity == 1)
    {
      v34 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:breakCopy allowPastBreak:1 allowNotFound:1 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
      v35 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:breakCopy allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
      if (labelsCopy && [(TSWPSelection *)self->_selection isValid]&& [(TSWPSelection *)self->_selection type]== 2 && [(TSWPEditingController *)self p_hitListLabelAtCharIndex:v24 atNaturalPoint:v18 inRep:x, y])
      {
        width = COERCE_DOUBLE([(TSWPSelection *)self->_selection range]);
        length = v36;
        v38 = self->_storage;
        start = [(TSWPSelection *)self->_selection start];
        if (v38)
        {
          [(TSWPStorage *)v38 paragraphEnumeratorAtCharIndex:start styleProvider:0];
        }

        else
        {
          memset(&v122, 0, sizeof(v122));
        }

        v96 = TSWPParagraphEnumerator::paragraphLevel(&v122);
        v32 = v29;
        while (!TSWPParagraphEnumerator::isLastParagraph(&v122))
        {
          TSWPParagraphEnumerator::operator++(&v122);
          if (TSWPParagraphEnumerator::paragraphLevel(&v122) <= v96 || !TSWPParagraphEnumerator::paragraphHasListLabel(&v122))
          {
            break;
          }

          v126.location = TSWPParagraphEnumerator::paragraphTextRange(&v122);
          v126.length = v97;
          *&v125.location = width;
          v125.length = length;
          v98 = NSUnionRange(v125, v126);
          width = *&v98.location;
          length = v98.length;
        }

        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v122);
        v45 = 2;
      }

      else if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v45 = 8;
        v32 = v29;
        width = v119;
      }

      else
      {
        v32 = v29;
        *&v57 = COERCE_DOUBLE([(TSWPFilteredStorage *)v32 rangeForSelectionAtCharIndex:[(TSWPFilteredStorage *)v29 charIndexMappedFromStorage:v35] caretIndex:[(TSWPFilteredStorage *)v32 charIndexMappedFromStorage:v34]]);
        v59 = v58;
        width = COERCE_DOUBLE([(TSWPFilteredStorage *)v32 charRangeMappedToStorage:v57, v58]);
        if (v59 == 1)
        {
          v60 = [(TSWPFilteredStorage *)v32 characterAtIndex:v57];
          v45 = 0;
          if (v60 == 65532)
          {
            width = *&v57;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      if (width == NAN)
      {
        v31 = 7;
      }

      else
      {
        v31 = v45;
      }

      if (width == NAN)
      {
        width = rect.origin.x;
      }
    }

    else
    {
      v32 = v29;
      width = v119;
    }

    goto LABEL_120;
  }

  v40 = v30;
  v41 = rect.origin.x;
  if (labelsCopy)
  {
    v42 = v30;
    v43 = [(TSWPEditingController *)self p_hitListLabelAtCharIndex:*&rect.origin.x atNaturalPoint:v18 inRep:x, y];
    v40 = v42;
    if (v43)
    {
      v44 = self->_storage;
      if (v44)
      {
        [(TSWPStorage *)v44 paragraphEnumeratorAtCharIndex:v24 styleProvider:0];
      }

      else
      {
        memset(&v122, 0, sizeof(v122));
      }

      width = COERCE_DOUBLE(TSWPParagraphEnumerator::paragraphTextRange(&v122));
      v65 = v64;
      v66 = v64 != 0;
      selection = [(TSWPEditingController *)self selection];
      v32 = v29;
      if (v65)
      {
        v68 = selection;
        if ([(TSWPSelection *)selection isValid])
        {
          if ([(TSWPSelection *)v68 type]== 2)
          {
            range = [(TSWPSelection *)v68 range];
            if (range <= *&width && range + v70 >= *&width + v65)
            {
              width = COERCE_DOUBLE([(TSWPSelection *)v68 range]);
            }
          }
        }
      }

      v31 = (2 * v66);
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v122);
      goto LABEL_120;
    }
  }

  v32 = v29;
  v46 = v40;
  v47 = [(TSWPFilteredStorage *)v29 smartFieldAtCharIndex:v40 attributeKind:6 effectiveRange:&v122];
  v122.var0 = [(TSWPFilteredStorage *)v29 charRangeMappedToStorage:v122.var0, v122.var1];
  v122.var1 = v48;
  if (precise || v47)
  {
    objc_opt_class();
    if (TSUDynamicCast())
    {
      linkCopy = link;
    }

    else
    {
      linkCopy = 1;
    }

    if (linkCopy)
    {
      v31 = 7;
    }

    else
    {
      v31 = 0;
    }

    if (linkCopy)
    {
      width = rect.origin.x;
    }

    else
    {
      width = *&v122.var0;
    }
  }

  else
  {
    if (v123 == 1 && v24 > [(TSWPStorage *)self->_storage selectionRangeMinForCharIndex:v24])
    {
      v49 = [(TSWPFilteredStorage *)v29 whiteSpaceRangeAtCharIndex:[(TSWPFilteredStorage *)v29 previousCharacterIndex:[(TSWPFilteredStorage *)v29 charIndexMappedFromStorage:v24]] includingBreaks:0];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = v49;
        v41 = COERCE_DOUBLE([(TSWPFilteredStorage *)v29 charIndexMappedToStorage:v49]);
        v124[0] = 1;
        v46 = v50;
        v24 = *&v41;
      }
    }

    [(TSWPEditingController *)self dictationInterpretationsAtCharIndex:v24 outRange:&rect.size];
    *&v51 = COERCE_DOUBLE([v18 rangeOfMisspelledWordAtCharIndex:v24]);
    if (*&rect.size.width != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![(TSWPSelection *)self->_selection isValid])
      {
        v31 = 5;
        width = rect.size.width;
        goto LABEL_120;
      }

      range2 = [(TSWPSelection *)self->_selection range];
      width = rect.size.width;
      v31 = 5;
      if (range2 != *&rect.size.width || v63 != *&rect.size.height)
      {
        goto LABEL_120;
      }
    }

    if (*&v51 == NAN)
    {
      if ([(TSWPSelection *)self->_selection isValid]&& ([(TSWPSelection *)self->_selection type]== 3 || [(TSWPSelection *)self->_selection type]== 5))
      {
        if ((v52 = [(TSWPSelection *)self->_selection range], v24 >= v52) && v24 - v52 < v53 || (v54 = [(TSWPSelection *)self->_selection range], v54 + v55 == v24))
        {
          width = COERCE_DOUBLE([(TSWPSelection *)self->_selection range]);
          v31 = 0;
          goto LABEL_120;
        }
      }

      v71 = [(TSWPFilteredStorage *)v29 wordAtCharIndex:[(TSWPFilteredStorage *)v29 scanBackwardForWordAtCharIndex:v46] includePreviousWord:0];
      if (v71 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v71 = [(TSWPFilteredStorage *)v29 whiteSpaceRangeAtCharIndex:v46 includingBreaks:0];
      }

      v73 = v71;
      *&v74 = v41;
      if (v71 != 0x7FFFFFFFFFFFFFFFLL && v72)
      {
        v75 = [(TSWPFilteredStorage *)v32 charRangeMappedToStorage:v71, v72];
        v74 = v76 + v75 - 1;
        [v18 caretRectForCharIndex:v75 leadingEdge:1 caretAffinity:0];
        v120 = v78;
        rect.origin.x = v77;
        v80 = v79;
        v117 = v81;
        v118 = v79;
        v82 = v78;
        [v18 caretRectForCharIndex:v74 leadingEdge:0 caretAffinity:0];
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v127.origin.x = rect.origin.x;
        v127.origin.y = v80;
        v127.size.width = v82;
        v127.size.height = v117;
        MidX = CGRectGetMidX(v127);
        v116 = v86;
        v128.origin.x = v84;
        v128.origin.y = v86;
        v115 = v88;
        v128.size.width = v88;
        v92 = v90;
        v128.size.height = v90;
        v93 = CGRectGetMidX(v128);
        v94 = v93;
        if (MidX <= v93)
        {
          v95 = v93;
        }

        else
        {
          v95 = MidX;
        }

        v114 = MidX;
        if (MidX > v93)
        {
          MidX = v93;
        }

        v129.size.width = v120;
        v129.origin.x = rect.origin.x;
        v129.origin.y = v118;
        v129.size.height = v117;
        if (CGRectIsNull(v129))
        {
          goto LABEL_90;
        }

        v130.origin.x = v84;
        v130.origin.y = v116;
        v130.size.width = v115;
        v130.size.height = v92;
        if (CGRectIsNull(v130))
        {
          goto LABEL_106;
        }

        if (vabdd_f64(v118, v116) >= 0.00999999978)
        {
          v131.origin.x = rect.origin.x;
          v131.origin.y = v118;
          v131.size.width = v120;
          v131.size.height = v117;
          v99 = vabdd_f64(CGRectGetMinX(v131), y);
          v132.origin.x = rect.origin.x;
          v132.origin.y = v118;
          v132.size.width = v120;
          v132.size.height = v117;
          v100 = vabdd_f64(CGRectGetMaxX(v132), y);
          if (v100 < v99)
          {
            v99 = v100;
          }

          v133.origin.x = v84;
          v133.origin.y = v116;
          v133.size.width = v115;
          v133.size.height = v92;
          if (v99 <= vabdd_f64(CGRectGetMinY(v133), y) && (v134.origin.x = v84, v134.origin.y = v116, v134.size.width = v115, v134.size.height = v92, v99 <= vabdd_f64(CGRectGetMaxY(v134), y)))
          {
            v101 = 1;
            v74 = v75;
          }

          else
          {
            v101 = 0;
          }

          v124[0] = v101;
          goto LABEL_117;
        }

        if (v114 > v94 != v95 - x >= x - MidX)
        {
LABEL_106:
          v124[0] = 1;
          v74 = v75;
        }

        else
        {
LABEL_90:
          v124[0] = 0;
        }
      }

LABEL_117:
      if (*&v74 == NAN)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_selectionForRep:point:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:selectsEntireLink:]"];
        [currentHandler2 handleFailureInFunction:v103 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5465, @"invalid charIndex for visual selection"}];
        width = NAN;
        v31 = 7;
      }

      else
      {
        v31 = 7;
        width = *&v74;
      }

      goto LABEL_120;
    }

    v31 = 3;
    width = *&v51;
  }

LABEL_120:
  [(TSWPStorage *)self->_storage selectionRangeForCharIndex:*&width];
  v104 = NSIntersectionRangeInclusive();
  v106 = v105;
  if (v104 != [(TSWPStorage *)self->_storage length]|| v106)
  {
    v107 = v124[0];
  }

  else
  {
    v107 = 1;
  }

  v108 = MEMORY[0x277D6C268];
  v124[0] = v107 & 1;
  v109 = [TSWPSelection alloc];
  LOBYTE(v113) = v124[0];
  v110 = [(TSWPSelection *)v109 initWithType:v31 range:v104 styleInsertionBehavior:v106 caretAffinity:0 smartFieldRange:v123 leadingEdge:*v108 storage:v108[1], v113, self->_storage];
  v111 = v110;
  v23 = [(TSWPEditingController *)self logicalToVisualSelection:[(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v110]];

  return v23;
}

- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_storage == source)
  {
    if ([(TSWPSelection *)[(TSWPEditingController *)self selection] isValid])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [changes countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(changes);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            if ([v10 kind] == 1)
            {
              [v10 details];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [objc_msgSend(v10 "details")];
                range = [v11 range];
                v14 = v13;
                if ([objc_msgSend(objc_msgSend(v10 "details")])
                {
                  [(TSWPEditingController *)self setSelection:v11];
                }

                else
                {
                  range2 = [(TSWPStorage *)self->_storage range];
                  v17 = v16;
                  range3 = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
                  if (range2 <= range3 && range2 + v17 >= range3 + v19)
                  {
                    if ([(TSWPSelection *)[(TSWPEditingController *)self selection] intersectsRange:range, v14]|| [(TSWPSelection *)[(TSWPEditingController *)self selection] isInsertionPoint]&& (v20 = [(TSWPSelection *)[(TSWPEditingController *)self selection] start], v20 == [(TSWPStorage *)self->_storage length]) && range + v14 == [(TSWPStorage *)self->_storage length])
                    {
                      [(TSWPEditingController *)self p_postSelectionContentsChangedNotification];
                      return;
                    }
                  }
                }
              }
            }
          }

          v7 = [changes countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  interactiveCanvasController = self->_interactiveCanvasController;
  [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v7 = v6;
  v9 = v8;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  knobTracker = self->_knobTracker;
  if (knobTracker)
  {
    x = self->_autoscrollPoint.x;
    y = self->_autoscrollPoint.y;

    [(TSWPTextKnobTracker *)knobTracker updateAfterAutoscroll:autoscroll atPoint:x, y];
  }

  else
  {
    v13 = +[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier];
    [v13 setAutoscrollDirections:{objc_msgSend(autoscroll, "directions")}];
    if ([(TSWPSelection *)[(TSWPEditingController *)self selection] isInsertionPoint])
    {
      [(TSWPEditingController *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v7, v9];
    }

    [v13 postAutoscrollPoint:{v7, v9}];
  }
}

- (void)autoscrollWillNotStart
{
  [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
  knobTracker = self->_knobTracker;

  [(TSWPTextKnobTracker *)knobTracker autoscrollWillNotStart];
}

- (id)pasteboardController
{
  documentRoot = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController documentRoot];

  return [(TSKDocumentRoot *)documentRoot pasteboardController];
}

- (_NSRange)smartDeletionSelection:(id)selection isVisual:(BOOL *)visual
{
  range = [selection range];
  v9 = v8;
  if (visual)
  {
    *visual = [selection isVisual];
  }

  if ([selection visualRangeCount] <= 1 && objc_msgSend(selection, "isRange"))
  {
    range = [selection superRange];
    v9 = v10;
    if (visual)
    {
      *visual = 0;
    }

    v11 = [(TSWPStorage *)self->_storage length];
    v36 = 0;
    v37 = 0;
    [(TSWPStorage *)self->_storage smartFieldAtCharIndex:range attributeKind:6 effectiveRange:&v36];
    v12 = range + v9;
    if (range)
    {
      v13 = v36 == range;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    v15 = v37 + v36;
    if (v37 + v36 < v12)
    {
      [(TSWPStorage *)self->_storage smartFieldAtCharIndex:v12 - 1 attributeKind:6 effectiveRange:&v36];
      v15 = v37 + v36;
    }

    v17 = v15 == v12 || v12 == v11;
    if (v14)
    {
      v18 = [(TSWPStorage *)self->_storage characterAtIndex:range - 1];
      if ([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")])
      {
        v19 = 0;
        v20 = v18 == 32;
        v21 = 1;
        if (v17)
        {
          goto LABEL_36;
        }

LABEL_38:
        v29 = [(TSWPStorage *)self->_storage characterAtIndex:range + v9];
        if (([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")] & 1) == 0)
        {
          if ((v20 & [objc_msgSend(MEMORY[0x277CCA900] "postSmartSet")]) != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_46;
        }

        if (v29 == 32)
        {
          v30 = v14;
        }

        else
        {
          v30 = 1;
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_47;
        }

        if (v19)
        {
          v9 += (v29 == 32) & ~v21;
          goto LABEL_52;
        }

        if (v29 == 32)
        {
LABEL_47:
          ++v9;
          goto LABEL_52;
        }

LABEL_36:
        if (!v20)
        {
          goto LABEL_52;
        }

LABEL_46:
        --range;
        goto LABEL_47;
      }

      v28 = [objc_msgSend(MEMORY[0x277CCA900] "preSmartSet")];
      v20 = 0;
      v21 = v28 ^ 1;
    }

    else
    {
      v20 = 0;
      v21 = 1;
    }

    v19 = 1;
    if (v17)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([selection isRange] && objc_msgSend(selection, "isVisual") && -[TSWPEditingController textStorage:hasWhitespaceBoundedWordAtSelection:](self, "textStorage:hasWhitespaceBoundedWordAtSelection:", -[TSWPEditingController storage](self, "storage"), selection))
  {
    LOBYTE(v36) = 0;
    v22 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:[(TSWPEditingController *)self p_leftEdgeForSelection:selection withLeadingEdge:&v36] inDirection:3];
    if (IsWhitespaceCharacter([(TSWPStorage *)[(TSWPEditingController *)self storage] characterAtIndex:v22]))
    {
      superRange = [selection superRange];
      if (v22 >= superRange && v22 - superRange < v24)
      {
        goto LABEL_49;
      }
    }

    v25 = [(TSWPEditingController *)self p_rightEdgeForSelection:selection withLeadingEdge:&v36];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController smartDeletionSelection:isVisual:]"];
      [currentHandler handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5914, @"Invalid index for right edge of selection"}];
      goto LABEL_50;
    }

    v22 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v25 inDirection:2];
    if (IsWhitespaceCharacter([(TSWPStorage *)[(TSWPEditingController *)self storage] characterAtIndex:v22]))
    {
LABEL_49:
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        range = [(TSWPEditingController *)self p_adjustVisualSelection:selection withOtherSelection:[(TSWPEditingController *)self logicalToVisualSelection:[TSWPSelection selectionWithRange:v22, 1]]];
        v9 = v35;
        if (!visual)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

LABEL_50:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController smartDeletionSelection:isVisual:]"];
    [currentHandler2 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5927, @"A spaceCharIndexToRemove to remove should always be found"}];
    if (!visual)
    {
      goto LABEL_52;
    }

LABEL_51:
    *visual = 1;
  }

LABEL_52:
  v33 = range;
  v34 = v9;
  result.length = v34;
  result.location = v33;
  return result;
}

- (CGRect)overrideCaretRectForSelection:(id)selection
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)textStorage:(id)storage hasWhitespaceBoundedWordAtSelection:(id)selection
{
  v30 = 0;
  if ([selection isVisual])
  {
    v7 = [(TSWPEditingController *)self p_leftEdgeForSelection:selection withLeadingEdge:&v30];
    v8 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v7 inDirection:3];
    if ((IsWhitespaceCharacter([storage characterAtIndex:v7]) & 1) != 0 || (v8 == objc_msgSend(storage, "length") || IsWhitespaceCharacter(objc_msgSend(storage, "characterAtIndex:", v8))) && TSWPCJKLanguageForInputLanguageString(objc_msgSend(storage, "languageForTextRange:useStringTokenizer:useCreationLanguage:", v7, 1, 1, 0)) == 6)
    {
      v9 = [(TSWPEditingController *)self p_rightEdgeForSelection:selection withLeadingEdge:&v30];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textStorage:hasWhitespaceBoundedWordAtSelection:]"];
        [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5987, @"Invalid index for right edge of selection"}];
LABEL_15:
        LOBYTE(v21) = 0;
        v22 = 1;
        return v21 & v22;
      }

      v19 = v9;
      v20 = [storage characterAtIndex:v9];
      if (IsParagraphBreakingCharacter(v20))
      {
        goto LABEL_15;
      }

      if (IsWhitespaceCharacter(v20))
      {
        goto LABEL_26;
      }

      v23 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v19 inDirection:2];
      if (v23 != [storage length] && !IsWhitespaceCharacter(objc_msgSend(storage, "characterAtIndex:", v23)))
      {
        goto LABEL_15;
      }

      v24 = v19 <= v23 ? v23 : v19;
      v25 = v19 >= v23 ? v23 : v19;
      v22 = 1;
      if (TSWPCJKLanguageForInputLanguageString([storage languageForTextRange:v25 useStringTokenizer:v24 - v25 useCreationLanguage:{1, 0}]) == 6)
      {
LABEL_26:
        range = [selection range];
        storageCopy2 = storage;
        v18 = v26;
        goto LABEL_27;
      }

LABEL_35:
      LOBYTE(v21) = 0;
      return v21 & v22;
    }

LABEL_30:
    LOBYTE(v21) = 0;
    v22 = 0;
    return v21 & v22;
  }

  if (![selection isValid])
  {
    goto LABEL_30;
  }

  if (![selection isRange])
  {
    goto LABEL_30;
  }

  range2 = [selection range];
  v14 = v13;
  if (([objc_msgSend(MEMORY[0x277CCA900] "preSmartSet")] & 1) == 0 && (objc_msgSend(storage, "wordAtCharIndex:includePreviousWord:", range2, 0) != range2 || TSWPCJKLanguageForInputLanguageString(objc_msgSend(storage, "languageForTextRange:useStringTokenizer:useCreationLanguage:", range2, 1, 1, 0)) != 6))
  {
    goto LABEL_30;
  }

  v15 = [storage characterAtIndex:range2 + v14 - 1];
  if (IsParagraphBreakingCharacter(v15))
  {
    goto LABEL_15;
  }

  if ([objc_msgSend(MEMORY[0x277CCA900] "postSmartSet")])
  {
LABEL_13:
    storageCopy2 = storage;
    range = range2;
    v18 = v14;
LABEL_27:
    v21 = [storageCopy2 isAllWhitespaceInRange:{range, v18}] ^ 1;
    v22 = v21;
    return v21 & v22;
  }

  v22 = 1;
  v28 = [storage wordAtCharIndex:range2 + v14 includePreviousWord:1];
  LOBYTE(v21) = 0;
  if (v29 && v28 + v29 == range2 + v14)
  {
    v22 = 1;
    if (TSWPCJKLanguageForInputLanguageString([storage languageForTextRange:range2 + v14 - 1 useStringTokenizer:1 useCreationLanguage:{1, 0}]) != 6)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  return v21 & v22;
}

- (BOOL)p_selectionIsSimpleInsertionPoint
{
  isInsertionPoint = [(TSWPSelection *)self->_selection isInsertionPoint];
  if (isInsertionPoint)
  {
    LOBYTE(isInsertionPoint) = [(TSWPSelection *)self->_selection type]!= 3 && [(TSWPSelection *)self->_selection type]!= 5 && [(TSWPSelection *)self->_selection type]!= 4 && [(TSWPStorage *)self->_storage length]!= 0;
  }

  return isInsertionPoint;
}

- (BOOL)p_canSelectAllWithSender:(id)sender
{
  if ([TSDCanvasEditor physicalKeyboardIsSender:sender])
  {
    if ([(TSWPSelection *)self->_selection isValid])
    {
      range = [(TSWPSelection *)self->_selection range];
      v6 = v5;
      if (range != [(TSWPStorage *)self->_storage range]|| v6 != v7)
      {
        return 1;
      }

      v10 = [(TSWPSelection *)self->_selection type]== 0;
    }

    else
    {
      v10 = [(TSWPStorage *)self->_storage length]== 0;
    }

    return !v10;
  }

  else
  {

    return [(TSWPEditingController *)self p_selectionIsSimpleInsertionPoint];
  }
}

- (BOOL)p_canInsertBreak
{
  if ([(TSWPEditingController *)self p_canEditTextString]&& [(TSWPSelection *)self->_selection isValid])
  {
    [(TSWPSelection *)self->_selection isInsertionPoint];
  }

  return 1;
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  v7 = [TSDCanvasEditor physicalKeyboardIsSender:sender];
  if ([(TSWPEditingController *)self p_canEditTextString])
  {
    isValid = [(TSWPSelection *)self->_selection isValid];
    if (sel_deleteObject_ == action)
    {
      if (!isValid)
      {
        return -1;
      }

LABEL_25:
      if ([(TSWPSelection *)self->_selection type]!= 4)
      {
        isValid = [(TSWPSelection *)self->_selection isRange];
LABEL_38:
        v11 = !isValid;
LABEL_39:
        if (v11)
        {
          return -1;
        }

        else
        {
          return 1;
        }
      }

      return -1;
    }
  }

  else
  {
    if (sel_deleteObject_ == action)
    {
      return -1;
    }

    isValid = 0;
  }

  if (sel_delete_ == action)
  {
    if (!isValid || !v7)
    {
      return -1;
    }

    goto LABEL_25;
  }

  if (sel_copy_ == action)
  {
    if (![(TSWPSelection *)self->_selection isValid]|| [(TSWPSelection *)self->_selection type]== 3 || [(TSWPSelection *)self->_selection type]== 5 || [(TSWPSelection *)self->_selection type]== 4 || [(TSWPSelection *)self->_selection isInsertionPoint])
    {
      v10 = 0;
    }

    else
    {
      v10 = ![(TSWPEditingController *)self pIsSelectionPlaceHolderText];
    }

    v11 = (v7 & v10) == 0;
    goto LABEL_39;
  }

  if (sel_select_ == action)
  {
    if (!v7)
    {
      return -1;
    }

LABEL_35:
    isValid = [(TSWPEditingController *)self p_selectionIsSimpleInsertionPoint];
    goto LABEL_38;
  }

  if (sel_customSelect_ == action)
  {
    goto LABEL_35;
  }

  if (sel_selectAll_ == action)
  {
    if (!v7)
    {
      return -1;
    }

LABEL_37:
    isValid = [(TSWPEditingController *)self p_canSelectAllWithSender:sender];
    goto LABEL_38;
  }

  if (sel_customSelectAll_ == action)
  {
    goto LABEL_37;
  }

  if (sel_replaceWithSuggestion0_ == action || sel_replaceWithSuggestion1_ == action || sel_replaceWithSuggestion2_ == action || sel_replaceWithSuggestion3_ == action || sel_replaceWithSuggestion4_ == action || sel_noReplacementsFound_ == action)
  {
    goto LABEL_38;
  }

  if (sel_definitionAction_ == action)
  {
    storage = self->_storage;
    range = [(TSWPSelection *)self->_selection range];
    if ([(TSWPStorage *)storage hasSmartFieldsInRange:range, v14])
    {
      return -1;
    }

    if (![(TSWPSelection *)self->_selection isRange])
    {
      return -1;
    }

    v15 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:[(TSWPSelection *)self->_selection range] backward:0];
    v17 = v16;
    range2 = [(TSWPSelection *)self->_selection range];
    if (v15 > range2)
    {
      return -1;
    }

    if (v15 + v17 >= range2 + v19)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (sel_endEditingAndSelectParent_ == action)
  {
    return ([(TSWPStorage *)self->_storage wpKind]& 0xFFFFFFFE) == 2;
  }

  else
  {

    return [(TSWPEditingController *)self p_canPerformOptInEditorAction:action withSender:sender];
  }
}

- (id)styleProvider
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v3 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = TSWPStorageStyleProvider;
  }

  storage = self->_storage;

  return [(__objc2_class *)v4 styleProviderForStorage:storage];
}

- (id)stringFromSelection
{
  storage = self->_storage;
  superRange = [(TSWPSelection *)self->_selection superRange];
  v6 = v5;
  currentLayoutParent = [(TSWPEditingController *)self currentLayoutParent];

  return [(TSWPStorage *)storage stringEquivalentFromRange:superRange withLayoutParent:v6, currentLayoutParent];
}

- (void)copy:(id)copy
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(TSWPSelection *)self->_selection isRange])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(TSWPStorage *)self->_storage stylesheet])
    {
      range = [(TSWPSelection *)self->_selection range];
      v7 = [(TSWPStorage *)self->_storage nsAttributedSubstringFromRange:range scale:v6, 1.0];
      v8 = [v7 tsu_RTFFromRange:0 documentAttributes:{objc_msgSend(v7, "length"), 0}];
      if (v8)
      {
        [v4 setObject:v8 forKey:*MEMORY[0x277CC2150]];
      }
    }

    v9 = [(TSWPStorage *)[(TSWPEditingController *)self storage] substringWithSelection:[(TSWPEditingController *)self selection]];
    [v4 setObject:v9 forKey:*MEMORY[0x277CC2198]];
    v11[0] = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [objc_msgSend(MEMORY[0x277D75810] "generalPasteboard")];
  }
}

- (BOOL)selectionIsOnEmptyParagraph
{
  isValid = [(TSWPSelection *)self->_selection isValid];
  if (isValid)
  {
    [(TSWPSelection *)self->_selection range];
    if (v4)
    {
      LOBYTE(isValid) = 0;
    }

    else
    {
      v5 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)self->_selection start]];
      LOBYTE(isValid) = v6 == (v5 + v6 != [(TSWPStorage *)self->_storage length]);
    }
  }

  return isValid;
}

- (BOOL)canSetWritingDirection:(int)direction
{
  p_canEditTextString = [(TSWPEditingController *)self p_canEditTextString];
  if (!p_canEditTextString)
  {
    return p_canEditTextString;
  }

  p_canEditTextString = [(TSWPSelection *)self->_selection isValid];
  if (!p_canEditTextString)
  {
    return p_canEditTextString;
  }

  p_canEditTextString = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  if (!p_canEditTextString)
  {
    return p_canEditTextString;
  }

  if ([(TSWPSelection *)self->_selection type]== 3 || [(TSWPSelection *)self->_selection type]== 5 || [(TSWPSelection *)self->_selection type]== 4)
  {
    goto LABEL_14;
  }

  if ((direction + 1) > 2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController canSetWritingDirection:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7859, @"Unknown writing direction."}];
    goto LABEL_14;
  }

  start = [(TSWPSelection *)self->_selection start];
  if (start > [(TSWPStorage *)self->_storage length])
  {
LABEL_14:
    LOBYTE(p_canEditTextString) = 0;
    return p_canEditTextString;
  }

  p_canEditTextString = [TSWPResolvePropertyForStyles(0 -[TSWPStorage paragraphStyleAtCharIndex:"paragraphStyleAtCharIndex:effectiveRange:" effectiveRange:{start, 0), 44, 0), "intValue"}](self->_storage];
  if (p_canEditTextString == -1)
  {
    p_canEditTextString = [(TSWPStorage *)self->_storage writingDirectionForParagraphAtCharIndex:start];
    if (p_canEditTextString == -1)
    {
      p_canEditTextString = [-[TSWPStorage documentRoot](self->_storage "documentRoot")];
    }
  }

  LOBYTE(p_canEditTextString) = p_canEditTextString != direction;
  return p_canEditTextString;
}

- (int64_t)writingDirectionForCharIndex:(unint64_t)index
{
  if ([(TSWPStorage *)self->_storage length]< index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController writingDirectionForCharIndex:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7956, @"Bad char index into storage."}];
  }

  if ([(TSWPStorage *)self->_storage length]>= index)
  {
    v7 = [(TSWPStorage *)self->_storage writingDirectionForParagraphAtCharIndex:index]+ 1;
    if (v7 < 3)
    {
      return v7 - 1;
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController writingDirectionForCharIndex:]"];
    [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7973, @"Unknown writing direction."}];
  }

  return -1;
}

- (void)referenceLibrarayViewControllerWasDismissed:(id)dismissed
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {

    self->_definitionViewController = 0;
    self->_definitionPopoverController = 0;
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:0];
  }
}

- (void)popoverControllerDidDismissPopoverBasedViewController:(id)controller
{
  selfCopy = self;
}

- (void)select:(id)select
{
  v4 = [(TSWPStorage *)self->_storage rangeForSelectionWithInsertionSelection:self->_selection];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(TSWPSelection *)self->_selection isValid]&& [(TSWPSelection *)self->_selection start])
    {
      v6 = [(TSWPSelection *)self->_selection start]- 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
  }

  else
  {
    v6 = v4;
    v7 = v5;
  }

  v8 = [[TSWPSelection alloc] initWithRange:v6, v7];
  [(TSWPEditingController *)self setSelection:[(TSWPEditingController *)self logicalToVisualSelection:[(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v8]] withFlags:65792];
}

- (void)p_addInsertItemsIntoMenu:(id)menu
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  TSUProtocolCast();
  if (TSUPhoneUI() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    return;
  }

  acceptsTabs = [(TSWPEditingController *)self acceptsTabs];
  v6 = [(TSWPEditingController *)self acceptsLineBreaks]+ acceptsTabs;
  acceptsColumnBreaks = [(TSWPEditingController *)self acceptsColumnBreaks];
  v8 = v6 + acceptsColumnBreaks + [(TSWPEditingController *)self acceptsPageBreaks];
  if (v8 >= 2)
  {
    v9 = MEMORY[0x277D75728];
    v10 = [TSWPBundle() localizedStringForKey:@"Insert" value:&stru_287D36338 table:@"TSText"];
    v11 = sel_showInsertBreak_;
LABEL_5:
    v12 = [v9 menuItemWithTitle:v10 action:v11];

    [menu addObject:v12];
    return;
  }

  if (v8 == 1)
  {
    if ([(TSWPEditingController *)self acceptsTabs])
    {
      [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Tab", &stru_287D36338, @"TSTextPlatform", sel_insertTab_)}];
    }

    if ([(TSWPEditingController *)self acceptsLineBreaks])
    {
      [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Line Break", &stru_287D36338, @"TSTextPlatform", sel_insertLineBreak_)}];
    }

    if ([(TSWPEditingController *)self acceptsColumnBreaks])
    {
      [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Column Break", &stru_287D36338, @"TSTextPlatform", sel_insertColumnBreak_)}];
    }

    if ([(TSWPEditingController *)self acceptsPageBreaks])
    {
      v9 = MEMORY[0x277D75728];
      v10 = [TSWPBundle() localizedStringForKey:@"Page Break" value:&stru_287D36338 table:@"TSTextPlatform"];
      v11 = sel_insertPageBreak_;
      goto LABEL_5;
    }
  }
}

- (void)p_addCommonEditItemsIntoMenu:(id)menu
{
  [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Select", &stru_287D36338, @"TSTextPlatform", sel_customSelect_)}];
  [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Select All", &stru_287D36338, @"TSTextPlatform", sel_customSelectAll_)}];
  [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Cut", &stru_287D36338, @"TSTextPlatform", sel_cutObject_)}];
  [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Copy", &stru_287D36338, @"TSTextPlatform", sel_copyObject_)}];
  [menu addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Paste", &stru_287D36338, @"TSTextPlatform", sel_pasteObject_)}];
  v4 = [MEMORY[0x277D75728] menuItemWithTitle:objc_msgSend(TSWPBundle() action:{"localizedStringForKey:value:table:", @"Delete", &stru_287D36338, @"TSTextPlatform", sel_deleteObject_}];

  [menu addObject:v4];
}

- (id)extraMenuItems
{
  array = [MEMORY[0x277CBEB18] array];

  self->_suggestions = 0;
  if (![(TSWPSelection *)self->_selection isValid]|| [(TSWPSelection *)self->_selection type]!= 3 && [(TSWPSelection *)self->_selection type]!= 5 || [(TSWPEditingController *)self pIsSelectionPlaceHolderText])
  {
    [(TSWPStorage *)[(TSWPEditingController *)self storage] wpKind];
    [(TSWPEditingController *)self p_addCommonEditItemsIntoMenu:array];
  }

  return array;
}

- (void)definitionAction:(id)action
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    storage = self->_storage;
    range = [(TSWPSelection *)self->_selection range];
    v7 = [(TSWPStorage *)storage substringWithRange:range, v6];

    self->_definitionViewController = 0;
    v8 = [(UIReferenceLibraryViewController *)[TSWPReferenceLibraryViewController alloc] initWithTerm:v7];
    self->_definitionViewController = v8;
    [(TSWPReferenceLibraryViewController *)v8 setDelegate:self];
    if (TSUPhoneUI())
    {
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:1];
      p_viewControllerForPresenting = [(TSWPEditingController *)self p_viewControllerForPresenting];
      if (!p_viewControllerForPresenting)
      {
        p_viewControllerForPresenting = [objc_msgSend(objc_msgSend(-[TSWPEditingController p_documentViewController](self "p_documentViewController")];
      }

      definitionViewController = self->_definitionViewController;

      [p_viewControllerForPresenting presentViewController:definitionViewController animated:1 completion:0];
    }

    else
    {

      self->_definitionPopoverController = 0;
      v11 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_definitionViewController];
      self->_definitionPopoverController = v11;
      range2 = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
      [(TSWPEditingController *)self p_firstRectForRange:range2 actualRange:v13, 0];
      v21 = CGRectIntegral(v20);
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      v18 = [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];

      [(UIPopoverController *)v11 presentPopoverFromRect:v18 inView:15 permittedArrowDirections:1 animated:x, y, width, height];
    }
  }
}

- (void)styleAction:(id)action
{
  v4 = [TSWPSelection alloc];
  superRange = [(TSWPSelection *)self->_selection superRange];
  v7 = [(TSWPSelection *)v4 initWithType:4 range:superRange styleInsertionBehavior:v6 caretAffinity:[(TSWPSelection *)self->_selection styleInsertionBehavior], [(TSWPSelection *)self->_selection caretAffinity]];
  [(TSWPEditingController *)self setSelection:v7];

  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutInvalidated];
  self->_showNextEditMenu = 1;
}

- (void)p_switchToReplaceSelection
{
  if (![(TSWPSelection *)self->_selection isRange])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_switchToReplaceSelection]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 8589, @"shouldn't change an insertion point to a replacement selection"}];
  }

  v5 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:[(TSWPSelection *)self->_selection range] backward:0];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [[TSWPSelection alloc] initWithType:3 range:v5 styleInsertionBehavior:v6 caretAffinity:[(TSWPSelection *)self->_selection styleInsertionBehavior], [(TSWPSelection *)self->_selection caretAffinity]];
    [(TSWPEditingController *)self setSelection:v7];
  }
}

- (void)selectAll:(id)all
{
  v5 = [TSWPSelection alloc];
  storage = self->_storage;
  if ([(TSWPSelection *)self->_selection isValid])
  {
    start = [(TSWPSelection *)self->_selection start];
  }

  else
  {
    start = 0;
  }

  v8 = [(TSWPStorage *)storage selectionRangeForCharIndex:start];
  v11 = [(TSWPSelection *)v5 initWithRange:v8, v9];
  if ([TSDCanvasEditor physicalKeyboardIsSender:all])
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x10000;
  }

  [(TSWPEditingController *)self setSelection:v11 withFlags:v10];
}

- (id)currentFontColor
{
  v7[3] = *MEMORY[0x277D85DE8];
  if ([(TSWPSelection *)self->_selection isValid])
  {
    start = [(TSWPSelection *)self->_selection start];
  }

  else
  {
    start = 0;
  }

  v4 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:start left:[(TSWPSelection *)self->_selection isInsertionPoint] effectiveRange:0];
  v5 = [(TSWPStorage *)self->_storage paragraphStyleAtCharIndex:start effectiveRange:0];
  v7[0] = self->_insertionStyle;
  v7[1] = v4;
  v7[2] = v5;
  return TSWPResolvePropertyForStyles(v7, 3uLL, 18, 0);
}

- (BOOL)canHighlightCurrentSelection
{
  p_canEditTextString = [(TSWPEditingController *)self p_canEditTextString];
  v4 = [(TSWPEditingController *)self canShowCommentForCurrentSelectionGetHighlight:0 range:0];
  if ([(TSWPSelection *)self->_selection isValid])
  {
    [-[TSWPEditingController p_highlightSelectionForSelection:](self p_highlightSelectionForSelection:{self->_selection), "range"}];
    v6 = v5 != 0 && !v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = p_canEditTextString & v6 & [(TSWPStorage *)[(TSWPEditingController *)self storage] highlightsAllowed];
  return !self->_hostEditor && v7;
}

- (BOOL)canShowCommentForCurrentSelectionGetHighlight:(id *)highlight range:(_NSRange *)range
{
  LODWORD(v7) = [(TSWPEditingController *)self p_canEditTextString];
  if (v7)
  {
    LODWORD(v7) = [(TSWPSelection *)self->_selection isValid];
    if (v7)
    {
      LODWORD(v7) = [(TSWPStorage *)[(TSWPEditingController *)self storage] highlightsAllowed];
      if (v7)
      {
        storage = self->_storage;
        superRange = [(TSWPSelection *)self->_selection superRange];
        v7 = [(TSWPStorage *)storage firstHighlightForSelectionRange:superRange outRange:v10, &v16];
        if (v7)
        {
          v11 = v7;
          v12 = v16;
          superRange2 = [(TSWPSelection *)self->_selection superRange];
          if (v12.location <= superRange2 && v12.length + v12.location >= superRange2 + v14)
          {
            if (highlight)
            {
              *highlight = v11;
            }

            if (range)
            {
              *range = v16;
            }

            LOBYTE(v7) = 1;
          }

          else
          {
            LOBYTE(v7) = 0;
          }
        }
      }
    }
  }

  return v7;
}

- (BOOL)canRemoveHighlightForCurrentSelection
{
  p_canEditTextString = [(TSWPEditingController *)self p_canEditTextString];
  if (p_canEditTextString)
  {
    p_canEditTextString = [(TSWPSelection *)self->_selection isValid];
    if (p_canEditTextString)
    {
      p_canEditTextString = [(TSWPStorage *)[(TSWPEditingController *)self storage] highlightsAllowed];
      if (p_canEditTextString)
      {
        storage = self->_storage;
        superRange = [(TSWPSelection *)self->_selection superRange];
        LOBYTE(p_canEditTextString) = [(TSWPStorage *)storage firstHighlightForSelectionRange:superRange outRange:v6, 0]!= 0;
      }
    }
  }

  return p_canEditTextString;
}

- (BOOL)canAddOrShowComment
{
  isValid = [(TSWPSelection *)self->_selection isValid];
  if (isValid)
  {
    if ([(TSWPEditingController *)self canRemoveHighlightForCurrentSelection])
    {
      LOBYTE(isValid) = 1;
    }

    else
    {

      LOBYTE(isValid) = [(TSWPEditingController *)self canHighlightCurrentSelection];
    }
  }

  return isValid;
}

- (id)p_highlightSelectionForSelection:(id)selection
{
  if ([selection isInsertionPoint])
  {
    superRange = [(TSWPStorage *)self->_storage rangeForSelectionWithInsertionSelection:selection];
  }

  else
  {
    superRange = [selection superRange];
  }

  return [TSWPSelection selectionWithRange:superRange, v6];
}

- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v6 = [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:&__block_literal_global_783 passingTest:?];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isEditing] & 1) == 0)
  {

    [(TSDInteractiveCanvasController *)interactiveCanvasController beginEditingRep:v6];
  }
}

- (BOOL)allowAutomaticTextEditingToBeginWithDifferentEditor
{
  if (![(TSWPSelection *)self->_selection isValid])
  {
    return 1;
  }

  selection = self->_selection;

  return [(TSWPSelection *)selection isInsertionPoint];
}

- (unint64_t)closestCharIndexToPoint:(CGPoint)point isAtEndOfLine:(BOOL *)line
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:point.x, point.y];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:v7, v9];
  v10 = TSUDynamicCast();
  [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];

  return [(TSWPEditingController *)self charIndexInRep:v10 fromPoint:1 allowPastBreak:line isAtEndOfLine:0 leadingEdge:?];
}

- (unint64_t)p_charIndexAtPoint:(CGPoint)point isAtEndOfLine:(BOOL *)line
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:point.x, point.y];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:v7, v9];
  v10 = TSUDynamicCast();
  [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];

  return [(TSWPEditingController *)self charIndexInRep:v10 fromPoint:0 allowPastBreak:1 allowNotFound:line isAtEndOfLine:?];
}

- (BOOL)p_isCharIndex:(unint64_t)index withEolAffinity:(BOOL)affinity atBoundary:(int)boundary inDirection:(int64_t)direction
{
  affinityCopy = affinity;
  v57 = *MEMORY[0x277D85DE8];
  v11 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v13 = v11 + v12;
  if (index)
  {
    v14 = index - (v11 + v12 == index);
  }

  else
  {
    v14 = 0;
  }

  if (v14 >= v13)
  {
    goto LABEL_97;
  }

  v15 = v11;
  v16 = v12;
  v51 = v11;
  if (boundary <= 1)
  {
    if (boundary)
    {
      directionCopy2 = direction;
      if (boundary != 1)
      {
        goto LABEL_51;
      }

      if (direction > 1)
      {
        v41 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:v14];
        v42 = 2;
        if (v41 == 1)
        {
          v42 = 3;
        }

        v25 = v42 == direction;
      }

      else
      {
        v25 = direction == 0;
      }

      v43 = v25;
      v37 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:v14 backward:v43];
    }

    else
    {
      v37 = [-[TSWPStorage string](self->_storage "string")];
    }

    v15 = v37;
    v16 = v38;
    goto LABEL_56;
  }

  if (boundary == 2)
  {
    v26 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index];
    location = v26;
    length = v28;
    if (index && v26 == index)
    {
      v59.location = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index - 1];
      v59.length = v30;
      v58.location = location;
      v58.length = length;
      v31 = NSUnionRange(v58, v59);
      location = v31.location;
      length = v31.length;
    }

    v32 = *MEMORY[0x277CBECE8];
    string = [(TSWPStorage *)self->_storage string];
    v60.location = location;
    v60.length = length;
    v34 = CFStringTokenizerCreate(v32, string, v60, 1uLL, 0);
    if (CFStringTokenizerGoToTokenAtIndex(v34, index))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v34);
      v15 = CurrentTokenRange.location;
      v16 = CurrentTokenRange.length;
    }

    else
    {
      v15 = *MEMORY[0x277D6C268];
      v16 = *(MEMORY[0x277D6C268] + 8);
    }

    CFRelease(v34);
    goto LABEL_56;
  }

  if (boundary == 3)
  {
    v15 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index];
    if (v36)
    {
      v16 = v36 - IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v36 + v15 - 1]);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_56;
  }

  directionCopy2 = direction;
  if (boundary == 4)
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [-[TSWPEditingController p_layoutTargetForCharIndex:eolAffinity:](self p_layoutTargetForCharIndex:index eolAffinity:{affinityCopy), "columns"}];
    v17 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (!v17)
    {
      v16 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_56;
    }

    v18 = v17;
    v19 = *v53;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        range = [v21 range];
        v24 = v14 < range || v14 - range >= v23;
        if (!v24 || affinityCopy && v14 == range + v23)
        {
          v39 = [v21 lineIndexForCharIndex:v14 eol:affinityCopy];
          if (v39 > 0x7FFFFFFFFFFFFFFELL)
          {
            v16 = 0;
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = [v21 lineFragmentAtIndex:v39];
            v15 = *v40;
            v16 = v40[1];
          }

          goto LABEL_51;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v16 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:
  direction = directionCopy2;
  if (boundary == 5)
  {
    if (v51 == index && directionCopy2 <= 4 && ((1 << directionCopy2) & 0x1A) != 0)
    {
      LOBYTE(v44) = 1;
    }

    else
    {
      LOBYTE(v44) = 0;
      if (v13 == index && directionCopy2 < 6)
      {
        LODWORD(v44) = 0x25u >> directionCopy2;
      }
    }

    return v44 & 1;
  }

LABEL_56:
  if (v15 != index && v15 + v16 != index)
  {
    goto LABEL_97;
  }

  LOBYTE(v44) = 0;
  if (boundary <= 1)
  {
    if (boundary)
    {
      if (boundary != 1)
      {
        return v44 & 1;
      }

      goto LABEL_68;
    }

LABEL_71:
    if (direction == 1)
    {
      if (v13 != index)
      {
LABEL_99:
        LOBYTE(v44) = (direction - 6) < 0xFFFFFFFFFFFFFFFELL;
        return v44 & 1;
      }
    }

    else if (direction || v51 != index)
    {
      goto LABEL_99;
    }

LABEL_97:
    LOBYTE(v44) = 0;
    return v44 & 1;
  }

  if (boundary == 2)
  {
    goto LABEL_71;
  }

  if (boundary != 3)
  {
    if (boundary != 4)
    {
      return v44 & 1;
    }

LABEL_68:
    if (direction > 1)
    {
      v46 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:index];
      v44 = 2;
      if (v46 == 1)
      {
        v44 = 3;
      }

      if (v15 == index)
      {
        LOBYTE(v44) = (direction & 0xFFFFFFFFFFFFFFFELL) == 2 && v44 != direction;
      }

      else
      {
        LOBYTE(v44) = v44 == direction;
      }
    }

    else
    {
      LOBYTE(v44) = direction == 1;
      if (v15 != index)
      {
        LOBYTE(v44) = direction ^ 1;
      }
    }

    return v44 & 1;
  }

  if (v51 == index && direction <= 5 && ((1 << direction) & 0x25) != 0 || v13 == index && direction <= 4 && ((1 << direction) & 0x1A) != 0)
  {
    goto LABEL_97;
  }

  if ((direction & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    LOBYTE(v44) = v15 == index;
    return v44 & 1;
  }

  LOBYTE(v44) = v15 + v16 == index;
  if ((direction & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    goto LABEL_97;
  }

  return v44 & 1;
}

- (id)p_layoutTargetForCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity
{
  affinity = [[TSWPSelection alloc] initWithType:0 range:index styleInsertionBehavior:0 caretAffinity:0, affinity];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__20;
  v15 = __Block_byref_object_dispose__20;
  v16 = 0;
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  storage = self->_storage;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__TSWPEditingController_p_layoutTargetForCharIndex_eolAffinity___block_invoke;
  v10[3] = &unk_279D48548;
  v10[4] = &v11;
  [(TSWPInteractiveCanvasController *)interactiveCanvasController withLayoutForModel:storage withSelection:affinity performBlock:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

id __64__TSWPEditingController_p_layoutTargetForCharIndex_eolAffinity___block_invoke(uint64_t a1)
{
  result = TSUProtocolCast();
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (unint64_t)p_MoveByLineRange:(_NSRange)range up:(BOOL)up
{
  upCopy = up;
  length = range.length;
  location = range.location;
  v8 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  if (upCopy)
  {
    v10 = location;
    if (location > v8)
    {
      v10 = location - 1;
      v11 = [(TSWPStorage *)self->_storage characterAtIndex:location - 1];
      v12 = v11;
      v13 = IsParagraphBreakingCharacter(v11);
      if (v12 != 8232 && (v13 & 1) == 0 && ![-[TSWPStorage attachmentAtCharIndex:](self->_storage attachmentAtCharIndex:{location - 1), "isPartitioned"}])
      {
        return location;
      }
    }
  }

  else
  {
    v10 = location + length;
    v14 = v10 <= v8 || v10 >= v8 + v9;
    if (!v14 && [-[TSWPStorage attachmentAtCharIndex:](self->_storage attachmentAtCharIndex:{v10), "isPartitioned"}])
    {
      v15 = [(TSWPStorage *)self->_storage characterAtIndex:v10 - 1];
      v16 = v15;
      LODWORD(v17) = IsParagraphBreakingCharacter(v15) ^ 1;
      if (v16 == 8232)
      {
        v17 = 0;
      }

      else
      {
        v17 = v17;
      }

      v10 += v17;
    }
  }

  return v10;
}

- (unint64_t)p_lineIndexForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol
{
  eolCopy = eol;
  v25 = *MEMORY[0x277D85DE8];
  v8 = [(TSWPEditingController *)self p_layoutTargetForCharIndex:index eolAffinity:eol];
  *column = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columns = [v8 columns];
  v10 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(columns);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        range = [v14 range];
        if (index - range < v16 && index >= range || range + v16 == index)
        {
          result = [v14 lineIndexForCharIndex:index eol:eolCopy];
          if (result <= 0x7FFFFFFFFFFFFFFELL)
          {
            *column = v14;
            return result;
          }
        }
      }

      v11 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)invalidateSelectionVisualRuns
{
  if ([(TSWPSelection *)self->_selection isVisual]&& [(TSWPSelection *)self->_selection validVisualRanges])
  {
    visualRangeCount = [(TSWPSelection *)self->_selection visualRangeCount];
    selection = self->_selection;
    if (visualRangeCount < 2)
    {
      superRange = [(TSWPSelection *)self->_selection superRange];
      v5 = [(TSWPSelection *)selection copyWithNewType:0 range:superRange, v8];
      v6 = 0x800000;
    }

    else
    {
      v5 = [(TSWPSelection *)self->_selection copyWithNewType:7];
      v6 = 0;
    }

    v9 = v5;

    [(TSWPEditingController *)self p_setSelection:v9 withFlags:v6 force:1];
  }
}

- (id)calculateVisualRunsFromSelection:(id)selection updateControllerSelection:(BOOL)controllerSelection
{
  controllerSelectionCopy = controllerSelection;
  selectionCopy = selection;
  if (([selection validVisualRanges] & 1) != 0 || -[TSWPSelection isInsertionPoint](selectionCopy, "isInsertionPoint"))
  {
    return selectionCopy;
  }

  v94[0] = 0;
  start = [(TSWPSelection *)selectionCopy start];
  if (start <= [(TSWPStorage *)self->_storage range])
  {
    range = [(TSWPStorage *)self->_storage range];
  }

  else
  {
    range = [(TSWPSelection *)selectionCopy start];
  }

  v9 = range;
  storage = self->_storage;
  v11 = [(TSWPSelection *)selectionCopy end];
  if (v11 >= [(TSWPStorage *)self->_storage characterCount])
  {
    characterCount = [(TSWPStorage *)self->_storage characterCount];
  }

  else
  {
    characterCount = [(TSWPSelection *)selectionCopy end];
  }

  v13 = [(TSWPStorage *)storage previousCharacterIndex:characterCount];
  memset(&v93, 0, sizeof(v93));
  v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v9 column:v94 eol:0];
  v15 = 0;
  if ([(TSWPSelection *)selectionCopy type]== 7 && v14)
  {
    if ([(TSWPSelection *)selectionCopy isRange])
    {
      v16 = TSWPLineFragment::visualIndexForCharIndex(v14, v9);
      [(TSWPSelection *)selectionCopy range];
      if (!v17)
      {
        v13 = [(TSWPSelection *)selectionCopy end];
        v85 = v9;
        v15 = v14;
        goto LABEL_150;
      }

      v18 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v13 column:v94 eol:0];
      v15 = v18;
      if (v18)
      {
        v19 = TSWPLineFragment::visualIndexForCharIndex(v18, v13);
        __p = 0;
        v91 = 0;
        v92 = 0;
        TSWPLineFragment::fillWritingDirectionRuns(v14, &__p);
        v20 = __p;
        v21 = v91;
        v79 = controllerSelectionCopy;
        if (__p == v91)
        {
          v21 = __p;
          if ((*(v14 + 6) & 0x800) != 0)
          {
            v22 = *v14;
            v89 = (*(v14 + 6) & 0x1000) == 0;
            v88 = v22;
            v87 = vdupq_lane_s64(v22, 0);
            std::vector<TSWPLFWritingDirectionRun>::push_back[abi:nn200100](&__p, &v87);
            v20 = __p;
            v21 = v91;
          }
        }

        v82 = v14;
        v83 = v15;
        v23 = v14 == v15;
        v24 = v16 > v19;
        v25 = !v23 || !v24;
        if (v23 && v24)
        {
          v26 = v13;
        }

        else
        {
          v26 = v9;
        }

        v85 = v26;
        if (!v25)
        {
          v13 = v9;
        }

        if (v21 != v20)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = v14 == v83;
          v84 = *(v14 + 6);
          if ((*(v14 + 6) & 0x1000) == 0)
          {
            v30 = 1;
          }

          v80 = v14 != v83;
          v81 = v30;
          v31 = 1;
          while (1)
          {
            v32 = &v20[40 * v27];
            v34 = *(v32 + 2);
            v33 = *(v32 + 3);
            v86.location = v34;
            v86.length = v33;
            v35 = v85 < v34 || v85 - v34 >= v33;
            v36 = !v35;
            if (v36)
            {
              break;
            }

LABEL_51:
            if (v13 >= v34 && v13 - v34 < v33)
            {
              if (*(__p + 40 * v27 + 32) == 1)
              {
                v45 = self->_storage;
                if (v36)
                {
                  v46 = [(TSWPStorage *)v45 nextCharacterIndex:v13];
                  v47 = v85;
                  if (v85 <= v46)
                  {
                    v48 = v46;
                  }

                  else
                  {
                    v48 = v85;
                  }

                  if (v85 >= v46)
                  {
                    v47 = v46;
                  }
                }

                else
                {
                  v50 = [(TSWPStorage *)v45 nextCharacterIndex:v13];
                  if (v34 <= v50)
                  {
                    v48 = v50;
                  }

                  else
                  {
                    v48 = v34;
                  }

                  if (v34 >= v50)
                  {
                    v47 = v50;
                  }

                  else
                  {
                    v47 = v34;
                  }
                }

LABEL_75:
                v51 = v48 - v47;
                v86.location = v47;
              }

              else
              {
                if (v36)
                {
                  v49 = [(TSWPStorage *)self->_storage nextCharacterIndex:v85];
                  if (v13 <= v49)
                  {
                    v48 = v49;
                  }

                  else
                  {
                    v48 = v13;
                  }

                  if (v13 >= v49)
                  {
                    v47 = v49;
                  }

                  else
                  {
                    v47 = v13;
                  }

                  goto LABEL_75;
                }

                if (v13 <= v33 + v34)
                {
                  v52 = v33 + v34;
                }

                else
                {
                  v52 = v13;
                }

                if (v13 >= v33 + v34)
                {
                  v53 = v33 + v34;
                }

                else
                {
                  v53 = v13;
                }

                v51 = v52 - v53;
                v86.location = v53;
              }

              v86.length = v51;
              v29 = 1;
            }

            if ((v84 & 0x1000) != 0)
            {
              if (((v29 | v28) & 1) != 0 || v82 != v83)
              {
                TSWPRangeVector::addRange(&v93, &v86);
              }

              if ((v28 & v80 | v29))
              {
LABEL_94:
                if ((v29 & 1) == 0)
                {
                  goto LABEL_95;
                }

                goto LABEL_145;
              }
            }

            else
            {
              if (v28)
              {
                TSWPRangeVector::addRange(&v93, &v86);
              }

              if (v29)
              {
                goto LABEL_145;
              }
            }

            v27 = v31;
            v20 = __p;
            v54 = 0xCCCCCCCCCCCCCCCDLL * ((v91 - __p) >> 3) > v31++;
            if (!v54)
            {
              goto LABEL_94;
            }
          }

          v37 = v32[32];
          if (v81)
          {
            if (!v37)
            {
              goto LABEL_37;
            }
          }

          else if (v37)
          {
LABEL_37:
            v38 = [(TSWPStorage *)self->_storage nextCharacterIndex:v85];
            if (v34 <= v38)
            {
              v39 = v38;
            }

            else
            {
              v39 = v34;
            }

            if (v34 >= v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v34;
            }

            v41 = v39 - v40;
            v86.location = v40;
LABEL_50:
            v86.length = v41;
            v28 = 1;
            goto LABEL_51;
          }

          v42 = v85;
          if (v85 <= v33 + v34)
          {
            v43 = v33 + v34;
          }

          else
          {
            v43 = v85;
          }

          if (v85 >= v33 + v34)
          {
            v42 = v33 + v34;
          }

          v41 = v43 - v42;
          v86.location = v42;
          goto LABEL_50;
        }

LABEL_95:
        v55 = *(v82 + 1) + *v82;
        if (v55 <= *v83)
        {
          v56 = *v83;
        }

        else
        {
          v56 = *(v82 + 1) + *v82;
        }

        if (v55 >= *v83)
        {
          v55 = *v83;
        }

        v87.location = v55;
        v87.length = v56 - v55;
        TSWPRangeVector::addRange(&v93, &v87);
        v91 = __p;
        TSWPLineFragment::fillWritingDirectionRuns(v83, &__p);
        v57 = __p;
        v58 = v91;
        if (__p == v91)
        {
          if ((v83[3] & 0x800) == 0)
          {
            goto LABEL_145;
          }

          v59 = *v83;
          v89 = (v83[3] & 0x1000) == 0;
          v88 = v59;
          v87 = vdupq_lane_s64(v59, 0);
          std::vector<TSWPLFWritingDirectionRun>::push_back[abi:nn200100](&__p, &v87);
          v57 = __p;
          v58 = v91;
        }

        if (v58 != v57)
        {
          v60 = 0;
          v61 = 0;
          v62 = *(v83 + 6);
          v63 = 1;
          while (1)
          {
            v64 = &v57[40 * v60];
            v66 = *(v64 + 2);
            v65 = *(v64 + 3);
            v86.location = v66;
            v86.length = v65;
            if (v13 >= v66 && v13 - v66 < v65)
            {
              break;
            }

            if ((v62 & 0x1000) == 0)
            {
              goto LABEL_134;
            }

            if (v61)
            {
              goto LABEL_143;
            }

LABEL_135:
            v61 = 0;
LABEL_144:
            v60 = v63;
            v57 = __p;
            v54 = 0xCCCCCCCCCCCCCCCDLL * ((v91 - __p) >> 3) > v63++;
            if (!v54)
            {
              goto LABEL_145;
            }
          }

          v68 = v64[32];
          if ((v62 & 0x1000) != 0)
          {
            if (v68)
            {
              v72 = v65 + v66;
              if (v13 <= v72)
              {
                v73 = v72;
              }

              else
              {
                v73 = v13;
              }

              if (v13 < v72)
              {
                v72 = v13;
              }
            }

            else
            {
              v74 = [(TSWPStorage *)self->_storage nextCharacterIndex:v13];
              if (v66 <= v74)
              {
                v73 = v74;
              }

              else
              {
                v73 = v66;
              }

              if (v66 >= v74)
              {
                v72 = v74;
              }

              else
              {
                v72 = v66;
              }
            }

            v86.location = v72;
            v86.length = v73 - v72;
LABEL_143:
            TSWPRangeVector::addRange(&v93, &v86);
            v61 = 1;
            goto LABEL_144;
          }

          if (v68)
          {
            v69 = [(TSWPStorage *)self->_storage nextCharacterIndex:v13];
            if (v66 <= v69)
            {
              v70 = v69;
            }

            else
            {
              v70 = v66;
            }

            if (v66 >= v69)
            {
              v71 = v69;
            }

            else
            {
              v71 = v66;
            }
          }

          else
          {
            v71 = v65 + v66;
            if (v13 <= v71)
            {
              v70 = v71;
            }

            else
            {
              v70 = v13;
            }

            if (v13 < v71)
            {
              v71 = v13;
            }
          }

          v86.location = v71;
          v86.length = v70 - v71;
          v61 = 1;
LABEL_134:
          TSWPRangeVector::addRange(&v93, &v86);
          if (v61)
          {
            goto LABEL_145;
          }

          goto LABEL_135;
        }

LABEL_145:
        if (__p)
        {
          v91 = __p;
          operator delete(__p);
        }

        controllerSelectionCopy = v79;
        v14 = v82;
        v15 = v83;
        goto LABEL_150;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v85 = v9;
LABEL_150:
  if (v93.__end_ == v93.__begin_)
  {
    if ([(TSWPSelection *)selectionCopy isVisual]&& [(TSWPSelection *)selectionCopy isRange])
    {
      v75 = [(TSWPSelection *)selectionCopy copyWithNewType:0];
    }

    else
    {
      v75 = selectionCopy;
    }
  }

  else
  {
    v75 = [(TSWPSelection *)selectionCopy copyWithVisualRanges:&v93 startChar:v85 endChar:v13 rightToLeft:[(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:[(TSWPSelection *)selectionCopy start]] sameLine:v14 == v15];
  }

  selectionCopy = v75;
  if (controllerSelectionCopy && [(TSWPSelection *)self->_selection isEqual:v75])
  {
    v76 = selectionCopy;

    self->_selection = selectionCopy;
  }

  v77 = selectionCopy;
  if (v93.__begin_)
  {
    v93.__end_ = v93.__begin_;
    operator delete(v93.__begin_);
  }

  return selectionCopy;
}

- (id)logicalToVisualSelection:(id)selection
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v46 = 0;
  v47 = 0;
  start = [selection start];
  v6 = [selection end];
  selfCopy = self;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", start, &v47, [selection caretAffinity] == 1);
  if ([selection type] || !v7)
  {
    goto LABEL_60;
  }

  [selection range];
  if (!v8)
  {
    selection = [selection copyWithNewType:7];
    goto LABEL_60;
  }

  location = v6 - 1;
  v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:location column:&v46 eol:1];
  if (!v10)
  {
    goto LABEL_60;
  }

  v11 = v10;
  range = [selection range];
  v14 = v13;
  __p = 0;
  v44 = 0;
  v45 = 0;
  if (v7 == v11)
  {
    TSWPLineFragment::fillWritingDirectionRuns(v7, &__p);
    v22 = __p;
    if (v44 == __p)
    {
      goto LABEL_45;
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v49.location = range;
      v49.length = v14;
      v26 = NSIntersectionRange(*&v22[40 * v23 + 16], v49);
      v22 = __p;
      if ((v24 & 1) == 0 && v26.length)
      {
        if (*(__p + 40 * v23 + 32) != 1)
        {
          start = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v26.location + v26.length];
          v24 = 1;
          v22 = __p;
LABEL_23:
          if (v26.length)
          {
            if (v22[40 * v23 + 32] == 1)
            {
              location = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v26.location + v26.length];
              v22 = __p;
            }

            else
            {
              location = v26.location;
            }
          }

          goto LABEL_28;
        }

        v24 = 1;
        start = v26.location;
      }

      if (v24)
      {
        goto LABEL_23;
      }

LABEL_28:
      v23 = v25;
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - v22) >> 3) > v25++;
      if (!v21)
      {
        goto LABEL_45;
      }
    }
  }

  TSWPLineFragment::fillWritingDirectionRuns(v7, &__p);
  v41 = v11;
  v15 = __p;
  if (v44 == __p)
  {
    goto LABEL_33;
  }

  v16 = 0;
  v17 = *(v7 + 6);
  v18 = 1;
  while (1)
  {
    v48.location = range;
    v48.length = v14;
    v20 = NSIntersectionRange(*&v15[40 * v16 + 16], v48);
    v19 = v20.location;
    if (v20.length)
    {
      break;
    }

LABEL_13:
    v16 = v18;
    v15 = __p;
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - __p) >> 3) > v18++;
    if (!v21)
    {
      goto LABEL_33;
    }
  }

  v15 = __p;
  if ((v17 & 0x1000) != 0)
  {
    if (*(__p + 40 * v16 + 32))
    {
      v19 = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v20.location + v20.length];
    }

    start = v19;
    goto LABEL_13;
  }

  if (*(__p + 40 * v16 + 32))
  {
    start = v20.location;
  }

  else
  {
    start = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v20.location + v20.length];
    v15 = __p;
  }

LABEL_33:
  v44 = v15;
  TSWPLineFragment::fillWritingDirectionRuns(v41, &__p);
  v27 = __p;
  if (v44 == __p)
  {
    goto LABEL_45;
  }

  v28 = 0;
  v29 = *(v41 + 6);
  v30 = 1;
  while (2)
  {
    v50.location = range;
    v50.length = v14;
    v32 = NSIntersectionRange(*&v27[40 * v28 + 16], v50);
    v31 = v32.location;
    if (!v32.length)
    {
LABEL_40:
      v28 = v30;
      v27 = __p;
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - __p) >> 3) > v30++;
      if (!v21)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if ((v29 & 0x1000) == 0)
  {
    if (*(__p + 40 * v28 + 32))
    {
      v31 = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v32.location + v32.length];
    }

    location = v31;
    goto LABEL_40;
  }

  if (!*(__p + 40 * v28 + 32))
  {
    v31 = [(TSWPStorage *)selfCopy->_storage previousCharacterIndex:v32.location + v32.length];
  }

  location = v31;
LABEL_45:
  storage = selfCopy->_storage;
  if (start <= location)
  {
    v37 = [(TSWPStorage *)storage nextCharacterIndex:location];
    if (start <= v37)
    {
      v35 = v37;
    }

    else
    {
      v35 = start;
    }

    if (start >= v37)
    {
      v36 = v37;
    }

    else
    {
      v36 = start;
    }
  }

  else
  {
    v34 = [(TSWPStorage *)storage nextCharacterIndex:start];
    if (location <= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = location;
    }

    if (location >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = location;
    }
  }

  selection = [selection copyWithNewVisualTypeRange:v36 head:v35 - v36 tail:{start, location}];
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

LABEL_60:
  if (!selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController logicalToVisualSelection:]"];
    [currentHandler handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12066, @"invalid nil value for '%s'", "result"}];
  }

  return selection;
}

- (const)p_lineFragmentForCharIndex:(unint64_t)index column:(id *)column eol:(BOOL)eol
{
  v6 = [(TSWPEditingController *)self p_lineIndexForCharIndex:index column:column eol:eol];
  if ([*column countLines])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_lineFragmentForCharIndex:column:eol:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12073, @"Empty column returned from p_lineIndexForCharIndex"}];
  }

  if (v6 >= [*column countLines])
  {
    return 0;
  }

  v10 = *column;

  return [v10 lineFragmentAtIndex:v6];
}

- (const)p_lastVisibleLineFragmentForCharIndex:(unint64_t)index eol:(BOOL)eol
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(-[TSWPEditingController p_layoutTargetForCharIndex:eolAffinity:](self p_layoutTargetForCharIndex:index eolAffinity:{eol), "columns"), "reverseObjectEnumerator"}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 countLines])
        {
          return [v9 lineFragmentAtIndex:{objc_msgSend(v9, "countLines") - 1}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (const)p_nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)as xPos:(double)pos inColumn:(id)column
{
  [column boundsOfLineFragmentAtIndex:?];
  MinY = CGRectGetMinY(v22);
  do
  {
    asCopy = as;
    if (!as)
    {
      break;
    }

    --as;
    [column boundsOfLineFragmentAtIndex:asCopy - 1];
  }

  while (CGRectGetMinY(v23) >= MinY);
  countLines = [column countLines];
  if (asCopy < countLines)
  {
    v11 = countLines;
    v12 = INFINITY;
    v13 = asCopy;
    do
    {
      [column boundsOfLineFragmentAtIndex:v13];
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      if (MinY != CGRectGetMinY(v24))
      {
        break;
      }

      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v18 = vabdd_f64(pos, CGRectGetMinX(v25));
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v19 = vabdd_f64(pos, CGRectGetMaxX(v26));
      if (v19 >= v18)
      {
        v19 = v18;
      }

      if (v19 < v12)
      {
        v12 = v19;
        asCopy = v13;
      }

      ++v13;
    }

    while (v13 < v11);
  }

  return [column lineFragmentAtIndex:asCopy];
}

- (unint64_t)charIndexByMovingPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction preferPosition:(double *)preferPosition
{
  charIndex = [position charIndex];
  if (preferPosition)
  {
    [position preferredPosition];
    *preferPosition = v12;
  }

  v21 = 0;
  charIndex2 = [position charIndex];
  endOfLineAffinity = [position endOfLineAffinity];
  v14 = [(TSWPEditingController *)self p_charIndexByMovingCharIndex:charIndex2 withEolAffinity:&endOfLineAffinity toBoundary:boundary inDirection:direction preferPosition:preferPosition isLeadingEdge:&v21];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    v16 = [TSWPSelection alloc];
    endOfLineAffinity2 = [position endOfLineAffinity];
    LOBYTE(v20) = v21;
    v18 = [(TSWPSelection *)v16 initWithType:7 range:v15 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:endOfLineAffinity2 leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v20, self->_storage];
    charIndex = [(TSWPSelection *)v18 leadingCharIndex];
  }

  return charIndex;
}

- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)index withEolAffinity:(BOOL *)affinity toBoundary:(int)boundary inDirection:(int64_t)direction preferPosition:(double *)position isLeadingEdge:(BOOL *)edge
{
  v14 = *MEMORY[0x277D6C268];
  v15 = *(MEMORY[0x277D6C268] + 8);
  v16 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v18 = v16 + v17;
  if (edge)
  {
    *edge = 1;
  }

  if (v18 < index)
  {
    goto LABEL_4;
  }

  if (boundary <= 2)
  {
    if (boundary)
    {
      if (boundary != 1)
      {
        if (boundary == 2)
        {
          v24 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index];
          v26 = direction & 0xFFFFFFFFFFFFFFFDLL;
          if (v24 <= v18)
          {
            v27 = v18;
          }

          else
          {
            v27 = v24;
          }

          if (v24 >= v18)
          {
            v28 = v18;
          }

          else
          {
            v28 = v24;
          }

          v29 = v27 - v28;
          v30 = v24 + v25;
          if (v16 <= v24 + v25)
          {
            v31 = v24 + v25;
          }

          else
          {
            v31 = v16;
          }

          if (v16 < v24 + v25)
          {
            v30 = v16;
          }

          v32 = v31 - v30;
          if (v26 == 1)
          {
            v33 = v30;
          }

          else
          {
            v33 = v28;
          }

          if (v26 == 1)
          {
            v34 = v32;
          }

          else
          {
            v34 = v29;
          }

          v35 = *MEMORY[0x277CBECE8];
          string = [(TSWPStorage *)self->_storage string];
          v117.location = v33;
          v117.length = v34;
          v37 = CFStringTokenizerCreate(v35, string, v117, 1uLL, 0);
          if (CFStringTokenizerGoToTokenAtIndex(v37, index))
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v37);
            if (v26)
            {
              if (v26 == 1)
              {
                v40 = CFStringTokenizerGetCurrentTokenRange(v37);
                length = v40.length;
                location = v40.location;
                if (index > LODWORD(v40.location))
                {
                  goto LABEL_111;
                }

                goto LABEL_100;
              }

LABEL_110:
              v75 = CFStringTokenizerGetCurrentTokenRange(v37);
              length = v75.length;
              location = v75.location;
LABEL_111:
              v72 = length;
LABEL_115:
              if (location != -1)
              {
                v14 = location;
                v15 = v72;
              }

              v19 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_118;
            }

            location = CurrentTokenRange.location;
            v72 = CurrentTokenRange.length;
            if (CurrentTokenRange.location + CurrentTokenRange.length != index)
            {
              goto LABEL_110;
            }
          }

          else
          {
            if (v26)
            {
              if (v26 == 1)
              {
LABEL_100:
                indexCopy = index;
                do
                {
                  v70 = indexCopy - 1;
                  if (indexCopy <= v16)
                  {
                    break;
                  }

                  v71 = CFStringTokenizerGoToTokenAtIndex(v37, indexCopy - 1);
                  indexCopy = v70;
                }

                while (!v71);
                if (v70 <= v16)
                {
                  v19 = v16;
LABEL_118:
                  CFRelease(v37);
                  goto LABEL_5;
                }

                goto LABEL_110;
              }

              v72 = 0;
              location = -1;
              goto LABEL_113;
            }

            v72 = 0;
            location = -1;
          }

          if (CFStringTokenizerAdvanceToNextToken(v37))
          {
            goto LABEL_110;
          }

LABEL_113:
          if (v18 == index)
          {
            v14 = v18;
            v15 = 0;
          }

          goto LABEL_115;
        }

LABEL_64:
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v54 = @"Unsupported granularity";
        v55 = currentHandler;
        v56 = v52;
        v57 = 12485;
LABEL_65:
        [v55 handleFailureInFunction:v56 file:v53 lineNumber:v57 description:v54];
        goto LABEL_4;
      }

      directionCopy2 = direction;
      v47 = [(TSWPEditingController *)self charIndexMovingByWordFromCharIndex:[(TSWPEditingController *)self p_layoutOrderCharIndexForCaretCharIndex:index inDirection:direction] inDirection:direction];
    }

    else
    {
      directionCopy2 = direction;
      v47 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:[(TSWPEditingController *)self p_layoutOrderCharIndexForCaretCharIndex:index inDirection:direction] inDirection:direction];
    }

    v58 = [(TSWPEditingController *)self p_caretCharIndexForLayoutOrderCharIndex:v47 inDirection:directionCopy2];
LABEL_68:
    v19 = v58;
    goto LABEL_5;
  }

  if (boundary != 3)
  {
    if (boundary != 4)
    {
      if (boundary == 5)
      {
        v14 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:index];
        v15 = v42;
LABEL_4:
        v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
        v20 = MEMORY[0x277D6C268];
        goto LABEL_6;
      }

      goto LABEL_64;
    }

    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
    if (direction < 4)
    {
      v116 = 0;
      v59 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v116 eol:*affinity];
      v19 = v18;
      if (!v59)
      {
        goto LABEL_5;
      }

      v60 = v59;
      switch(direction)
      {
        case 1:
          v19 = *v59;
          goto LABEL_5;
        case 2:
          v19 = TSWPLineFragment::rightMostCharIndex(v59);
          if (edge)
          {
            if (!TSWPLineFragment::writingDirectionForCharIndex(v60, v19) && v19 < [(TSWPStorage *)self->_storage length])
            {
              v80 = [(TSWPStorage *)self->_storage characterAtIndex:v19];
              v81 = v80;
              v82 = IsParagraphBreakingCharacter(v80);
              if (v81 != 8232 && (v82 & 1) == 0)
              {
                *edge = 0;
              }
            }
          }

          LOBYTE(v64) = (v60[3] & 0x1000) == 0;
          break;
        case 3:
          v19 = TSWPLineFragment::leftMostCharIndex(v59);
          if (edge)
          {
            if (TSWPLineFragment::writingDirectionForCharIndex(v60, v19) == 1 && v19 < [(TSWPStorage *)self->_storage length])
            {
              v61 = [(TSWPStorage *)self->_storage characterAtIndex:v19];
              v62 = v61;
              v63 = IsParagraphBreakingCharacter(v61);
              if (v62 != 8232 && (v63 & 1) == 0)
              {
                *edge = 0;
              }
            }
          }

          v64 = (*(v60 + 6) >> 12) & 1;
          break;
        default:
          v83 = [(TSWPStorage *)self->_storage charIndexRemappedFromStorage:v59[1] + *v59];
          v19 = v83;
          if (v83 <= v16)
          {
            goto LABEL_5;
          }

          if (v83 <= index)
          {
            goto LABEL_5;
          }

          v84 = [(TSWPStorage *)self->_storage characterAtIndex:v83 - 1];
          v85 = v84;
          v86 = IsParagraphBreakingCharacter(v84);
          if (v85 != 8232 && !v86)
          {
            goto LABEL_5;
          }

          v58 = [(TSWPStorage *)self->_storage previousCharacterIndex:v19];
          goto LABEL_68;
      }

      *affinity = v64;
      goto LABEL_5;
    }

    if ((direction - 4) > 1)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
      v54 = @"Unsupported horizontal line direction";
      v55 = currentHandler2;
      v56 = v74;
      v57 = 12364;
      goto LABEL_65;
    }

    if (position)
    {
      v65 = *position;
    }

    else
    {
      v65 = NAN;
    }

    v116 = 0;
    v76 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v116 eol:*affinity];
    v77 = v76;
    if (v76)
    {
      v113 = v76;
      v78 = [(TSWPEditingController *)self p_MoveByLineRange:*v76 up:*(v76 + 1), direction == 4];
      v77 = v113;
    }

    else if (direction == 4)
    {
      v79 = [(TSWPEditingController *)self p_lastVisibleLineFragmentForCharIndex:index eol:*affinity];
      if (!v79)
      {
        v78 = 0;
LABEL_153:
        v115 = 0;
        v87 = [(TSWPEditingController *)self p_lineIndexForCharIndex:v78 column:&v115 eol:direction == 4];
        if (v87 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v88 = v87;
          v89 = [v115 lineFragmentAtIndex:v87];
          v90 = v115;
          if (v77 && v89 && v77 != v89 && v115 == v116)
          {
            do
            {
              if (*(v77 + 7) != *(v89 + 56))
              {
                break;
              }

              v78 = [(TSWPEditingController *)self p_MoveByLineRange:*v89 up:*(v89 + 8), direction == 4];
              v88 = [(TSWPEditingController *)self p_lineIndexForCharIndex:v78 column:&v115 eol:direction == 4];
              v89 = [v115 lineFragmentAtIndex:v88];
              v90 = v115;
              v91 = v78 == v18 || v78 == v16;
            }

            while (!v91 && v115 == v116);
          }

          v93 = v88 > 0x7FFFFFFFFFFFFFFELL || v90 == 0;
          if (v93 || ([v90 frameBounds], v95 = v65 + v94, (v96 = -[TSWPEditingController p_nearestLineFragmentWithSameVerticalPositionAs:xPos:inColumn:](self, "p_nearestLineFragmentWithSameVerticalPositionAs:xPos:inColumn:", v88, v115, v95)) == 0))
          {
            if (v78 <= index || direction == 4)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v78;
            }

            goto LABEL_5;
          }

          v97 = v96;
          if (v96 != v77 && (v115 != v116 || v77 && *(v77 + 7) != *(v96 + 7)))
          {
            if (*affinity)
            {
              v98 = *v96;
              v99 = *(v96 + 1);
              if (v99)
              {
                v100 = [(TSWPStorage *)self->_storage characterAtIndex:v98 + v99 - 1];
                v101 = v100;
                v102 = IsParagraphBreakingCharacter(v100);
                if (v101 == 8232)
                {
                  v103 = 1;
                }

                else
                {
                  v103 = v102;
                }

                v104 = v99 - v103;
              }

              else
              {
                v104 = 0;
              }

              v19 = v104 + v98;
            }

            else
            {
              if ((*(v96 + 24) & 1) == 0 || (v106 = *v96, v78 == *v96))
              {
                v78 = TSWPLineFragment::charIndexForWPOffset(v96, v95, 1, 0, 0, 0);
                v106 = *v97;
              }

              v107 = *(v97 + 1);
              v108 = v107 + v106;
              if (v107)
              {
                v109 = v78 == v108;
              }

              else
              {
                v109 = 0;
              }

              if (v109)
              {
                if (v78 != v18 || (v110 = [(TSWPStorage *)self->_storage characterAtIndex:v18 - 1], v111 = v110, v112 = IsParagraphBreakingCharacter(v110), v111 == 8232) || (v19 = v18, v112))
                {
                  v19 = v78 - 1;
                }
              }

              else
              {
                v19 = v78;
              }
            }

            goto LABEL_5;
          }
        }

        goto LABEL_4;
      }

      v78 = v79[1] + *v79;
    }

    else
    {
      v78 = v18;
    }

    v19 = v78;
    if (v78 > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_5;
    }

    goto LABEL_153;
  }

  v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index];
  if (v48)
  {
    v50 = v48 - IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v49 + v48 - 1]);
  }

  else
  {
    v50 = 0;
  }

  directionCopy5 = direction;
  if (direction > 1)
  {
    if (direction != 2)
    {
      if (direction != 3)
      {
        goto LABEL_141;
      }

LABEL_91:
      if (v49 == index && v49 > v16)
      {
        v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index - 1];
        directionCopy5 = direction;
        v50 = v67 - 1;
      }

      goto LABEL_141;
    }
  }

  else if (direction)
  {
    if (direction != 1)
    {
      goto LABEL_141;
    }

    goto LABEL_91;
  }

  if (v50 + v49 == index && v50 + v49 < v18)
  {
    v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:index + 1];
    if (v68)
    {
      v50 = v68 - IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v68 + v49 - 1]);
    }

    else
    {
      v50 = 0;
    }

    directionCopy5 = direction;
  }

LABEL_141:
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = MEMORY[0x277D6C268];
  if (v49 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (directionCopy5 <= 1)
    {
      if (directionCopy5)
      {
        if (directionCopy5 != 1)
        {
          goto LABEL_150;
        }

        goto LABEL_148;
      }

LABEL_149:
      v19 = v50 + v49;
      goto LABEL_150;
    }

    if (directionCopy5 == 2)
    {
      goto LABEL_149;
    }

    if (directionCopy5 == 3)
    {
LABEL_148:
      v19 = v49;
    }
  }

LABEL_150:
  v14 = *MEMORY[0x277D6C268];
  v15 = *(MEMORY[0x277D6C268] + 8);
LABEL_6:
  v21 = *v20;
  v22 = v20[1];
  if (v14 != v21 || v15 != v22)
  {
    if (direction > 1)
    {
      if (direction != 2)
      {
        if (direction != 3)
        {
          goto LABEL_53;
        }

        goto LABEL_42;
      }
    }

    else if (direction)
    {
      if (direction != 1)
      {
        goto LABEL_53;
      }

LABEL_42:
      if (v15 + v14 >= index)
      {
        v19 = v14;
      }

      else
      {
        v19 = v15 + v14;
      }

      goto LABEL_53;
    }

    if (v14 <= index)
    {
      v43 = v15;
    }

    else
    {
      v43 = 0;
    }

    v19 = v43 + v14;
  }

LABEL_53:
  if (v18 >= v19)
  {
    v44 = v19;
  }

  else
  {
    v44 = v18;
  }

  if (v44 <= v16)
  {
    v44 = v16;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v44;
  }
}

- (BOOL)p_isCharIndex:(unint64_t)index withinTextUnit:(int)unit inDirection:(int64_t)direction
{
  if (unit != 1)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_isCharIndex:withinTextUnit:inDirection:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12566, @"unexpected granularity"}];
    return 0;
  }

  if (direction > 5)
  {
    return 0;
  }

  v6 = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:index forDirection:direction];
  if (v6 > [(TSWPStorage *)self->_storage length])
  {
    return 0;
  }

  v7 = [(TSWPStorage *)self->_storage wordAtCharIndex:v6 includePreviousWord:0];
  return v6 >= v7 && v6 - v7 < v8;
}

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward
{
  backwardCopy = backward;
  v7 = MEMORY[0x277D6C268];
  v8 = *MEMORY[0x277D6C268];
  v9 = *(MEMORY[0x277D6C268] + 8);
  if ([(TSWPStorage *)self->_storage length]>= index)
  {
    v10 = [(TSWPStorage *)self->_storage wordAtCharIndex:index includePreviousWord:backwardCopy];
    if (v10 != index || !backwardCopy)
    {
      v8 = v10;
      v9 = v11;
    }

    else
    {
      v8 = *v7;
      v9 = v7[1];
    }
  }

  v13 = v8;
  v14 = v9;
  result.length = v14;
  result.location = v13;
  return result;
}

- (BOOL)isDisplayingPhoneticsHUD
{
  rubyTextViewController = self->_rubyTextViewController;
  if (rubyTextViewController)
  {
    LOBYTE(rubyTextViewController) = [(TSWPDismissBlockPopover *)rubyTextViewController isVisible];
  }

  return rubyTextViewController;
}

- (BOOL)p_isIgnoringKeyboardInput
{
  delegate = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(TSDInteractiveCanvasControllerDelegate *)delegate editorAllowsKeyboard])
  {
    return 1;
  }

  else
  {
    return ![(TSWPSelection *)self->_selection isValid];
  }
}

- (BOOL)wantsCaret
{
  delegate = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  p_canEditTextString = [(TSWPEditingController *)self p_canEditTextString];
  if (p_canEditTextString)
  {
    if (objc_opt_respondsToSelector())
    {

      LOBYTE(p_canEditTextString) = [(TSDInteractiveCanvasControllerDelegate *)delegate editorAllowsCaret];
    }

    else
    {
      LOBYTE(p_canEditTextString) = 1;
    }
  }

  return p_canEditTextString;
}

- (BOOL)p_keyboardShouldShowOnscreen
{
  selection = [(TSWPEditingController *)self selection];
  delegate = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(TSDInteractiveCanvasControllerDelegate *)delegate willChangeContentOffsetIfKeyboardHidden]^ 1;
  }

  else
  {
    v5 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(TSDInteractiveCanvasControllerDelegate *)delegate editorAllowsKeyboard]^ 1;
  }

  else
  {
    v6 = 0;
  }

  isFindActive = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self->_interactiveCanvasController documentRoot] isFindActive];
  shouldDisplayKeyboard = [(TSWPEditingController *)self shouldDisplayKeyboard];
  isValid = [(TSWPSelection *)selection isValid];
  isBecomingActive = [(TSWPEditingController *)self isBecomingActive];
  isDisplayingPhoneticsHUD = [(TSWPEditingController *)self isDisplayingPhoneticsHUD];
  isInParagraphMode = [(TSWPEditingController *)self isInParagraphMode];
  v13 = 0;
  if (shouldDisplayKeyboard && (v6 & 1) == 0 && !isFindActive && (isValid || isBecomingActive) && !isDisplayingPhoneticsHUD && (self->_knobTracking & isInParagraphMode & v5 & 1) == 0)
  {
    if ((TSUPhoneUI() & isInParagraphMode & v5) == 1)
    {
      return (self->_currentSelectionFlags & 0x10000) == 0 && !self->_selectionLastModifiedWithKnob;
    }

    else
    {
      return 1;
    }
  }

  return v13;
}

- (void)abandonMarkedText
{
  textInputResponder = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController textInputResponder];

  [(TSDTextInputResponder *)textInputResponder acceptAutocorrection];
}

- (void)endEditing
{
  [(TSWPEditingController *)self dismissActivePopovers];
  [(TSWPEditingController *)self p_cancelDelayedSelectors];
  p_containingShapeRep = [(TSWPEditingController *)self p_containingShapeRep];
  editorController = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController editorController];
  v5 = editorController;
  if (p_containingShapeRep)
  {
    [(TSDEditorController *)editorController popEditor:self];
    v6 = [(TSDEditorController *)v5 mostSpecificCurrentEditorOfClass:0];

    [v6 setSelection:0];
  }

  else if ([-[TSDEditorController currentEditorsOfClass:](editorController currentEditorsOfClass:{objc_opt_class()), "containsObject:", self}])
  {

    [(TSDEditorController *)v5 popEditor:self];
  }
}

- (void)endEditingAndSelectParent:(id)parent
{
  wpKind = [(TSWPStorage *)self->_storage wpKind];
  if (wpKind == 2)
  {
    v8 = [(TSDContainerInfo *)[(TSWPStorage *)self->_storage parentInfo] findCharIndexForFootnoteAttachment:[(TSWPStorage *)self->_storage owningAttachment]];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController endEditing];
    v9 = [TSWPSelection selectionWithRange:v8 + 1, 0];
    canvasEditor = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasEditor];

    [(TSDCanvasEditor *)canvasEditor setSelection:v9];
  }

  else if (wpKind == 3)
  {
    objc_opt_class();
    [(TSWPStorage *)self->_storage parentInfo];
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController endEditing];
      canvasEditor2 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasEditor];

      [(TSDCanvasEditor *)canvasEditor2 setSelectionToInfo:v6];
    }
  }
}

- (BOOL)textIsVerticalAtCharIndex:(unint64_t)index
{
  [(TSWPStorage *)self->_storage parentInfo];
  v4 = TSUProtocolCast();
  storage = self->_storage;
  if (v4)
  {
    parentInfo = [(TSWPStorage *)storage parentInfo];
  }

  else
  {
    if ([(TSWPStorage *)storage wpKind])
    {
      return 0;
    }

    [(TSWPStorage *)self->_storage documentRoot];
    parentInfo = TSUProtocolCast();
  }

  return [(TSDContainerInfo *)parentInfo textIsVertical];
}

- (int64_t)returnKeyType
{
  if (self->_suppressBreaks)
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

- (id)textInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v30 = *MEMORY[0x277D85DE8];
  string = [(TSWPStorage *)self->_storage string];
  if (location + length > [string length])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textInRange:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12933, @"bad text range"}];
  }

  v9 = [string length];
  string2 = &stru_287D36338;
  if (length && location + length <= v9)
  {
    if ([(TSWPStorage *)self->_storage hasTrackedChanges])
    {
      v11 = [[TSWPFilteredStorage alloc] initWithStorage:self->_storage subRange:location removeRanges:length, [(TSWPStorage *)self->_storage deletedRangesInRange:location, length]];
      string2 = [(TSWPFilteredStorage *)v11 string];
      if (![(__CFString *)string2 length])
      {
        string2 = @" ";
      }
    }

    else
    {
      string2 = [string substringWithRange:{location, length}];
    }

    if (![TSWPEditingController textInRange:]::sSeparatorSet)
    {
      *chars = xmmword_26CA66AB8;
      *&chars[7] = 0x20292028000F000DLL;
      v12 = *MEMORY[0x277CBECE8];
      v13 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], chars, 11);
      if (v13)
      {
        v14 = v13;
        [TSWPEditingController textInRange:]::sSeparatorSet = CFCharacterSetCreateWithCharactersInString(v12, v13);
        CFRelease(v14);
      }

      else
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textInRange:]"];
        [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12970, @"invalid nil value for '%s'", "setStr"}];
      }
    }

    if ([(__CFString *)string2 rangeOfCharacterFromSet:?]<= 0x7FFFFFFFFFFFFFFELL)
    {
      v17 = [(__CFString *)string2 componentsSeparatedByCharactersInSet:[TSWPEditingController textInRange:]::sSeparatorSet];
      string2 = [MEMORY[0x277CCAB68] stringWithCapacity:{-[__CFString length](string2, "length")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        v21 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (v21)
            {
              [(__CFString *)string2 appendString:*(*(&v24 + 1) + 8 * i)];
            }

            else
            {
              [(__CFString *)string2 appendFormat:@"\n%@", *(*(&v24 + 1) + 8 * i)];
            }

            v21 = 0;
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
          v21 = 0;
        }

        while (v19);
      }
    }
  }

  return string2;
}

- (CGRect)firstRectForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(TSWPStorage *)self->_storage hasTrackedChanges])
  {
    v6 = [[TSWPFilteredStorage alloc] initWithStorage:self->_storage subRange:location removeRanges:length, [(TSWPStorage *)self->_storage deletedRangesInRange:location, length]];
    v7 = [(TSWPFilteredStorage *)v6 charRangeMappedFromStorage:location, length];
    location = [(TSWPFilteredStorage *)v6 charRangeMappedToStorage:v7, v8];
    length = v9;
  }

  [(TSWPEditingController *)self p_firstRectForRange:location actualRange:length, 0];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)p_setInsertionStyle:(id)style
{
  if (self->_insertionStyle != style)
  {
    styleCopy = style;

    self->_insertionStyle = style;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    storage = self->_storage;

    [defaultCenter postNotificationName:@"TSWPEditingControllerInsertionStyleChanged" object:storage userInfo:0];
  }
}

- (id)characterStyleForDeletedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(TSWPStorage *)self->_storage smartFieldAtCharIndex:range.location attributeKind:6 effectiveRange:&v14];
  objc_opt_class();
  v6 = TSUDynamicCast();
  v7 = v14;
  v8 = [(TSWPStorage *)[(TSWPEditingController *)self storage] attachmentOrFootnoteAtCharIndex:location];
  if (v7 == location && v6 != 0 || v8 != 0)
  {
    return 0;
  }

  v12 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:location effectiveRange:v13];
  result = 0;
  if (v12 && v13[0] == location)
  {
    if (v13[1] + location <= location + length)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)extendSelectionLeft
{
  range = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
  v5 = v4;
  v6 = [(TSWPStorage *)self->_storage selectionRangeMinForCharIndex:range];
  if (range > v6)
  {
    v7 = v6;
    storage = self->_storage;
    for (i = range; ; i = v10)
    {
      v10 = [(TSWPStorage *)storage previousCharacterIndex:i];
      if (v10 <= v7 || ![(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:v10])
      {
        break;
      }

      storage = self->_storage;
    }

    v11 = [[TSWPSelection alloc] initWithRange:v10, v5 + range - v10];
    [(TSWPEditingController *)self setSelection:v11];
  }
}

- (void)extendSelectionRight
{
  selection = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)selection isValid])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController extendSelectionRight]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14569, @"Invalid selection"}];
  }

  if ([(TSWPSelection *)selection isValid])
  {
    range = [(TSWPSelection *)selection range];
    v8 = range + v7;
    v9 = [(TSWPStorage *)self->_storage selectionRangeMaxForCharIndex:range + v7];
    if (v8 < v9)
    {
      v10 = v9;
      do
      {
        v8 = [(TSWPStorage *)self->_storage nextCharacterIndex:v8];
      }

      while (v8 < v10 && [(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:v8]);
      v11 = [[TSWPSelection alloc] initWithRange:range, v8 - range];
      [(TSWPEditingController *)self setSelection:v11];
    }
  }
}

- (CGRect)p_firstRectForRange:(_NSRange)range actualRange:(_NSRange *)actualRange
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v7 = MEMORY[0x277CBF398];
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  v12 = *MEMORY[0x277D6C268];
  v13 = *(MEMORY[0x277D6C268] + 8);
  range1[0] = location;
  v14 = [[TSWPSelection alloc] initWithRange:location, length];
  selfCopy = self;
  v15 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutForModel:self->_storage withSelection:v14];
  if (!v15)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_firstRectForRange:actualRange:]"];
    [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14664, @"failed to find a layout, can't present autocorrection UI"}];
  }

  x = *v7;
  y = v7[1];
  width = v7[2];
  height = v7[3];
  *&range1[1] = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  columns = [v15 columns];
  v23 = [columns countByEnumeratingWithState:&range1[1] objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
LABEL_5:
    v26 = 0;
    while (1)
    {
      if (*v42 != v25)
      {
        objc_enumerationMutation(columns);
      }

      v27 = *(range1[2] + 8 * v26);
      if (length)
      {
        [*(range1[2] + 8 * v26) firstRectForSelection:v14 includeSpaceAfter:0 includeSpaceBefore:0 includeLeading:0];
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        if (CGRectIsEmpty(v49))
        {
          x = *v7;
          y = v7[1];
          width = v7[2];
          height = v7[3];
        }

        else
        {
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          if (!CGRectIsNull(v51))
          {
            v48.location = [v27 range];
            v48.length = v28;
            v47.location = range1[0];
            v47.length = length;
            v29 = NSIntersectionRange(v47, v48);
            v12 = v29.location;
            v13 = v29.length;
          }
        }
      }

      else
      {
        [*(range1[2] + 8 * v26) caretRectForSelection:v14];
        x = v50.origin.x;
        y = v50.origin.y;
        width = v50.size.width;
        height = v50.size.height;
        if (!CGRectIsNull(v50))
        {
          v12 = range1[0];
          v13 = 0;
        }
      }

      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (!CGRectIsNull(v52))
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [columns countByEnumeratingWithState:&range1[1] objects:v45 count:16];
        if (v24)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (!CGRectIsNull(v53))
  {
    [v38 rectInRoot:{x, y, width, height}];
    [(TSDInteractiveCanvasController *)selfCopy->_interactiveCanvasController convertUnscaledToBoundsRect:?];
    v8 = v30;
    v9 = v31;
    v10 = v32;
    v11 = v33;
  }

  v54.origin.x = v8;
  v54.origin.y = v9;
  v54.size.width = v10;
  v54.size.height = v11;
  if (CGRectIsNull(v54))
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  if (actualRange)
  {
    actualRange->location = v12;
    actualRange->length = v13;
  }

  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (id)_repsForStorage:(id)storage selection:(id)selection
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(TSWPInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] _repsForStorage:storage];
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        range = [selection range];
        v14 = v13;
        v24.location = [v11 range];
        v24.length = v15;
        v23.location = range;
        v23.length = v14;
        if (NSIntersectionRange(v23, v24).length)
        {
          [v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_addSelectionRectsForLayout:(id)layout selection:(id)selection
{
  selectionCopy = selection;
  v82 = *MEMORY[0x277D85DE8];
  range = [selection range];
  v58 = v7;
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  layoutCopy = layout;
  obj = [layout columns];
  v57 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v57)
  {
    v56 = *v76;
    v64 = selectionCopy;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v76 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v75 + 1) + 8 * i);
        textIsVertical = [v9 textIsVertical];
        if (v58)
        {
          visualRangesArray = 0;
          v59 = i;
          if ([selectionCopy isVisual])
          {
            visualRangesArray = [selectionCopy visualRangesArray];
            v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v60 = visualRangesArray;
            v11 = [visualRangesArray countByEnumeratingWithState:&v70 objects:v80 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v71;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v71 != v13)
                  {
                    objc_enumerationMutation(v60);
                  }

                  rangeValue = [*(*(&v70 + 1) + 8 * j) rangeValue];
                  v17 = [v9 rectsForSelectionRange:rangeValue selectionType:{v16, objc_msgSend(v64, "type")}];
                  if ([v17 count] != 1)
                  {
                    currentHandler = [MEMORY[0x277D6C290] currentHandler];
                    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController _addSelectionRectsForLayout:selection:]"];
                    [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14766, @"A visual selection should only return one rect"}];
                  }

                  [v10 addObject:{objc_msgSend(v17, "objectAtIndex:", 0)}];
                }

                v12 = [v60 countByEnumeratingWithState:&v70 objects:v80 count:16];
              }

              while (v12);
            }
          }

          else
          {
            v10 = [v9 rectsForSelection:selectionCopy ranges:&visualRangesArray];
          }

          v24 = [v10 count];
          if (v24 != [visualRangesArray count])
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController _addSelectionRectsForLayout:selection:]"];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
            v28 = [v10 count];
            [currentHandler2 handleFailureInFunction:v26 file:v27 lineNumber:14775 description:{@"rect/range count mismatch: %lu v %lu", v28, objc_msgSend(visualRangesArray, "count")}];
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v29 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = 0;
            v32 = *v67;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v67 != v32)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v66 + 1) + 8 * k) CGRectValue];
                x = v84.origin.x;
                y = v84.origin.y;
                width = v84.size.width;
                height = v84.size.height;
                if (!CGRectIsEmpty(v84))
                {
                  [layoutCopy rectInRoot:{x, y, width, height}];
                  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsRect:?];
                  v39 = v38;
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  v46 = [objc_msgSend(visualRangesArray objectAtIndexedSubscript:{v31), "rangeValue"}];
                  v48 = [[TSDTextSelectionRect alloc] initWithRect:[(TSWPEditingController *)self writingDirectionForCharIndex:v46] direction:[TSDTextRange textRangeWithRange:?]isVertical:v46 == range, v46 + v47 == range + v58, textIsVertical, v39, v41, v43, v45];
                  [v63 addObject:v48];
                }

                ++v31;
              }

              v30 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
            }

            while (v30);
          }

          selectionCopy = v64;
          i = v59;
        }

        else
        {
          [v9 caretRectForSelection:selectionCopy];
          v20 = v83.origin.x;
          v21 = v83.origin.y;
          v22 = v83.size.width;
          v23 = v83.size.height;
          if (!CGRectIsNull(v83))
          {
            [layoutCopy rectInRoot:{v20, v21, v22, v23}];
            [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsRect:?];
            v53 = [[TSDTextSelectionRect alloc] initWithRect:[(TSWPEditingController *)self writingDirectionForCharIndex:range] direction:[TSDTextRange textRangeWithRange:?]isVertical:1, 1, textIsVertical, v49, v50, v51, v52];
            [v63 addObject:v53];

            return v63;
          }
        }
      }

      v57 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v57);
  }

  return v63;
}

- (id)selectionRectsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v33 = *MEMORY[0x277D85DE8];
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)interactiveCanvasController delegate] selectableWordLimit])
  {
    location = [TSDRangeClamper clampSelectedRange:location inFullString:length toWordLimit:[(TSWPEditingController *)self unfilteredText], [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)interactiveCanvasController delegate] selectableWordLimit]];
    length = v7;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v9 = [[TSWPSelection alloc] initWithRange:location, length];
  if (TSUSupportsTextInteraction())
  {
    v10 = [(TSWPEditingController *)self _repsForStorage:self->_storage selection:v9];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v8 addObjectsFromArray:{-[TSWPEditingController _addSelectionRectsForLayout:selection:](self, "_addSelectionRectsForLayout:selection:", objc_msgSend(*(*(&v27 + 1) + 8 * i), "layout"), v9)}];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v15 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutsForModel:self->_storage withSelection:v9];
    if (![v15 count])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController selectionRectsForRange:]"];
      [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14861, @"failed to find a layout"}];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v15);
          }

          [v8 addObjectsFromArray:{-[TSWPEditingController _addSelectionRectsForLayout:selection:](self, "_addSelectionRectsForLayout:selection:", *(*(&v23 + 1) + 8 * j), v9)}];
        }

        v19 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }
  }

  return v8;
}

- (id)textColorAtCharIndex:(unint64_t)index
{
  v8[3] = *MEMORY[0x277D85DE8];
  v5 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:index effectiveRange:0];
  v6 = [-[TSWPEditingController styleProvider](self "styleProvider")];
  v8[0] = self->_insertionStyle;
  v8[1] = v5;
  v8[2] = v6;
  return [TSWPResolvePropertyForStyles(v8 3uLL];
}

- (id)p_columnForCharIndex:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [TSWPSelection selectionWithRange:index, 0];
  v5 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutForModel:self->_storage withSelection:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [v5 columns];
  v7 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v15;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(columns);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    [v11 caretRectForSelection:v4];
    if (v12 > 0.0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)textFontAtCharIndex:(unint64_t)index
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:index effectiveRange:0];
  v6 = [-[TSWPEditingController styleProvider](self "styleProvider")];
  v15[0] = self->_insertionStyle;
  v15[1] = v5;
  v15[2] = v6;
  v7 = TSWPCreateFontForStylesWithScale(v15, 3uLL, 0x64uLL);
  v8 = TSWPUIFontForCTFont(v7);
  CFRelease(v7);
  [(__CTFont *)v8 pointSize];
  v10 = v9;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
  v12 = v10 * v11;
  v13 = [(TSWPEditingController *)self p_columnForCharIndex:index];
  if (v13)
  {
    v12 = v12 * ([v13 scaleTextPercent] / 100.0);
  }

  return [(__CTFont *)v8 fontWithSize:v12];
}

- (id)selectionWithRange:(_NSRange)range
{
  v4 = [[TSWPSelection alloc] initWithRange:range.location, range.length];

  return [(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v4];
}

- (void)setSelectionWithRange:(_NSRange)range endOfLine:(BOOL)line
{
  lineCopy = line;
  length = range.length;
  location = range.location;
  if ([(TSWPSelection *)[(TSWPEditingController *)self selection] range]== range.location)
  {
    v8 = 168000;
  }

  else
  {
    v8 = 135232;
  }

  lineCopy = [[TSWPSelection alloc] initWithType:0 range:location styleInsertionBehavior:length caretAffinity:0, lineCopy];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setSelection:lineCopy onModel:self->_storage withFlags:v8];

  self->_selectionLastModifiedWithKeyboard = 1;

  [(TSWPEditingController *)self p_clearEditMenuFlags];
}

- (void)setSelectionWithRange:(_NSRange)range leadingEdge:(BOOL)edge endOfLine:(BOOL)line
{
  lineCopy = line;
  length = range.length;
  location = range.location;
  v10 = [TSWPSelection alloc];
  LOBYTE(v13) = edge;
  v11 = [(TSWPSelection *)v10 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:lineCopy leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v13, self->_storage];
  if ([(TSWPSelection *)[(TSWPEditingController *)self selection] range]== location)
  {
    v12 = 168000;
  }

  else
  {
    v12 = 135232;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setSelection:v11 onModel:self->_storage withFlags:v12];

  self->_selectionLastModifiedWithKeyboard = 1;

  [(TSWPEditingController *)self p_clearEditMenuFlags];
}

- (id)editingSearchReference
{
  v17 = *MEMORY[0x277D85DE8];
  selection = [(TSWPEditingController *)self selection];
  v4 = selection;
  if (selection)
  {
    if ([(TSWPSelection *)selection isValid])
    {
      v4 = [TSWPSearchReference searchReferenceWithStorage:self->_storage selection:v4];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      editingReps = [(TSWPEditingController *)self editingReps];
      v6 = [editingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(editingReps);
            }

            [objc_msgSend(*(*(&v12 + 1) + 8 * i) "layout")];
            if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              [(TSWPSearchReference *)v4 setSearchReferencePoint:?];
              return v4;
            }
          }

          v7 = [editingReps countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (id)p_extendSelectionToIncludeSmartFields:(id)fields
{
  type = [fields type];
  result = [(TSWPStorage *)self->_storage extendSelectionToIncludeSmartFields:fields];
  if (type == 7)
  {

    return [(TSWPEditingController *)self logicalToVisualSelection:result];
  }

  return result;
}

- (void)p_setSelectionFromPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity includeListLabels:(BOOL)labels
{
  labelsCopy = labels;
  y = point.y;
  x = point.x;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:x, y];
  v10 = TSUDynamicCast();
  if (v10)
  {
    v11 = v10;
    if ([v10 isEditing])
    {
      [v11 convertNaturalPointFromUnscaledCanvas:{x, y}];
      [v11 pinToClosestColumn:?];
      LOBYTE(v19) = 0;
      v12 = [(TSWPEditingController *)self p_selectionForRep:v11 point:granularity textSelectionGranularity:0 isTapHold:1 precise:labelsCopy includeListLabels:0 allowPastBreak:v19 selectsEntireLink:?];
      if (([v12 isEqual:{-[TSWPEditingController selection](self, "selection")}] & 1) == 0)
      {
        if ([(TSWPEditingController *)self pIsSelectionPlaceHolderTextWithSelection:v12])
        {
          v13 = 4176;
        }

        else
        {
          v13 = 4432;
        }

        [(TSWPEditingController *)self setSelection:v12 withFlags:v13];
      }

      if (self->_magnifying)
      {
        if ([+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")] != v11)
        {
          [objc_msgSend(+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
        }

        [v11 setShouldHideSelectionControls:self->_initialPressTextSelectionGranularity == 1];
        [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
        [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsPoint:x, y];
        v15 = v14;
        v17 = v16;
        v18 = +[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier];

        [v18 setMagnificationPoint:{v15, v17}];
      }
    }
  }
}

- (id)selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break selectsEntireLink:(BOOL)link
{
  breakCopy = break;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:x, y];
  v14 = TSUDynamicCast();
  if (![v14 isEditing])
  {
    return 0;
  }

  [v14 convertNaturalPointFromUnscaledCanvas:{x, y}];
  [v14 pinToClosestColumn:?];
  LOBYTE(v16) = link;
  return [(TSWPEditingController *)self p_selectionForRep:v14 point:granularity textSelectionGranularity:holdCopy isTapHold:1 precise:0 includeListLabels:breakCopy allowPastBreak:v16 selectsEntireLink:?];
}

- (void)p_adjustSelection:(id)selection withUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break
{
  breakCopy = break;
  holdCopy = hold;
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] visibleUnscaledRect];
  CGRectInset(v14, 1.0, 1.0);
  v12 = [(TSWPEditingController *)self p_selectionFromUnscaledCanvasPoint:granularity textSelectionGranularity:holdCopy isTapHold:breakCopy allowPastBreak:1 selectsEntireLink:TSDClampPointInRect()];
  if (v12)
  {

    [(TSWPEditingController *)self p_adjustSelection:selection withOtherSelection:v12 textSelectionGranularity:granularity];
  }
}

- (void)p_inputLanguageDidChangeNotification:(id)notification
{
  if (![(TSWPSelection *)self->_selection isValid])
  {
    return;
  }

  v5 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)self->_selection range]];
  v6 = v4;
  if (v4)
  {
    if (v4 != 1)
    {
      [(TSWPSelection *)self->_selection isInsertionPoint];
      goto LABEL_11;
    }

    v7 = IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v5]);
  }

  else
  {
    v7 = 1;
  }

  if ([(TSWPSelection *)self->_selection isInsertionPoint]&& v7)
  {
    v8 = [(TSWPStorage *)self->_storage writingDirectionForParagraphAtCharIndex:v5];
    v9 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:TSWPGetPrimaryInputLanguage()];
    if ((v8 != 1) == (v9 == 2))
    {

      [(TSWPEditingController *)self setBaseWritingDirection:v9 == 2 forParagraphsWithRange:v5, v6];
    }

    return;
  }

LABEL_11:
  currentSelectionFlags = self->_currentSelectionFlags;

  [(TSWPEditingController *)self selectionChangedWithFlags:currentSelectionFlags wpFlags:0];
}

- (BOOL)p_canEditTextString
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v3 = TSUProtocolCast();
  if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    return [v4 disallowEditingOfTextStringWithStorage:{-[TSWPEditingController storage](self, "storage")}] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity
{
  selectionCopy = selection;
  if (![selection isValid] || !objc_msgSend(otherSelection, "isValid"))
  {
    return;
  }

  [selectionCopy superRange];
  if ([otherSelection type] == 7 && (!objc_msgSend(selectionCopy, "type") || objc_msgSend(selectionCopy, "type") == 7))
  {
    if ([selectionCopy type] != 7)
    {
      selectionCopy = [(TSWPEditingController *)self logicalToVisualSelection:selectionCopy];
    }

    v8 = [(TSWPEditingController *)self p_adjustVisualSelection:selectionCopy withOtherSelection:otherSelection];
    v10 = v9;
    if (![(TSWPSelection *)[(TSWPEditingController *)self selection] isValid]|| [(TSWPSelection *)[(TSWPEditingController *)self selection] range]!= v8 || v11 != v10)
    {
      v12 = [TSWPSelection alloc];
      LOBYTE(v37) = 1;
      v13 = [(TSWPSelection *)v12 initWithType:7 range:v8 styleInsertionBehavior:v10 caretAffinity:0 smartFieldRange:0 leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v37, self->_storage];
LABEL_28:
      v38 = v13;
      [(TSWPEditingController *)self setSelection:v13 withFlags:768];
    }
  }

  else
  {
    range = [selectionCopy range];
    if (range >= [otherSelection range] || (v15 = objc_msgSend(otherSelection, "range"), v17 = v15 + v16, v18 = objc_msgSend(selectionCopy, "range"), v17 >= v18 + v19))
    {
      range2 = [selectionCopy range];
      v30 = v29;
      v41.location = [otherSelection range];
      v41.length = v31;
      v40.location = range2;
      v40.length = v30;
      v32 = NSUnionRange(v40, v41);
      location = v32.location;
      length = v32.length;
    }

    else
    {
      range3 = [otherSelection range];
      range4 = [selectionCopy range];
      if (range3 <= range4 + (v22 >> 1))
      {
        location = [otherSelection range];
        range5 = [selectionCopy range];
        if (location <= range5 + v35)
        {
          v36 = range5 + v35;
        }

        else
        {
          v36 = location;
        }

        if (location >= range5 + v35)
        {
          location = range5 + v35;
        }

        length = v36 - location;
      }

      else
      {
        range6 = [selectionCopy range];
        range7 = [otherSelection range];
        if (range6 <= range7)
        {
          v25 = range7;
        }

        else
        {
          v25 = range6;
        }

        if (range6 >= range7)
        {
          location = range7;
        }

        else
        {
          location = range6;
        }

        length = v25 - location;
      }
    }

    if (![(TSWPSelection *)[(TSWPEditingController *)self selection] isValid]|| [(TSWPSelection *)[(TSWPEditingController *)self selection] range]!= location || v33 != length)
    {
      v13 = [[TSWPSelection alloc] initWithRange:location, length];
      goto LABEL_28;
    }
  }
}

- (UIView)inputView
{
  if ([(TSWPEditingController *)self p_keyboardShouldShowOnscreen])
  {
    return 0;
  }

  result = self->_inputViewForHidingKeyboard;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    result = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    self->_inputViewForHidingKeyboard = result;
  }

  return result;
}

- (UIView)inputAccessoryView
{
  if (![(TSWPEditingController *)self p_keyboardShouldShowOnscreen])
  {
    return 0;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v3 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 formatBarAccessoryView];
}

- (id)p_previousAutocorrectionForWordAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (range)
  {
    *range = *MEMORY[0x277D6C268];
  }

  v6 = [(TSWPStorage *)self->_storage wordAtCharIndex:index includePreviousWord:1];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:v6 effectiveRange:&v8];
  if (result)
  {
    result = [(NSMutableDictionary *)self->_autocorrectedEntries objectForKeyedSubscript:result];
    if (range)
    {
      if (result)
      {
        *range = v8;
      }
    }
  }

  return result;
}

- (int)valueForWritingDirectionPropertyForInspector:(id)inspector
{
  selection = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)selection isValid])
  {
    return -1;
  }

  start = [(TSWPSelection *)selection start];
  storage = self->_storage;
  styleProvider = [(TSWPEditingController *)self styleProvider];
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:start styleProvider:styleProvider];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v8 = [TSWPParagraphEnumerator::paragraphStyle(&v12 0)];
  if (v8 == -1)
  {
    interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
    objc_opt_class();
    [(TSDInteractiveCanvasController *)interactiveCanvasController layoutForInfo:self->_storage];
    v10 = TSUDynamicCast();
    if (!v10 || (v8 = [v10 naturalDirection], v8 == -1))
    {
      v8 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(&v12);
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v12);
  return v8;
}

- (void)p_removeAutocorrectionAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:index effectiveRange:0];
  if (v4)
  {
    v5 = v4;
    autocorrectedEntries = self->_autocorrectedEntries;

    [(NSMutableDictionary *)autocorrectedEntries removeObjectForKey:v5];
  }
}

- (id)dictationInterpretationsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (range)
  {
    *range = *MEMORY[0x277D6C268];
  }

  result = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:index effectiveRange:&v7];
  if (result)
  {
    result = [(NSMutableDictionary *)self->_dictationInterpretations objectForKeyedSubscript:result];
    if (range)
    {
      if (result)
      {
        *range = v7;
      }
    }
  }

  return result;
}

- (void)addAllDictationInterpretationRangesInRange:(_NSRange)range toRanges:(void *)ranges
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  [(TSWPStorage *)self->_storage addAllDictationAndAutocorrectionKeyRangesInRange:range.location toRanges:range.length, &__p];
  v6 = __p;
  if (self->_dictationInterpretations)
  {
    v7 = v20;
    if (__p != v20)
    {
      do
      {
        if ([(NSMutableDictionary *)self->_dictationInterpretations objectForKeyedSubscript:[(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:*v6 effectiveRange:0]])
        {
          v9 = *(ranges + 1);
          v8 = *(ranges + 2);
          if (v9 >= v8)
          {
            v11 = (v9 - *ranges) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v13 = v8 - *ranges;
            if (v13 >> 3 > v12)
            {
              v12 = v13 >> 3;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF0)
            {
              v14 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(ranges, v14);
            }

            v15 = (16 * v11);
            *v15 = *v6;
            v10 = 16 * v11 + 16;
            v16 = *(ranges + 1) - *ranges;
            v17 = 16 * v11 - v16;
            memcpy(v15 - v16, *ranges, v16);
            v18 = *ranges;
            *ranges = v17;
            *(ranges + 1) = v10;
            *(ranges + 2) = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v9 = *v6;
            v10 = (v9 + 1);
          }

          *(ranges + 1) = v10;
        }

        v6 += 2;
      }

      while (v6 != v7);
      v6 = __p;
    }
  }

  if (v6)
  {
    v20 = v6;
    operator delete(v6);
  }
}

- (CGPoint)knobTrackingDragPoint
{
  x = self->_knobTrackingDragPoint.x;
  y = self->_knobTrackingDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)autoscrollPoint
{
  x = self->_autoscrollPoint.x;
  y = self->_autoscrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)tsax_listItemLabelForCharIndex:(unint64_t)index textIsLiteral:(BOOL *)literal
{
  *literal = 1;
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutIfNeeded];
  v10 = 0;
  result = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v10 eol:1];
  if (result)
  {
    v8 = *(result + 22);
    if (!v8)
    {
      return 0;
    }

    v9 = *(v8 + 64);
    if ((v9 - 2) < 2)
    {
      return *(v8 + 96);
    }

    if (v9 == 1)
    {
      result = [TSWPBundle() localizedStringForKey:@"Image bullet" value:&stru_287D36338 table:@"TSText"];
      *literal = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (_NSRange)tsax_rangeOfLineFragmentAtCharIndex:(unint64_t)index
{
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutIfNeeded];
  v9 = 0;
  v5 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v9 eol:1];
  v6 = MEMORY[0x277D6C268];
  if (v5)
  {
    v6 = v5;
  }

  v7 = *v6;
  v8 = v6[1];
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)dragItemForCurrentSelectionWithDragInteraction:(id)interaction session:(id)session withTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  storage = [(TSWPEditingController *)self storage];
  selection = [(TSWPEditingController *)self selection];
  stringFromSelection = [(TSWPEditingController *)self stringFromSelection];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  if (storage && (v16 = v14, v17 = v15, -[TSWPSelection range](selection, "range"), v18) && [stringFromSelection length] && -[TSWPEditingController isUnscaledPointInTextSelection:](self, "isUnscaledPointInTextSelection:", v16, v17))
  {
    v28 = 0;
    [(TSDInteractiveCanvasController *)interactiveCanvasController hitKnobAtPoint:&v28 returningRep:v16, v17];
    v19 = 0;
    if (!v28)
    {
      v26 = 0u;
      v27 = 0u;
      v20 = [TSWPEditingController _targetedDragPreviewForSelection:selection interactiveCanvasController:interactiveCanvasController reps:[(TSWPEditingController *)self _repsForStorage:storage selection:selection] applyScale:0 imageFrameUnion:&v26];
      v21 = [TSWPStorageItemProvider storageItemProviderWithString:stringFromSelection];
      v22 = [objc_alloc(MEMORY[0x277CCAA88]) initWithObject:v21];
      v23 = [TSWPDragItem alloc];
      v24 = [(TSWPDragItem *)v23 initWithDragPreview:v20 canvasRect:v26, v27];
      v19 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v22];
      [v19 setLocalObject:v24];
    }
  }

  else
  {
    v19 = [objc_opt_class() dragItemForHitRepWithDragInteraction:interaction session:session canvasView:objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController interactiveCanvasController](self icc:"interactiveCanvasController") withTouchPoint:{"layerHost"), "asiOSCVC"), "view"), self->_interactiveCanvasController, x, y}];
  }

  return v19;
}

+ (id)dragItemForHitRepWithDragInteraction:(id)interaction session:(id)session canvasView:(id)view icc:(id)icc withTouchPoint:(CGPoint)point
{
  [icc convertBoundsToUnscaledPoint:{point.x, point.y}];
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  [icc hitRep:{v12, v14}];
  v15 = TSUDynamicCast();
  [v15 convertNaturalPointFromUnscaledCanvas:{v12, v14}];
  v17 = v16;
  v19 = v18;
  objc_opt_class();
  [v15 smartFieldAtPoint:{v17, v19}];
  v20 = TSUDynamicCast();
  if (!v20)
  {
    v24 = 0;
    goto LABEL_16;
  }

  v21 = v20;
  [icc delegate];
  v22 = objc_opt_respondsToSelector();
  delegate = [icc delegate];
  if (v22)
  {
    v24 = [delegate interactiveCanvasController:icc dragItemForSmartField:v21 interaction:interaction session:session];
    if (!v24)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [objc_msgSend(icc "delegate")] ^ 1;
  }

  else
  {
    v25 = 0;
  }

  objc_opt_class();
  v26 = TSUDynamicCast();
  v24 = 0;
  if ([v26 url] && (v25 & 1) == 0)
  {
    displayText = [v26 displayText];
    if (!displayText)
    {
      displayText = [objc_msgSend(v26 "url")];
    }

    range = [v26 range];
    [v15 rectForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", range, v29)}];
    [v15 convertNaturalRectToUnscaledCanvas:?];
    [icc convertUnscaledToBoundsPoint:{TSDCenterOfRect(v30, v31, v32, v33)}];
    v36 = [objc_alloc(MEMORY[0x277D75488]) initWithContainer:view center:{v34, v35}];
    v37 = [MEMORY[0x277D75B88] previewForURL:objc_msgSend(v26 title:"url") target:{displayText, v36}];

    v38 = [MEMORY[0x277CCAA88] itemProviderWithURL:objc_msgSend(v26 title:{"url"), displayText}];
    v24 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v38];
    [v24 setLocalObject:v37];

    if (v24)
    {
LABEL_14:
      [v24 localObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        range2 = [v21 range];
        [v15 rectForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", range2, v40)}];
        [v15 convertNaturalRectToUnscaledCanvas:?];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        localObject = [v24 localObject];
        v50 = [TSWPURLDragItem alloc];
        range3 = [v21 range];
        v53 = [(TSWPURLDragItem *)v50 initWithDragPreview:localObject canvasRect:range3 canvasDragPoint:v52 range:v42, v44, v46, v48, v12, v14];
        [v24 setLocalObject:v53];
      }
    }
  }

LABEL_16:

  return v24;
}

+ (id)previewForDragItem:(id)item
{
  [item localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  localObject = [item localObject];
  if (isKindOfClass)
  {
    return localObject;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  localObject2 = [item localObject];

  return [localObject2 targetedDragPreview];
}

+ (id)retargetedDragItem:(id)item withDefault:(id)default canvasView:(id)view icc:(id)icc
{
  [item localObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  localObject = [item localObject];
  [localObject canvasRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  superview = [view superview];
  [icc convertUnscaledToBoundsRect:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [objc_msgSend(superview "superview")];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [superview frame];
  v42.origin.x = TSDRectWithSize();
  v42.origin.y = v36;
  v42.size.width = v37;
  v42.size.height = v38;
  v41.origin.x = v29;
  v41.origin.y = v31;
  v41.size.width = v33;
  v41.size.height = v35;
  if (!CGRectIntersectsRect(v41, v42))
  {
    return 0;
  }

  v39 = [localObject retargetedDragPreviewForDefaultTargetedDragPreview:default icc:icc canvasView:view boundsRect:{v21, v23, v25, v27}];
  [objc_msgSend(objc_msgSend(v39 "view")];
  return v39;
}

+ (id)dropProposalForSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [session items];
  v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v9 + 1) + 8 * v7) localObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
          return v4;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

+ (id)_targetedDragPreviewForSelection:(id)selection interactiveCanvasController:(id)controller reps:(id)reps applyScale:(BOOL)scale imageFrameUnion:(CGRect *)union
{
  scaleCopy = scale;
  v94 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(reps, "count")}];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = reps;
  v13 = [reps countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v87;
    v68 = *(MEMORY[0x277CBF3A0] + 16);
    v69 = *MEMORY[0x277CBF3A0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v87 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v86 + 1) + 8 * i);
        *&v73.a = v69;
        *&v73.c = v68;
        v18 = [v17 textImageForSelection:selection frame:&v73 usingGlyphRect:0 drawBackground:0 shouldPulsate:0 suppressInvisibles:1];
        [v17 convertNaturalRectToUnscaledCanvas:{v73.a, v73.b, v73.c, v73.d}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v95.origin.x = x;
        v95.origin.y = y;
        v95.size.width = width;
        v95.size.height = height;
        if (CGRectIsNull(v95))
        {
          height = v26;
          width = v24;
          y = v22;
          x = v20;
        }

        else
        {
          v96.origin.x = x;
          v96.origin.y = y;
          v96.size.width = width;
          v96.size.height = height;
          v98.origin.x = v20;
          v98.origin.y = v22;
          v98.size.width = v24;
          v98.size.height = v26;
          v97 = CGRectUnion(v96, v98);
          x = v97.origin.x;
          y = v97.origin.y;
          width = v97.size.width;
          height = v97.size.height;
        }

        v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:{objc_msgSend(v18, "UIImage")}];
        [v27 setFrame:{v20, v22, v24, v26}];
        [v71 addObject:v27];

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        selectionRects = [v17 selectionRects];
        v29 = [selectionRects countByEnumeratingWithState:&v82 objects:v92 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v83;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v83 != v31)
              {
                objc_enumerationMutation(selectionRects);
              }

              [*(*(&v82 + 1) + 8 * j) CGRectValue];
              [v17 convertNaturalRectToUnscaledCanvas:?];
              [v12 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:")}];
            }

            v30 = [selectionRects countByEnumeratingWithState:&v82 objects:v92 count:16];
          }

          while (v30);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v14);
  }

  v33 = [objc_msgSend(controller "layerHost")];
  view = [v33 view];
  [controller convertUnscaledToBoundsPoint:{TSDCenterOfRect(x, y, width, height)}];
  v36 = v35;
  v38 = v37;
  v39 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{TSDRectWithCenterAndSize(v35, v37, width)}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v40 = [v71 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v79;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v79 != v42)
        {
          objc_enumerationMutation(v71);
        }

        v44 = *(*(&v78 + 1) + 8 * k);
        [v44 frame];
        [v44 setFrame:{TSDSubtractPoints(v45, v46, x)}];
        [v39 addSubview:v44];
      }

      v41 = [v71 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v41);
  }

  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v48 = [v12 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v75;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v75 != v50)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v74 + 1) + 8 * m) CGRectValue];
        [v47 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", TSDSubtractPoints(v52, v53, x))}];
      }

      v49 = [v12 countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v49);
  }

  memset(&v73, 0, sizeof(v73));
  if (scaleCopy)
  {
    [controller viewScale];
    v55 = v54;
    [controller viewScale];
    CGAffineTransformMakeScale(&v73, v55, v56);
  }

  else
  {
    v57 = *(MEMORY[0x277CBF2C0] + 16);
    *&v73.a = *MEMORY[0x277CBF2C0];
    *&v73.c = v57;
    *&v73.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  v58 = objc_alloc(MEMORY[0x277D75488]);
  v72 = v73;
  v59 = [v58 initWithContainer:view center:&v72 transform:{v36, v38}];
  v60 = [objc_alloc(MEMORY[0x277D75480]) initWithTextLineRects:v47];

  delegate = [v33 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v60 setBackgroundColor:{objc_msgSend(delegate, "backgroundColorForDragUIPlatter")}];
  }

  v62 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v39 parameters:v60 target:v59];

  if (union)
  {
    union->origin.x = x;
    union->origin.y = y;
    union->size.width = width;
    union->size.height = height;
  }

  return v62;
}

- (BOOL)pIsSelectionPlaceHolderTextWithSelection:(id)selection
{
  isValid = [selection isValid];
  if (isValid)
  {
    range = [selection range];
    if (!v7)
    {
LABEL_8:
      LOBYTE(isValid) = 0;
      return isValid;
    }

    v8 = range;
    v9 = range + v7;
    if (range < range + v7)
    {
      do
      {
        v10 = [(TSWPStorage *)self->_storage smartFieldAtCharIndex:v8 attributeKind:6 effectiveRange:&v12];
        if (!v10 || ([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          goto LABEL_8;
        }

        v8 = v13 + v12;
      }

      while (v13 + v12 < v9);
    }

    LOBYTE(isValid) = 1;
  }

  return isValid;
}

- (unint64_t)p_caretCharIndexForLayoutOrderCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  indexCopy = index;
  if (direction >= 2)
  {
    if ((direction - 2) > 1)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_caretCharIndexForLayoutOrderCharIndex:inDirection:]"];
      [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 107, @"Unsupported vertical character direction"}];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:index];
      v9 = v8;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
      v15 = 0;
      v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:indexCopy column:&v15 eol:0];
      if (v10)
      {
        v11 = TSWPLineFragment::caretCharIndexForLayoutOrderCharIndex(v10, indexCopy, self->_storage);
        if (v11 <= v7 + v9 && v11 >= v7)
        {
          return v11;
        }
      }
    }
  }

  return indexCopy;
}

- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  indexCopy = index;
  if (direction >= 2)
  {
    if ((direction - 2) > 1)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_layoutOrderCharIndexForCaretCharIndex:inDirection:]"];
      [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 151, @"Unsupported vertical character direction"}];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:index];
      v9 = v8;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
      v15 = 0;
      v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:indexCopy column:&v15 eol:0];
      if (v10)
      {
        v11 = TSWPLineFragment::layoutOrderCharIndexForCaretCharIndex(v10, indexCopy, self->_storage);
        if (v11 <= v7 + v9 && v11 >= v7)
        {
          return v11;
        }
      }
    }
  }

  return indexCopy;
}

- (_NSRange)p_expandParagraphRangeForEnumerator:(TSWPParagraphEnumerator *)enumerator
{
  location = TSWPParagraphEnumerator::paragraphTextRange(enumerator);
  length = v5;
  if (!TSWPParagraphEnumerator::isFirstParagraph(enumerator))
  {
    TSWPParagraphEnumerator::operator--(enumerator);
    v18.location = TSWPParagraphEnumerator::paragraphTextRange(enumerator);
    v18.length = v7;
    v16.location = location;
    v16.length = length;
    v8 = NSUnionRange(v16, v18);
    location = v8.location;
    length = v8.length;
    TSWPParagraphEnumerator::operator++(enumerator);
  }

  if (TSWPParagraphEnumerator::isLastParagraph(enumerator))
  {
    v9 = location;
    v10 = length;
  }

  else
  {
    TSWPParagraphEnumerator::operator++(enumerator);
    v12.location = TSWPParagraphEnumerator::paragraphTextRange(enumerator);
    v12.length = v11;
    v13.location = location;
    v13.length = length;

    v14 = NSUnionRange(v13, v12);
    v10 = v14.length;
    v9 = v14.location;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)index leadingEdge:(BOOL *)edge inDirection:(int64_t)direction
{
  v8 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v10 = v9;
  storage = self->_storage;
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:index styleProvider:0];
  }

  else
  {
    memset(&v56, 0, sizeof(v56));
  }

  v12 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v56];
  v14 = [(TSWPStorage *)[(TSWPEditingController *)self storage] textSourceForLayoutInRange:v12, v13];
  v15 = v8 + v10;
  if (direction <= 1)
  {
    if (direction)
    {
      if (direction == 1)
      {
        do
        {
          indexCopy2 = index;
          if (index <= v8)
          {
            break;
          }

          --index;
        }

        while ([(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:indexCopy2 - 1]);
        v17 = [v14 charIndexMappedFromStorage:indexCopy2];
        if (v17 > [v14 charIndexMappedFromStorage:v8])
        {
          v18 = [v14 charIndexMappedToStorage:v17 - 1];
          v19 = [-[TSWPStorage string](self->_storage "string")];
          v20 = self->_storage;
          if (v18 >= v19)
          {
            v21 = [-[TSWPStorage string](v20 "string")];
          }

          else
          {
            v21 = [-[TSWPStorage string](v20 "string")];
          }

          indexCopy2 = v21;
        }

        v48 = [v14 charIndexMappedToStorage:v17];
        if (v48 > v8)
        {
          v49 = [v14 charIndexRemappedFromStorage:v48 - 1];
          v50 = [-[TSWPStorage string](self->_storage "string")];
          v51 = self->_storage;
          if (v49 >= v50)
          {
            v52 = [-[TSWPStorage string](v51 "string")];
          }

          else
          {
            v52 = [-[TSWPStorage string](v51 "string")];
          }

          if (v52 < indexCopy2)
          {
            indexCopy2 = v52;
          }
        }

        goto LABEL_83;
      }

LABEL_15:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:]"];
      [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 346, @"Unsupported vertical character direction"}];
      indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_83;
    }

    if (v15 > index)
    {
      while ([(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:index])
      {
        if (v15 == ++index)
        {
          index = v15;
          break;
        }
      }
    }

    v25 = [v14 charIndexMappedFromStorage:index];
    if (v25 < [v14 charIndexMappedFromStorage:v15])
    {
      v26 = [-[TSWPStorage string](self->_storage "string")];
      indexCopy2 = v26 + v27;
      if (v26 + v27 > v15)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:]"];
        [currentHandler2 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 237, @"composed character extends past storage boundary"}];
      }

      goto LABEL_83;
    }

    v47 = [v14 charIndexRemappedFromStorage:v15];
LABEL_74:
    indexCopy2 = v47;
    goto LABEL_83;
  }

  if (direction == 2)
  {
    v22 = 1;
  }

  else
  {
    if (direction != 3)
    {
      goto LABEL_15;
    }

    v22 = 0;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v55 = 0;
  v30 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v55 eol:0];
  v31 = v30;
  if (v30)
  {
    if (v22)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }

    v33 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v30, index, v32, self->_storage);
    indexCopy2 = v33;
    if (v33 != 0x7FFFFFFFFFFFFFFFLL && v33 >= v8 && v33 <= v15)
    {
      if (edge)
      {
        v39 = *edge;
        v40 = TSWPLineFragment::writingDirectionForCharIndex(v31, v33);
        if (v40 == TSWPLineFragment::writingDirectionForCharIndex(v31, index))
        {
          if (*edge)
          {
            goto LABEL_83;
          }
        }

        else
        {
          *edge = !v39;
          if (!v39)
          {
            goto LABEL_83;
          }
        }

        if (indexCopy2 == *(v31 + 1) + *v31)
        {
          *edge = 1;
        }
      }

      goto LABEL_83;
    }

    if (edge)
    {
      if (*(v31 + 1) + *v31 > index)
      {
        v36 = *edge;
        if (v22 != (v36 == (TSWPLineFragment::writingDirectionForCharIndex(v31, index) == 1)) && (IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:index]) & 1) == 0)
        {
          *edge = !v36;
          if (index != 0x7FFFFFFFFFFFFFFFLL)
          {
            indexCopy2 = index;
            goto LABEL_83;
          }
        }
      }
    }
  }

  else
  {
    indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v37 = v22 ^ [(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:index];
  if (v31)
  {
    indexCopy3 = *v31;
    v31 = *(v31 + 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  else
  {
    indexCopy3 = index;
    if (v37)
    {
LABEL_45:
      if (v31 + indexCopy3 < v15)
      {
        if (v31)
        {
          indexCopy2 = v31 + indexCopy3;
        }

        else
        {
          indexCopy2 = indexCopy3 + 1;
        }
      }

      goto LABEL_56;
    }
  }

  if (indexCopy3 > v8)
  {
    indexCopy2 = indexCopy3 - 1;
  }

LABEL_56:
  if (indexCopy2 == 0x7FFFFFFFFFFFFFFFLL || (v41 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:indexCopy2 column:&v55 eol:0], (v42 = v41) == 0))
  {
    if (v37)
    {
      v44 = v31;
    }

    else
    {
      v44 = 0;
    }

    indexCopy2 = v44 + indexCopy3;
  }

  else
  {
    if (v22)
    {
      v43 = TSWPLineFragment::leftMostCharIndex(v41);
    }

    else
    {
      v43 = TSWPLineFragment::rightMostCharIndex(v41);
    }

    indexCopy2 = v43;
    if (edge && (*(v42 + 6) & 0x4800) == 0x4000)
    {
      *edge = 1;
    }
  }

  if (indexCopy2 == 0x7FFFFFFFFFFFFFFFLL || indexCopy2 < v8 || indexCopy2 > v15)
  {
    v47 = [v14 charIndexRemappedFromStorage:index];
    goto LABEL_74;
  }

LABEL_83:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v56);
  return indexCopy2;
}

- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)index
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v7 = 0;
  v5 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:&v7 eol:0];
  return !v5 || TSWPLineFragment::writingDirectionForCharIndex(v5, index) == 0;
}

- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)index forDirection:(int64_t)direction
{
  if (direction >= 4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 375, @"Bad input direction."}];
  }

  if (direction > 1)
  {
    if (direction == 2)
    {
      if (![(TSWPEditingController *)self p_isLayoutLeftToRightAtCharIndex:index])
      {
        v20 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:index inDirection:2];
        index = v20 == index ? 0x7FFFFFFFFFFFFFFFLL : v20;
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
          v13 = currentHandler2;
          v14 = v22;
          v15 = 410;
          goto LABEL_27;
        }
      }
    }

    else if (direction == 3 && [(TSWPEditingController *)self p_isLayoutLeftToRightAtCharIndex:index])
    {
      v16 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:index inDirection:3];
      index = v16 == index ? 0x7FFFFFFFFFFFFFFFLL : v16;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
        v13 = currentHandler3;
        v14 = v18;
        v15 = 389;
        goto LABEL_27;
      }
    }
  }

  else if (direction)
  {
    if (direction == 1)
    {
      v9 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:index inDirection:1];
      index = v9 == index ? 0x7FFFFFFFFFFFFFFFLL : v9;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
        v13 = currentHandler4;
        v14 = v11;
        v15 = 424;
LABEL_27:
        [v13 handleFailureInFunction:v14 file:v12 lineNumber:v15 description:@"Should not have received NSNotFound."];
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    storage = self->_storage;
    if (storage)
    {
      [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:index styleProvider:0];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v23 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v26];
    index = [-[TSWPStorage textSourceForLayoutInRange:](-[TSWPEditingController storage](self "storage")];
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v26);
  }

  return index;
}

- (__CFStringTokenizer)p_createTokenizerForCharIndex:(unint64_t)index outTokenizerRange:(_NSRange *)range
{
  range->location = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:?];
  range->length = v7;
  v8 = CFStringTokenizerCreate(0, [(TSWPStorage *)self->_storage string], *range, 0, 0);
  CFStringTokenizerGoToTokenAtIndex(v8, index);
  return v8;
}

- (int)p_moveFromCharIndex:(unint64_t *)index tokenizerRef:(__CFStringTokenizer *)ref tokenizerRange:(_NSRange *)range direction:(int64_t)direction currentWordRange:(_NSRange)wordRange newWordRange:(_NSRange *)newWordRange reasonToStop:(unsigned int)stop
{
  length = wordRange.length;
  location = wordRange.location;
  storage = self->_storage;
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:*index styleProvider:0];
  }

  else
  {
    memset(&v42, 0, sizeof(v42));
  }

  v13 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v42];
  v37 = [(TSWPStorage *)[(TSWPEditingController *)self storage] textSourceForLayoutInRange:v13, v14];
  [v37 charRangeMappedFromStorage:{location, length}];
  newWordRangeCopy = newWordRange;
  v15 = *index;
  while (1)
  {
    newWordRangeCopy = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:v15 forDirection:direction, newWordRangeCopy];
    if (newWordRangeCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    v17 = *ref;
    if (!*ref)
    {
      goto LABEL_13;
    }

    if (newWordRangeCopy < range->location || newWordRangeCopy - range->location >= range->length)
    {
      CFRelease(v17);
      *ref = 0;
LABEL_13:
      v17 = [(TSWPEditingController *)self p_createTokenizerForCharIndex:newWordRangeCopy outTokenizerRange:range];
      *ref = v17;
    }

    v19 = CFStringTokenizerGoToTokenAtIndex(v17, newWordRangeCopy);
    if ((stop & 2) != 0 && !v19)
    {
      v31 = 2;
      goto LABEL_42;
    }

    if (!v19)
    {
      goto LABEL_32;
    }

    v20 = location == *MEMORY[0x277D6C268] && length == *(MEMORY[0x277D6C268] + 8);
    v21 = v20;
    if ((stop & 4) != 0 && !v21)
    {
      break;
    }

    if ((stop & 8) != 0)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*ref);
      v23 = CurrentTokenRange.location;
      v24 = CurrentTokenRange.length;
      v31 = 8;
      goto LABEL_41;
    }

LABEL_32:
    v30 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:*index inDirection:direction];
    v15 = v30;
    if (v30 == 0x7FFFFFFFFFFFFFFFLL || v30 == *index)
    {
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_moveFromCharIndex:tokenizerRef:tokenizerRange:direction:currentWordRange:newWordRange:reasonToStop:]"];
        [currentHandler handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 533, @"Should not have received NSNotFound."}];
      }

LABEL_38:
      v31 = 1;
      goto LABEL_42;
    }

    *index = v30;
  }

  v22 = CFStringTokenizerGetCurrentTokenRange(*ref);
  v23 = v22.location;
  v24 = v22.length;
  [v37 charRangeMappedFromStorage:{v22.location, v22.length}];
  v25 = NSIntersectionRangeInclusive();
  v27 = v26;
  v28 = NSIntersectionRangeInclusive();
  if (v22.location == location && v22.length == length || v29 | v28 && (v27 || !v25))
  {
    goto LABEL_32;
  }

  v31 = 4;
LABEL_41:
  newWordRangeCopy->location = v23;
  newWordRangeCopy->length = v24;
LABEL_42:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v42);
  return v31;
}

- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)index inDirection:(int64_t)direction
{
  if (direction > 3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
    [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 646, @"Unsupported direction"}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  indexCopy = index;
  v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v9 = v8;
  v29 = indexCopy;
  v10 = MEMORY[0x277D6C268];
  v28 = *MEMORY[0x277D6C268];
  v11 = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:indexCopy forDirection:direction];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v27 = *v10;
  cf = [(TSWPEditingController *)self p_createTokenizerForCharIndex:v11 outTokenizerRange:&v27];
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(cf);
  LODWORD(v24) = 7;
  v14 = [(TSWPEditingController *)self p_moveFromCharIndex:&v29 tokenizerRef:&cf tokenizerRange:&v27 direction:direction currentWordRange:CurrentTokenRange.location newWordRange:CurrentTokenRange.length reasonToStop:&v28, v24];
  v15 = CurrentTokenRange.location == *v10 && CurrentTokenRange.length == *(v10 + 1);
  if (v15 || (v16 = v29, v29 == indexCopy))
  {
    if (v14 == 4 || v14 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (v14 <= 4 && ((1 << v14) & 0x16) != 0)
  {
    goto LABEL_12;
  }

  LODWORD(v25) = 8;
  [(TSWPEditingController *)self p_moveFromCharIndex:&v29 tokenizerRef:&cf tokenizerRange:&v27 direction:direction currentWordRange:&v28 newWordRange:v25 reasonToStop:?];
LABEL_11:
  v16 = v29;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v16 >= v7)
    {
      v21 = v7 + v9;
      indexCopy = v16;
      if (v16 > v21)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
        [currentHandler2 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 637, @"Result beyond selection range max."}];
        return v21;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
      [currentHandler3 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 632, @"Result beyond selection range min."}];
      return v7;
    }
  }

  return indexCopy;
}

- (_NSRange)p_adjustVisualSelection:(id)selection withOtherSelection:(id)otherSelection
{
  range = *MEMORY[0x277D6C268];
  v7 = *(MEMORY[0x277D6C268] + 8);
  v8 = [(TSWPEditingController *)self calculateVisualRunsFromSelection:selection updateControllerSelection:0];
  v9 = [(TSWPEditingController *)self calculateVisualRunsFromSelection:otherSelection updateControllerSelection:0];
  [(TSWPEditingController *)self p_selection:v8 toGlyphRange:&v50];
  [(TSWPEditingController *)self p_selection:v9 toGlyphRange:&v43];
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v50), vceqzq_s64(v43)))))
  {
    goto LABEL_96;
  }

  if (v52 == v45 && v54 == v47 && v55 == v49)
  {
    range = [v8 range];
    v7 = v10;
    goto LABEL_96;
  }

  if ([v8 isInsertionPoint])
  {
    isInsertionPoint = [v9 isInsertionPoint];
    v12 = v50.i64[0];
    v13 = v43.i64[0];
    if (!isInsertionPoint)
    {
      if (v50.i64[0] == v43.i64[0])
      {
        if (v51 >= v44)
        {
          v28 = &v45;
          v27 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v50];
        }

        else
        {
          v27 = v52;
          v28 = &v47;
        }

        v32 = *v28;
        v33 = v27 > *v28;
        if (v27 >= *v28)
        {
          v14 = *v28;
        }

        else
        {
          v14 = v27;
        }

        if (v33)
        {
          v24 = v27;
        }

        else
        {
          v24 = v32;
        }

        goto LABEL_88;
      }

      v24 = v52;
      v14 = v45;
      v25 = *(v50.i64[0] + 24);
      if (v52 < v45)
      {
        if ((v25 & 0x1000) != 0)
        {
          v24 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v50];
        }

        v14 = v24;
        v24 = v47;
        goto LABEL_88;
      }

      if ((v25 & 0x1000) != 0)
      {
LABEL_88:
        storage = self->_storage;
        goto LABEL_89;
      }

LABEL_41:
      v15 = &v50;
LABEL_42:
      v24 = [(TSWPEditingController *)self p_LeftCharForInsertion:v15];
      goto LABEL_88;
    }

    if (v50.i64[0] != v43.i64[0])
    {
      v14 = v52;
      if (v52 < v45)
      {
        if ((*(v50.i64[0] + 25) & 0x10) != 0)
        {
          v14 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v50];
          v13 = v43.i64[0];
        }

        if ((*(v13 + 25) & 0x10) != 0)
        {
          v24 = v45 - v49;
          goto LABEL_88;
        }

        v15 = &v43;
        goto LABEL_42;
      }

      v14 = v45;
      if ((*(v43.i64[0] + 25) & 0x10) != 0)
      {
        v14 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v43];
        v12 = v50.i64[0];
      }

      if ((*(v12 + 25) & 0x10) != 0)
      {
        v24 = v52;
        goto LABEL_88;
      }

      goto LABEL_41;
    }

    if (v51 <= v44)
    {
      v26 = v52;
      if (v55 != 1)
      {
        v31 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v43];
        goto LABEL_82;
      }
    }

    else
    {
      v26 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v50];
    }

    v31 = v45;
LABEL_82:
    if (v26 >= v31)
    {
      v14 = v31;
    }

    else
    {
      v14 = v26;
    }

    if (v26 <= v31)
    {
      v24 = v31;
    }

    else
    {
      v24 = v26;
    }

    goto LABEL_88;
  }

  visualRanges = [v8 visualRanges];
  if (!TSWPRangeVector::containsCharacterAtIndex(visualRanges, v45, 0) || (v17 = [v8 visualRanges], !TSWPRangeVector::containsCharacterAtIndex(v17, v47, 0)))
  {
    if (v43.i64[0] == v50.i64[0])
    {
      if (((*(v43.i64[0] + 25) & 0x10) == 0) != v44 < v51)
      {
        goto LABEL_22;
      }
    }

    else if (v45 > v52)
    {
LABEL_22:
      v23 = v52;
      goto LABEL_45;
    }

    if (v48 == 1 && (*(v43.i64[0] + 25) & 0x10) != 0)
    {
      v23 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v43];
    }

    else
    {
      v23 = v45;
    }

LABEL_45:
    if (v43.i64[1] == v50.i64[1])
    {
      if ((*(v43.i64[1] + 25) & 0x10) != 0)
      {
        if (v46 > v53)
        {
          goto LABEL_47;
        }
      }

      else if (v46 < v53)
      {
        goto LABEL_47;
      }
    }

    else if (v47 < v54)
    {
LABEL_47:
      v30 = v54;
      goto LABEL_66;
    }

    if (v48 == 1)
    {
      if ((*(v43.i64[0] + 25) & 0x10) != 0)
      {
        v30 = v45;
      }

      else
      {
        v30 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v43];
      }
    }

    else
    {
      v30 = v47;
    }

LABEL_66:
    if (v23 >= v30)
    {
      range = v30;
    }

    else
    {
      range = v23;
    }

    if (v23 <= v30)
    {
      v22 = v30;
    }

    else
    {
      v22 = v23;
    }

    v34 = self->_storage;
LABEL_73:
    v35 = [(TSWPStorage *)v34 nextCharacterIndex:v22];
    if (range <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = range;
    }

    if (range >= v35)
    {
      range = v35;
    }

    goto LABEL_95;
  }

  v18 = v45;
  superRange = [v8 superRange];
  if (v18 <= superRange + (v20 >> 1))
  {
    v14 = v45;
    storage = self->_storage;
    v24 = v54;
LABEL_89:
    v39 = [(TSWPStorage *)storage nextCharacterIndex:v24];
    if (v14 <= v39)
    {
      v36 = v39;
    }

    else
    {
      v36 = v14;
    }

    if (v14 >= v39)
    {
      range = v39;
    }

    else
    {
      range = v14;
    }

LABEL_95:
    v7 = v36 - range;
    goto LABEL_96;
  }

  if (v43.i64[0] != v50.i64[0])
  {
    range = v52;
    v21 = self->_storage;
    if (*v50.i64[0] <= *v43.i64[0])
    {
      v22 = [(TSWPEditingController *)self p_LeftCharForInsertion:&v43];
    }

    else
    {
      v22 = v45;
    }

    v34 = v21;
    goto LABEL_73;
  }

  v37 = *(v43.i64[0] + 24);
  if ((v37 & 0x1000) != 0)
  {
    v38 = [(TSWPStorage *)self->_storage nextCharacterIndex:v45];
    v37 = *(v43.i64[0] + 24);
  }

  else
  {
    v38 = v45;
  }

  if ((v37 & 0x1000) == 0 && v49 == 1)
  {
    v38 = [(TSWPStorage *)self->_storage nextCharacterIndex:v45];
  }

  if (v52 <= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v52;
  }

  if (v52 >= v38)
  {
    range = v38;
  }

  else
  {
    range = v52;
  }

  v7 = v42 - range;
LABEL_96:
  v40 = range;
  v41 = v7;
  result.length = v41;
  result.location = v40;
  return result;
}

- (unint64_t)p_LeftCharForInsertion:(id *)insertion
{
  var0 = insertion->var0;
  var3 = insertion->var3;
  v6 = var3;
  if (!insertion->var7)
  {
    v6 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(insertion->var0, insertion->var3, 3, self->_storage);
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 == [(TSWPStorage *)self->_storage characterCount])
    {
      storage = self->_storage;
      v8 = v6;
      goto LABEL_9;
    }

    return v6;
  }

  if ((*(var0 + 25) & 0x10) != 0 || !var3)
  {
    return var3;
  }

  storage = self->_storage;
  v8 = *var0;
LABEL_9:

  return [(TSWPStorage *)storage previousCharacterIndex:v8];
}

- (unint64_t)p_rightEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge
{
  v21 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selection start], &v21, 0);
  if (!v7)
  {
    return [selection insertionChar];
  }

  v8 = v7;
  if ([selection isRange])
  {
    if ([selection isVisual])
    {
      v9 = *v8;
      v10 = v8[1];
      range = [selection range];
      if (v9 <= range && v10 + v9 >= range + v12)
      {
        if ((*(v8 + 25) & 0x10) != 0)
        {
          headChar = [selection headChar];
        }

        else
        {
          headChar = [selection tailChar];
        }

        headChar2 = headChar;
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v8, headChar);
        goto LABEL_25;
      }

      if ((*(v8 + 25) & 0x10) != 0)
      {
        headChar2 = [selection headChar];
        v18 = *(v8 + 6);
        v16 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:headChar2];
        if ((v18 & 0x1000) != 0)
        {
LABEL_25:
          v17 = v16 == 1;
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      headChar2 = [selection tailChar];
      v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:headChar2 column:&v21 eol:0];
      if (v14)
      {
        v15 = v14[6];
        v16 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:headChar2];
        if ((v15 & 0x1000) == 0)
        {
          goto LABEL_25;
        }

LABEL_20:
        v17 = v16 != 1;
        goto LABEL_26;
      }

      return [selection insertionChar];
    }

    if ([selection isValid])
    {
      headChar2 = [selection end];
      v17 = 1;
LABEL_26:
      *edge = v17;
      return headChar2;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    headChar2 = [selection insertionChar];
    if ([selection type] != 7 && headChar2 == v8[1] + *v8 && *edge && headChar2)
    {
      headChar2 = [(TSWPStorage *)self->_storage previousCharacterIndex:headChar2];
      *edge = 0;
    }
  }

  return headChar2;
}

- (unint64_t)p_leftEdgeForSelection:(id)selection withLeadingEdge:(BOOL *)edge
{
  v22 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selection start], &v22, 0);
  if (!v7)
  {
    return [selection insertionChar];
  }

  v8 = v7;
  if ([selection isVisual] && objc_msgSend(selection, "isRange"))
  {
    v9 = *v8;
    v10 = v8[1];
    range = [selection range];
    if (v9 <= range && v10 + v9 >= range + v12)
    {
      if ((*(v8 + 25) & 0x10) != 0)
      {
        tailChar = [selection tailChar];
      }

      else
      {
        tailChar = [selection headChar];
      }

      tailChar2 = tailChar;
      v16 = TSWPLineFragment::writingDirectionForCharIndex(v8, tailChar);
      goto LABEL_23;
    }

    if ((*(v8 + 25) & 0x10) != 0)
    {
      tailChar2 = [selection tailChar];
      v17 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:tailChar2 column:&v22 eol:0];
      if (v17)
      {
        v18 = *(v17 + 6);
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v17, tailChar2);
        if ((v18 & 0x1000) != 0)
        {
LABEL_23:
          v19 = v16 != 1;
          goto LABEL_24;
        }

LABEL_17:
        v19 = v16 == 1;
LABEL_24:
        *edge = v19;
        return tailChar2;
      }
    }

    else
    {
      tailChar2 = [selection headChar];
      v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:tailChar2 column:&v22 eol:0];
      if (v14)
      {
        v15 = *(v14 + 6);
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v14, tailChar2);
        if ((v15 & 0x1000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }
    }

    return [selection insertionChar];
  }

  tailChar2 = [selection insertionChar];
  if ([selection type] != 7 && tailChar2 == v8[1] + *v8 && *edge && tailChar2)
  {
    tailChar2 = [(TSWPStorage *)self->_storage previousCharacterIndex:tailChar2];
    *edge = 0;
  }

  return tailChar2;
}

- (void)p_selection:(id)p_selection toGlyphRange:(id *)range
{
  range->var6 = [p_selection isInsertionPoint];
  rawRange = [p_selection rawRange];
  v8 = rawRange;
  if (range->var6)
  {
    range->var7 = 0;
    v21 = 0;
    v22 = 0;
    v9 = rawRange;
  }

  else
  {
    v10 = [p_selection end];
    var6 = range->var6;
    v9 = v10 - 1;
    range->var7 = 0;
    v21 = 0;
    v22 = 0;
    if (!var6)
    {
LABEL_6:
      leadingEdge = 0;
      goto LABEL_7;
    }
  }

  if ([p_selection caretAffinity] != 1)
  {
    goto LABEL_6;
  }

  leadingEdge = [p_selection leadingEdge];
LABEL_7:
  var0 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v8 column:&v22 eol:leadingEdge, v21];
  range->var0 = var0;
  if (leadingEdge && !var0)
  {
    var0 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v8 - 1 column:&v22 eol:1];
    range->var0 = var0;
  }

  v14 = var0;
  if (!range->var6)
  {
    v14 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", v9, &v21, [p_selection caretAffinity] == 1);
    var0 = range->var0;
  }

  range->var1 = v14;
  if (var0)
  {
    v15 = *(var0 + 1);
    if (v15)
    {
      if (range->var6)
      {
        if (v8 == *var0 + v15)
        {
          v16 = (*(var0 + 25) >> 4) & 1;
        }

        else
        {
          v16 = TSWPLineFragment::writingDirectionForCharIndex(var0, v8) == 1;
        }

        if (v16 == [p_selection leadingEdge])
        {
          v8 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(range->var0, v8, 2, self->_storage);
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 == [(TSWPStorage *)self->_storage length])
        {
          v8 = TSWPLineFragment::rightMostCharIndex(range->var0);
          range->var7 = 1;
        }

        v20 = TSWPLineFragment::visualIndexForCharIndex(range->var0, v8);
        range->var2 = v20;
        range->var3 = v8;
        range->var4 = v20;
        range->var5 = v8;
      }

      else if (v14)
      {
        range->var2 = TSWPLineFragment::visualIndexForCharIndex(var0, v8);
        v18 = TSWPLineFragment::visualIndexForCharIndex(range->var1, v9);
        range->var3 = v8;
        range->var4 = v18;
        range->var5 = v9;
        if (range->var0 == range->var1)
        {
          var2 = range->var2;
          if (var2 >= v18 != (*(range->var0 + 25) & 0x10) >> 4)
          {
            range->var2 = v18;
            range->var3 = v9;
            range->var4 = var2;
            range->var5 = v8;
          }
        }
      }
    }

    else
    {
      if ((*(var0 + 6) & 0x1000) != 0)
      {
        v17 = v8 - 1;
      }

      else
      {
        v17 = v8;
      }

      range->var2 = 0;
      range->var3 = v17;
      range->var4 = 0;
      range->var5 = v8 - 1;
    }
  }
}

- (int)p_writingDirectionForCharAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v10[5] = v3;
  v10[6] = v4;
  v10[0] = 0;
  v7 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:index column:v10 eol:0];
  if (v7)
  {
    return TSWPLineFragment::writingDirectionForCharIndex(v7, index - (*(v7 + 1) + *v7 == index));
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_writingDirectionForCharAtIndex:]"];
  [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1119, @"invalid nil value for '%s'", "lineFragment"}];
  return -1;
}

- (const)p_lineFragmentWithCaretInfo:(id *)info forSelection:(id)selection
{
  v35 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [selection range], &v35, objc_msgSend(selection, "isAtEndOfLine"));
  v8 = v7;
  if (v7)
  {
    v9 = v7[6];
    insertionChar = [selection insertionChar];
    v11 = TSWPLineFragment::writingDirectionForCharIndex(v8, insertionChar);
    v12 = v11 == 1;
    v30 = v9;
    v33 = (v9 & 0x1000) >> 12;
    leadingEdge = [selection leadingEdge];
    if ((v9 & 0x1000) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [(TSWPStorage *)self->_storage length];
    v15 = v13;
    if (insertionChar < v14)
    {
      TSWPComposedCharacterAtIndexForTextSource(insertionChar, self->_storage);
      v15 = TSWPGetBidiClass();
    }

    v32 = v15;
    if (([selection isVisual] & 1) != 0 || insertionChar <= *v8 || (v11 == 1) == -[TSWPEditingController editorKeyboardLanguageIsRTL](self, "editorKeyboardLanguageIsRTL"))
    {
      v16 = v11 == 1;
      v31 = v11 == 1;
      if (v31 != leadingEdge)
      {
        goto LABEL_13;
      }
    }

    else
    {
      insertionChar = -[TSWPStorage previousCharacterIndex:](self->_storage, "previousCharacterIndex:", [selection insertionChar]);
      v16 = 0;
      LOBYTE(leadingEdge) = 0;
      if (TSWPLineFragment::writingDirectionForCharIndex(v8, insertionChar) == 1)
      {
        LOBYTE(v31) = 1;
        v12 = 1;
LABEL_13:
        v17 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v8, insertionChar, 3, self->_storage);
        if (v17 == *(v8 + 8) + *v8)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v33) = TSWPLineFragment::writingDirectionForCharIndex(v8, v18) == 1;
          TSWPComposedCharacterAtIndexForTextSource(v18, self->_storage);
          v13 = TSWPGetBidiClass();
        }

        if (insertionChar == TSWPLineFragment::rightMostCharIndex(v8))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v30 & 0x1000) != 0)
          {
            v19 = insertionChar;
            v20 = v12;
          }

          else
          {
            v20 = 0;
          }

          v21 = v32;
          v16 = v33;
          if ((v30 & 0x1000) != 0)
          {
            v22 = v32;
          }

          else
          {
            v22 = 1;
          }

          if ((*(v8 + 25) & 8) != 0)
          {
            v23 = v19;
          }

          else
          {
            v23 = insertionChar;
          }

          if ((*(v8 + 25) & 8) != 0)
          {
            v12 = v20;
          }

          v24 = v13;
          if ((*(v8 + 25) & 8) != 0)
          {
            v13 = v22;
          }

          else
          {
            v13 = v32;
          }
        }

        else
        {
          v21 = v32;
          v16 = v33;
          v24 = v13;
          v23 = insertionChar;
          v13 = v32;
        }

LABEL_54:
        info->var4 = v18;
        info->var5 = v16;
        info->var2 = leadingEdge;
        info->var6 = v24;
        info->var7 = v23;
        info->var8 = v12;
        info->var9 = v13;
        info->var0 = insertionChar;
        info->var1 = v31;
        info->var3 = v21;
        return v8;
      }

      LOBYTE(v31) = 0;
    }

    v25 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v8, insertionChar, 2, self->_storage);
    if (v25 == *(v8 + 8) + *v8)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v25;
    }

    v12 = v33;
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = TSWPLineFragment::writingDirectionForCharIndex(v8, v23) == 1;
      TSWPComposedCharacterAtIndexForTextSource(v23, self->_storage);
      v13 = TSWPGetBidiClass();
    }

    if (insertionChar == TSWPLineFragment::leftMostCharIndex(v8))
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v30 & 0x1000) != 0)
      {
        v27 = 1;
      }

      else
      {
        v26 = insertionChar;
        v27 = v16;
      }

      v21 = v32;
      if ((v30 & 0x1000) != 0)
      {
        v28 = 2;
      }

      else
      {
        v28 = v32;
      }

      if ((*(v8 + 25) & 8) != 0)
      {
        v18 = v26;
      }

      else
      {
        v18 = insertionChar;
      }

      if ((*(v8 + 25) & 8) != 0)
      {
        v16 = v27;
        v24 = v28;
      }

      else
      {
        v24 = v32;
      }
    }

    else
    {
      v18 = insertionChar;
      v21 = v32;
      v24 = v32;
    }

    goto LABEL_54;
  }

  return v8;
}

- (unint64_t)p_getVisualDeletionIndexForSelection:(id)selection backward:(BOOL *)backward
{
  range = [selection range];
  if (([selection isInsertionPoint] & 1) == 0)
  {
    [selection range];
    if (!v8 || *backward)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_getVisualDeletionIndexForSelection:backward:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1270, @"invalid selection type"}];
    }
  }

  v11 = [(TSWPEditingController *)self p_lineFragmentWithCaretInfo:&v19 forSelection:selection];
  if (v11)
  {
    v12 = v11;
    if (v11[1])
    {
      if ([selection isVisual])
      {
        if (([selection isInsertionPoint] & 1) != 0 || (objc_msgSend(selection, "range"), v13) && !*backward)
        {
          v14 = *v12;
          v15 = v12[1] + ((*(v12 + 6) << 20) >> 31);
          if (v21 == v24 || v22 == 3 || v25 == 3)
          {
            if (v21 == v24 || ![selection isVisual])
            {
              return range;
            }

            if (v21 == 1)
            {
              if (v20 == 0x7FFFFFFFFFFFFFFFLL)
              {
                return v15 + v14;
              }

              else
              {
                return v20;
              }
            }

            v16 = v23;
            range = v14;
            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              return range;
            }
          }

          else
          {
            if (v21)
            {
              *backward = 0;
              if ([(TSWPEditingController *)self editorKeyboardLanguageIsRTL])
              {
                range = v20;
              }

              else
              {
                range = v23;
              }

              if (range == 0x7FFFFFFFFFFFFFFFLL)
              {
                *backward = 1;
                return v15 + v14;
              }

              return range;
            }

            *backward = 1;
            if ([(TSWPEditingController *)self editorKeyboardLanguageIsRTL])
            {
              v16 = v23;
              if (v23 == 0x7FFFFFFFFFFFFFFFLL)
              {
                range = v14;
                if (v21)
                {
                  return range;
                }

                storage = self->_storage;
                v16 = v20;
                return [(TSWPStorage *)storage nextCharacterIndex:v16];
              }
            }

            else
            {
              v16 = v20;
              if (v20 == 0x7FFFFFFFFFFFFFFFLL)
              {
                range = v14;
                if (v24 != 1)
                {
                  return range;
                }

                storage = self->_storage;
                v16 = v23;
                return [(TSWPStorage *)storage nextCharacterIndex:v16];
              }
            }
          }

          storage = self->_storage;
          return [(TSWPStorage *)storage nextCharacterIndex:v16];
        }
      }
    }
  }

  return range;
}

- (unint64_t)p_getVisualInsertionPointIndexForString:(id)string selection:(id)selection
{
  if (![selection isInsertionPoint] || (objc_msgSend(selection, "isVisual") & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_getVisualInsertionPointIndexForString:selection:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1384, @"invalid selection type"}];
  }

  range = [selection range];
  v10 = [(TSWPEditingController *)self p_lineFragmentWithCaretInfo:v40 forSelection:selection];
  if (v10)
  {
    v11 = v10;
    if ([selection isInsertionPoint])
    {
      if ([selection isVisual])
      {
        v12 = v11[6];
        if ((v12 & 0x4000) == 0)
        {
          v13 = *v11;
          v14 = *(v11 + 1);
          if ([string length])
          {
            [string utf32CharacterAtIndex:0];
            v15 = TSWPGetBidiClass();
          }

          else
          {
            v15 = 6;
          }

          if (v43 != v46)
          {
            v16 = v14 + (v12 << 20 >> 31);
            if (v15 == v43)
            {
              range = v41;
              if (v41 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ((v12 & 0x1000) != 0)
                {
                  v17 = v14 + (v12 << 20 >> 31);
                }

                else
                {
                  v17 = 0;
                }

                return v17 + v13;
              }

              if (v42)
              {
                return range;
              }

              return [(TSWPStorage *)self->_storage nextCharacterIndex:range];
            }

            if (v15 == v46)
            {
              range = v44;
              if (v44 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ((v12 & 0x1000) != 0)
                {
                  v17 = 0;
                }

                else
                {
                  v17 = v14 + (v12 << 20 >> 31);
                }

                return v17 + v13;
              }

              if (v45 != 1)
              {
                return range;
              }

              return [(TSWPStorage *)self->_storage nextCharacterIndex:range];
            }

            if ((v15 & 0xFFFFFFFD) == 1 || v15 == 2)
            {
              v19 = v15;
            }

            else
            {
              v19 = 1;
            }

            __p = 0;
            v38 = 0;
            v39 = 0;
            TSWPLineFragment::fillWritingDirectionRuns(v11, &__p);
            if (v41 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = 0;
            }

            else
            {
              if (v38 == __p)
              {
                goto LABEL_52;
              }

              v21 = 0;
              v22 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - __p) >> 3);
              v23 = v22 - 1;
              if (v22 <= 1)
              {
                v22 = 1;
              }

              v24 = (__p + 24);
              while (1)
              {
                v25 = *(v24 - 1);
                v27 = v41 >= v25;
                v26 = v41 - v25;
                v27 = !v27 || v26 >= *v24;
                if (!v27)
                {
                  break;
                }

                v24 += 5;
                if (v22 == ++v21)
                {
                  v21 = v22;
                  break;
                }
              }

              v20 = v21 + 1;
              if (v21 == 0x7FFFFFFFFFFFFFFELL || v21 >= v23)
              {
                goto LABEL_52;
              }
            }

            v28 = __p + 40 * v20;
            if (v28[33] == 1 && v19 == 2)
            {
              v32 = [(TSWPStorage *)self->_storage nextCharacterIndex:*(v28 + 1)];
LABEL_83:
              range = v32;
              goto LABEL_84;
            }

LABEL_52:
            if (v19 != 2)
            {
              if (v19 == 3)
              {
                if (v42 & 1) != 0 || (v45)
                {
                  goto LABEL_56;
                }
              }

              else if (v42)
              {
                if ((v45 & 1) == 0)
                {
                  if ((v12 & 0x1000) != 0)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v16;
                  }

                  v34 = v33 + v13;
                  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    range = v34;
                  }

                  else
                  {
                    range = v44;
                  }
                }

                goto LABEL_84;
              }

              if (v41 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ((v12 & 0x1000) != 0)
                {
                  v35 = v16;
                }

                else
                {
                  v35 = 0;
                }

                goto LABEL_81;
              }

LABEL_82:
              v32 = [(TSWPStorage *)self->_storage nextCharacterIndex:?];
              goto LABEL_83;
            }

LABEL_56:
            if (v42)
            {
              if ((v12 & 0x1000) != 0)
              {
                v30 = v16;
              }

              else
              {
                v30 = 0;
              }

              v31 = v30 + v13;
              if (v41 == 0x7FFFFFFFFFFFFFFFLL)
              {
                range = v31;
              }

              else
              {
                range = v41;
              }

              goto LABEL_84;
            }

            if (v45 != 1)
            {
LABEL_84:
              if (__p)
              {
                v38 = __p;
                operator delete(__p);
              }

              return range;
            }

            if (v44 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ((v12 & 0x1000) != 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v16;
              }

LABEL_81:
              range = v35 + v13;
              goto LABEL_84;
            }

            goto LABEL_82;
          }
        }
      }
    }
  }

  return range;
}

@end