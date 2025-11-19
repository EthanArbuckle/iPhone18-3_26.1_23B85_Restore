@interface TSWPEditingController
+ (id)_targetedDragPreviewForSelection:(id)a3 interactiveCanvasController:(id)a4 reps:(id)a5 applyScale:(BOOL)a6 imageFrameUnion:(CGRect *)a7;
+ (id)dragItemForHitRepWithDragInteraction:(id)a3 session:(id)a4 canvasView:(id)a5 icc:(id)a6 withTouchPoint:(CGPoint)a7;
+ (id)dropProposalForSession:(id)a3;
+ (id)previewForDragItem:(id)a3;
+ (id)retargetedDragItem:(id)a3 withDefault:(id)a4 canvasView:(id)a5 icc:(id)a6;
- (BOOL)allowAutomaticTextEditingToBeginWithDifferentEditor;
- (BOOL)canAddOrShowComment;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canHandleSwipeGestureForGestureRecognizer:(id)a3 outDelta:(int64_t *)a4 outTextDirection:(int64_t *)a5 outLayoutDirection:(int64_t *)a6;
- (BOOL)canHighlightCurrentSelection;
- (BOOL)canRemoveHighlightForCurrentSelection;
- (BOOL)canSetWritingDirection:(int)a3;
- (BOOL)canShowCommentForCurrentSelectionGetHighlight:(id *)a3 range:(_NSRange *)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isDisplayingPhoneticsHUD;
- (BOOL)isParagraphModeWithSelection:(id)a3 onStorage:(id)a4;
- (BOOL)isSelectionSingleAnchoredDrawableAttachment;
- (BOOL)isUnscaledPointInTextSelection:(CGPoint)a3;
- (BOOL)pIsSelectionPlaceHolderTextWithSelection:(id)a3;
- (BOOL)p_canEditTextString;
- (BOOL)p_canInsertBreak;
- (BOOL)p_canSelectAllWithSender:(id)a3;
- (BOOL)p_hitListLabelAtCharIndex:(unint64_t)a3 atNaturalPoint:(CGPoint)a4 inRep:(id)a5;
- (BOOL)p_isCharIndex:(unint64_t)a3 withEolAffinity:(BOOL)a4 atBoundary:(int)a5 inDirection:(int64_t)a6;
- (BOOL)p_isCharIndex:(unint64_t)a3 withinTextUnit:(int)a4 inDirection:(int64_t)a5;
- (BOOL)p_isIgnoringKeyboardInput;
- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)a3;
- (BOOL)p_keyboardShouldShowOnscreen;
- (BOOL)p_respondsToHyperlinkGestures;
- (BOOL)p_respondsToListGestures;
- (BOOL)p_respondsToRubyGestures;
- (BOOL)p_selectionIsSimpleInsertionPoint;
- (BOOL)selectionIsOnEmptyParagraph;
- (BOOL)shouldShowEditMenu;
- (BOOL)swipeableParagraphIsSelected;
- (BOOL)textIsVerticalAtCharIndex:(unint64_t)a3;
- (BOOL)textStorage:(id)a3 hasWhitespaceBoundedWordAtSelection:(id)a4;
- (BOOL)trackingKnobInParagraphMode;
- (BOOL)wantsCaret;
- (CGPoint)autoscrollPoint;
- (CGPoint)knobTrackingDragPoint;
- (CGPoint)p_clampPointToLine:(CGPoint)a3 trackingRep:(id)a4;
- (CGRect)firstRectForRange:(_NSRange)a3;
- (CGRect)overrideCaretRectForSelection:(id)a3;
- (CGRect)p_adjustedPopoverTargetRectForRange:(_NSRange)a3;
- (CGRect)p_firstRectForRange:(_NSRange)a3 actualRange:(_NSRange *)a4;
- (CGRect)p_targetRectForSelection:(id)a3;
- (TSWPEditingController)initWithStorage:(id)a3 interactiveCanvasController:(id)a4;
- (TSWPSelection)selection;
- (UIView)inputAccessoryView;
- (UIView)inputView;
- (_NSRange)editRange;
- (_NSRange)markedRange;
- (_NSRange)p_adjustVisualSelection:(id)a3 withOtherSelection:(id)a4;
- (_NSRange)p_expandParagraphRangeForEnumerator:(TSWPParagraphEnumerator *)a3;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4;
- (_NSRange)smartDeletionSelection:(id)a3 isVisual:(BOOL *)a4;
- (_NSRange)tsax_rangeOfLineFragmentAtCharIndex:(unint64_t)a3;
- (__CFStringTokenizer)p_createTokenizerForCharIndex:(unint64_t)a3 outTokenizerRange:(_NSRange *)a4;
- (const)p_lastVisibleLineFragmentForCharIndex:(unint64_t)a3 eol:(BOOL)a4;
- (const)p_lineFragmentForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5;
- (const)p_lineFragmentWithCaretInfo:(id *)a3 forSelection:(id)a4;
- (const)p_nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4 inColumn:(id)a5;
- (double)p_effectiveFontSizeForCurrentSelection;
- (double)viewScaleForSelectionWithTargetPointSize:(double)a3;
- (id)_addSelectionRectsForLayout:(id)a3 selection:(id)a4;
- (id)_repsForStorage:(id)a3 selection:(id)a4;
- (id)calculateVisualRunsFromSelection:(id)a3 updateControllerSelection:(BOOL)a4;
- (id)characterStyleForDeletedRange:(_NSRange)a3;
- (id)currentFontColor;
- (id)dictationInterpretationsAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (id)dragItemForCurrentSelectionWithDragInteraction:(id)a3 session:(id)a4 withTouchPoint:(CGPoint)a5;
- (id)editingReps;
- (id)editingSearchReference;
- (id)extendSelectionToParagraphs:(id)a3;
- (id)extraMenuItems;
- (id)logicalToVisualSelection:(id)a3;
- (id)p_columnForCharIndex:(unint64_t)a3;
- (id)p_columnForCharIndex:(unint64_t)a3 withStorage:(id)a4;
- (id)p_containingShapeRep;
- (id)p_documentViewController;
- (id)p_editingRepForCharIndex:(unint64_t)a3;
- (id)p_extendSelectionToIncludeSmartFields:(id)a3;
- (id)p_highlightSelectionForSelection:(id)a3;
- (id)p_hitRepWithPoint:(CGPoint)a3 keyboardAdjustmentDelta:(double)a4;
- (id)p_layoutTargetForCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4;
- (id)p_previousAutocorrectionForWordAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (id)p_repForSwipeAtUnscaledLocation:(CGPoint)a3;
- (id)p_selectionForRep:(id)a3 point:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 includeListLabels:(BOOL)a8 allowPastBreak:(BOOL)a9 selectsEntireLink:(BOOL)a10;
- (id)p_selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 selectsEntireLink:(BOOL)a7;
- (id)p_viewControllerForPresenting;
- (id)p_wordRangesForRange:(_NSRange)a3;
- (id)pasteboardController;
- (id)selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 selectsEntireLink:(BOOL)a7;
- (id)selectionRectsForRange:(_NSRange)a3;
- (id)selectionWithRange:(_NSRange)a3;
- (id)stringFromSelection;
- (id)styleProvider;
- (id)textColorAtCharIndex:(unint64_t)a3;
- (id)textFontAtCharIndex:(unint64_t)a3;
- (id)textInRange:(_NSRange)a3;
- (id)tsax_listItemLabelForCharIndex:(unint64_t)a3 textIsLiteral:(BOOL *)a4;
- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int)p_moveFromCharIndex:(unint64_t *)a3 tokenizerRef:(__CFStringTokenizer *)a4 tokenizerRange:(_NSRange *)a5 direction:(int64_t)a6 currentWordRange:(_NSRange)a7 newWordRange:(_NSRange *)a8 reasonToStop:(unsigned int)a9;
- (int)p_writingDirectionForCharAtIndex:(unint64_t)a3;
- (int)valueForWritingDirectionPropertyForInspector:(id)a3;
- (int64_t)returnKeyType;
- (int64_t)writingDirectionForCharIndex:(unint64_t)a3;
- (unint64_t)charIndexByMovingPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5 preferPosition:(double *)a6;
- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5;
- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)closestCharIndexToPoint:(CGPoint)a3 isAtEndOfLine:(BOOL *)a4;
- (unint64_t)countOfHyperlinksInUserSelection;
- (unint64_t)insertionPoint;
- (unint64_t)p_LeftCharForInsertion:(id *)a3;
- (unint64_t)p_MoveByLineRange:(_NSRange)a3 up:(BOOL)a4;
- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)a3 forDirection:(int64_t)a4;
- (unint64_t)p_caretCharIndexForLayoutOrderCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)p_charIndexAtPoint:(CGPoint)a3 isAtEndOfLine:(BOOL *)a4;
- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)a3 withEolAffinity:(BOOL *)a4 toBoundary:(int)a5 inDirection:(int64_t)a6 preferPosition:(double *)a7 isLeadingEdge:(BOOL *)a8;
- (unint64_t)p_getVisualDeletionIndexForSelection:(id)a3 backward:(BOOL *)a4;
- (unint64_t)p_getVisualInsertionPointIndexForString:(id)a3 selection:(id)a4;
- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)a3 inDirection:(int64_t)a4;
- (unint64_t)p_leftEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4;
- (unint64_t)p_lineIndexForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5;
- (unint64_t)p_rightEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4;
- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)a3;
- (void)abandonMarkedText;
- (void)addAllDictationInterpretationRangesInRange:(_NSRange)a3 toRanges:(void *)a4;
- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)autoscrollWillNotStart;
- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)a3;
- (void)cancelKnobTrackingAndMagnifying;
- (void)clearMarkedRange;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)definitionAction:(id)a3;
- (void)didBecomeCurrentEditor;
- (void)didBecomeTextInputEditor;
- (void)didEnterBackground;
- (void)dismissActivePopovers;
- (void)endEditing;
- (void)endEditingAndSelectParent:(id)a3;
- (void)extendSelectionLeft;
- (void)extendSelectionRight;
- (void)gestureSequenceDidEnd;
- (void)invalidateSelectionVisualRuns;
- (void)p_addCommonEditItemsIntoMenu:(id)a3;
- (void)p_addInsertItemsIntoMenu:(id)a3;
- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5;
- (void)p_adjustSelection:(id)a3 withUnscaledCanvasPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 allowPastBreak:(BOOL)a7;
- (void)p_beginKnobTrackingSelection:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5;
- (void)p_beginMagnification:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5;
- (void)p_beginOperationAndTakeControl;
- (void)p_beginTapAndLongPress:(id)a3;
- (void)p_cancelDelayedSelectors;
- (void)p_cancelTapAndLongPressPreviousSelector;
- (void)p_clearSecondaryHighlight;
- (void)p_createKnobTracker:(id)a3 forRep:(id)a4 tapCount:(unint64_t)a5;
- (void)p_dismissDefinitionPopover;
- (void)p_endAutoscroll;
- (void)p_handleKnobDragGestureRecognizer:(id)a3;
- (void)p_handleLongPressGesture:(id)a3;
- (void)p_handleSwipeMoveCaretWithTextGranularity:(int64_t)a3 textDirection:(int64_t)a4 layoutDirection:(int64_t)a5;
- (void)p_handleTapAndTouchGesture:(id)a3;
- (void)p_handleTapGestures:(id)a3;
- (void)p_highlightRubyTextWithRange:(_NSRange)a3;
- (void)p_inputLanguageDidChangeNotification:(id)a3;
- (void)p_postSelectionContentsChangedNotification;
- (void)p_postWillStyleTextNotification;
- (void)p_removeAutocorrectionAtCharIndex:(unint64_t)a3;
- (void)p_rescheduleDelayedUpdateHUDState;
- (void)p_selection:(id)a3 toGlyphRange:(id *)a4;
- (void)p_sendHandleTapNotification;
- (void)p_setInsertionStyle:(id)a3;
- (void)p_setRevertibleSelection:(id)a3;
- (void)p_setSelection:(id)a3 withFlags:(unint64_t)a4 force:(BOOL)a5;
- (void)p_setSelectionFromPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 includeListLabels:(BOOL)a5;
- (void)p_setTappedSelection:(id)a3;
- (void)p_suppressSelectionHighlight:(BOOL)a3;
- (void)p_switchToReplaceSelection;
- (void)p_updateHUDState;
- (void)popoverControllerDidDismissPopoverBasedViewController:(id)a3;
- (void)referenceLibrarayViewControllerWasDismissed:(id)a3;
- (void)revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold;
- (void)select:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectionChangedWithFlags:(unint64_t)a3 wpFlags:(unint64_t)a4;
- (void)setAutoscroll:(id)a3;
- (void)setInsertionPoint:(unint64_t)a3 withFlags:(unint64_t)a4;
- (void)setKnobTracking:(BOOL)a3;
- (void)setSelectionWithRange:(_NSRange)a3 endOfLine:(BOOL)a4;
- (void)setSelectionWithRange:(_NSRange)a3 leadingEdge:(BOOL)a4 endOfLine:(BOOL)a5;
- (void)styleAction:(id)a3;
- (void)tappedInRep:(id)a3 point:(CGPoint)a4 tapCount:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7;
- (void)tappedOnKnob:(id)a3;
- (void)teardown;
- (void)updateAfterAutoscroll:(id)a3;
- (void)updateHUDState;
- (void)willEnterForeground;
- (void)willResignCurrentEditor;
- (void)willResignTextInputEditorAndDeselect:(BOOL)a3;
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
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController selection]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 489, @"Bad selection class - returning nil."}];
      return 0;
    }
  }

  return selection;
}

- (TSWPEditingController)initWithStorage:(id)a3 interactiveCanvasController:(id)a4
{
  v10.receiver = self;
  v10.super_class = TSWPEditingController;
  v6 = [(TSWPEditingController *)&v10 init];
  if (v6)
  {
    *(v6 + 1) = a3;
    *(v6 + 3) = a4;
    v7 = *MEMORY[0x277D6C268];
    *(v6 + 72) = *MEMORY[0x277D6C268];
    *(v6 + 13) = 0x7FFFFFFFFFFFFFFFLL;
    v6[113] = 1;
    v6[360] = 0;
    *(v6 + 152) = v7;
    [v6 setShouldDisplayKeyboard:1];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel_p_inputLanguageDidChangeNotification_ name:*MEMORY[0x277D77200] object:0];
    [v6 setSupportsDataDetectors:1];
    [v6 setSuppressPhonetics:{objc_msgSend(a3, "allowsElementKind:", 4096) ^ 1}];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_knobTracking)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 597, @"-dealloc called while tracking"}];
  }

  if (self->_definitionPopoverController)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 599, @"expected nil value for '%s'", "_definitionPopoverController"}];
  }

  if ((TSUSupportsTextInteraction() & 1) == 0 && self->_definitionViewController)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController dealloc]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 602, @"expected nil value for '%s'", "_definitionViewController"}];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 removeObserver:self];
}

- (void)setKnobTracking:(BOOL)a3
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v5 = TSUProtocolCast();
  self->_knobTracking = a3;
  if (a3)
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

- (void)willResignTextInputEditorAndDeselect:(BOOL)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_storage)
  {
    v4 = a3;
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

      if (v4)
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

- (id)p_editingRepForCharIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(TSWPEditingController *)self editingReps];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v18;
  v8 = a3 ? a3 - 1 : 0;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v18 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v10 = *(*(&v17 + 1) + 8 * v9);
    v11 = [v10 range];
    if (v8 >= v11 && v8 - v11 < v12)
    {
      break;
    }

    if (v6 == ++v9)
    {
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_editingRepForCharIndex:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 1270, @"No valid rep for given char index"}];
    return 0;
  }

  return v10;
}

- (void)p_suppressSelectionHighlight:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TSWPEditingController *)self editingReps];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isSelectionHighlightSuppressed] != v3)
        {
          [v9 setSuppressSelectionHighlight:v3];
          [v9 invalidateKnobs];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (CGRect)p_targetRectForSelection:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBF398];
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  v10 = [(TSWPEditingController *)self editingReps];
  if (v10)
  {
    v11 = v10;
    v62 = v9;
    v63 = v8;
    v64 = v7;
    v65 = v6;
    v12 = *v5;
    v13 = v5[1];
    v14 = v5[2];
    v15 = v5[3];
    v16 = [(TSWPEditingController *)self interactiveCanvasController];
    [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] visibleBoundsRectClippedToWindow];
    [(TSDInteractiveCanvasController *)v16 convertBoundsToUnscaledRect:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [a3 isInsertionPoint];
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
          if (v25)
          {
            [v30 caretRectForSelection:a3];
          }

          else
          {
            [v30 rectForSelection:a3];
          }

          [v30 convertNaturalRectToUnscaledCanvas:?];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v39 = [v30 parentRep];
          v40 = v66;
          v41 = v20;
          v42 = v22;
          v43 = v24;
          if (v39)
          {
            v44 = [v30 parentRep];
            [objc_msgSend(v30 "parentRep")];
            [v44 convertNaturalRectToUnscaledCanvas:?];
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

  v8 = [(TSWPEditingController *)self selection];
  if ([(TSWPSelection *)v8 isValid]&& [(TSWPSelection *)v8 type]!= 2)
  {
    [(TSWPSelection *)v8 range];
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
  v3 = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)v3 isRange])
  {
    return 0;
  }

  [(TSWPSelection *)v3 range];
  if (v4 != 1)
  {
    return 0;
  }

  objc_opt_class();
  [(TSWPStorage *)[(TSWPEditingController *)self storage] attachmentAtCharIndex:[(TSWPSelection *)v3 range]];
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
    v3 = [(TSWPEditingController *)self editingReps];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        if (![objc_msgSend(*(*(&v17 + 1) + 8 * v7) "layout")])
        {
          goto LABEL_11;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      v13 = [(TSWPEditingController *)self selection];
      +[TSWPEditMenuController hideEditMenu];
      self->_editMenuIsVisible = 0;
      if (objc_opt_respondsToSelector())
      {
        storage = self->_storage;
        v15 = [(TSWPSelection *)v13 range];
        [v12 showCustomEditMenuForStorage:storage range:{v15, v16}];
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
      v9 = [(TSWPSelection *)self->_selection range];
      if (v6 > v9 || v6 + v8 < v9 + v10)
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController editRange]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 1906, @"Bad range from selectionRangeForCharIndex."}];
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    v8 = 0;
LABEL_13:
    v4 = v6;
    v5 = v8;
    goto LABEL_14;
  }

  storage = self->_storage;
  if (!storage)
  {
    goto LABEL_12;
  }

  v4 = [(TSWPStorage *)storage range];
LABEL_14:
  result.length = v5;
  result.location = v4;
  return result;
}

- (double)p_effectiveFontSizeForCurrentSelection
{
  v6[3] = *MEMORY[0x277D85DE8];
  v3 = [(TSWPSelection *)self->_selection isValid];
  result = 0.0;
  if (v3)
  {
    v5 = [(TSWPSelection *)self->_selection range:0.0];
    v6[1] = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:v5 - ((v5 != 0) & ~[(TSWPSelection *)self->_selection isRange]) effectiveRange:0];
    v6[2] = [-[TSWPEditingController styleProvider](self "styleProvider")];
    TSWPResolveFloatPropertyForStyles(v6, 3uLL, 17);
  }

  return result;
}

- (double)viewScaleForSelectionWithTargetPointSize:(double)a3
{
  [(TSWPEditingController *)self p_effectiveFontSizeForCurrentSelection];
  v5 = a3 / v4;
  v6 = v4 <= 0.0;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (void)p_highlightRubyTextWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(TSWPEditingController *)self editingReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSecondaryHighlightRange:location color:length pathStyle:{objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "colorWithRed:green:blue:alpha:", 0.0, 0.330000013, 0.649999976, 0.200000003), "CGColor"), 1}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(TSWPEditingController *)self editingReps];
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

        [*(*(&v7 + 1) + 8 * v6++) clearSecondaryHighlight];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)p_wordRangesForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(TSWPStorage *)self->_storage string];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TSWPEditingController_p_wordRangesForRange___block_invoke;
  v10[3] = &unk_279D49A38;
  v10[4] = v6;
  v11.location = location;
  v11.length = length;
  TSWPEnumerateWordsInStringWithBlock(v7, v11, v8, v10);
  return v6;
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

