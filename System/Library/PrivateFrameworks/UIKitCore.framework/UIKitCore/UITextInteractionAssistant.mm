@interface UITextInteractionAssistant
+ (int64_t)_nextGranularityInCycle:(int64_t)a3 forTouchType:(int64_t)a4;
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
- (BOOL)handleMultilingualAlternativeWithString:(id)a3 range:(id)a4;
- (BOOL)hasReplacements;
- (BOOL)isCursorBlinkAnimationEnabled;
- (BOOL)isDisplayingVerticalSelection;
- (BOOL)isInteractiveSelectionDisabled;
- (BOOL)isSelectionDisplayVisible;
- (BOOL)isValid;
- (BOOL)scheduleReplacementsForRange:(id)a3 withOptions:(unint64_t)a4;
- (BOOL)shouldSuppressSelectionCommands;
- (BOOL)showMultilingualDictationReplacementWithRange:(id)a3;
- (BOOL)supportsIndirectInteractions;
- (BOOL)swallowsDoubleTapWithScale:(double)a3 atPoint:(CGPoint)a4;
- (BOOL)textRangeAdjustmentInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)useGesturesForEditableContent;
- (BOOL)viewConformsToAsynchronousInteractionProtocol;
- (BOOL)viewCouldBecomeEditable:(id)a3;
- (CGPoint)_rangeAdjustmentPointInTextInputCoordinateSpace:(CGPoint)a3;
- (CGPoint)_selectionViewManager:(id)a3 convertPointToRenderSpace:(CGPoint)a4 textPosition:(id)a5;
- (CGPoint)_selectionViewManager:(id)a3 convertPointToRenderSpace:(CGPoint)a4 textRange:(id)a5;
- (CGPoint)autoscrollUntransformedExtentPoint;
- (CGPoint)boundedDeltaForTranslation:(CGPoint)a3 cursorLocationBase:(CGPoint)a4;
- (CGPoint)constrainedPoint:(CGPoint)a3;
- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 textPosition:(id)a4;
- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 textRange:(id)a4;
- (CGPoint)loupeGestureEndPoint;
- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)a3;
- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4;
- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3;
- (UIContextMenuInteractionDelegate)externalContextMenuInteractionDelegate;
- (UIFieldEditor)fieldEditor;
- (UIScrollView)scrollView;
- (UITextCursorAssertionController)_assertionController;
- (UITextInput)textDocument;
- (UITextInput)view;
- (UITextInteractionAssistant)initWithResponder:(id)a3;
- (UITextInteractionAssistant)initWithView:(id)a3 textInteractionMode:(int64_t)a4;
- (UITextSelection)activeSelection;
- (_UIKeyboardTextSelectionController)activeSelectionController;
- (_UITextChoiceAccelerationAssistant)_textChoicesAssistant;
- (_UITextInteractionEditMenuAssistant)_editMenuAssistant;
- (_UITextSelectionWidgetAnimating)_caretView;
- (id)_asAsyncTextInputClient;
- (id)_asBETextInput;
- (id)_asText;
- (id)_asTextAutoscrolling;
- (id)_computeGestureStateForView:(id)a3;
- (id)_legacySelectionView;
- (id)_pointerInteractionDelegate;
- (id)_rangeAdjustmentViewContainer;
- (id)_selectionViewManager:(id)a3 obtainBlinkSuppressionAssertionForReason:(id)a4;
- (id)_selectionViewManager:(id)a3 obtainGhostCursorAssertionForReason:(id)a4;
- (id)_textReplacementsMenuForElement:(id)a3;
- (id)attributedTextInRange:(id)a3;
- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)a3;
- (id)generatorForRange:(id)a3 withOptions:(unint64_t)a4;
- (id)linkInteraction;
- (id)obtainSelectionGrabberSuppressionAssertion;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)rangeForTextReplacement:(id)a3;
- (id)selectionContainerView;
- (id)selectionContainerViewAboveText;
- (id)selectionView;
- (id)textRangeAdjustmentViewForEdge:(unint64_t)a3;
- (id)textSelectionView;
- (id)updatedTextReplacementsMenuWithMenuElements:(id)a3;
- (int)glowViewMode;
- (int)selectionHighlightMode;
- (int64_t)currentCursorBehavior;
- (unint64_t)currentDraggedHandle;
- (unint64_t)loupeOrientation;
- (void)_invalidateSelectionDisplay;
- (void)_setTextSelectionControllerFromDelegate;
- (void)_textRangeAdjustmentForPoint:(CGPoint)a3 withTouchPoint:(CGPoint)a4 selectionChangeReason:(int64_t)a5;
- (void)_updateRenderSpaceConversionConformance;
- (void)_updateSelectionInViewIfNeeded:(id)a3 toRange:(id)a4;
- (void)_updateSelectionWithPoint:(CGPoint)a3 granularity:(int64_t)a4 forceGranularity:(BOOL)a5;
- (void)_updateTextFormattingRestorationMethodsConformance;
- (void)activateSelection;
- (void)addGestureRecognizersToView:(id)a3;
- (void)autoscrollWillNotStart;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginSelectionChange;
- (void)canBeginDragCursor:(id)a3;
- (void)cancelAutoscroll;
- (void)checkEditabilityAndSetFirstResponderIfNecessary;
- (void)clearGestureRecognizers:(BOOL)a3;
- (void)clearSelection;
- (void)clearStashedSelection;
- (void)commitSelectionWithPoint:(CGPoint)a3;
- (void)deactivateSelection;
- (void)dealloc;
- (void)detach:(BOOL)a3;
- (void)didEndScrollingOrZooming;
- (void)didEndSelectionInteraction;
- (void)endFloatingCursor;
- (void)endSelectionChange;
- (void)extendSelectionToLoupeOrSetToPoint:(CGPoint)a3;
- (void)extendSelectionToPoint:(CGPoint)a3;
- (void)invalidate;
- (void)lollipopGestureWithState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6;
- (void)loupeGestureWithState:(int64_t)a3 location:(id)a4 translation:(id)a5 velocity:(id)a6 modifierFlags:(int64_t)a7 shouldCancel:(BOOL *)a8;
- (void)loupeMagnifierWithState:(int64_t)a3 atPoint:(CGPoint)a4;
- (void)notifyKeyboardSelectionChanged;
- (void)rangeSelectionCanceled;
- (void)rangeSelectionEnded:(CGPoint)a3;
- (void)rangeSelectionMoved:(CGPoint)a3 withTouchPoint:(CGPoint)a4;
- (void)rangeSelectionStarted:(CGPoint)a3;
- (void)rangedMagnifierWithState:(int64_t)a3 atPoint:(CGPoint)a4;
- (void)removeTextChoiceUnderlines;
- (void)resignedFirstResponder;
- (void)scheduleChineseTransliteration;
- (void)scheduleDictationReplacementsForAlternatives:(id)a3 range:(id)a4;
- (void)scheduleDictationReplacementsForMultilingualAlternatives:(id)a3 range:(id)a4;
- (void)scheduleReplacementsWithOptions:(unint64_t)a3;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)selectAll:(id)a3;
- (void)selectWord;
- (void)selectWordWithoutShowingCommands;
- (void)selectionAnimationDidStop;
- (void)selectionChanged;
- (void)setCursorBlinkAnimationEnabled:(BOOL)a3;
- (void)setCursorVisible:(BOOL)a3;
- (void)setExternalContextMenuInteractionDelegate:(id)a3;
- (void)setExternalInteractions:(id)a3;
- (void)setFirstResponderIfNecessaryActivatingSelection:(BOOL)a3;
- (void)setGestureRecognizers;
- (void)setGestureRecognizers:(id)a3;
- (void)setGhostAppearance:(BOOL)a3;
- (void)setGlowViewMode:(int)a3;
- (void)setNeedsSelectionDisplayUpdate;
- (void)setSelectionDisplayVisible:(BOOL)a3;
- (void)setSelectionHighlightMode:(int)a3;
- (void)setSelectionWithPoint:(CGPoint)a3;
- (void)setSuppressSystemUI:(BOOL)a3;
- (void)startAutoscroll:(CGPoint)a3;
- (void)stashCurrentSelection;
- (void)textRangeAdjustmentInteraction:(id)a3 didBeginAtPoint:(CGPoint)a4;
- (void)textRangeAdjustmentInteraction:(id)a3 didEndAtPoint:(CGPoint)a4;
- (void)textRangeAdjustmentInteractionWasCancelled:(id)a3;
- (void)underlineCorrectedTextInRange:(id)a3 typedString:(id)a4;
- (void)updateAutoscroll:(id)a3;
- (void)updateDisplayedSelection;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)updateSelectionForTextAnimation;
- (void)updateWithMagnifierTerminalPoint:(BOOL)a3;
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
    v5 = WeakRetained;
  }

  else
  {
    v5 = [(UITextLinkInteraction *)self->_linkInteraction contextMenuDelegateProxy];
  }

  v6 = v5;

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
      v5 = [v4 hardwareKeyboardExclusivityIdentifier];
      v2 = v5 != 0;
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
  v4 = [WeakRetained textInputView];
  if (v4)
  {
    v5 = v4;
    v6 = objc_loadWeakRetained(&self->_view);
    v7 = [v6 textInputView];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v9 = [WeakRetained textInputView];
    v10 = [v9 cursorBehavior];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
      v4 = 1;
      goto LABEL_10;
    }

    if ([(UITextInteractionAssistant *)self containerIsBrowserView])
    {
      v5 = [WeakRetained _proxyTextInput];
      v6 = [v5 formElement];
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_4;
        }
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  v4 = [WeakRetained _useGesturesForEditableContent];
LABEL_10:

  return v4;
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
          v4 = [(UITextInteraction *)self->_externalInteractions textInteractionMode];
          if (v4 == [(UITextInteraction *)self->_interactions textInteractionMode])
          {
            return;
          }
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [(UITextInteractionAssistant *)self _computeGestureStateForView:WeakRetained];

  v14 = [(UITextInteraction *)self->_interactions _transientState];
  [(UITextInteractionAssistant *)self clearGestureRecognizers];
  v7 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 _textInputViewForAddingGestureRecognizers];
