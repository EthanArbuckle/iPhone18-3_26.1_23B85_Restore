@interface UITextInteractionAssistant
+ (int64_t)_nextGranularityInCycle:(int64_t)cycle forTouchType:(int64_t)type;
- (BOOL)_canAutoscroll;
- (BOOL)_selectionIsActivated;
- (BOOL)containerAllowsSelection;
- (BOOL)containerAllowsSelectionTintOnly;
- (BOOL)containerIsBrowserView;
- (BOOL)containerIsTextField;
- (BOOL)containerWantsVisualBIDISelections;
- (BOOL)cursorVisible;
- (BOOL)didPerformLoupeSelectionHandoff;
- (BOOL)ghostAppearance;
- (BOOL)handleMultilingualAlternativeWithString:(id)string range:(id)range;
- (BOOL)hasReplacements;
- (BOOL)isCursorBlinkAnimationEnabled;
- (BOOL)isDisplayingVerticalSelection;
- (BOOL)isInteractiveSelectionDisabled;
- (BOOL)isSelectionDisplayVisible;
- (BOOL)isValid;
- (BOOL)scheduleReplacementsForRange:(id)range withOptions:(unint64_t)options;
- (BOOL)shouldSuppressSelectionCommands;
- (BOOL)showMultilingualDictationReplacementWithRange:(id)range;
- (BOOL)supportsIndirectInteractions;
- (BOOL)swallowsDoubleTapWithScale:(double)scale atPoint:(CGPoint)point;
- (BOOL)textRangeAdjustmentInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point;
- (BOOL)useGesturesForEditableContent;
- (BOOL)viewConformsToAsynchronousInteractionProtocol;
- (BOOL)viewCouldBecomeEditable:(id)editable;
- (CGPoint)_rangeAdjustmentPointInTextInputCoordinateSpace:(CGPoint)space;
- (CGPoint)_selectionViewManager:(id)manager convertPointToRenderSpace:(CGPoint)space textPosition:(id)position;
- (CGPoint)_selectionViewManager:(id)manager convertPointToRenderSpace:(CGPoint)space textRange:(id)range;
- (CGPoint)autoscrollUntransformedExtentPoint;
- (CGPoint)boundedDeltaForTranslation:(CGPoint)translation cursorLocationBase:(CGPoint)base;
- (CGPoint)constrainedPoint:(CGPoint)point;
- (CGPoint)convertPointToRenderSpace:(CGPoint)space textPosition:(id)position;
- (CGPoint)convertPointToRenderSpace:(CGPoint)space textRange:(id)range;
- (CGPoint)loupeGestureEndPoint;
- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)interaction;
- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)edge precision:(unint64_t)precision;
- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)edge;
- (UIContextMenuInteractionDelegate)externalContextMenuInteractionDelegate;
- (UIFieldEditor)fieldEditor;
- (UIScrollView)scrollView;
- (UITextCursorAssertionController)_assertionController;
- (UITextInput)textDocument;
- (UITextInput)view;
- (UITextInteractionAssistant)initWithResponder:(id)responder;
- (UITextInteractionAssistant)initWithView:(id)view textInteractionMode:(int64_t)mode;
- (UITextSelection)activeSelection;
- (_UIKeyboardTextSelectionController)activeSelectionController;
- (_UITextChoiceAccelerationAssistant)_textChoicesAssistant;
- (_UITextInteractionEditMenuAssistant)_editMenuAssistant;
- (_UITextSelectionWidgetAnimating)_caretView;
- (id)_asAsyncTextInputClient;
- (id)_asBETextInput;
- (id)_asText;
- (id)_asTextAutoscrolling;
- (id)_computeGestureStateForView:(id)view;
- (id)_legacySelectionView;
- (id)_pointerInteractionDelegate;
- (id)_rangeAdjustmentViewContainer;
- (id)_selectionViewManager:(id)manager obtainBlinkSuppressionAssertionForReason:(id)reason;
- (id)_selectionViewManager:(id)manager obtainGhostCursorAssertionForReason:(id)reason;
- (id)_textReplacementsMenuForElement:(id)element;
- (id)attributedTextInRange:(id)range;
- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)interaction;
- (id)generatorForRange:(id)range withOptions:(unint64_t)options;
- (id)linkInteraction;
- (id)obtainSelectionGrabberSuppressionAssertion;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)rangeForTextReplacement:(id)replacement;
- (id)selectionContainerView;
- (id)selectionContainerViewAboveText;
- (id)selectionView;
- (id)textRangeAdjustmentViewForEdge:(unint64_t)edge;
- (id)textSelectionView;
- (id)updatedTextReplacementsMenuWithMenuElements:(id)elements;
- (int)glowViewMode;
- (int)selectionHighlightMode;
- (int64_t)currentCursorBehavior;
- (unint64_t)currentDraggedHandle;
- (unint64_t)loupeOrientation;
- (void)_invalidateSelectionDisplay;
- (void)_setTextSelectionControllerFromDelegate;
- (void)_textRangeAdjustmentForPoint:(CGPoint)point withTouchPoint:(CGPoint)touchPoint selectionChangeReason:(int64_t)reason;
- (void)_updateRenderSpaceConversionConformance;
- (void)_updateSelectionInViewIfNeeded:(id)needed toRange:(id)range;
- (void)_updateSelectionWithPoint:(CGPoint)point granularity:(int64_t)granularity forceGranularity:(BOOL)forceGranularity;
- (void)_updateTextFormattingRestorationMethodsConformance;
- (void)activateSelection;
- (void)addGestureRecognizersToView:(id)view;
- (void)autoscrollWillNotStart;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginSelectionChange;
- (void)canBeginDragCursor:(id)cursor;
- (void)cancelAutoscroll;
- (void)checkEditabilityAndSetFirstResponderIfNecessary;
- (void)clearGestureRecognizers:(BOOL)recognizers;
- (void)clearSelection;
- (void)clearStashedSelection;
- (void)commitSelectionWithPoint:(CGPoint)point;
- (void)deactivateSelection;
- (void)dealloc;
- (void)detach:(BOOL)detach;
- (void)didEndScrollingOrZooming;
- (void)didEndSelectionInteraction;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)extendSelectionToLoupeOrSetToPoint:(CGPoint)point;
- (void)extendSelectionToPoint:(CGPoint)point;
- (void)invalidate;
- (void)lollipopGestureWithState:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)type;
- (void)loupeGestureWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
- (void)loupeMagnifierWithState:(int64_t)state atPoint:(CGPoint)point;
- (void)notifyKeyboardSelectionChanged;
- (void)rangeSelectionCanceled;
- (void)rangeSelectionEnded:(CGPoint)ended;
- (void)rangeSelectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point;
- (void)rangeSelectionStarted:(CGPoint)started;
- (void)rangedMagnifierWithState:(int64_t)state atPoint:(CGPoint)point;
- (void)removeTextChoiceUnderlines;
- (void)resignedFirstResponder;
- (void)scheduleChineseTransliteration;
- (void)scheduleDictationReplacementsForAlternatives:(id)alternatives range:(id)range;
- (void)scheduleDictationReplacementsForMultilingualAlternatives:(id)alternatives range:(id)range;
- (void)scheduleReplacementsWithOptions:(unint64_t)options;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)selectAll:(id)all;
- (void)selectWord;
- (void)selectWordWithoutShowingCommands;
- (void)selectionAnimationDidStop;
- (void)selectionChanged;
- (void)setCursorBlinkAnimationEnabled:(BOOL)enabled;
- (void)setCursorVisible:(BOOL)visible;
- (void)setExternalContextMenuInteractionDelegate:(id)delegate;
- (void)setExternalInteractions:(id)interactions;
- (void)setFirstResponderIfNecessaryActivatingSelection:(BOOL)selection;
- (void)setGestureRecognizers;
- (void)setGestureRecognizers:(id)recognizers;
- (void)setGhostAppearance:(BOOL)appearance;
- (void)setGlowViewMode:(int)mode;
- (void)setNeedsSelectionDisplayUpdate;
- (void)setSelectionDisplayVisible:(BOOL)visible;
- (void)setSelectionHighlightMode:(int)mode;
- (void)setSelectionWithPoint:(CGPoint)point;
- (void)setSuppressSystemUI:(BOOL)i;
- (void)startAutoscroll:(CGPoint)autoscroll;
- (void)stashCurrentSelection;
- (void)textRangeAdjustmentInteraction:(id)interaction didBeginAtPoint:(CGPoint)point;
- (void)textRangeAdjustmentInteraction:(id)interaction didEndAtPoint:(CGPoint)point;
- (void)textRangeAdjustmentInteractionWasCancelled:(id)cancelled;
- (void)underlineCorrectedTextInRange:(id)range typedString:(id)string;
- (void)updateAutoscroll:(id)autoscroll;
- (void)updateDisplayedSelection;
- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated;
- (void)updateSelectionForTextAnimation;
- (void)updateWithMagnifierTerminalPoint:(BOOL)point;
- (void)willBeginSelectionInteraction;
- (void)willStartScrollingOrZooming;
@end

@implementation UITextInteractionAssistant

- (UIContextMenuInteractionDelegate)externalContextMenuInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalContextMenuInteractionDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    contextMenuDelegateProxy = WeakRetained;
  }

  else
  {
    contextMenuDelegateProxy = [(UITextLinkInteraction *)self->_linkInteraction contextMenuDelegateProxy];
  }

  v6 = contextMenuDelegateProxy;

  return v6;
}

- (BOOL)supportsIndirectInteractions
{
  v2 = 1;
  v3 = _UIDeviceNativeUserInterfaceIdiom();
  if ((v3 - 5) >= 2)
  {
    if (v3)
    {
      return v3 == 1;
    }

    else
    {
      v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      hardwareKeyboardExclusivityIdentifier = [v4 hardwareKeyboardExclusivityIdentifier];
      v2 = hardwareKeyboardExclusivityIdentifier != 0;
    }
  }

  return v2;
}

- (void)setNeedsSelectionDisplayUpdate
{
  [(UITextSelectionView *)self->_selectionView deferredUpdateSelectionRects];
  [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setNeedsSelectionUpdate];
  textChoicesAssistant = self->_textChoicesAssistant;

  [(_UITextChoiceAccelerationAssistant *)textChoicesAssistant setNeedsUnderlineUpdate];
}

- (_UITextInteractionEditMenuAssistant)_editMenuAssistant
{
  editMenuAssistant = self->_editMenuAssistant;
  if (!editMenuAssistant)
  {
    v4 = [[_UITextInteractionEditMenuAssistant alloc] initWithInteractionAssistant:self];
    v5 = self->_editMenuAssistant;
    self->_editMenuAssistant = v4;

    editMenuAssistant = self->_editMenuAssistant;
  }

  return editMenuAssistant;
}

- (void)_updateRenderSpaceConversionConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  self->_respondsToConvertPointToRenderSpace = objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_view);
  self->_respondsToConvertPointToTextPositionRenderSpace = objc_opt_respondsToSelector() & 1;
}

- (int64_t)currentCursorBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textInputView = [WeakRetained textInputView];
  if (textInputView)
  {
    v5 = textInputView;
    v6 = objc_loadWeakRetained(&self->_view);
    textInputView2 = [v6 textInputView];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    textInputView3 = [WeakRetained textInputView];
    cursorBehavior = [textInputView3 cursorBehavior];
  }

  else
  {
    cursorBehavior = 0;
  }

  return cursorBehavior;
}

- (id)selectionContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_view);
  v6 = v5;
  if (v4)
  {
    [v5 selectionContainerView];
  }

  else
  {
    [v5 textInputView];
  }
  v7 = ;

  return v7;
}

- (BOOL)useGesturesForEditableContent
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([WeakRetained isEditable])
    {
LABEL_4:
      _useGesturesForEditableContent = 1;
      goto LABEL_10;
    }

    if ([(UITextInteractionAssistant *)self containerIsBrowserView])
    {
      _proxyTextInput = [WeakRetained _proxyTextInput];
      formElement = [_proxyTextInput formElement];
      if (formElement)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_4;
        }
      }
    }

    _useGesturesForEditableContent = 0;
    goto LABEL_10;
  }

  _useGesturesForEditableContent = [WeakRetained _useGesturesForEditableContent];
LABEL_10:

  return _useGesturesForEditableContent;
}

- (void)setGestureRecognizers
{
  if (self->_externalTextInput)
  {
    return;
  }

  if ([(UITextInteractionAssistant *)self inGesture])
  {
    return;
  }

  if (self->_textInteractionMode <= 1uLL)
  {
    if (self->_interactions)
    {
      externalInteractions = self->_externalInteractions;
      if (externalInteractions)
      {
        if ([(UITextInteraction *)externalInteractions textInteractionMode]== self->_textInteractionMode)
        {
          textInteractionMode = [(UITextInteraction *)self->_externalInteractions textInteractionMode];
          if (textInteractionMode == [(UITextInteraction *)self->_interactions textInteractionMode])
          {
            return;
          }
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [(UITextInteractionAssistant *)self _computeGestureStateForView:WeakRetained];

  _transientState = [(UITextInteraction *)self->_interactions _transientState];
  [(UITextInteractionAssistant *)self clearGestureRecognizers];
  v7 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    _textInputViewForAddingGestureRecognizers = [v7 _textInputViewForAddingGestureRecognizers];
LABEL_14:
    externalInteractions2 = _textInputViewForAddingGestureRecognizers;
    [(UITextInteractionAssistant *)self addGestureRecognizersToView:_textInputViewForAddingGestureRecognizers];
    goto LABEL_15;
  }

  externalInteractions = [(UITextInteractionAssistant *)self externalInteractions];
  view = [externalInteractions view];

  if (!view)
  {
    _textInputViewForAddingGestureRecognizers = [v7 textInputView];
    goto LABEL_14;
  }

  externalInteractions2 = [(UITextInteractionAssistant *)self externalInteractions];
  view2 = [externalInteractions2 view];
  [(UITextInteractionAssistant *)self addGestureRecognizersToView:view2];

LABEL_15:
  [(UITextInteraction *)self->_interactions _applyTransientState:_transientState];
  gestureState = self->_gestureState;
  self->_gestureState = v6;
}

- (void)_updateTextFormattingRestorationMethodsConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_loadWeakRetained(&self->_view);
    self->_respondsToTextFormattingRestorationMethods = objc_opt_respondsToSelector() & 1;
  }

  else
  {
    self->_respondsToTextFormattingRestorationMethods = 0;
  }
}

- (UITextSelection)activeSelection
{
  activeSelectionController = [(UITextInteractionAssistant *)self activeSelectionController];
  selection = [activeSelectionController selection];

  return selection;
}

- (_UIKeyboardTextSelectionController)activeSelectionController
{
  [(UITextInteractionAssistant *)self _setTextSelectionControllerFromDelegate];
  textSelectionController = self->_textSelectionController;

  return textSelectionController;
}

- (void)_setTextSelectionControllerFromDelegate
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self->_textSelectionController inputDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (inputDelegate == WeakRetained)
  {
    return;
  }

  if ([(UITextInteractionAssistant *)self usesAsynchronousSelectionController])
  {
    v5 = off_1E70EBA68;
LABEL_7:
    v7 = objc_alloc(*v5);
    v8 = objc_loadWeakRetained(&self->_view);
    v6 = [v7 initWithInputDelegate:v8];

    goto LABEL_8;
  }

  v6 = objc_loadWeakRetained(&self->_view);

  if (v6)
  {
    v5 = off_1E70EBA98;
    goto LABEL_7;
  }

LABEL_8:
  textSelectionController = self->_textSelectionController;
  self->_textSelectionController = v6;
}

- (BOOL)containerIsBrowserView
{
  if (WebKitFramework)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _proxyTextInput = [WeakRetained _proxyTextInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)updateDisplayedSelection
{
  [(UITextSelectionView *)self->_selectionView updateSelectionRects];
  [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setNeedsSelectionUpdate];
  selectionViewManager = self->_selectionViewManager;

  [(UITextSelectionDisplayInteraction *)selectionViewManager layoutManagedSubviews];
}

- (id)_legacySelectionView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = 0;
  }

  else
  {
    if (!self->_selectionView)
    {
      v4 = [[UITextSelectionView alloc] initWithInteractionAssistant:self];
      selectionView = self->_selectionView;
      self->_selectionView = v4;
    }

    if (!self->_externalTextInput && !self->_detaching)
    {
      [(UITextSelectionView *)self->_selectionView installIfNecessary];
    }

    v3 = self->_selectionView;
  }

  return v3;
}

- (void)dealloc
{
  [(UITextInteractionAssistant *)self detach:1];
  [(UITextSelectionView *)self->_selectionView invalidate];
  selectionView = self->_selectionView;
  self->_selectionView = 0;

  v4.receiver = self;
  v4.super_class = UITextInteractionAssistant;
  [(UITextInteractionAssistant *)&v4 dealloc];
}