- (CGRect)p_adjustedPopoverTargetRectForRange:(_NSRange)a3
{
  [(TSWPEditingController *)self p_targetRectForSelection:[TSWPSelection selectionWithRange:a3.location, a3.length]];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layerHost] canvasView];
  v13 = [objc_msgSend(objc_msgSend(v12 "window")];
  [v12 convertRect:v13 toView:{v5, v7, v9, v11}];
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

  [v12 convertRect:v13 fromView:{v15, v17, v19, v21}];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_documentViewController]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 2146, @"invalid nil value for '%s'", "dvc"}];
  }

  return v2;
}

- (BOOL)isUnscaledPointInTextSelection:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSWPEditingController *)self selection];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitRep:x, y];
  v7 = TSUDynamicCast();
  v8 = [v7 canEditWithEditor:self];
  if (![(TSWPSelection *)v6 isValid]|| !v8)
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

- (id)p_repForSwipeAtUnscaledLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v37 = *MEMORY[0x277D85DE8];
  v6 = [(TSWPEditingController *)self interactiveCanvasController];
  v7 = [(TSWPEditingController *)self selection];
  [(TSDInteractiveCanvasController *)v6 convertBoundsToUnscaledSize:50.0, 50.0];
  v9 = v8;
  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(TSDInteractiveCanvasController *)v6 hitRepsAtPoint:x withSlop:y, v8, v10, 0];
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
      v20 = [(TSWPEditingController *)self storage];
      if (v20 == [v19 storage])
      {
        if ([(TSWPSelection *)v7 isInsertionPoint])
        {
          [v19 caretRect];
        }

        else
        {
          [v19 rectForSelection:v7];
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

- (BOOL)canHandleSwipeGestureForGestureRecognizer:(id)a3 outDelta:(int64_t *)a4 outTextDirection:(int64_t *)a5 outLayoutDirection:(int64_t *)a6
{
  v11 = [a3 direction];
  v12 = [(TSWPEditingController *)self textIsVerticalAtCharIndex:0];
  if (v12)
  {
    if (a5)
    {
      v13 = 3;
      if (v11 != 4)
      {
        v13 = 0;
      }

      if (v11 == 8)
      {
        v13 = 2;
      }

      *a5 = v13;
    }

    if (a6)
    {
      *a6 = v11 == 4;
    }

    v14 = v11 == 4;
    if (v11 == 8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a5)
    {
      v15 = 3;
      if (v11 != 2)
      {
        v15 = 0;
      }

      if (v11 == 1)
      {
        v15 = 2;
      }

      *a5 = v15;
    }

    if (a6)
    {
      *a6 = v11 == 2;
    }

    v14 = v11 == 2;
    if (v11 == 1)
    {
      goto LABEL_22;
    }
  }

  if (!v14)
  {
    return 0;
  }

LABEL_22:
  if ([a3 gestureKind] == @"TSWPOneFingerSwipe" && (v12 | !-[TSWPEditingController swipeableParagraphIsSelected](self, "swipeableParagraphIsSelected")) != 1 || -[TSWPEditingController isInParagraphMode](self, "isInParagraphMode"))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (BOOL)swipeableParagraphIsSelected
{
  v3 = [(TSWPSelection *)self->_selection isValid];
  if (v3)
  {
    v3 = [(TSWPEditingController *)self p_respondsToListGestures];
    if (v3)
    {
      v4 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)self->_selection range]];
      v6 = v5;
      v7 = [(TSWPStorage *)self->_storage paragraphHasListLabelAtCharIndex:[(TSWPSelection *)self->_selection range]];
      if ([(TSWPSelection *)self->_selection isInsertionPoint]&& v6 <= 1 && v7 || [(TSWPSelection *)self->_selection type]== 2 || [(TSWPSelection *)self->_selection range]== v4 && ([(TSWPSelection *)self->_selection range], v8 == v6 && v7))
      {
        LOBYTE(v3) = 1;
      }

      else
      {

        LOBYTE(v3) = [(TSWPEditingController *)self isInParagraphMode];
      }
    }
  }

  return v3;
}

- (BOOL)canHandleGesture:(id)a3
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  [a3 unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
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

  v16 = [a3 gestureKind];
  v17 = v16;
  if ((v16 == @"TSWPOneFingerSwipe" || v16 == @"TSWPTwoFingerSwipe" || v16 == @"TSWPThreeFingerSwipe") && [(TSWPSelection *)self->_selection isValid])
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

- (void)p_handleSwipeMoveCaretWithTextGranularity:(int64_t)a3 textDirection:(int64_t)a4 layoutDirection:(int64_t)a5
{
  if (![(TSWPSelection *)self->_selection isValid])
  {
    return;
  }

  v9 = [(TSWPEditingController *)self insertionPoint];
  if ([(TSWPSelection *)self->_selection isRange])
  {
    if (a5)
    {
      if (!a3)
      {
        ++v9;
      }
    }

    else
    {
      v10 = [(TSWPSelection *)self->_selection range];
      v9 = ((__PAIR128__(v11, a3) - 1) >> 64) + v10;
    }
  }

  v12 = [(TSWPSelection *)self->_selection caretAffinity]== 1;
  LODWORD(v13) = 2143289344;
  v14 = [(TSWPEditingController *)self charIndexByMovingPosition:[TSDTextPosition textPositionWithCharIndex:0 eolAffinity:v13 preferredPosition:? isPreferredStart:?], a3, a4, 0];
  if (a3 == 1)
  {
    v15 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:v9 backward:a5 == 0];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4 != 3)
      {
        if (a4 != 2 || v9 != v15 + v16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v9 == v15)
      {
LABEL_13:
        v17 = [(TSWPSelection *)self->_selection caretAffinity]== 1;
        LODWORD(v18) = 2143289344;
        v14 = [(TSWPEditingController *)self charIndexByMovingPosition:[TSDTextPosition textPositionWithCharIndex:0 eolAffinity:v18 preferredPosition:? isPreferredStart:?], 1, a4, 0];
      }
    }
  }

LABEL_14:
  v19 = [(TSWPStorage *)self->_storage range];
  if (v14 <= v19 + v20 && v14 >= [(TSWPStorage *)self->_storage range]|| (v21 = [(TSWPStorage *)self->_storage range], v9 <= v21 + v22) && (v14 = v9, v9 >= [(TSWPStorage *)self->_storage range]))
  {
    if (v14 != [(TSWPSelection *)self->_selection range]|| v26)
    {
      v27 = [[TSWPSelection alloc] initWithType:0 range:v14 styleInsertionBehavior:0 caretAffinity:0, a4 == 2];
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setSelection:v27 onModel:self->_storage withFlags:80];
    }
  }

  else
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleSwipeMoveCaretWithTextGranularity:textDirection:layoutDirection:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];

    [v23 handleFailureInFunction:v24 file:v25 lineNumber:2939 description:@"Swipe gesture tried to set invalid insertion point"];
  }
}

- (void)p_handleLongPressGesture:(id)a3
{
  [a3 locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController, "layerHost"), "asiOSCVC"), "view")}];
  v6 = v5;
  v8 = v7;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v10 = v9;
  v12 = v11;
  v30 = 0;
  v13 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController hitKnobAtPoint:&v30 returningRep:?];
  v14 = [a3 state];
  if ((v14 - 3) < 2)
  {
    objc_opt_class();
    [a3 targetRep];
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

      [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:a3];

      self->_knobTracker = 0;
    }

    else
    {
      [(TSWPEditingController *)self p_endAutoscroll];
      [(TSWPEditingController *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
      [(TSWPEditingController *)self protectedStopMagnification];
      if ([a3 state] == 3)
      {
        self->_shouldShowEditMenuForInsertionPoint = 1;
        [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController interactiveCanvasController](self "interactiveCanvasController")];
      }
    }
  }

  else if (v14 == 2)
  {
    if (self->_knobTracker)
    {
LABEL_25:
      [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:a3];
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
    if (v14 != 1)
    {
      return;
    }

    [(TSWPEditingController *)self p_clearEditMenuFlags];
    objc_opt_class();
    [a3 targetRep];
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
      [a3 locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController icc](self, "icc"), "layerHost"), "asiOSCVC"), "view")}];
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
    v28 = [(TSWPEditingController *)self selection];
    v29 = [(TSWPSelection *)v28 type];
    if (![(TSWPEditingController *)self pIsSelectionPlaceHolderTextWithSelection:v28]&& v29 != 2)
    {
      [(TSWPEditingController *)self p_beginMagnification:v28 forRep:v16 atPoint:v6, v8];
    }
  }
}

- (CGPoint)p_clampPointToLine:(CGPoint)a3 trackingRep:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 convertNaturalPointFromUnscaledCanvas:?];
  [a4 pinToNaturalBounds:1 andLastLineFragment:?];
  if (a4)
  {
    [a4 lineMetricsAtPoint:?];
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
    [a4 convertNaturalRectToUnscaledCanvas:{0, 0}];
    y = CGRectGetMidY(v14);
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)p_handleTapAndTouchGesture:(id)a3
{
  v41[2] = *MEMORY[0x277D85DE8];
  self->_ignoreFutureImmediatePresses = 1;
  [a3 unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  [a3 targetRep];
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
  v15 = [a3 numberOfTapsRequired];
  if (!v10 || (v16 = v15, [(TSWPSelection *)self->_selection type]== 3) || [(TSWPSelection *)self->_selection type]== 5)
  {
    [(TSWPEditingController *)self p_endAutoscroll];
    [(TSWPEditingController *)self p_cancelTapAndLongPressPreviousSelector];
    if ([a3 gestureState] == 3 || objc_msgSend(a3, "gestureState") == 4)
    {
      if (self->_knobTracker)
      {
        objc_opt_class();
        v17 = TSUDynamicCast();
        if (!v17)
        {
          v18 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
          [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3427, @"invalid nil value for '%s'", "gr"}];
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
    if ([a3 gestureState] == 1)
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

    else if ([a3 gestureState] == 2)
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
            v36 = [MEMORY[0x277D6C290] currentHandler];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
            [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3354, @"invalid nil value for '%s'", "gr"}];
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
          v29 = [MEMORY[0x277D6C290] currentHandler];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapAndTouchGesture:]"];
          [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3395, @"invalid nil value for '%s'", "gr"}];
        }

        [(TSWPEditingController *)self p_handleKnobDragGestureRecognizer:v28];

        self->_knobTracker = 0;
      }

      else
      {
        [(TSWPEditingController *)self protectedStopMagnification];
      }

      if ([a3 gestureState] != 5 && -[TSWPSelection isValid](-[TSWPEditingController selection](self, "selection"), "isValid"))
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

- (void)p_beginTapAndLongPress:(id)a3
{
  if (!self->_tapAndLongPressIsPossible)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginTapAndLongPress:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3463, @"_tapAndLongPressIsPossible should be YES"}];
  }

  self->_tapAndLongPressIsPossible = 0;
  if ([(TSWPSelection *)self->_selection type]!= 2)
  {
    v7 = [a3 objectForKeyedSubscript:@"TSWPEditingControllerTextRepKey"];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TSWPEditingControllerRepPointKey", "CGPointValue"}];
    v9 = v8;
    v11 = v10;
    if ([(TSWPInteractiveCanvasController *)self->_interactiveCanvasController suppressDoubleTapForSelection])
    {
      [(TSWPEditingController *)self tappedInRep:v7 point:2 tapCount:1 isTapHold:0 precise:v9, v11];
    }

    v12 = [(TSWPEditingController *)self selection];
    v13 = v12;
    if (!self->_knobTracker && [(TSWPSelection *)v12 isValid]&& [(TSWPSelection *)v13 isRange])
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

- (void)p_beginKnobTrackingSelection:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [(TSWPEditingController *)self charIndexInRep:a4 fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:a5.x, a5.y];
  v9 = [a3 range];
  [a3 range];
  if (v8 >= v9 + (v10 >> 1))
  {
    v11 = 10;
  }

  else
  {
    v11 = 11;
  }

  v12 = [a4 knobForTag:v11];
  if (v12)
  {
LABEL_5:
    [(TSWPEditingController *)self p_createKnobTracker:v12 forRep:a4 tapCount:2];
    [(TSWPEditingController *)self p_beginOperationAndTakeControl];
    return;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [a4 siblings];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v13);
      }

      v12 = [*(*(&v18 + 1) + 8 * v17) knobForTag:v11];
      if (v12)
      {
        goto LABEL_5;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        return;
      }
    }
  }
}

- (void)p_createKnobTracker:(id)a3 forRep:(id)a4 tapCount:(unint64_t)a5
{
  if (!self->_knobTracker || (v9 = [MEMORY[0x277D6C290] currentHandler], v10 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPEditingController p_createKnobTracker:forRep:tapCount:]"), objc_msgSend(v9, "handleFailureInFunction:file:lineNumber:description:", v10, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3548, @"expected nil value for '%s'", "_knobTracker"), !self->_knobTracker))
  {
    [(TSWPEditingController *)self setKnobTrackingTapCount:a5];
    v11 = [a4 newTrackerForKnob:a3];
    self->_knobTracker = v11;
  }
}

- (void)p_handleTapGestures:(id)a3
{
  v5 = [a3 gestureKind];
  [a3 unscaledLocationForICC:{-[TSWPEditingController interactiveCanvasController](self, "interactiveCanvasController")}];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [a3 targetRep];
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
  if (v5 == @"TSWPImmediateSingleTap")
  {
    if (!v11)
    {
      v24 = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapGestures:]"];
      [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3588, @"we should have gotten a valid textRep by now"}];
    }

    v26 = MEMORY[0x277D6C268];
    self->_originalSelectionRange = *MEMORY[0x277D6C268];
    [(TSWPEditingController *)self p_clearEditMenuFlags];
    if (!self->_editMenuIsVisible)
    {
      v27 = [(TSWPEditingController *)self selection];
      if ([(TSWPSelection *)v27 isValid])
      {
        v28 = [(TSWPSelection *)v27 range];
      }

      else
      {
        v28 = *v26;
        v29 = v26[1];
      }

      self->_originalSelectionRange.location = v28;
      self->_originalSelectionRange.length = v29;
    }

    [(TSWPEditingController *)self tappedInRep:v11 point:1 tapCount:0 isTapHold:0 precise:v13, v15];
    v22 = 0;
    v23 = 148;
    goto LABEL_26;
  }

  if (v5 != @"TSWPSecondarySingleTap" && (v5 == @"TSWPImmediateDoubleTap" || v5 == @"TSWPTwoFingerTap"))
  {
    v17 = v5 == @"TSWPImmediateDoubleTap" ? 2 : 4 * (v5 == @"TSWPTwoFingerTap");
    if (!v11)
    {
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleTapGestures:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3763, @"we should have gotten a valid textRep by now"}];
    }

    [(TSWPEditingController *)self tappedInRep:v11 point:v17 tapCount:0 isTapHold:0 precise:v13, v15];
    v20 = [(TSWPEditingController *)self selection];
    if (v20)
    {
      [(TSWPSelection *)v20 range];
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

- (BOOL)handleGesture:(id)a3
{
  v5 = [a3 gestureKind];
  self->_mostRecentGestureKind = v5;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layerHost];
  [TSUDynamicCast() cancelDelayedTapAction];
  v7 = v5 == @"TSWPOneFingerSwipe" || v5 == @"TSWPTwoFingerSwipe" || v5 == @"TSWPThreeFingerSwipe";
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
        if (v5 == @"TSWPOneFingerSwipe")
        {
          v10 = v19;
          v9 = v20;
          v11 = self;
          v12 = 0;
        }

        else
        {
          if (v5 == @"TSWPTwoFingerSwipe")
          {
            v17 = 1;
            [(TSWPEditingController *)self p_handleSwipeMoveCaretWithTextGranularity:1 textDirection:v20 layoutDirection:v19];
            return v17;
          }

          if (v5 != @"TSWPThreeFingerSwipe")
          {
            return 1;
          }

          v10 = v19;
          v9 = v20;
          v11 = self;
          v12 = 4;
        }

        [(TSWPEditingController *)v11 p_handleSwipeMoveCaretWithTextGranularity:v12 textDirection:v9 layoutDirection:v10];
      }

      return 1;
    }
  }

  else
  {
    if (v5 == @"TSWPLongPress" || v5 == @"TSWPImmediatePress")
    {
      [(TSWPEditingController *)self p_handleLongPressGesture:a3];
      return 1;
    }

    if (v5 == @"TSWPTapAndTouch" || v5 == @"TSWPDoubleTapAndTouch")
    {
      [(TSWPEditingController *)self p_handleTapAndTouchGesture:TSUProtocolCast()];
      return 1;
    }

    if (v5 == @"TSWPImmediateSingleTap" || v5 == @"TSWPTwoFingerTap" || v5 == @"TSWPSecondarySingleTap" || v5 == @"TSWPImmediateDoubleTap")
    {
      [(TSWPEditingController *)self p_handleTapGestures:a3];
      return 1;
    }

    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController handleGesture:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 3869, @"TSWPEditingController can't handle a gesture of kind %@", v5}];
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

  v4 = [(TSWPEditingController *)self selection];
  if (!v4)
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

    [(TSWPSelection *)v4 range];
    if (v6)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v7 = [(TSWPSelection *)v4 range];
  location = self->_originalSelectionRange.location;
  length = self->_originalSelectionRange.length;
  if ((location != *MEMORY[0x277D6C268] || length != *(MEMORY[0x277D6C268] + 8)) && v7 == location && v8 == length)
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

- (void)setAutoscroll:(id)a3
{
  autoscroll = self->_autoscroll;
  if (autoscroll != a3)
  {

    self->_autoscroll = 0;
    self->_autoscroll = a3;
  }
}

- (void)p_beginOperationAndTakeControl
{
  v3 = [(TSWPEditingController *)self interactiveCanvasController];
  if ([(TSDDynamicOperationController *)[(TSDInteractiveCanvasController *)v3 dynamicOperationController] isInOperation])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginOperationAndTakeControl]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4332, @"beginning WP operation in DOC when already in an operation"}];
  }

  [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)v3 tmCoordinator] registerTrackerManipulator:self];
  if ([(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)v3 tmCoordinator] takeControlWithTrackerManipulator:self])
  {
    v6 = [(TSDInteractiveCanvasController *)v3 dynamicOperationController];

    [(TSDDynamicOperationController *)v6 beginOperation];
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_beginOperationAndTakeControl]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
    [(TSDTrackerManipulatorCoordinator *)[(TSDInteractiveCanvasController *)v3 tmCoordinator] controllingTM];
    v10 = objc_opt_class();
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:4341 description:{@"could not take control with WP Editing Controller. Controlling TM is %@", NSStringFromClass(v10)}];
  }
}

- (void)p_endAutoscroll
{
  [(TSDAutoscroll *)[(TSWPEditingController *)self autoscroll] invalidate];

  [(TSWPEditingController *)self setAutoscroll:0];
}

- (void)p_handleKnobDragGestureRecognizer:(id)a3
{
  v5 = [a3 state] == 3 || objc_msgSend(a3, "state") == 4;
  self->_readyToEnd = v5;
  if (!self->_knobTracker)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_handleKnobDragGestureRecognizer:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4355, @"invalid nil value for '%s'", "_knobTracker"}];
  }

  if ([a3 state] == 3 || objc_msgSend(a3, "state") == 1)
  {
    [(TSWPTextKnobTracker *)self->_knobTracker setIgnoreNextCall:1];
  }

  v8 = [(TSWPEditingController *)self icc];
  [a3 locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController icc](self, "icc"), "layerHost"), "asiOSCVC"), "view")}];
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

  v12 = [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] dynamicOperationController];

  [(TSDDynamicOperationController *)v12 handleTrackerManipulator:self];
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