LABEL_14:
    v11 = v8;
    [(UITextInteractionAssistant *)self addGestureRecognizersToView:v8];
    goto LABEL_15;
  }

  v9 = [(UITextInteractionAssistant *)self externalInteractions];
  v10 = [v9 view];

  if (!v10)
  {
    v8 = [v7 textInputView];
    goto LABEL_14;
  }

  v11 = [(UITextInteractionAssistant *)self externalInteractions];
  v12 = [v11 view];
  [(UITextInteractionAssistant *)self addGestureRecognizersToView:v12];

LABEL_15:
  [(UITextInteraction *)self->_interactions _applyTransientState:v14];
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
  v2 = [(UITextInteractionAssistant *)self activeSelectionController];
  v3 = [v2 selection];

  return v3;
}

- (_UIKeyboardTextSelectionController)activeSelectionController
{
  [(UITextInteractionAssistant *)self _setTextSelectionControllerFromDelegate];
  textSelectionController = self->_textSelectionController;

  return textSelectionController;
}

- (void)_setTextSelectionControllerFromDelegate
{
  v3 = [(_UIKeyboardTextSelectionController *)self->_textSelectionController inputDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (v3 == WeakRetained)
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
    v3 = [WeakRetained _proxyTextInput];
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
  v8 = [(UITextInteractionAssistant *)self activeSelection];
  [v8 selectionChanged];
  v3 = [(UITextInteractionAssistant *)self view];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UITextInteractionAssistant *)self viewConformsToAsynchronousInteractionProtocol])
  {
    v4 = [v3 shouldAllowHidingSelectionCommands] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  if (([v8 isCommitting] & 1) == 0 && ((v4 | -[UITextInteractionAssistant expectingCommit](self, "expectingCommit")) & 1) == 0)
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant _hideSelectionCommandsWithReason:2];
    [(UITextLinkInteraction *)self->_linkInteraction dismissEditMenuOnSelectionChangeIfNecessary];
    textChoicesAssistant = self->_textChoicesAssistant;
    v6 = [v8 selectedRange];
    v7 = [v6 start];
    [(_UITextChoiceAccelerationAssistant *)textChoicesAssistant updateUnderlinesIfNeededAfterPosition:v7];
  }

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    if (([v8 isCommitting] & 1) != 0 || -[UITextInteractionAssistant expectingCommit](self, "expectingCommit") || -[UITextInteractionAssistant requiresImmediateUpdate](self, "requiresImmediateUpdate"))
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
  v3 = [(UITextInteractionAssistant *)self view];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = [(UITextInteractionAssistant *)self view];
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 inputDelegateManager];
    v7 = [v6 keyInputDelegate];
    [v8 keyboardInputChangedSelection:v7];
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
    v3 = [(UITextInteractionAssistant *)self _legacySelectionView];
    [v3 validateWithInteractionAssistant:self];

    v4 = [(UITextInteractionAssistant *)self _legacySelectionView];
    [v4 activate];
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
    v6 = [v5 clearingBehavior];

    if (v6 == 3)
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
      v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorAssertionController];
    }

    else
    {
      v3 = 0;
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

    v3 = assertionController;
  }

  return v3;
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

- (UITextInteractionAssistant)initWithResponder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITextInteractionAssistant;
  v5 = [(UITextInteractionAssistant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_externalTextInput = 1;
    objc_storeWeak(&v5->_view, v4);
    [(UITextInteractionAssistant *)v6 _updateRenderSpaceConversionConformance];
    v7 = v6;
  }

  return v6;
}

- (id)textSelectionView
{
  v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
  selectionView = v3;
  if (!v3)
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
    v7 = [WeakRetained _isInteractiveTextSelectionDisabled];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_pointerInteractionDelegate
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&v2->_view);
    v6 = [v5 _pointerInteractionDelegate];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v2 = v6;
  }

  v7 = v2;

  return v2;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  rect_24 = a3;
  v8 = a4;
  v9 = a5;
  [v8 location];
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
  v16 = [WeakRetained textInputView];
  if (!v16)
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
    v24 = [v23 inputDelegateManager];

    if (v24)
    {
      v25 = +[UIKeyboardImpl activeInstance];
      v26 = [v25 inputDelegateManager];
      [v26 selectionClipRect];
      v27 = v115;
      v115[4] = v28;
      v27[5] = v29;
      v27[6] = v30;
      v27[7] = v31;
    }
  }

  if (CGRectIsNull(*(v115 + 1)))
  {
    [v16 bounds];
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
    v40 = WeakRetained;
    v41 = [v40 _anyTextItemConstrainedToLineAtPoint:{v11, v13}];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 rects];
      v44 = [v43 firstObject];
      [v44 CGRectValue];
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
    v40 = [(UITextInteraction *)self->_linkInteraction view];
    if (objc_opt_respondsToSelector())
    {
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __80__UITextInteractionAssistant_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
      v107[3] = &unk_1E7125728;
      v107[4] = &v114;
      v107[5] = &v108;
      [v40 _requestTextItemConstrainedToLineAtPoint:v107 resultHandler:{v11, v13}];
    }
  }

  v50 = [(UITextInteractionAssistant *)self currentCursorBehavior];
  x = *MEMORY[0x1E695F058];
  v52 = *(MEMORY[0x1E695F058] + 8);
  v53 = *(MEMORY[0x1E695F058] + 16);
  v54 = *(MEMORY[0x1E695F058] + 24);
  switch(v50)
  {
    case 0:
      if (!v21)
      {
        v56 = v9;
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
      v66 = [v65 textSettings];

      if (vabdd_f64(rect_16, v64) >= 50.0)
      {
        [v66 regionCaptureMultiplier];
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
              v94 = [rect_24 view];
              v95 = v94;
              if (v16 != v94)
              {
                [v94 convertRect:v16 fromView:{x, v52, v53, v54}];
                x = v96;
                v52 = v97;
                v53 = v98;
                v54 = v99;
              }

              v56 = v9;
              if (v68)
              {
                goto LABEL_72;
              }

              goto LABEL_74;
            }
          }

LABEL_52:
          [v16 bounds];
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
            v85 = [WeakRetained tokenizer];
            v86 = v85;
            if (v85)
            {
              v87 = [v85 rangeEnclosingPosition:v58 withGranularity:4 inDirection:0];
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

          [v66 textLineRegionPadding];
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
      v56 = v9;
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

  v56 = v9;
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
  v55 = v9;
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [v5 identifier];
  v8 = [v7 isEqual:@"_UITextCursorLinkRegion"];

  if (v8)
  {
    v9 = +[UIPointerShape _linkPointerShape];
    v10 = [UIPointerStyle styleWithShape:v9 constrainedAxes:0];
LABEL_3:

    goto LABEL_6;
  }

  if (![(UITextInteractionAssistant *)self isInteractiveSelectionDisabled])
  {
    v12 = [v5 identifier];
    if ([v12 isEqualToString:@"_UITextLineCursorRegion"])
    {
    }

    else
    {
      v13 = [v12 isEqualToString:@"_UITextCursorBoundingRegion"];

      if (!v13)
      {
        goto LABEL_5;
      }
    }

    [v5 rect];
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

    v27 = [v5 identifier];

    if (v27 != @"_UITextLineCursorRegion")
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

- (UITextInteractionAssistant)initWithView:(id)a3 textInteractionMode:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = UITextInteractionAssistant;
  v7 = [(UITextInteractionAssistant *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_view, v6);
    v8->_textInteractionMode = a4;
    [(UITextInteractionAssistant *)v8 setGestureRecognizers];
    [(UITextInteractionAssistant *)v8 _updateRenderSpaceConversionConformance];
    [(UITextInteractionAssistant *)v8 _updateTextFormattingRestorationMethodsConformance];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel_setGestureRecognizers_ name:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:0];
  }

  return v8;
}

- (id)_asText
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v3 = [WeakRetained _proxyTextInput];

  return v3;
}