- (void)selectionChanged
{
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection selectionChanged];
  view = [(UITextInteractionAssistant *)self view];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UITextInteractionAssistant *)self viewConformsToAsynchronousInteractionProtocol])
  {
    v4 = [view shouldAllowHidingSelectionCommands] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  if (([activeSelection isCommitting] & 1) == 0 && ((v4 | -[UITextInteractionAssistant expectingCommit](self, "expectingCommit")) & 1) == 0)
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant _hideSelectionCommandsWithReason:2];
    [(UITextLinkInteraction *)self->_linkInteraction dismissEditMenuOnSelectionChangeIfNecessary];
    textChoicesAssistant = self->_textChoicesAssistant;
    selectedRange = [activeSelection selectedRange];
    start = [selectedRange start];
    [(_UITextChoiceAccelerationAssistant *)textChoicesAssistant updateUnderlinesIfNeededAfterPosition:start];
  }

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if (([activeSelection isCommitting] & 1) != 0 || -[UITextInteractionAssistant expectingCommit](self, "expectingCommit") || -[UITextInteractionAssistant requiresImmediateUpdate](self, "requiresImmediateUpdate"))
    {
      [(UITextSelectionDisplayInteraction *)self->_selectionViewManager layoutManagedSubviews];
    }

    else
    {
      [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setNeedsSelectionUpdate];
    }
  }

  else
  {
    [(UITextSelectionView *)self->_selectionView selectionChanged];
  }

  if (![(UITextInteractionAssistant *)self usesAsynchronousSelectionController])
  {
    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  }
}

- (UITextInput)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)notifyKeyboardSelectionChanged
{
  view = [(UITextInteractionAssistant *)self view];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    view2 = [(UITextInteractionAssistant *)self view];
    v5 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v5 inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];
    [view2 keyboardInputChangedSelection:keyInputDelegate];
  }
}

- (_UITextChoiceAccelerationAssistant)_textChoicesAssistant
{
  textChoicesAssistant = self->_textChoicesAssistant;
  if (!textChoicesAssistant)
  {
    v4 = [[_UITextChoiceAccelerationAssistant alloc] initWithInteractionAssistant:self];
    v5 = self->_textChoicesAssistant;
    self->_textChoicesAssistant = v4;

    textChoicesAssistant = self->_textChoicesAssistant;
  }

  return textChoicesAssistant;
}

- (void)activateSelection
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setActivated:1];
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    [_legacySelectionView validateWithInteractionAssistant:self];

    _legacySelectionView2 = [(UITextInteractionAssistant *)self _legacySelectionView];
    [_legacySelectionView2 activate];
  }

  if ([(UITextInteractionAssistant *)self containerAllowsSelectionTintOnly])
  {

    [(UITextInteractionAssistant *)self setSelectionHighlightMode:1];
  }
}

- (BOOL)containerAllowsSelectionTintOnly
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  result = 0;
  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_view);
    clearingBehavior = [v5 clearingBehavior];

    if (clearingBehavior == 3)
    {
      return 1;
    }
  }

  return result;
}

- (void)deactivateSelection
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setActivated:0];
  }

  else
  {
    [(UITextSelectionView *)self->_selectionView deactivate];
  }

  [(_UITextChoiceAccelerationAssistant *)self->_textChoicesAssistant setNeedsUnderlineUpdate];
  editMenuAssistant = self->_editMenuAssistant;

  [(_UITextInteractionEditMenuAssistant *)editMenuAssistant hideSelectionCommands];
}

- (UITextCursorAssertionController)_assertionController
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if ([(UITextSelectionDisplayInteraction *)self->_selectionViewManager isActivated])
    {
      _cursorAssertionController = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorAssertionController];
    }

    else
    {
      _cursorAssertionController = 0;
    }
  }

  else
  {
    assertionController = self->_assertionController;
    if (!assertionController)
    {
      v5 = objc_alloc_init(UITextCursorAssertionController);
      v6 = self->_assertionController;
      self->_assertionController = v5;

      [(UITextCursorAssertionController *)self->_assertionController setSubject:self];
      assertionController = self->_assertionController;
    }

    _cursorAssertionController = assertionController;
  }

  return _cursorAssertionController;
}

- (id)obtainSelectionGrabberSuppressionAssertion
{
  selectionView = self->_selectionView;
  if (selectionView)
  {
    [(UITextSelectionView *)selectionView obtainGrabberSuppressionAssertion];
  }

  else
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _obtainGrabberSuppressionAssertion];
  }
  v4 = ;

  return v4;
}

- (UITextInteractionAssistant)initWithResponder:(id)responder
{
  responderCopy = responder;
  v9.receiver = self;
  v9.super_class = UITextInteractionAssistant;
  v5 = [(UITextInteractionAssistant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_externalTextInput = 1;
    objc_storeWeak(&v5->_view, responderCopy);
    [(UITextInteractionAssistant *)v6 _updateRenderSpaceConversionConformance];
    v7 = v6;
  }

  return v6;
}

- (id)textSelectionView
{
  highlightView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
  selectionView = highlightView;
  if (!highlightView)
  {
    selectionView = self->_selectionView;
  }

  v5 = selectionView;

  return selectionView;
}

- (BOOL)isInteractiveSelectionDisabled
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  viewRespondsToInteractiveTextSelectionDisabled = self->_viewRespondsToInteractiveTextSelectionDisabled;
  if (!viewRespondsToInteractiveTextSelectionDisabled)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:objc_opt_respondsToSelector() & 1];
    v6 = self->_viewRespondsToInteractiveTextSelectionDisabled;
    self->_viewRespondsToInteractiveTextSelectionDisabled = v5;

    viewRespondsToInteractiveTextSelectionDisabled = self->_viewRespondsToInteractiveTextSelectionDisabled;
  }

  if ([(NSNumber *)viewRespondsToInteractiveTextSelectionDisabled BOOLValue])
  {
    _isInteractiveTextSelectionDisabled = [WeakRetained _isInteractiveTextSelectionDisabled];
  }

  else
  {
    _isInteractiveTextSelectionDisabled = 0;
  }

  return _isInteractiveTextSelectionDisabled;
}

- (id)_pointerInteractionDelegate
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&selfCopy->_view);
    _pointerInteractionDelegate = [v5 _pointerInteractionDelegate];
  }

  else
  {
    _pointerInteractionDelegate = 0;
  }

  if (_pointerInteractionDelegate)
  {
    selfCopy = _pointerInteractionDelegate;
  }

  v7 = selfCopy;

  return selfCopy;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  rect_24 = interaction;
  requestCopy = request;
  regionCopy = region;
  [requestCopy location];
  v11 = v10;
  v13 = v12;
  v114 = 0;
  v115 = &v114;
  v116 = 0x4010000000;
  v117 = "";
  v14 = *(MEMORY[0x1E695F050] + 16);
  v118 = *MEMORY[0x1E695F050];
  v119 = v14;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__208;
  v112 = __Block_byref_object_dispose__208;
  v113 = @"_UITextCursorBoundingRegion";
  textInputView = [WeakRetained textInputView];
  if (!textInputView)
  {
    v21 = 0;
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained selectionClipRect];
LABEL_7:
    v22 = v115;
    v115[4] = v17;
    v22[5] = v18;
    v22[6] = v19;
    v22[7] = v20;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _selectionClipRect];
    goto LABEL_7;
  }

  v17 = v115[4];
  v18 = v115[5];
  v19 = v115[6];
  v20 = v115[7];
LABEL_9:
  if (CGRectIsNull(*&v17))
  {
    v23 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v23 inputDelegateManager];

    if (inputDelegateManager)
    {
      v25 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager2 = [v25 inputDelegateManager];
      [inputDelegateManager2 selectionClipRect];
      v27 = v115;
      v115[4] = v28;
      v27[5] = v29;
      v27[6] = v30;
      v27[7] = v31;
    }
  }

  if (CGRectIsNull(*(v115 + 1)))
  {
    [textInputView bounds];
    v36 = v115;
    v115[4] = v32;
    v36[5] = v33;
    v36[6] = v34;
    v36[7] = v35;
  }

  else
  {
    v32 = v115[4];
    v33 = v115[5];
    v34 = v115[6];
    v35 = v115[7];
  }

  v121.x = v11;
  v121.y = v13;
  v21 = CGRectContainsPoint(*&v32, v121);
LABEL_16:
  viewConformsToTextItemInteracting = self->_viewConformsToTextItemInteracting;
  if (!viewConformsToTextItemInteracting)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "conformsToProtocol:", &unk_1EFE8B5E0)}];
    v39 = self->_viewConformsToTextItemInteracting;
    self->_viewConformsToTextItemInteracting = v38;

    viewConformsToTextItemInteracting = self->_viewConformsToTextItemInteracting;
  }

  if ([(NSNumber *)viewConformsToTextItemInteracting BOOLValue])
  {
    view = WeakRetained;
    v41 = [view _anyTextItemConstrainedToLineAtPoint:{v11, v13}];
    v42 = v41;
    if (v41)
    {
      rects = [v41 rects];
      firstObject = [rects firstObject];
      [firstObject CGRectValue];
      v45 = v115;
      v115[4] = v46;
      v45[5] = v47;
      v45[6] = v48;
      v45[7] = v49;

      objc_storeStrong(v109 + 5, @"_UITextCursorLinkRegion");
    }
  }

  else
  {
    view = [(UITextInteraction *)self->_linkInteraction view];
    if (objc_opt_respondsToSelector())
    {
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __80__UITextInteractionAssistant_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
      v107[3] = &unk_1E7125728;
      v107[4] = &v114;
      v107[5] = &v108;
      [view _requestTextItemConstrainedToLineAtPoint:v107 resultHandler:{v11, v13}];
    }
  }

  currentCursorBehavior = [(UITextInteractionAssistant *)self currentCursorBehavior];
  x = *MEMORY[0x1E695F058];
  v52 = *(MEMORY[0x1E695F058] + 8);
  v53 = *(MEMORY[0x1E695F058] + 16);
  v54 = *(MEMORY[0x1E695F058] + 24);
  switch(currentCursorBehavior)
  {
    case 0:
      if (!v21)
      {
        v56 = regionCopy;
        goto LABEL_74;
      }

      if ([(UITextInteractionAssistant *)self isInteractiveSelectionDisabled])
      {
        v57 = v109[5] == @"_UITextCursorLinkRegion";
      }

      else
      {
        v57 = 1;
      }

      v58 = [WeakRetained closestPositionToPoint:{v11, v13}];
      if (v58)
      {
        v59 = v57;
      }

      else
      {
        v59 = 0;
      }

      if (!v59)
      {
        LOBYTE(v68) = 1;
        goto LABEL_69;
      }

      [WeakRetained caretRectForPosition:v58];
      v101 = v60;
      rect = v61;
      rect_8 = v62;
      rect_16 = v63;
      v64 = *(v115 + 7);
      v65 = +[_UIPointerSettingsDomain rootSettings];
      textSettings = [v65 textSettings];

      if (vabdd_f64(rect_16, v64) >= 50.0)
      {
        [textSettings regionCaptureMultiplier];
        v70 = v69;
        UIDistanceBetweenPointAndRect(v11, v13, v101, rect_8, rect, rect_16);
        if (v71 >= rect_16 * v70)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v67 = -CGRectGetWidth(*(v115 + 1));
        v124.origin.x = v101;
        v124.size.width = rect;
        v124.origin.y = rect_8;
        v124.size.height = rect_16;
        v125 = CGRectInset(v124, v67, 0.0);
        v122.x = v11;
        v122.y = v13;
        if (!CGRectContainsPoint(v125, v122))
        {
LABEL_43:
          if ([(UITextInteractionAssistant *)self hasActiveSelectionInteraction])
          {
            goto LABEL_52;
          }

          v68 = 0;
LABEL_48:
          if ([v109[5] isEqualToString:@"_UITextCursorLinkRegion"])
          {
            if (!v68)
            {
              goto LABEL_68;
            }
          }

          else
          {
            objc_storeStrong(v109 + 5, @"_UITextLineCursorRegion");
            if ((v68 & 1) == 0)
            {
              LOBYTE(v68) = 0;
LABEL_68:

LABEL_69:
              view2 = [rect_24 view];
              v95 = view2;
              if (textInputView != view2)
              {
                [view2 convertRect:textInputView fromView:{x, v52, v53, v54}];
                x = v96;
                v52 = v97;
                v53 = v98;
                v54 = v99;
              }

              v56 = regionCopy;
              if (v68)
              {
                goto LABEL_72;
              }

              goto LABEL_74;
            }
          }

LABEL_52:
          [textInputView bounds];
          v73 = v72;
          v75 = v74;
          v77 = v76;
          v79 = v78;
          MinX = CGRectGetMinX(*(v115 + 1));
          v126.origin.x = v73;
          v126.origin.y = v75;
          v126.size.width = v77;
          v126.size.height = v79;
          v81 = CGRectGetMinX(v126);
          if (MinX < v81)
          {
            MinX = v81;
          }

          Width = CGRectGetWidth(*(v115 + 1));
          v127.origin.x = v73;
          v127.origin.y = v75;
          v127.size.width = v77;
          v127.size.height = v79;
          v83 = CGRectGetMaxX(v127) - MinX;
          if (Width >= v83)
          {
            v84 = v83;
          }

          else
          {
            v84 = Width;
          }

          if (v84 == v77)
          {
            tokenizer = [WeakRetained tokenizer];
            v86 = tokenizer;
            if (tokenizer)
            {
              v87 = [tokenizer rangeEnclosingPosition:v58 withGranularity:4 inDirection:0];
              if (v87 || ([v86 rangeEnclosingPosition:v58 withGranularity:2 inDirection:0], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                if (([v87 isEmpty] & 1) == 0)
                {
                  [WeakRetained firstRectForRange:v87];
                  y = v128.origin.y;
                  v89 = v128.size.width;
                  height = v128.size.height;
                  recta = v128.origin.x;
                  v91 = CGRectGetWidth(v128);
                  if (v91 > 0.0)
                  {
                    v129.origin.x = recta;
                    v129.origin.y = y;
                    v129.size.width = v89;
                    v129.size.height = height;
                    MinX = CGRectGetMinX(v129);
                    v84 = v91;
                  }
                }
              }
            }
          }

          [textSettings textLineRegionPadding];
          v93 = -v92;
          v130.origin.x = MinX;
          v130.origin.y = rect_8;
          v130.size.height = rect_16;
          v130.size.width = v84;
          v131 = CGRectInset(v130, v93, v93);
          x = v131.origin.x;
          v52 = v131.origin.y;
          v53 = v131.size.width;
          v54 = v131.size.height;
          LOBYTE(v68) = 1;
          goto LABEL_68;
        }
      }

      v68 = 1;
      goto LABEL_48;
    case 1:
      x = *(v115 + 4);
      v52 = *(v115 + 5);
      v53 = *(v115 + 6);
      v54 = *(v115 + 7);
      v56 = regionCopy;
      if (v21)
      {
        goto LABEL_72;
      }

LABEL_74:
      v55 = v56;
      goto LABEL_75;
    case 2:
      v55 = 0;
      goto LABEL_75;
  }

  v56 = regionCopy;
  if (!v21)
  {
    goto LABEL_74;
  }

LABEL_72:
  v132.origin.x = x;
  v132.origin.y = v52;
  v132.size.width = v53;
  v132.size.height = v54;
  v123.x = v11;
  v123.y = v13;
  v55 = regionCopy;
  if (CGRectContainsPoint(v132, v123))
  {
    v55 = [UIPointerRegion regionWithRect:v109[5] identifier:x, v52, v53, v54];
  }

LABEL_75:

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v114, 8);

  return v55;
}