- (void)setInsertionPoint:(unint64_t)a3 withFlags:(unint64_t)a4
{
  v6 = [[TSWPSelection alloc] initWithRange:a3, 0];
  [(TSWPEditingController *)self setSelection:v6 withFlags:a4];
}

- (void)p_setRevertibleSelection:(id)a3
{
  [(TSKFidgetResolver *)self->_fidgetResolver pushValue:?];
  if ([a3 isValid])
  {
    v5 = [a3 end];
    if (v5 > [(TSWPStorage *)self->_storage length])
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4421, @"Selection extends past end of storage"}];
    }

    if ([a3 isInsertionPoint])
    {
      v8 = [a3 range];
      if (v8 < -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [a3 range]) & 0xFC00) == 0xDC00)
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4427, @"Insertion point is before the wrong half of a surrogate pair"}];
        a3 = [a3 copyWithNewRange:{objc_msgSend(a3, "range") + 1, 0}];
      }
    }

    else
    {
      v11 = [a3 start];
      if (v11 <= [(TSWPStorage *)self->_storage length])
      {
        v12 = [a3 start];
        if (v12 != -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [a3 start]) & 0xFC00) == 0xDC00)
        {
          v13 = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
          [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4436, @"Selection covers half of a surrogate pair"}];
        }
      }

      v15 = [a3 end];
      if (v15 <= [(TSWPStorage *)self->_storage length])
      {
        v16 = [a3 end];
        if (v16 != -[TSWPStorage length](self->_storage, "length") && (-[TSWPStorage characterAtIndex:](self->_storage, "characterAtIndex:", [a3 end]) & 0xFC00) == 0xDC00)
        {
          v17 = [MEMORY[0x277D6C290] currentHandler];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setRevertibleSelection:]"];
          [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4441, @"Selection covers half of a surrogate pair"}];
        }
      }
    }
  }

  v19 = a3;

  self->_selection = a3;
}

- (void)p_setSelection:(id)a3 withFlags:(unint64_t)a4 force:(BOOL)a5
{
  v51[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:4478 description:{@"[TSWPEditingController setSelection:] expected %@, got %@", v13, NSStringFromClass(v14)}];
    }
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  if ([(TSWPSelection *)v15 isValid])
  {
    v16 = [(TSWPSelection *)v15 end];
    if (v16 > [(TSWPStorage *)self->_storage length])
    {
      v17 = [MEMORY[0x277D6C290] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
      [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4480, @"Bad selection range"}];
    }
  }

  if (!a3)
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
  if ((a4 & 0x20) == 0 && (v22 & 1) == 0)
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

  if (a5 || (selection = self->_selection, selection != v15) && ![(TSWPSelection *)selection isEqual:v15])
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

    v25 = [(TSWPSelection *)v15 type];
    if (v25 <= 7)
    {
      if (((1 << v25) & 0xD0) != 0)
      {
        goto LABEL_46;
      }

      if (((1 << v25) & 0x28) != 0)
      {
        if (![(TSWPSelection *)v15 isRange])
        {
          v26 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
          v29 = @"replace selection isn't a insertion range";
          v30 = v26;
          v31 = v27;
          v32 = 4576;
LABEL_45:
          [v30 handleFailureInFunction:v31 file:v28 lineNumber:v32 description:v29];
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      if (v25 == 2)
      {
        if (![(TSWPSelection *)v15 isRange])
        {
          v33 = [MEMORY[0x277D6C290] currentHandler];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4583, @"topic selection isn't a range"}];
        }

        v35 = [(TSWPSelection *)v15 range];
        v37 = v36;
        if (v35 != [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:v35])
        {
          v38 = [MEMORY[0x277D6C290] currentHandler];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
          [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 4585, @"Topic selection doesn't start at paragraph boundary"}];
        }

        v40 = v35 + v37;
        v41 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:v40 - 1];
        if (v40 == v41 + v42)
        {
          goto LABEL_46;
        }

        v43 = [MEMORY[0x277D6C290] currentHandler];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"Topic selection doesn't end at paragraph boundary";
        v30 = v43;
        v31 = v44;
        v32 = 4586;
        goto LABEL_45;
      }
    }

    if (v25)
    {
      if (v25 != 1)
      {
        v47 = [MEMORY[0x277D6C290] currentHandler];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"illegal selection type";
        v30 = v47;
        v31 = v48;
        v32 = 4566;
        goto LABEL_45;
      }

      if (![(TSWPSelection *)v15 isInsertionPoint])
      {
        v45 = [MEMORY[0x277D6C290] currentHandler];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_setSelection:withFlags:force:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v29 = @"label selection isn't an insertion point";
        v30 = v45;
        v31 = v46;
        v32 = 4579;
        goto LABEL_45;
      }
    }

LABEL_46:
    *&self->_selectionLastModifiedWithKnob = self->_knobTracking;
    self->_currentSelectionFlags = a4;
    [(TSWPEditingController *)self p_setRevertibleSelection:v15];
    [(TSWPEditingController *)self selectionChangedWithFlags:a4 wpFlags:0];
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
  v3 = [(TSKFidgetResolver *)self->_fidgetResolver nonFidgetValue];
  if (v3)
  {
    v4 = v3;

    self->_selection = v4;
    currentSelectionFlags = self->_currentSelectionFlags;

    [(TSWPEditingController *)self selectionChangedWithFlags:currentSelectionFlags wpFlags:0];
  }
}

- (void)p_beginMagnification:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate:a3];
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

- (void)selectionChangedWithFlags:(unint64_t)a3 wpFlags:(unint64_t)a4
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (self->_storage)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v8[0] = @"TSWPEditingControllerEditor";
    v8[1] = @"TSWPEditingControllerSelectionFlagsKey";
    v9[0] = self;
    v9[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v6 postNotificationName:@"TSWPEditingControllerSelectionChanged" object:self->_storage userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
    [(TSWPEditingController *)self p_postSelectionContentsChangedNotification];
  }

  [(TSWPEditingController *)self dismissActivePopovers:a3];
  v7 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController editorController];
  if (![(TSWPEditingController *)self trackingKnobInParagraphMode])
  {
    [(TSDEditorController *)v7 editorDidChangeSelection:self withSelectionFlags:a3];
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [(TSDEditorController *)v7 editorDidChangeSelectionAndWantsKeyboard:self withSelectionFlags:a3];
  if ((a3 & 0x10000) != 0)
  {
LABEL_7:
    [(TSWPEditingController *)self p_clearEditMenuFlags];
  }

LABEL_8:
  self->_suppressEditMenu = (a3 & 0x20000) != 0;
  if (self->_magnifying)
  {
    if ([+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")])
    {
      [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
    }
  }
}

- (id)extendSelectionToParagraphs:(id)a3
{
  v5 = [(TSWPEditingController *)self storage];
  v6 = [a3 range];
  [(TSWPStorage *)self->_storage selectionRangeForCharIndex:[(TSWPStorage *)v5 textRangeForParagraphsInCharRange:v6, v7]];
  v8 = NSIntersectionRangeInclusive();
  v10 = [a3 copyWithNewRange:{v8, v9}];
  v11 = v10;

  return [(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v10];
}

- (id)p_columnForCharIndex:(unint64_t)a3 withStorage:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutsForModel:a4 withSelection:[TSWPSelection selectionWithRange:a3, 1]];
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
      v13 = [v12 columns];
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v19 = [v18 range];
          if (a3 >= v19 && a3 - v19 < v20)
          {
            return v18;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (BOOL)isParagraphModeWithSelection:(id)a3 onStorage:(id)a4
{
  if (!-[TSWPEditingController p_canEditTextString](self, "p_canEditTextString") || (-[TSDInteractiveCanvasController delegate](self->_interactiveCanvasController, "delegate"), v7 = TSUProtocolCast(), [a3 isValid]) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v7, "editorShouldAlwaysBeInParagraphMode") & 1) != 0)
  {
    LOBYTE(v8) = 1;
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [v7 editorAllowsParagraphMode]) != 0)
  {
    v8 = [a3 isRange];
    if (v8)
    {
      v9 = [a3 range];
      v11 = v10;
      v12 = [a4 selectedParagraphBreakCount:{v9, v10}];
      v13 = [a4 emptyParagraphCount:{v9, v11}];
      v14 = v13 != 0;
      [a4 paragraphIndexRangeForCharRange:{v9, v11}];
      LOBYTE(v8) = 0;
      if (a4)
      {
        if (v15 >= 2 && v12 != v14)
        {
          if ([a3 type] == 3)
          {
            LOBYTE(v8) = 0;
          }

          else
          {
            v8 = [(TSWPSelection *)self->_selection type];
            v16 = v8 == 5;
            LOBYTE(v8) = v8 != 5;
            if (!v16 && v12 - v14 == 1)
            {
              v17 = v11 + v9 - 1;
              v18 = [(TSWPEditingController *)self p_columnForCharIndex:v9 withStorage:a4];
              v19 = [(TSWPEditingController *)self p_columnForCharIndex:v17 withStorage:a4];
              v20 = [v18 lineIndexForCharIndex:v9 eol:0];
              v21 = [v19 lineIndexForCharIndex:v17 eol:0] - v20;
              if (!v13)
              {
                ++v21;
              }

              LOBYTE(v8) = v18 != v19 || v21 > 2;
            }
          }
        }
      }
    }
  }

  return v8;
}

- (BOOL)trackingKnobInParagraphMode
{
  v3 = [(TSWPEditingController *)self knobTracking];
  if (v3)
  {

    LOBYTE(v3) = [(TSWPEditingController *)self isInParagraphMode];
  }

  return v3;
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
    v4 = [(TSWPSelection *)self->_selection range];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__TSWPEditingController_countOfHyperlinksInUserSelection__block_invoke;
    v8[3] = &unk_279D49A60;
    v8[4] = &v9;
    [(TSWPStorage *)storage enumerateSmartFieldsWithAttributeKind:6 inRange:v4 usingBlock:v5, v8];
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

- (id)p_hitRepWithPoint:(CGPoint)a3 keyboardAdjustmentDelta:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:a3.x, a3.y + a4];
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

- (unint64_t)textSelectionGranularityForTapCount:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    return 4 * (a3 == 5);
  }

  else
  {
    return a3 - 1;
  }
}

- (void)tappedInRep:(id)a3 point:(CGPoint)a4 tapCount:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a4.y;
  x = a4.x;
  [(TSWPEditingController *)self p_sendHandleTapNotification];
  v14 = [(TSWPEditingController *)self textSelectionGranularityForTapCount:a5];
  if (a5)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v17) = 0;
  [(TSWPEditingController *)self p_setTappedSelection:[(TSWPEditingController *)self p_selectionForRep:a3 point:v14 textSelectionGranularity:v8 isTapHold:v7 precise:v15 includeListLabels:0 allowPastBreak:x selectsEntireLink:y, v17]];
  if (v8)
  {
    [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] delegate];
    v16 = TSUProtocolCast();
    if (objc_opt_respondsToSelector())
    {

      [v16 didSetTappedSelectionWithWPEditor:self onWPRep:a3];
    }
  }
}

- (void)tappedOnKnob:(id)a3
{
  v4 = [a3 tag];
  selection = self->_selection;
  if (v4 == 11)
  {
    v6 = [(TSWPSelection *)selection start];
  }

  else
  {
    v6 = [(TSWPSelection *)selection end];
  }

  v7 = v6;
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

- (void)p_setTappedSelection:(id)a3
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

  [(TSDInteractiveCanvasController *)interactiveCanvasController setSelection:a3 onModel:storage withFlags:v5];
}

- (BOOL)p_hitListLabelAtCharIndex:(unint64_t)a3 atNaturalPoint:(CGPoint)a4 inRep:(id)a5
{
  if (!a5)
  {
    return 0;
  }

  y = a4.y;
  x = a4.x;
  if (![(TSWPEditingController *)self p_respondsToListGestures])
  {
    return 0;
  }

  [a5 labelRectForCharIndex:a3];
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

- (id)p_selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 selectsEntireLink:(BOOL)a7
{
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:x, y];
  v14 = TSUDynamicCast();
  if (![v14 isEditing])
  {
    return 0;
  }

  [v14 convertNaturalPointFromUnscaledCanvas:{x, y}];
  [v14 pinToClosestColumn:?];
  LOBYTE(v16) = a7;
  return [(TSWPEditingController *)self p_selectionForRep:v14 point:a4 textSelectionGranularity:v9 isTapHold:1 precise:0 includeListLabels:v8 allowPastBreak:v16 selectsEntireLink:?];
}