- (BOOL)_canAutoscroll
{
  v3 = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UITextInteractionAssistant *)self _asBETextInput];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)_asTextAutoscrolling
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v3 = [WeakRetained _proxyTextInput];
  if ([v3 conformsToProtocolCached:&unk_1EFE89FF8])
  {
    v4 = [WeakRetained _proxyTextInput];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_asAsyncTextInputClient
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v4 = [WeakRetained _proxyTextInput];
    v5 = [v4 conformsToProtocolCached:&unk_1F016C7B0];

    if (v5)
    {
      v6 = [WeakRetained _proxyTextInput];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_asBETextInput
{
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v4 = [WeakRetained _proxyTextInput];
    v5 = [v4 conformsToProtocolCached:&unk_1F016C810];

    if (v5)
    {
      v6 = [WeakRetained _proxyTextInput];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSuppressSystemUI:(BOOL)a3
{
  suppressSystemUI = self->_suppressSystemUI;
  self->_suppressSystemUI = a3;
  if (suppressSystemUI != a3)
  {
    if (a3)
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
    v5 = [(UITextSelectionView *)self->_selectionView rangeView];
    v6 = [v5 mode];

    return v6;
  }
}

- (void)setSelectionHighlightMode:(int)a3
{
  v3 = *&a3;
  v5 = [(UITextSelectionView *)self->_selectionView rangeView];
  [v5 setMode:v3];

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

- (void)setSelectionDisplayVisible:(BOOL)a3
{
  v3 = a3;
  if (!+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionView = self->_selectionView;

    [(UITextSelectionView *)selectionView setVisible:v3];
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

- (void)setCursorBlinkAnimationEnabled:(BOOL)a3
{
  v3 = a3;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v6 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager cursorView];
    [v6 setBlinking:v3];
  }

  else
  {
    selectionView = self->_selectionView;

    [(UITextSelectionView *)selectionView setCaretBlinks:v3];
  }
}

- (BOOL)isCursorBlinkAnimationEnabled
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager cursorView];
    v4 = [v3 isBlinking];

    return v4;
  }

  else
  {
    selectionView = self->_selectionView;

    return [(UITextSelectionView *)selectionView caretBlinks];
  }
}

- (void)setGlowViewMode:(int)a3
{
  v3 = *&a3;
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
    v3 = 0;
  }

  else
  {
    v3 = [(UITextInteractionAssistant *)self _legacySelectionView];
  }

  return v3;
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
    v4 = [WeakRetained _proxyTextInput];
    v5 = [v4 formElement];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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
  v3 = [(UITextInteraction *)self->_linkInteraction view];

  if (v3)
  {
    v4 = self->_linkInteraction;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setExternalInteractions:(id)a3
{
  v4 = a3;
  textInteractionMode = self->_textInteractionMode;
  v6 = [(UITextInteraction *)v4 textInteractionMode];
  externalInteractions = self->_externalInteractions;
  self->_externalInteractions = v4;
  v8 = v4;

  self->_textInteractionMode = [(UITextInteraction *)v8 textInteractionMode];
  v9 = [(UITextInteraction *)v8 delegate];
  [(UITextInteraction *)self->_interactions setDelegate:v9];

  if (textInteractionMode != v6)
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
  v3 = [(UITextInteractionAssistant *)self _selectionIsActivated];
  if (v3)
  {
    v4 = [(UITextInteractionAssistant *)self activeSelection];
    v5 = [v4 isValid];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)detach:(BOOL)a3
{
  v3 = a3;
  self->_detaching = 1;
  [(UITextSelectionView *)self->_selectionView detach];
  v5 = [(UITextInteraction *)self->_linkInteraction view];
  [v5 removeInteraction:self->_linkInteraction];

  linkInteraction = self->_linkInteraction;
  self->_linkInteraction = 0;

  v7 = [(UITextInteraction *)self->_textContextMenuInteraction view];
  [v7 removeInteraction:self->_textContextMenuInteraction];

  textContextMenuInteraction = self->_textContextMenuInteraction;
  self->_textContextMenuInteraction = 0;

  v9 = [(UIPointerInteraction *)self->_pointerInteraction view];
  [v9 removeInteraction:self->_pointerInteraction];

  pointerInteraction = self->_pointerInteraction;
  self->_pointerInteraction = 0;

  if (self->_selectionViewManager)
  {
    v11 = [(UITextInteraction *)self->_interactions view];
    [v11 removeInteraction:self->_selectionViewManager];

    selectionViewManager = self->_selectionViewManager;
    self->_selectionViewManager = 0;
  }

  [(UITextInteractionAssistant *)self clearGestureRecognizers:v3];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v13 = +[UITextMagnifierCaret activeCaretMagnifier];
  v14 = [v13 target];

  if (WeakRetained == v14)
  {
    [v13 stopMagnifying:0];
  }

  v15 = +[UITextMagnifierRanged activeRangedMagnifier];
  v16 = [v15 target];

  if (WeakRetained == v16)
  {
    [v15 stopMagnifying:0];
  }

  self->_detaching = 0;
}

- (UIScrollView)scrollView
{
  v2 = [(UITextInteractionAssistant *)self view];
  v3 = [v2 textInputView];
  v4 = [v3 _enclosingScrollerIncludingSelf];

  return v4;
}

- (UIFieldEditor)fieldEditor
{
  v3 = [(UITextInteractionAssistant *)self view];
  v4 = [v3 _proxyTextInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(UITextInteractionAssistant *)self view];
  v7 = [v6 _proxyTextInput];
  if (isKindOfClass)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  v9 = [(UITextInteractionAssistant *)self view];
  v6 = v9;
  if (v8)
  {
    v10 = [v9 _proxyTextInput];
    v7 = [v10 _fieldEditor];

LABEL_12:
    goto LABEL_13;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  v12 = [(UITextInteractionAssistant *)self view];
  v6 = v12;
  if (v11)
  {
    v13 = [v12 _fieldEditor];
LABEL_11:
    v7 = v13;
    goto LABEL_12;
  }

  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v15 = [(UITextInteractionAssistant *)self view];
    v6 = [v15 _firstTextView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v6;
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (BOOL)containerIsTextField
{
  v3 = [(UITextInteractionAssistant *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UITextInteractionAssistant *)self view];
    v6 = [v5 _proxyTextInput];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }

    else
    {
      v7 = [(UITextInteractionAssistant *)self fieldEditor];
      v4 = v7 != 0;
    }
  }

  return v4;
}

- (BOOL)containerAllowsSelection
{
  v3 = [(UITextInteractionAssistant *)self view];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(UITextInteractionAssistant *)self view];
  v6 = [v5 clearingBehavior];

  return v6 != 2;
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
  v6 = [v5 _wantsVisualBIDISelections];

  return v6;
}

- (void)clearGestureRecognizers:(BOOL)a3
{
  if (a3 || ![(UITextInteractionAssistant *)self inGesture])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant cancelDelayedCommandRequests];
    gestureState = self->_gestureState;
    self->_gestureState = 0;

    v6 = [(UITextInteraction *)self->_interactions view];
    [v6 removeInteraction:self->_interactions];
    interactions = self->_interactions;
    self->_interactions = 0;
  }
}

- (void)canBeginDragCursor:(id)a3
{
  v10 = a3;
  v4 = [(UITextInteractionAssistant *)self scrollView];
  [v4 contentSize];
  v6 = v5;

  v7 = [(UITextInteractionAssistant *)self scrollView];
  [v7 bounds];
  v9 = v8;

  if (v6 > v9)
  {
    [v10 setCanBeginDrag:0];
  }
}

- (id)_computeGestureStateForView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setViewIsEditable:{objc_msgSend(v4, "isEditable")}];
  [v5 setViewCanBecomeEditable:{-[UITextInteractionAssistant viewCouldBecomeEditable:](self, "viewCouldBecomeEditable:", v4)}];
  externalInteractions = self->_externalInteractions;
  if (externalInteractions)
  {
    v7 = [(UITextInteraction *)externalInteractions children];
    [v5 setHasExternalInteractions:{objc_msgSend(v7, "count") != 0}];
  }

  else
  {
    [v5 setHasExternalInteractions:0];
  }

  [v5 setMode:self->_textInteractionMode];
  [v5 setIsFirstResponder:{objc_msgSend(v4, "isFirstResponder")}];

  return v5;
}

- (void)setGestureRecognizers:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained _responderWindow];
  v7 = [v6 windowScene];
  v8 = [v7 keyboardSceneDelegate];
  v9 = [v4 object];

  if (v8 == v9)
  {

    [(UITextInteractionAssistant *)self setGestureRecognizers];
  }
}

- (void)setExternalContextMenuInteractionDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_externalContextMenuInteractionDelegate, v4);
  [(UITextContextMenuInteraction *)self->_textContextMenuInteraction setExternalContextMenuDelegate:v4];
}

- (void)addGestureRecognizersToView:(id)a3
{
  v167 = a3;
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
      v9 = [WeakRetained playsNicelyWithGestures];
    }

    else
    {
      v9 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [WeakRetained _isInteractiveTextSelectionDisabled];
    }

    else
    {
      v10 = 0;
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

      [v167 addInteraction:self->_linkInteraction];
      [(UITextInteraction *)self->_linkInteraction setAssistantDelegate:self];
      goto LABEL_19;
    }

    linkInteraction = self->_linkInteraction;
    if (linkInteraction)
    {
LABEL_14:
      v12 = [(UITextInteraction *)linkInteraction view];

      if (v12 != v167)
      {
        [v167 addInteraction:self->_linkInteraction];
      }
    }

LABEL_19:
    textContextMenuInteraction = self->_textContextMenuInteraction;
    if (textContextMenuInteraction)
    {
      v16 = [(UITextInteraction *)textContextMenuInteraction view];

      if (v16 == v167)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = objc_alloc_init(UITextContextMenuInteraction);
      v18 = self->_textContextMenuInteraction;
      self->_textContextMenuInteraction = v17;

      v19 = [(UITextInteractionAssistant *)self externalContextMenuInteractionDelegate];
      [(UITextContextMenuInteraction *)self->_textContextMenuInteraction setExternalContextMenuDelegate:v19];

      [(UITextInteraction *)self->_textContextMenuInteraction setAssistantDelegate:self];
    }

    [v167 addInteraction:self->_textContextMenuInteraction];