void __80__UITextInteractionAssistant_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (!CGRectIsEmpty(*&a3))
  {
    v12 = *(*(a1 + 32) + 8);
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = a5;
    v12[7] = a6;
    if (a2)
    {
      v13 = (*(*(a1 + 40) + 8) + 40);

      objc_storeStrong(v13, @"_UITextCursorLinkRegion");
    }
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  identifier = [regionCopy identifier];
  v8 = [identifier isEqual:@"_UITextCursorLinkRegion"];

  if (v8)
  {
    v9 = +[UIPointerShape _linkPointerShape];
    v10 = [UIPointerStyle styleWithShape:v9 constrainedAxes:0];
LABEL_3:

    goto LABEL_6;
  }

  if (![(UITextInteractionAssistant *)self isInteractiveSelectionDisabled])
  {
    identifier2 = [regionCopy identifier];
    if ([identifier2 isEqualToString:@"_UITextLineCursorRegion"])
    {
    }

    else
    {
      v13 = [identifier2 isEqualToString:@"_UITextCursorBoundingRegion"];

      if (!v13)
      {
        goto LABEL_5;
      }
    }

    [regionCopy rect];
    v9 = [WeakRetained closestPositionToPoint:{v15 + v14 * 0.5, v17 + v16 * 0.5}];
    if (v9)
    {
      [WeakRetained caretRectForPosition:v9];
      if (v20 > v21)
      {
        Width = CGRectGetWidth(*&v18);
        v23 = 1;
        goto LABEL_18;
      }

      Width = CGRectGetHeight(*&v18);
    }

    else
    {
      Width = 0.0;
    }

    v23 = 2;
LABEL_18:
    +[UITextInteraction _maximumBeamSnappingLength];
    v25 = 2 * (Width <= v24);
    v26 = [UIPointerShape beamWithPreferredLength:v23 axis:Width];
    v10 = [UIPointerStyle styleWithShape:v26 constrainedAxes:v25];

    identifier3 = [regionCopy identifier];

    if (identifier3 != @"_UITextLineCursorRegion")
    {
      [v10 setConstrainedAxes:0];
    }

    goto LABEL_3;
  }

LABEL_5:
  v10 = +[UIPointerStyle systemPointerStyle];
LABEL_6:

  return v10;
}

- (UITextInteractionAssistant)initWithView:(id)view textInteractionMode:(int64_t)mode
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = UITextInteractionAssistant;
  v7 = [(UITextInteractionAssistant *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_view, viewCopy);
    v8->_textInteractionMode = mode;
    [(UITextInteractionAssistant *)v8 setGestureRecognizers];
    [(UITextInteractionAssistant *)v8 _updateRenderSpaceConversionConformance];
    [(UITextInteractionAssistant *)v8 _updateTextFormattingRestorationMethodsConformance];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_setGestureRecognizers_ name:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:0];
  }

  return v8;
}

- (id)_asText
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  _proxyTextInput = [WeakRetained _proxyTextInput];

  return _proxyTextInput;
}

- (BOOL)_canAutoscroll
{
  _asTextAutoscrolling = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
  if (_asTextAutoscrolling)
  {
    v4 = 1;
  }

  else
  {
    _asBETextInput = [(UITextInteractionAssistant *)self _asBETextInput];
    if (_asBETextInput)
    {
      v4 = 1;
    }

    else
    {
      _asAsyncTextInputClient = [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
      v4 = _asAsyncTextInputClient != 0;
    }
  }

  return v4;
}

- (id)_asTextAutoscrolling
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  _proxyTextInput = [WeakRetained _proxyTextInput];
  if ([_proxyTextInput conformsToProtocolCached:&unk_1EFE89FF8])
  {
    _proxyTextInput2 = [WeakRetained _proxyTextInput];
  }

  else
  {
    _proxyTextInput2 = 0;
  }

  return _proxyTextInput2;
}

- (id)_asAsyncTextInputClient
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _proxyTextInput = [WeakRetained _proxyTextInput];
    v5 = [_proxyTextInput conformsToProtocolCached:&unk_1F016C7B0];

    if (v5)
    {
      _proxyTextInput2 = [WeakRetained _proxyTextInput];
    }

    else
    {
      _proxyTextInput2 = 0;
    }
  }

  else
  {
    _proxyTextInput2 = 0;
  }

  return _proxyTextInput2;
}

- (id)_asBETextInput
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _proxyTextInput = [WeakRetained _proxyTextInput];
    v5 = [_proxyTextInput conformsToProtocolCached:&unk_1F016C810];

    if (v5)
    {
      _proxyTextInput2 = [WeakRetained _proxyTextInput];
    }

    else
    {
      _proxyTextInput2 = 0;
    }
  }

  else
  {
    _proxyTextInput2 = 0;
  }

  return _proxyTextInput2;
}

- (void)setSuppressSystemUI:(BOOL)i
{
  suppressSystemUI = self->_suppressSystemUI;
  self->_suppressSystemUI = i;
  if (suppressSystemUI != i)
  {
    if (i)
    {
      [(UITextInteractionAssistant *)self activateSelection];
    }

    else
    {
      [(UITextInteractionAssistant *)self deactivateSelection];
    }
  }
}

- (int)selectionHighlightMode
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = self->_selectionViewManager;

    return [(UITextSelectionDisplayInteraction *)selectionViewManager rangeViewMode];
  }

  else
  {
    rangeView = [(UITextSelectionView *)self->_selectionView rangeView];
    mode = [rangeView mode];

    return mode;
  }
}

- (void)setSelectionHighlightMode:(int)mode
{
  v3 = *&mode;
  rangeView = [(UITextSelectionView *)self->_selectionView rangeView];
  [rangeView setMode:v3];

  selectionViewManager = self->_selectionViewManager;

  [(UITextSelectionDisplayInteraction *)selectionViewManager setRangeViewMode:v3];
}

- (BOOL)_selectionIsActivated
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = self->_selectionViewManager;

    return [(UITextSelectionDisplayInteraction *)selectionViewManager isActivated];
  }

  else
  {
    selectionView = self->_selectionView;

    return [(UITextSelectionView *)selectionView isValid];
  }
}

- (void)_invalidateSelectionDisplay
{
  [(UITextSelectionView *)self->_selectionView updateSelectionRectsIfNeeded];
  [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _layoutManagedSubviewsResettingBlinkingAnimation:0];
  [(_UITextChoiceAccelerationAssistant *)self->_textChoicesAssistant refreshExistingUnderlines];
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateActiveAutocorrectionRects];
}

- (void)setSelectionDisplayVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (!+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionView = self->_selectionView;

    [(UITextSelectionView *)selectionView setVisible:visibleCopy];
  }
}

- (BOOL)isSelectionDisplayVisible
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    return 1;
  }

  selectionView = self->_selectionView;

  return [(UITextSelectionView *)selectionView visible];
}

- (void)setCursorBlinkAnimationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    cursorView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager cursorView];
    [cursorView setBlinking:enabledCopy];
  }

  else
  {
    selectionView = self->_selectionView;

    [(UITextSelectionView *)selectionView setCaretBlinks:enabledCopy];
  }
}

- (BOOL)isCursorBlinkAnimationEnabled
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    cursorView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager cursorView];
    isBlinking = [cursorView isBlinking];

    return isBlinking;
  }

  else
  {
    selectionView = self->_selectionView;

    return [(UITextSelectionView *)selectionView caretBlinks];
  }
}

- (void)setGlowViewMode:(int)mode
{
  v3 = *&mode;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = self->_selectionViewManager;

    [(UITextSelectionDisplayInteraction *)selectionViewManager _setGlowViewMode:v3];
  }
}

- (int)glowViewMode
{
  result = +[UITextSelectionDisplayInteraction isModernSelectionViewEnabled];
  if (result)
  {
    selectionViewManager = self->_selectionViewManager;

    return [(UITextSelectionDisplayInteraction *)selectionViewManager _glowViewMode];
  }

  return result;
}

- (id)selectionView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    NSLog(&cfstr_WarningUitexti.isa);
    _legacySelectionView = 0;
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  }

  return _legacySelectionView;
}

- (_UITextSelectionWidgetAnimating)_caretView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorView];
  }

  else
  {
    [(UITextSelectionView *)self->_selectionView caretView];
  }
  v3 = ;

  return v3;
}

- (unint64_t)loupeOrientation
{
  if ([(UITextInteractionAssistant *)self isDisplayingVerticalSelection])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (UITextInput)textDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([(UITextInteractionAssistant *)self containerIsBrowserView])
  {
    _proxyTextInput = [WeakRetained _proxyTextInput];
    formElement = [_proxyTextInput formElement];
    v6 = formElement;
    if (formElement)
    {
      v7 = formElement;
    }

    else
    {
      v7 = WeakRetained;
    }

    v8 = v7;

    WeakRetained = v8;
  }

  return WeakRetained;
}

- (id)linkInteraction
{
  view = [(UITextInteraction *)self->_linkInteraction view];

  if (view)
  {
    v4 = self->_linkInteraction;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setExternalInteractions:(id)interactions
{
  interactionsCopy = interactions;
  textInteractionMode = self->_textInteractionMode;
  textInteractionMode = [(UITextInteraction *)interactionsCopy textInteractionMode];
  externalInteractions = self->_externalInteractions;
  self->_externalInteractions = interactionsCopy;
  v8 = interactionsCopy;

  self->_textInteractionMode = [(UITextInteraction *)v8 textInteractionMode];
  delegate = [(UITextInteraction *)v8 delegate];
  [(UITextInteraction *)self->_interactions setDelegate:delegate];

  if (textInteractionMode != textInteractionMode)
  {

    [(UITextInteractionAssistant *)self setGestureRecognizers];
  }
}

- (CGPoint)loupeGestureEndPoint
{
  x = self->_loupeGestureEndPoint.x;
  y = self->_loupeGestureEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)autoscrollUntransformedExtentPoint
{
  x = self->_autoscrollUntransformedExtentPoint.x;
  y = self->_autoscrollUntransformedExtentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)invalidate
{
  [(UITextInteractionAssistant *)self detach:1];
  selectionView = self->_selectionView;

  [(UITextSelectionView *)selectionView invalidate];
}

- (BOOL)isValid
{
  _selectionIsActivated = [(UITextInteractionAssistant *)self _selectionIsActivated];
  if (_selectionIsActivated)
  {
    activeSelection = [(UITextInteractionAssistant *)self activeSelection];
    isValid = [activeSelection isValid];

    LOBYTE(_selectionIsActivated) = isValid;
  }

  return _selectionIsActivated;
}

- (void)detach:(BOOL)detach
{
  detachCopy = detach;
  self->_detaching = 1;
  [(UITextSelectionView *)self->_selectionView detach];
  view = [(UITextInteraction *)self->_linkInteraction view];
  [view removeInteraction:self->_linkInteraction];

  linkInteraction = self->_linkInteraction;
  self->_linkInteraction = 0;

  view2 = [(UITextInteraction *)self->_textContextMenuInteraction view];
  [view2 removeInteraction:self->_textContextMenuInteraction];

  textContextMenuInteraction = self->_textContextMenuInteraction;
  self->_textContextMenuInteraction = 0;

  view3 = [(UIPointerInteraction *)self->_pointerInteraction view];
  [view3 removeInteraction:self->_pointerInteraction];

  pointerInteraction = self->_pointerInteraction;
  self->_pointerInteraction = 0;

  if (self->_selectionViewManager)
  {
    view4 = [(UITextInteraction *)self->_interactions view];
    [view4 removeInteraction:self->_selectionViewManager];

    selectionViewManager = self->_selectionViewManager;
    self->_selectionViewManager = 0;
  }

  [(UITextInteractionAssistant *)self clearGestureRecognizers:detachCopy];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v13 = +[UITextMagnifierCaret activeCaretMagnifier];
  target = [v13 target];

  if (WeakRetained == target)
  {
    [v13 stopMagnifying:0];
  }

  v15 = +[UITextMagnifierRanged activeRangedMagnifier];
  target2 = [v15 target];

  if (WeakRetained == target2)
  {
    [v15 stopMagnifying:0];
  }

  self->_detaching = 0;
}

- (UIScrollView)scrollView
{
  view = [(UITextInteractionAssistant *)self view];
  textInputView = [view textInputView];
  _enclosingScrollerIncludingSelf = [textInputView _enclosingScrollerIncludingSelf];

  return _enclosingScrollerIncludingSelf;
}

- (UIFieldEditor)fieldEditor
{
  view = [(UITextInteractionAssistant *)self view];
  _proxyTextInput = [view _proxyTextInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  view2 = [(UITextInteractionAssistant *)self view];
  _proxyTextInput2 = [view2 _proxyTextInput];
  if (isKindOfClass)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  view3 = [(UITextInteractionAssistant *)self view];
  view2 = view3;
  if (v8)
  {
    _proxyTextInput3 = [view3 _proxyTextInput];
    _proxyTextInput2 = [_proxyTextInput3 _fieldEditor];

LABEL_12:
    goto LABEL_13;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  view4 = [(UITextInteractionAssistant *)self view];
  view2 = view4;
  if (v11)
  {
    _fieldEditor = [view4 _fieldEditor];
LABEL_11:
    _proxyTextInput2 = _fieldEditor;
    goto LABEL_12;
  }

  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    view5 = [(UITextInteractionAssistant *)self view];
    view2 = [view5 _firstTextView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = view2;
    }

    else
    {
      v16 = 0;
    }

    _fieldEditor = v16;
    goto LABEL_11;
  }

  _proxyTextInput2 = 0;
LABEL_13:

  return _proxyTextInput2;
}

- (BOOL)containerIsTextField
{
  view = [(UITextInteractionAssistant *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    view2 = [(UITextInteractionAssistant *)self view];
    _proxyTextInput = [view2 _proxyTextInput];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }

    else
    {
      fieldEditor = [(UITextInteractionAssistant *)self fieldEditor];
      v4 = fieldEditor != 0;
    }
  }

  return v4;
}

- (BOOL)containerAllowsSelection
{
  view = [(UITextInteractionAssistant *)self view];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  view2 = [(UITextInteractionAssistant *)self view];
  clearingBehavior = [view2 clearingBehavior];

  return clearingBehavior != 2;
}

- (BOOL)containerWantsVisualBIDISelections
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_view);
  _wantsVisualBIDISelections = [v5 _wantsVisualBIDISelections];

  return _wantsVisualBIDISelections;
}

- (void)clearGestureRecognizers:(BOOL)recognizers
{
  if (recognizers || ![(UITextInteractionAssistant *)self inGesture])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant cancelDelayedCommandRequests];
    gestureState = self->_gestureState;
    self->_gestureState = 0;

    view = [(UITextInteraction *)self->_interactions view];
    [view removeInteraction:self->_interactions];
    interactions = self->_interactions;
    self->_interactions = 0;
  }
}

- (void)canBeginDragCursor:(id)cursor
{
  cursorCopy = cursor;
  scrollView = [(UITextInteractionAssistant *)self scrollView];
  [scrollView contentSize];
  v6 = v5;

  scrollView2 = [(UITextInteractionAssistant *)self scrollView];
  [scrollView2 bounds];
  v9 = v8;

  if (v6 > v9)
  {
    [cursorCopy setCanBeginDrag:0];
  }
}

- (id)_computeGestureStateForView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_new();
  [v5 setViewIsEditable:{objc_msgSend(viewCopy, "isEditable")}];
  [v5 setViewCanBecomeEditable:{-[UITextInteractionAssistant viewCouldBecomeEditable:](self, "viewCouldBecomeEditable:", viewCopy)}];
  externalInteractions = self->_externalInteractions;
  if (externalInteractions)
  {
    children = [(UITextInteraction *)externalInteractions children];
    [v5 setHasExternalInteractions:{objc_msgSend(children, "count") != 0}];
  }

  else
  {
    [v5 setHasExternalInteractions:0];
  }

  [v5 setMode:self->_textInteractionMode];
  [v5 setIsFirstResponder:{objc_msgSend(viewCopy, "isFirstResponder")}];

  return v5;
}

- (void)setGestureRecognizers:(id)recognizers
{
  recognizersCopy = recognizers;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  _responderWindow = [WeakRetained _responderWindow];
  windowScene = [_responderWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  object = [recognizersCopy object];

  if (keyboardSceneDelegate == object)
  {

    [(UITextInteractionAssistant *)self setGestureRecognizers];
  }
}

- (void)setExternalContextMenuInteractionDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_externalContextMenuInteractionDelegate, delegateCopy);
  [(UITextContextMenuInteraction *)self->_textContextMenuInteraction setExternalContextMenuDelegate:delegateCopy];
}