- (id)p_selectionForRep:(id)a3 point:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 includeListLabels:(BOOL)a8 allowPastBreak:(BOOL)a9 selectsEntireLink:(BOOL)a10
{
  v10 = a9;
  v11 = a8;
  y = a4.y;
  x = a4.x;
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
    v20 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:v10 allowPastBreak:&v123 isAtEndOfLine:v124 leadingEdge:x, y];
  }

  else
  {
    v20 = [(TSWPStorage *)self->_storage length];
    v21 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_selectionForRep:point:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:selectsEntireLink:]"];
    [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5299, @"The selection for the rep's storage is not the same as the editor's storage."}];
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
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v32 = v29;
      if ([(TSWPEditingController *)self charIndexInRep:v18 fromPoint:v10 allowPastBreak:0 allowNotFound:&v123 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
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
      if (a5 != 3)
      {
        width = v119;
        if (a5 != 4)
        {
          goto LABEL_120;
        }

        width = COERCE_DOUBLE([(TSWPStorage *)self->_storage range]);
        goto LABEL_65;
      }

      if ([(TSWPEditingController *)self charIndexInRep:v18 fromPoint:v10 allowPastBreak:0 allowNotFound:&v123 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
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

  if (a5)
  {
    if (a5 == 1)
    {
      v34 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:v10 allowPastBreak:1 allowNotFound:1 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
      v35 = [(TSWPEditingController *)self charIndexInRep:v18 fromPoint:v10 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
      if (v11 && [(TSWPSelection *)self->_selection isValid]&& [(TSWPSelection *)self->_selection type]== 2 && [(TSWPEditingController *)self p_hitListLabelAtCharIndex:v24 atNaturalPoint:v18 inRep:x, y])
      {
        width = COERCE_DOUBLE([(TSWPSelection *)self->_selection range]);
        length = v36;
        v38 = self->_storage;
        v39 = [(TSWPSelection *)self->_selection start];
        if (v38)
        {
          [(TSWPStorage *)v38 paragraphEnumeratorAtCharIndex:v39 styleProvider:0];
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
  if (v11)
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
      v67 = [(TSWPEditingController *)self selection];
      v32 = v29;
      if (v65)
      {
        v68 = v67;
        if ([(TSWPSelection *)v67 isValid])
        {
          if ([(TSWPSelection *)v68 type]== 2)
          {
            v69 = [(TSWPSelection *)v68 range];
            if (v69 <= *&width && v69 + v70 >= *&width + v65)
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
  if (a7 || v47)
  {
    objc_opt_class();
    if (TSUDynamicCast())
    {
      v61 = a10;
    }

    else
    {
      v61 = 1;
    }

    if (v61)
    {
      v31 = 7;
    }

    else
    {
      v31 = 0;
    }

    if (v61)
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

      v62 = [(TSWPSelection *)self->_selection range];
      width = rect.size.width;
      v31 = 5;
      if (v62 != *&rect.size.width || v63 != *&rect.size.height)
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
        v102 = [MEMORY[0x277D6C290] currentHandler];
        v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_selectionForRep:point:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:selectsEntireLink:]"];
        [v102 handleFailureInFunction:v103 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5465, @"invalid charIndex for visual selection"}];
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

- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_storage == a4)
  {
    if ([(TSWPSelection *)[(TSWPEditingController *)self selection] isValid])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(a3);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            if ([v10 kind] == 1)
            {
              [v10 details];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [objc_msgSend(v10 "details")];
                v12 = [v11 range];
                v14 = v13;
                if ([objc_msgSend(objc_msgSend(v10 "details")])
                {
                  [(TSWPEditingController *)self setSelection:v11];
                }

                else
                {
                  v15 = [(TSWPStorage *)self->_storage range];
                  v17 = v16;
                  v18 = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
                  if (v15 <= v18 && v15 + v17 >= v18 + v19)
                  {
                    if ([(TSWPSelection *)[(TSWPEditingController *)self selection] intersectsRange:v12, v14]|| [(TSWPSelection *)[(TSWPEditingController *)self selection] isInsertionPoint]&& (v20 = [(TSWPSelection *)[(TSWPEditingController *)self selection] start], v20 == [(TSWPStorage *)self->_storage length]) && v12 + v14 == [(TSWPStorage *)self->_storage length])
                    {
                      [(TSWPEditingController *)self p_postSelectionContentsChangedNotification];
                      return;
                    }
                  }
                }
              }
            }
          }

          v7 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)updateAfterAutoscroll:(id)a3
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

    [(TSWPTextKnobTracker *)knobTracker updateAfterAutoscroll:a3 atPoint:x, y];
  }

  else
  {
    v13 = +[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier];
    [v13 setAutoscrollDirections:{objc_msgSend(a3, "directions")}];
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
  v2 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController documentRoot];

  return [(TSKDocumentRoot *)v2 pasteboardController];
}

- (_NSRange)smartDeletionSelection:(id)a3 isVisual:(BOOL *)a4
{
  v7 = [a3 range];
  v9 = v8;
  if (a4)
  {
    *a4 = [a3 isVisual];
  }

  if ([a3 visualRangeCount] <= 1 && objc_msgSend(a3, "isRange"))
  {
    v7 = [a3 superRange];
    v9 = v10;
    if (a4)
    {
      *a4 = 0;
    }

    v11 = [(TSWPStorage *)self->_storage length];
    v36 = 0;
    v37 = 0;
    [(TSWPStorage *)self->_storage smartFieldAtCharIndex:v7 attributeKind:6 effectiveRange:&v36];
    v12 = v7 + v9;
    if (v7)
    {
      v13 = v36 == v7;
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
      v18 = [(TSWPStorage *)self->_storage characterAtIndex:v7 - 1];
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
        v29 = [(TSWPStorage *)self->_storage characterAtIndex:v7 + v9];
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
        --v7;
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

  if ([a3 isRange] && objc_msgSend(a3, "isVisual") && -[TSWPEditingController textStorage:hasWhitespaceBoundedWordAtSelection:](self, "textStorage:hasWhitespaceBoundedWordAtSelection:", -[TSWPEditingController storage](self, "storage"), a3))
  {
    LOBYTE(v36) = 0;
    v22 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:[(TSWPEditingController *)self p_leftEdgeForSelection:a3 withLeadingEdge:&v36] inDirection:3];
    if (IsWhitespaceCharacter([(TSWPStorage *)[(TSWPEditingController *)self storage] characterAtIndex:v22]))
    {
      v23 = [a3 superRange];
      if (v22 >= v23 && v22 - v23 < v24)
      {
        goto LABEL_49;
      }
    }

    v25 = [(TSWPEditingController *)self p_rightEdgeForSelection:a3 withLeadingEdge:&v36];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [MEMORY[0x277D6C290] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController smartDeletionSelection:isVisual:]"];
      [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5914, @"Invalid index for right edge of selection"}];
      goto LABEL_50;
    }

    v22 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v25 inDirection:2];
    if (IsWhitespaceCharacter([(TSWPStorage *)[(TSWPEditingController *)self storage] characterAtIndex:v22]))
    {
LABEL_49:
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [(TSWPEditingController *)self p_adjustVisualSelection:a3 withOtherSelection:[(TSWPEditingController *)self logicalToVisualSelection:[TSWPSelection selectionWithRange:v22, 1]]];
        v9 = v35;
        if (!a4)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

LABEL_50:
    v31 = [MEMORY[0x277D6C290] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController smartDeletionSelection:isVisual:]"];
    [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5927, @"A spaceCharIndexToRemove to remove should always be found"}];
    if (!a4)
    {
      goto LABEL_52;
    }

LABEL_51:
    *a4 = 1;
  }

LABEL_52:
  v33 = v7;
  v34 = v9;
  result.length = v34;
  result.location = v33;
  return result;
}

- (CGRect)overrideCaretRectForSelection:(id)a3
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

- (BOOL)textStorage:(id)a3 hasWhitespaceBoundedWordAtSelection:(id)a4
{
  v30 = 0;
  if ([a4 isVisual])
  {
    v7 = [(TSWPEditingController *)self p_leftEdgeForSelection:a4 withLeadingEdge:&v30];
    v8 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v7 inDirection:3];
    if ((IsWhitespaceCharacter([a3 characterAtIndex:v7]) & 1) != 0 || (v8 == objc_msgSend(a3, "length") || IsWhitespaceCharacter(objc_msgSend(a3, "characterAtIndex:", v8))) && TSWPCJKLanguageForInputLanguageString(objc_msgSend(a3, "languageForTextRange:useStringTokenizer:useCreationLanguage:", v7, 1, 1, 0)) == 6)
    {
      v9 = [(TSWPEditingController *)self p_rightEdgeForSelection:a4 withLeadingEdge:&v30];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textStorage:hasWhitespaceBoundedWordAtSelection:]"];
        [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 5987, @"Invalid index for right edge of selection"}];
LABEL_15:
        LOBYTE(v21) = 0;
        v22 = 1;
        return v21 & v22;
      }

      v19 = v9;
      v20 = [a3 characterAtIndex:v9];
      if (IsParagraphBreakingCharacter(v20))
      {
        goto LABEL_15;
      }

      if (IsWhitespaceCharacter(v20))
      {
        goto LABEL_26;
      }

      v23 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:v19 inDirection:2];
      if (v23 != [a3 length] && !IsWhitespaceCharacter(objc_msgSend(a3, "characterAtIndex:", v23)))
      {
        goto LABEL_15;
      }

      v24 = v19 <= v23 ? v23 : v19;
      v25 = v19 >= v23 ? v23 : v19;
      v22 = 1;
      if (TSWPCJKLanguageForInputLanguageString([a3 languageForTextRange:v25 useStringTokenizer:v24 - v25 useCreationLanguage:{1, 0}]) == 6)
      {
LABEL_26:
        v17 = [a4 range];
        v16 = a3;
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

  if (![a4 isValid])
  {
    goto LABEL_30;
  }

  if (![a4 isRange])
  {
    goto LABEL_30;
  }

  v12 = [a4 range];
  v14 = v13;
  if (([objc_msgSend(MEMORY[0x277CCA900] "preSmartSet")] & 1) == 0 && (objc_msgSend(a3, "wordAtCharIndex:includePreviousWord:", v12, 0) != v12 || TSWPCJKLanguageForInputLanguageString(objc_msgSend(a3, "languageForTextRange:useStringTokenizer:useCreationLanguage:", v12, 1, 1, 0)) != 6))
  {
    goto LABEL_30;
  }

  v15 = [a3 characterAtIndex:v12 + v14 - 1];
  if (IsParagraphBreakingCharacter(v15))
  {
    goto LABEL_15;
  }

  if ([objc_msgSend(MEMORY[0x277CCA900] "postSmartSet")])
  {
LABEL_13:
    v16 = a3;
    v17 = v12;
    v18 = v14;
LABEL_27:
    v21 = [v16 isAllWhitespaceInRange:{v17, v18}] ^ 1;
    v22 = v21;
    return v21 & v22;
  }

  v22 = 1;
  v28 = [a3 wordAtCharIndex:v12 + v14 includePreviousWord:1];
  LOBYTE(v21) = 0;
  if (v29 && v28 + v29 == v12 + v14)
  {
    v22 = 1;
    if (TSWPCJKLanguageForInputLanguageString([a3 languageForTextRange:v12 + v14 - 1 useStringTokenizer:1 useCreationLanguage:{1, 0}]) != 6)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  return v21 & v22;
}

- (BOOL)p_selectionIsSimpleInsertionPoint
{
  v3 = [(TSWPSelection *)self->_selection isInsertionPoint];
  if (v3)
  {
    LOBYTE(v3) = [(TSWPSelection *)self->_selection type]!= 3 && [(TSWPSelection *)self->_selection type]!= 5 && [(TSWPSelection *)self->_selection type]!= 4 && [(TSWPStorage *)self->_storage length]!= 0;
  }

  return v3;
}

- (BOOL)p_canSelectAllWithSender:(id)a3
{
  if ([TSDCanvasEditor physicalKeyboardIsSender:a3])
  {
    if ([(TSWPSelection *)self->_selection isValid])
    {
      v4 = [(TSWPSelection *)self->_selection range];
      v6 = v5;
      if (v4 != [(TSWPStorage *)self->_storage range]|| v6 != v7)
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

- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v7 = [TSDCanvasEditor physicalKeyboardIsSender:a4];
  if ([(TSWPEditingController *)self p_canEditTextString])
  {
    v8 = [(TSWPSelection *)self->_selection isValid];
    if (sel_deleteObject_ == a3)
    {
      if (!v8)
      {
        return -1;
      }

LABEL_25:
      if ([(TSWPSelection *)self->_selection type]!= 4)
      {
        v8 = [(TSWPSelection *)self->_selection isRange];
LABEL_38:
        v11 = !v8;
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
    if (sel_deleteObject_ == a3)
    {
      return -1;
    }

    v8 = 0;
  }

  if (sel_delete_ == a3)
  {
    if (!v8 || !v7)
    {
      return -1;
    }

    goto LABEL_25;
  }

  if (sel_copy_ == a3)
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

  if (sel_select_ == a3)
  {
    if (!v7)
    {
      return -1;
    }

LABEL_35:
    v8 = [(TSWPEditingController *)self p_selectionIsSimpleInsertionPoint];
    goto LABEL_38;
  }

  if (sel_customSelect_ == a3)
  {
    goto LABEL_35;
  }

  if (sel_selectAll_ == a3)
  {
    if (!v7)
    {
      return -1;
    }

LABEL_37:
    v8 = [(TSWPEditingController *)self p_canSelectAllWithSender:a4];
    goto LABEL_38;
  }

  if (sel_customSelectAll_ == a3)
  {
    goto LABEL_37;
  }

  if (sel_replaceWithSuggestion0_ == a3 || sel_replaceWithSuggestion1_ == a3 || sel_replaceWithSuggestion2_ == a3 || sel_replaceWithSuggestion3_ == a3 || sel_replaceWithSuggestion4_ == a3 || sel_noReplacementsFound_ == a3)
  {
    goto LABEL_38;
  }

  if (sel_definitionAction_ == a3)
  {
    storage = self->_storage;
    v13 = [(TSWPSelection *)self->_selection range];
    if ([(TSWPStorage *)storage hasSmartFieldsInRange:v13, v14])
    {
      return -1;
    }

    if (![(TSWPSelection *)self->_selection isRange])
    {
      return -1;
    }

    v15 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:[(TSWPSelection *)self->_selection range] backward:0];
    v17 = v16;
    v18 = [(TSWPSelection *)self->_selection range];
    if (v15 > v18)
    {
      return -1;
    }

    if (v15 + v17 >= v18 + v19)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (sel_endEditingAndSelectParent_ == a3)
  {
    return ([(TSWPStorage *)self->_storage wpKind]& 0xFFFFFFFE) == 2;
  }

  else
  {

    return [(TSWPEditingController *)self p_canPerformOptInEditorAction:a3 withSender:a4];
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
  v4 = [(TSWPSelection *)self->_selection superRange];
  v6 = v5;
  v7 = [(TSWPEditingController *)self currentLayoutParent];

  return [(TSWPStorage *)storage stringEquivalentFromRange:v4 withLayoutParent:v6, v7];
}

- (void)copy:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(TSWPSelection *)self->_selection isRange])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(TSWPStorage *)self->_storage stylesheet])
    {
      v5 = [(TSWPSelection *)self->_selection range];
      v7 = [(TSWPStorage *)self->_storage nsAttributedSubstringFromRange:v5 scale:v6, 1.0];
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
  v3 = [(TSWPSelection *)self->_selection isValid];
  if (v3)
  {
    [(TSWPSelection *)self->_selection range];
    if (v4)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)self->_selection start]];
      LOBYTE(v3) = v6 == (v5 + v6 != [(TSWPStorage *)self->_storage length]);
    }
  }

  return v3;
}

- (BOOL)canSetWritingDirection:(int)a3
{
  v5 = [(TSWPEditingController *)self p_canEditTextString];
  if (!v5)
  {
    return v5;
  }

  v5 = [(TSWPSelection *)self->_selection isValid];
  if (!v5)
  {
    return v5;
  }

  v5 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  if (!v5)
  {
    return v5;
  }

  if ([(TSWPSelection *)self->_selection type]== 3 || [(TSWPSelection *)self->_selection type]== 5 || [(TSWPSelection *)self->_selection type]== 4)
  {
    goto LABEL_14;
  }

  if ((a3 + 1) > 2)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController canSetWritingDirection:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7859, @"Unknown writing direction."}];
    goto LABEL_14;
  }

  v6 = [(TSWPSelection *)self->_selection start];
  if (v6 > [(TSWPStorage *)self->_storage length])
  {
LABEL_14:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = [TSWPResolvePropertyForStyles(0 -[TSWPStorage paragraphStyleAtCharIndex:"paragraphStyleAtCharIndex:effectiveRange:" effectiveRange:{v6, 0), 44, 0), "intValue"}](self->_storage];
  if (v5 == -1)
  {
    v5 = [(TSWPStorage *)self->_storage writingDirectionForParagraphAtCharIndex:v6];
    if (v5 == -1)
    {
      v5 = [-[TSWPStorage documentRoot](self->_storage "documentRoot")];
    }
  }

  LOBYTE(v5) = v5 != a3;
  return v5;
}

- (int64_t)writingDirectionForCharIndex:(unint64_t)a3
{
  if ([(TSWPStorage *)self->_storage length]< a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController writingDirectionForCharIndex:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7956, @"Bad char index into storage."}];
  }

  if ([(TSWPStorage *)self->_storage length]>= a3)
  {
    v7 = [(TSWPStorage *)self->_storage writingDirectionForParagraphAtCharIndex:a3]+ 1;
    if (v7 < 3)
    {
      return v7 - 1;
    }

    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController writingDirectionForCharIndex:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 7973, @"Unknown writing direction."}];
  }

  return -1;
}

- (void)referenceLibrarayViewControllerWasDismissed:(id)a3
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {

    self->_definitionViewController = 0;
    self->_definitionPopoverController = 0;
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:0];
  }
}

- (void)popoverControllerDidDismissPopoverBasedViewController:(id)a3
{
  v3 = self;
}

- (void)select:(id)a3
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

- (void)p_addInsertItemsIntoMenu:(id)a3
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  TSUProtocolCast();
  if (TSUPhoneUI() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    return;
  }

  v5 = [(TSWPEditingController *)self acceptsTabs];
  v6 = [(TSWPEditingController *)self acceptsLineBreaks]+ v5;
  v7 = [(TSWPEditingController *)self acceptsColumnBreaks];
  v8 = v6 + v7 + [(TSWPEditingController *)self acceptsPageBreaks];
  if (v8 >= 2)
  {
    v9 = MEMORY[0x277D75728];
    v10 = [TSWPBundle() localizedStringForKey:@"Insert" value:&stru_287D36338 table:@"TSText"];
    v11 = sel_showInsertBreak_;
LABEL_5:
    v12 = [v9 menuItemWithTitle:v10 action:v11];

    [a3 addObject:v12];
    return;
  }

  if (v8 == 1)
  {
    if ([(TSWPEditingController *)self acceptsTabs])
    {
      [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Tab", &stru_287D36338, @"TSTextPlatform", sel_insertTab_)}];
    }

    if ([(TSWPEditingController *)self acceptsLineBreaks])
    {
      [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Line Break", &stru_287D36338, @"TSTextPlatform", sel_insertLineBreak_)}];
    }

    if ([(TSWPEditingController *)self acceptsColumnBreaks])
    {
      [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Column Break", &stru_287D36338, @"TSTextPlatform", sel_insertColumnBreak_)}];
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

- (void)p_addCommonEditItemsIntoMenu:(id)a3
{
  [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Select", &stru_287D36338, @"TSTextPlatform", sel_customSelect_)}];
  [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Select All", &stru_287D36338, @"TSTextPlatform", sel_customSelectAll_)}];
  [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Cut", &stru_287D36338, @"TSTextPlatform", sel_cutObject_)}];
  [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Copy", &stru_287D36338, @"TSTextPlatform", sel_copyObject_)}];
  [a3 addObject:{objc_msgSend(MEMORY[0x277D75728], "menuItemWithTitle:action:", objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Paste", &stru_287D36338, @"TSTextPlatform", sel_pasteObject_)}];
  v4 = [MEMORY[0x277D75728] menuItemWithTitle:objc_msgSend(TSWPBundle() action:{"localizedStringForKey:value:table:", @"Delete", &stru_287D36338, @"TSTextPlatform", sel_deleteObject_}];

  [a3 addObject:v4];
}

- (id)extraMenuItems
{
  v3 = [MEMORY[0x277CBEB18] array];

  self->_suggestions = 0;
  if (![(TSWPSelection *)self->_selection isValid]|| [(TSWPSelection *)self->_selection type]!= 3 && [(TSWPSelection *)self->_selection type]!= 5 || [(TSWPEditingController *)self pIsSelectionPlaceHolderText])
  {
    [(TSWPStorage *)[(TSWPEditingController *)self storage] wpKind];
    [(TSWPEditingController *)self p_addCommonEditItemsIntoMenu:v3];
  }

  return v3;
}

- (void)definitionAction:(id)a3
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    storage = self->_storage;
    v5 = [(TSWPSelection *)self->_selection range];
    v7 = [(TSWPStorage *)storage substringWithRange:v5, v6];

    self->_definitionViewController = 0;
    v8 = [(UIReferenceLibraryViewController *)[TSWPReferenceLibraryViewController alloc] initWithTerm:v7];
    self->_definitionViewController = v8;
    [(TSWPReferenceLibraryViewController *)v8 setDelegate:self];
    if (TSUPhoneUI())
    {
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:1];
      v9 = [(TSWPEditingController *)self p_viewControllerForPresenting];
      if (!v9)
      {
        v9 = [objc_msgSend(objc_msgSend(-[TSWPEditingController p_documentViewController](self "p_documentViewController")];
      }

      definitionViewController = self->_definitionViewController;

      [v9 presentViewController:definitionViewController animated:1 completion:0];
    }

    else
    {

      self->_definitionPopoverController = 0;
      v11 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_definitionViewController];
      self->_definitionPopoverController = v11;
      v12 = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
      [(TSWPEditingController *)self p_firstRectForRange:v12 actualRange:v13, 0];
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

- (void)styleAction:(id)a3
{
  v4 = [TSWPSelection alloc];
  v5 = [(TSWPSelection *)self->_selection superRange];
  v7 = [(TSWPSelection *)v4 initWithType:4 range:v5 styleInsertionBehavior:v6 caretAffinity:[(TSWPSelection *)self->_selection styleInsertionBehavior], [(TSWPSelection *)self->_selection caretAffinity]];
  [(TSWPEditingController *)self setSelection:v7];

  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutInvalidated];
  self->_showNextEditMenu = 1;
}

- (void)p_switchToReplaceSelection
{
  if (![(TSWPSelection *)self->_selection isRange])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_switchToReplaceSelection]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 8589, @"shouldn't change an insertion point to a replacement selection"}];
  }

  v5 = [(TSWPEditingController *)self rangeOfWordEnclosingCharIndex:[(TSWPSelection *)self->_selection range] backward:0];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [[TSWPSelection alloc] initWithType:3 range:v5 styleInsertionBehavior:v6 caretAffinity:[(TSWPSelection *)self->_selection styleInsertionBehavior], [(TSWPSelection *)self->_selection caretAffinity]];
    [(TSWPEditingController *)self setSelection:v7];
  }
}

- (void)selectAll:(id)a3
{
  v5 = [TSWPSelection alloc];
  storage = self->_storage;
  if ([(TSWPSelection *)self->_selection isValid])
  {
    v7 = [(TSWPSelection *)self->_selection start];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(TSWPStorage *)storage selectionRangeForCharIndex:v7];
  v11 = [(TSWPSelection *)v5 initWithRange:v8, v9];
  if ([TSDCanvasEditor physicalKeyboardIsSender:a3])
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
    v3 = [(TSWPSelection *)self->_selection start];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:v3 left:[(TSWPSelection *)self->_selection isInsertionPoint] effectiveRange:0];
  v5 = [(TSWPStorage *)self->_storage paragraphStyleAtCharIndex:v3 effectiveRange:0];
  v7[0] = self->_insertionStyle;
  v7[1] = v4;
  v7[2] = v5;
  return TSWPResolvePropertyForStyles(v7, 3uLL, 18, 0);
}

- (BOOL)canHighlightCurrentSelection
{
  v3 = [(TSWPEditingController *)self p_canEditTextString];
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

  v7 = v3 & v6 & [(TSWPStorage *)[(TSWPEditingController *)self storage] highlightsAllowed];
  return !self->_hostEditor && v7;
}

- (BOOL)canShowCommentForCurrentSelectionGetHighlight:(id *)a3 range:(_NSRange *)a4
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
        v9 = [(TSWPSelection *)self->_selection superRange];
        v7 = [(TSWPStorage *)storage firstHighlightForSelectionRange:v9 outRange:v10, &v16];
        if (v7)
        {
          v11 = v7;
          v12 = v16;
          v13 = [(TSWPSelection *)self->_selection superRange];
          if (v12.location <= v13 && v12.length + v12.location >= v13 + v14)
          {
            if (a3)
            {
              *a3 = v11;
            }

            if (a4)
            {
              *a4 = v16;
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
  v3 = [(TSWPEditingController *)self p_canEditTextString];
  if (v3)
  {
    v3 = [(TSWPSelection *)self->_selection isValid];
    if (v3)
    {
      v3 = [(TSWPStorage *)[(TSWPEditingController *)self storage] highlightsAllowed];
      if (v3)
      {
        storage = self->_storage;
        v5 = [(TSWPSelection *)self->_selection superRange];
        LOBYTE(v3) = [(TSWPStorage *)storage firstHighlightForSelectionRange:v5 outRange:v6, 0]!= 0;
      }
    }
  }

  return v3;
}

- (BOOL)canAddOrShowComment
{
  v3 = [(TSWPSelection *)self->_selection isValid];
  if (v3)
  {
    if ([(TSWPEditingController *)self canRemoveHighlightForCurrentSelection])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(TSWPEditingController *)self canHighlightCurrentSelection];
    }
  }

  return v3;
}

- (id)p_highlightSelectionForSelection:(id)a3
{
  if ([a3 isInsertionPoint])
  {
    v5 = [(TSWPStorage *)self->_storage rangeForSelectionWithInsertionSelection:a3];
  }

  else
  {
    v5 = [a3 superRange];
  }

  return [TSWPSelection selectionWithRange:v5, v6];
}

- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(TSWPEditingController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)v5 convertBoundsToUnscaledPoint:x, y];
  v6 = [(TSDInteractiveCanvasController *)v5 hitRep:0 withGesture:&__block_literal_global_783 passingTest:?];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isEditing] & 1) == 0)
  {

    [(TSDInteractiveCanvasController *)v5 beginEditingRep:v6];
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

- (unint64_t)closestCharIndexToPoint:(CGPoint)a3 isAtEndOfLine:(BOOL *)a4
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:v7, v9];
  v10 = TSUDynamicCast();
  [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];

  return [(TSWPEditingController *)self charIndexInRep:v10 fromPoint:1 allowPastBreak:a4 isAtEndOfLine:0 leadingEdge:?];
}

- (unint64_t)p_charIndexAtPoint:(CGPoint)a3 isAtEndOfLine:(BOOL *)a4
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledPoint:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:v7, v9];
  v10 = TSUDynamicCast();
  [v10 convertNaturalPointFromUnscaledCanvas:{v7, v9}];

  return [(TSWPEditingController *)self charIndexInRep:v10 fromPoint:0 allowPastBreak:1 allowNotFound:a4 isAtEndOfLine:?];
}