LABEL_24:
    if ([(UITextInteractionAssistant *)self currentCursorBehavior]== 2 || (p_pointerInteraction = &self->_pointerInteraction, self->_pointerInteraction) || ![(UITextInteractionAssistant *)self supportsIndirectInteractions])
    {
      p_pointerInteraction = &self->_pointerInteraction;
      pointerInteraction = self->_pointerInteraction;
      if (!pointerInteraction || ([(UIPointerInteraction *)pointerInteraction view], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == v167))
      {
LABEL_31:
        v27 = [UITextInteraction textInteractionForMode:self->_textInteractionMode];
        interactions = self->_interactions;
        self->_interactions = v27;

        [(UITextInteraction *)self->_interactions setTextInput:WeakRetained];
        [(UITextInteraction *)self->_interactions setAssistantDelegate:self];
        v29 = [(UITextInteraction *)self->_externalInteractions delegate];
        [(UITextInteraction *)self->_interactions setDelegate:v29];

        if (self->_textContextMenuInteraction)
        {
          [(UITextInteraction *)self->_interactions addIndirectChild:?];
        }

        if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
        {
          selectionViewManager = self->_selectionViewManager;
          if (selectionViewManager)
          {
            v31 = [(UITextSelectionDisplayInteraction *)selectionViewManager view];

            if (v31 == v167)
            {
              goto LABEL_38;
            }

            selectionViewManager = self->_selectionViewManager;
          }

          v32 = [(UITextSelectionDisplayInteraction *)selectionViewManager isActivated];
          v33 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager view];
          [v33 removeInteraction:self->_selectionViewManager];

          v34 = [[UITextSelectionDisplayInteraction alloc] _initWithTextInput:WeakRetained delegate:self activated:0];
          v35 = self->_selectionViewManager;
          self->_selectionViewManager = v34;

          [v167 addInteraction:self->_selectionViewManager];
          [(UITextSelectionDisplayInteraction *)self->_selectionViewManager setActivated:v32];
        }

LABEL_38:
        v36 = v167;
        v37 = v36;
        if (objc_opt_respondsToSelector())
        {
          v37 = [WeakRetained _rangeAdjustmentGestureView];
        }

        v38 = [[UITextRangeAdjustmentInteraction alloc] initWithAdjustmentDelegate:self gestureHostView:v37];
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
                v57 = [v56 hasEditableMarkedText];

                if (v57)
                {
                  v58 = +[UIKeyboardImpl activeInstance];
                  v59 = [v58 liveConversionEnabled];

                  v60 = self->_interactions;
                  if (v59)
                  {
                    v61 = [UITextLiveConversionInteraction alloc];
                    v62 = [(UITextInteractionAssistant *)self _asText];
                    v63 = [(UITextLiveConversionInteraction *)v61 initWithTextInput:v62];
                    [(UITextInteraction *)v60 addChild:v63];

                    goto LABEL_66;
                  }

                  v161 = [UITextPhraseBoundaryInteraction alloc];
                  v162 = [(UITextInteractionAssistant *)self _asText];
                  v163 = [(UITextPhraseBoundaryInteraction *)v161 initWithTextInput:v162];
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

            if (v10)
            {
              goto LABEL_66;
            }

            v98 = self->_interactions;
            if (v9)
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

        v52 = [(UITextInteraction *)self->_externalInteractions _customHighlighterGesture];
        v53 = v52;
        v54 = self->_interactions;
        if (self->_textInteractionMode == 1000 && v52)
        {
          v55 = [[UITextRefinementInteraction_CustomHighlighter alloc] initWithLongPressGesture:v52];
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
      v22 = [(UITextInteractionAssistant *)self _pointerInteractionDelegate];
      v23 = [(UIPointerInteraction *)v21 initWithDelegate:v22];
      v24 = self->_pointerInteraction;
      self->_pointerInteraction = v23;

      [(UIPointerInteraction *)self->_pointerInteraction _setPausesPointerUpdatesWhilePanning:0];
    }

    [v167 addInteraction:*p_pointerInteraction];
    goto LABEL_31;
  }

LABEL_67:
}

- (void)setFirstResponderIfNecessaryActivatingSelection:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = [WeakRetained isFirstResponder];
  if (([WeakRetained isFirstResponder] & 1) == 0)
  {
    if (!-[UITextInteractionAssistant containerIsBrowserView](self, "containerIsBrowserView") || ([WeakRetained _proxyTextInput], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "formElement"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      [WeakRetained becomeFirstResponder];
    }
  }

  if ([WeakRetained isFirstResponder])
  {
    v8 = [(UITextInteractionAssistant *)self view];
    v9 = [v8 _responderWindow];
    [v9 makeKeyWindow];

    if (v5)
    {
      v10 = [WeakRetained _responderWindow];
      v11 = [v10 _isApplicationKeyWindow];

      if ((v11 & 1) == 0)
      {
        [WeakRetained reloadInputViews];
      }
    }

    [(UITextCursorAssertionController *)self->_assertionController _updateSubjectWithAssertionState];
  }

  if (v3)
  {
    if ([WeakRetained isFirstResponder])
    {
      if (![(UITextInteractionAssistant *)self _selectionIsActivated])
      {
        v12 = [UITextInputTraits traitsByAdoptingTraits:WeakRetained];
        v13 = [v12 deferBecomingResponder];

        if ((v13 & 1) == 0)
        {
          [(UITextInteractionAssistant *)self activateSelection];
        }
      }
    }
  }
}

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v5 = [(UITextInteractionAssistant *)self scrollView];
  if (v5)
  {
    v6 = [(UITextInteractionAssistant *)self activeSelection];
    v7 = [v6 selectedRange];

    if (!v7)
    {
      v8 = [(UITextInteractionAssistant *)self activeSelection];
      [v8 selectionChanged];
    }

    v9 = [(UITextInteractionAssistant *)self activeSelection];
    [v9 caretRect];
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
      v18 = [(UITextInteractionAssistant *)self activeSelection];
      v19 = [v18 selectedRange];

      if (v19)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v20 = [(UITextInteractionAssistant *)self activeSelection];
        v21 = [v20 selectionRects];

        v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
                objc_enumerationMutation(v21);
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
            v23 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v23);
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v31 = [WeakRetained textInputView];
    [v5 convertRect:v31 fromView:{x, y, width, height}];
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

    [v5 scrollRectToVisible:v3 animated:{v33, v35, v40, v39}];
  }
}

- (void)loupeGestureWithState:(int64_t)a3 location:(id)a4 translation:(id)a5 velocity:(id)a6 modifierFlags:(int64_t)a7 shouldCancel:(BOOL *)a8
{
  interactions = self->_interactions;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [(UITextInteraction *)interactions interactionWithGestureForName:0x1EFBA76D0];
  [v17 willBeginExternalGesture];
  [v17 loupeGestureWithState:a3 location:v16 translation:v15 velocity:v14 modifierFlags:a7 shouldCancel:a8];
}

- (void)loupeMagnifierWithState:(int64_t)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = +[UITextMagnifierCaret sharedCaretMagnifier];
  if (a3 == 2)
  {
    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (self->_willHandoffLoupeMagnifier)
    {
      self->_willHandoffLoupeMagnifier = 0;
      goto LABEL_11;
    }

    v11 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained textInputView];
    [v11 beginMagnifyingTarget:v10 text:WeakRetained magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    goto LABEL_10;
  }

  if ((a3 - 3) <= 1)
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

- (void)rangedMagnifierWithState:(int64_t)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = +[UITextMagnifierRanged sharedRangedMagnifier];
  if (a3 == 2)
  {
    v11 = v8;
    [v8 setMagnificationPoint:{x, y}];
  }

  else if (a3 == 1)
  {
    v11 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained textInputView];
    [v11 beginMagnifyingTarget:v10 text:WeakRetained magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  else
  {
    if ((a3 - 3) > 1)
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

- (void)lollipopGestureWithState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  [v12 manuallyUpdateInteractionWithGestureState:a3 location:a6 locationOfFirstTouch:v10 forTouchType:{v9, x, y}];
}

- (void)setSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8 = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    v7 = [v8 hasEditableSelection];

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [v8 setSelectionWithPoint:{x, y}];
  [v8 setGranularity:0];
LABEL_5:
}

- (void)commitSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v14 = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    v7 = [v14 hasEditableSelection];

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v8 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [v8 floatingCursorPositionForPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  [v14 setSelectionWithPoint:{v10, v12}];
  [v14 setGranularity:0];
  v13 = [(UITextInteractionAssistant *)self activeSelection];
  [v13 commit];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
LABEL_5:
}

- (void)extendSelectionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8 = [(UITextInteractionAssistant *)self activeSelection];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isEditable])
  {
  }

  else
  {
    v7 = [v8 hasEditableSelection];

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [v8 extendSelectionToPoint:{x, y}];
  [v8 setGranularity:0];
LABEL_5:
}

- (void)extendSelectionToLoupeOrSetToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_stashedTextRange)
  {
    goto LABEL_10;
  }

  v6 = [(UITextInteractionAssistant *)self loupeGesture];
  if (![v6 numberOfTouches])
  {
    goto LABEL_9;
  }

  v7 = [(UITextInteractionAssistant *)self loupeGesture];
  if ([v7 state] <= 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v8 = [(UITextInteractionAssistant *)self loupeGesture];
  v9 = [v8 state];

  if (v9 <= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained setSelectedTextRange:self->_stashedTextRange];

    self->_didUseStashedRange = 1;
    v11 = [(UITextInteractionAssistant *)self loupeGesture];
    v12 = [(UITextInteractionAssistant *)self loupeGesture];
    v13 = [v12 view];
    [v11 locationInView:v13];
    v15 = v14;
    v17 = v16;

    [(UITextInteractionAssistant *)self extendSelectionToPoint:v15, v17];
    return;
  }

LABEL_10:

  [(UITextInteractionAssistant *)self setSelectionWithPoint:x, y];
}

+ (int64_t)_nextGranularityInCycle:(int64_t)a3 forTouchType:(int64_t)a4
{
  v4 = 2;
  if (a4 == 3)
  {
    v4 = 3;
  }

  if (((1 << a3) & 0x14) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (((1 << a3) & 0x29) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a3 <= 5)
  {
    return v6;
  }

  else
  {
    return a3;
  }
}

- (void)checkEditabilityAndSetFirstResponderIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  self->_needsGestureUpdate = [WeakRetained isFirstResponder] ^ 1;

  v11 = [(UITextInteractionAssistant *)self activeSelection];
  v4 = objc_loadWeakRetained(&self->_view);
  if ([(UITextInteractionAssistant *)self viewCouldBecomeEditable:v4])
  {
    v5 = [v11 selectedRange];
    v6 = [v5 _isRanged];

    if ((v6 & 1) == 0)
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
    v10 = [v9 isFirstResponder];

    if (v10)
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
  v3 = [(UITextInteractionAssistant *)self activeSelection];
  [v3 caretRect];
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

  [v3 alterSelection:1 granularity:{x, y}];
  [v3 commit];
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
  v3 = [(UITextInteractionAssistant *)self activeSelection];
  [v3 caretRect];
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

  [v3 alterSelection:1 granularity:{x, y}];
  [v3 commit];
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
    v9 = [(UITextInteractionAssistant *)self _asBETextInput];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v9 automaticallyPresentEditMenu] ^ 1;
    }

    else
    {
      v10 = [(UITextInteractionAssistant *)self _asAsyncTextInputClient];
      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v7) = [v10 shouldSuppressEditMenu];
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