- (void)addGestureRecognizersToView:(id)view
{
  viewCopy = view;
  if (!_UIDeviceHasExternalTouchInput() && !self->_interactions)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    if (([WeakRetained isEditable] & 1) != 0 || (v5 = objc_loadWeakRetained(&self->_view), v6 = +[UITextItemInteractionInteraction mightResponderHaveTextItemInteractions:](UITextItemInteractionInteraction, "mightResponderHaveTextItemInteractions:", v5), v5, !v6))
    {
      v8 = [(UITextInteractionAssistant *)self viewCouldBecomeEditable:WeakRetained];
      v7 = 0;
    }

    else
    {
      v7 = 1;
      v8 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      playsNicelyWithGestures = [WeakRetained playsNicelyWithGestures];
    }

    else
    {
      playsNicelyWithGestures = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      _isInteractiveTextSelectionDisabled = [WeakRetained _isInteractiveTextSelectionDisabled];
    }

    else
    {
      _isInteractiveTextSelectionDisabled = 0;
    }

    linkInteraction = self->_linkInteraction;
    if (linkInteraction)
    {
      goto LABEL_14;
    }

    if ([(UITextInteractionAssistant *)self wantsLinkInteraction])
    {
      v13 = [UITextLinkInteraction interactionWithShouldProxyContextMenuDelegate:1];
      v14 = self->_linkInteraction;
      self->_linkInteraction = v13;

      [viewCopy addInteraction:self->_linkInteraction];
      [(UITextInteraction *)self->_linkInteraction setAssistantDelegate:self];
      goto LABEL_19;
    }

    linkInteraction = self->_linkInteraction;
    if (linkInteraction)
    {
LABEL_14:
      view = [(UITextInteraction *)linkInteraction view];

      if (view != viewCopy)
      {
        [viewCopy addInteraction:self->_linkInteraction];
      }
    }

LABEL_19:
    textContextMenuInteraction = self->_textContextMenuInteraction;
    if (textContextMenuInteraction)
    {
      view2 = [(UITextInteraction *)textContextMenuInteraction view];

      if (view2 == viewCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = objc_alloc_init(UITextContextMenuInteraction);
      v18 = self->_textContextMenuInteraction;
      self->_textContextMenuInteraction = v17;

      externalContextMenuInteractionDelegate = [(UITextInteractionAssistant *)self externalContextMenuInteractionDelegate];
      [(UITextContextMenuInteraction *)self->_textContextMenuInteraction setExternalContextMenuDelegate:externalContextMenuInteractionDelegate];

      [(UITextInteraction *)self->_textContextMenuInteraction setAssistantDelegate:self];
    }

    [viewCopy addInteraction:self->_textContextMenuInteraction];
LABEL_24:
    if ([(UITextInteractionAssistant *)self currentCursorBehavior]== 2 || (p_pointerInteraction = &self->_pointerInteraction, self->_pointerInteraction) || ![(UITextInteractionAssistant *)self supportsIndirectInteractions])
    {
      p_pointerInteraction = &self->_pointerInteraction;
      pointerInteraction = self->_pointerInteraction;
      if (!pointerInteraction || ([(UIPointerInteraction *)pointerInteraction view], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == viewCopy))
      {
LABEL_31:
        v27 = [UITextInteraction textInteractionForMode:self->_textInteractionMode];
        interactions = self->_interactions;
        self->_interactions = v27;

        [(UITextInteraction *)self->_interactions setTextInput:WeakRetained];
        [(UITextInteraction *)self->_interactions setAssistantDelegate:self];
        delegate = [(UITextInteraction *)self->_externalInteractions delegate];
        [(UITextInteraction *)self->_interactions setDelegate:delegate];

        if (self->_textContextMenuInteraction)
        {
          [(UITextInteraction *)self->_interactions addIndirectChild:?];
        }

        if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
        {
          selectionViewManager = self->_selectionViewManager;
          if (selectionViewManager)
          {
            view3 = [(UITextSelectionDisplayInteraction *)selectionViewManager view];

            if (view3 == viewCopy)
            {
              goto LABEL_38;
            }

            selectionViewManager = self->_selectionViewManager;
          }

          isActivated = [(UITextSelectionDisplayInteraction *)selectionViewManager isActivated];
          view4 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager view];
          [view4 removeInteraction:self->_selectionViewManager];

          v34 = [[UITextSelectionDisplayInteraction alloc] _initWithTextInput:WeakRetained delegate:self activated:0];
          v35 = self->_selectionViewManager;
          self->_selectionViewManager = v34;

          [viewCopy addInteraction:self->_selectionViewManager];
          [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setActivated:isActivated];
        }

LABEL_38:
        v36 = viewCopy;
        _rangeAdjustmentGestureView = v36;
        if (objc_opt_respondsToSelector())
        {
          _rangeAdjustmentGestureView = [WeakRetained _rangeAdjustmentGestureView];
        }

        v38 = [[UITextRangeAdjustmentInteraction alloc] initWithAdjustmentDelegate:self gestureHostView:_rangeAdjustmentGestureView];
        rangeAdjustmentInteraction = self->_rangeAdjustmentInteraction;
        self->_rangeAdjustmentInteraction = v38;

        [(UITextInteraction *)self->_interactions addChild:self->_rangeAdjustmentInteraction];
        textInteractionMode = self->_textInteractionMode;
        if (textInteractionMode > 999)
        {
          if (textInteractionMode != 1000)
          {
            if (textInteractionMode == 1001)
            {
              [(UITextInteraction *)self->_interactions _setAllowsSelectionCommands:[(UITextInteraction *)self->_externalInteractions _allowsSelectionCommands]];
              v41 = self->_interactions;
              v42 = [UITextRefinementInteraction alloc];
              v43 = objc_opt_new();
              v44 = [(UITextRefinementInteraction *)v42 initWithBehaviorDelegate:v43];
              [(UITextInteraction *)v41 addChild:v44];

              v45 = self->_interactions;
              v46 = [[UITextNonEditableInteraction alloc] initWithMode:2];
              [(UITextInteraction *)v45 addChild:v46];

              v47 = self->_interactions;
              v48 = objc_alloc_init(UITextServicesInteraction);
LABEL_47:
              v49 = v48;
              [(UITextInteraction *)v47 addChild:v48];
LABEL_48:

LABEL_66:
              [v36 addInteraction:self->_interactions];
              [(UITextInteraction *)self->_interactions finishSetup];

              goto LABEL_67;
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (!textInteractionMode)
          {
            v82 = self->_interactions;
            v83 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
            [(UITextInteraction *)v82 addChild:v83];

            v84 = self->_interactions;
            v85 = [UITextRefinementInteraction alloc];
            v86 = objc_opt_new();
            v87 = [(UITextRefinementInteraction *)v85 initWithBehaviorDelegate:v86];
            [(UITextInteraction *)v84 addChild:v87];

            if ([(UITextInteractionAssistant *)self supportsIndirectInteractions])
            {
              v88 = self->_interactions;
              v89 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
              [(UITextInteraction *)v88 addChild:v89];

              v90 = self->_interactions;
              v91 = [UITextRefinementInteraction alloc];
              v92 = objc_opt_new();
              v93 = [(UITextRefinementInteraction *)v91 initWithBehaviorDelegate:v92];
              [(UITextInteraction *)v90 addChild:v93];
            }

            v94 = self->_interactions;
            v95 = objc_alloc_init(UITextServicesInteraction);
            [(UITextInteraction *)v94 addChild:v95];

            v96 = self->_interactions;
            v97 = [[UITextIndirectKeyboardInteraction alloc] initWithView:0];
            [(UITextInteraction *)v96 addChild:v97];

            [(UITextInteractionAssistant *)self wantsLinkInteraction];
            goto LABEL_66;
          }

          if (textInteractionMode != 1)
          {
LABEL_52:
            if ([(UITextInteractionAssistant *)self useGesturesForEditableContent])
            {
              if ([WeakRetained _hasMarkedText])
              {
                v56 = +[UIKeyboardImpl activeInstance];
                hasEditableMarkedText = [v56 hasEditableMarkedText];

                if (hasEditableMarkedText)
                {
                  v58 = +[UIKeyboardImpl activeInstance];
                  liveConversionEnabled = [v58 liveConversionEnabled];

                  v60 = self->_interactions;
                  if (liveConversionEnabled)
                  {
                    v61 = [UITextLiveConversionInteraction alloc];
                    _asText = [(UITextInteractionAssistant *)self _asText];
                    v63 = [(UITextLiveConversionInteraction *)v61 initWithTextInput:_asText];
                    [(UITextInteraction *)v60 addChild:v63];

                    goto LABEL_66;
                  }

                  v161 = [UITextPhraseBoundaryInteraction alloc];
                  _asText2 = [(UITextInteractionAssistant *)self _asText];
                  v163 = [(UITextPhraseBoundaryInteraction *)v161 initWithTextInput:_asText2];
                  [(UITextInteraction *)v60 addChild:v163];

                  v164 = self->_interactions;
                  v165 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
                  [(UITextInteraction *)v164 addChild:v165];

                  if (+[UIKeyboard usesInputSystemUI])
                  {
                    v166 = [[UITextIndirectKeyboardInteraction alloc] initWithView:v36];
                    [(UITextIndirectKeyboardInteraction *)v166 setDisableTouchesForGestures:1];
                    [(UITextInteraction *)self->_interactions addChild:v166];
                  }

                  if (![(UITextInteractionAssistant *)self supportsIndirectInteractions])
                  {
                    goto LABEL_66;
                  }

                  v47 = self->_interactions;
                  v48 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
                  goto LABEL_47;
                }
              }

              v126 = self->_interactions;
              v127 = [UITextRefinementInteraction alloc];
              v128 = objc_opt_new();
              v129 = [(UITextRefinementInteraction *)v127 initWithBehaviorDelegate:v128];
              [(UITextInteraction *)v126 addChild:v129];

              v49 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
              [(UITextInteraction *)self->_interactions addChild:v49];
              v130 = self->_interactions;
              v131 = [[UITextIndirectKeyboardInteraction alloc] initWithView:v36];
              [(UITextInteraction *)v130 addChild:v131];

              if ([(UITextInteractionAssistant *)self supportsIndirectInteractions])
              {
                v132 = self->_interactions;
                v133 = [UITextRefinementInteraction alloc];
                v134 = objc_opt_new();
                v135 = [(UITextRefinementInteraction *)v133 initWithBehaviorDelegate:v134];
                [(UITextInteraction *)v132 addChild:v135];

                v136 = self->_interactions;
                v137 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
                [(UITextInteraction *)v136 addChild:v137];
              }

              [(UITextInteractionAssistant *)self wantsLinkInteraction];
              if (!v8)
              {
                goto LABEL_48;
              }

              v138 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];

              if (!v138)
              {
                goto LABEL_48;
              }

              v139 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
              v140 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];
              [v139 requireGestureRecognizerToFail:v140];

              v141 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7670];

              if (!v141)
              {
                goto LABEL_48;
              }

              v123 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];
              v124 = self->_interactions;
              v125 = 0x1EFBA7670;
LABEL_88:
              v142 = [(UITextInteraction *)v124 recognizerForName:v125];
              [v123 requireGestureRecognizerToFail:v142];

              goto LABEL_48;
            }

            if (_isInteractiveTextSelectionDisabled)
            {
              goto LABEL_66;
            }

            v98 = self->_interactions;
            if (playsNicelyWithGestures)
            {
              v99 = [UITextRefinementInteraction alloc];
              v100 = objc_opt_new();
              v101 = [(UITextRefinementInteraction *)v99 initWithBehaviorDelegate:v100];
              [(UITextInteraction *)v98 addChild:v101];

              v102 = self->_interactions;
              v103 = [[UITextNonEditableInteraction alloc] initWithMode:0];
              [(UITextInteraction *)v102 addChild:v103];

              v104 = self->_interactions;
              v105 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
              [(UITextInteraction *)v104 addChild:v105];

              if ([(UITextInteractionAssistant *)self supportsIndirectInteractions])
              {
                v106 = self->_interactions;
                v107 = [UITextRefinementInteraction alloc];
                v108 = objc_opt_new();
                v109 = [(UITextRefinementInteraction *)v107 initWithBehaviorDelegate:v108];
                [(UITextInteraction *)v106 addChild:v109];

                v110 = self->_interactions;
                v111 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
                [(UITextInteraction *)v110 addChild:v111];
              }

              v112 = self->_interactions;
              v113 = [[UITextIndirectNonEditableInteraction alloc] initWithView:v36];
              [(UITextInteraction *)v112 addChild:v113];

              v49 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFB7FF10];
              if (v49)
              {
                v114 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA76D0];
                [v114 requireGestureRecognizerToFail:v49];
              }

              [(UITextInteractionAssistant *)self wantsLinkInteraction];
              if (v8)
              {
                v115 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];

                if (v115)
                {
                  v116 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
                  v117 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];
                  [v116 requireGestureRecognizerToFail:v117];

                  v118 = [(UITextInteraction *)self->_linkInteraction recognizerForName:0x1EFBA76F0];
                  v119 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];
                  [v118 requireGestureRecognizerToFail:v119];

                  v120 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7670];

                  if (v120)
                  {
                    v121 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7650];
                    v122 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7670];
                    [v121 requireGestureRecognizerToFail:v122];
                  }
                }
              }

              if (!v7)
              {
                goto LABEL_48;
              }

              v123 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
              v124 = self->_linkInteraction;
              v125 = 0x1EFBA76F0;
              goto LABEL_88;
            }

            v143 = [[UITextIndirectNonEditableInteraction alloc] initWithView:v36];
            [(UITextInteraction *)v98 addChild:v143];

            v53 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFB7FF10];
            if (v53)
            {
              v144 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA76D0];
              [v144 requireGestureRecognizerToFail:v53];
            }

            v145 = self->_interactions;
            v146 = [[UITextNonEditableInteraction alloc] initWithMode:1];
            [(UITextInteraction *)v145 addChild:v146];

            v147 = self->_interactions;
            v148 = [UITextRefinementInteraction alloc];
            v149 = objc_opt_new();
            v150 = [(UITextRefinementInteraction *)v148 initWithBehaviorDelegate:v149];
            [(UITextInteraction *)v147 addChild:v150];

            if ([(UITextInteractionAssistant *)self supportsIndirectInteractions])
            {
              v151 = self->_interactions;
              v152 = [UITextRefinementInteraction alloc];
              v153 = objc_opt_new();
              v154 = [(UITextRefinementInteraction *)v152 initWithBehaviorDelegate:v153];
              [(UITextInteraction *)v151 addChild:v154];

              v155 = self->_interactions;
              v156 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
              [(UITextInteraction *)v155 addChild:v156];
            }

            v157 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
            [v157 setDelaysTouchesEnded:0];

            v158 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
            [v158 setCancelsTouchesInView:0];

            v159 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7610];
            [v159 setDelaysTouchesEnded:0];

            v160 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA7630];
            [v160 setDelaysTouchesEnded:0];

LABEL_62:
            goto LABEL_66;
          }
        }

        v50 = self->_interactions;
        v51 = [[UITextNonEditableInteraction alloc] initWithMode:0];
        [(UITextInteraction *)v50 addChild:v51];

        _customHighlighterGesture = [(UITextInteraction *)self->_externalInteractions _customHighlighterGesture];
        v53 = _customHighlighterGesture;
        v54 = self->_interactions;
        if (self->_textInteractionMode == 1000 && _customHighlighterGesture)
        {
          v55 = [[UITextRefinementInteraction_CustomHighlighter alloc] initWithLongPressGesture:_customHighlighterGesture];
          [(UITextInteraction *)v54 addChild:v55];
        }

        else
        {
          v64 = [UITextRefinementInteraction alloc];
          v65 = objc_opt_new();
          v66 = [(UITextRefinementInteraction *)v64 initWithBehaviorDelegate:v65];
          [(UITextInteraction *)v54 addChild:v66];

          v67 = self->_interactions;
          v68 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
          [(UITextInteraction *)v67 addChild:v68];

          if ([(UITextInteractionAssistant *)self supportsIndirectInteractions])
          {
            v69 = self->_interactions;
            v70 = [objc_alloc(-[UITextInteractionAssistant selectionInteractionClass](self "selectionInteractionClass"))];
            [(UITextInteraction *)v69 addChild:v70];

            v71 = self->_interactions;
            v72 = [UITextRefinementInteraction alloc];
            v73 = objc_opt_new();
            v74 = [(UITextRefinementInteraction *)v72 initWithBehaviorDelegate:v73];
            [(UITextInteraction *)v71 addChild:v74];
          }

          v75 = self->_interactions;
          v76 = [[UITextIndirectNonEditableInteraction alloc] initWithView:v36];
          [(UITextInteraction *)v75 addChild:v76];

          v55 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFB7FF10];
          if (v55)
          {
            v77 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA76D0];
            [v77 requireGestureRecognizerToFail:v55];
          }
        }

        v78 = [(UITextInteraction *)self->_interactions recognizerForName:0x1EFBA75D0];
        v79 = [(UITextInteraction *)self->_linkInteraction recognizerForName:0x1EFBA76F0];
        [v78 requireGestureRecognizerToFail:v79];

        v80 = self->_interactions;
        v81 = objc_alloc_init(UITextServicesInteraction);
        [(UITextInteraction *)v80 addChild:v81];

        [(UITextInteractionAssistant *)self wantsLinkInteraction];
        goto LABEL_62;
      }
    }

    else
    {
      v21 = [UIPointerInteraction alloc];
      _pointerInteractionDelegate = [(UITextInteractionAssistant *)self _pointerInteractionDelegate];
      v23 = [(UIPointerInteraction *)v21 initWithDelegate:_pointerInteractionDelegate];
      v24 = self->_pointerInteraction;
      self->_pointerInteraction = v23;

      [(UIPointerInteraction *)self->_pointerInteraction _setPausesPointerUpdatesWhilePanning:0];
    }

    [viewCopy addInteraction:*p_pointerInteraction];
    goto LABEL_31;
  }