- (BOOL)p_isCharIndex:(unint64_t)a3 withEolAffinity:(BOOL)a4 atBoundary:(int)a5 inDirection:(int64_t)a6
{
  v8 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v11 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v13 = v11 + v12;
  if (a3)
  {
    v14 = a3 - (v11 + v12 == a3);
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
  if (a5 <= 1)
  {
    if (a5)
    {
      v49 = a6;
      if (a5 != 1)
      {
        goto LABEL_51;
      }

      if (a6 > 1)
      {
        v41 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:v14];
        v42 = 2;
        if (v41 == 1)
        {
          v42 = 3;
        }

        v25 = v42 == a6;
      }

      else
      {
        v25 = a6 == 0;
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

  if (a5 == 2)
  {
    v26 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3];
    location = v26;
    length = v28;
    if (a3 && v26 == a3)
    {
      v59.location = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3 - 1];
      v59.length = v30;
      v58.location = location;
      v58.length = length;
      v31 = NSUnionRange(v58, v59);
      location = v31.location;
      length = v31.length;
    }

    v32 = *MEMORY[0x277CBECE8];
    v33 = [(TSWPStorage *)self->_storage string];
    v60.location = location;
    v60.length = length;
    v34 = CFStringTokenizerCreate(v32, v33, v60, 1uLL, 0);
    if (CFStringTokenizerGoToTokenAtIndex(v34, a3))
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

  if (a5 == 3)
  {
    v15 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3];
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

  v49 = a6;
  if (a5 == 4)
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [-[TSWPEditingController p_layoutTargetForCharIndex:eolAffinity:](self p_layoutTargetForCharIndex:a3 eolAffinity:{v8), "columns"}];
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
        v22 = [v21 range];
        v24 = v14 < v22 || v14 - v22 >= v23;
        if (!v24 || v8 && v14 == v22 + v23)
        {
          v39 = [v21 lineIndexForCharIndex:v14 eol:v8];
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
  a6 = v49;
  if (a5 == 5)
  {
    if (v51 == a3 && v49 <= 4 && ((1 << v49) & 0x1A) != 0)
    {
      LOBYTE(v44) = 1;
    }

    else
    {
      LOBYTE(v44) = 0;
      if (v13 == a3 && v49 < 6)
      {
        LODWORD(v44) = 0x25u >> v49;
      }
    }

    return v44 & 1;
  }

LABEL_56:
  if (v15 != a3 && v15 + v16 != a3)
  {
    goto LABEL_97;
  }

  LOBYTE(v44) = 0;
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return v44 & 1;
      }

      goto LABEL_68;
    }

LABEL_71:
    if (a6 == 1)
    {
      if (v13 != a3)
      {
LABEL_99:
        LOBYTE(v44) = (a6 - 6) < 0xFFFFFFFFFFFFFFFELL;
        return v44 & 1;
      }
    }

    else if (a6 || v51 != a3)
    {
      goto LABEL_99;
    }

LABEL_97:
    LOBYTE(v44) = 0;
    return v44 & 1;
  }

  if (a5 == 2)
  {
    goto LABEL_71;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      return v44 & 1;
    }

LABEL_68:
    if (a6 > 1)
    {
      v46 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:a3];
      v44 = 2;
      if (v46 == 1)
      {
        v44 = 3;
      }

      if (v15 == a3)
      {
        LOBYTE(v44) = (a6 & 0xFFFFFFFFFFFFFFFELL) == 2 && v44 != a6;
      }

      else
      {
        LOBYTE(v44) = v44 == a6;
      }
    }

    else
    {
      LOBYTE(v44) = a6 == 1;
      if (v15 != a3)
      {
        LOBYTE(v44) = a6 ^ 1;
      }
    }

    return v44 & 1;
  }

  if (v51 == a3 && a6 <= 5 && ((1 << a6) & 0x25) != 0 || v13 == a3 && a6 <= 4 && ((1 << a6) & 0x1A) != 0)
  {
    goto LABEL_97;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    LOBYTE(v44) = v15 == a3;
    return v44 & 1;
  }

  LOBYTE(v44) = v15 + v16 == a3;
  if ((a6 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    goto LABEL_97;
  }

  return v44 & 1;
}

- (id)p_layoutTargetForCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4
{
  v5 = [[TSWPSelection alloc] initWithType:0 range:a3 styleInsertionBehavior:0 caretAffinity:0, a4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__20;
  v15 = __Block_byref_object_dispose__20;
  v16 = 0;
  v6 = [(TSWPEditingController *)self interactiveCanvasController];
  storage = self->_storage;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__TSWPEditingController_p_layoutTargetForCharIndex_eolAffinity___block_invoke;
  v10[3] = &unk_279D48548;
  v10[4] = &v11;
  [(TSWPInteractiveCanvasController *)v6 withLayoutForModel:storage withSelection:v5 performBlock:v10];

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

- (unint64_t)p_MoveByLineRange:(_NSRange)a3 up:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v8 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  if (v4)
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

- (unint64_t)p_lineIndexForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = [(TSWPEditingController *)self p_layoutTargetForCharIndex:a3 eolAffinity:a5];
  *a4 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v8 columns];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 range];
        if (a3 - v15 < v16 && a3 >= v15 || v15 + v16 == a3)
        {
          result = [v14 lineIndexForCharIndex:a3 eol:v5];
          if (result <= 0x7FFFFFFFFFFFFFFELL)
          {
            *a4 = v14;
            return result;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
    v3 = [(TSWPSelection *)self->_selection visualRangeCount];
    selection = self->_selection;
    if (v3 < 2)
    {
      v7 = [(TSWPSelection *)self->_selection superRange];
      v5 = [(TSWPSelection *)selection copyWithNewType:0 range:v7, v8];
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

- (id)calculateVisualRunsFromSelection:(id)a3 updateControllerSelection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (([a3 validVisualRanges] & 1) != 0 || -[TSWPSelection isInsertionPoint](v5, "isInsertionPoint"))
  {
    return v5;
  }

  v94[0] = 0;
  v7 = [(TSWPSelection *)v5 start];
  if (v7 <= [(TSWPStorage *)self->_storage range])
  {
    v8 = [(TSWPStorage *)self->_storage range];
  }

  else
  {
    v8 = [(TSWPSelection *)v5 start];
  }

  v9 = v8;
  storage = self->_storage;
  v11 = [(TSWPSelection *)v5 end];
  if (v11 >= [(TSWPStorage *)self->_storage characterCount])
  {
    v12 = [(TSWPStorage *)self->_storage characterCount];
  }

  else
  {
    v12 = [(TSWPSelection *)v5 end];
  }

  v13 = [(TSWPStorage *)storage previousCharacterIndex:v12];
  memset(&v93, 0, sizeof(v93));
  v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v9 column:v94 eol:0];
  v15 = 0;
  if ([(TSWPSelection *)v5 type]== 7 && v14)
  {
    if ([(TSWPSelection *)v5 isRange])
    {
      v16 = TSWPLineFragment::visualIndexForCharIndex(v14, v9);
      [(TSWPSelection *)v5 range];
      if (!v17)
      {
        v13 = [(TSWPSelection *)v5 end];
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
        v79 = v4;
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

        v4 = v79;
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
    if ([(TSWPSelection *)v5 isVisual]&& [(TSWPSelection *)v5 isRange])
    {
      v75 = [(TSWPSelection *)v5 copyWithNewType:0];
    }

    else
    {
      v75 = v5;
    }
  }

  else
  {
    v75 = [(TSWPSelection *)v5 copyWithVisualRanges:&v93 startChar:v85 endChar:v13 rightToLeft:[(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:[(TSWPSelection *)v5 start]] sameLine:v14 == v15];
  }

  v5 = v75;
  if (v4 && [(TSWPSelection *)self->_selection isEqual:v75])
  {
    v76 = v5;

    self->_selection = v5;
  }

  v77 = v5;
  if (v93.__begin_)
  {
    v93.__end_ = v93.__begin_;
    operator delete(v93.__begin_);
  }

  return v5;
}

- (id)logicalToVisualSelection:(id)a3
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v46 = 0;
  v47 = 0;
  v5 = [a3 start];
  v6 = [a3 end];
  v42 = self;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", v5, &v47, [a3 caretAffinity] == 1);
  if ([a3 type] || !v7)
  {
    goto LABEL_60;
  }

  [a3 range];
  if (!v8)
  {
    a3 = [a3 copyWithNewType:7];
    goto LABEL_60;
  }

  location = v6 - 1;
  v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:location column:&v46 eol:1];
  if (!v10)
  {
    goto LABEL_60;
  }

  v11 = v10;
  v12 = [a3 range];
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
      v49.location = v12;
      v49.length = v14;
      v26 = NSIntersectionRange(*&v22[40 * v23 + 16], v49);
      v22 = __p;
      if ((v24 & 1) == 0 && v26.length)
      {
        if (*(__p + 40 * v23 + 32) != 1)
        {
          v5 = [(TSWPStorage *)v42->_storage previousCharacterIndex:v26.location + v26.length];
          v24 = 1;
          v22 = __p;
LABEL_23:
          if (v26.length)
          {
            if (v22[40 * v23 + 32] == 1)
            {
              location = [(TSWPStorage *)v42->_storage previousCharacterIndex:v26.location + v26.length];
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
        v5 = v26.location;
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
    v48.location = v12;
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
      v19 = [(TSWPStorage *)v42->_storage previousCharacterIndex:v20.location + v20.length];
    }

    v5 = v19;
    goto LABEL_13;
  }

  if (*(__p + 40 * v16 + 32))
  {
    v5 = v20.location;
  }

  else
  {
    v5 = [(TSWPStorage *)v42->_storage previousCharacterIndex:v20.location + v20.length];
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
    v50.location = v12;
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
      v31 = [(TSWPStorage *)v42->_storage previousCharacterIndex:v32.location + v32.length];
    }

    location = v31;
    goto LABEL_40;
  }

  if (!*(__p + 40 * v28 + 32))
  {
    v31 = [(TSWPStorage *)v42->_storage previousCharacterIndex:v32.location + v32.length];
  }

  location = v31;
LABEL_45:
  storage = v42->_storage;
  if (v5 <= location)
  {
    v37 = [(TSWPStorage *)storage nextCharacterIndex:location];
    if (v5 <= v37)
    {
      v35 = v37;
    }

    else
    {
      v35 = v5;
    }

    if (v5 >= v37)
    {
      v36 = v37;
    }

    else
    {
      v36 = v5;
    }
  }

  else
  {
    v34 = [(TSWPStorage *)storage nextCharacterIndex:v5];
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

  a3 = [a3 copyWithNewVisualTypeRange:v36 head:v35 - v36 tail:{v5, location}];
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

LABEL_60:
  if (!a3)
  {
    v38 = [MEMORY[0x277D6C290] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController logicalToVisualSelection:]"];
    [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12066, @"invalid nil value for '%s'", "result"}];
  }

  return a3;
}

- (const)p_lineFragmentForCharIndex:(unint64_t)a3 column:(id *)a4 eol:(BOOL)a5
{
  v6 = [(TSWPEditingController *)self p_lineIndexForCharIndex:a3 column:a4 eol:a5];
  if ([*a4 countLines])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_lineFragmentForCharIndex:column:eol:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12073, @"Empty column returned from p_lineIndexForCharIndex"}];
  }

  if (v6 >= [*a4 countLines])
  {
    return 0;
  }

  v10 = *a4;

  return [v10 lineFragmentAtIndex:v6];
}

- (const)p_lastVisibleLineFragmentForCharIndex:(unint64_t)a3 eol:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(-[TSWPEditingController p_layoutTargetForCharIndex:eolAffinity:](self p_layoutTargetForCharIndex:a3 eolAffinity:{a4), "columns"), "reverseObjectEnumerator"}];
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

- (const)p_nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4 inColumn:(id)a5
{
  [a5 boundsOfLineFragmentAtIndex:?];
  MinY = CGRectGetMinY(v22);
  do
  {
    v9 = a3;
    if (!a3)
    {
      break;
    }

    --a3;
    [a5 boundsOfLineFragmentAtIndex:v9 - 1];
  }

  while (CGRectGetMinY(v23) >= MinY);
  v10 = [a5 countLines];
  if (v9 < v10)
  {
    v11 = v10;
    v12 = INFINITY;
    v13 = v9;
    do
    {
      [a5 boundsOfLineFragmentAtIndex:v13];
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
      v18 = vabdd_f64(a4, CGRectGetMinX(v25));
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v19 = vabdd_f64(a4, CGRectGetMaxX(v26));
      if (v19 >= v18)
      {
        v19 = v18;
      }

      if (v19 < v12)
      {
        v12 = v19;
        v9 = v13;
      }

      ++v13;
    }

    while (v13 < v11);
  }

  return [a5 lineFragmentAtIndex:v9];
}

- (unint64_t)charIndexByMovingPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5 preferPosition:(double *)a6
{
  v11 = [a3 charIndex];
  if (a6)
  {
    [a3 preferredPosition];
    *a6 = v12;
  }

  v21 = 0;
  v13 = [a3 charIndex];
  v22 = [a3 endOfLineAffinity];
  v14 = [(TSWPEditingController *)self p_charIndexByMovingCharIndex:v13 withEolAffinity:&v22 toBoundary:a4 inDirection:a5 preferPosition:a6 isLeadingEdge:&v21];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    v16 = [TSWPSelection alloc];
    v17 = [a3 endOfLineAffinity];
    LOBYTE(v20) = v21;
    v18 = [(TSWPSelection *)v16 initWithType:7 range:v15 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v17 leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v20, self->_storage];
    v11 = [(TSWPSelection *)v18 leadingCharIndex];
  }

  return v11;
}

- (unint64_t)p_charIndexByMovingCharIndex:(unint64_t)a3 withEolAffinity:(BOOL *)a4 toBoundary:(int)a5 inDirection:(int64_t)a6 preferPosition:(double *)a7 isLeadingEdge:(BOOL *)a8
{
  v14 = *MEMORY[0x277D6C268];
  v15 = *(MEMORY[0x277D6C268] + 8);
  v16 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v18 = v16 + v17;
  if (a8)
  {
    *a8 = 1;
  }

  if (v18 < a3)
  {
    goto LABEL_4;
  }

  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        if (a5 == 2)
        {
          v24 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3];
          v26 = a6 & 0xFFFFFFFFFFFFFFFDLL;
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
          v36 = [(TSWPStorage *)self->_storage string];
          v117.location = v33;
          v117.length = v34;
          v37 = CFStringTokenizerCreate(v35, v36, v117, 1uLL, 0);
          if (CFStringTokenizerGoToTokenAtIndex(v37, a3))
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v37);
            if (v26)
            {
              if (v26 == 1)
              {
                v40 = CFStringTokenizerGetCurrentTokenRange(v37);
                length = v40.length;
                location = v40.location;
                if (a3 > LODWORD(v40.location))
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
            if (CurrentTokenRange.location + CurrentTokenRange.length != a3)
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
                v69 = a3;
                do
                {
                  v70 = v69 - 1;
                  if (v69 <= v16)
                  {
                    break;
                  }

                  v71 = CFStringTokenizerGoToTokenAtIndex(v37, v69 - 1);
                  v69 = v70;
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
          if (v18 == a3)
          {
            v14 = v18;
            v15 = 0;
          }

          goto LABEL_115;
        }

LABEL_64:
        v51 = [MEMORY[0x277D6C290] currentHandler];
        v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
        v54 = @"Unsupported granularity";
        v55 = v51;
        v56 = v52;
        v57 = 12485;
LABEL_65:
        [v55 handleFailureInFunction:v56 file:v53 lineNumber:v57 description:v54];
        goto LABEL_4;
      }

      v46 = a6;
      v47 = [(TSWPEditingController *)self charIndexMovingByWordFromCharIndex:[(TSWPEditingController *)self p_layoutOrderCharIndexForCaretCharIndex:a3 inDirection:a6] inDirection:a6];
    }

    else
    {
      v46 = a6;
      v47 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:[(TSWPEditingController *)self p_layoutOrderCharIndexForCaretCharIndex:a3 inDirection:a6] inDirection:a6];
    }

    v58 = [(TSWPEditingController *)self p_caretCharIndexForLayoutOrderCharIndex:v47 inDirection:v46];
LABEL_68:
    v19 = v58;
    goto LABEL_5;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      if (a5 == 5)
      {
        v14 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:a3];
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
    if (a6 < 4)
    {
      v116 = 0;
      v59 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v116 eol:*a4];
      v19 = v18;
      if (!v59)
      {
        goto LABEL_5;
      }

      v60 = v59;
      switch(a6)
      {
        case 1:
          v19 = *v59;
          goto LABEL_5;
        case 2:
          v19 = TSWPLineFragment::rightMostCharIndex(v59);
          if (a8)
          {
            if (!TSWPLineFragment::writingDirectionForCharIndex(v60, v19) && v19 < [(TSWPStorage *)self->_storage length])
            {
              v80 = [(TSWPStorage *)self->_storage characterAtIndex:v19];
              v81 = v80;
              v82 = IsParagraphBreakingCharacter(v80);
              if (v81 != 8232 && (v82 & 1) == 0)
              {
                *a8 = 0;
              }
            }
          }

          LOBYTE(v64) = (v60[3] & 0x1000) == 0;
          break;
        case 3:
          v19 = TSWPLineFragment::leftMostCharIndex(v59);
          if (a8)
          {
            if (TSWPLineFragment::writingDirectionForCharIndex(v60, v19) == 1 && v19 < [(TSWPStorage *)self->_storage length])
            {
              v61 = [(TSWPStorage *)self->_storage characterAtIndex:v19];
              v62 = v61;
              v63 = IsParagraphBreakingCharacter(v61);
              if (v62 != 8232 && (v63 & 1) == 0)
              {
                *a8 = 0;
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

          if (v83 <= a3)
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

      *a4 = v64;
      goto LABEL_5;
    }

    if ((a6 - 4) > 1)
    {
      v73 = [MEMORY[0x277D6C290] currentHandler];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_charIndexByMovingCharIndex:withEolAffinity:toBoundary:inDirection:preferPosition:isLeadingEdge:]"];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
      v54 = @"Unsupported horizontal line direction";
      v55 = v73;
      v56 = v74;
      v57 = 12364;
      goto LABEL_65;
    }

    if (a7)
    {
      v65 = *a7;
    }

    else
    {
      v65 = NAN;
    }

    v116 = 0;
    v76 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v116 eol:*a4];
    v77 = v76;
    if (v76)
    {
      v113 = v76;
      v78 = [(TSWPEditingController *)self p_MoveByLineRange:*v76 up:*(v76 + 1), a6 == 4];
      v77 = v113;
    }

    else if (a6 == 4)
    {
      v79 = [(TSWPEditingController *)self p_lastVisibleLineFragmentForCharIndex:a3 eol:*a4];
      if (!v79)
      {
        v78 = 0;
LABEL_153:
        v115 = 0;
        v87 = [(TSWPEditingController *)self p_lineIndexForCharIndex:v78 column:&v115 eol:a6 == 4];
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

              v78 = [(TSWPEditingController *)self p_MoveByLineRange:*v89 up:*(v89 + 8), a6 == 4];
              v88 = [(TSWPEditingController *)self p_lineIndexForCharIndex:v78 column:&v115 eol:a6 == 4];
              v89 = [v115 lineFragmentAtIndex:v88];
              v90 = v115;
              v91 = v78 == v18 || v78 == v16;
            }

            while (!v91 && v115 == v116);
          }

          v93 = v88 > 0x7FFFFFFFFFFFFFFELL || v90 == 0;
          if (v93 || ([v90 frameBounds], v95 = v65 + v94, (v96 = -[TSWPEditingController p_nearestLineFragmentWithSameVerticalPositionAs:xPos:inColumn:](self, "p_nearestLineFragmentWithSameVerticalPositionAs:xPos:inColumn:", v88, v115, v95)) == 0))
          {
            if (v78 <= a3 || a6 == 4)
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
            if (*a4)
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

  v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3];
  if (v48)
  {
    v50 = v48 - IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v49 + v48 - 1]);
  }

  else
  {
    v50 = 0;
  }

  v66 = a6;
  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        goto LABEL_141;
      }