- (void)selectAll:(id)a3
{
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(UITextInteractionAssistant *)self beginSelectionChange];
  v5 = [(UITextInteractionAssistant *)self activeSelection];
  [v5 selectAll];
  [v5 commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  if (a3 && [(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommandsAfterDelay:0.2];
  }

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)clearSelection
{
  v3 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [v3 removeFromSuperview];

  [(UITextInteractionAssistant *)self beginSelectionChange];
  v4 = [(UITextInteractionAssistant *)self activeSelection];
  [v4 clearSelection];
  [v4 commit];
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)_updateSelectionWithPoint:(CGPoint)a3 granularity:(int64_t)a4 forceGranularity:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v16 = [(UITextInteractionAssistant *)self activeSelection];
  v10 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  v11 = [v10 baseIsStart];

  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v12 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
  }

  else
  {
    v13 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v12 = [v13 rangeView];
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v15 = [WeakRetained textInputView];
  [v12 convertPoint:v15 toView:{x, y}];

  [v16 setRangedSelectionExtentPoint:v11 baseIsStart:{x, y}];
  if (a5 || [v16 willSelectionChange])
  {
    [v16 setGranularity:a4];
  }

  [v16 commit];
  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
}

- (void)updateWithMagnifierTerminalPoint:(BOOL)a3
{
  v3 = a3;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
LABEL_13:
    v14 = [(UITextInteractionAssistant *)self _editMenuAssistant];
    v15 = [v14 _editMenuIsVisible];

    if ((v15 & 1) == 0)
    {
      v16 = [(UITextInteractionAssistant *)self _editMenuAssistant];
      [v16 showSelectionCommandsAfterDelay:0.0];
    }

    [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
    return;
  }

  v5 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v17 = [v5 rangeView];

  v6 = +[UITextMagnifierRanged sharedRangedMagnifier];
  v7 = [v6 target];

  if (v7)
  {
    if ((![v6 terminalPointPlacedCarefully] || -[UITextInteractionAssistant autoscrolled](self, "autoscrolled")) && (-[UITextInteractionAssistant _legacySelectionView](self, "_legacySelectionView", v17), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      [(UITextInteractionAssistant *)self beginSelectionChange];
      [v17 setAnimateUpdate:1];
      v10 = [v17 startGrabber];
      [v10 setAnimating:1];

      v11 = [v17 endGrabber];
      [v11 setAnimating:1];

      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __100__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updateWithMagnifierTerminalPoint___block_invoke;
      v27 = &unk_1E70F6B40;
      v28 = v6;
      v29 = self;
      v12 = v17;
      v30 = v12;
      v31 = WeakRetained;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __100__UITextInteractionAssistant_UITextInteractionAssistant_Internal__updateWithMagnifierTerminalPoint___block_invoke_2;
      v22 = &unk_1E70F5AC0;
      v23 = self;
      v13 = WeakRetained;
      [UIView animateWithDuration:0x20000 delay:&v24 options:&v19 animations:0.2 completion:0.0];
      [v12 setAnimateUpdate:0];
      [(UITextInteractionAssistant *)self endSelectionChange];
    }

    else if (v3)
    {
      [v6 terminalPoint];
      [v6 setMagnificationPoint:?];
      [v17 activeTouchPoint];
      [(UITextInteractionAssistant *)self updateSelectionWithPoint:?];
    }

    [v6 stopMagnifying:{1, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27}];

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
  v2 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v5 = [v2 rangeView];

  v3 = [v5 startGrabber];
  [v3 setAnimating:0];

  v4 = [v5 endGrabber];
  [v4 setAnimating:0];
}

- (void)rangeSelectionStarted:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteractionAssistant *)self interactions];
  [v6 _callDelegateWillMoveTextRangeExtentAtPoint:{x, y}];

  v10 = [(UITextInteractionAssistant *)self activeSelection];
  v7 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v8 = [v7 rangeView];

  [(UITextInteractionAssistant *)self willBeginSelectionInteraction];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  if (_os_feature_enabled_impl() && [(UITextInteractionAssistant *)self containerWantsVisualBIDISelections])
  {
    [v10 updateBaseAndInitialExtent];
  }

  else if ([v8 baseIsStart])
  {
    [v10 setRangedSelectionBaseToCurrentSelectionStart];
    [v10 setRangedSelectionInitialExtentToCurrentSelectionEnd];
  }

  else
  {
    [v10 setRangedSelectionBaseToCurrentSelectionEnd];
    [v10 setRangedSelectionInitialExtentToCurrentSelectionStart];
  }

  v9 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [v9 setForceRangeView:1];

  -[UITextInteractionAssistant _updateSelectionWithPoint:granularity:forceGranularity:](self, "_updateSelectionWithPoint:granularity:forceGranularity:", [v10 granularity], 0, x, y);
  [v8 performSelector:sel_beginMagnifying withObject:0 afterDelay:0.4];
  [v8 setWillBeginMagnifying:1];
}

- (void)rangeSelectionEnded:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = +[UITextMagnifierRanged sharedRangedMagnifier];
  v6 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v7 = [v6 rangeView];

  v8 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [v8 setForceRangeView:0];

  v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v10 = [v9 preferencesActions];
  v11 = [v10 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v11)
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    [(UITextInteractionAssistant *)self setExpectingCommit:1];
    goto LABEL_7;
  }

  v12 = [v16 target];

  if (v12)
  {
    [(UITextInteractionAssistant *)self updateWithMagnifierTerminalPoint:[(UITextInteractionAssistant *)self autoscrolled]^ 1];
    goto LABEL_7;
  }

  if (![v7 commandsWereShowing])
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    goto LABEL_7;
  }

  [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant hideSelectionCommands];
  if ([v7 autoscrolled])
  {
LABEL_7:
    [v7 setWillBeginMagnifying:0];
    [(UITextInteractionAssistant *)self cancelAutoscroll];
    v13 = [v7 startGrabber];
    [v13 updateDot];

    v14 = [v7 endGrabber];
    [v14 updateDot];

    goto LABEL_8;
  }

  [(UITextInteractionAssistant *)self setSelectionWithPoint:x, y];
  v15 = [(UITextInteractionAssistant *)self activeSelection];
  [v15 commit];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  [v7 setWillBeginMagnifying:0];
  [(UITextInteractionAssistant *)self cancelAutoscroll];
LABEL_8:
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
  [(UITextInteractionAssistant *)self setExpectingCommit:0];
}

- (void)rangeSelectionCanceled
{
  v3 = [(UITextInteractionAssistant *)self _legacySelectionView];
  [v3 setForceRangeView:0];

  v4 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v5 = [v4 rangeView];
  [v5 setWillBeginMagnifying:0];

  [(UITextInteractionAssistant *)self endSelectionChange];

  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
}

- (void)rangeSelectionMoved:(CGPoint)a3 withTouchPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(UITextInteractionAssistant *)self _legacySelectionView];
  v38 = [v9 rangeView];

  [(UITextInteractionAssistant *)self _updateSelectionWithPoint:0 granularity:0 forceGranularity:v7, v6];
  v10 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [v38 magnifierPoint];
  v12 = v11;
  v14 = v13;
  v15 = [v38 _window];
  v16 = [v15 screen];
  v17 = [v16 coordinateSpace];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v19 = [WeakRetained textInputView];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v38;
  }

  [v17 convertPoint:v20 fromCoordinateSpace:{v12, v14}];
  v22 = v21;
  v24 = v23;

  v25 = [objc_opt_self() mainScreen];
  [v25 bounds];
  v40.x = v22;
  v40.y = v24;
  v26 = CGRectContainsPoint(v41, v40);

  v27 = [v10 target];
  if (v27)
  {

    goto LABEL_10;
  }

  [v38 initialExtentPoint];
  if (sqrt((v28 - v7) * (v28 - v7) + (v29 - v6) * (v29 - v6)) <= 8.0)
  {
LABEL_10:
    v30 = [v10 target];

    if (v30)
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

  if (v26 && [v38 willBeginMagnifying])
  {
    [v38 beginMagnifying];
  }

LABEL_14:
  v31 = [(UITextInteractionAssistant *)self view];
  v32 = [v31 _proxyTextInput];
  v33 = [v32 textInputView];
  [v38 convertPoint:v33 toView:{x, y}];
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

- (CGPoint)constrainedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(UITextInteractionAssistant *)self activeSelection];
  v4 = [v3 selectedRange];
  stashedTextRange = self->_stashedTextRange;
  self->_stashedTextRange = v4;

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

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UITextSelectionInteractionWillBegin" object:0];
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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"UITextSelectionInteractionDidEnd" object:0];
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

- (void)setCursorVisible:(BOOL)a3
{
  v3 = a3;
  [(UITextSelectionView *)self->_selectionView setCaretVisible:?];
  selectionViewManager = self->_selectionViewManager;

  [(UITextSelectionDisplayInteraction *)selectionViewManager setCursorHidden:!v3];
}

- (BOOL)ghostAppearance
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorView];
    v4 = [v3 isGhostEffectEnabled];

    return v4;
  }

  else
  {
    selectionView = self->_selectionView;

    return [(UITextSelectionView *)selectionView ghostAppearance];
  }
}

- (void)setGhostAppearance:(BOOL)a3
{
  v3 = a3;
  [(UITextSelectionView *)self->_selectionView setGhostAppearance:?];
  v5 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _cursorView];
  [v5 setGhostEffectEnabled:v3];
}