LABEL_67:
}

- (void)setFirstResponderIfNecessaryActivatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  isFirstResponder = [WeakRetained isFirstResponder];
  if (([WeakRetained isFirstResponder] & 1) == 0)
  {
    if (!-[UITextInteractionAssistant containerIsBrowserView](self, "containerIsBrowserView") || ([WeakRetained _proxyTextInput], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "formElement"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      [WeakRetained becomeFirstResponder];
    }
  }

  if ([WeakRetained isFirstResponder])
  {
    view = [(UITextInteractionAssistant *)self view];
    _responderWindow = [view _responderWindow];
    [_responderWindow makeKeyWindow];

    if (isFirstResponder)
    {
      _responderWindow2 = [WeakRetained _responderWindow];
      _isApplicationKeyWindow = [_responderWindow2 _isApplicationKeyWindow];

      if ((_isApplicationKeyWindow & 1) == 0)
      {
        [WeakRetained reloadInputViews];
      }
    }

    [(UITextCursorAssertionController *)self->_assertionController _updateSubjectWithAssertionState];
  }

  if (selectionCopy)
  {
    if ([WeakRetained isFirstResponder])
    {
      if (![(UITextInteractionAssistant *)self _selectionIsActivated])
      {
        v12 = [UITextInputTraits traitsByAdoptingTraits:WeakRetained];
        deferBecomingResponder = [v12 deferBecomingResponder];

        if ((deferBecomingResponder & 1) == 0)
        {
          [(UITextInteractionAssistant *)self activateSelection];
        }
      }
    }
  }
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v46 = *MEMORY[0x1E69E9840];
  scrollView = [(UITextInteractionAssistant *)self scrollView];
  if (scrollView)
  {
    activeSelection = [(UITextInteractionAssistant *)self activeSelection];
    selectedRange = [activeSelection selectedRange];

    if (!selectedRange)
    {
      activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
      [activeSelection2 selectionChanged];
    }

    activeSelection3 = [(UITextInteractionAssistant *)self activeSelection];
    [activeSelection3 caretRect];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    if (CGRectIsNull(v47))
    {
      activeSelection4 = [(UITextInteractionAssistant *)self activeSelection];
      selectedRange2 = [activeSelection4 selectedRange];

      if (selectedRange2)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        activeSelection5 = [(UITextInteractionAssistant *)self activeSelection];
        selectionRects = [activeSelection5 selectionRects];

        v22 = [selectionRects countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v42;
          do
          {
            v25 = 0;
            do
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(selectionRects);
              }

              [*(*(&v41 + 1) + 8 * v25) rect];
              v50.origin.x = v26;
              v50.origin.y = v27;
              v50.size.width = v28;
              v50.size.height = v29;
              v48.origin.x = x;
              v48.origin.y = y;
              v48.size.width = width;
              v48.size.height = height;
              v49 = CGRectUnion(v48, v50);
              x = v49.origin.x;
              y = v49.origin.y;
              width = v49.size.width;
              height = v49.size.height;
              ++v25;
            }

            while (v23 != v25);
            v23 = [selectionRects countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v23);
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    textInputView = [WeakRetained textInputView];
    [scrollView convertRect:textInputView fromView:{x, y, width, height}];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    if (v37 == 0.0)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = v37;
    }

    [scrollView scrollRectToVisible:visibleCopy animated:{v33, v35, v40, v39}];
  }
}

- (void)loupeGestureWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel
{
  interactions = self->_interactions;
  velocityCopy = velocity;
  translationCopy = translation;
  locationCopy = location;
  v17 = [(UITextInteraction *)interactions interactionWithGestureForName:0x1EFBA76D0];
  [v17 willBeginExternalGesture];
  [v17 loupeGestureWithState:state location:locationCopy translation:translationCopy velocity:velocityCopy modifierFlags:flags shouldCancel:cancel];
}

- (void)loupeMagnifierWithState:(int64_t)state atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = +[UITextMagnifierCaret sharedCaretMagnifier];
  if (state == 2)
  {
    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (state == 1)
  {
    if (self->_willHandoffLoupeMagnifier)
    {
      self->_willHandoffLoupeMagnifier = 0;
      goto LABEL_11;
    }

    v11 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    textInputView = [WeakRetained textInputView];
    [v11 beginMagnifyingTarget:textInputView text:WeakRetained magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    goto LABEL_10;
  }

  if ((state - 3) <= 1)
  {
    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
    v8 = v11;
    if (!self->_willHandoffLoupeMagnifier)
    {
      [v11 stopMagnifying:1];
      [(UITextInteractionAssistant *)self didEndSelectionInteraction];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)rangedMagnifierWithState:(int64_t)state atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = +[UITextMagnifierRanged sharedRangedMagnifier];
  if (state == 2)
  {
    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
  }

  else if (state == 1)
  {
    v11 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    textInputView = [WeakRetained textInputView];
    [v11 beginMagnifyingTarget:textInputView text:WeakRetained magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  else
  {
    if ((state - 3) > 1)
    {
      goto LABEL_8;
    }

    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
    [v11 stopMagnifying:1];
  }

  v8 = v11;
LABEL_8:
}

- (void)lollipopGestureWithState:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)type
{
  y = touch.y;
  x = touch.x;
  v9 = location.y;
  v10 = location.x;
  rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  [rangeAdjustmentInteraction manuallyUpdateInteractionWithGestureState:state location:type locationOfFirstTouch:v10 forTouchType:{v9, x, y}];
}

- (void)setSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    hasEditableSelection = [activeSelection hasEditableSelection];

    if ((hasEditableSelection & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [activeSelection setSelectionWithPoint:{x, y}];
  [activeSelection setGranularity:0];
LABEL_5:
}

- (void)commitSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    hasEditableSelection = [activeSelection hasEditableSelection];

    if ((hasEditableSelection & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  [_legacySelectionView floatingCursorPositionForPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  [activeSelection setSelectionWithPoint:{v10, v12}];
  [activeSelection setGranularity:0];
  activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection2 commit];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
LABEL_5:
}

- (void)extendSelectionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    hasEditableSelection = [activeSelection hasEditableSelection];

    if ((hasEditableSelection & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [activeSelection extendSelectionToPoint:{x, y}];
  [activeSelection setGranularity:0];
LABEL_5:
}

- (void)extendSelectionToLoupeOrSetToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!self->_stashedTextRange)
  {
    goto LABEL_10;
  }

  loupeGesture = [(UITextInteractionAssistant *)self loupeGesture];
  if (![loupeGesture numberOfTouches])
  {
    goto LABEL_9;
  }

  loupeGesture2 = [(UITextInteractionAssistant *)self loupeGesture];
  if ([loupeGesture2 state] <= 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  loupeGesture3 = [(UITextInteractionAssistant *)self loupeGesture];
  state = [loupeGesture3 state];

  if (state <= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained setSelectedTextRange:self->_stashedTextRange];

    self->_didUseStashedRange = 1;
    loupeGesture4 = [(UITextInteractionAssistant *)self loupeGesture];
    loupeGesture5 = [(UITextInteractionAssistant *)self loupeGesture];
    view = [loupeGesture5 view];
    [loupeGesture4 locationInView:view];
    v15 = v14;
    v17 = v16;

    [(UITextInteractionAssistant *)self extendSelectionToPoint:v15, v17];
    return;
  }

LABEL_10:

  [(UITextInteractionAssistant *)self setSelectionWithPoint:x, y];
}

+ (int64_t)_nextGranularityInCycle:(int64_t)cycle forTouchType:(int64_t)type
{
  v4 = 2;
  if (type == 3)
  {
    v4 = 3;
  }

  if (((1 << cycle) & 0x14) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (((1 << cycle) & 0x29) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (cycle <= 5)
  {
    return v6;
  }

  else
  {
    return cycle;
  }
}

- (void)checkEditabilityAndSetFirstResponderIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  self->_needsGestureUpdate = [WeakRetained isFirstResponder] ^ 1;

  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  v4 = objc_loadWeakRetained(&self->_view);
  if ([(UITextInteractionAssistant *)self viewCouldBecomeEditable:v4])
  {
    selectedRange = [activeSelection selectedRange];
    _isRanged = [selectedRange _isRanged];

    if ((_isRanged & 1) == 0)
    {
      v7 = +[UIKeyboardImpl sharedInstance];
      [v7 updateChangeTimeAndIncrementCount];

      v8 = objc_loadWeakRetained(&self->_view);
      [v8 setEditable:1];

      [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
LABEL_7:
      [(UITextInteractionAssistant *)self setGestureRecognizers];
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  if (self->_needsGestureUpdate)
  {
    v9 = objc_loadWeakRetained(&self->_view);
    isFirstResponder = [v9 isFirstResponder];

    if (isFirstResponder)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)selectWord
{
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self configureForSelectionMode];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(UITextInteractionAssistant *)self beginSelectionChange];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection caretRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (([WeakRetained isEditable] & 1) != 0 || (v16.origin.x = v5, v16.origin.y = v7, v16.size.width = v9, v16.size.height = v11, !CGRectIsEmpty(v16)))
  {
    x = v5 + v9 * 0.5;
    y = v7 + v11 * 0.5;
  }

  else
  {
    x = self->_loupeGestureEndPoint.x;
    y = self->_loupeGestureEndPoint.y;
  }

  [activeSelection alterSelection:1 granularity:{x, y}];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommandsAfterDelay:0.2];
  }

  [(UITextInteractionAssistant *)self scrollSelectionToVisible];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)selectWordWithoutShowingCommands
{
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self configureForSelectionMode];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(UITextInteractionAssistant *)self beginSelectionChange];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection caretRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (([WeakRetained isEditable] & 1) != 0 || (v16.origin.x = v5, v16.origin.y = v7, v16.size.width = v9, v16.size.height = v11, !CGRectIsEmpty(v16)))
  {
    x = v5 + v9 * 0.5;
    y = v7 + v11 * 0.5;
  }

  else
  {
    x = self->_loupeGestureEndPoint.x;
    y = self->_loupeGestureEndPoint.y;
  }

  [activeSelection alterSelection:1 granularity:{x, y}];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (BOOL)shouldSuppressSelectionCommands
{
  if (self->_automaticSelectionCommandsSuppressed || (-[UITextInteractionAssistant textDocument](self, "textDocument"), v3 = objc_claimAutoreleasedReturnValue(), v4 = +[UIDictationController shouldHideSelectionUIForTextView:](UIDictationController, "shouldHideSelectionUIForTextView:", v3), v3, v4) || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldSuppressSelectionCommands], v5, (v6 & 1) != 0))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    _asBETextInput = [(UITextInteractionAssistant *)self _asBETextInput];
    if (objc_opt_respondsToSelector())
    {
      v7 = [_asBETextInput automaticallyPresentEditMenu] ^ 1;
    }

    else
    {
      _asAsyncTextInputClient = [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v7) = [_asAsyncTextInputClient shouldSuppressEditMenu];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_view);
        if (objc_opt_respondsToSelector())
        {
          LOBYTE(v7) = [WeakRetained _shouldSuppressSelectionCommands];
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }
  }

  return v7;
}

- (void)selectAll:(id)all
{
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(UITextInteractionAssistant *)self beginSelectionChange];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection selectAll];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  if (all && [(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommandsAfterDelay:0.2];
  }

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)clearSelection
{
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  [_legacySelectionView removeFromSuperview];

  [(UITextInteractionAssistant *)self beginSelectionChange];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection clearSelection];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)_updateSelectionWithPoint:(CGPoint)point granularity:(int64_t)granularity forceGranularity:(BOOL)forceGranularity
{
  y = point.y;
  x = point.x;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  baseIsStart = [rangeAdjustmentInteraction baseIsStart];

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    highlightView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    highlightView = [_legacySelectionView rangeView];
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  textInputView = [WeakRetained textInputView];
  [highlightView convertPoint:textInputView toView:{x, y}];

  [activeSelection setRangedSelectionExtentPoint:baseIsStart baseIsStart:{x, y}];
  if (forceGranularity || [activeSelection willSelectionChange])
  {
    [activeSelection setGranularity:granularity];
  }

  [activeSelection commit];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)updateWithMagnifierTerminalPoint:(BOOL)point
{
  pointCopy = point;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
LABEL_13:
    _editMenuAssistant = [(UITextInteractionAssistant *)self _editMenuAssistant];
    _editMenuIsVisible = [_editMenuAssistant _editMenuIsVisible];

    if ((_editMenuIsVisible & 1) == 0)
    {
      _editMenuAssistant2 = [(UITextInteractionAssistant *)self _editMenuAssistant];
      [_editMenuAssistant2 showSelectionCommandsAfterDelay:0.0];
    }

    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
    return;
  }

  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView rangeView];

  v6 = +[UITextMagnifierRanged sharedRangedMagnifier];
  target = [v6 target];

  if (target)
  {
    if ((![v6 terminalPointPlacedCarefully] || -[UITextInteractionAssistant autoscrolled](self, "autoscrolled")) && (-[UITextInteractionAssistant _legacySelectionView](self, "_legacySelectionView", rangeView), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      [(UITextInteractionAssistant *)self beginSelectionChange];
      [rangeView setAnimateUpdate:1];
      startGrabber = [rangeView startGrabber];
      [startGrabber setAnimating:1];

      endGrabber = [rangeView endGrabber];
      [endGrabber setAnimating:1];

      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __100__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updateWithMagnifierTerminalPoint___block_invoke;
      v27 = &unk_1E70F6B40;
      v28 = v6;
      selfCopy = self;
      v12 = rangeView;
      v30 = v12;
      v31 = WeakRetained;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __100__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updateWithMagnifierTerminalPoint___block_invoke_2;
      v22 = &unk_1E70F5AC0;
      selfCopy2 = self;
      v13 = WeakRetained;
      [UIView animateWithDuration:0x20000 delay:&v24 options:&v19 animations:0.2 completion:0.0];
      [v12 setAnimateUpdate:0];
      [(UITextInteractionAssistant *)self endSelectionChange];
    }

    else if (pointCopy)
    {
      [v6 terminalPoint];
      [v6 setMagnificationPoint:?];
      [rangeView activeTouchPoint];
      [(UITextInteractionAssistant *)self updateSelectionWithPoint:?];
    }

    [v6 stopMagnifying:{1, rangeView, v19, v20, v21, v22, selfCopy2, v24, v25, v26, v27}];

    goto LABEL_13;
  }

  [v6 stopMagnifying:0];
}

void __100__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updateWithMagnifierTerminalPoint___block_invoke(id *a1)
{
  v2 = [a1[4] horizontalMovement];
  if (v2 >= 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 3;
  }

  if (v2 <= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  v11 = [a1[5] activeSelection];
  [v11 smartExtendRangedSelection:v4 downstream:{objc_msgSend(a1[6], "baseIsStart")}];
  [v11 commit];
  [a1[6] updateBaseAndExtentPointsFromEdges];
  v5 = a1[6];
  [v5 extentPoint];
  v7 = v6;
  v9 = v8;
  v10 = [a1[7] textInputView];
  [v5 convertPoint:v10 toView:{v7, v9}];
  [a1[4] setAnimationPoint:?];
}

- (void)selectionAnimationDidStop
{
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView rangeView];

  startGrabber = [rangeView startGrabber];
  [startGrabber setAnimating:0];

  endGrabber = [rangeView endGrabber];
  [endGrabber setAnimating:0];
}

- (void)rangeSelectionStarted:(CGPoint)started
{
  y = started.y;
  x = started.x;
  interactions = [(UITextInteractionAssistant *)self interactions];
  [interactions _callDelegateWillMoveTextRangeExtentAtPoint:{x, y}];

  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView rangeView];

  [(UITextInteractionAssistant *)self willBeginSelectionInteraction];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  if (_os_feature_enabled_impl() && [(UITextInteractionAssistant *)self containerWantsVisualBIDISelections])
  {
    [activeSelection updateBaseAndInitialExtent];
  }

  else if ([rangeView baseIsStart])
  {
    [activeSelection setRangedSelectionBaseToCurrentSelectionStart];
    [activeSelection setRangedSelectionInitialExtentToCurrentSelectionEnd];
  }

  else
  {
    [activeSelection setRangedSelectionBaseToCurrentSelectionEnd];
    [activeSelection setRangedSelectionInitialExtentToCurrentSelectionStart];
  }

  _legacySelectionView2 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [_legacySelectionView2 setForceRangeView:1];

  -[UITextInteractionAssistant _updateSelectionWithPoint:granularity:forceGranularity:](self, "_updateSelectionWithPoint:granularity:forceGranularity:", [activeSelection granularity], 0, x, y);
  [rangeView performSelector:sel_beginMagnifying withObject:0 afterDelay:0.4];
  [rangeView setWillBeginMagnifying:1];
}