LABEL_91:
      if (v49 == a3 && v49 > v16)
      {
        v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3 - 1];
        v66 = a6;
        v50 = v67 - 1;
      }

      goto LABEL_141;
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      goto LABEL_141;
    }

    goto LABEL_91;
  }

  if (v50 + v49 == a3 && v50 + v49 < v18)
  {
    v49 = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:a3 + 1];
    if (v68)
    {
      v50 = v68 - IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:v68 + v49 - 1]);
    }

    else
    {
      v50 = 0;
    }

    v66 = a6;
  }

LABEL_141:
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = MEMORY[0x277D6C268];
  if (v49 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v66 <= 1)
    {
      if (v66)
      {
        if (v66 != 1)
        {
          goto LABEL_150;
        }

        goto LABEL_148;
      }

LABEL_149:
      v19 = v50 + v49;
      goto LABEL_150;
    }

    if (v66 == 2)
    {
      goto LABEL_149;
    }

    if (v66 == 3)
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
    if (a6 > 1)
    {
      if (a6 != 2)
      {
        if (a6 != 3)
        {
          goto LABEL_53;
        }

        goto LABEL_42;
      }
    }

    else if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_53;
      }

LABEL_42:
      if (v15 + v14 >= a3)
      {
        v19 = v14;
      }

      else
      {
        v19 = v15 + v14;
      }

      goto LABEL_53;
    }

    if (v14 <= a3)
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

- (BOOL)p_isCharIndex:(unint64_t)a3 withinTextUnit:(int)a4 inDirection:(int64_t)a5
{
  if (a4 != 1)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_isCharIndex:withinTextUnit:inDirection:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12566, @"unexpected granularity"}];
    return 0;
  }

  if (a5 > 5)
  {
    return 0;
  }

  v6 = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:a3 forDirection:a5];
  if (v6 > [(TSWPStorage *)self->_storage length])
  {
    return 0;
  }

  v7 = [(TSWPStorage *)self->_storage wordAtCharIndex:v6 includePreviousWord:0];
  return v6 >= v7 && v6 - v7 < v8;
}

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4
{
  v4 = a4;
  v7 = MEMORY[0x277D6C268];
  v8 = *MEMORY[0x277D6C268];
  v9 = *(MEMORY[0x277D6C268] + 8);
  if ([(TSWPStorage *)self->_storage length]>= a3)
  {
    v10 = [(TSWPStorage *)self->_storage wordAtCharIndex:a3 includePreviousWord:v4];
    if (v10 != a3 || !v4)
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
  v3 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(TSDInteractiveCanvasControllerDelegate *)v3 editorAllowsKeyboard])
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
  v3 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  v4 = [(TSWPEditingController *)self p_canEditTextString];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {

      LOBYTE(v4) = [(TSDInteractiveCanvasControllerDelegate *)v3 editorAllowsCaret];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)p_keyboardShouldShowOnscreen
{
  v3 = [(TSWPEditingController *)self selection];
  v4 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(TSDInteractiveCanvasControllerDelegate *)v4 willChangeContentOffsetIfKeyboardHidden]^ 1;
  }

  else
  {
    v5 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(TSDInteractiveCanvasControllerDelegate *)v4 editorAllowsKeyboard]^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)self->_interactiveCanvasController documentRoot] isFindActive];
  v8 = [(TSWPEditingController *)self shouldDisplayKeyboard];
  v9 = [(TSWPSelection *)v3 isValid];
  v10 = [(TSWPEditingController *)self isBecomingActive];
  v11 = [(TSWPEditingController *)self isDisplayingPhoneticsHUD];
  v12 = [(TSWPEditingController *)self isInParagraphMode];
  v13 = 0;
  if (v8 && (v6 & 1) == 0 && !v7 && (v9 || v10) && !v11 && (self->_knobTracking & v12 & v5 & 1) == 0)
  {
    if ((TSUPhoneUI() & v12 & v5) == 1)
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
  v2 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController textInputResponder];

  [(TSDTextInputResponder *)v2 acceptAutocorrection];
}

- (void)endEditing
{
  [(TSWPEditingController *)self dismissActivePopovers];
  [(TSWPEditingController *)self p_cancelDelayedSelectors];
  v3 = [(TSWPEditingController *)self p_containingShapeRep];
  v4 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController editorController];
  v5 = v4;
  if (v3)
  {
    [(TSDEditorController *)v4 popEditor:self];
    v6 = [(TSDEditorController *)v5 mostSpecificCurrentEditorOfClass:0];

    [v6 setSelection:0];
  }

  else if ([-[TSDEditorController currentEditorsOfClass:](v4 currentEditorsOfClass:{objc_opt_class()), "containsObject:", self}])
  {

    [(TSDEditorController *)v5 popEditor:self];
  }
}

- (void)endEditingAndSelectParent:(id)a3
{
  v4 = [(TSWPStorage *)self->_storage wpKind];
  if (v4 == 2)
  {
    v8 = [(TSDContainerInfo *)[(TSWPStorage *)self->_storage parentInfo] findCharIndexForFootnoteAttachment:[(TSWPStorage *)self->_storage owningAttachment]];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController endEditing];
    v9 = [TSWPSelection selectionWithRange:v8 + 1, 0];
    v10 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasEditor];

    [(TSDCanvasEditor *)v10 setSelection:v9];
  }

  else if (v4 == 3)
  {
    objc_opt_class();
    [(TSWPStorage *)self->_storage parentInfo];
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController endEditing];
      v7 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasEditor];

      [(TSDCanvasEditor *)v7 setSelectionToInfo:v6];
    }
  }
}

- (BOOL)textIsVerticalAtCharIndex:(unint64_t)a3
{
  [(TSWPStorage *)self->_storage parentInfo];
  v4 = TSUProtocolCast();
  storage = self->_storage;
  if (v4)
  {
    v6 = [(TSWPStorage *)storage parentInfo];
  }

  else
  {
    if ([(TSWPStorage *)storage wpKind])
    {
      return 0;
    }

    [(TSWPStorage *)self->_storage documentRoot];
    v6 = TSUProtocolCast();
  }

  return [(TSDContainerInfo *)v6 textIsVertical];
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

- (id)textInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v30 = *MEMORY[0x277D85DE8];
  v6 = [(TSWPStorage *)self->_storage string];
  if (location + length > [v6 length])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textInRange:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12933, @"bad text range"}];
  }

  v9 = [v6 length];
  v10 = &stru_287D36338;
  if (length && location + length <= v9)
  {
    if ([(TSWPStorage *)self->_storage hasTrackedChanges])
    {
      v11 = [[TSWPFilteredStorage alloc] initWithStorage:self->_storage subRange:location removeRanges:length, [(TSWPStorage *)self->_storage deletedRangesInRange:location, length]];
      v10 = [(TSWPFilteredStorage *)v11 string];
      if (![(__CFString *)v10 length])
      {
        v10 = @" ";
      }
    }

    else
    {
      v10 = [v6 substringWithRange:{location, length}];
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
        v15 = [MEMORY[0x277D6C290] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController textInRange:]"];
        [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 12970, @"invalid nil value for '%s'", "setStr"}];
      }
    }

    if ([(__CFString *)v10 rangeOfCharacterFromSet:?]<= 0x7FFFFFFFFFFFFFFELL)
    {
      v17 = [(__CFString *)v10 componentsSeparatedByCharactersInSet:[TSWPEditingController textInRange:]::sSeparatorSet];
      v10 = [MEMORY[0x277CCAB68] stringWithCapacity:{-[__CFString length](v10, "length")}];
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
              [(__CFString *)v10 appendString:*(*(&v24 + 1) + 8 * i)];
            }

            else
            {
              [(__CFString *)v10 appendFormat:@"\n%@", *(*(&v24 + 1) + 8 * i)];
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

  return v10;
}

- (CGRect)firstRectForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (void)p_setInsertionStyle:(id)a3
{
  if (self->_insertionStyle != a3)
  {
    v6 = a3;

    self->_insertionStyle = a3;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    storage = self->_storage;

    [v7 postNotificationName:@"TSWPEditingControllerInsertionStyleChanged" object:storage userInfo:0];
  }
}

- (id)characterStyleForDeletedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(TSWPStorage *)self->_storage smartFieldAtCharIndex:a3.location attributeKind:6 effectiveRange:&v14];
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
  v3 = [(TSWPSelection *)[(TSWPEditingController *)self selection] range];
  v5 = v4;
  v6 = [(TSWPStorage *)self->_storage selectionRangeMinForCharIndex:v3];
  if (v3 > v6)
  {
    v7 = v6;
    storage = self->_storage;
    for (i = v3; ; i = v10)
    {
      v10 = [(TSWPStorage *)storage previousCharacterIndex:i];
      if (v10 <= v7 || ![(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:v10])
      {
        break;
      }

      storage = self->_storage;
    }

    v11 = [[TSWPSelection alloc] initWithRange:v10, v5 + v3 - v10];
    [(TSWPEditingController *)self setSelection:v11];
  }
}

- (void)extendSelectionRight
{
  v3 = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)v3 isValid])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController extendSelectionRight]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14569, @"Invalid selection"}];
  }

  if ([(TSWPSelection *)v3 isValid])
  {
    v6 = [(TSWPSelection *)v3 range];
    v8 = v6 + v7;
    v9 = [(TSWPStorage *)self->_storage selectionRangeMaxForCharIndex:v6 + v7];
    if (v8 < v9)
    {
      v10 = v9;
      do
      {
        v8 = [(TSWPStorage *)self->_storage nextCharacterIndex:v8];
      }

      while (v8 < v10 && [(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:v8]);
      v11 = [[TSWPSelection alloc] initWithRange:v6, v8 - v6];
      [(TSWPEditingController *)self setSelection:v11];
    }
  }
}

- (CGRect)p_firstRectForRange:(_NSRange)a3 actualRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
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
  v39 = self;
  v15 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutForModel:self->_storage withSelection:v14];
  if (!v15)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController p_firstRectForRange:actualRange:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14664, @"failed to find a layout, can't present autocorrection UI"}];
  }

  x = *v7;
  y = v7[1];
  width = v7[2];
  height = v7[3];
  *&range1[1] = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = [v15 columns];
  v23 = [v22 countByEnumeratingWithState:&range1[1] objects:v45 count:16];
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
        objc_enumerationMutation(v22);
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
        v24 = [v22 countByEnumeratingWithState:&range1[1] objects:v45 count:16];
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
    [(TSDInteractiveCanvasController *)v39->_interactiveCanvasController convertUnscaledToBoundsRect:?];
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

  if (a4)
  {
    a4->location = v12;
    a4->length = v13;
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

- (id)_repsForStorage:(id)a3 selection:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(TSWPInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] _repsForStorage:a3];
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
        v12 = [a4 range];
        v14 = v13;
        v24.location = [v11 range];
        v24.length = v15;
        v23.location = v12;
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

- (id)_addSelectionRectsForLayout:(id)a3 selection:(id)a4
{
  v4 = a4;
  v82 = *MEMORY[0x277D85DE8];
  v62 = [a4 range];
  v58 = v7;
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v61 = a3;
  obj = [a3 columns];
  v57 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v57)
  {
    v56 = *v76;
    v64 = v4;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v76 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v75 + 1) + 8 * i);
        v65 = [v9 textIsVertical];
        if (v58)
        {
          v74 = 0;
          v59 = i;
          if ([v4 isVisual])
          {
            v74 = [v4 visualRangesArray];
            v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v60 = v74;
            v11 = [v74 countByEnumeratingWithState:&v70 objects:v80 count:16];
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

                  v15 = [*(*(&v70 + 1) + 8 * j) rangeValue];
                  v17 = [v9 rectsForSelectionRange:v15 selectionType:{v16, objc_msgSend(v64, "type")}];
                  if ([v17 count] != 1)
                  {
                    v18 = [MEMORY[0x277D6C290] currentHandler];
                    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController _addSelectionRectsForLayout:selection:]"];
                    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14766, @"A visual selection should only return one rect"}];
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
            v10 = [v9 rectsForSelection:v4 ranges:&v74];
          }

          v24 = [v10 count];
          if (v24 != [v74 count])
          {
            v25 = [MEMORY[0x277D6C290] currentHandler];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController _addSelectionRectsForLayout:selection:]"];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"];
            v28 = [v10 count];
            [v25 handleFailureInFunction:v26 file:v27 lineNumber:14775 description:{@"rect/range count mismatch: %lu v %lu", v28, objc_msgSend(v74, "count")}];
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
                  [v61 rectInRoot:{x, y, width, height}];
                  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsRect:?];
                  v39 = v38;
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  v46 = [objc_msgSend(v74 objectAtIndexedSubscript:{v31), "rangeValue"}];
                  v48 = [[TSDTextSelectionRect alloc] initWithRect:[(TSWPEditingController *)self writingDirectionForCharIndex:v46] direction:[TSDTextRange textRangeWithRange:?]isVertical:v46 == v62, v46 + v47 == v62 + v58, v65, v39, v41, v43, v45];
                  [v63 addObject:v48];
                }

                ++v31;
              }

              v30 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
            }

            while (v30);
          }

          v4 = v64;
          i = v59;
        }

        else
        {
          [v9 caretRectForSelection:v4];
          v20 = v83.origin.x;
          v21 = v83.origin.y;
          v22 = v83.size.width;
          v23 = v83.size.height;
          if (!CGRectIsNull(v83))
          {
            [v61 rectInRoot:{v20, v21, v22, v23}];
            [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertUnscaledToBoundsRect:?];
            v53 = [[TSDTextSelectionRect alloc] initWithRect:[(TSWPEditingController *)self writingDirectionForCharIndex:v62] direction:[TSDTextRange textRangeWithRange:?]isVertical:1, 1, v65, v49, v50, v51, v52];
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

- (id)selectionRectsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v33 = *MEMORY[0x277D85DE8];
  v6 = [(TSWPEditingController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)v6 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)v6 delegate] selectableWordLimit])
  {
    location = [TSDRangeClamper clampSelectedRange:location inFullString:length toWordLimit:[(TSWPEditingController *)self unfilteredText], [(TSDInteractiveCanvasControllerDelegate *)[(TSDInteractiveCanvasController *)v6 delegate] selectableWordLimit]];
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
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController selectionRectsForRange:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController.mm"), 14861, @"failed to find a layout"}];
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

- (id)textColorAtCharIndex:(unint64_t)a3
{
  v8[3] = *MEMORY[0x277D85DE8];
  v5 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:a3 effectiveRange:0];
  v6 = [-[TSWPEditingController styleProvider](self "styleProvider")];
  v8[0] = self->_insertionStyle;
  v8[1] = v5;
  v8[2] = v6;
  return [TSWPResolvePropertyForStyles(v8 3uLL];
}

- (id)p_columnForCharIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [TSWPSelection selectionWithRange:a3, 0];
  v5 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutForModel:self->_storage withSelection:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 columns];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    [v11 caretRectForSelection:v4];
    if (v12 > 0.0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)textFontAtCharIndex:(unint64_t)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:a3 effectiveRange:0];
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
  v13 = [(TSWPEditingController *)self p_columnForCharIndex:a3];
  if (v13)
  {
    v12 = v12 * ([v13 scaleTextPercent] / 100.0);
  }

  return [(__CTFont *)v8 fontWithSize:v12];
}

- (id)selectionWithRange:(_NSRange)a3
{
  v4 = [[TSWPSelection alloc] initWithRange:a3.location, a3.length];

  return [(TSWPEditingController *)self p_extendSelectionToIncludeSmartFields:v4];
}

- (void)setSelectionWithRange:(_NSRange)a3 endOfLine:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  if ([(TSWPSelection *)[(TSWPEditingController *)self selection] range]== a3.location)
  {
    v8 = 168000;
  }

  else
  {
    v8 = 135232;
  }

  v9 = [[TSWPSelection alloc] initWithType:0 range:location styleInsertionBehavior:length caretAffinity:0, v4];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setSelection:v9 onModel:self->_storage withFlags:v8];

  self->_selectionLastModifiedWithKeyboard = 1;

  [(TSWPEditingController *)self p_clearEditMenuFlags];
}

- (void)setSelectionWithRange:(_NSRange)a3 leadingEdge:(BOOL)a4 endOfLine:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v10 = [TSWPSelection alloc];
  LOBYTE(v13) = a4;
  v11 = [(TSWPSelection *)v10 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:v5 leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v13, self->_storage];
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
  v3 = [(TSWPEditingController *)self selection];
  v4 = v3;
  if (v3)
  {
    if ([(TSWPSelection *)v3 isValid])
    {
      v4 = [TSWPSearchReference searchReferenceWithStorage:self->_storage selection:v4];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(TSWPEditingController *)self editingReps];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
              objc_enumerationMutation(v5);
            }

            [objc_msgSend(*(*(&v12 + 1) + 8 * i) "layout")];
            if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              [(TSWPSearchReference *)v4 setSearchReferencePoint:?];
              return v4;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)p_extendSelectionToIncludeSmartFields:(id)a3
{
  v5 = [a3 type];
  result = [(TSWPStorage *)self->_storage extendSelectionToIncludeSmartFields:a3];
  if (v5 == 7)
  {

    return [(TSWPEditingController *)self logicalToVisualSelection:result];
  }

  return result;
}

- (void)p_setSelectionFromPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 includeListLabels:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
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
      v12 = [(TSWPEditingController *)self p_selectionForRep:v11 point:a4 textSelectionGranularity:0 isTapHold:1 precise:v5 includeListLabels:0 allowPastBreak:v19 selectsEntireLink:?];
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

- (id)selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 selectsEntireLink:(BOOL)a7
{
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  objc_opt_class();
  [(TSWPInteractiveCanvasController *)self->_interactiveCanvasController closestRepToPoint:self->_storage forStorage:x, y];
  v14 = TSUDynamicCast();
  if (![v14 isEditing])
  {
    return 0;
  }

  [v14 convertNaturalPointFromUnscaledCanvas:{x, y}];
  [v14 pinToClosestColumn:?];
  LOBYTE(v16) = a7;
  return [(TSWPEditingController *)self p_selectionForRep:v14 point:a4 textSelectionGranularity:v9 isTapHold:1 precise:0 includeListLabels:v8 allowPastBreak:v16 selectsEntireLink:?];
}

- (void)p_adjustSelection:(id)a3 withUnscaledCanvasPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 allowPastBreak:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] visibleUnscaledRect];
  CGRectInset(v14, 1.0, 1.0);
  v12 = [(TSWPEditingController *)self p_selectionFromUnscaledCanvasPoint:a5 textSelectionGranularity:v8 isTapHold:v7 allowPastBreak:1 selectsEntireLink:TSDClampPointInRect()];
  if (v12)
  {

    [(TSWPEditingController *)self p_adjustSelection:a3 withOtherSelection:v12 textSelectionGranularity:a5];
  }
}

- (void)p_inputLanguageDidChangeNotification:(id)a3
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

- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5
{
  v6 = a3;
  if (![a3 isValid] || !objc_msgSend(a4, "isValid"))
  {
    return;
  }

  [v6 superRange];
  if ([a4 type] == 7 && (!objc_msgSend(v6, "type") || objc_msgSend(v6, "type") == 7))
  {
    if ([v6 type] != 7)
    {
      v6 = [(TSWPEditingController *)self logicalToVisualSelection:v6];
    }

    v8 = [(TSWPEditingController *)self p_adjustVisualSelection:v6 withOtherSelection:a4];
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
    v14 = [v6 range];
    if (v14 >= [a4 range] || (v15 = objc_msgSend(a4, "range"), v17 = v15 + v16, v18 = objc_msgSend(v6, "range"), v17 >= v18 + v19))
    {
      v28 = [v6 range];
      v30 = v29;
      v41.location = [a4 range];
      v41.length = v31;
      v40.location = v28;
      v40.length = v30;
      v32 = NSUnionRange(v40, v41);
      location = v32.location;
      length = v32.length;
    }

    else
    {
      v20 = [a4 range];
      v21 = [v6 range];
      if (v20 <= v21 + (v22 >> 1))
      {
        location = [a4 range];
        v34 = [v6 range];
        if (location <= v34 + v35)
        {
          v36 = v34 + v35;
        }

        else
        {
          v36 = location;
        }

        if (location >= v34 + v35)
        {
          location = v34 + v35;
        }

        length = v36 - location;
      }

      else
      {
        v23 = [v6 range];
        v24 = [a4 range];
        if (v23 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        if (v23 >= v24)
        {
          location = v24;
        }

        else
        {
          location = v23;
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

- (id)p_previousAutocorrectionForWordAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  if (a4)
  {
    *a4 = *MEMORY[0x277D6C268];
  }

  v6 = [(TSWPStorage *)self->_storage wordAtCharIndex:a3 includePreviousWord:1];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:v6 effectiveRange:&v8];
  if (result)
  {
    result = [(NSMutableDictionary *)self->_autocorrectedEntries objectForKeyedSubscript:result];
    if (a4)
    {
      if (result)
      {
        *a4 = v8;
      }
    }
  }

  return result;
}

- (int)valueForWritingDirectionPropertyForInspector:(id)a3
{
  v4 = [(TSWPEditingController *)self selection];
  if (![(TSWPSelection *)v4 isValid])
  {
    return -1;
  }

  v5 = [(TSWPSelection *)v4 start];
  storage = self->_storage;
  v7 = [(TSWPEditingController *)self styleProvider];
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:v5 styleProvider:v7];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v8 = [TSWPParagraphEnumerator::paragraphStyle(&v12 0)];
  if (v8 == -1)
  {
    v9 = [(TSWPEditingController *)self interactiveCanvasController];
    objc_opt_class();
    [(TSDInteractiveCanvasController *)v9 layoutForInfo:self->_storage];
    v10 = TSUDynamicCast();
    if (!v10 || (v8 = [v10 naturalDirection], v8 == -1))
    {
      v8 = TSWPParagraphEnumerator::paragraphRunsRightToLeft(&v12);
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v12);
  return v8;
}

- (void)p_removeAutocorrectionAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:a3 effectiveRange:0];
  if (v4)
  {
    v5 = v4;
    autocorrectedEntries = self->_autocorrectedEntries;

    [(NSMutableDictionary *)autocorrectedEntries removeObjectForKey:v5];
  }
}

- (id)dictationInterpretationsAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  if (a4)
  {
    *a4 = *MEMORY[0x277D6C268];
  }

  result = [(TSWPStorage *)self->_storage dictationAndAutocorrectionKeyAtCharIndex:a3 effectiveRange:&v7];
  if (result)
  {
    result = [(NSMutableDictionary *)self->_dictationInterpretations objectForKeyedSubscript:result];
    if (a4)
    {
      if (result)
      {
        *a4 = v7;
      }
    }
  }

  return result;
}

- (void)addAllDictationInterpretationRangesInRange:(_NSRange)a3 toRanges:(void *)a4
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  [(TSWPStorage *)self->_storage addAllDictationAndAutocorrectionKeyRangesInRange:a3.location toRanges:a3.length, &__p];
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
          v9 = *(a4 + 1);
          v8 = *(a4 + 2);
          if (v9 >= v8)
          {
            v11 = (v9 - *a4) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v13 = v8 - *a4;
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
              std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a4, v14);
            }

            v15 = (16 * v11);
            *v15 = *v6;
            v10 = 16 * v11 + 16;
            v16 = *(a4 + 1) - *a4;
            v17 = 16 * v11 - v16;
            memcpy(v15 - v16, *a4, v16);
            v18 = *a4;
            *a4 = v17;
            *(a4 + 1) = v10;
            *(a4 + 2) = 0;
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

          *(a4 + 1) = v10;
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

- (id)tsax_listItemLabelForCharIndex:(unint64_t)a3 textIsLiteral:(BOOL *)a4
{
  *a4 = 1;
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutIfNeeded];
  v10 = 0;
  result = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v10 eol:1];
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
      *a4 = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (_NSRange)tsax_rangeOfLineFragmentAtCharIndex:(unint64_t)a3
{
  [(TSDInteractiveCanvasController *)[(TSWPEditingController *)self interactiveCanvasController] layoutIfNeeded];
  v9 = 0;
  v5 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v9 eol:1];
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

- (id)dragItemForCurrentSelectionWithDragInteraction:(id)a3 session:(id)a4 withTouchPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10 = [(TSWPEditingController *)self interactiveCanvasController];
  v11 = [(TSWPEditingController *)self storage];
  v12 = [(TSWPEditingController *)self selection];
  v13 = [(TSWPEditingController *)self stringFromSelection];
  [(TSDInteractiveCanvasController *)v10 convertBoundsToUnscaledPoint:x, y];
  if (v11 && (v16 = v14, v17 = v15, -[TSWPSelection range](v12, "range"), v18) && [v13 length] && -[TSWPEditingController isUnscaledPointInTextSelection:](self, "isUnscaledPointInTextSelection:", v16, v17))
  {
    v28 = 0;
    [(TSDInteractiveCanvasController *)v10 hitKnobAtPoint:&v28 returningRep:v16, v17];
    v19 = 0;
    if (!v28)
    {
      v26 = 0u;
      v27 = 0u;
      v20 = [TSWPEditingController _targetedDragPreviewForSelection:v12 interactiveCanvasController:v10 reps:[(TSWPEditingController *)self _repsForStorage:v11 selection:v12] applyScale:0 imageFrameUnion:&v26];
      v21 = [TSWPStorageItemProvider storageItemProviderWithString:v13];
      v22 = [objc_alloc(MEMORY[0x277CCAA88]) initWithObject:v21];
      v23 = [TSWPDragItem alloc];
      v24 = [(TSWPDragItem *)v23 initWithDragPreview:v20 canvasRect:v26, v27];
      v19 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v22];
      [v19 setLocalObject:v24];
    }
  }

  else
  {
    v19 = [objc_opt_class() dragItemForHitRepWithDragInteraction:a3 session:a4 canvasView:objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](-[TSWPEditingController interactiveCanvasController](self icc:"interactiveCanvasController") withTouchPoint:{"layerHost"), "asiOSCVC"), "view"), self->_interactiveCanvasController, x, y}];
  }

  return v19;
}

+ (id)dragItemForHitRepWithDragInteraction:(id)a3 session:(id)a4 canvasView:(id)a5 icc:(id)a6 withTouchPoint:(CGPoint)a7
{
  [a6 convertBoundsToUnscaledPoint:{a7.x, a7.y}];
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  [a6 hitRep:{v12, v14}];
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
  [a6 delegate];
  v22 = objc_opt_respondsToSelector();
  v23 = [a6 delegate];
  if (v22)
  {
    v24 = [v23 interactiveCanvasController:a6 dragItemForSmartField:v21 interaction:a3 session:a4];
    if (!v24)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [objc_msgSend(a6 "delegate")] ^ 1;
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
    v27 = [v26 displayText];
    if (!v27)
    {
      v27 = [objc_msgSend(v26 "url")];
    }

    v28 = [v26 range];
    [v15 rectForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", v28, v29)}];
    [v15 convertNaturalRectToUnscaledCanvas:?];
    [a6 convertUnscaledToBoundsPoint:{TSDCenterOfRect(v30, v31, v32, v33)}];
    v36 = [objc_alloc(MEMORY[0x277D75488]) initWithContainer:a5 center:{v34, v35}];
    v37 = [MEMORY[0x277D75B88] previewForURL:objc_msgSend(v26 title:"url") target:{v27, v36}];

    v38 = [MEMORY[0x277CCAA88] itemProviderWithURL:objc_msgSend(v26 title:{"url"), v27}];
    v24 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v38];
    [v24 setLocalObject:v37];

    if (v24)
    {
LABEL_14:
      [v24 localObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v21 range];
        [v15 rectForSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", v39, v40)}];
        [v15 convertNaturalRectToUnscaledCanvas:?];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = [v24 localObject];
        v50 = [TSWPURLDragItem alloc];
        v51 = [v21 range];
        v53 = [(TSWPURLDragItem *)v50 initWithDragPreview:v49 canvasRect:v51 canvasDragPoint:v52 range:v42, v44, v46, v48, v12, v14];
        [v24 setLocalObject:v53];
      }
    }
  }

LABEL_16:

  return v24;
}

+ (id)previewForDragItem:(id)a3
{
  [a3 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [a3 localObject];
  if (isKindOfClass)
  {
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [a3 localObject];

  return [v6 targetedDragPreview];
}

+ (id)retargetedDragItem:(id)a3 withDefault:(id)a4 canvasView:(id)a5 icc:(id)a6
{
  [a3 localObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v10 = [a3 localObject];
  [v10 canvasRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a5 superview];
  [a6 convertUnscaledToBoundsRect:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [objc_msgSend(v19 "superview")];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v19 frame];
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

  v39 = [v10 retargetedDragPreviewForDefaultTargetedDragPreview:a4 icc:a6 canvasView:a5 boundsRect:{v21, v23, v25, v27}];
  [objc_msgSend(objc_msgSend(v39 "view")];
  return v39;
}

+ (id)dropProposalForSession:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 items];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
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
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (id)_targetedDragPreviewForSelection:(id)a3 interactiveCanvasController:(id)a4 reps:(id)a5 applyScale:(BOOL)a6 imageFrameUnion:(CGRect *)a7
{
  v64 = a6;
  v94 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a5, "count")}];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = a5;
  v13 = [a5 countByEnumeratingWithState:&v86 objects:v93 count:16];
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
        v18 = [v17 textImageForSelection:a3 frame:&v73 usingGlyphRect:0 drawBackground:0 shouldPulsate:0 suppressInvisibles:1];
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
        v28 = [v17 selectionRects];
        v29 = [v28 countByEnumeratingWithState:&v82 objects:v92 count:16];
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
                objc_enumerationMutation(v28);
              }

              [*(*(&v82 + 1) + 8 * j) CGRectValue];
              [v17 convertNaturalRectToUnscaledCanvas:?];
              [v12 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:")}];
            }

            v30 = [v28 countByEnumeratingWithState:&v82 objects:v92 count:16];
          }

          while (v30);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v14);
  }

  v33 = [objc_msgSend(a4 "layerHost")];
  v34 = [v33 view];
  [a4 convertUnscaledToBoundsPoint:{TSDCenterOfRect(x, y, width, height)}];
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
  if (v64)
  {
    [a4 viewScale];
    v55 = v54;
    [a4 viewScale];
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
  v59 = [v58 initWithContainer:v34 center:&v72 transform:{v36, v38}];
  v60 = [objc_alloc(MEMORY[0x277D75480]) initWithTextLineRects:v47];

  v61 = [v33 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v60 setBackgroundColor:{objc_msgSend(v61, "backgroundColorForDragUIPlatter")}];
  }

  v62 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v39 parameters:v60 target:v59];

  if (a7)
  {
    a7->origin.x = x;
    a7->origin.y = y;
    a7->size.width = width;
    a7->size.height = height;
  }

  return v62;
}

- (BOOL)pIsSelectionPlaceHolderTextWithSelection:(id)a3
{
  v5 = [a3 isValid];
  if (v5)
  {
    v6 = [a3 range];
    if (!v7)
    {
LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }

    v8 = v6;
    v9 = v6 + v7;
    if (v6 < v6 + v7)
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

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)p_caretCharIndexForLayoutOrderCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  v4 = a3;
  if (a4 >= 2)
  {
    if ((a4 - 2) > 1)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_caretCharIndexForLayoutOrderCharIndex:inDirection:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 107, @"Unsupported vertical character direction"}];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:a3];
      v9 = v8;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
      v15 = 0;
      v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v4 column:&v15 eol:0];
      if (v10)
      {
        v11 = TSWPLineFragment::caretCharIndexForLayoutOrderCharIndex(v10, v4, self->_storage);
        if (v11 <= v7 + v9 && v11 >= v7)
        {
          return v11;
        }
      }
    }
  }

  return v4;
}

- (unint64_t)p_layoutOrderCharIndexForCaretCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  v4 = a3;
  if (a4 >= 2)
  {
    if ((a4 - 2) > 1)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_layoutOrderCharIndexForCaretCharIndex:inDirection:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 151, @"Unsupported vertical character direction"}];
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:a3];
      v9 = v8;
      [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
      v15 = 0;
      v10 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v4 column:&v15 eol:0];
      if (v10)
      {
        v11 = TSWPLineFragment::layoutOrderCharIndexForCaretCharIndex(v10, v4, self->_storage);
        if (v11 <= v7 + v9 && v11 >= v7)
        {
          return v11;
        }
      }
    }
  }

  return v4;
}

- (_NSRange)p_expandParagraphRangeForEnumerator:(TSWPParagraphEnumerator *)a3
{
  location = TSWPParagraphEnumerator::paragraphTextRange(a3);
  length = v5;
  if (!TSWPParagraphEnumerator::isFirstParagraph(a3))
  {
    TSWPParagraphEnumerator::operator--(a3);
    v18.location = TSWPParagraphEnumerator::paragraphTextRange(a3);
    v18.length = v7;
    v16.location = location;
    v16.length = length;
    v8 = NSUnionRange(v16, v18);
    location = v8.location;
    length = v8.length;
    TSWPParagraphEnumerator::operator++(a3);
  }

  if (TSWPParagraphEnumerator::isLastParagraph(a3))
  {
    v9 = location;
    v10 = length;
  }

  else
  {
    TSWPParagraphEnumerator::operator++(a3);
    v12.location = TSWPParagraphEnumerator::paragraphTextRange(a3);
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

- (unint64_t)charIndexMovingByCharacterFromCharIndex:(unint64_t)a3 leadingEdge:(BOOL *)a4 inDirection:(int64_t)a5
{
  v8 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v10 = v9;
  storage = self->_storage;
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:a3 styleProvider:0];
  }

  else
  {
    memset(&v56, 0, sizeof(v56));
  }

  v12 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v56];
  v14 = [(TSWPStorage *)[(TSWPEditingController *)self storage] textSourceForLayoutInRange:v12, v13];
  v15 = v8 + v10;
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        do
        {
          v16 = a3;
          if (a3 <= v8)
          {
            break;
          }

          --a3;
        }

        while ([(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:v16 - 1]);
        v17 = [v14 charIndexMappedFromStorage:v16];
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

          v16 = v21;
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

          if (v52 < v16)
          {
            v16 = v52;
          }
        }

        goto LABEL_83;
      }

LABEL_15:
      v23 = [MEMORY[0x277D6C290] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:]"];
      [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 346, @"Unsupported vertical character direction"}];
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_83;
    }

    if (v15 > a3)
    {
      while ([(TSWPStorage *)self->_storage anchoredDrawableAttachmentCharacterAtCharIndex:a3])
      {
        if (v15 == ++a3)
        {
          a3 = v15;
          break;
        }
      }
    }

    v25 = [v14 charIndexMappedFromStorage:a3];
    if (v25 < [v14 charIndexMappedFromStorage:v15])
    {
      v26 = [-[TSWPStorage string](self->_storage "string")];
      v16 = v26 + v27;
      if (v26 + v27 > v15)
      {
        v28 = [MEMORY[0x277D6C290] currentHandler];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByCharacterFromCharIndex:leadingEdge:inDirection:]"];
        [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 237, @"composed character extends past storage boundary"}];
      }

      goto LABEL_83;
    }

    v47 = [v14 charIndexRemappedFromStorage:v15];
LABEL_74:
    v16 = v47;
    goto LABEL_83;
  }

  if (a5 == 2)
  {
    v22 = 1;
  }

  else
  {
    if (a5 != 3)
    {
      goto LABEL_15;
    }

    v22 = 0;
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v55 = 0;
  v30 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v55 eol:0];
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

    v33 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v30, a3, v32, self->_storage);
    v16 = v33;
    if (v33 != 0x7FFFFFFFFFFFFFFFLL && v33 >= v8 && v33 <= v15)
    {
      if (a4)
      {
        v39 = *a4;
        v40 = TSWPLineFragment::writingDirectionForCharIndex(v31, v33);
        if (v40 == TSWPLineFragment::writingDirectionForCharIndex(v31, a3))
        {
          if (*a4)
          {
            goto LABEL_83;
          }
        }

        else
        {
          *a4 = !v39;
          if (!v39)
          {
            goto LABEL_83;
          }
        }

        if (v16 == *(v31 + 1) + *v31)
        {
          *a4 = 1;
        }
      }

      goto LABEL_83;
    }

    if (a4)
    {
      if (*(v31 + 1) + *v31 > a3)
      {
        v36 = *a4;
        if (v22 != (v36 == (TSWPLineFragment::writingDirectionForCharIndex(v31, a3) == 1)) && (IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:a3]) & 1) == 0)
        {
          *a4 = !v36;
          if (a3 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = a3;
            goto LABEL_83;
          }
        }
      }
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v37 = v22 ^ [(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:a3];
  if (v31)
  {
    v38 = *v31;
    v31 = *(v31 + 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v38 = a3;
    if (v37)
    {
LABEL_45:
      if (v31 + v38 < v15)
      {
        if (v31)
        {
          v16 = v31 + v38;
        }

        else
        {
          v16 = v38 + 1;
        }
      }

      goto LABEL_56;
    }
  }

  if (v38 > v8)
  {
    v16 = v38 - 1;
  }

LABEL_56:
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v41 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v16 column:&v55 eol:0], (v42 = v41) == 0))
  {
    if (v37)
    {
      v44 = v31;
    }

    else
    {
      v44 = 0;
    }

    v16 = v44 + v38;
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

    v16 = v43;
    if (a4 && (*(v42 + 6) & 0x4800) == 0x4000)
    {
      *a4 = 1;
    }
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 < v8 || v16 > v15)
  {
    v47 = [v14 charIndexRemappedFromStorage:a3];
    goto LABEL_74;
  }

LABEL_83:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v56);
  return v16;
}

- (BOOL)p_isLayoutLeftToRightAtCharIndex:(unint64_t)a3
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
  v7 = 0;
  v5 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:&v7 eol:0];
  return !v5 || TSWPLineFragment::writingDirectionForCharIndex(v5, a3) == 0;
}

- (unint64_t)p_adjustedCharIndexForWordTestingFromCharIndex:(unint64_t)a3 forDirection:(int64_t)a4
{
  if (a4 >= 4)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 375, @"Bad input direction."}];
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (![(TSWPEditingController *)self p_isLayoutLeftToRightAtCharIndex:a3])
      {
        v20 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:a3 inDirection:2];
        a3 = v20 == a3 ? 0x7FFFFFFFFFFFFFFFLL : v20;
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [MEMORY[0x277D6C290] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
          v13 = v21;
          v14 = v22;
          v15 = 410;
          goto LABEL_27;
        }
      }
    }

    else if (a4 == 3 && [(TSWPEditingController *)self p_isLayoutLeftToRightAtCharIndex:a3])
    {
      v16 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:a3 inDirection:3];
      a3 = v16 == a3 ? 0x7FFFFFFFFFFFFFFFLL : v16;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
        v13 = v17;
        v14 = v18;
        v15 = 389;
        goto LABEL_27;
      }
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v9 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:a3 inDirection:1];
      a3 = v9 == a3 ? 0x7FFFFFFFFFFFFFFFLL : v9;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_adjustedCharIndexForWordTestingFromCharIndex:forDirection:]"];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"];
        v13 = v10;
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
      [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:a3 styleProvider:0];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v23 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v26];
    a3 = [-[TSWPStorage textSourceForLayoutInRange:](-[TSWPEditingController storage](self "storage")];
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v26);
  }

  return a3;
}