- (unint64_t)currentDraggedHandle
{
  if (![(UITextInteractionAssistant *)self hasActiveSelectionInteraction])
  {
    return 0;
  }

  v3 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  v4 = v3;
  if (v3)
  {
    if ([v3 baseIsStart])
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

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UITextInteractionAssistant *)self setInGesture:1];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(_UITextFloatingCursorSession *)self->_floatingCursorSession _invalidate];
    selectionViewManager = self->_selectionViewManager;
    v7 = [(UITextInteractionAssistant *)self view];
    v8 = [v7 textInputView];
    v9 = [(UITextSelectionDisplayInteraction *)selectionViewManager _beginFloatingCursorSessionAtPoint:v8 inContainer:x, y];
    floatingCursorSession = self->_floatingCursorSession;
    self->_floatingCursorSession = v9;
  }

  else
  {
    selectionView = self->_selectionView;
    v12 = [(UITextInteractionAssistant *)self view];
    v13 = [v12 textInputView];
    [(UIView *)selectionView convertPoint:v13 fromView:x, y];
    v15 = v14;
    v17 = v16;

    [(UITextSelectionView *)self->_selectionView beginFloatingCursorAtPoint:v15, v17];
  }

  [(UITextInteractionAssistant *)self startAutoscroll:x, y];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  floatingCursorSession = self->_floatingCursorSession;
  if (floatingCursorSession)
  {
    v9 = [(UITextInteractionAssistant *)self view];
    v10 = [v9 textInputView];
    [(_UITextFloatingCursorSession *)floatingCursorSession updateWithPoint:v10 inContainer:v4 animated:x, y];
  }

  else
  {
    selectionView = self->_selectionView;
    v12 = [(UITextInteractionAssistant *)self view];
    v13 = [v12 textInputView];
    [(UIView *)selectionView convertPoint:v13 fromView:x, y];
    v15 = v14;
    v17 = v16;

    [(UITextSelectionView *)self->_selectionView updateFloatingCursorAtPoint:v4 animated:v15, v17];
  }

  [(UITextInteractionAssistant *)self startAutoscroll:x, y];
}