- (void)rangeSelectionEnded:(CGPoint)ended
{
  y = ended.y;
  x = ended.x;
  v16 = +[UITextMagnifierRanged sharedRangedMagnifier];
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView rangeView];

  _legacySelectionView2 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [_legacySelectionView2 setForceRangeView:0];

  v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v9 preferencesActions];
  v11 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v11)
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    [(UITextInteractionAssistant *)self setExpectingCommit:1];
    goto LABEL_7;
  }

  target = [v16 target];

  if (target)
  {
    [(UITextInteractionAssistant *)self updateWithMagnifierTerminalPoint:[(UITextInteractionAssistant *)self autoscrolled]^ 1];
    goto LABEL_7;
  }

  if (![rangeView commandsWereShowing])
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    goto LABEL_7;
  }

  [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant hideSelectionCommands];
  if ([rangeView autoscrolled])
  {
LABEL_7:
    [rangeView setWillBeginMagnifying:0];
    [(UITextInteractionAssistant *)self cancelAutoscroll];
    startGrabber = [rangeView startGrabber];
    [startGrabber updateDot];

    endGrabber = [rangeView endGrabber];
    [endGrabber updateDot];

    goto LABEL_8;
  }

  [(UITextInteractionAssistant *)self setSelectionWithPoint:x, y];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection commit];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  [rangeView setWillBeginMagnifying:0];
  [(UITextInteractionAssistant *)self cancelAutoscroll];
LABEL_8:
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
  [(UITextInteractionAssistant *)self setExpectingCommit:0];
}

- (void)rangeSelectionCanceled
{
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  [_legacySelectionView setForceRangeView:0];

  _legacySelectionView2 = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView2 rangeView];
  [rangeView setWillBeginMagnifying:0];

  [(UITextInteractionAssistant *)self endSelectionChange];

  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
}

- (void)rangeSelectionMoved:(CGPoint)moved withTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = moved.y;
  v7 = moved.x;
  _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
  rangeView = [_legacySelectionView rangeView];

  [(UITextInteractionAssistant *)self _updateSelectionWithPoint:0 granularity:0 forceGranularity:v7, v6];
  v10 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [rangeView magnifierPoint];
  v12 = v11;
  v14 = v13;
  _window = [rangeView _window];
  screen = [_window screen];
  coordinateSpace = [screen coordinateSpace];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textInputView = [WeakRetained textInputView];
  if (textInputView)
  {
    v20 = textInputView;
  }

  else
  {
    v20 = rangeView;
  }

  [coordinateSpace convertPoint:v20 fromCoordinateSpace:{v12, v14}];
  v22 = v21;
  v24 = v23;

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v40.x = v22;
  v40.y = v24;
  v26 = CGRectContainsPoint(v41, v40);

  target = [v10 target];
  if (target)
  {

    goto LABEL_10;
  }

  [rangeView initialExtentPoint];
  if (sqrt((v28 - v7) * (v28 - v7) + (v29 - v6) * (v29 - v6)) <= 8.0)
  {
LABEL_10:
    target2 = [v10 target];

    if (target2)
    {
      if (v26)
      {
        [v10 setMagnificationPoint:{v12, v14}];
      }

      else
      {
        [v10 stopMagnifying:1];
      }
    }

    goto LABEL_14;
  }

  if (v26 && [rangeView willBeginMagnifying])
  {
    [rangeView beginMagnifying];
  }

LABEL_14:
  view = [(UITextInteractionAssistant *)self view];
  _proxyTextInput = [view _proxyTextInput];
  textInputView2 = [_proxyTextInput textInputView];
  [rangeView convertPoint:textInputView2 toView:{x, y}];
  v35 = v34;
  v37 = v36;

  [(UITextInteractionAssistant *)self startAutoscroll:v35, v37];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)beginSelectionChange
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained beginSelectionChange];
}

- (void)endSelectionChange
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained endSelectionChange];
}

- (CGPoint)constrainedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained constrainedPoint:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)resignedFirstResponder
{
  [(UITextSelectionView *)self->_selectionView hideSelectionCommands];
  [(UITextSelectionView *)self->_selectionView setVisible:0];
  [(UITextSelectionView *)self->_selectionView setCaretBlinks:0];
  selectionView = self->_selectionView;

  [(UITextSelectionView *)selectionView deactivate];
}

- (void)stashCurrentSelection
{
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];
  stashedTextRange = self->_stashedTextRange;
  self->_stashedTextRange = selectedRange;

  self->_didUseStashedRange = 0;
}

- (void)clearStashedSelection
{
  stashedTextRange = self->_stashedTextRange;
  self->_stashedTextRange = 0;

  self->_didUseStashedRange = 0;
}

- (BOOL)viewConformsToAsynchronousInteractionProtocol
{
  viewConformsToAsynchronousInteractionViewProtocol = self->_viewConformsToAsynchronousInteractionViewProtocol;
  if (!viewConformsToAsynchronousInteractionViewProtocol)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "_usesAsynchronousProtocol")}];
    v6 = self->_viewConformsToAsynchronousInteractionViewProtocol;
    self->_viewConformsToAsynchronousInteractionViewProtocol = v5;

    viewConformsToAsynchronousInteractionViewProtocol = self->_viewConformsToAsynchronousInteractionViewProtocol;
  }

  return [(NSNumber *)viewConformsToAsynchronousInteractionViewProtocol BOOLValue];
}

- (void)willBeginSelectionInteraction
{
  ++self->_activeSelectionInteractions;
  if (self->_respondsToTextFormattingRestorationMethods)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained _prepareForTextFormattingRestoration];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextSelectionInteractionWillBegin" object:0];
}

- (void)didEndSelectionInteraction
{
  activeSelectionInteractions = self->_activeSelectionInteractions;
  if (activeSelectionInteractions)
  {
    goto LABEL_2;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Attempting to end a selection interaction that has not begun or has already ended.", buf, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &didEndSelectionInteraction___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Attempting to end a selection interaction that has not begun or has already ended.", v8, 2u);
    }
  }

  activeSelectionInteractions = self->_activeSelectionInteractions;
  if (activeSelectionInteractions)
  {
LABEL_2:
    self->_activeSelectionInteractions = activeSelectionInteractions - 1;
    if (self->_respondsToTextFormattingRestorationMethods)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      [WeakRetained _performTextFormattingRestoration];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextSelectionInteractionDidEnd" object:0];
  }
}

- (BOOL)cursorVisible
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    return ![(UITextSelectionDisplayInteraction *)self->_selectionViewManager isCursorHidden];
  }

  selectionView = self->_selectionView;

  return [(UITextSelectionView *)selectionView caretVisible];
}

- (void)setCursorVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UITextSelectionView *)self->_selectionView setCaretVisible:?];
  selectionViewManager = self->_selectionViewManager;

  [(UITextSelectionDisplayInteraction *)selectionViewManager setCursorHidden:!visibleCopy];
}

- (BOOL)ghostAppearance
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    _cursorView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorView];
    isGhostEffectEnabled = [_cursorView isGhostEffectEnabled];

    return isGhostEffectEnabled;
  }

  else
  {
    selectionView = self->_selectionView;

    return [(UITextSelectionView *)selectionView ghostAppearance];
  }
}

- (void)setGhostAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  [(UITextSelectionView *)self->_selectionView setGhostAppearance:?];
  _cursorView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorView];
  [_cursorView setGhostEffectEnabled:appearanceCopy];
}

- (unint64_t)currentDraggedHandle
{
  if (![(UITextInteractionAssistant *)self hasActiveSelectionInteraction])
  {
    return 0;
  }

  rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  v4 = rangeAdjustmentInteraction;
  if (rangeAdjustmentInteraction)
  {
    if ([rangeAdjustmentInteraction baseIsStart])
    {
      v5 = 8;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UITextInteractionAssistant *)self setInGesture:1];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(_UITextFloatingCursorSession *)self->_floatingCursorSession _invalidate];
    selectionViewManager = self->_selectionViewManager;
    view = [(UITextInteractionAssistant *)self view];
    textInputView = [view textInputView];
    v9 = [(UITextSelectionDisplayInteraction *)selectionViewManager _beginFloatingCursorSessionAtPoint:textInputView inContainer:x, y];
    floatingCursorSession = self->_floatingCursorSession;
    self->_floatingCursorSession = v9;
  }

  else
  {
    selectionView = self->_selectionView;
    view2 = [(UITextInteractionAssistant *)self view];
    textInputView2 = [view2 textInputView];
    [(UIView *)selectionView convertPoint:textInputView2 fromView:x, y];
    v15 = v14;
    v17 = v16;

    [(UITextSelectionView *)self->_selectionView beginFloatingCursorAtPoint:v15, v17];
  }

  [(UITextInteractionAssistant *)self startAutoscroll:x, y];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  floatingCursorSession = self->_floatingCursorSession;
  if (floatingCursorSession)
  {
    view = [(UITextInteractionAssistant *)self view];
    textInputView = [view textInputView];
    [(_UITextFloatingCursorSession *)floatingCursorSession updateWithPoint:textInputView inContainer:animatedCopy animated:x, y];
  }

  else
  {
    selectionView = self->_selectionView;
    view2 = [(UITextInteractionAssistant *)self view];
    textInputView2 = [view2 textInputView];
    [(UIView *)selectionView convertPoint:textInputView2 fromView:x, y];
    v15 = v14;
    v17 = v16;

    [(UITextSelectionView *)self->_selectionView updateFloatingCursorAtPoint:animatedCopy animated:v15, v17];
  }

  [(UITextInteractionAssistant *)self startAutoscroll:x, y];
}

- (CGPoint)boundedDeltaForTranslation:(CGPoint)translation cursorLocationBase:(CGPoint)base
{
  v5 = translation.x + base.x;
  v6 = translation.y + base.y;
  if (self->_floatingCursorSession)
  {
    view = [(UITextInteractionAssistant *)self view];
    textInputView = [view textInputView];
    floatingCursorView = [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorView];
    superview = [floatingCursorView superview];
    [textInputView convertPoint:superview toView:{v5, v6}];
    v12 = v11;
    v14 = v13;

    [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorPositionForPoint:0 lineSnapping:v12, v14];
    v16 = v15;
    v18 = v17;
    view2 = [(UITextInteractionAssistant *)self view];
    textInputView2 = [view2 textInputView];
    floatingCursorView2 = [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorView];
    superview2 = [floatingCursorView2 superview];
    [textInputView2 convertPoint:superview2 fromView:{v16, v18}];
    v24 = v23;
    v26 = v25;

    v27 = v24 - v5;
    v28 = v26 - v6;
  }

  else
  {
    selectionView = self->_selectionView;
    view3 = [(UITextInteractionAssistant *)self view];
    textInputView3 = [view3 textInputView];
    [(UIView *)selectionView convertPoint:textInputView3 fromView:v5, v6];
    v33 = v32;
    v35 = v34;

    [(UITextSelectionView *)self->_selectionView floatingCursorPositionForPoint:0 lineSnapping:v33, v35];
    v27 = v36 - v33;
    v28 = v37 - v35;
  }

  result.y = v28;
  result.x = v27;
  return result;
}

- (void)endFloatingCursor
{
  [(UITextInteractionAssistant *)self cancelAutoscroll];
  floatingCursorSession = self->_floatingCursorSession;
  if (floatingCursorSession)
  {
    [(_UITextFloatingCursorSession *)floatingCursorSession _invalidate];
    v4 = self->_floatingCursorSession;
    self->_floatingCursorSession = 0;
  }

  else
  {
    [(UITextSelectionView *)self->_selectionView endFloatingCursor];
  }

  [(UITextInteractionAssistant *)self setInGesture:0];
}