- (__CFStringTokenizer)p_createTokenizerForCharIndex:(unint64_t)a3 outTokenizerRange:(_NSRange *)a4
{
  a4->location = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:?];
  a4->length = v7;
  v8 = CFStringTokenizerCreate(0, [(TSWPStorage *)self->_storage string], *a4, 0, 0);
  CFStringTokenizerGoToTokenAtIndex(v8, a3);
  return v8;
}

- (int)p_moveFromCharIndex:(unint64_t *)a3 tokenizerRef:(__CFStringTokenizer *)a4 tokenizerRange:(_NSRange *)a5 direction:(int64_t)a6 currentWordRange:(_NSRange)a7 newWordRange:(_NSRange *)a8 reasonToStop:(unsigned int)a9
{
  length = a7.length;
  location = a7.location;
  storage = self->_storage;
  if (storage)
  {
    [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:*a3 styleProvider:0];
  }

  else
  {
    memset(&v42, 0, sizeof(v42));
  }

  v13 = [(TSWPEditingController *)self p_expandParagraphRangeForEnumerator:&v42];
  v37 = [(TSWPStorage *)[(TSWPEditingController *)self storage] textSourceForLayoutInRange:v13, v14];
  [v37 charRangeMappedFromStorage:{location, length}];
  v36 = a8;
  v15 = *a3;
  while (1)
  {
    v16 = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:v15 forDirection:a6, v36];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    v17 = *a4;
    if (!*a4)
    {
      goto LABEL_13;
    }

    if (v16 < a5->location || v16 - a5->location >= a5->length)
    {
      CFRelease(v17);
      *a4 = 0;
LABEL_13:
      v17 = [(TSWPEditingController *)self p_createTokenizerForCharIndex:v16 outTokenizerRange:a5];
      *a4 = v17;
    }

    v19 = CFStringTokenizerGoToTokenAtIndex(v17, v16);
    if ((a9 & 2) != 0 && !v19)
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
    if ((a9 & 4) != 0 && !v21)
    {
      break;
    }

    if ((a9 & 8) != 0)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*a4);
      v23 = CurrentTokenRange.location;
      v24 = CurrentTokenRange.length;
      v31 = 8;
      goto LABEL_41;
    }

LABEL_32:
    v30 = [(TSWPEditingController *)self charIndexMovingByCharacterFromCharIndex:*a3 inDirection:a6];
    v15 = v30;
    if (v30 == 0x7FFFFFFFFFFFFFFFLL || v30 == *a3)
    {
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [MEMORY[0x277D6C290] currentHandler];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_moveFromCharIndex:tokenizerRef:tokenizerRange:direction:currentWordRange:newWordRange:reasonToStop:]"];
        [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 533, @"Should not have received NSNotFound."}];
      }

LABEL_38:
      v31 = 1;
      goto LABEL_42;
    }

    *a3 = v30;
  }

  v22 = CFStringTokenizerGetCurrentTokenRange(*a4);
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
  v36->location = v23;
  v36->length = v24;
LABEL_42:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v42);
  return v31;
}

- (unint64_t)charIndexMovingByWordFromCharIndex:(unint64_t)a3 inDirection:(int64_t)a4
{
  if (a4 > 3)
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 646, @"Unsupported direction"}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = a3;
  v7 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:?];
  v9 = v8;
  v29 = v5;
  v10 = MEMORY[0x277D6C268];
  v28 = *MEMORY[0x277D6C268];
  v11 = [(TSWPEditingController *)self p_adjustedCharIndexForWordTestingFromCharIndex:v5 forDirection:a4];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v27 = *v10;
  cf = [(TSWPEditingController *)self p_createTokenizerForCharIndex:v11 outTokenizerRange:&v27];
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(cf);
  LODWORD(v24) = 7;
  v14 = [(TSWPEditingController *)self p_moveFromCharIndex:&v29 tokenizerRef:&cf tokenizerRange:&v27 direction:a4 currentWordRange:CurrentTokenRange.location newWordRange:CurrentTokenRange.length reasonToStop:&v28, v24];
  v15 = CurrentTokenRange.location == *v10 && CurrentTokenRange.length == *(v10 + 1);
  if (v15 || (v16 = v29, v29 == v5))
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
  [(TSWPEditingController *)self p_moveFromCharIndex:&v29 tokenizerRef:&cf tokenizerRange:&v27 direction:a4 currentWordRange:&v28 newWordRange:v25 reasonToStop:?];
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
      v5 = v16;
      if (v16 > v21)
      {
        v22 = [MEMORY[0x277D6C290] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
        [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 637, @"Result beyond selection range max."}];
        return v21;
      }
    }

    else
    {
      v17 = [MEMORY[0x277D6C290] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) charIndexMovingByWordFromCharIndex:inDirection:]"];
      [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 632, @"Result beyond selection range min."}];
      return v7;
    }
  }

  return v5;
}

- (_NSRange)p_adjustVisualSelection:(id)a3 withOtherSelection:(id)a4
{
  v6 = *MEMORY[0x277D6C268];
  v7 = *(MEMORY[0x277D6C268] + 8);
  v8 = [(TSWPEditingController *)self calculateVisualRunsFromSelection:a3 updateControllerSelection:0];
  v9 = [(TSWPEditingController *)self calculateVisualRunsFromSelection:a4 updateControllerSelection:0];
  [(TSWPEditingController *)self p_selection:v8 toGlyphRange:&v50];
  [(TSWPEditingController *)self p_selection:v9 toGlyphRange:&v43];
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v50), vceqzq_s64(v43)))))
  {
    goto LABEL_96;
  }

  if (v52 == v45 && v54 == v47 && v55 == v49)
  {
    v6 = [v8 range];
    v7 = v10;
    goto LABEL_96;
  }

  if ([v8 isInsertionPoint])
  {
    v11 = [v9 isInsertionPoint];
    v12 = v50.i64[0];
    v13 = v43.i64[0];
    if (!v11)
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

  v16 = [v8 visualRanges];
  if (!TSWPRangeVector::containsCharacterAtIndex(v16, v45, 0) || (v17 = [v8 visualRanges], !TSWPRangeVector::containsCharacterAtIndex(v17, v47, 0)))
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
      v6 = v30;
    }

    else
    {
      v6 = v23;
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
    if (v6 <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v6;
    }

    if (v6 >= v35)
    {
      v6 = v35;
    }

    goto LABEL_95;
  }

  v18 = v45;
  v19 = [v8 superRange];
  if (v18 <= v19 + (v20 >> 1))
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
      v6 = v39;
    }

    else
    {
      v6 = v14;
    }

LABEL_95:
    v7 = v36 - v6;
    goto LABEL_96;
  }

  if (v43.i64[0] != v50.i64[0])
  {
    v6 = v52;
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
    v6 = v38;
  }

  else
  {
    v6 = v52;
  }

  v7 = v42 - v6;
LABEL_96:
  v40 = v6;
  v41 = v7;
  result.length = v41;
  result.location = v40;
  return result;
}

- (unint64_t)p_LeftCharForInsertion:(id *)a3
{
  var0 = a3->var0;
  var3 = a3->var3;
  v6 = var3;
  if (!a3->var7)
  {
    v6 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(a3->var0, a3->var3, 3, self->_storage);
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

- (unint64_t)p_rightEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4
{
  v21 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [a3 start], &v21, 0);
  if (!v7)
  {
    return [a3 insertionChar];
  }

  v8 = v7;
  if ([a3 isRange])
  {
    if ([a3 isVisual])
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = [a3 range];
      if (v9 <= v11 && v10 + v9 >= v11 + v12)
      {
        if ((*(v8 + 25) & 0x10) != 0)
        {
          v19 = [a3 headChar];
        }

        else
        {
          v19 = [a3 tailChar];
        }

        v13 = v19;
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v8, v19);
        goto LABEL_25;
      }

      if ((*(v8 + 25) & 0x10) != 0)
      {
        v13 = [a3 headChar];
        v18 = *(v8 + 6);
        v16 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:v13];
        if ((v18 & 0x1000) != 0)
        {
LABEL_25:
          v17 = v16 == 1;
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v13 = [a3 tailChar];
      v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v13 column:&v21 eol:0];
      if (v14)
      {
        v15 = v14[6];
        v16 = [(TSWPEditingController *)self p_writingDirectionForCharAtIndex:v13];
        if ((v15 & 0x1000) == 0)
        {
          goto LABEL_25;
        }

LABEL_20:
        v17 = v16 != 1;
        goto LABEL_26;
      }

      return [a3 insertionChar];
    }

    if ([a3 isValid])
    {
      v13 = [a3 end];
      v17 = 1;
LABEL_26:
      *a4 = v17;
      return v13;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = [a3 insertionChar];
    if ([a3 type] != 7 && v13 == v8[1] + *v8 && *a4 && v13)
    {
      v13 = [(TSWPStorage *)self->_storage previousCharacterIndex:v13];
      *a4 = 0;
    }
  }

  return v13;
}

- (unint64_t)p_leftEdgeForSelection:(id)a3 withLeadingEdge:(BOOL *)a4
{
  v22 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [a3 start], &v22, 0);
  if (!v7)
  {
    return [a3 insertionChar];
  }

  v8 = v7;
  if ([a3 isVisual] && objc_msgSend(a3, "isRange"))
  {
    v9 = *v8;
    v10 = v8[1];
    v11 = [a3 range];
    if (v9 <= v11 && v10 + v9 >= v11 + v12)
    {
      if ((*(v8 + 25) & 0x10) != 0)
      {
        v20 = [a3 tailChar];
      }

      else
      {
        v20 = [a3 headChar];
      }

      v13 = v20;
      v16 = TSWPLineFragment::writingDirectionForCharIndex(v8, v20);
      goto LABEL_23;
    }

    if ((*(v8 + 25) & 0x10) != 0)
    {
      v13 = [a3 tailChar];
      v17 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v13 column:&v22 eol:0];
      if (v17)
      {
        v18 = *(v17 + 6);
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v17, v13);
        if ((v18 & 0x1000) != 0)
        {
LABEL_23:
          v19 = v16 != 1;
          goto LABEL_24;
        }

LABEL_17:
        v19 = v16 == 1;
LABEL_24:
        *a4 = v19;
        return v13;
      }
    }

    else
    {
      v13 = [a3 headChar];
      v14 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v13 column:&v22 eol:0];
      if (v14)
      {
        v15 = *(v14 + 6);
        v16 = TSWPLineFragment::writingDirectionForCharIndex(v14, v13);
        if ((v15 & 0x1000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }
    }

    return [a3 insertionChar];
  }

  v13 = [a3 insertionChar];
  if ([a3 type] != 7 && v13 == v8[1] + *v8 && *a4 && v13)
  {
    v13 = [(TSWPStorage *)self->_storage previousCharacterIndex:v13];
    *a4 = 0;
  }

  return v13;
}

- (void)p_selection:(id)a3 toGlyphRange:(id *)a4
{
  a4->var6 = [a3 isInsertionPoint];
  v7 = [a3 rawRange];
  v8 = v7;
  if (a4->var6)
  {
    a4->var7 = 0;
    v21 = 0;
    v22 = 0;
    v9 = v7;
  }

  else
  {
    v10 = [a3 end];
    var6 = a4->var6;
    v9 = v10 - 1;
    a4->var7 = 0;
    v21 = 0;
    v22 = 0;
    if (!var6)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_7;
    }
  }

  if ([a3 caretAffinity] != 1)
  {
    goto LABEL_6;
  }

  v12 = [a3 leadingEdge];
LABEL_7:
  var0 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v8 column:&v22 eol:v12, v21];
  a4->var0 = var0;
  if (v12 && !var0)
  {
    var0 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:v8 - 1 column:&v22 eol:1];
    a4->var0 = var0;
  }

  v14 = var0;
  if (!a4->var6)
  {
    v14 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", v9, &v21, [a3 caretAffinity] == 1);
    var0 = a4->var0;
  }

  a4->var1 = v14;
  if (var0)
  {
    v15 = *(var0 + 1);
    if (v15)
    {
      if (a4->var6)
      {
        if (v8 == *var0 + v15)
        {
          v16 = (*(var0 + 25) >> 4) & 1;
        }

        else
        {
          v16 = TSWPLineFragment::writingDirectionForCharIndex(var0, v8) == 1;
        }

        if (v16 == [a3 leadingEdge])
        {
          v8 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(a4->var0, v8, 2, self->_storage);
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 == [(TSWPStorage *)self->_storage length])
        {
          v8 = TSWPLineFragment::rightMostCharIndex(a4->var0);
          a4->var7 = 1;
        }

        v20 = TSWPLineFragment::visualIndexForCharIndex(a4->var0, v8);
        a4->var2 = v20;
        a4->var3 = v8;
        a4->var4 = v20;
        a4->var5 = v8;
      }

      else if (v14)
      {
        a4->var2 = TSWPLineFragment::visualIndexForCharIndex(var0, v8);
        v18 = TSWPLineFragment::visualIndexForCharIndex(a4->var1, v9);
        a4->var3 = v8;
        a4->var4 = v18;
        a4->var5 = v9;
        if (a4->var0 == a4->var1)
        {
          var2 = a4->var2;
          if (var2 >= v18 != (*(a4->var0 + 25) & 0x10) >> 4)
          {
            a4->var2 = v18;
            a4->var3 = v9;
            a4->var4 = var2;
            a4->var5 = v8;
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

      a4->var2 = 0;
      a4->var3 = v17;
      a4->var4 = 0;
      a4->var5 = v8 - 1;
    }
  }
}

- (int)p_writingDirectionForCharAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v10[5] = v3;
  v10[6] = v4;
  v10[0] = 0;
  v7 = [(TSWPEditingController *)self p_lineFragmentForCharIndex:a3 column:v10 eol:0];
  if (v7)
  {
    return TSWPLineFragment::writingDirectionForCharIndex(v7, a3 - (*(v7 + 1) + *v7 == a3));
  }

  v8 = [MEMORY[0x277D6C290] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_writingDirectionForCharAtIndex:]"];
  [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1119, @"invalid nil value for '%s'", "lineFragment"}];
  return -1;
}

- (const)p_lineFragmentWithCaretInfo:(id *)a3 forSelection:(id)a4
{
  v35 = 0;
  v7 = -[TSWPEditingController p_lineFragmentForCharIndex:column:eol:](self, "p_lineFragmentForCharIndex:column:eol:", [a4 range], &v35, objc_msgSend(a4, "isAtEndOfLine"));
  v8 = v7;
  if (v7)
  {
    v9 = v7[6];
    v10 = [a4 insertionChar];
    v11 = TSWPLineFragment::writingDirectionForCharIndex(v8, v10);
    v12 = v11 == 1;
    v30 = v9;
    v33 = (v9 & 0x1000) >> 12;
    v34 = [a4 leadingEdge];
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
    if (v10 < v14)
    {
      TSWPComposedCharacterAtIndexForTextSource(v10, self->_storage);
      v15 = TSWPGetBidiClass();
    }

    v32 = v15;
    if (([a4 isVisual] & 1) != 0 || v10 <= *v8 || (v11 == 1) == -[TSWPEditingController editorKeyboardLanguageIsRTL](self, "editorKeyboardLanguageIsRTL"))
    {
      v16 = v11 == 1;
      v31 = v11 == 1;
      if (v31 != v34)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = -[TSWPStorage previousCharacterIndex:](self->_storage, "previousCharacterIndex:", [a4 insertionChar]);
      v16 = 0;
      LOBYTE(v34) = 0;
      if (TSWPLineFragment::writingDirectionForCharIndex(v8, v10) == 1)
      {
        LOBYTE(v31) = 1;
        v12 = 1;
LABEL_13:
        v17 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v8, v10, 3, self->_storage);
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

        if (v10 == TSWPLineFragment::rightMostCharIndex(v8))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v30 & 0x1000) != 0)
          {
            v19 = v10;
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
            v23 = v10;
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
          v23 = v10;
          v13 = v32;
        }

LABEL_54:
        a3->var4 = v18;
        a3->var5 = v16;
        a3->var2 = v34;
        a3->var6 = v24;
        a3->var7 = v23;
        a3->var8 = v12;
        a3->var9 = v13;
        a3->var0 = v10;
        a3->var1 = v31;
        a3->var3 = v21;
        return v8;
      }

      LOBYTE(v31) = 0;
    }

    v25 = TSWPLineFragment::nextOrPreviousCharIndexForDirection(v8, v10, 2, self->_storage);
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

    if (v10 == TSWPLineFragment::leftMostCharIndex(v8))
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v30 & 0x1000) != 0)
      {
        v27 = 1;
      }

      else
      {
        v26 = v10;
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
        v18 = v10;
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
      v18 = v10;
      v21 = v32;
      v24 = v32;
    }

    goto LABEL_54;
  }

  return v8;
}

- (unint64_t)p_getVisualDeletionIndexForSelection:(id)a3 backward:(BOOL *)a4
{
  v7 = [a3 range];
  if (([a3 isInsertionPoint] & 1) == 0)
  {
    [a3 range];
    if (!v8 || *a4)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_getVisualDeletionIndexForSelection:backward:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1270, @"invalid selection type"}];
    }
  }

  v11 = [(TSWPEditingController *)self p_lineFragmentWithCaretInfo:&v19 forSelection:a3];
  if (v11)
  {
    v12 = v11;
    if (v11[1])
    {
      if ([a3 isVisual])
      {
        if (([a3 isInsertionPoint] & 1) != 0 || (objc_msgSend(a3, "range"), v13) && !*a4)
        {
          v14 = *v12;
          v15 = v12[1] + ((*(v12 + 6) << 20) >> 31);
          if (v21 == v24 || v22 == 3 || v25 == 3)
          {
            if (v21 == v24 || ![a3 isVisual])
            {
              return v7;
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
            v7 = v14;
            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              return v7;
            }
          }

          else
          {
            if (v21)
            {
              *a4 = 0;
              if ([(TSWPEditingController *)self editorKeyboardLanguageIsRTL])
              {
                v7 = v20;
              }

              else
              {
                v7 = v23;
              }

              if (v7 == 0x7FFFFFFFFFFFFFFFLL)
              {
                *a4 = 1;
                return v15 + v14;
              }

              return v7;
            }

            *a4 = 1;
            if ([(TSWPEditingController *)self editorKeyboardLanguageIsRTL])
            {
              v16 = v23;
              if (v23 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v7 = v14;
                if (v21)
                {
                  return v7;
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
                v7 = v14;
                if (v24 != 1)
                {
                  return v7;
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

  return v7;
}

- (unint64_t)p_getVisualInsertionPointIndexForString:(id)a3 selection:(id)a4
{
  if (![a4 isInsertionPoint] || (objc_msgSend(a4, "isVisual") & 1) == 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPEditingController(Internal) p_getVisualInsertionPointIndexForString:selection:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEditingController_Internal.mm"), 1384, @"invalid selection type"}];
  }

  v9 = [a4 range];
  v10 = [(TSWPEditingController *)self p_lineFragmentWithCaretInfo:v40 forSelection:a4];
  if (v10)
  {
    v11 = v10;
    if ([a4 isInsertionPoint])
    {
      if ([a4 isVisual])
      {
        v12 = v11[6];
        if ((v12 & 0x4000) == 0)
        {
          v13 = *v11;
          v14 = *(v11 + 1);
          if ([a3 length])
          {
            [a3 utf32CharacterAtIndex:0];
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
              v9 = v41;
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
                return v9;
              }

              return [(TSWPStorage *)self->_storage nextCharacterIndex:v9];
            }

            if (v15 == v46)
            {
              v9 = v44;
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
                return v9;
              }

              return [(TSWPStorage *)self->_storage nextCharacterIndex:v9];
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
              v9 = v32;
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
                    v9 = v34;
                  }

                  else
                  {
                    v9 = v44;
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
                v9 = v31;
              }

              else
              {
                v9 = v41;
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

              return v9;
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
              v9 = v35 + v13;
              goto LABEL_84;
            }

            goto LABEL_82;
          }
        }
      }
    }
  }

  return v9;
}

@end