- (CGPoint)boundedDeltaForTranslation:(CGPoint)a3 cursorLocationBase:(CGPoint)a4
{
  v5 = a3.x + a4.x;
  v6 = a3.y + a4.y;
  if (self->_floatingCursorSession)
  {
    v7 = [(UITextInteractionAssistant *)self view];
    v8 = [v7 textInputView];
    v9 = [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorView];
    v10 = [v9 superview];
    [v8 convertPoint:v10 toView:{v5, v6}];
    v12 = v11;
    v14 = v13;

    [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorPositionForPoint:0 lineSnapping:v12, v14];
    v16 = v15;
    v18 = v17;
    v19 = [(UITextInteractionAssistant *)self view];
    v20 = [v19 textInputView];
    v21 = [(_UITextFloatingCursorSession *)self->_floatingCursorSession floatingCursorView];
    v22 = [v21 superview];
    [v20 convertPoint:v22 fromView:{v16, v18}];
    v24 = v23;
    v26 = v25;

    v27 = v24 - v5;
    v28 = v26 - v6;
  }

  else
  {
    selectionView = self->_selectionView;
    v30 = [(UITextInteractionAssistant *)self view];
    v31 = [v30 textInputView];
    [(UIView *)selectionView convertPoint:v31 fromView:v5, v6];
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

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UITextInteractionAssistant *)self _canAutoscroll])
  {
    v14 = [(UITextInteractionAssistant *)self scrollView];
    v6 = [(UITextInteractionAssistant *)self fieldEditor];
    if (v14 | v6)
    {
      if (v14)
      {
        [v14 _setAutoscrolling:1];
      }

      [(UITextInteractionAssistant *)self setAutoscrolled:0];
      v7 = [(UITextInteractionAssistant *)self view];
      v8 = [v7 _proxyTextInput];
      v9 = [v8 textInputView];
      [v9 convertPoint:0 toView:{x, y}];
      [(UITextInteractionAssistant *)self setAutoscrollUntransformedExtentPoint:?];

      v10 = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
      v11 = v10;
      if (v10)
      {
        [v10 startAutoscroll:{x, y}];
      }

      else
      {
        v12 = [(UITextInteractionAssistant *)self _asBETextInput];

        if (v12)
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
    v7 = [(UITextInteractionAssistant *)self scrollView];
    if (v7)
    {
      [v7 _setAutoscrolling:0];
    }

    v3 = [(UITextInteractionAssistant *)self _asTextAutoscrolling];
    v4 = v3;
    if (v3)
    {
      [v3 cancelAutoscroll];
    }

    else
    {
      v5 = [(UITextInteractionAssistant *)self _asBETextInput];

      if (v5)
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

- (void)updateAutoscroll:(id)a3
{
  v53 = a3;
  if ([(UITextInteractionAssistant *)self _canAutoscroll])
  {
    v4 = [(UITextInteractionAssistant *)self scrollView];
    if (!v4)
    {
LABEL_37:

      goto LABEL_38;
    }

    [(UITextInteractionAssistant *)self setAutoscrolled:1];
    [v4 contentOffset];
    v6 = v5;
    v8 = v7;
    v9 = v5;
    v52 = v7;
    v10 = [v53 scrollContainer];
    v11 = [(UITextInteractionAssistant *)self view];
    v12 = [v11 _proxyTextInput];
    v13 = [v12 textInputView];
    [v10 contentFrameForView:v13];
    v15 = v14;
    v50 = v17;
    v51 = v16;
    v19 = v18;

    [v4 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v53 directions];
    v27 = v26;
    if (v26)
    {
      if (v6 <= v15)
      {
        v27 = v26 & 0xFFFFFFFE;
        goto LABEL_21;
      }
    }

    else
    {
      if ((v26 & 2) == 0)
      {
        if ((v26 & 4) != 0)
        {
          [v4 bounds];
          if (v33 + v34 >= 64.0)
          {
            v28 = v53;
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
          v28 = v53;
          if ((v27 & 8) == 0)
          {
            goto LABEL_22;
          }

          [v4 bounds];
          if (v29 + v30 >= 64.0)
          {
            [v4 bounds];
            if (v8 < v51 + v50 - (v31 - v23))
            {
              v52 = v51 + v50 - (v31 - v23);
LABEL_14:
              v28 = v53;
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
              v39 = [v53 count];
              autoscrollRamp = self->_autoscrollRamp;
              if (v39 < autoscrollRamp)
              {
                v38 = v38 * (autoscrollRamp - [v53 count] + 1);
              }

              [v4 _setContentOffsetAnimationDuration:v38];
              [v4 setContentOffset:1 animated:{v9, v52}];
              v41 = [(UITextInteractionAssistant *)self activeSelection];
              v42 = [(UITextInteractionAssistant *)self view];
              v43 = [v42 textInputView];
              [(UITextInteractionAssistant *)self autoscrollUntransformedExtentPoint];
              [v43 convertPoint:0 fromView:?];
              v45 = v44;
              v47 = v46;

              v48 = [v41 selectedRange];
              LODWORD(v43) = [v48 isEmpty];

              if (v43)
              {
                [v41 setSelectionWithPoint:{v45, v47}];
                [v41 commit];
              }

              else
              {
                v49 = [v41 selectedRange];

                if (v49)
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
        v28 = v53;
LABEL_22:
        if (v27)
        {
          goto LABEL_23;
        }

LABEL_36:
        [(UITextInteractionAssistant *)self cancelAutoscroll];
        goto LABEL_37;
      }

      [v4 bounds];
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

- (BOOL)viewCouldBecomeEditable:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v3 isEditable] & 1) == 0)
  {
    v4 = [v3 becomesEditableWithGestures];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)scheduleReplacementsWithOptions:(unint64_t)a3
{
  v5 = [(UITextInteractionAssistant *)self activeSelection];
  v7 = [v5 selectedRange];

  v6 = [(UITextInteractionAssistant *)self attributedTextInRange:v7];
  if (![(UITextInteractionAssistant *)self handleMultilingualAlternativeWithString:v6 range:v7])
  {
    [(UITextInteractionAssistant *)self scheduleReplacementsForRange:v7 withOptions:a3];
  }
}

- (id)_textReplacementsMenuForElement:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteractionAssistant *)self activeSelection];
  v6 = [v5 selectedRange];

  v7 = [(UITextInteractionAssistant *)self generatorForRange:v6 withOptions:0];
  v8 = [(UITextInteractionAssistant *)self _editMenuAssistant];
  v9 = [v7 replacements];
  v10 = [v8 menuElementsForReplacements:v9];

  v11 = [v4 title];
  v12 = [v4 image];

  v13 = [UIMenu menuWithTitle:v11 image:v12 identifier:0 options:0 children:v10];

  return v13;
}

- (id)updatedTextReplacementsMenuWithMenuElements:(id)a3
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
  v3 = _UIMenuReplacingElementMatchingPredicate(a3, v6, v5);

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

- (void)_updateSelectionInViewIfNeeded:(id)a3 toRange:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 selectedTextRange];
  if (v7)
  {
    v8 = [v6 start];
    v9 = [v7 start];
    if ([v14 comparePosition:v8 toPosition:v9])
    {
    }

    else
    {
      v10 = [v6 end];
      v11 = [v7 end];
      v12 = [v14 comparePosition:v10 toPosition:v11];

      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = [(UITextInteractionAssistant *)self activeSelection];
  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  [v13 setSelectedRange:v6];
  [v13 commit];
  [(UITextInteractionAssistant *)self endSelectionChange];

LABEL_6:
}

- (void)scheduleChineseTransliteration
{
  v3 = [(UITextInteractionAssistant *)self activeSelection];
  v4 = [v3 selectedRange];

  if (!v4)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [v4 isEmpty];
  if (!v6)
  {
    v10 = v4;
LABEL_7:
    v21 = v10;
    v11 = [WeakRetained textInRange:?];
    if ([v11 length])
    {
      if (v6)
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
      v17 = [(UITextReplacementGeneratorForChineseTransliteration *)v16 replacements];
      if ([v17 count])
      {
        v18 = +[UIKeyboardImpl sharedInstance];
        v19 = [v17 firstObject];
        [v18 replaceText:v19];
      }

      else
      {
        [(UITextInteractionAssistant *)self beginSelectionChange];
        v18 = [(UITextInteractionAssistant *)self activeSelection];
        [v18 collapseSelection];
        [v18 commit];
        [(UITextInteractionAssistant *)self endSelectionChange];
        [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
      }
    }

    goto LABEL_16;
  }

  v20 = [(UITextInteractionAssistant *)self rangeForTextReplacement:v4];
  v7 = [v4 end];
  v8 = [v20 end];
  v9 = [WeakRetained comparePosition:v7 toPosition:v8];

  if (v9 != -1)
  {

    v10 = v20;
    goto LABEL_7;
  }

  v11 = v20;
  v21 = v4;
LABEL_16:
}

- (id)rangeForTextReplacement:(id)a3
{
  v4 = a3;
  if ([v4 isEmpty])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 domRange];
      v10 = [v9 enclosingWordRange];
      [UITextRangeImpl wrapDOMRange:v10];
    }

    else
    {
      v9 = [WeakRetained tokenizer];
      v10 = [v4 start];
      [v9 rangeEnclosingPosition:v10 withGranularity:1 inDirection:1];
    }
    v11 = ;

    if (v11)
    {
      v12 = [v11 start];
      v13 = [v11 start];
      v14 = [WeakRetained comparePosition:v12 toPosition:v13];

      if (v14 == -1 || ([v11 end], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(WeakRetained, "comparePosition:toPosition:", v12, v15), v15, v16 == 1))
      {

        v11 = 0;
      }
    }

    v4 = v11;
  }

  return v4;
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained attributedTextInRange:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)showMultilingualDictationReplacementWithRange:(id)a3
{
  v3 = [(UITextInteractionAssistant *)self attributedTextInRange:a3];
  v4 = [UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:v3];

  return v4;
}

- (BOOL)handleMultilingualAlternativeWithString:(id)a3 range:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [UIDictationMultilingualUtilities multilingualAttributesForAttributedString:v6];
    v9 = [v8 objectForKeyedSubscript:@"bestAlternatives"];
    v10 = [v8 objectForKeyedSubscript:@"multilingualResultsForAlternateRecognitions"];
    if (v9)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __113__UITextInteractionAssistant_UITextInteractionAssistant_Internal__handleMultilingualAlternativeWithString_range___block_invoke;
      v16[3] = &unk_1E71257A0;
      v17 = v9;
      v18 = v10;
      v12 = v11;
      v19 = v12;
      [UIDictationUtilities attributedString:v6 withIdentifiersBlock:v16];
      v13 = [v12 count];
      v14 = v13 != 0;
      if (v13)
      {
        [(UITextInteractionAssistant *)self scheduleDictationReplacementsForMultilingualAlternatives:v12 range:v7];
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

- (void)scheduleDictationReplacementsForAlternatives:(id)a3 range:(id)a4
{
  v52[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 alternativeStrings];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(UITextInteractionAssistant *)self view];
      v11 = [v10 textInRange:v7];

      if (![v11 length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v12 = [(UITextInteractionAssistant *)self attributedTextInRange:v7];
      v13 = [(UITextInteractionAssistant *)self handleMultilingualAlternativeWithString:v12 range:v7];
      v14 = [v6 alternativeStrings];
      v15 = [v14 containsObject:0x1EFB75A90];

      if (v15)
      {
        v16 = +[UIKeyboardImpl activeInstance];
        v17 = [v16 inputDelegate];
        [v17 setSelectedTextRange:v7];

        if (+[UIDictationController isRunning])
        {
          v18 = +[UIKeyboardImpl activeInstance];
          [v18 showSelectionCommands];
LABEL_9:
        }
      }

      else
      {
        v19 = [v6 alternativeStrings];
        v20 = [v19 containsObject:0x1EFB75A70];

        if (v20)
        {
          v21 = +[UIKeyboardImpl activeInstance];
          v22 = [v21 inputDelegate];
          [v22 setSelectedTextRange:v7];

          v18 = +[UIKeyboardImpl activeInstance];
          v23 = [v18 inputDelegateManager];
          [v23 deleteBackward];

          goto LABEL_9;
        }

        v24 = [v6 alternativeStrings];
        v25 = [v24 containsObject:0x1EFB75AB0];

        if (v25)
        {
          v26 = +[UIKeyboardImpl activeInstance];
          v27 = [v26 inputDelegate];
          v28 = [v7 end];
          v29 = [v7 end];
        }

        else
        {
          v30 = [v6 alternativeStrings];
          v31 = [v30 containsObject:0x1EFB75AD0];

          if (!v31)
          {
            v52[0] = v11;
            v51[0] = @"originalText";
            v51[1] = @"alternatives";
            v36 = [v6 alternativeStrings];
            v37 = v36;
            v51[2] = @"isMultilingual";
            v38 = MEMORY[0x1E695E110];
            if (v13)
            {
              v38 = MEMORY[0x1E695E118];
            }

            v52[1] = v36;
            v52[2] = v38;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];

            v44 = MEMORY[0x1E69E9820];
            v45 = 3221225472;
            v46 = __118__UITextInteractionAssistant_UITextInteractionAssistant_Internal__scheduleDictationReplacementsForAlternatives_range___block_invoke;
            v47 = &unk_1E71257A0;
            v40 = v39;
            v48 = v40;
            v49 = v12;
            v41 = v6;
            v50 = v41;
            [UIDictationUtilities attributedString:v49 withIdentifiersBlock:&v44];
            if (!v13)
            {
              v42 = [(UITextInteractionAssistant *)self activeSelection:v44];
              [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
              [(UITextInteractionAssistant *)self beginSelectionChange];
              [v42 setSelectedRange:v7];
              [v42 commit];
              [(UITextInteractionAssistant *)self endSelectionChange];
              v43 = [[UITextReplacementGeneratorForDictation alloc] initWithAlternatives:v41 stringToReplace:v11 replacementRange:v7];
              [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v43 forDictation:1 afterDelay:0.2];
            }

            goto LABEL_20;
          }

          v26 = +[UIKeyboardImpl activeInstance];
          v27 = [v26 inputDelegate];
          v28 = [v7 start];
          v29 = [v7 start];
        }

        v32 = v29;
        v33 = [v27 textRangeFromPosition:v28 toPosition:v29];

        v34 = +[UIKeyboardImpl activeInstance];
        v35 = [v34 inputDelegate];
        [v35 setSelectedTextRange:v33];
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

- (void)scheduleDictationReplacementsForMultilingualAlternatives:(id)a3 range:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6 && [v11 count])
  {
    v7 = [(UITextInteractionAssistant *)self view];
    v8 = [v7 textInRange:v6];

    if ([v8 length])
    {
      v9 = [(UITextInteractionAssistant *)self activeSelection];
      [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
      [(UITextInteractionAssistant *)self beginSelectionChange];
      [v9 setSelectedRange:v6];
      [v9 commit];
      [(UITextInteractionAssistant *)self endSelectionChange];
      v10 = [[UITextReplacementGeneratorForMultilingualDictation alloc] initWithMultilingualAlternatives:v11 stringToReplace:v8 replacementRange:v6];
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v10 forDictation:1 afterDelay:0.2];
    }
  }
}

- (id)generatorForRange:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 autocorrectSpellingEnabled];

  if (!v8 || !v6)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v9 = [v6 isEmpty];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (!v9)
  {
    v11 = v6;
LABEL_9:
    v16 = [UITextReplacementGeneratorForCorrections generatorForTextInput:WeakRetained range:v11 options:a4];
    if (v16)
    {
      v17 = [(UITextInteractionAssistant *)self view];
      v18 = [v17 textInRange:v11];

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

      if (-[UITextChecker _doneLoading](textChecker, "_doneLoading") && (([v16 setTextChecker:self->_textChecker], (a4 & 0x27) != 7) || (+[UITextChecker keyboardLanguages](UITextChecker, "keyboardLanguages"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[UITextChecker rangeOfMisspelledWordInString:range:startingAt:wrap:languages:](self->_textChecker, "rangeOfMisspelledWordInString:range:startingAt:wrap:languages:", v18, 0, objc_msgSend(v18, "length"), 0, 0, v22), v22, v23 != 0x7FFFFFFFFFFFFFFFLL)))
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

  v11 = [(UITextInteractionAssistant *)self rangeForTextReplacement:v6];
  if (!v11 || ([v6 end], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "end"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(WeakRetained, "comparePosition:toPosition:", v12, v13), v13, v12, v14 != -1))
  {

    goto LABEL_9;
  }

  v15 = 0;
  v16 = v11;
  v11 = v6;
LABEL_20:

  v6 = v11;
LABEL_21:

  return v15;
}

- (BOOL)scheduleReplacementsForRange:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 isEmpty];
  v8 = [(UITextInteractionAssistant *)self generatorForRange:v6 withOptions:a4];
  v9 = v8;
  if (v8)
  {
    if (([v8 isStringToReplaceMisspelled] & 1) != 0 || objc_msgSend(v9, "forceAutocorrectionGuesses"))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      v11 = [v9 replacementRange];

      if (v7)
      {
        v12 = [v11 end];
        v13 = [v11 end];
        v14 = [WeakRetained textRangeFromPosition:v12 toPosition:v13];

        v11 = v14;
      }

      [(UITextInteractionAssistant *)self _updateSelectionInViewIfNeeded:WeakRetained toRange:v11];

      v15 = 1;
      v6 = v11;
    }

    else
    {
      v15 = 0;
    }

    v16 = dbl_18A682C50[(a4 & 8) == 0];
    if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
    {
      goto LABEL_21;
    }

    v17 = [v9 autocorrectionRecord];
    if (v17 && (v18 = v17, v19 = [v9 forceAutocorrectionGuesses], v18, v19))
    {
      v20 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
      v21 = [v9 autocorrectionRecord];
      v22 = [v20 showChoicesForAutocorrectionCandidate:v21 range:v6 delay:v16];
    }

    else
    {
      v23 = [v9 forceAutocorrectionGuesses];
      v24 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
      v20 = v24;
      if ((v23 & 1) == 0)
      {
        v26 = [v24 showDictationChoicesForTextInRange:v6];

        if (!v26)
        {
LABEL_20:
          v28 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
          [v28 dismissWithoutSelection];

LABEL_21:
          [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showReplacementsWithGenerator:v9 forDictation:0 afterDelay:v16];
          goto LABEL_22;
        }

        v27 = [(UITextInteractionAssistant *)self activeSelection];
        [v27 setSelectedRange:v6];
        [v27 commit];

        goto LABEL_19;
      }

      v21 = [v9 replacements];
      v22 = [v20 showChoicesForTextInRange:v6 withReplacements:v21 delay:v16];
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
  v3 = [(UITextInteractionAssistant *)self activeSelection];
  v4 = [v3 selectedRange];
  v5 = [(UITextInteractionAssistant *)self attributedTextInRange:v4];

  if ([UIDictationMultilingualUtilities hasMultilingualAttributesForAttributedString:v5])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [(UITextInteractionAssistant *)self activeSelection];
    v8 = [v7 selectedRange];
    v9 = [(UITextInteractionAssistant *)self generatorForRange:v8 withOptions:8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 replacements];
    v6 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) replacementText];
          v14 = [v13 length];

          if (v14)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)swallowsDoubleTapWithScale:(double)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (a3 != 0.0)
  {
    if (1.0 / a3 <= a3)
    {
      a3 = 1.0 / a3;
    }

    v7 = a3;
    if (v7 < 0.9)
    {
      return 0;
    }
  }

  [(UITextInteractionAssistant *)self setFirstResponderIfNecessary];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  v8 = [(UITextInteractionAssistant *)self activeSelection];
  [v8 alterSelection:1 granularity:{x, y}];
  [v8 commit];
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

    v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager highlightView];
    v4 = [v3 isHidden];

    if (v4)
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
    v7 = [(UITextSelectionView *)selectionView selection];
    v8 = [v7 selectedRange];
    if (v8)
    {
      v9 = [(UITextSelectionView *)self->_selectionView selection];
      v10 = [v9 selectedRange];
      v11 = [v10 isEmpty];
    }

    else
    {
      v11 = 1;
    }

    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      if ((v11 & 1) == 0)
      {
        v12 = +[UIKeyboardImpl activeInstance];
        v13 = [v12 inputDelegateManager];
        [v13 selectionClipRect];
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

- (void)underlineCorrectedTextInRange:(id)a3 typedString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
  [v8 underlineTextInRange:v7 revertText:v6];
}

- (void)removeTextChoiceUnderlines
{
  v2 = [(UITextInteractionAssistant *)self _textChoicesAssistant];
  [v2 removeAllUnderlines];
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
    v5 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v6 = [v5 rangeView];
    v7 = [v6 isDisplayingVerticalSelection];

    return v7;
  }
}

- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager textRangeAdjustmentRectForEdge:a3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
    v14 = [(UITextInteractionAssistant *)self view];
    v15 = [v14 _proxyTextInput];
    v16 = [v15 textInputView];
    [v16 convertRect:v13 fromView:{v6, v8, v10, v12}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v13 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v14 = [v13 rangeView];
    [v14 textRangeAdjustmentRectForEdge:a3];
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

- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self->_selectionViewManager paddedTextRangeAdjustmentHitRegionForEdge:a3 precision:a4];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v16 = [v15 rangeView];
    [v16 paddedTextRangeAdjustmentHitRegionForEdge:a3 precision:a4];
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

- (id)textRangeAdjustmentViewForEdge:(unint64_t)a3
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v5 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager textRangeAdjustmentViewForEdge:a3];
  }

  else
  {
    v6 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v7 = [v6 rangeView];
    v5 = [v7 textRangeAdjustmentViewForEdge:a3];
  }

  return v5;
}