- (void)startAutoscroll:(CGPoint)autoscroll
{
  y = autoscroll.y;
  x = autoscroll.x;
  if ([(UITextInteractionAssistant *)self _canAutoscroll])
  {
    scrollView = [(UITextInteractionAssistant *)self scrollView];
    fieldEditor = [(UITextInteractionAssistant *)self fieldEditor];
    if (scrollView | fieldEditor)
    {
      if (scrollView)
      {
        [scrollView _setAutoscrolling:1];
      }

      [(UITextInteractionAssistant *)self setAutoscrolled:0];
      view = [(UITextInteractionAssistant *)self view];
      _proxyTextInput = [view _proxyTextInput];
      textInputView = [_proxyTextInput textInputView];
      [textInputView convertPoint:0 toView:{x, y}];
      [(UITextInteractionAssistant *)self setAutoscrollUntransformedExtentPoint:?];

      _asTextAutoscrolling = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
      v11 = _asTextAutoscrolling;
      if (_asTextAutoscrolling)
      {
        [_asTextAutoscrolling startAutoscroll:{x, y}];
      }

      else
      {
        _asBETextInput = [(UITextInteractionAssistant *)self _asBETextInput];

        if (_asBETextInput)
        {
          [(UITextInteractionAssistant *)self _asBETextInput];
        }

        else
        {
          [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
        }
        v13 = ;
        [v13 autoscrollToPoint:{x, y}];
      }
    }
  }
}

- (void)cancelAutoscroll
{
  if ([(UITextInteractionAssistant *)self _canAutoscroll])
  {
    scrollView = [(UITextInteractionAssistant *)self scrollView];
    if (scrollView)
    {
      [scrollView _setAutoscrolling:0];
    }

    _asTextAutoscrolling = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
    v4 = _asTextAutoscrolling;
    if (_asTextAutoscrolling)
    {
      [_asTextAutoscrolling cancelAutoscroll];
    }

    else
    {
      _asBETextInput = [(UITextInteractionAssistant *)self _asBETextInput];

      if (_asBETextInput)
      {
        [(UITextInteractionAssistant *)self _asBETextInput];
      }

      else
      {
        [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
      }
      v6 = ;
      [v6 cancelAutoscroll];
    }
  }
}

- (void)autoscrollWillNotStart
{
  v3 = +[UITextMagnifierCaret sharedCaretMagnifier];
  [v3 autoscrollWillNotStart];

  v4 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [v4 autoscrollWillNotStart];

  [(UITextInteractionAssistant *)self cancelAutoscroll];
}

- (void)updateAutoscroll:(id)autoscroll
{
  autoscrollCopy = autoscroll;
  if ([(UITextInteractionAssistant *)self _canAutoscroll])
  {
    scrollView = [(UITextInteractionAssistant *)self scrollView];
    if (!scrollView)
    {
LABEL_37:

      goto LABEL_38;
    }

    [(UITextInteractionAssistant *)self setAutoscrolled:1];
    [scrollView contentOffset];
    v6 = v5;
    v8 = v7;
    v9 = v5;
    v52 = v7;
    scrollContainer = [autoscrollCopy scrollContainer];
    view = [(UITextInteractionAssistant *)self view];
    _proxyTextInput = [view _proxyTextInput];
    textInputView = [_proxyTextInput textInputView];
    [scrollContainer contentFrameForView:textInputView];
    v15 = v14;
    v50 = v17;
    v51 = v16;
    v19 = v18;

    [scrollView contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    directions = [autoscrollCopy directions];
    v27 = directions;
    if (directions)
    {
      if (v6 <= v15)
      {
        v27 = directions & 0xFFFFFFFE;
        goto LABEL_21;
      }
    }

    else
    {
      if ((directions & 2) == 0)
      {
        if ((directions & 4) != 0)
        {
          [scrollView bounds];
          if (v33 + v34 >= 64.0)
          {
            v28 = autoscrollCopy;
            if (v8 > v51 - v21)
            {
              v52 = v51 - v21;
              goto LABEL_23;
            }

            if ((v27 & 0xFFFFFFF8) != 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v27 &= 0xFFFFFFF8;
        }

        else
        {
          v28 = autoscrollCopy;
          if ((v27 & 8) == 0)
          {
            goto LABEL_22;
          }

          [scrollView bounds];
          if (v29 + v30 >= 64.0)
          {
            [scrollView bounds];
            if (v8 < v51 + v50 - (v31 - v23))
            {
              v52 = v51 + v50 - (v31 - v23);
LABEL_14:
              v28 = autoscrollCopy;
LABEL_23:
              v35 = sqrt((v9 - v6) * (v9 - v6) + (v52 - v8) * (v52 - v8));
              if ([v28 count] == 1)
              {
                autoscrollFactor = v35 + v35;
                self->_autoscrollFactor = v35 + v35;
                v37 = (sqrt(v35) / 5.0);
                if (v37 <= 5)
                {
                  v37 = 5;
                }

                self->_autoscrollRamp = v37;
              }

              else
              {
                autoscrollFactor = self->_autoscrollFactor;
              }

              v38 = v35 / autoscrollFactor;
              v39 = [autoscrollCopy count];
              autoscrollRamp = self->_autoscrollRamp;
              if (v39 < autoscrollRamp)
              {
                v38 = v38 * (autoscrollRamp - [autoscrollCopy count] + 1);
              }

              [scrollView _setContentOffsetAnimationDuration:v38];
              [scrollView setContentOffset:1 animated:{v9, v52}];
              activeSelection = [(UITextInteractionAssistant *)self activeSelection];
              view2 = [(UITextInteractionAssistant *)self view];
              textInputView2 = [view2 textInputView];
              [(UITextInteractionAssistant *)self autoscrollUntransformedExtentPoint];
              [textInputView2 convertPoint:0 fromView:?];
              v45 = v44;
              v47 = v46;

              selectedRange = [activeSelection selectedRange];
              LODWORD(textInputView2) = [selectedRange isEmpty];

              if (textInputView2)
              {
                [activeSelection setSelectionWithPoint:{v45, v47}];
                [activeSelection commit];
              }

              else
              {
                selectedRange2 = [activeSelection selectedRange];

                if (selectedRange2)
                {
                  [(UITextInteractionAssistant *)self updateSelectionWithPoint:v45, v47];
                }
              }

              goto LABEL_37;
            }
          }

          v27 &= 0xFFFFFFF0;
        }

LABEL_21:
        v28 = autoscrollCopy;
LABEL_22:
        if (v27)
        {
          goto LABEL_23;
        }

LABEL_36:
        [(UITextInteractionAssistant *)self cancelAutoscroll];
        goto LABEL_37;
      }

      [scrollView bounds];
      v15 = v15 + v19 - (v32 - v25);
      if (v6 >= v15)
      {
        v27 &= 0xFFFFFFFC;
        goto LABEL_21;
      }
    }

    v9 = v15;
    goto LABEL_14;
  }

LABEL_38:
}

- (BOOL)didPerformLoupeSelectionHandoff
{
  v2 = [(UITextInteraction *)self->_interactions interactionWithGestureForName:0x1EFBA76B0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 inheritedGranularity] != -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)viewCouldBecomeEditable:(id)editable
{
  editableCopy = editable;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([editableCopy isEditable] & 1) == 0)
  {
    becomesEditableWithGestures = [editableCopy becomesEditableWithGestures];
  }

  else
  {
    becomesEditableWithGestures = 0;
  }

  return becomesEditableWithGestures;
}

- (void)scheduleReplacementsWithOptions:(unint64_t)options
{
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];

  v6 = [(UITextInteractionAssistant *)self attributedTextInRange:selectedRange];
  if (![(UITextInteractionAssistant *)self handleMultilingualAlternativeWithString:v6 range:selectedRange])
  {
    [(UITextInteractionAssistant *)self scheduleReplacementsForRange:selectedRange withOptions:options];
  }
}

- (id)_textReplacementsMenuForElement:(id)element
{
  elementCopy = element;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];

  v7 = [(UITextInteractionAssistant *)self generatorForRange:selectedRange withOptions:0];
  _editMenuAssistant = [(UITextInteractionAssistant *)self _editMenuAssistant];
  replacements = [v7 replacements];
  v10 = [_editMenuAssistant menuElementsForReplacements:replacements];

  title = [elementCopy title];
  image = [elementCopy image];

  v13 = [UIMenu menuWithTitle:title image:image identifier:0 options:0 children:v10];

  return v13;
}

- (id)updatedTextReplacementsMenuWithMenuElements:(id)elements
{
  v5[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updatedTextReplacementsMenuWithMenuElements___block_invoke;
  v6[3] = &unk_1E7125750;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __111__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updatedTextReplacementsMenuWithMenuElements___block_invoke_2;
  v5[3] = &unk_1E7125778;
  v3 = _UIMenuReplacingElementMatchingPredicate(elements, v6, v5);

  return v3;
}

uint64_t __111__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updatedTextReplacementsMenuWithMenuElements___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [v4 action];
  if (v5 == sel_promptForReplace_)
  {
    v2 = [*(a1 + 32) view];
    if ([v2 canPerformAction:objc_msgSend(v4 withSender:{"action"), v4}])
    {
      v6 = 1;
      goto LABEL_11;
    }

    if ([v4 fallbackAction] != sel__promptForReplace_)
    {
      v6 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v7 = [*(a1 + 32) view];
    v6 = [v7 canPerformAction:objc_msgSend(v4 withSender:{"fallbackAction"), v4}];

    if (v5 != sel_promptForReplace_)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([v4 fallbackAction] == sel__promptForReplace_)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_12:

  return v6;
}

id __111__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updatedTextReplacementsMenuWithMenuElements___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _textReplacementsMenuForElement:a2];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_updateSelectionInViewIfNeeded:(id)needed toRange:(id)range
{
  neededCopy = needed;
  rangeCopy = range;
  selectedTextRange = [neededCopy selectedTextRange];
  if (selectedTextRange)
  {
    start = [rangeCopy start];
    start2 = [selectedTextRange start];
    if ([neededCopy comparePosition:start toPosition:start2])
    {
    }

    else
    {
      v10 = [rangeCopy end];
      v11 = [selectedTextRange end];
      v12 = [neededCopy comparePosition:v10 toPosition:v11];

      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  [activeSelection setSelectedRange:rangeCopy];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];

LABEL_6:
}

- (void)scheduleChineseTransliteration
{
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];

  if (!selectedRange)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  isEmpty = [selectedRange isEmpty];
  if (!isEmpty)
  {
    v10 = selectedRange;
LABEL_7:
    v21 = v10;
    v11 = [WeakRetained textInRange:?];
    if ([v11 length])
    {
      if (isEmpty)
      {
        v12 = [v21 end];
        v13 = [v21 end];
        v14 = [WeakRetained textRangeFromPosition:v12 toPosition:v13];

        v15 = v14;
      }

      else
      {
        v15 = v21;
      }

      v21 = v15;
      [(UITextInteractionAssistant *)self _updateSelectionInViewIfNeeded:WeakRetained toRange:v15];
      v16 = objc_alloc_init(UITextReplacementGeneratorForChineseTransliteration);
      [(UITextReplacementGenerator *)v16 setReplacementRange:v21];
      [(UITextReplacementGenerator *)v16 setStringToReplace:v11];
      replacements = [(UITextReplacementGeneratorForChineseTransliteration *)v16 replacements];
      if ([replacements count])
      {
        activeSelection2 = +[UIKeyboardImpl sharedInstance];
        firstObject = [replacements firstObject];
        [activeSelection2 replaceText:firstObject];
      }

      else
      {
        [(UITextInteractionAssistant *)self beginSelectionChange];
        activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
        [activeSelection2 collapseSelection];
        [activeSelection2 commit];
        [(UITextInteractionAssistant *)self endSelectionChange];
        [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
      }
    }

    goto LABEL_16;
  }

  v20 = [(UITextInteractionAssistant *)self rangeForTextReplacement:selectedRange];
  v7 = [selectedRange end];
  v8 = [v20 end];
  v9 = [WeakRetained comparePosition:v7 toPosition:v8];

  if (v9 != -1)
  {

    v10 = v20;
    goto LABEL_7;
  }

  v11 = v20;
  v21 = selectedRange;
LABEL_16:
}

- (id)rangeForTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  if ([replacementCopy isEmpty])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = replacementCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      domRange = [v7 domRange];
      enclosingWordRange = [domRange enclosingWordRange];
      [UITextRangeImpl wrapDOMRange:enclosingWordRange];
    }

    else
    {
      domRange = [WeakRetained tokenizer];
      enclosingWordRange = [replacementCopy start];
      [domRange rangeEnclosingPosition:enclosingWordRange withGranularity:1 inDirection:1];
    }
    v11 = ;

    if (v11)
    {
      start = [v11 start];
      start2 = [v11 start];
      v14 = [WeakRetained comparePosition:start toPosition:start2];

      if (v14 == -1 || ([v11 end], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(WeakRetained, "comparePosition:toPosition:", start, v15), v15, v16 == 1))
      {

        v11 = 0;
      }
    }

    replacementCopy = v11;
  }

  return replacementCopy;
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained attributedTextInRange:rangeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)showMultilingualDictationReplacementWithRange:(id)range
{
  v3 = [(UITextInteractionAssistant *)self attributedTextInRange:range];
  v4 = [UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:v3];

  return v4;
}

- (BOOL)handleMultilingualAlternativeWithString:(id)string range:(id)range
{
  stringCopy = string;
  rangeCopy = range;
  if (stringCopy && [stringCopy length])
  {
    v8 = [UIDictationMultilingualUtilities multilingualAttributesForAttributedString:stringCopy];
    v9 = [v8 objectForKeyedSubscript:@"bestAlternatives"];
    v10 = [v8 objectForKeyedSubscript:@"multilingualResultsForAlternateRecognitions"];
    if (v9)
    {
      array = [MEMORY[0x1E695DF70] array];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __113__UITextInteractionAssistant_UITextInteractionAssistant_Internal__handleMultilingualAlternativeWithString_range___block_invoke;
      v16[3] = &unk_1E71257A0;
      v17 = v9;
      v18 = v10;
      v12 = array;
      v19 = v12;
      [UIDictationUtilities attributedString:stringCopy withIdentifiersBlock:v16];
      v13 = [v12 count];
      v14 = v13 != 0;
      if (v13)
      {
        [(UITextInteractionAssistant *)self scheduleDictationReplacementsForMultilingualAlternatives:v12 range:rangeCopy];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __113__UITextInteractionAssistant_UITextInteractionAssistant_Internal__handleMultilingualAlternativeWithString_range___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [[UIDictationMultilingualString alloc] initWithDictionary:*(*(&v20 + 1) + 8 * v9)];
        [(UIDictationMultilingualString *)v10 setCorrectionIdentifier:v19];
        [(UIDictationMultilingualString *)v10 setInteractionIdentifier:v5];
        v11 = *(a1 + 40);
        v12 = [(UIDictationMultilingualString *)v10 dominantLanguage];
        v13 = [v11 objectForKeyedSubscript:v12];

        v14 = [v13 dominantLanguage];
        v15 = [(UIDictationMultilingualString *)v10 dominantLanguage];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = [v13 phrases];
          [(UIDictationMultilingualString *)v10 setPhrases:v17];
        }

        if (v10)
        {
          [*(a1 + 48) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)scheduleDictationReplacementsForAlternatives:(id)alternatives range:(id)range
{
  v52[3] = *MEMORY[0x1E69E9840];
  alternativesCopy = alternatives;
  rangeCopy = range;
  if (rangeCopy)
  {
    alternativeStrings = [alternativesCopy alternativeStrings];
    v9 = [alternativeStrings count];

    if (v9)
    {
      view = [(UITextInteractionAssistant *)self view];
      v11 = [view textInRange:rangeCopy];

      if (![v11 length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v12 = [(UITextInteractionAssistant *)self attributedTextInRange:rangeCopy];
      v13 = [(UITextInteractionAssistant *)self handleMultilingualAlternativeWithString:v12 range:rangeCopy];
      alternativeStrings2 = [alternativesCopy alternativeStrings];
      v15 = [alternativeStrings2 containsObject:0x1EFB75A90];

      if (v15)
      {
        v16 = +[UIKeyboardImpl activeInstance];
        inputDelegate = [v16 inputDelegate];
        [inputDelegate setSelectedTextRange:rangeCopy];

        if (+[UIDictationController isRunning])
        {
          v18 = +[UIKeyboardImpl activeInstance];
          [v18 showSelectionCommands];
LABEL_9:
        }
      }

      else
      {
        alternativeStrings3 = [alternativesCopy alternativeStrings];
        v20 = [alternativeStrings3 containsObject:0x1EFB75A70];

        if (v20)
        {
          v21 = +[UIKeyboardImpl activeInstance];
          inputDelegate2 = [v21 inputDelegate];
          [inputDelegate2 setSelectedTextRange:rangeCopy];

          v18 = +[UIKeyboardImpl activeInstance];
          inputDelegateManager = [v18 inputDelegateManager];
          [inputDelegateManager deleteBackward];

          goto LABEL_9;
        }

        alternativeStrings4 = [alternativesCopy alternativeStrings];
        v25 = [alternativeStrings4 containsObject:0x1EFB75AB0];

        if (v25)
        {
          v26 = +[UIKeyboardImpl activeInstance];
          inputDelegate3 = [v26 inputDelegate];
          start = [rangeCopy end];
          start2 = [rangeCopy end];
        }

        else
        {
          alternativeStrings5 = [alternativesCopy alternativeStrings];
          v31 = [alternativeStrings5 containsObject:0x1EFB75AD0];

          if (!v31)
          {
            v52[0] = v11;
            v51[0] = @"originalText";
            v51[1] = @"alternatives";
            alternativeStrings6 = [alternativesCopy alternativeStrings];
            v37 = alternativeStrings6;
            v51[2] = @"isMultilingual";
            v38 = MEMORY[0x1E695E110];
            if (v13)
            {
              v38 = MEMORY[0x1E695E118];
            }

            v52[1] = alternativeStrings6;
            v52[2] = v38;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];

            v44 = MEMORY[0x1E69E9820];
            v45 = 3221225472;
            v46 = __118__UITextInteractionAssistant_UITextInteractionAssistant_Internal__scheduleDictationReplacementsForAlternatives_range___block_invoke;
            v47 = &unk_1E71257A0;
            v40 = v39;
            v48 = v40;
            v49 = v12;
            v41 = alternativesCopy;
            v50 = v41;
            [UIDictationUtilities attributedString:v49 withIdentifiersBlock:&v44];
            if (!v13)
            {
              v42 = [(UITextInteractionAssistant *)self activeSelection:v44];
              [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
              [(UITextInteractionAssistant *)self beginSelectionChange];
              [v42 setSelectedRange:rangeCopy];
              [v42 commit];
              [(UITextInteractionAssistant *)self endSelectionChange];
              v43 = [[UITextReplacementGeneratorForDictation alloc] initWithAlternatives:v41 stringToReplace:v11 replacementRange:rangeCopy];
              [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v43 forDictation:1 afterDelay:0.2];
            }

            goto LABEL_20;
          }

          v26 = +[UIKeyboardImpl activeInstance];
          inputDelegate3 = [v26 inputDelegate];
          start = [rangeCopy start];
          start2 = [rangeCopy start];
        }

        v32 = start2;
        v33 = [inputDelegate3 textRangeFromPosition:start toPosition:start2];

        v34 = +[UIKeyboardImpl activeInstance];
        inputDelegate4 = [v34 inputDelegate];
        [inputDelegate4 setSelectedTextRange:v33];
      }

LABEL_20:

      goto LABEL_21;
    }
  }

LABEL_22:
}

void __118__UITextInteractionAssistant_UITextInteractionAssistant_Internal__scheduleDictationReplacementsForAlternatives_range___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = +[UIDictationController sharedInstance];
  [v13 didShowAlternatives:*(a1 + 32) correctionIdentifier:v12 interactionIdentifier:v11 instrumentationContext:v10 dictationLanguage:v9];

  v17 = [*(a1 + 40) attribute:@"_UITextInputDictationResultMetadata" atIndex:0 effectiveRange:0];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x1E696AD98];
      v15 = [*(a1 + 48) alternativeStrings];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      [v17 setObject:v16 forKeyedSubscript:@"alternativesAvailableCount"];
    }
  }
}

- (void)scheduleDictationReplacementsForMultilingualAlternatives:(id)alternatives range:(id)range
{
  alternativesCopy = alternatives;
  rangeCopy = range;
  if (rangeCopy && [alternativesCopy count])
  {
    view = [(UITextInteractionAssistant *)self view];
    v8 = [view textInRange:rangeCopy];

    if ([v8 length])
    {
      activeSelection = [(UITextInteractionAssistant *)self activeSelection];
      [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
      [(UITextInteractionAssistant *)self beginSelectionChange];
      [activeSelection setSelectedRange:rangeCopy];
      [activeSelection commit];
      [(UITextInteractionAssistant *)self endSelectionChange];
      v10 = [[UITextReplacementGeneratorForMultilingualDictation alloc] initWithMultilingualAlternatives:alternativesCopy stringToReplace:v8 replacementRange:rangeCopy];
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v10 forDictation:1 afterDelay:0.2];
    }
  }
}

- (id)generatorForRange:(id)range withOptions:(unint64_t)options
{
  rangeCopy = range;
  v7 = +[UIKeyboardImpl activeInstance];
  autocorrectSpellingEnabled = [v7 autocorrectSpellingEnabled];

  if (!autocorrectSpellingEnabled || !rangeCopy)
  {
    v15 = 0;
    goto LABEL_21;
  }

  isEmpty = [rangeCopy isEmpty];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (!isEmpty)
  {
    v11 = rangeCopy;
LABEL_9:
    v16 = [UITextReplacementGeneratorForCorrections generatorForTextInput:WeakRetained range:v11 options:options];
    if (v16)
    {
      view = [(UITextInteractionAssistant *)self view];
      v18 = [view textInRange:v11];

      if (![v18 length])
      {
        goto LABEL_16;
      }

      textChecker = self->_textChecker;
      if (!textChecker)
      {
        v20 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
        v21 = self->_textChecker;
        self->_textChecker = v20;

        textChecker = self->_textChecker;
      }

      if (-[UITextChecker _doneLoading](textChecker, "_doneLoading") && (([v16 setTextChecker:self->_textChecker], (options & 0x27) != 7) || (+[UITextChecker keyboardLanguages](UITextChecker, "keyboardLanguages"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[UITextChecker rangeOfMisspelledWordInString:range:startingAt:wrap:languages:](self->_textChecker, "rangeOfMisspelledWordInString:range:startingAt:wrap:languages:", v18, 0, objc_msgSend(v18, "length"), 0, 0, v22), v22, v23 != 0x7FFFFFFFFFFFFFFFLL)))
      {
        v15 = v16;
      }

      else
      {
LABEL_16:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_20;
  }

  v11 = [(UITextInteractionAssistant *)self rangeForTextReplacement:rangeCopy];
  if (!v11 || ([rangeCopy end], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "end"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(WeakRetained, "comparePosition:toPosition:", v12, v13), v13, v12, v14 != -1))
  {

    goto LABEL_9;
  }

  v15 = 0;
  v16 = v11;
  v11 = rangeCopy;
LABEL_20:

  rangeCopy = v11;
LABEL_21:

  return v15;
}

- (BOOL)scheduleReplacementsForRange:(id)range withOptions:(unint64_t)options
{
  rangeCopy = range;
  isEmpty = [rangeCopy isEmpty];
  v8 = [(UITextInteractionAssistant *)self generatorForRange:rangeCopy withOptions:options];
  v9 = v8;
  if (v8)
  {
    if (([v8 isStringToReplaceMisspelled] & 1) != 0 || objc_msgSend(v9, "forceAutocorrectionGuesses"))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      replacementRange = [v9 replacementRange];

      if (isEmpty)
      {
        v12 = [replacementRange end];
        v13 = [replacementRange end];
        v14 = [WeakRetained textRangeFromPosition:v12 toPosition:v13];

        replacementRange = v14;
      }

      [(UITextInteractionAssistant *)self _updateSelectionInViewIfNeeded:WeakRetained toRange:replacementRange];

      v15 = 1;
      rangeCopy = replacementRange;
    }

    else
    {
      v15 = 0;
    }

    v16 = dbl_18A682C50[(options & 8) == 0];
    if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      goto LABEL_21;
    }

    autocorrectionRecord = [v9 autocorrectionRecord];
    if (autocorrectionRecord && (v18 = autocorrectionRecord, v19 = [v9 forceAutocorrectionGuesses], v18, v19))
    {
      _textChoicesAssistant = [(UITextInteractionAssistant *)self _textChoicesAssistant];
      autocorrectionRecord2 = [v9 autocorrectionRecord];
      v22 = [_textChoicesAssistant showChoicesForAutocorrectionCandidate:autocorrectionRecord2 range:rangeCopy delay:v16];
    }

    else
    {
      forceAutocorrectionGuesses = [v9 forceAutocorrectionGuesses];
      _textChoicesAssistant2 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
      _textChoicesAssistant = _textChoicesAssistant2;
      if ((forceAutocorrectionGuesses & 1) == 0)
      {
        v26 = [_textChoicesAssistant2 showDictationChoicesForTextInRange:rangeCopy];

        if (!v26)
        {
LABEL_20:
          _textChoicesAssistant3 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
          [_textChoicesAssistant3 dismissWithoutSelection];

LABEL_21:
          [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v9 forDictation:0 afterDelay:v16];
          goto LABEL_22;
        }

        activeSelection = [(UITextInteractionAssistant *)self activeSelection];
        [activeSelection setSelectedRange:rangeCopy];
        [activeSelection commit];

        goto LABEL_19;
      }

      autocorrectionRecord2 = [v9 replacements];
      v22 = [_textChoicesAssistant showChoicesForTextInRange:rangeCopy withReplacements:autocorrectionRecord2 delay:v16];
    }

    v25 = v22;

    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v15 = 1;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (BOOL)hasReplacements
{
  v21 = *MEMORY[0x1E69E9840];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];
  v5 = [(UITextInteractionAssistant *)self attributedTextInRange:selectedRange];

  if ([UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:v5])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
    selectedRange2 = [activeSelection2 selectedRange];
    v9 = [(UITextInteractionAssistant *)self generatorForRange:selectedRange2 withOptions:8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    replacements = [v9 replacements];
    v6 = [replacements countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(replacements);
          }

          replacementText = [*(*(&v16 + 1) + 8 * i) replacementText];
          v14 = [replacementText length];

          if (v14)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [replacements countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (BOOL)swallowsDoubleTapWithScale:(double)scale atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (scale != 0.0)
  {
    if (1.0 / scale <= scale)
    {
      scale = 1.0 / scale;
    }

    scaleCopy = scale;
    if (scaleCopy < 0.9)
    {
      return 0;
    }
  }

  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  [activeSelection alterSelection:1 granularity:{x, y}];
  [activeSelection commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
  }

  return 1;
}

- (void)willStartScrollingOrZooming
{
  v3 = +[UITextSelectionDisplayInteraction isModernSelectionViewEnabled];
  v4 = 16;
  if (v3)
  {
    v4 = 232;
  }

  v5 = *(&self->super.isa + v4);

  [v5 hideSelectionCommands];
}

- (void)didEndScrollingOrZooming
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if (![(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      return;
    }

    highlightView = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
    isHidden = [highlightView isHidden];

    if (isHidden)
    {
      return;
    }

    editMenuAssistant = self->_editMenuAssistant;
    goto LABEL_16;
  }

  [(UITextSelectionView *)self->_selectionView deferredUpdateSelectionRects];
  selectionView = self->_selectionView;
  if (selectionView)
  {
    selection = [(UITextSelectionView *)selectionView selection];
    selectedRange = [selection selectedRange];
    if (selectedRange)
    {
      selection2 = [(UITextSelectionView *)self->_selectionView selection];
      selectedRange2 = [selection2 selectedRange];
      isEmpty = [selectedRange2 isEmpty];
    }

    else
    {
      isEmpty = 1;
    }

    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      if ((isEmpty & 1) == 0)
      {
        v12 = +[UIKeyboardImpl activeInstance];
        inputDelegateManager = [v12 inputDelegateManager];
        [inputDelegateManager selectionClipRect];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [(UITextSelectionView *)self->_selectionView selectionBoundingBox];
        v29.origin.x = v22;
        v29.origin.y = v23;
        v29.size.width = v24;
        v29.size.height = v25;
        v28.origin.x = v15;
        v28.origin.y = v17;
        v28.size.width = v19;
        v28.size.height = v21;
        v26 = CGRectIntersectsRect(v28, v29);

        if (v26)
        {
          editMenuAssistant = self->_selectionView;
LABEL_16:

          [editMenuAssistant showSelectionCommands];
        }
      }
    }
  }

  else
  {

    [(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands];
  }
}

- (void)underlineCorrectedTextInRange:(id)range typedString:(id)string
{
  stringCopy = string;
  rangeCopy = range;
  _textChoicesAssistant = [(UITextInteractionAssistant *)self _textChoicesAssistant];
  [_textChoicesAssistant underlineTextInRange:rangeCopy revertText:stringCopy];
}

- (void)removeTextChoiceUnderlines
{
  _textChoicesAssistant = [(UITextInteractionAssistant *)self _textChoicesAssistant];
  [_textChoicesAssistant removeAllUnderlines];
}

- (BOOL)isDisplayingVerticalSelection
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = self->_selectionViewManager;

    return [(UITextSelectionDisplayInteraction *)selectionViewManager _isDisplayingVerticalSelection];
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    rangeView = [_legacySelectionView rangeView];
    isDisplayingVerticalSelection = [rangeView isDisplayingVerticalSelection];

    return isDisplayingVerticalSelection;
  }
}

- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)edge
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager textRangeAdjustmentRectForEdge:edge];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _rangeAdjustmentViewContainer = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
    view = [(UITextInteractionAssistant *)self view];
    _proxyTextInput = [view _proxyTextInput];
    textInputView = [_proxyTextInput textInputView];
    [textInputView convertRect:_rangeAdjustmentViewContainer fromView:{v6, v8, v10, v12}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    _rangeAdjustmentViewContainer = [(UITextInteractionAssistant *)self _legacySelectionView];
    view = [_rangeAdjustmentViewContainer rangeView];
    [view textRangeAdjustmentRectForEdge:edge];
    v18 = v25;
    v20 = v26;
    v22 = v27;
    v24 = v28;
  }

  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)edge precision:(unint64_t)precision
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager paddedTextRangeAdjustmentHitRegionForEdge:edge precision:precision];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    rangeView = [_legacySelectionView rangeView];
    [rangeView paddedTextRangeAdjustmentHitRegionForEdge:edge precision:precision];
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)textRangeAdjustmentViewForEdge:(unint64_t)edge
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v5 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager textRangeAdjustmentViewForEdge:edge];
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    rangeView = [_legacySelectionView rangeView];
    v5 = [rangeView textRangeAdjustmentViewForEdge:edge];
  }

  return v5;
}

- (id)_rangeAdjustmentViewContainer
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    _rangeAdjustmentViewContainer = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
  }

  else
  {
    _legacySelectionView = [(UITextInteractionAssistant *)self _legacySelectionView];
    _rangeAdjustmentViewContainer = [_legacySelectionView rangeView];
  }

  return _rangeAdjustmentViewContainer;
}

- (CGPoint)_rangeAdjustmentPointInTextInputCoordinateSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  _rangeAdjustmentViewContainer = [(UITextInteractionAssistant *)self _rangeAdjustmentViewContainer];
  view = [(UITextInteractionAssistant *)self view];
  _proxyTextInput = [view _proxyTextInput];
  textInputView = [_proxyTextInput textInputView];
  [_rangeAdjustmentViewContainer convertPoint:textInputView toView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)textRangeAdjustmentInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point
{
  v5 = [(UITextInteractionAssistant *)self _selectionIsActivated:interaction];
  if (v5)
  {
    activeSelection = [(UITextInteractionAssistant *)self activeSelection];
    selectedRange = [activeSelection selectedRange];
    _isRanged = [selectedRange _isRanged];

    LOBYTE(v5) = _isRanged;
  }

  return v5;
}

- (void)textRangeAdjustmentInteraction:(id)interaction didBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  [(UITextInteractionAssistant *)self setSelectionHighlightMode:0];
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:x, y];
  v9 = v8;
  v11 = v10;
  interactions = [(UITextInteractionAssistant *)self interactions];
  [interactions _callDelegateWillMoveTextRangeExtentAtPoint:{v9, v11}];

  [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant hideSelectionCommands];
  [(UITextInteractionAssistant *)self willBeginSelectionInteraction];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  baseIsStart = [rangeAdjustmentInteraction baseIsStart];

  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  if (_os_feature_enabled_impl() && [(UITextInteractionAssistant *)self containerWantsVisualBIDISelections])
  {
    [activeSelection updateBaseAndInitialExtent];
  }

  else if (baseIsStart)
  {
    [activeSelection setRangedSelectionBaseToCurrentSelectionStart];
    [activeSelection setRangedSelectionInitialExtentToCurrentSelectionEnd];
  }

  else
  {
    [activeSelection setRangedSelectionBaseToCurrentSelectionEnd];
    [activeSelection setRangedSelectionInitialExtentToCurrentSelectionStart];
  }

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  [(UITextInteractionAssistant *)self setNeedsSelectionDisplayUpdate];
  _selectionViewManager = [(UITextInteractionAssistant *)self _selectionViewManager];
  [_selectionViewManager _didBeginRangeAdjustmentInteraction:interactionCopy];
}

- (void)updateSelectionForTextAnimation
{
  if ([(UITextRangeAdjustmentInteraction *)self->_rangeAdjustmentInteraction hasActiveTouch])
  {
    [(UITextRangeAdjustmentInteraction *)self->_rangeAdjustmentInteraction extentPoint];
    [(UITextInteractionAssistant *)self _textRangeAdjustmentForPoint:1 withTouchPoint:v3 selectionChangeReason:v4, v3, v4];
  }

  else
  {
    [(UITextInteractionAssistant *)self _invalidateSelectionDisplay];
  }

  [(UITextRangeAdjustmentInteraction *)self->_rangeAdjustmentInteraction extentPoint];
  v6 = v5;
  v8 = v7;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  selectedRange = [activeSelection selectedRange];
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:selectedRange textRange:v6, v8];
  v12 = v11;
  v14 = v13;

  rangeAdjustmentInteraction = self->_rangeAdjustmentInteraction;

  [(UITextRangeAdjustmentInteraction *)rangeAdjustmentInteraction setModelPosition:v12, v14];
}

- (void)_textRangeAdjustmentForPoint:(CGPoint)point withTouchPoint:(CGPoint)touchPoint selectionChangeReason:(int64_t)reason
{
  y = touchPoint.y;
  x = touchPoint.x;
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:point.x, point.y];
  v10 = v9;
  v12 = v11;
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:x, y];
  v14 = v13;
  v16 = v15;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  rangeAdjustmentInteraction = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  [activeSelection setRangedSelectionExtentPoint:objc_msgSend(rangeAdjustmentInteraction baseIsStart:{"baseIsStart"), v10, v12}];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  if (reason)
  {
    if (reason == 1)
    {
      [(UITextInteractionAssistant *)self _invalidateSelectionDisplay];
    }
  }

  else
  {
    [(UITextInteractionAssistant *)self setNeedsSelectionDisplayUpdate];
  }

  [(UITextInteractionAssistant *)self startAutoscroll:v14, v16];
}

- (void)textRangeAdjustmentInteraction:(id)interaction didEndAtPoint:(CGPoint)point
{
  interactionCopy = interaction;
  activeSelection = [(UITextInteractionAssistant *)self activeSelection];
  willSelectionChange = [activeSelection willSelectionChange];

  if (willSelectionChange)
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    activeSelection2 = [(UITextInteractionAssistant *)self activeSelection];
    [activeSelection2 commit];
  }

  else if (![(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant _editMenuIsVisibleOrDismissedRecently]&& [(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
  }

  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
  [(UITextInteractionAssistant *)self cancelAutoscroll];
  _selectionViewManager = [(UITextInteractionAssistant *)self _selectionViewManager];
  [_selectionViewManager _didEndRangeAdjustmentInteraction:interactionCopy];
}

- (void)textRangeAdjustmentInteractionWasCancelled:(id)cancelled
{
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];

  [(UITextInteractionAssistant *)self cancelAutoscroll];
}

- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)interaction
{
  _caretView = [(UITextInteractionAssistant *)self _caretView];
  [_caretView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)interaction
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    _rangeAdjustmentViewContainer = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _rangeAdjustmentViewContainer = [WeakRetained textInputView];
  }

  return _rangeAdjustmentViewContainer;
}

- (id)selectionContainerViewAboveText
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_view);
  v6 = v5;
  if (v4)
  {
    [v5 _selectionContainerViewAboveText];
  }

  else
  {
    [v5 textInputView];
  }
  v7 = ;

  return v7;
}

- (id)_selectionViewManager:(id)manager obtainBlinkSuppressionAssertionForReason:(id)reason
{
  reasonCopy = reason;
  _assertionController = [(UITextInteractionAssistant *)self _assertionController];
  v7 = [_assertionController nonBlinkingAssertionWithReason:reasonCopy];

  return v7;
}

- (id)_selectionViewManager:(id)manager obtainGhostCursorAssertionForReason:(id)reason
{
  reasonCopy = reason;
  _assertionController = [(UITextInteractionAssistant *)self _assertionController];
  v7 = [_assertionController nonBlinkingGhostAssertionWithReason:reasonCopy];

  return v7;
}

- (CGPoint)_selectionViewManager:(id)manager convertPointToRenderSpace:(CGPoint)space textPosition:(id)position
{
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:position textPosition:space.x, space.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)space textPosition:(id)position
{
  y = space.y;
  x = space.x;
  if (self->_respondsToConvertPointToTextPositionRenderSpace)
  {
    positionCopy = position;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained _convertPointToRenderSpace:positionCopy textPosition:{x, y}];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_selectionViewManager:(id)manager convertPointToRenderSpace:(CGPoint)space textRange:(id)range
{
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:range textRange:space.x, space.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)space textRange:(id)range
{
  y = space.y;
  x = space.x;
  if (self->_respondsToConvertPointToRenderSpace)
  {
    rangeCopy = range;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained _convertPointToRenderSpace:rangeCopy textRange:{x, y}];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

@end