- (id)_rangeAdjustmentViewContainer
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
  }

  else
  {
    v4 = [(UITextInteractionAssistant *)self _legacySelectionView];
    v3 = [v4 rangeView];
  }

  return v3;
}

- (CGPoint)_rangeAdjustmentPointInTextInputCoordinateSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteractionAssistant *)self _rangeAdjustmentViewContainer];
  v7 = [(UITextInteractionAssistant *)self view];
  v8 = [v7 _proxyTextInput];
  v9 = [v8 textInputView];
  [v6 convertPoint:v9 toView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)textRangeAdjustmentInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  v5 = [(UITextInteractionAssistant *)self _selectionIsActivated:a3];
  if (v5)
  {
    v6 = [(UITextInteractionAssistant *)self activeSelection];
    v7 = [v6 selectedRange];
    v8 = [v7 _isRanged];

    LOBYTE(v5) = v8;
  }

  return v5;
}

- (void)textRangeAdjustmentInteraction:(id)a3 didBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  [(UITextInteractionAssistant *)self setSelectionHighlightMode:0];
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [(UITextInteractionAssistant *)self interactions];
  [v12 _callDelegateWillMoveTextRangeExtentAtPoint:{v9, v11}];

  [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant hideSelectionCommands];
  [(UITextInteractionAssistant *)self willBeginSelectionInteraction];
  [(UITextInteractionAssistant *)self beginSelectionChange];
  v13 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  v14 = [v13 baseIsStart];

  v16 = [(UITextInteractionAssistant *)self activeSelection];
  if (_os_feature_enabled_impl() && [(UITextInteractionAssistant *)self containerWantsVisualBIDISelections])
  {
    [v16 updateBaseAndInitialExtent];
  }

  else if (v14)
  {
    [v16 setRangedSelectionBaseToCurrentSelectionStart];
    [v16 setRangedSelectionInitialExtentToCurrentSelectionEnd];
  }

  else
  {
    [v16 setRangedSelectionBaseToCurrentSelectionEnd];
    [v16 setRangedSelectionInitialExtentToCurrentSelectionStart];
  }

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  [(UITextInteractionAssistant *)self setNeedsSelectionDisplayUpdate];
  v15 = [(UITextInteractionAssistant *)self _selectionViewManager];
  [v15 _didBeginRangeAdjustmentInteraction:v7];
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
  v9 = [(UITextInteractionAssistant *)self activeSelection];
  v10 = [v9 selectedRange];
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:v10 textRange:v6, v8];
  v12 = v11;
  v14 = v13;

  rangeAdjustmentInteraction = self->_rangeAdjustmentInteraction;

  [(UITextRangeAdjustmentInteraction *)rangeAdjustmentInteraction setModelPosition:v12, v14];
}

- (void)_textRangeAdjustmentForPoint:(CGPoint)a3 withTouchPoint:(CGPoint)a4 selectionChangeReason:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:a3.x, a3.y];
  v10 = v9;
  v12 = v11;
  [(UITextInteractionAssistant *)self _rangeAdjustmentPointInTextInputCoordinateSpace:x, y];
  v14 = v13;
  v16 = v15;
  v17 = [(UITextInteractionAssistant *)self activeSelection];
  v18 = [(UITextInteractionAssistant *)self rangeAdjustmentInteraction];
  [v17 setRangedSelectionExtentPoint:objc_msgSend(v18 baseIsStart:{"baseIsStart"), v10, v12}];

  [(UITextInteractionAssistant *)self notifyKeyboardSelectionChanged];
  if (a5)
  {
    if (a5 == 1)
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

- (void)textRangeAdjustmentInteraction:(id)a3 didEndAtPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = [(UITextInteractionAssistant *)self activeSelection];
  v7 = [v6 willSelectionChange];

  if (v7)
  {
    if ([(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
    {
      [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
    }

    v8 = [(UITextInteractionAssistant *)self activeSelection];
    [v8 commit];
  }

  else if (![(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant _editMenuIsVisibleOrDismissedRecently]&& [(UITextInteractionAssistant(UITextInteractionAssistant_Internal) *)self canShowSelectionCommands])
  {
    [(_UITextInteractionEditMenuAssistant *)self->_editMenuAssistant showSelectionCommands];
  }

  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];
  [(UITextInteractionAssistant *)self cancelAutoscroll];
  v9 = [(UITextInteractionAssistant *)self _selectionViewManager];
  [v9 _didEndRangeAdjustmentInteraction:v5];
}

- (void)textRangeAdjustmentInteractionWasCancelled:(id)a3
{
  [(UITextInteractionAssistant *)self endSelectionChange];
  [(UITextInteractionAssistant *)self didEndSelectionInteraction];

  [(UITextInteractionAssistant *)self cancelAutoscroll];
}

- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)a3
{
  v3 = [(UITextInteractionAssistant *)self _caretView];
  [v3 frame];
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

- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)a3
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v4 = [(UITextSelectionDisplayInteraction *)self->_selectionViewManager _rangeAdjustmentViewContainer];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v4 = [WeakRetained textInputView];
  }

  return v4;
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

- (id)_selectionViewManager:(id)a3 obtainBlinkSuppressionAssertionForReason:(id)a4
{
  v5 = a4;
  v6 = [(UITextInteractionAssistant *)self _assertionController];
  v7 = [v6 nonBlinkingAssertionWithReason:v5];

  return v7;
}

- (id)_selectionViewManager:(id)a3 obtainGhostCursorAssertionForReason:(id)a4
{
  v5 = a4;
  v6 = [(UITextInteractionAssistant *)self _assertionController];
  v7 = [v6 nonBlinkingGhostAssertionWithReason:v5];

  return v7;
}

- (CGPoint)_selectionViewManager:(id)a3 convertPointToRenderSpace:(CGPoint)a4 textPosition:(id)a5
{
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:a5 textPosition:a4.x, a4.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 textPosition:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_respondsToConvertPointToTextPositionRenderSpace)
  {
    v7 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained _convertPointToRenderSpace:v7 textPosition:{x, y}];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_selectionViewManager:(id)a3 convertPointToRenderSpace:(CGPoint)a4 textRange:(id)a5
{
  [(UITextInteractionAssistant *)self convertPointToRenderSpace:a5 textRange:a4.x, a4.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)convertPointToRenderSpace:(CGPoint)a3 textRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_respondsToConvertPointToRenderSpace)
  {
    v7 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained _convertPointToRenderSpace:v7 textRange:{x, y}];
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