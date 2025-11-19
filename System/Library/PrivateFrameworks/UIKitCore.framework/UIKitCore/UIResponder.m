@interface UIResponder
+ (BOOL)_callBecomeFirstResponder:(id)a3 withIntent:(unint64_t)a4;
+ (BOOL)_callResignFirstResponder:(id)a3 withIntent:(unint64_t)a4;
+ (BOOL)_isWritingToolsAvailable;
+ (id)_globalFirstResponder;
+ (id)objectWithRestorationIdentifierPath:(id)a3;
+ (unint64_t)_currentChangeIntent;
+ (void)_cleanupAllStateRestorationTables;
+ (void)_cleanupStateRestorationObjectIdentifierTrackingTables;
+ (void)_setRestoredIdentifierPathForObject:(id)a3 identifierPath:(id)a4;
+ (void)_updateStateRestorationIdentifierMap;
+ (void)clearTextInputContextIdentifier:(NSString *)identifier;
- (BOOL)_alwaysRequireInlineCandidateView;
- (BOOL)_canBecomeFirstResponder;
- (BOOL)_canChangeFirstResponder:(id)a3 toResponder:(id)a4;
- (BOOL)_commonUIInvocationAnimationNeeded;
- (BOOL)_conformsToProtocolBETextInput;
- (BOOL)_conformsToProtocolUIAsyncTextInputClient;
- (BOOL)_conformsToProtocolUIKeyInput;
- (BOOL)_containedInAbsoluteResponderChain;
- (BOOL)_containsResponder:(id)a3;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)_disallowsPresentationOfKeyboardShortcutHUD;
- (BOOL)_enableAutomaticKeyboardPressDone;
- (BOOL)_finishResignFirstResponderFromBecomeFirstResponder:(BOOL)a3;
- (BOOL)_handleActivityItemsConfigurationCanPerformAction:(SEL)a3 sender:(id)a4;
- (BOOL)_handleActivityItemsConfigurationDoesNotHandleSelector:(SEL)a3;
- (BOOL)_handleActivityItemsConfigurationShare:(id)a3;
- (BOOL)_handleActivityItemsConfigurationShare:(id)a3 activityItemsConfiguration:(id)a4;
- (BOOL)_hasMarkedText;
- (BOOL)_hasMarkedTextOrRangedSelection;
- (BOOL)_isDisplayingWritingToolsSessionInUCB;
- (BOOL)_isEditableForWritingTools;
- (BOOL)_isEmptySelection;
- (BOOL)_isHardwareKeyboardBehaviorEnabled;
- (BOOL)_isPinningInputViews;
- (BOOL)_isTransitioningFromView:(id)a3;
- (BOOL)_isWritingToolsActive;
- (BOOL)_nextResponderChainContainsResponder:(id)a3;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_range:(id)a3 containsRange:(id)a4;
- (BOOL)_range:(id)a3 intersectsRange:(id)a4;
- (BOOL)_range:(id)a3 isEqualToRange:(id)a4;
- (BOOL)_requiresKeyboardResetOnReload;
- (BOOL)_requiresKeyboardWhenFirstResponder;
- (BOOL)_resignIfContainsFirstResponder;
- (BOOL)_selectionAtDocumentEnd;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)_selectionAtWordStart;
- (BOOL)_shouldDisplayWritingToolsCalloutBarItem;
- (BOOL)_shouldDisplayWritingToolsCandidateOptions;
- (BOOL)_shouldEndWritingToolsOnResign;
- (BOOL)_shouldEvaluateForWritingToolsInCandidateBarAsynchronously;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3;
- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)a3 forText:(id)a4 checkAutocorrection:(BOOL)a5;
- (BOOL)_shouldShowWritingToolsInCandidateBar;
- (BOOL)_shouldSkipKeyboardShortcutLeaf:(id)a3 forMovement:(int64_t)a4;
- (BOOL)_stringContainsMinimumNumberOfWords:(unint64_t)a3 minimumNumberOfWords:;
- (BOOL)_supportsImagePaste;
- (BOOL)_supportsWritingTools;
- (BOOL)_usesAsynchronousProtocol;
- (BOOL)_writingToolsWantsKeyboardSuppression;
- (BOOL)becomeFirstResponder;
- (BOOL)canPasteItemProviders:(id)a3;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isEditable;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldReloadInputViews;
- (CGRect)_caretRect;
- (CGRect)_lastRectForRange:(id)a3;
- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)a3;
- (CGRect)_responderExternalTouchRectForWindow:(id)a3;
- (CGRect)_responderSelectionRectForWindow:(id)a3;
- (CGRect)_selectionClipRect;
- (CGRect)_selectionRectForWritingTools;
- (NSString)textInputContextIdentifier;
- (NSUndoManager)undoManager;
- (UIInputViewController)inputAccessoryViewController;
- (UIInputViewController)inputViewController;
- (UIPredictiveViewController)_smartReplyFeedbackInputDashboardViewController;
- (UITextInputAssistantItem)inputAssistantItem;
- (UITextInputMode)textInputMode;
- (UIView)inputAccessoryView;
- (UIView)inputView;
- (_NSRange)_nsrangeForTextRange:(id)a3;
- (_NSRange)_selectedNSRange;
- (_NSRange)_selectedRangeWithinMarkedText;
- (_WORD)_storedActivityItemsConfiguration;
- (id)__textInteractionFromAssistant;
- (id)__wt_writingToolsCoordinator;
- (id)_additionalTextInputLocales;
- (id)_assistantBarButtonItemForWritingToolsWithStyle:(int64_t)a3;
- (id)_captureOverrideState;
- (id)_clampedpositionFromPosition:(id)a3 offset:(int)a4;
- (id)_currentOverrideClient;
- (id)_currentOverrideHost;
- (id)_effectiveActivityItemsConfigurationAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 sender:(id)a5;
- (id)_effectiveActivityItemsConfigurationForSender:(id)a3;
- (id)_findBoundaryPositionClosestToPosition:(id)a3 withGranularity:(int64_t)a4;
- (id)_findDocumentBoundaryFromPosition:(id)a3;
- (id)_findPleasingWordBoundaryFromPosition:(id)a3;
- (id)_firstNonnullActivityItemsConfigurationInResponderChainForLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 skipPresentingViewControllers:(BOOL)a5 sender:(id)a6 target:(id *)a7;
- (id)_firstResponder;
- (id)_fontForCaretSelection;
- (id)_fullRange;
- (id)_fullText;
- (id)_intersectionOfRange:(id)a3 andRange:(id)a4;
- (id)_keyboardResponder;
- (id)_keyboardShortcutInvocationForKeyboardEvent:(id)a3;
- (id)_moveDown:(BOOL)a3 withHistory:(id)a4;
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveUp:(BOOL)a3 withHistory:(id)a4;
- (id)_nextResponderOverride;
- (id)_nextResponderThatCanBecomeFirstResponder;
- (id)_normalizedStringForRangeComparison:(id)a3;
- (id)_overrideHost;
- (id)_positionAtStartOfWords:(unint64_t)a3 beforePosition:(id)a4;
- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6;
- (id)_positionFromPosition:(id)a3 pastTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (id)_positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)_primaryContentResponder;
- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)a3;
- (id)_rangeOfSmartSelectionIncludingRange:(id)a3;
- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4;
- (id)_rangeOfTextUnit:(int64_t)a3 enclosingPosition:(id)a4;
- (id)_rangeSpanningTextUnit:(int64_t)a3 andPosition:(id)a4;
- (id)_responderForEditing;
- (id)_responderSelectionContainerViewForResponder:(id)a3;
- (id)_responderSelectionImage;
- (id)_responderThatRequestedWritingTools;
- (id)_responderWindow;
- (id)_restorationIdentifierPath;
- (id)_selectableText;
- (id)_selectionDisplayInteraction;
- (id)_setHistory:(id)a3 withExtending:(BOOL)a4 withAnchor:(int)a5 withAffinityDownstream:(BOOL)a6;
- (id)_setSelectionRangeWithHistory:(id)a3;
- (id)_showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7;
- (id)_showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6;
- (id)_showServiceForType:(int64_t)a3 withContext:(id)a4;
- (id)_targetCanPerformBlock:(id)a3;
- (id)_textColorForCaretSelection;
- (id)_textInputForWritingTools;
- (id)_textRangeFromDirectionalRange:(id)a3;
- (id)_textRangeFromNSRange:(_NSRange)a3;
- (id)_textServicesResponderProxy;
- (id)_textSuggestionsForWritingTools;
- (id)_trailingPredictiveCandidateForWritingTools;
- (id)_ui_findNavigatorResponder;
- (id)_underlineRectsByDocumentLineForSelectionRange:(id)a3;
- (id)_userActivity;
- (id)_viewControllerForWritingToolsSource;
- (id)_window;
- (id)_wordContainingCaretSelection;
- (id)_writingToolsDelegate;
- (id)_writingToolsViewController;
- (id)firstResponder;
- (id)inputDashboardViewController;
- (id)nextFirstResponder;
- (id)pasteConfiguration;
- (id)recentsAccessoryView;
- (id)textInputSuggestionDelegate;
- (id)textInputView;
- (int)_indexForTextPosition:(id)a3;
- (int64_t)__wt_writingToolsBehavior;
- (int64_t)_availableTextServices;
- (int64_t)_dataOwnerForCopy;
- (int64_t)_dataOwnerForPaste;
- (int64_t)_dragDataOwner;
- (int64_t)_dropDataOwner;
- (int64_t)_opposingDirectionFromDirection:(int64_t)a3;
- (int64_t)_selectionAffinity;
- (int64_t)_textInputSource;
- (uint64_t)_shouldDisplayWritingToolsForAttributedString:(uint64_t)a1;
- (unsigned)_characterInRelationToCaretSelection:(int)a3;
- (unsigned)_characterInRelationToPosition:(id)a3 amount:(int)a4;
- (unsigned)_characterInRelationToRangedSelection:(int)a3;
- (void)__createInteractionAssistantIfNecessaryWithMode:(int64_t)a3;
- (void)__prepareInteractionAssistantIfNecessary;
- (void)__tearDownInteractionAssistantIfNecessary;
- (void)_addShortcut:(id)a3;
- (void)_asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler:(id)a3;
- (void)_beginPinningInputViews;
- (void)_checkIsText:(BOOL *)a3 isSecure:(BOOL *)a4 isEditable:(BOOL *)a5 isFormatted:(BOOL *)a6;
- (void)_clearOverrideHost;
- (void)_clearOverrideNextResponder;
- (void)_clearRestorableResponderStatus;
- (void)_completeForwardingTouches:(id)a3 phase:(int64_t)a4 event:(id)a5 index:(unint64_t)a6;
- (void)_define:(id)a3;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_deleteByWord;
- (void)_deleteForwardAndNotify:(BOOL)a3;
- (void)_deleteForwardByWord;
- (void)_deleteTextRange:(id)a3;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_endPinningInputViews;
- (void)_endWritingTools;
- (void)_endWritingToolsIfNecessaryForResignFirstResponder;
- (void)_enumerateKeyboardShortcutsInChainWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)a3;
- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)a3;
- (void)_extendCurrentSelection:(int)a3;
- (void)_handleGameControllerEvent:(id)a3;
- (void)_handleKeyEvent:(__GSEvent *)a3;
- (void)_handleKeyUIEvent:(id)a3;
- (void)_insertItemFromProvider:(id)a3 completionHandler:(id)a4;
- (void)_lookup:(id)a3;
- (void)_moveCurrentSelection:(int)a3;
- (void)_notifyFocusEngine;
- (void)_overrideNextResponderWithResponder:(id)a3 forType:(int64_t)a4;
- (void)_playInvocationAnimation;
- (void)_preserveResponderOverridesWhilePerforming:(id)a3;
- (void)_rebuildStateRestorationIdentifierPath;
- (void)_reloadInputViewsFromFirstResponder:(BOOL)a3;
- (void)_replaceCurrentWordWithText:(id)a3;
- (void)_replaceDocumentWithText:(id)a3;
- (void)_restoreOverrideState:(id)a3;
- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)_selectAll;
- (void)_selectionDidUpdate;
- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_setCaretSelectionAtEndOfSelection;
- (void)_setCommonUIInvocationAnimationNeeded:(BOOL)a3;
- (void)_setDataOwnerForCopy:(int64_t)a3;
- (void)_setDataOwnerForPaste:(int64_t)a3;
- (void)_setDragDataOwner:(int64_t)a3;
- (void)_setDropDataOwner:(int64_t)a3;
- (void)_setFirstResponder:(id)a3;
- (void)_setGestureRecognizers;
- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
- (void)_setSelectionDisplayInteraction:(id)a3;
- (void)_setSelectionToPosition:(id)a3;
- (void)_setShouldEndWritingToolsOnResign:(BOOL)a3;
- (void)_setSmartReplyFeedbackInputDashboardViewController:(id)a3;
- (void)_setStoredActivityItemsConfiguration:(_WORD *)a1;
- (void)_setSuppressSoftwareKeyboard:(BOOL)a3;
- (void)_setSuppressWritingToolsForRemoteKeyboard:(BOOL)a3;
- (void)_setWritingToolsInputDashboardViewController:(id)a3;
- (void)_setWritingToolsViewController:(id)a3;
- (void)_setWritingToolsWantsKeyboardSuppression:(BOOL)a3 suppressAssistant:(BOOL)a4;
- (void)_share:(id)a3;
- (void)_startProofreadingFromCandidateBar;
- (void)_startRewritingFromCandidateBar;
- (void)_startWritingToolsWithTool:(id)a3 prompt:(id)a4 entryPoint:(id)a5 inputContextHistory:(id)a6 sender:(id)a7;
- (void)_translate:(id)a3;
- (void)_transpose;
- (void)_unmarkText;
- (void)_updateSelectedRects:(id)a3 byTrimmingWhitespaceInRange:(id)a4 inDocument:(id)a5;
- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
- (void)_webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler:(id)a3;
- (void)_windowBecameKey;
- (void)_writingToolsDidEnd;
- (void)captureTextFromCamera:(id)sender;
- (void)dealloc;
- (void)doesNotRecognizeSelector:(SEL)a3;
- (void)pasteItemProviders:(id)a3;
- (void)promptBackgroundViewDidUpdateConfiguration:(id)a3;
- (void)reloadInputViews;
- (void)reloadInputViewsWithoutReset;
- (void)setPasteConfiguration:(id)a3;
- (void)setRestorationIdentifier:(id)a3;
- (void)setUserActivity:(NSUserActivity *)userActivity;
- (void)set_textInputSource:(int64_t)a3;
- (void)showWritingTools:(id)a3;
- (void)validateCommand:(UICommand *)command;
@end

@implementation UIResponder

- (BOOL)resignFirstResponder
{
  [(UIResponder *)self _clearBecomeFirstResponderWhenCapable];
  v3 = [(UIResponder *)self _firstResponder];
  if (v3 == self && [(UIResponder *)self canResignFirstResponder])
  {
    [(UIResponder *)self _endWritingToolsIfNecessaryForResignFirstResponder];
    v4 = [(UIResponder *)self _responderWindow];
    if ([v4 _isSettingFirstResponder])
    {
      v5 = [(UIResponder *)self _finishResignFirstResponderFromBecomeFirstResponder:1];
    }

    else
    {
      [v4 _setIsSettingFirstResponder:1];
      v7 = [(UIResponder *)self nextFirstResponder];
      if ([v4 _wantsResponderWithoutKeyboard] && -[UIResponder _requiresKeyboardWhenFirstResponder](v7, "_requiresKeyboardWhenFirstResponder"))
      {
        do
        {
          v8 = [(UIResponder *)v7 nextFirstResponder];

          v7 = v8;
        }

        while ([(UIResponder *)v8 _requiresKeyboardWhenFirstResponder]);
      }

      else
      {
        v8 = v7;
      }

      v9 = [(UIResponder *)self _responderWindow];
      v10 = [v9 windowScene];
      v11 = [v10 keyboardSceneDelegate];

      if (v11)
      {
        [v11 setKeyWindowCandidate:0];
      }

      if (v8 == self || ![(UIResponder *)v8 becomeFirstResponder]|| [(UIResponder *)self isFirstResponder])
      {
        [(UIResponder *)self _finishResignFirstResponder];
        [UIApp _updateSerializableKeyCommandsForResponder:0];
      }

      [(UIResponder *)self _notifyFocusEngine];
      [v4 _setIsSettingFirstResponder:0];

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_responderWindow
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _responderWindow];

  return v3;
}

- (id)_nextResponderOverride
{
  if (*&self->_responderFlags)
  {
    v3 = objc_getAssociatedObject(self, &_MergedGlobals_1256);
    v2 = [v3 target];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_clearOverrideNextResponder
{
  v3 = objc_autoreleasePoolPush();
  responderFlags = self->_responderFlags;
  if ((responderFlags & 2) != 0)
  {
    objc_setAssociatedObject(self, &unk_1ED4A0029, 0, 1);
    responderFlags = *&self->_responderFlags & 0xFFFD;
    *&self->_responderFlags = responderFlags;
  }

  if (responderFlags)
  {
    objc_setAssociatedObject(self, &_MergedGlobals_1256, 0, 1);
    *&self->_responderFlags &= ~1u;
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_clearRestorableResponderStatus
{
  v3 = objc_getAssociatedObject(self, &_UIRestorableResponderKey);
  if ([v3 BOOLValue])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__UIResponder__clearRestorableResponderStatus__block_invoke;
    v4[3] = &unk_1E7104050;
    v4[4] = self;
    [UIKeyboardSceneDelegate performOnControllers:v4];
    objc_setAssociatedObject(self, &_UIRestorableResponderKey, 0, 1);
  }
}

- (void)dealloc
{
  v3 = [(UIResponder *)self _userActivity];
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    [UIApp _removeResponder:self forUserActivity:v3];
    objc_autoreleasePoolPop(v4);
  }

  [(UIResponder *)self _clearRestorableResponderStatus];

  v5.receiver = self;
  v5.super_class = UIResponder;
  [(UIResponder *)&v5 dealloc];
}

- (id)_userActivity
{
  if ((*&self->_responderFlags & 8) != 0)
  {
    v3 = objc_getAssociatedObject(self, &kResponderUserActivityKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.complete", "", &v31, 2u);
  }

  v4 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.becomeFirstResponder", "", &v31, 2u);
  }

  v5 = [(UIResponder *)self _responderWindow];
  v6 = [v5 windowScene];
  v7 = [v6 keyboardSceneDelegate];

  v8 = [v5 _isSettingFirstResponder];
  if ([v5 _suppressFirstResponderWhenUserInteractionDisabled] && (objc_msgSend(v5, "isUserInteractionEnabled") & 1) == 0)
  {
    [v5 _setLastFirstResponder:self];
    v13 = 0;
    goto LABEL_51;
  }

  v9 = self;
  v10 = [(UIResponder *)v9 _firstResponder];
  v11 = [(UIResponder *)v9 firstResponder];
  v12 = v11;
  v13 = 1;
  if (v10 != v9 && v11 != v9)
  {
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
    if ((v8 & 1) == 0)
    {
      [v5 _setIsSettingFirstResponder:1];
    }

    v16 = [v7 localAuthenticationObserver];
    [v16 willTryToBecomeFirstResponder:v9];
    if (v15 && ![v15 _canChangeFirstResponder:v15 toResponder:v9] || !-[UIResponder _canBecomeFirstResponder](v9, "_canBecomeFirstResponder"))
    {
      goto LABEL_44;
    }

    [v7 _beginIgnoringReloadInputViews];
    if (v8)
    {
      [v15 _finishResignFirstResponder];
    }

    if (v5 && v15 && ([v15 _window], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v5) && (objc_msgSend(v15, "_window"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_isTextEffectsWindow"), v18, (v19 & 1) == 0))
    {
      v23 = *(__UILogGetCategoryCachedImpl("View", &becomeFirstResponder___s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v25 = objc_opt_class();
        v31 = 138412290;
        v32 = v25;
        v26 = v25;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "First responder warning: '<%@>' rejected resignFirstResponder when being removed from hierarchy", &v31, 0xCu);
      }

      [(UIResponder *)v9 _setFirstResponder:0];

      [(UIResponder *)v9 _writingToolsResponderBecomingFirstResponder:v9];
      v15 = 0;
      v20 = 1;
    }

    else
    {
      [(UIResponder *)v9 _writingToolsResponderBecomingFirstResponder:v9];
      v20 = v15 == 0;
      if (v15)
      {
        v21 = v8;
      }

      else
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        v20 = 0;
        v22 = 0;
        if (![v15 resignFirstResponder])
        {
LABEL_40:
          v28 = [v7 _endIgnoringReloadInputViews];
          [(UIResponder *)v9 _setSuppressWritingToolsForRemoteKeyboard:0];
          if (v22)
          {
            v13 = 1;
            [(UIResponder *)v9 _reloadInputViewsFromFirstResponder:1];
            [UIApp _updateSerializableKeyCommandsForResponder:v9];
LABEL_45:
            [v16 didTryToBecomeFirstResponder:v9];
            if ((v8 & 1) == 0)
            {
              [v5 _setIsSettingFirstResponder:0];
            }

            goto LABEL_48;
          }

          if (v28)
          {
            [v7 forceReloadInputViews];
          }

LABEL_44:
          v13 = 0;
          goto LABEL_45;
        }
      }
    }

    if ([(UIResponder *)v9 _containedInAbsoluteResponderChain])
    {
      [(UIResponder *)v9 _becomeFirstResponder];
      [(UIResponder *)v9 _notifyFocusEngine];
      v22 = 1;
    }

    else
    {
      v27 = [(UIResponder *)v9 _becomeFirstResponderWhenPossible];
      if ((v27 | v20))
      {
        v22 = v27;
      }

      else
      {
        if (![(UIResponder *)v9 _disableAutomaticKeyboardBehavior])
        {
          [v7 _reloadInputViewsForResponder:0];
        }

        v22 = 0;
      }
    }

    goto LABEL_40;
  }

LABEL_48:
  v29 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v29))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.becomeFirstResponder", "", &v31, 2u);
  }

LABEL_51:
  return v13;
}

+ (void)_cleanupAllStateRestorationTables
{
  [a1 _cleanupStateRestorationObjectIdentifierTrackingTables];

  qword_1ED4A07D0 = 0;
  qword_1ED4A07B0 = 0;
}

+ (void)_cleanupStateRestorationObjectIdentifierTrackingTables
{
  qword_1ED4A07C8 = 0;

  [a1 _stopDeferredTrackingObjectsWithIdentifiers];
}

- (id)firstResponder
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 firstResponder];

  return v3;
}

- (BOOL)_canBecomeFirstResponder
{
  v2 = [(UIResponder *)self canBecomeFirstResponder];
  if (v2)
  {
    LOBYTE(v2) = [UIApp _disableBecomeFirstResponder] ^ 1;
  }

  return v2;
}

- (id)_firstResponder
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _firstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = self;
  v3 = [(UIResponder *)self _firstResponder];
  LOBYTE(v2) = v3 == v2;

  return v2;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _disableAutomaticKeyboardBehavior];

  return v3;
}

- (BOOL)_containedInAbsoluteResponderChain
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _containedInAbsoluteResponderChain];

  return v3;
}

- (id)_selectableText
{
  v2 = self;
  v3 = [(UIResponder *)self _textSelectingContainer];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)_writingToolsViewController
{
  v2 = [(UIResponder *)self _firstResponder];
  v3 = objc_getAssociatedObject(v2, &kWritingToolsViewControllerForFirstResponderKey);

  return v3;
}

- (NSUndoManager)undoManager
{
  v3 = [(UIResponder *)self nextResponder];
  v4 = v3;
  v5 = 0;
  if (v3 && v3 != self)
  {
    v5 = [(UIResponder *)v3 undoManager];
  }

  return v5;
}

- (BOOL)_hasMarkedText
{
  v2 = [(UIResponder *)self _selectableText];
  if ([v2 _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    v3 = [v2 hasMarkedText];
  }

  else
  {
    v4 = [v2 markedTextRange];
    v3 = v4 != 0;
  }

  return v3;
}

- (BOOL)_usesAsynchronousProtocol
{
  v2 = [(UIResponder *)self _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v3 = v4;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v2 conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v2 conformsToProtocolCached:&unk_1F016C810];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = 1;
LABEL_11:

  return v3;
}

- (UITextInputMode)textInputMode
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    goto LABEL_13;
  }

  v3 = [(UIResponder *)self textInputContextIdentifier];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
    v5 = [@"ID_" stringByAppendingString:v3];
    v6 = [v5 stringByAppendingString:@"_SETTIME"];
    v7 = [v4 objectForKey:v5];
    if (!v7)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = +[UIKeyboardInputModeController sharedInputModeController];
      v10 = [v9 inputModeLastUsedForLanguage:v8];

      v11 = 0;
      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_9:

      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
      v8 = 0;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
LABEL_10:
      v8 = 0;
      v11 = 0;
    }

LABEL_11:
  }

LABEL_13:
  v3 = [(UIResponder *)self nextResponder];
  v10 = [v3 textInputMode];
LABEL_14:

  return v10;
}

- (NSString)textInputContextIdentifier
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 textInputContextIdentifier];

  return v3;
}

- (BOOL)_resignIfContainsFirstResponder
{
  v3 = [(UIResponder *)self _responderWindow];
  v4 = [v3 _firstResponder];

  if (!v4 || v4 == self)
  {
    v5 = v4;
    if (v4 != self)
    {
LABEL_12:
      LOBYTE(v8) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    do
    {
      if (![(UIResponder *)v4 _canResignIfContainsFirstResponder])
      {
        LOBYTE(v8) = 0;
        v5 = v4;
        goto LABEL_14;
      }

      v5 = [(UIResponder *)v4 nextResponder];

      if (!v5)
      {
        break;
      }

      v4 = v5;
    }

    while (v5 != self);
    if (v5 != self)
    {
      goto LABEL_12;
    }
  }

  v6 = [(UIResponder *)self _responderWindow];
  v7 = [v6 _firstResponder];

  [v7 _setShouldEndWritingToolsOnResign:0];
  v8 = [v7 resignFirstResponder];
  if (v8 && [v7 _canBecomeFirstResponderWhenPossible])
  {
    [v7 _becomeFirstResponderWhenPossible];
  }

  [v7 _setShouldEndWritingToolsOnResign:1];

LABEL_14:
  return v8;
}

+ (BOOL)_isWritingToolsAvailable
{
  WTWritingToolsViewControllerClass = getWTWritingToolsViewControllerClass();
  if (WTWritingToolsViewControllerClass)
  {

    LOBYTE(WTWritingToolsViewControllerClass) = [WTWritingToolsViewControllerClass isAvailable];
  }

  return WTWritingToolsViewControllerClass;
}

- (CGRect)_selectionClipRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_notifyFocusEngine
{
  v4 = [(UIResponder *)self _responderWindow];
  v3 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v4];
  [v3 _firstResponderDidUpdateFromResponder:self];
}

+ (unint64_t)_currentChangeIntent
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:a1 file:@"UIResponder.m" lineNumber:887 description:@"Call must be made on main thread"];
  }

  return __changeIntent;
}

- (BOOL)shouldReloadInputViews
{
  v41 = *MEMORY[0x1E69E9840];
  if (![(UIResponder *)self _disableAutomaticKeyboardBehavior]&& [(UIResponder *)self isFirstResponder])
  {
    v3 = [(UIResponder *)self _responderWindow];
    if ([v3 _isApplicationKeyWindow])
    {
      goto LABEL_18;
    }

    v4 = +[UIWindow _applicationKeyWindow];

    if (v3 == v4)
    {
      goto LABEL_18;
    }

    if ([v3 isKeyWindow])
    {
      v5 = [(UIResponder *)self inputAccessoryView];
      if (v5)
      {
        v6 = v5;
        v7 = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];

        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v9 = [(UIResponder *)self inputAccessoryViewController];
        if (v9)
        {
          v10 = v9;
          v11 = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];

          if (!v11)
          {
            goto LABEL_18;
          }
        }
      }
    }

    v12 = [(UIResponder *)self _responderWindow];
    v13 = [v12 windowScene];
    v14 = [v13 keyboardSceneDelegate];
    v15 = [v14 keyWindowCandidate];

    if (v3 != v15)
    {
      v16 = [(UIResponder *)self _window];
      v17 = [v16 windowScene];
      v18 = [v17 keyboardSceneDelegate];
      v19 = [v18 responder];

      if ((!v19 || ([v19 _responderWindow], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "screen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "screen"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v20, v21 == v22)) && ((-[UIResponder _window](self, "_window"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "screen"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "_userInterfaceIdiom"), v24, v23, v19) || v25 != 3))
      {
        v27 = +[UIKeyboardImpl activeInstance];
        v28 = [v27 _window];

        if (!v28 || [v28 _isTextEffectsWindow]) && (-[UIResponder _window](self, "_window"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "windowScene"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "keyboardSceneDelegate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "automaticAppearanceEnabled"), v31, v30, v29, (v32))
        {
          v8 = 0;
        }

        else
        {
          v33 = *(__UILogGetCategoryCachedImpl("View", &shouldReloadInputViews___s_category) + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
            v35 = [(UIResponder *)self _window];
            v36 = [UIApp keyWindow];
            v37 = 138412546;
            v38 = v35;
            v39 = 2112;
            v40 = v36;
            _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "First responder issue detected: non-key window attempting reload - allowing due to manual keyboard (first responder window is %@, key window is %@)", &v37, 0x16u);
          }

          v8 = 1;
        }
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_19;
    }

LABEL_18:
    v8 = 1;
LABEL_19:

    return v8;
  }

  return 0;
}

- (BOOL)_requiresKeyboardWhenFirstResponder
{
  v3 = [(UIResponder *)self _keyboardResponder];
  v4 = [v3 _conformsToProtocolUIKeyInput] && ((-[UIResponder _conformsToProtocolUIAsyncTextInputClient](self, "_conformsToProtocolUIAsyncTextInputClient") || -[UIResponder _conformsToProtocolBETextInput](self, "_conformsToProtocolBETextInput")) && +[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode") || (objc_opt_respondsToSelector() & 1) == 0 || -[UIResponder isEditable](self, "isEditable"));

  return v4;
}

- (id)_keyboardResponder
{
  v3 = [(UIResponder *)self _window];
  v4 = [v3 windowScene];
  v5 = [v4 _keyboardOverridingSceneComponent];

  v6 = [v5 preferredKeyboardResponderOverride];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained((v6 + 8));
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v9 = WeakRetained;
  v10 = objc_loadWeakRetained(v7 + 3);

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = objc_loadWeakRetained(v7 + 3);
  v12 = [v11 _window];
  v13 = [(UIResponder *)self _window];

  if (v12 != v13)
  {
    goto LABEL_11;
  }

  v14 = [(UIResponder *)self _window];
  v15 = [v14 firstResponder];
  v16 = objc_loadWeakRetained(v7 + 3);
  v17 = v15;
  v18 = v16;
  if ((([v17 _isView] & 1) != 0 || objc_msgSend(v18, "_containsResponder:", v17)) && (!objc_msgSend(v17, "_isView") || (objc_msgSend(v17, "isEqual:", v18) & 1) == 0 && objc_msgSend(v17, "isDescendantOfView:", v18)))
  {

LABEL_11:
    v19 = self;
    goto LABEL_12;
  }

  v19 = objc_loadWeakRetained(v7 + 1);
LABEL_12:
  v20 = v19;

  return v20;
}

- (BOOL)_conformsToProtocolUIKeyInput
{
  responderFlags = self->_responderFlags;
  if ((responderFlags & 0x80) == 0)
  {
    v4 = 128;
    if (objc_opt_respondsToSelector())
    {
      if ([(UIResponder *)self conformsToProtocol:&unk_1EFE8A940])
      {
        v4 = 384;
      }

      else
      {
        v4 = 128;
      }
    }

    responderFlags = *&self->_responderFlags & 0xFE7F | v4;
    *&self->_responderFlags = *&self->_responderFlags & 0xFE7F | v4;
  }

  return (responderFlags >> 8) & 1;
}

- (UIView)inputAccessoryView
{
  v3 = [(UIResponder *)self nextResponder];
  v4 = [v3 inputAccessoryView];

  v5 = [v4 _nextResponderOverride];

  if (!v5)
  {
    v6 = [(UIResponder *)self nextResponder];
    [v4 _overrideInputAccessoryViewNextResponderWithResponder:v6];
  }

  return v4;
}

- (BOOL)_requiresKeyboardResetOnReload
{
  if ([(UIResponder *)self _conformsToProtocolUIAsyncTextInputClient])
  {
    return 1;
  }

  return [(UIResponder *)self _conformsToProtocolBETextInput];
}

- (BOOL)_conformsToProtocolUIAsyncTextInputClient
{
  responderFlags = self->_responderFlags;
  if ((responderFlags & 0x400) == 0)
  {
    if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      v4 = 1024;
      if (objc_opt_respondsToSelector())
      {
        if ([(UIResponder *)self conformsToProtocol:&unk_1F016C7B0])
        {
          v4 = 1536;
        }

        else
        {
          v4 = 1024;
        }
      }
    }

    else
    {
      v4 = 1024;
    }

    responderFlags = *&self->_responderFlags & 0xF9FF | v4;
    *&self->_responderFlags = *&self->_responderFlags & 0xF9FF | v4;
  }

  return (responderFlags >> 9) & 1;
}

- (BOOL)_conformsToProtocolBETextInput
{
  responderFlags = self->_responderFlags;
  if ((responderFlags & 0x1000) == 0)
  {
    if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      v4 = 4096;
      if (objc_opt_respondsToSelector())
      {
        if ([(UIResponder *)self conformsToProtocol:&unk_1F016C810])
        {
          v4 = 6144;
        }

        else
        {
          v4 = 4096;
        }
      }
    }

    else
    {
      v4 = 4096;
    }

    responderFlags = *&self->_responderFlags & 0xE7FF | v4;
    *&self->_responderFlags = *&self->_responderFlags & 0xE7FF | v4;
  }

  return (responderFlags >> 11) & 1;
}

- (BOOL)_disableAutomaticKeyboardUI
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _disableAutomaticKeyboardUI];

  return v3;
}

- (UIInputViewController)inputViewController
{
  v3 = [(UIResponder *)self nextResponder];
  v4 = [v3 inputViewController];

  v5 = [v4 _nextResponderOverride];

  if (!v5)
  {
    v6 = [(UIResponder *)self nextResponder];
    [v4 _overrideInputViewNextResponderWithResponder:v6];
  }

  return v4;
}

- (UIView)inputView
{
  v3 = [(UIResponder *)self nextResponder];
  v4 = [v3 inputView];

  v5 = [v4 _nextResponderOverride];

  if (!v5)
  {
    v6 = [(UIResponder *)self nextResponder];
    [v4 _overrideInputViewNextResponderWithResponder:v6];
  }

  return v4;
}

- (UIInputViewController)inputAccessoryViewController
{
  v3 = [(UIResponder *)self nextResponder];
  v4 = [v3 inputAccessoryViewController];

  v5 = [v4 _nextResponderOverride];

  if (!v5)
  {
    v6 = [(UIResponder *)self nextResponder];
    [v4 _overrideInputAccessoryViewNextResponderWithResponder:v6];
  }

  return v4;
}

- (BOOL)_ownsInputAccessoryView
{
  if (![(UIResponder *)self performSelector:sel_inputAccessoryView]|| (v3 = [(UIResponder *)self methodForSelector:sel_inputAccessoryView], v3 == [UIResponder instanceMethodForSelector:sel_inputAccessoryView]))
  {
    v4 = [(UIResponder *)self performSelector:sel_inputAccessoryViewController];
    if (v4)
    {
      v5 = [(UIResponder *)self methodForSelector:sel_inputAccessoryViewController];
      LOBYTE(v4) = v5 != [UIResponder instanceMethodForSelector:sel_inputAccessoryViewController];
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_endWritingToolsIfNecessaryForResignFirstResponder
{
  if ([(UIResponder *)self _shouldEndWritingToolsOnResign])
  {
    v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v4 = [v3 isWritingToolsHostingViewService];

    if ((v4 & 1) == 0)
    {
      v5 = [(UIResponder *)self _writingToolsViewController];

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Ending Writing Tools due to resignFirstResponder", v6, 2u);
        }

        [(UIResponder *)self _endWritingTools];
      }
    }
  }
}

- (BOOL)_shouldEndWritingToolsOnResign
{
  v2 = objc_getAssociatedObject(self, &kShouldEndWritingToolsOnResign);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)nextFirstResponder
{
  v2 = [(UIResponder *)self nextResponder];
  if (v2)
  {
    do
    {
      if ([v2 isFirstResponder] & 1) == 0 && (objc_msgSend(v2, "_canBecomeFirstResponder"))
      {
        break;
      }

      v3 = [v2 nextResponder];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)_beginPinningInputViews
{
  v3 = [(UIResponder *)self _window];
  v4 = [v3 windowScene];
  v6 = [v4 keyboardSceneDelegate];

  v5 = v6;
  if (!v6)
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v7 = v5;
  [v5 _beginPinningInputViewsOnBehalfOfResponder:self];
}

- (void)_selectionDidUpdate
{
  v3 = [(UIResponder *)self _writingToolsViewController];

  if (v3)
  {
    v4 = [(UIResponder *)self _writingToolsViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(UIResponder *)self _writingToolsViewController];
      [v6 performSelector:sel_selectionDidUpdate];
    }
  }
}

- (id)_window
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _window];

  return v3;
}

- (void)_windowBecameKey
{
  v3 = [(UIResponder *)self _window];
  v4 = [v3 _isSettingFirstResponder];

  if ((v4 & 1) == 0)
  {
    v5 = [(UIResponder *)self _window];
    v6 = [v5 windowScene];
    v7 = [v6 keyboardSceneDelegate];

    if (!-[UIResponder _isTransitioningFromView:](self, "_isTransitioningFromView:", self) || [v7 ignoresPinning])
    {
      [(UIResponder *)self reloadInputViews];
    }
  }
}

- (void)reloadInputViews
{
  if ([(UIResponder *)self shouldReloadInputViews])
  {
    v5 = [(UIResponder *)self _responderWindow];
    v3 = [v5 windowScene];
    v4 = [v3 keyboardSceneDelegate];
    [v4 _reloadInputViewsForResponder:self];
  }
}

- (void)_endPinningInputViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__UIResponder__endPinningInputViews__block_invoke;
  v2[3] = &unk_1E7104050;
  v2[4] = self;
  [UIKeyboardSceneDelegate performOnControllers:v2];
}

+ (id)_globalFirstResponder
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 delegateAsResponder];
  v4 = [v3 _editingDelegate];

  if (v4)
  {
    v5 = [v2 delegateAsResponder];
  }

  else
  {
    v6 = +[UIWindow _externalKeyWindow];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[UIWindow _applicationKeyWindow];
    }

    v9 = v8;

    v5 = [v9 _responderForKeyEvents];
  }

  return v5;
}

- (id)_responderForEditing
{
  v2 = self;
  v3 = [(UIResponder *)self _editingDelegate];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (BOOL)_supportsImagePaste
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(UIResponder *)self pasteConfiguration];
  v4 = v3;
  if (v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [v3 acceptableTypeIdentifiers];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v21 = v4;
      v8 = 0;
      v9 = *v23;
      v10 = *MEMORY[0x1E6982F28];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v22 + 1) + 8 * i)];
          v13 = [v12 conformsToType:v10];

          v8 |= v13;
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);

      v4 = v21;
      if (v8)
      {
        v14 = 1;
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(UIResponder *)self supportsImagePaste];
  }

  else
  {
    if (_supportsImagePaste_onceToken != -1)
    {
      dispatch_once(&_supportsImagePaste_onceToken, &__block_literal_global_98_4);
    }

    v15 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v16 = [*MEMORY[0x1E6982F28] identifier];
    [v15 registerDataRepresentationForTypeIdentifier:v16 visibility:0 loadHandler:&__block_literal_global_100_1];

    v26 = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
    [UIPasteboard _pinItemProviders:v17 forPasteboardNamed:@"com.apple.UIKit.pboard.general" withExpirationDate:v18];

    v19 = [(UIResponder *)self targetForAction:sel_paste_ withSender:0];

    [UIPasteboard _clearPinnedItemProvidersForPasteboardNamed:@"com.apple.UIKit.pboard.general"];
    v14 = v19 == self;
  }

LABEL_17:

  return v14;
}

- (id)pasteConfiguration
{
  if ((*&self->_responderFlags & 0x10) != 0)
  {
    v3 = objc_getAssociatedObject(self, &_pasteConfigurationKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isDisplayingWritingToolsSessionInUCB
{
  v3 = [(UIResponder *)self _writingToolsInputDashboardViewController];
  if (v3 && [(UIResponder *)self _writingToolsWantsKeyboardSuppression])
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v5 = [v4 wantsAssistantWhileSuppressingKeyboard];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_textInputSource
{
  v2 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (!v2)
  {
    return __UIPlatformFallbackInputSource;
  }

  v3 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  v4 = [v3 lastEventSource];

  return v4;
}

- (BOOL)_isWritingToolsActive
{
  v2 = [(UIResponder *)self _writingToolsViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldDisplayWritingToolsCandidateOptions
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(UIResponder *)self _shouldShowWritingToolsInCandidateBar]|| ![(UIResponder *)self _supportsWritingTools])
  {
    return 0;
  }

  v3 = [(UIResponder *)self _writingToolsViewController];
  v4 = v3 == 0;

  return v4;
}

- (id)_textInputForWritingTools
{
  v2 = [(UIResponder *)self _firstResponder];
  if ([v2 conformsToProtocolCached:&unk_1EFE8B2D0])
  {
    v3 = v2;
    goto LABEL_8;
  }

  v4 = [v2 _textInteraction];

  if (v4)
  {
    v5 = [v2 _textInteraction];
  }

  else
  {
    v3 = [v2 _selectionDisplayInteraction];

    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = [v2 _selectionDisplayInteraction];
  }

  v6 = v5;
  v3 = [v5 textInput];

LABEL_8:

  return v3;
}

- (int64_t)__wt_writingToolsBehavior
{
  v3 = [(UIResponder *)self __wt_writingToolsCoordinator];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 behavior];
  }

  else
  {
    v6 = [(UIResponder *)self _textInputForWritingTools];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 writingToolsBehavior];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)__wt_writingToolsCoordinator
{
  v2 = [(UIResponder *)self _firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _writingToolsCoordinator];
  }

  else
  {
    v4 = [v2 textInputView];
    v3 = [v4 _writingToolsCoordinator];
  }

  return v3;
}

- (id)_additionalTextInputLocales
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _additionalTextInputLocales];

  return v3;
}

- (UITextInputAssistantItem)inputAssistantItem
{
  if ((*&self->_responderFlags & 4) == 0 || (objc_getAssociatedObject(self, &_UIResponderInputAssistantItem), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[UIAssistantBarButtonItemProvider systemDefaultAssistantItem];
    *&self->_responderFlags = *&self->_responderFlags & 0xFFFB | (4 * (v3 != 0));
    objc_setAssociatedObject(self, &_UIResponderInputAssistantItem, v3, 1);
  }

  return v3;
}

- (BOOL)_supportsWritingTools
{
  if (!+[UIWritingToolsCoordinator isWritingToolsAvailable])
  {
    return 0;
  }

  v3 = [(UIResponder *)self _textInputForWritingTools];
  if (!v3 || -[UIResponder __wt_writingToolsBehavior](self, "__wt_writingToolsBehavior") == -1 || (v4 = MKBGetDeviceLockState(), v4 != 3) && v4 || (objc_opt_respondsToSelector() & 1) != 0 && ([v3 isSecureTextEntry] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v3, "keyboardType") == 2 || objc_msgSend(v3, "keyboardType") == 4 || objc_msgSend(v3, "keyboardType") == 5 || objc_msgSend(v3, "keyboardType") == 8 || objc_msgSend(v3, "keyboardType") == 11))
  {
    v5 = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = [v3 textContentType];
    v5 = [v7 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_fontForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIResponder *)self fontForCaretSelection];
  }

  else
  {
    v4 = [(UIResponder *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 selectedTextRange];
      v6 = [v5 end];

      if (v6)
      {
        v7 = [v4 endOfDocument];
        if (v7 && [v4 comparePosition:v7 toPosition:v6] == -1)
        {
          v8 = v7;

          v6 = v8;
        }

        v9 = [v4 textStylingAtPosition:v6 inDirection:0];
      }

      else
      {
        v9 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v10 = *off_1E70EC918;
      }

      else
      {
        v10 = @"UITextInputTextFontKey";
      }

      v3 = [v9 objectForKey:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIResponder *)self textColorForCaretSelection];
  }

  else
  {
    v4 = [(UIResponder *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 selectedTextRange];
      v6 = [v5 end];

      if (v6)
      {
        v7 = [v4 endOfDocument];
        if (v7 && [v4 comparePosition:v7 toPosition:v6] == -1)
        {
          v8 = v7;

          v6 = v8;
        }

        v9 = [v4 textStylingAtPosition:v6 inDirection:0];
      }

      else
      {
        v9 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        v10 = *off_1E70EC920;
      }

      else
      {
        v10 = @"UITextInputTextColorKey";
      }

      v3 = [v9 objectForKey:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)inputDashboardViewController
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 shouldShowSmartReplyFeedbackInputDashboardViewController];

  if (!v4 || ([(UIResponder *)self _smartReplyFeedbackInputDashboardViewController], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(UIResponder *)self _writingToolsInputDashboardViewController];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(UIResponder *)self nextResponder];
      v5 = [v8 inputDashboardViewController];

      v9 = [v5 _nextResponderOverride];

      if (!v9)
      {
        v10 = [(UIResponder *)self nextResponder];
        [v5 _overrideInputAccessoryViewNextResponderWithResponder:v10];
      }
    }
  }

  return v5;
}

- (id)_trailingPredictiveCandidateForWritingTools
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating]) && ([(UIResponder *)self _writingToolsViewController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4))
  {
    v5 = [(UIResponder *)self _writingToolsViewController];
    v6 = [v5 trailingPredictiveCandidate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_writingToolsWantsKeyboardSuppression
{
  v2 = objc_getAssociatedObject(self, &_MergedGlobals_1399);
  v3 = v2 != 0;

  return v3;
}

- (id)_currentOverrideClient
{
  if (*&self->_responderFlags)
  {
    v3 = objc_getAssociatedObject(self, &_MergedGlobals_1256);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_WORD)_storedActivityItemsConfiguration
{
  if (a1)
  {
    if ((a1[4] & 0x20) == 0)
    {
      a1 = 0;

      return a1;
    }

    a1 = objc_getAssociatedObject(a1, &_UIActivityItemsConfigurationKey);
  }

  return a1;
}

- (id)_selectionDisplayInteraction
{
  v2 = objc_getAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey);
  v3 = [v2 weakObject];

  return v3;
}

- (void)promptBackgroundViewDidUpdateConfiguration:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(UIResponder *)v6 nextResponder];
  [(UIResponder *)v5 promptBackgroundViewDidUpdateConfiguration:v4];
}

- (BOOL)_shouldSkipKeyboardShortcutLeaf:(id)a3 forMovement:(int64_t)a4
{
  if ((a4 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  else
  {
    return [a3 _wantsPriorityOverSystemBehavior:{2, v4, v5}] ^ 1;
  }
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3
{
  if (![(UIResponder *)self conformsToProtocol:&unk_1EFE8A940])
  {
    return 1;
  }

  if ((a3 - 4) < 2)
  {
    return ![(UIResponder *)self isFirstResponder];
  }

  if (a3 != 3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UIResponder *)self isSingleLineDocument];
}

- (id)_ui_findNavigatorResponder
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _ui_findNavigatorResponder];

  return v3;
}

- (id)_effectiveActivityItemsConfigurationForSender:(id)a3
{
  v3 = _UIResponderTargetForAction(self, sel_copy_, a3);
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _effectiveActivityItemsConfiguration];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 activityItemsConfiguration];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_effectiveActivityItemsConfigurationAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 sender:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = _UIResponderTargetForAction(self, sel_copy_, v10);
  if (objc_opt_respondsToSelector())
  {
    [v11 convertPoint:v9 fromCoordinateSpace:{x, y}];
    [v11 _activityItemsConfigurationAtLocation:?];
  }

  else
  {
    _activityItemsConfigurationForTarget(v11, v10);
  }
  v12 = ;

  return v12;
}

- (id)_firstNonnullActivityItemsConfigurationInResponderChainForLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 skipPresentingViewControllers:(BOOL)a5 sender:(id)a6 target:(id *)a7
{
  y = a3.y;
  x = a3.x;
  v12 = a4;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__82;
  v30 = __Block_byref_object_dispose__82;
  v31 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __174__UIResponder_UIActivityItemsConfiguration___firstNonnullActivityItemsConfigurationInResponderChainForLocation_inCoordinateSpace_skipPresentingViewControllers_sender_target___block_invoke;
  v21[3] = &unk_1E7108178;
  v24 = x;
  v25 = y;
  v14 = v12;
  v22 = v14;
  v23 = &v26;
  v15 = _Block_copy(v21);
  v16 = _UIResponderTargetForActionWithTestBlock(self, sel_copy_, self, v15);
  v17 = v16;
  if (a7)
  {
    v18 = v16;
    *a7 = v17;
  }

  v19 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v19;
}

BOOL __174__UIResponder_UIActivityItemsConfiguration___firstNonnullActivityItemsConfigurationInResponderChainForLocation_inCoordinateSpace_skipPresentingViewControllers_sender_target___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v7 _effectiveActivityItemsConfigurationAtLocation:*(a1 + 32) inCoordinateSpace:v6 sender:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    _activityItemsConfigurationForTarget(v7, v6);
  }
  v8 = ;

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  }

  return v8 != 0;
}

- (BOOL)_handleActivityItemsConfigurationCanPerformAction:(SEL)a3 sender:(id)a4
{
  v6 = a4;
  if (sel__share_ == a3 || sel_copy_ == a3)
  {
    v8 = [(UIResponder *)self _effectiveActivityItemsConfiguration];
  }

  else
  {
    v8 = 0;
  }

  if (!dyld_program_sdk_at_least() || !_UIActivityItemsConfigurationHasItems(v8))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (sel__share_ == a3)
  {
    v11 = v8;
    v12 = v6;
    if ((+[_UITextServiceSession availableTextServices]& 8) == 0)
    {
      goto LABEL_24;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = &UIActivityItemsConfigurationInteractionShare;
LABEL_19:
    if ([v11 activityItemsConfigurationSupportsInteraction:*v13])
    {
LABEL_20:
      v14 = v12;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 sender], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "__isKindOfUIResponder"), v15, v16) && (objc_msgSend(v14, "sender"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v18 = v17;
        v19 = [v17 activityItemsConfiguration];
        v9 = v19 != 0;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_27;
    }

LABEL_24:
    v9 = 0;
LABEL_27:

    goto LABEL_13;
  }

  if (sel_copy_ == a3)
  {
    v11 = v8;
    v12 = v6;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = &UIActivityItemsConfigurationInteractionCopy;
    goto LABEL_19;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (BOOL)_handleActivityItemsConfigurationDoesNotHandleSelector:(SEL)a3
{
  v5 = dyld_program_sdk_at_least();
  result = 0;
  if (v5 && sel_copy_ == a3)
  {
    v7 = [(UIResponder *)self _effectiveActivityItemsConfigurationForSender:self];

    if (v7)
    {
      v8 = [(UIResponder *)self _dataOwnerForCopy];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __100__UIResponder_UIActivityItemsConfiguration___handleActivityItemsConfigurationDoesNotHandleSelector___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIPasteboard _performAsDataOwner:v8 block:v9];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __100__UIResponder_UIActivityItemsConfiguration___handleActivityItemsConfigurationDoesNotHandleSelector___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _effectiveActivityItemsConfigurationForSender:*(a1 + 32)];
  v1 = [v3 itemProvidersForActivityItemsConfiguration];
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setItemProviders:v1];
}

- (BOOL)_handleActivityItemsConfigurationShare:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    v5 = [(UIResponder *)self _effectiveActivityItemsConfigurationForSender:v4];
    v6 = [(UIResponder *)self _handleActivityItemsConfigurationShare:v4 activityItemsConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_handleActivityItemsConfigurationShare:(id)a3 activityItemsConfiguration:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = v6;
  if ((+[_UITextServiceSession availableTextServices](_UITextServiceSession, "availableTextServices") & 8) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [v9 activityItemsConfigurationSupportsInteraction:@"share"]))
  {
    v12 = v10;
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v12 sender], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "__isKindOfUIResponder"), v13, v14) && (objc_msgSend(v12, "sender"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = [v15 activityItemsConfiguration];

      if (!v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v12 _targetView];
      v19 = _viewControllerToPresentFromBasedOnResponder(v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 viewIfLoaded];
    v21 = [v20 _window];

    if (!v21)
    {
      v22 = _viewControllerToPresentFromBasedOnResponder(self);

      v19 = v22;
    }

    v23 = [v19 viewIfLoaded];
    v24 = [v23 _window];

    if (!v24)
    {
      v25 = [(UIResponder *)self _window];
      v26 = [v25 rootViewController];

      v19 = v26;
    }

    v27 = [v19 viewIfLoaded];
    v28 = [v27 _window];

    if (!v28)
    {
      v29 = _UIActivityItemsConfigurationLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Could not derive a window scene from the responder returning an activity items configuration. Return a non-nil activity items configuration from a responder in a window scene to avoid this.", buf, 2u);
      }

      v30 = +[UIScene _mostActiveScene];
      objc_opt_class();
      v65 = v30;
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        [UIApp connectedScenes];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v32 = v69 = 0u;
        v31 = [v32 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v31)
        {
          v63 = self;
          v64 = v9;
          v33 = *v67;
          while (2)
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v67 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v35 = *(*(&v66 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v35;
                goto LABEL_35;
              }
            }

            v31 = [v32 countByEnumeratingWithState:&v66 objects:v71 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }

LABEL_35:
          self = v63;
          v9 = v64;
        }
      }

      if (v31)
      {
        v36 = _preferredUIWindowInWindowScene(v31);
        v37 = [v36 rootViewController];

        v19 = v37;
      }
    }

    v38 = [v19 viewIfLoaded];
    v39 = [v38 _window];

    if (!v39)
    {
      p_super = _UIActivityItemsConfigurationLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_188A29000, p_super, OS_LOG_TYPE_ERROR, "Could not find a view controller to present a share sheet from. A share sheet will not be presented.", buf, 2u);
      }

      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v12;
      v41 = [v40 _targetView];
      if (v41)
      {
        p_super = v41;
        [v40 _targetRect];
        [p_super convertRect:0 fromView:?];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

LABEL_55:
        v60 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration:v9];
        v61 = [v60 popoverPresentationController];
        [v61 setSourceView:p_super];
        [v61 setSourceRect:{v44, v46, v48, v50}];
        [v19 presentViewController:v60 animated:1 completion:&__block_literal_global_218];

LABEL_56:
        v11 = 1;
        goto LABEL_57;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = self;
      if (!v51)
      {
LABEL_53:
        p_super = [v19 view];
        v52 = [v19 view];
        [(UIResponder *)v52 bounds];
        v54 = v57;
        v58 = [v19 view];
        [v58 bounds];
        v56 = v59;

        goto LABEL_54;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_53;
      }

      v51 = [(UIResponder *)self view];
      if (!v51)
      {
        goto LABEL_53;
      }
    }

    v52 = v51;
    [(UIResponder *)v52 bounds];
    v54 = v53;
    [(UIResponder *)v52 bounds];
    v56 = v55;
    p_super = &v52->super;
LABEL_54:

    v46 = v56 * 0.5;
    v44 = v54 * 0.5;
    v50 = 1.0;
    v48 = 1.0;
    goto LABEL_55;
  }

LABEL_4:
  v11 = 0;
LABEL_57:

  return v11;
}

- (id)textInputSuggestionDelegate
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_textInputSource:(int64_t)a3
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIResponder *)self keyboardType]== 122;
    if (a3 == 3 && v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = self;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    [v10 updateEventSource:a3 options:v7 responder:v9];
  }

  else
  {
    __UIPlatformFallbackInputSource = a3;
  }
}

- (_NSRange)_selectedNSRange
{
  v3 = [(UIResponder *)self _selectableText];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedTextRange];
    if (v5)
    {
      v6 = [(UIResponder *)self _nsrangeForTextRange:v5];
      v8 = v7;
    }

    else
    {
      v8 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)_selectedRangeWithinMarkedText
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 selectedTextRange];
    if (v4)
    {
      v5 = [v3 markedTextRange];
      v6 = v5;
      if (!v5 || ([v5 start], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "start"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "offsetFromPosition:toPosition:", v7, v8), v8, v7, v9 < 0))
      {
        v12 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = [v4 start];
        v11 = [v4 end];
        v12 = [v3 offsetFromPosition:v10 toPosition:v11];
      }
    }

    else
    {
      v12 = 0;
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v9;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (void)_selectAll
{
  v3 = [(UIResponder *)self _selectableText];
  v2 = [v3 _fullRange];
  [v3 setSelectedTextRange:v2];
}

- (int)_indexForTextPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 offsetFromPosition:v6 toPosition:v4];

  return v7;
}

- (_NSRange)_nsrangeForTextRange:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v4 start];
  v7 = [(UIResponder *)self _indexForTextPosition:v6];

  v8 = [v4 start];
  v9 = [v4 end];

  v10 = [v5 offsetFromPosition:v8 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_textRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 positionFromPosition:v6 offset:location];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 endOfDocument];
  }

  v10 = v9;

  v11 = [v5 positionFromPosition:v10 offset:length];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v5 endOfDocument];
  }

  v14 = v13;

  v15 = [v5 textRangeFromPosition:v10 toPosition:v14];

  return v15;
}

- (id)_textRangeFromDirectionalRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 selectedTextRange];
  v7 = [v6 start];
  v8 = [v5 positionFromPosition:v7 offset:var0];

  v9 = [v5 positionFromPosition:v8 offset:var1];
  v10 = [v5 textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (unsigned)_characterInRelationToCaretSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 selectedTextRange];
  if (v6 && (v7 = v6, [v5 selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [(UIResponder *)self _characterInRelationToRangedSelection:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_characterInRelationToRangedSelection:(int)a3
{
  v4 = [(UIResponder *)self _selectableText];
  v5 = [v4 selectedTextRange];

  if (!v5)
  {
    goto LABEL_4;
  }

  if (a3 > -101)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = [v4 selectedTextRange];
      v8 = [v7 end];

      if (a3)
      {
        v9 = [v4 positionFromPosition:v8 offset:a3];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [v4 positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [v4 textRangeFromPosition:v8 toPosition:v12];
        v15 = [v4 textInRange:v14];
        if ([v15 length])
        {
          if ([v15 length] == 2 && (v16 = objc_msgSend(v15, "characterAtIndex:", 0), v17 = objc_msgSend(v15, "characterAtIndex:", 1), (v16 & 0xFC00) == 0xD800) && (v17 & 0xFC00) == 0xDC00)
          {
            v6 = v17 + (v16 << 10) - 56613888;
          }

          else
          {
            v6 = [v15 characterAtIndex:0];
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_21;
      }

LABEL_17:
      v6 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_10:
    v10 = [v4 selectedTextRange];
    v11 = [v10 start];
    v8 = [v4 positionFromPosition:v11 offset:a3];

    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0;
LABEL_22:

  return v6;
}

- (unsigned)_characterInRelationToPosition:(id)a3 amount:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  v9 = [v7 positionFromPosition:v8 offset:1];
  v10 = [v7 textRangeFromPosition:v8 toPosition:v9];
  v11 = [v7 textInRange:v10];
  if ([v11 length])
  {
    if ([v11 length] == 2 && (v12 = objc_msgSend(v11, "characterAtIndex:", 0), v13 = objc_msgSend(v11, "characterAtIndex:", 1), (v12 & 0xFC00) == 0xD800) && (v13 & 0xFC00) == 0xDC00)
    {
      v14 = v13 + (v12 << 10) - 56613888;
    }

    else
    {
      v14 = [v11 characterAtIndex:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_wordContainingCaretSelection
{
  v3 = [(UIResponder *)self _selectableText];
  v4 = [v3 selectedTextRange];
  if (v4)
  {
    v5 = [v3 selectedTextRange];
    v6 = [v5 isEmpty];

    if (v6)
    {
      v7 = [v3 selectedTextRange];
      v8 = [v7 start];
      v9 = [(UIResponder *)self _rangeOfEnclosingWord:v8];

      if (v9)
      {
        v4 = [v3 textInRange:v9];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_fullText
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 beginningOfDocument];
  v4 = [v2 endOfDocument];
  v5 = [v2 textRangeFromPosition:v3 toPosition:v4];

  v6 = [v2 textInRange:v5];

  return v6;
}

- (void)_setSelectionToPosition:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(UIResponder *)self _selectableText];
    v5 = [v6 textRangeFromPosition:v4 toPosition:v4];

    if (v5)
    {
      [v6 setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  v3 = [(UIResponder *)self _selectableText];
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];
  v6 = [(UIResponder *)self _rangeOfEnclosingWord:v5];

  if (v6)
  {
    v7 = [v6 start];
    v8 = [v3 selectedTextRange];
    v9 = [v8 start];
    v10 = [v3 comparePosition:v7 toPosition:v9];

    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_selectionAtDocumentStart
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];

  if (v4)
  {
    v5 = [v2 beginningOfDocument];
    v6 = [v2 comparePosition:v5 toPosition:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_selectionAtDocumentEnd
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 end];

  if (v4)
  {
    v5 = [v2 endOfDocument];
    v6 = [v2 comparePosition:v5 toPosition:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isEmptySelection
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];
  v5 = [v3 end];
  v6 = [v2 comparePosition:v4 toPosition:v5] == 0;

  return v6;
}

- (BOOL)_hasMarkedTextOrRangedSelection
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 markedTextRange];
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v2 selectedTextRange];
    if (v5)
    {
      v6 = [v2 selectedTextRange];
      v4 = [v6 isEmpty] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_extendCurrentSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UIResponder *)self _selectableText];
  if (v3)
  {
    v15 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v15;
    if (v6)
    {
      v7 = [v15 selectedTextRange];
      v8 = [v7 start];

      v9 = [v15 selectedTextRange];
      v10 = [v9 end];

      if (v3 < 1)
      {
        v13 = [(UIResponder *)self _clampedpositionFromPosition:v8 offset:v3];
        v12 = v8;
        v8 = v13;
      }

      else
      {
        v11 = [(UIResponder *)self _clampedpositionFromPosition:v10 offset:v3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:v8 toPosition:v10];
      [v15 setSelectedTextRange:v14];

      v5 = v15;
    }
  }
}

- (void)_moveCurrentSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UIResponder *)self _selectableText];
  if (v3)
  {
    v14 = v5;
    v6 = [v5 selectedTextRange];

    v5 = v14;
    if (v6)
    {
      v7 = [v14 selectedTextRange];
      v8 = [v7 isEmpty];

      if (v8)
      {
        v9 = [v14 selectedTextRange];
        v10 = [v9 start];
      }

      else
      {
        v11 = [v14 selectedTextRange];
        v10 = [v11 end];

        if (v3 < 1)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = (v3 - 1);
        }
      }

      v12 = [(UIResponder *)self _clampedpositionFromPosition:v10 offset:v3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      v5 = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)a3
{
  v24 = [(UIResponder *)self _selectableText];
  v4 = [v24 selectedTextRange];
  v5 = [v4 start];
  v6 = [v4 end];
  v7 = v5;
  if (!v4 || ([v4 isEmpty] & 1) != 0)
  {
    v8 = &stru_1EFB14550;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:
    v19 = 0;
    v10 = 0;
    goto LABEL_29;
  }

  v8 = [v24 textInRange:v4];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v23 = a3;
  v9 = v7;
  v10 = v7;
  while (1)
  {
    v11 = v8;
    v12 = [(__CFString *)v11 length];
    if (v12)
    {
      v13 = v12;
      [(__CFString *)v11 _rangeOfBackwardDeletionClusterAtIndex:[(__CFString *)v11 length]- 1];
      v15 = v14;
      v16 = v13 - v14;

      if (v13 != v15)
      {
        v8 = v11;
        v19 = v9;
        goto LABEL_20;
      }
    }

    else
    {

      v16 = 0;
    }

    v19 = v10;

    v10 = [v24 positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [v24 textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [v24 textInRange:v17];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (![v18 length])
    {
      break;
    }

    v8 = [v18 stringByAppendingString:v11];

    v9 = v19;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
  v8 = v11;
LABEL_20:
  v20 = v24;
  if (v23 && v16 >= 1)
  {
    v21 = v10;

    *v23 = [(__CFString *)v8 substringToIndex:v16];
    v20 = v24;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [v24 setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)a3
{
  v10 = [(UIResponder *)self _selectableText];
  v4 = [v10 selectedTextRange];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = [v4 start];
    v7 = [v10 _positionAtStartOfWords:a3 beforePosition:v6];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [v10 textRangeFromPosition:v7 toPosition:v8];
      [v10 setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIResponder *)self _selectableText];
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v6 start];
    goto LABEL_7;
  }

  if (!a4)
  {
    v9 = [v6 end];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if (v6)
  {
    v9 = [v7 positionWithinRange:v6 farthestInDirection:a4];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (int64_t)_opposingDirectionFromDirection:(int64_t)a3
{
  result = a3;
  if (a3 <= 5)
  {
    return qword_18A680700[a3];
  }

  return result;
}

- (id)_positionFromPosition:(id)a3 pastTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = [(UIResponder *)self _selectableText];
  if (v8)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      v12 = [v9 tokenizer];
      v13 = [v12 positionFromPosition:v8 toBoundary:a4 inDirection:a5];

      if (!v13)
      {
        v17 = 0;
        v8 = 0;
        goto LABEL_12;
      }

      v14 = [v9 tokenizer];
      if ([v14 isPosition:v13 atBoundary:a4 inDirection:a5])
      {

LABEL_11:
        v17 = v13;
        v8 = v17;
        goto LABEL_12;
      }

      v15 = [v9 tokenizer];
      v16 = [v15 isPosition:v13 atBoundary:a4 inDirection:{-[UIResponder _opposingDirectionFromDirection:](self, "_opposingDirectionFromDirection:", a5)}];

      v8 = v13;
      if (v16)
      {
        goto LABEL_11;
      }
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (id)_positionAtStartOfWords:(unint64_t)a3 beforePosition:(id)a4
{
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = v7;
  if (!a3 || !v6)
  {
    v6 = v6;
    v10 = v6;
    goto LABEL_13;
  }

  v9 = [v7 tokenizer];
  v10 = [v9 rangeEnclosingPosition:v6 withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  v18 = [v8 tokenizer];
  v19 = [v18 positionFromPosition:v6 toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v20 = [v8 tokenizer];
  v10 = [v20 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    v11 = [v10 start];

    if (a3 >= 2)
    {
      v12 = a3 - 1;
      while (1)
      {
        v13 = [v8 tokenizer];
        v14 = [v13 positionFromPosition:v11 toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        v15 = [v8 tokenizer];
        v16 = [v15 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = v11;
LABEL_12:
    v6 = v16;

    v10 = v6;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  v7 = [(UIResponder *)self _selectableText];
  v2 = [v7 selectedTextRange];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 end];
    v5 = [v3 end];
    v6 = [v7 textRangeFromPosition:v4 toPosition:v5];
    [v7 setSelectedTextRange:v6];
  }
}

- (void)_deleteByWord
{
  v10 = [(UIResponder *)self _selectableText];
  v3 = [v10 selectedTextRange];
  v4 = [v10 inputDelegate];
  [v4 textWillChange:v10];

  if ([v3 isEmpty])
  {
    v5 = [v3 start];
    v6 = [v10 _positionAtStartOfWords:1 beforePosition:v5];

    if (v6)
    {
      v7 = [v3 end];
      v8 = [v10 textRangeFromPosition:v6 toPosition:v7];

      v3 = v8;
    }
  }

  [(UIResponder *)self _deleteTextRange:v3];
  v9 = [v10 inputDelegate];
  [v9 textDidChange:v10];
}

- (void)_deleteForwardByWord
{
  v18 = [(UIResponder *)self _selectableText];
  v3 = [v18 selectedTextRange];
  v4 = [v18 inputDelegate];
  [v4 textWillChange:v18];

  if ([v3 isEmpty])
  {
    v5 = [(UIResponder *)self _selectableText];
    v6 = v5;
    if (v3)
    {
      v7 = [v5 tokenizer];
      v8 = [v3 end];
      v9 = [v7 rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

      if (v9 || ([v6 tokenizer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "end"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "positionFromPosition:toBoundary:inDirection:", v15, 1, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16) && (objc_msgSend(v6, "tokenizer"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "rangeEnclosingPosition:withGranularity:inDirection:", v16, 1, 0), v9 = objc_claimAutoreleasedReturnValue(), v17, v16, v9))
      {
        v10 = [v3 start];
        v11 = [v9 end];
        v12 = [v6 textRangeFromPosition:v10 toPosition:v11];

        v3 = v12;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:v3];
  v13 = [v18 inputDelegate];
  [v13 textDidChange:v18];
}

- (void)_deleteToStartOfLine
{
  v13 = [(UIResponder *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 start];
    v7 = [v5 positionFromPosition:v6 toBoundary:4 inDirection:1];

    if (v7)
    {
      v8 = [v3 start];
      v9 = [v13 comparePosition:v8 toPosition:v7];

      if (v9 == 1)
      {
        v10 = [v3 start];
        v11 = [v13 textRangeFromPosition:v7 toPosition:v10];

        v3 = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteToEndOfLine
{
  v13 = [(UIResponder *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 end];
    v7 = [v5 positionFromPosition:v6 toBoundary:4 inDirection:0];

    if (v7)
    {
      v8 = [v3 end];
      v9 = [v13 comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [v3 end];
        v11 = [v13 textRangeFromPosition:v10 toPosition:v7];

        v3 = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteToEndOfParagraph
{
  v13 = [(UIResponder *)self _selectableText];
  v3 = [v13 selectedTextRange];
  v4 = [v13 inputDelegate];
  [v4 textWillChange:v13];

  if ([v3 isEmpty])
  {
    v5 = [v13 tokenizer];
    v6 = [v3 end];
    v7 = [v5 positionFromPosition:v6 toBoundary:3 inDirection:0];

    if (v7)
    {
      v8 = [v3 end];
      v9 = [v13 comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [v3 end];
        v11 = [v13 textRangeFromPosition:v10 toPosition:v7];

        v3 = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:v3];
  v12 = [v13 inputDelegate];
  [v12 textDidChange:v13];
}

- (void)_deleteTextRange:(id)a3
{
  v4 = a3;
  v9 = [(UIResponder *)self _selectableText];
  v5 = [v9 selectedTextRange];
  [v9 setSelectedTextRange:v4];

  v6 = [v9 selectedTextRange];
  v7 = [v6 isEmpty];

  if ((v7 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = v9;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:v5];
      }
    }

    else
    {
      [v9 deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  v3 = [(UIResponder *)self _keyInput];
  [v3 deleteBackward];
}

- (void)_deleteForwardAndNotify:(BOOL)a3
{
  v14 = [(UIResponder *)self _selectableText];
  v4 = [v14 selectedTextRange];
  v5 = [v14 inputDelegate];
  [v5 textWillChange:v14];

  if ([v4 isEmpty])
  {
    v6 = [v14 tokenizer];
    v7 = [v4 end];
    v8 = [v6 positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v8)
    {
      v9 = [v4 end];
      v10 = [v14 comparePosition:v8 toPosition:v9];

      if (v10 == 1)
      {
        v11 = [v4 end];
        v12 = [v14 textRangeFromPosition:v11 toPosition:v8];

        v4 = v12;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:v4];
  v13 = [v14 inputDelegate];
  [v13 textDidChange:v14];
}

- (void)_transpose
{
  v19 = [(UIResponder *)self _selectableText];
  v2 = [v19 selectedTextRange];
  if ([v2 isEmpty])
  {
    v3 = [v19 inputDelegate];
    [v3 textWillChange:v19];

    v4 = [v19 tokenizer];
    v5 = [v2 start];
    v6 = [v4 positionFromPosition:v5 toBoundary:0 inDirection:1];

    v7 = [v19 tokenizer];
    v8 = [v2 end];
    v9 = [v7 positionFromPosition:v8 toBoundary:0 inDirection:0];

    if (v6 && v9)
    {
      v10 = [v2 start];
      v11 = [v19 textRangeFromPosition:v6 toPosition:v10];

      v12 = [v2 end];
      v13 = [v19 textRangeFromPosition:v12 toPosition:v9];

      if (v11 && v13)
      {
        v14 = [v19 textInRange:v11];
        v15 = [v19 textInRange:v13];
        v16 = [v15 stringByAppendingString:v14];
        v17 = [v19 textRangeFromPosition:v6 toPosition:v9];
        if (v17)
        {
          [v19 replaceRange:v17 withText:v16];
        }
      }
    }

    v18 = [v19 inputDelegate];
    [v18 textDidChange:v19];
  }
}

- (void)_replaceCurrentWordWithText:(id)a3
{
  v8 = a3;
  v4 = [(UIResponder *)self _selectableText];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  v7 = [(UIResponder *)self _rangeOfEnclosingWord:v6];

  if (v7)
  {
    [v4 replaceRange:v7 withText:v8];
  }
}

- (void)_replaceDocumentWithText:(id)a3
{
  v7 = a3;
  v4 = [(UIResponder *)self _selectableText];
  v5 = [(UIResponder *)self _fullRange];
  v6 = v5;
  if (v5)
  {
    if (([v5 isEmpty] & 1) == 0)
    {
      [v4 replaceRange:v6 withText:&stru_1EFB14550];
    }

    [v4 insertText:v7];
  }
}

- (void)_scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(UIResponder *)self _selectableText];
  v9 = [v11 textInputView];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 performSelector:sel__enclosingScrollerIncludingSelf];
    [v10 convertRect:v9 fromView:{x, y, width, height}];
    [v10 scrollRectToVisible:v4 animated:?];
  }
}

- (id)_normalizedStringForRangeComparison:(id)a3
{
  v3 = [a3 _stringByReplacingCharacter:160 withCharacter:32];
  v4 = [v3 _stringByReplacingCharacter:8217 withCharacter:39];

  v5 = [v4 _stringByReplacingCharacter:8216 withCharacter:39];

  return v5;
}

- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIResponder *)self _selectableText];
  if (![v6 length])
  {
    v11 = [v8 textRangeFromPosition:v7 toPosition:v7];
    goto LABEL_30;
  }

  v9 = [v8 _rangeOfEnclosingWord:v7];
  if (v9)
  {
    v10 = [v8 textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:v6])
  {
    v13 = [v8 positionFromPosition:v7 offset:{-objc_msgSend(v6, "length")}];
    if (!v13)
    {
      v13 = [v8 beginningOfDocument];
    }

    v14 = [v8 textRangeFromPosition:v13 toPosition:v7];

    if (v14)
    {
      v15 = [v8 textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [v6 length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [(UIResponder *)self _normalizedStringForRangeComparison:v10];
        v22 = [(UIResponder *)self _normalizedStringForRangeComparison:v6];
        if ([v21 isEqualToString:v22])
        {
          v11 = v12;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_29;
      }

      v17 = 0;
      while (1)
      {
        v18 = v13;
        v13 = [v8 positionFromPosition:v13 offset:1];

        if (!v13)
        {
          break;
        }

        if ([v8 comparePosition:v13 toPosition:v7] != -1)
        {

          break;
        }

        v12 = [v8 textRangeFromPosition:v13 toPosition:v7];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [v8 textInRange:v12];

        v19 = [v10 length];
        if (v19 > [v6 length])
        {
          v14 = v12;
          v15 = v10;
          if (v17++ < 9)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v13 = 0;
    }

    else
    {
      v15 = v10;
    }

LABEL_24:

    v12 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  v12 = v9;
  v11 = v12;
LABEL_29:

LABEL_30:

  return v11;
}

- (id)_rangeOfTextUnit:(int64_t)a3 enclosingPosition:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(UIResponder *)self _selectableText];
    v8 = [v7 tokenizer];
    v9 = [v8 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:0];

    if (!v9)
    {
      v10 = [v7 tokenizer];
      v9 = [v10 rangeEnclosingPosition:v6 withGranularity:a3 inDirection:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fullRange
{
  v2 = [(UIResponder *)self _selectableText];
  v3 = [v2 beginningOfDocument];
  v4 = [v2 endOfDocument];
  v5 = [v2 textRangeFromPosition:v3 toPosition:v4];

  return v5;
}

- (id)_rangeSpanningTextUnit:(int64_t)a3 andPosition:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = [(UIResponder *)self _selectableText];
  v8 = [(UIResponder *)self _rangeOfTextUnit:a3 enclosingPosition:v6];
  if (!v8)
  {
    v9 = [v7 tokenizer];
    v10 = 1;
    v11 = [v9 positionFromPosition:v6 toBoundary:a3 inDirection:1];

    v12 = v11;
    if (!v11)
    {
      v13 = [v7 tokenizer];
      v12 = [v13 positionFromPosition:v6 toBoundary:a3 inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    v14 = [v7 tokenizer];
    v15 = [v14 rangeEnclosingPosition:v12 withGranularity:a3 inDirection:v10];

    if (v11)
    {
      v16 = [v15 start];
      if (v16)
      {
        v17 = v7;
        v18 = v16;
        v19 = v6;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    v16 = [v15 end];
    if (v16)
    {
      v17 = v7;
      v18 = v6;
      v19 = v16;
      goto LABEL_13;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v8;
}

- (BOOL)_range:(id)a3 containsRange:(id)a4
{
  v6 = a4;
  v7 = [(UIResponder *)self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [(UIResponder *)self _nsrangeForTextRange:v6];
  v12 = v11;

  if (!v12)
  {
    return v10 >= v7 && v10 - v7 < v9;
  }

  v17.location = v7;
  v17.length = v9;
  v18.location = v10;
  v18.length = v12;
  v13 = NSIntersectionRange(v17, v18);
  return v10 == v13.location && v12 == v13.length;
}

- (BOOL)_range:(id)a3 intersectsRange:(id)a4
{
  v6 = a4;
  v7 = [(UIResponder *)self _nsrangeForTextRange:a3];
  v9 = v8;
  v10 = [(UIResponder *)self _nsrangeForTextRange:v6];
  v12 = v11;

  v14.location = v7;
  v14.length = v9;
  v15.location = v10;
  v15.length = v12;
  return NSIntersectionRange(v14, v15).length != 0;
}

- (id)_intersectionOfRange:(id)a3 andRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v6 start];
  v10 = [v7 start];
  if ([(UIResponder *)v8 comparePosition:v9 toPosition:v10]== 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v12 = [v11 start];

  v13 = [v6 end];
  v14 = [v7 end];
  if ([(UIResponder *)v8 comparePosition:v13 toPosition:v14]== -1)
  {
    v15 = v6;
  }

  else
  {
    v15 = v7;
  }

  v16 = [v15 end];

  v17 = [(UIResponder *)v8 textRangeFromPosition:v12 toPosition:v16];

  return v17;
}

- (BOOL)_range:(id)a3 isEqualToRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v10 = self;
      v11 = [v6 start];
      v12 = [v8 start];
      v13 = [(UIResponder *)v10 comparePosition:v11 toPosition:v12];

      v14 = [v6 end];
      v15 = [v8 end];
      v16 = v13 | [(UIResponder *)v10 comparePosition:v14 toPosition:v15];

      v9 = v16 == 0;
    }
  }

  return v9;
}

- (id)_findBoundaryPositionClosestToPosition:(id)a3 withGranularity:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 5)
  {
    v8 = [(UIResponder *)self _findDocumentBoundaryFromPosition:v6];
  }

  else if (a4 == 1)
  {
    v8 = [(UIResponder *)self _findPleasingWordBoundaryFromPosition:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)_findPleasingWordBoundaryFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 tokenizer];
  if ([v6 isPosition:v4 atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [v6 isPosition:v4 withinTextUnit:1 inDirection:0];
  v10 = [v5 tokenizer];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 rangeEnclosingPosition:v4 withGranularity:1 inDirection:0];

    v13 = [v12 start];
    v14 = [v5 offsetFromPosition:v13 toPosition:v4];

    if (v14 > 1)
    {
      [v12 end];
    }

    else
    {
      [v12 start];
    }
    v8 = ;

    goto LABEL_12;
  }

  v15 = [v10 isPosition:v4 atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    v7 = v4;
LABEL_3:
    v8 = v7;
    goto LABEL_12;
  }

  v16 = [v5 tokenizer];
  v8 = [v16 positionFromPosition:v4 toBoundary:1 inDirection:0];

  if (!v8)
  {
    v7 = [v5 endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 beginningOfDocument];
  v7 = [v5 endOfDocument];
  v8 = [v5 offsetFromPosition:v6 toPosition:v4];
  v9 = [v5 offsetFromPosition:v4 toPosition:v7];

  if (v8 <= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 tokenizer];
  v7 = [v4 start];
  v8 = [v6 rangeEnclosingPosition:v7 withGranularity:4 inDirection:0];

  v9 = [v4 end];
  v10 = [v6 rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  v11 = [v8 start];
  v12 = [v10 start];
  if ([v11 isEqual:v12])
  {

LABEL_9:
    v15 = [v5 selectionRectsForRange:v4];
    goto LABEL_10;
  }

  v13 = [v8 end];
  v14 = [v10 end];
  v28 = [v13 isEqual:v14];

  if (v28)
  {
    goto LABEL_9;
  }

  v15 = objc_opt_new();
  v17 = [v4 start];
  v18 = [v8 end];
  v19 = [v5 textRangeFromPosition:v17 toPosition:v18];

  v29 = v19;
  [(UIResponder *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:v5];
  v20 = [v8 end];
  v21 = [v6 rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [v6 rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [v5 selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  v25 = [v10 start];
  v26 = [v4 end];
  v27 = [v5 textRangeFromPosition:v25 toPosition:v26];

  if (v27)
  {
    [(UIResponder *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:v5];
  }

LABEL_10:

  return v15;
}

- (void)_updateSelectedRects:(id)a3 byTrimmingWhitespaceInRange:(id)a4 inDocument:(id)a5
{
  v18 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 textInRange:v7];
    v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];

    if ([v12 length])
    {
      v13 = [v7 start];
      v14 = [v9 positionFromPosition:v13 offset:{objc_msgSend(v12, "length")}];

      v15 = [v7 start];
      v16 = [v9 textRangeFromPosition:v15 toPosition:v14];

      if (v16)
      {
        v17 = [v9 selectionRectsForRange:v16];
        [v18 addObjectsFromArray:v17];
      }
    }
  }
}

- (id)_rangeOfSmartSelectionIncludingRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIResponder *)self _selectableText];
    v58 = v4;
    v6 = v4;
    v7 = [v5 tokenizer];
    v8 = [v6 start];
    v9 = [v7 positionFromPosition:v8 toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 beginningOfDocument];
    }

    v12 = v11;

    v13 = [v6 start];
    v14 = [v5 offsetFromPosition:v12 toPosition:v13];

    if (v14 >= 65)
    {
      v15 = [v6 start];
      v16 = [v5 positionFromPosition:v15 offset:-64];

      v12 = [v7 positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        v17 = [v6 start];
        v18 = [v5 positionFromPosition:v17 offset:-64];

        v12 = [v7 positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      v19 = [v6 start];
      v20 = [v5 comparePosition:v12 toPosition:v19];

      if (v20 == 1)
      {
        v21 = [v6 start];
        v22 = [v7 positionFromPosition:v21 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v6 start];
        }

        v25 = v24;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [v7 positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v5 endOfDocument];
    }

    v30 = v29;

    v31 = [v6 end];
    v32 = [v5 offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [v5 positionFromPosition:v33 offset:64];

      v30 = [v7 positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [v5 positionFromPosition:v35 offset:64];

        v30 = [v7 positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [v5 comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [v7 positionFromPosition:v39 toBoundary:0 inDirection:0];
        v41 = v40;
        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = [v6 end];
        }

        v43 = v42;

        v30 = v43;
      }
    }

    v57 = v7;
    v59 = [v5 textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [v5 keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    v46 = [v5 beginningOfDocument];
    v56 = v12;
    v47 = [v5 offsetFromPosition:v46 toPosition:v12];

    v48 = [(UIResponder *)self _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [v5 textInRange:v59];
    v61 = 0;
    v62 = &v61;
    v63 = 0x3010000000;
    v64 = "";
    v65 = xmmword_18A678470;
    v52 = +[UIKeyboardImpl activeInstance];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __74__UIResponder_UITextInput_Internal___rangeOfSmartSelectionIncludingRange___block_invoke;
    v60[3] = &unk_1E71191D8;
    v60[4] = &v61;
    [v52 smartSelectionForTextInDocument:v51 inRange:v48 - v47 options:v50 completion:{v45, v60}];

    v53 = v62[4];
    if (v53 != 0x7FFFFFFFFFFFFFFFLL && v62[5])
    {
      v62[4] = v53 + v47;
      v54 = [(UIResponder *)self _textRangeFromNSRange:?];

      v6 = v54;
    }

    _Block_object_dispose(&v61, 8);

    v4 = v58;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __74__UIResponder_UITextInput_Internal___rangeOfSmartSelectionIncludingRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return result;
}

- (id)_clampedpositionFromPosition:(id)a3 offset:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [(UIResponder *)self _selectableText];
    v9 = v8;
    if (a4 < 1)
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 beginningOfDocument];
      }
    }

    else
    {
      v10 = [v8 positionFromPosition:v7 offset:a4];
      if (!v10)
      {
        v10 = [v9 endOfDocument];
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 selectedTextRange];
  v7 = v6;
  if (location | length)
  {
    v9 = length + location;
    v10 = [v6 start];
    v11 = [v7 end];
    if (location)
    {
      v12 = [v5 positionFromPosition:v10 offset:location];

      v10 = v12;
      if (!v12)
      {
        if ((location & 0x8000000000000000) != 0)
        {
          [v5 beginningOfDocument];
        }

        else
        {
          [v5 endOfDocument];
        }
        v10 = ;
      }
    }

    if (v9)
    {
      v13 = [v5 positionFromPosition:v11 offset:v9];

      v11 = v13;
      if (!v13)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = [v5 endOfDocument];
        }

        v11 = v14;
      }
    }

    v15 = [v5 textRangeFromPosition:v10 toPosition:v11];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v7;
    }

    v8 = v17;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIResponder *)self _selectableText];
  [v7 _setSelectedTextRange:v6 withAffinityDownstream:v4];
}

- (id)_setSelectionRangeWithHistory:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v4 cursor];

  if (!v6)
  {
    goto LABEL_19;
  }

  if ([v4 anchor] == 1)
  {
    v7 = [v4 cursor];
LABEL_5:
    [v4 setEnd:v7];
    goto LABEL_6;
  }

  v8 = [v4 anchor];
  v7 = [v4 cursor];
  [v4 setStart:v7];
  if (v8 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  v9 = [v4 start];
  v10 = [v4 end];
  v11 = [v5 comparePosition:v9 toPosition:v10];

  if (v11 >= 1)
  {
    if ([v4 anchor] == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v4 setAnchor:v12];
  }

  v13 = [v4 start];
  v14 = [v4 end];
  v15 = [v5 textRangeFromPosition:v13 toPosition:v14];

  -[UIResponder _updateSelectionWithTextRange:withAffinityDownstream:](self, "_updateSelectionWithTextRange:withAffinityDownstream:", v15, [v4 affinityDownstream]);
  if ([v4 anchor])
  {
    if ([v4 anchor] == 1)
    {
      [v5 _lastRectForRange:v15];
    }

    else
    {
      [v5 firstRectForRange:v15];
    }

    [v5 _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    v18 = [(UIResponder *)self webView];
    [v16 postNotificationName:v17 object:v18];
  }

LABEL_19:

  return v4;
}

- (id)_setHistory:(id)a3 withExtending:(BOOL)a4 withAnchor:(int)a5 withAffinityDownstream:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = a4;
  v10 = a3;
  if (v10)
  {
    v11 = v10;
    if (!v8)
    {
      [(UITextInputArrowKeyHistory *)v10 setAnchor:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(UITextInputArrowKeyHistory);
  }

  v12 = [(UIResponder *)self _selectableText];
  v13 = [v12 selectedTextRange];
  v14 = [v13 start];
  [(UITextInputArrowKeyHistory *)v11 setStart:v14];

  v15 = [v12 selectedTextRange];
  v16 = [v15 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  v17 = [(UITextInputArrowKeyHistory *)v11 anchor];
  v18 = [v12 selectedTextRange];
  v19 = v18;
  if (v7 == 2)
  {
    if (v17 == 1)
    {
LABEL_7:
      v20 = [v18 end];
      goto LABEL_10;
    }
  }

  else if (v17 != 2)
  {
    goto LABEL_7;
  }

  v20 = [v18 start];
LABEL_10:
  v21 = v20;
  [(UITextInputArrowKeyHistory *)v11 setCursor:v20];

  v22 = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!v22)
  {
    v23 = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:v23];

    if (v8)
    {
      goto LABEL_12;
    }

LABEL_16:
    v7 = 0;
LABEL_17:
    [(UITextInputArrowKeyHistory *)v11 setAnchor:v7];
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (![(UITextInputArrowKeyHistory *)v11 anchor]|| [(UIResponder *)self _isEmptySelection])
  {
    goto LABEL_17;
  }

LABEL_18:
  [(UITextInputArrowKeyHistory *)v11 setAffinityDownstream:v6];

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      v22 = [v7 tokenizer];
      v23 = [v9 cursor];
      v24 = [v22 positionFromPosition:v23 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      v25 = [v9 cursor];
      [v9 setStartPosition:v25];

      v26 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    v13 = [v7 tokenizer];
    v14 = [v9 cursor];
    v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:1];

    if (v15)
    {
LABEL_4:
      v16 = [v7 tokenizer];
      v17 = [v9 cursor];
      v18 = [v16 isPosition:v17 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        v19 = [v7 tokenizer];
        v20 = [v9 cursor];
        v21 = [v19 positionFromPosition:v20 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    v15 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      v29 = [v7 beginningOfDocument];
      v30 = [v7 comparePosition:v29 toPosition:v15];

      if (!v30)
      {
        break;
      }

      if (v28 && ![v7 comparePosition:v28 toPosition:v15])
      {
        v35 = [v7 beginningOfDocument];
        [v9 setCursor:v35];

        v36 = [v9 cursor];
        [v9 setStartPosition:v36];

        break;
      }

      v31 = v15;

      v32 = [v7 tokenizer];
      v15 = [v32 positionFromPosition:v31 toBoundary:3 inDirection:1];

      v33 = [v7 tokenizer];
      v34 = [v33 isPosition:v15 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:v15];

        goto LABEL_4;
      }
    }

    v26 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v26 = 0;
    v9 = v6;
  }

LABEL_9:

  return v26;
}

- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      v13 = [v7 tokenizer];
      v14 = [v9 cursor];
      v15 = [v13 positionFromPosition:v14 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    v16 = [v7 tokenizer];
    v17 = [v9 cursor];
    v18 = [v16 positionFromPosition:v17 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    v19 = [v9 cursor];

    if (!v19)
    {
      v20 = [v7 endOfDocument];
      [v9 setCursor:v20];
    }

    v21 = [v9 cursor];
    [v9 setStartPosition:v21];

    v22 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v22 = 0;
    v9 = v6;
  }

  return v22;
}

- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v17 = 0;
    v10 = v6;
    goto LABEL_11;
  }

  v9 = [v6 affinityDownstream];
  v10 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if (([v11 isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (v9)
    {
      v14 = [v7 tokenizer];
      v15 = [v10 cursor];
      v16 = [v14 isPosition:v15 atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v17 = [(UIResponder *)self _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (!v8)
  {
    v14 = 0;
    v10 = v6;
    goto LABEL_10;
  }

  v9 = [v6 affinityDownstream];
  v10 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  v11 = [v7 tokenizer];
  v12 = [v7 selectedTextRange];
  v13 = [v12 end];
  if ([v11 isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (v9)
  {

LABEL_7:
    v11 = [v7 tokenizer];
    v12 = [v10 cursor];
    v13 = [v11 positionFromPosition:v12 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  v15 = [v7 tokenizer];
  v16 = [v10 cursor];
  v17 = [v15 isPosition:v16 atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v18 = [v10 cursor];
  [v10 setStartPosition:v18];

  v14 = [(UIResponder *)self _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:1];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 tokenizer];
    v11 = [v9 cursor];
    v12 = [v10 isPosition:v11 atBoundary:3 inDirection:0];

    if (v12)
    {
      v13 = [v9 cursor];
      v14 = [v10 positionFromPosition:v13 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    v15 = [v9 cursor];
    v16 = [v10 positionFromPosition:v15 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    v17 = [v9 cursor];
    [v9 setStartPosition:v17];

    v18 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = v6;
  }

  return v18;
}

- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 beginningOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
    v6 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    v10 = [v7 endOfDocument];
    [v9 setCursor:v10];

    v11 = [v9 cursor];
    [v9 setStartPosition:v11];

    v12 = [v7 tokenizer];
    v13 = [v9 cursor];
    v14 = [v12 isPosition:v13 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveUp:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [(UIResponder *)self _selectionAffinity]== 0;
    }

    v11 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    v12 = [v11 cursor];
    v13 = [v7 beginningOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 beginningOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    }

    v10 = [(UIResponder *)self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveDown:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    if (v6)
    {
      v9 = [v6 affinityDownstream];
    }

    else
    {
      v9 = [(UIResponder *)self _selectionAffinity]== 0;
    }

    v11 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:v9];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    v12 = [v11 cursor];
    v13 = [v7 endOfDocument];
    v14 = [v7 comparePosition:v12 toPosition:v13];

    if (v14)
    {
      v15 = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      v17 = [v11 amount];
      if (v17 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = -v17;
      }

      v19 = [v7 _positionFromPosition:v15 inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      v20 = [v11 cursor];
      v21 = [v7 comparePosition:v20 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        v22 = [v7 endOfDocument];
        [v11 setCursor:v22];

        [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
      }
    }

    else
    {
      [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    }

    v10 = [(UIResponder *)self _setSelectionRangeWithHistory:v11];
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  return v10;
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || v4)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIResponder *)self _selectableText];
  v8 = [v7 selectedTextRange];

  if (v8)
  {
    v9 = [(UIResponder *)self _setHistory:v6 withExtending:v4 withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    v10 = [v7 selectedTextRange];
    v11 = [v10 isEmpty];

    if ((v11 & 1) != 0 || v4)
    {
      v12 = [v9 cursor];
      v13 = [v7 positionFromPosition:v12 inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    v14 = [v9 cursor];
    [v9 setStartPosition:v14];

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = v6;
  }

  return v15;
}

- (id)_positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 withAffinityDownstream:(BOOL)a6
{
  v9 = a3;
  v10 = [(UIResponder *)self _selectableText];
  v11 = [v10 positionFromPosition:v9 inDirection:a4 offset:a5];

  return v11;
}

- (void)_setSelectedTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(UIResponder *)self setSelectedTextRange:v7 withAffinityDownstream:v4];
  }

  else
  {
    v6 = [(UIResponder *)self _selectableText];
    [v6 setSelectedTextRange:v7];
  }
}

- (int64_t)_selectionAffinity
{
  v2 = [(UIResponder *)self _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = [v2 tokenizer];
    v5 = [v2 selectedTextRange];
    v6 = [v5 start];
    if ([v4 isPosition:v6 atBoundary:3 inDirection:1])
    {
    }

    else
    {
      v7 = [v2 tokenizer];
      v8 = [v2 selectedTextRange];
      v9 = [v8 end];
      v10 = [v7 isPosition:v9 atBoundary:4 inDirection:2];

      if (v10)
      {
        v3 = 1;
        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_8;
  }

  v3 = [v2 selectionAffinity];
LABEL_8:

  return v3;
}

- (void)_setGestureRecognizers
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {

    [(UIResponder *)self _setInternalGestureRecognizers];
  }

  else
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 markedTextOverlay];
    [v4 removeFromSuperview];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 interactions];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 removeInteraction:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v10 = [(UIResponder *)self _selectableText];
    v11 = [v10 interactionAssistant];
    v12 = v11;
    if (v11)
    {
      [v11 setGestureRecognizers];
    }

    else if ([v10 _hasMarkedText] && objc_msgSend(v3, "hasEditableMarkedText"))
    {
      v13 = [v10 markedTextRange];
      [v10 firstRectForRange:v13];
      [v4 setFrame:?];

      v14 = [v10 textInputView];
      [v14 addSubview:v4];

      v15 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:v10];
      [v4 addInteraction:v15];
    }
  }
}

- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = MEMORY[0x1E696AAB0];
  v8 = a3;
  v9 = [[v7 alloc] initWithString:v8];

  [(UIResponder *)self _setAttributedMarkedText:v9 selectedRange:location, length];
}

- (void)_setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v26 = [(UIResponder *)self _selectableText];
  v8 = [(UIResponder *)self _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [v26 setAttributedMarkedText:v7 selectedRange:{location, length}];
  }

  else
  {
    v9 = [v7 string];

    [v26 setMarkedText:v9 selectedRange:{location, length}];
    v7 = v9;
  }

  v10 = [(UIResponder *)self _hasMarkedText];
  if (v8 != v10)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v11 = [v26 _selectionDisplayInteraction];
      v12 = v26;
      v13 = v11;
    }

    else
    {
      v13 = 0;
      v12 = v26;
    }

    [v12 _setGestureRecognizers];
    v18 = [(UIResponder *)self _textSelectingContainer];
    v19 = [v18 interactionAssistant];
    if (v19)
    {
      v20 = v19;
      v21 = [(UIResponder *)self _textSelectingContainer];
      v22 = [v21 interactionAssistant];
      v23 = [v22 externalInteractions];

      if (v23)
      {
        v24 = [(UIResponder *)self _textSelectingContainer];
        v25 = [v24 interactionAssistant];
        [v25 deactivateSelection];

        [v26 _setSelectionDisplayInteraction:v13];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v14 = [(UIResponder *)self _textSelectingContainer];
    v15 = [v14 interactionAssistant];

    if (!v15)
    {
      v16 = +[UIKeyboardImpl activeInstance];
      v13 = [v16 markedTextOverlay];

      v17 = [v26 markedTextRange];
      [v26 firstRectForRange:v17];
      [v13 setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  v15 = [(UIResponder *)self _selectableText];
  v3 = [(UIResponder *)self _hasMarkedText];
  [v15 unmarkText];
  if (v3)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v4 = [v15 _selectionDisplayInteraction];
      v5 = v15;
      v6 = v4;
    }

    else
    {
      v6 = 0;
      v5 = v15;
    }

    [v5 _setGestureRecognizers];
    v7 = [(UIResponder *)self _textSelectingContainer];
    v8 = [v7 interactionAssistant];
    if (v8)
    {
      v9 = v8;
      v10 = [(UIResponder *)self _textSelectingContainer];
      v11 = [v10 interactionAssistant];
      v12 = [v11 externalInteractions];

      if (v12)
      {
        v13 = [(UIResponder *)self _textSelectingContainer];
        v14 = [v13 interactionAssistant];
        [v14 deactivateSelection];

        [v15 _setSelectionDisplayInteraction:v6];
      }
    }

    else
    {
    }
  }
}

- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)a3 forText:(id)a4 checkAutocorrection:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = v7;
  if (sel_promptForReplace_ != a3 && sel__promptForReplace_ != a3)
  {
    if (sel__transliterateChinese_ == a3)
    {
      v14 = UIKeyboardEnabledInputModesAllowChineseTransliterationForText(v7);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v5 && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 autocorrectSpellingEnabled], v10, !v11) || (objc_msgSend(v8, "_containsCJScriptsOnly") & 1) != 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:v12];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (CGRect)_lastRectForRange:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _selectableText];
  v6 = [v5 tokenizer];
  v7 = [v4 end];
  v8 = [v6 positionFromPosition:v7 toBoundary:4 inDirection:1];

  if (v8)
  {
    v9 = [v4 start];
    if ([v5 comparePosition:v9 toPosition:v8] < 0)
    {
      v10 = [v4 end];
      v11 = [v5 comparePosition:v8 toPosition:v10];

      if (v11 < 0)
      {
        v24 = [v4 end];
        v25 = [v5 textRangeFromPosition:v8 toPosition:v24];
        [v5 firstRectForRange:v25];
        v13 = v26;
        v15 = v27;
        v17 = v28;
        v19 = v29;

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  [v5 firstRectForRange:v4];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
LABEL_6:

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)textInputView
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 textInputView];

  return v3;
}

- (void)_setSelectionDisplayInteraction:(id)a3
{
  v4 = [_UITextInputImplicitObjectWrapper wrapperForObject:a3];
  objc_setAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey, v4, 1);
}

- (void)__createInteractionAssistantIfNecessaryWithMode:(int64_t)a3
{
  v5 = objc_getAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey);
  if (!v5)
  {
    if ([(UIResponder *)self conformsToProtocol:&unk_1EFE8B2D0])
    {
      v6 = [[UITextInteractionAssistant alloc] initWithView:self textInteractionMode:a3];
      objc_setAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey, v6, 1);
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;
  if (([v5 isValid] & 1) == 0)
  {
    [v7 activate];
  }
}

- (void)__prepareInteractionAssistantIfNecessary
{
  v2 = objc_getAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey);
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v4 = [v2 isValid];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [v5 activate];
      v3 = v5;
    }
  }
}

- (void)__tearDownInteractionAssistantIfNecessary
{
  v2 = objc_getAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey);
  [v2 invalidate];
}

- (id)__textInteractionFromAssistant
{
  v2 = [(UIResponder *)self interactionAssistant];
  v3 = [v2 interactions];

  return v3;
}

- (BOOL)isEditable
{
  v2 = [(UIResponder *)self __textInteractionFromAssistant];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 textInteractionMode] != 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CGRect)_caretRect
{
  v2 = [(UIResponder *)self _asTextSelection];
  v3 = [v2 selectedTextRange];
  v4 = [v3 start];

  if (v4)
  {
    [v2 caretRectForPosition:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_containsResponder:(id)a3
{
  v4 = a3;
  while (v4)
  {
    if (v4 == self)
    {
      break;
    }

    v5 = v4;
    v4 = [(UIResponder *)v4 nextResponder];
  }

  return v4 == self;
}

- (BOOL)_finishResignFirstResponderFromBecomeFirstResponder:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIResponder *)self _responderWindow];
  if (!v5)
  {
    v6 = +[UIWindow _applicationKeyWindow];
    v7 = [v6 windowScene];
    v8 = [v7 keyboardSceneDelegate];
    v9 = [v8 responder];

    if (v9 == self)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = [v5 windowScene];
  v11 = [v10 keyboardSceneDelegate];

  v12 = [v11 responder];
  if (!v12 || ![v11 _isTrackingResponder:self])
  {
    goto LABEL_14;
  }

  if ([v11 _isTrackingResponder:self])
  {
    v13 = [(UIResponder *)self _window];
    v14 = [v12 _window];
    v15 = v14;
    if (v13 != v14)
    {

      goto LABEL_12;
    }

    v16 = [(UIResponder *)self _disableAutomaticKeyboardBehavior];

    if (v16)
    {
      goto LABEL_12;
    }

    [v11 _reloadInputViewsForResponder:0 fromBecomeFirstResponder:v3];
LABEL_14:
    v17 = 1;
    goto LABEL_15;
  }

LABEL_12:
  v17 = 0;
LABEL_15:
  [(UIResponder *)self _resignFirstResponder];
  *&self->_responderFlags &= ~0x40u;

  return v17;
}

- (id)_textServicesResponderProxy
{
  v2 = [(UIResponder *)self __textInteractionFromAssistant];
  v3 = [v2 interactionWithClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 responder];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setStoredActivityItemsConfiguration:(_WORD *)a1
{
  if (a1)
  {
    a1[4] = a1[4] & 0xFFDF | (32 * (value != 0));
    objc_setAssociatedObject(a1, &_UIActivityItemsConfigurationKey, value, 1);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v6 = sender;
  if (sel_paste_ == action)
  {
    v18 = [UIResponder instanceMethodForSelector:sel_canPasteItemProviders_];
    if (v18 == [(UIResponder *)self methodForSelector:sel_canPasteItemProviders_])
    {
      v23 = [(UIResponder *)self _effectivePasteConfiguration];
      if (v23)
      {
        v24 = v23;
        v25 = +[UIPasteboard generalPasteboard];
        v26 = [v25 itemProviders];
        v27 = _UICanPasteItemProviders(v24, v26);

        if (v27)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = +[UIPasteboard generalPasteboard];
      v20 = [v19 itemProviders];
      v21 = [(UIResponder *)self canPasteItemProviders:v20];

      if (v21)
      {
        goto LABEL_42;
      }
    }
  }

  if ([(UIResponder *)self _handleActivityItemsConfigurationCanPerformAction:action sender:v6])
  {
LABEL_42:
    v17 = 1;
    goto LABEL_47;
  }

  if (sel__define_ == action || sel_define_ == action || sel__lookup_ == action || sel_lookup_ == action || sel__translate_ == action || sel__share_ == action || sel_share_ == action || sel__addShortcut_ == action || sel_addShortcut_ == action)
  {
    v15 = [(UIResponder *)self _textServicesResponderProxy];
    v16 = v15;
    v17 = v15 && ([v15 canPerformAction:action withSender:v6] & 1) != 0;
  }

  else
  {
    if (sel_captureTextFromCamera_ == action)
    {
      if (!+[UIKeyboardCameraSession isEnabled])
      {
        v17 = 0;
        goto LABEL_47;
      }

      v22 = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];
    }

    else if (sel_showWritingTools_ == action)
    {
      v22 = [(UIResponder *)self _shouldDisplayWritingToolsCalloutBarItem];
    }

    else
    {
      v22 = objc_opt_respondsToSelector();
    }

    v17 = v22;
  }

LABEL_47:

  return v17;
}

- (id)_targetCanPerformBlock:(id)a3
{
  v4 = a3;
  if (v4[2](v4, self))
  {
    v5 = self;
  }

  else if ([(UIResponder *)self __isKindOfUIResponder])
  {
    v6 = [(UIResponder *)self nextResponder];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 _targetCanPerformBlock:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)validateCommand:(UICommand *)command
{
  v8 = command;
  if ([(UICommand *)v8 action]== sel_undo_)
  {
    v4 = [(UIResponder *)self _undoManagerForValidatingUndoRedoCommands];
    v5 = [v4 undoMenuItemTitle];
    if (v5)
    {
LABEL_9:
      [(UICommand *)v8 setTitle:v5];
LABEL_12:

      goto LABEL_13;
    }

    v6 = @"Undo";
LABEL_11:
    v7 = _UINSLocalizedStringWithDefaultValue(v6, v6);
    [(UICommand *)v8 setTitle:v7];

    goto LABEL_12;
  }

  if ([(UICommand *)v8 action]== sel_redo_)
  {
    v4 = [(UIResponder *)self _undoManagerForValidatingUndoRedoCommands];
    v5 = [v4 redoMenuItemTitle];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = @"Redo";
    goto LABEL_11;
  }

  if ([(UICommand *)v8 action]== sel_captureTextFromCamera_ && [(UIResponder *)self _conformsToProtocolUIKeyInput])
  {
    v4 = [UIAction _textFromCameraTitleForResponder:self];
    [(UICommand *)v8 setTitle:v4];
LABEL_13:
  }
}

- (void)_define:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _textServicesResponderProxy];
  [v5 _define:v4];
}

- (void)_lookup:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _textServicesResponderProxy];
  [v5 _lookup:v4];
}

- (void)_translate:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _textServicesResponderProxy];
  [v5 _translate:v4];
}

- (void)_share:(id)a3
{
  v5 = a3;
  if (![(UIResponder *)self _handleActivityItemsConfigurationShare:?])
  {
    v4 = [(UIResponder *)self _textServicesResponderProxy];
    [v4 _share:v5];
  }
}

- (void)_addShortcut:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _textServicesResponderProxy];
  [v5 _addShortcut:v4];
}

- (void)doesNotRecognizeSelector:(SEL)a3
{
  if (dyld_program_sdk_at_least() && sel_paste_ == a3 && ([(UIResponder *)self _effectivePasteConfiguration], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(UIResponder *)self _dataOwnerForPaste];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__UIResponder_doesNotRecognizeSelector___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIPasteboard _performAsDataOwner:v6 block:v8];
    }
  }

  else if (![(UIResponder *)self _handleActivityItemsConfigurationDoesNotHandleSelector:a3])
  {
    v7.receiver = self;
    v7.super_class = UIResponder;
    [(UIResponder *)&v7 doesNotRecognizeSelector:a3];
  }
}

void __40__UIResponder_doesNotRecognizeSelector___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[UIPasteboard generalPasteboard];
  v2 = [v3 itemProviders];
  [v1 pasteItemProviders:v2];
}

+ (BOOL)_callBecomeFirstResponder:(id)a3 withIntent:(unint64_t)a4
{
  v7 = a3;
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"UIResponder.m" lineNumber:895 description:@"Call must be made on main thread"];
  }

  v8 = __changeIntent;
  __changeIntent = a4;
  v9 = [v7 becomeFirstResponder];
  __changeIntent = v8;

  return v9;
}

+ (BOOL)_callResignFirstResponder:(id)a3 withIntent:(unint64_t)a4
{
  v7 = a3;
  if (pthread_main_np() != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"UIResponder.m" lineNumber:908 description:@"Call must be made on main thread"];
  }

  v8 = __changeIntent;
  __changeIntent = a4;
  v9 = [v7 resignFirstResponder];
  __changeIntent = v8;

  return v9;
}

- (id)_currentOverrideHost
{
  if ((*&self->_responderFlags & 2) != 0)
  {
    v3 = objc_getAssociatedObject(self, &unk_1ED4A0029);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_overrideHost
{
  if ((*&self->_responderFlags & 2) != 0)
  {
    v3 = objc_getAssociatedObject(self, &unk_1ED4A0029);
  }

  else
  {
    v3 = [_UIResponder_Override_Host hostForResponder:self];
    objc_setAssociatedObject(self, &unk_1ED4A0029, v3, 1);
    *&self->_responderFlags |= 2u;
  }

  return v3;
}

- (void)_clearOverrideHost
{
  if ((*&self->_responderFlags & 2) != 0)
  {
    v4 = objc_autoreleasePoolPush();
    objc_setAssociatedObject(self, &unk_1ED4A0029, 0, 1);
    *&self->_responderFlags &= ~2u;

    objc_autoreleasePoolPop(v4);
  }
}

- (id)_captureOverrideState
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [(UIResponder *)self _currentOverrideClient];
  v3 = [v2 target];
  v4 = [v2 types];
  if (v3)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_restoreOverrideState:(id)a3
{
  v4 = a3;
  if ((*&self->_responderFlags & 1) == 0)
  {
    v9 = v4;
    v5 = v4;
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count] == 2)
      {
        v6 = [v5 objectAtIndexedSubscript:0];
        v7 = [v5 objectAtIndexedSubscript:1];
        v8 = +[_UIResponder_Override overrideForResponder:withTarget:forType:](_UIResponder_Override, "overrideForResponder:withTarget:forType:", self, v6, [v7 intValue]);

        objc_setAssociatedObject(self, &_MergedGlobals_1256, v8, 1);
        *&self->_responderFlags |= 1u;
      }
    }

    v4 = v9;
  }
}

- (void)_preserveResponderOverridesWhilePerforming:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(UIResponder *)self _currentOverrideClient];
  v6 = [v5 target];
  v7 = [v5 types];

  v9[2]();
  if (v6 && (*&self->_responderFlags & 1) == 0)
  {
    v8 = [_UIResponder_Override overrideForResponder:self withTarget:v6 forType:v7];
    objc_setAssociatedObject(self, &_MergedGlobals_1256, v8, 1);
    *&self->_responderFlags |= 1u;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_overrideNextResponderWithResponder:(id)a3 forType:(int64_t)a4
{
  v9 = a3;
  v6 = objc_autoreleasePoolPush();
  if (![(UIResponder *)self _containsResponder:v9])
  {
    if (v9)
    {
      v7 = [_UIResponder_Override overrideForResponder:self withTarget:v9 forType:a4];
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(self, &_MergedGlobals_1256, v7, 1);
    v8 = *&self->_responderFlags & 0xFFFE;
    if (v7)
    {
      ++v8;
    }

    *&self->_responderFlags = v8;
  }

  objc_autoreleasePoolPop(v6);
}

- (id)recentsAccessoryView
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 recentsAccessoryView];

  return v3;
}

- (id)_keyboardShortcutInvocationForKeyboardEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 4)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__167;
    v62 = __Block_byref_object_dispose__167;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__167;
    v56 = __Block_byref_object_dispose__167;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3042000000;
    v49 = __Block_byref_object_copy__181;
    v50 = __Block_byref_object_dispose__182;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__167;
    v44 = __Block_byref_object_dispose__167;
    v45 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__167;
    v37 = __Block_byref_object_dispose__167;
    v38 = 0;
    v5 = objc_alloc_init(_UIMenuLeafValidator);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke;
    aBlock[3] = &unk_1E711E180;
    v32 = &v40;
    v6 = v5;
    v31 = v6;
    v7 = _Block_copy(aBlock);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke_2;
    v22[3] = &unk_1E711E1A8;
    v8 = v4;
    v23 = v8;
    v25 = &v33;
    v9 = v7;
    v24 = v9;
    v26 = &v58;
    v27 = &v52;
    v28 = &v46;
    v29 = v39;
    [(UIResponder *)self _enumerateKeyboardShortcutsInChainWithOptions:0 usingBlock:v22];
    if (v59[5] || (v10 = v34[5], v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke_3, v17[3] = &unk_1E711E1D0, v18 = v9, v19 = &v58, v20 = &v52, v21 = &v46, [v10 enumerateObjectsUsingBlock:v17], v18, v59[5]))
    {
      v11 = [_UIKeyboardShortcutInvocation alloc];
      v12 = v59[5];
      v13 = v53[5];
      WeakRetained = objc_loadWeakRetained(v47 + 5);
      v15 = [(_UIKeyboardShortcutInvocation *)v11 initWithKeyboardShortcutLeaf:v12 validatedKeyboardShortcutLeaf:v13 triggeringEvent:v8 originatingResponder:WeakRetained target:v41[5]];
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&v40, 8);

    _Block_object_dispose(&v46, 8);
    objc_destroyWeak(&v51);
    _Block_object_dispose(&v52, 8);

    _Block_object_dispose(&v58, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UIApp _responderForKeyEvents];
  v5 = [v3 _resolvedTargetFromFirstTarget:v4 sender:0];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 _validatedLeafWithTarget:*(*(*(a1 + 40) + 8) + 40) validator:*(a1 + 32)];
  v9 = v8;
  if (!v8 || ([v8 attributes] & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    if (v9 != v3)
    {
      v10 = [v3 copy];

      _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(v10, v9);
      v3 = v10;
    }

    v3 = v3;
    v11 = v3;
  }

  return v11;
}

void __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = a2;
  v5 = [v21 keyboardShortcutLeaf];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v5;
    if (![v8 action] && !objc_msgSend(v8, "_buttonType"))
    {

      goto LABEL_17;
    }
  }

  v9 = [*(a1 + 32) _matchFidelityForKeyboardShortcutLeaf:v5];
  v10 = v9;
  if (v9)
  {
    if (v9 == 3)
    {
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v13 = (*(*(a1 + 40) + 16))();
      if (v13)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v13);
        v14 = [v21 originatingResponder];
        objc_storeWeak((*(*(a1 + 72) + 8) + 40), v14);

        *a3 = 1;
      }
    }

    else
    {
      v15 = *(*(*(a1 + 80) + 8) + 24);
      if (v9 <= v15)
      {
        if (v9 == v15)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
        }
      }

      else
      {
        v16 = [MEMORY[0x1E695DF70] arrayWithObject:v21];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }
    }
  }

  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 24);
  if (v20 <= v10)
  {
    v20 = v10;
  }

  *(v19 + 24) = v20;
LABEL_17:
}

void __59__UIResponder__keyboardShortcutInvocationForKeyboardEvent___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 keyboardShortcutLeaf];
  v7 = (*(a1[4] + 16))();
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v6);
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    v8 = [v9 originatingResponder];
    objc_storeWeak((*(a1[7] + 8) + 40), v8);

    *a4 = 1;
  }
}

- (void)_enumerateKeyboardShortcutsInChainWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v4 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v54 = a4;
  if (qword_1ED4A0038 != -1)
  {
    dispatch_once(&qword_1ED4A0038, &__block_literal_global_487);
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (([UIApp _disableLayoutAwareShortcuts] & 1) == 0 && dyld_program_sdk_at_least() && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_isHardwareKeyboardAvailable"), v7, v8))
  {
    v9 = [UIApp _hardwareKeyboard:0];
  }

  else
  {
    v9 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_2;
  aBlock[3] = &unk_1E711E1F8;
  v68 = v9;
  v69 = (v4 & 8) != 0;
  v10 = v6;
  v67 = v10;
  v11 = _Block_copy(aBlock);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_194;
  v63[3] = &unk_1E711E220;
  v52 = v11;
  v64 = v52;
  v65 = (v4 & 2) != 0;
  v12 = _Block_copy(v63);
  v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  v14 = self;
  if (v14)
  {
    v15 = v14;
    while (![v13 containsObject:v15])
    {
      [v13 addObject:v15];
      v16 = [v15 _keyboardShortcutMenuLeaves];
      v12[2](v12, v16, v15);

      if (byte_1ED4A0030)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v15 _nextResponderUsingTraversalStrategy:v17];

      v15 = v18;
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    v19 = *(__UILogGetCategoryCachedImpl("View", &qword_1ED4A0040) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v74 = v15;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Responder chain warning: %@ has already been seen in the chain; ending traversal. Please check your nextResponder overrides.", buf, 0xCu);
    }
  }

LABEL_19:
  v51 = v13;
  if ((v4 & 1) == 0)
  {
    v20 = +[UIMainMenuSystem sharedSystem];
    v21 = [v20 _keyCommands];

    v12[2](v12, v21, UIApp);
  }

  if ((v4 & 0x20) != 0)
  {
    v22 = +[UIKeyboardImpl activeInstance];
    v23 = [v22 inputDelegateManager];
    v24 = [v23 keyInputDelegate];

    if (v24)
    {
      if (qword_1ED4A0050 != -1)
      {
        dispatch_once(&qword_1ED4A0050, &__block_literal_global_202_1);
      }

      v12[2](v12, qword_1ED4A0048, UIApp);
    }

    if (qword_1ED4A0060 != -1)
    {
      dispatch_once(&qword_1ED4A0060, &__block_literal_global_230);
    }

    v12[2](v12, qword_1ED4A0058, UIApp);
  }

  buf[0] = 0;
  v53 = [MEMORY[0x1E695DFA8] set];
  v25 = [v10 allKeys];
  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
  v72 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v28 = [v25 sortedArrayUsingDescriptors:v27];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = v28;
  v47 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v47)
  {
    v30 = *v60;
    v31 = v4 & 0x14;
    v45 = *v60;
    v46 = v4;
    v49 = v29;
    v50 = v10;
    do
    {
      v32 = 0;
      do
      {
        if (*v60 != v30)
        {
          objc_enumerationMutation(v29);
        }

        v48 = v32;
        v33 = *(*(&v59 + 1) + 8 * v32);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v34 = [v10 objectForKeyedSubscript:v33];
        v35 = [v34 countByEnumeratingWithState:&v55 objects:v70 count:16];
        if (!v35)
        {
          goto LABEL_45;
        }

        v36 = v35;
        v37 = *v56;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v56 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v55 + 1) + 8 * i);
            v40 = [v39 keyboardShortcutLeaf];
            v41 = v40;
            if (v31 != 16)
            {
              v42 = [v40 _keyboardShortcut];
              v43 = [v53 containsObject:v42];

              if (v43)
              {
                goto LABEL_43;
              }

              v44 = [v41 _keyboardShortcut];
              [v53 addObject:v44];
            }

            v54[2](v54, v39, buf);
            if (buf[0])
            {

              v29 = v49;
              v10 = v50;
              goto LABEL_51;
            }

LABEL_43:
          }

          v36 = [v34 countByEnumeratingWithState:&v55 objects:v70 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }

LABEL_45:

        if ((v46 & 4) == 0)
        {
          [v53 removeAllObjects];
        }

        v32 = v48 + 1;
        v29 = v49;
        v10 = v50;
        v30 = v45;
      }

      while (v48 + 1 != v47);
      v47 = [v49 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v47);
  }

LABEL_51:
}

uint64_t __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4A0030 = result;
  return result;
}

void __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_14:
    v8 = [[_UIEnumeratedKeyboardShortcut alloc] initWithKeyboardShortcutLeaf:v17 originatingResponder:v5];
    if (*(a1 + 48))
    {
      v13 = &unk_1EFE32AD0;
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "_enumerationPriority")}];
    }

    v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
    if (v14)
    {
      v15 = v14;
      [v14 addObject:v8];
    }

    else
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
      [*(a1 + 32) setObject:v15 forKeyedSubscript:v13];
    }

    goto LABEL_21;
  }

  v8 = v17;
  v9 = *(a1 + 40);
  if (v9)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v10 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v16 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic))
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v11 = v10 < v16;
        if (v10 < v16)
        {
          break;
        }

        _UIInternalPreferenceSync(v10, &_UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, @"EnableLayoutAwareShortcutsAutomatic", _UIInternalPreferenceUpdateBool);
        v16 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic;
      }

      while (v10 != _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic);
    }

    if (byte_1ED48B2A4)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [(_UIEnumeratedKeyboardShortcut *)v8 _localizeWithGSKeyboard:v9 automatically:v12 force:0];
  }

  if ([(_UIEnumeratedKeyboardShortcut *)v8 action]|| [(_UIEnumeratedKeyboardShortcut *)v8 _buttonType])
  {

    goto LABEL_14;
  }

LABEL_21:
}

void __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v20 = *v28;
    do
    {
      v10 = 0;
      v21 = v8;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [v11 _keyboardShortcut];

        if (v12)
        {
          (*(*(a1 + 32) + 16))();
          if ((*(a1 + 40) & 1) == 0)
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v13 = [v11 _leafAlternates];
            v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v24;
              do
              {
                v17 = 0;
                do
                {
                  if (*v24 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = [*(*(&v23 + 1) + 8 * v17) alternateLeafWithBaseLeaf:v11];
                  v19 = [v18 _keyboardShortcut];

                  if (v19)
                  {
                    (*(*(a1 + 32) + 16))();
                  }

                  ++v17;
                }

                while (v15 != v17);
                v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v15);
            }

            v9 = v20;
            v8 = v21;
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }
}

void __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_200()
{
  v28[15] = *MEMORY[0x1E69E9840];
  v22 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_undo_];
  v28[0] = v22;
  v21 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_redo_];
  v28[1] = v21;
  v20 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_cut_];
  v28[2] = v20;
  v19 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_copy_];
  v28[3] = v19;
  v18 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_paste_];
  v28[4] = v18;
  v17 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_pasteAndMatchStyle_];
  v28[5] = v17;
  v0 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_selectAll_];
  v28[6] = v0;
  v1 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_increaseSize_];
  v28[7] = v1;
  v2 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_decreaseSize_];
  v28[8] = v2;
  v3 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_toggleBoldface_];
  v28[9] = v3;
  v4 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_toggleItalics_];
  v28[10] = v4;
  v5 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_toggleUnderline_];
  v28[11] = v5;
  v6 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_startDictation_];
  v28[12] = v6;
  v7 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_orderFrontCharacterPalette_];
  v28[13] = v7;
  v8 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel__handleLegacyEmojiKeyboardShortcut_];
  v28[14] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:15];

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9 copyItems:1];
  v11 = qword_1ED4A0048;
  qword_1ED4A0048 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = qword_1ED4A0048;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v23 + 1) + 8 * v16++) _setEnumerationPriority:-1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

void __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_2_228()
{
  v17[5] = *MEMORY[0x1E69E9840];
  v0 = [UIKeyCommand keyCommandWithInput:@" " modifierFlags:11468800 action:sel__nopSelector_];
  v17[0] = v0;
  v1 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputUpArrow" modifierFlags:0x100000 action:sel__nopSelector_];
  v17[1] = v1;
  v2 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputDownArrow" modifierFlags:0x100000 action:sel__nopSelector_];
  v17[2] = v2;
  v3 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputLeftArrow" modifierFlags:0x100000 action:sel__nopSelector_];
  v17[3] = v3;
  v4 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputRightArrow" modifierFlags:0x100000 action:sel__nopSelector_];
  v17[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v6 = qword_1ED4A0058;
  qword_1ED4A0058 = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = qword_1ED4A0058;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _setEnumerationPriority:{-1, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)_enableAutomaticKeyboardPressDone
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _enableAutomaticKeyboardPressDone];

  return v3;
}

- (id)_nextResponderThatCanBecomeFirstResponder
{
  v2 = self;
  if (v2)
  {
    do
    {
      if ([(UIResponder *)v2 isFirstResponder])
      {
        break;
      }

      if ([(UIResponder *)v2 canBecomeFirstResponder])
      {
        break;
      }

      v3 = [(UIResponder *)v2 nextResponder];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (BOOL)_nextResponderChainContainsResponder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:1663 description:{@"Invalid parameter not satisfying: %@", @"nextResponder"}];
  }

  v6 = self;
  for (i = v6 != 0; v6; i = v6 != 0)
  {
    if (v6 == v5)
    {
      break;
    }

    v8 = v6;
    v6 = [(UIResponder *)v6 nextResponder];
  }

  return i;
}

- (BOOL)_isPinningInputViews
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__UIResponder__isPinningInputViews__block_invoke;
  v4[3] = &unk_1E711E248;
  v4[4] = self;
  v4[5] = &v5;
  [UIKeyboardSceneDelegate performOnControllers:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __35__UIResponder__isPinningInputViews__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _isPinningInputViewsOnBehalfOfResponder:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (void)_handleKeyEvent:(__GSEvent *)a3
{
  v4 = [(UIResponder *)self nextResponder];
  [v4 _handleKeyEvent:a3];
}

- (void)_handleKeyUIEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self nextResponder];
  [v5 _handleKeyUIEvent:v4];
}

- (void)_handleGameControllerEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self nextResponder];
  [v5 _handleGameControllerEvent:v4];
}

- (BOOL)_isTransitioningFromView:(id)a3
{
  v3 = self;
  v4 = [(UIResponder *)self nextResponder];
  LOBYTE(v3) = [v4 _isTransitioningFromView:v3];

  return v3;
}

- (void)_completeForwardingTouches:(id)a3 phase:(int64_t)a4 event:(id)a5 index:(unint64_t)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    if (a4 > 4 || ((1 << a4) & 0x1A) == 0)
    {
      v25 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v28 = 136315138;
        v29 = "[UIResponder _completeForwardingTouches:phase:event:index:]";
        _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Unexpected touch phase in %s", &v28, 0xCu);
      }
    }
  }

  else if (a4 > 4 || ((1 << a4) & 0x1A) == 0)
  {
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0068) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315138;
      v29 = "[UIResponder _completeForwardingTouches:phase:event:index:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected touch phase in %s", &v28, 0xCu);
    }
  }

  v12 = [(UIResponder *)self nextResponder];
  v13 = [v10 anyObject];
  v14 = [v13 _forwardingRecord];
  v15 = [v14 count];
  if (v15 <= a6)
  {
    goto LABEL_25;
  }

  v16 = v15;
  while (1)
  {
    v17 = [v14 objectAtIndex:a6];
    v18 = v17;
    if (v12)
    {
      v19 = [v17 responder];

      if (v12 == v19)
      {
        break;
      }
    }

    [v18 setResponder:0];
    v20 = 0;
LABEL_14:

    ++a6;
    v12 = v20;
    if (v16 == a6)
    {
      goto LABEL_26;
    }
  }

  if (!v18)
  {
    if (a4 > 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v18[3] >= a4 && (a4 != 1 || v18[4] != 1))
  {
LABEL_13:
    v20 = [v12 nextResponder];
    goto LABEL_14;
  }

  v18[3] = a4;
  v18[4] = a4;
LABEL_21:
  v22 = [v18 responder];

  if (v22)
  {
    v23 = [v13 _eventComponentPhase];
    v24 = [v13 _responderSelectorForPhase:{objc_msgSend(v23, "value")}];

    if (os_variant_has_internal_diagnostics())
    {
      if (!v24)
      {
        v26 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v28 = 136315138;
          v29 = "[UIResponder _completeForwardingTouches:phase:event:index:]";
          _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Unexpected touch phase in %s", &v28, 0xCu);
        }
      }
    }

    else if (!v24)
    {
      v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0070) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315138;
        v29 = "[UIResponder _completeForwardingTouches:phase:event:index:]";
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Unexpected touch phase in %s", &v28, 0xCu);
      }
    }

    ([v12 methodForSelector:v24])(v22, v24, v10, v11);
    [v22 _completeForwardingTouches:v10 phase:a4 event:v11 index:a6 + 1];
  }

LABEL_25:
  v20 = v12;
LABEL_26:
}

- (int64_t)_availableTextServices
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _availableTextServices];

  return v3;
}

- (id)_showServiceForType:(int64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [(UIResponder *)self nextResponder];
  v8 = [v7 _showServiceForType:a3 withContext:v6];

  return v8;
}

- (id)_showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a3;
  v15 = [(UIResponder *)self nextResponder];
  v16 = [v15 _showServiceForText:v14 type:a4 fromRect:v13 inView:{x, y, width, height}];

  return v16;
}

- (id)_showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  length = a4.length;
  location = a4.location;
  v16 = a7;
  v17 = a3;
  v18 = [(UIResponder *)self nextResponder];
  v19 = [v18 _showServiceForText:v17 selectedTextRange:location type:length fromRect:a5 inView:{v16, x, y, width, height}];

  return v19;
}

- (id)_primaryContentResponder
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _primaryContentResponder];

  return v3;
}

- (CGRect)_responderSelectionRectForWindow:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_responderExternalTouchRectForWindow:(id)a3
{
  if (a3)
  {
    [a3 frame];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_responderSelectionContainerViewForResponder:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self nextResponder];
  v6 = [v5 _responderSelectionContainerViewForResponder:v4];

  return v6;
}

- (id)_responderSelectionImage
{
  if (qword_1ED4A0080 != -1)
  {
    dispatch_once(&qword_1ED4A0080, &__block_literal_global_665);
  }

  v3 = qword_1ED4A0078;

  return v3;
}

void __39__UIResponder__responderSelectionImage__block_invoke()
{
  _UIGraphicsBeginImageContextWithOptions(0, 0, 23.0, 23.0, 0.0);
  v0 = +[UIColor blueColor];
  [v0 setStroke];

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 23.0;
  v7.size.height = 23.0;
  v8 = CGRectInset(v7, 2.5, 2.5);
  v5 = [UIBezierPath bezierPathWithRoundedRect:v8.origin.x cornerRadius:v8.origin.y, v8.size.width, v8.size.height, 10.0];
  [v5 setLineWidth:5.0];
  [v5 stroke];
  v1 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v2 = [v1 resizableImageWithCapInsets:{11.0, 11.0, 11.0, 11.0}];

  v3 = [v2 imageWithAlignmentRectInsets:{-7.0, -7.0, -7.0, -7.0}];

  v4 = qword_1ED4A0078;
  qword_1ED4A0078 = v3;
}

- (BOOL)_canChangeFirstResponder:(id)a3 toResponder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIResponder *)self nextResponder];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 _canChangeFirstResponder:v6 toResponder:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setFirstResponder:(id)a3
{
  v5 = a3;
  [(UIResponder *)self _willChangeToFirstResponder:v5];
  v4 = [(UIResponder *)self nextResponder];
  [v4 _setFirstResponder:v5];

  [(UIResponder *)self _didChangeToFirstResponder:v5];
}

- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_checkIsText:(BOOL *)a3 isSecure:(BOOL *)a4 isEditable:(BOOL *)a5 isFormatted:(BOOL *)a6
{
  v11 = [(UIResponder *)self conformsToProtocol:&unk_1EFE8A8A0];
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_16:
    *a3 = v12;
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [(UIResponder *)self isSecureTextEntry];
  }

  else
  {
    v15 = [UITextInputTraits traitsByAdoptingTraits:self];
    v16 = v15;
    if (v15)
    {
      v13 = [v15 isSecureTextEntry];
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIResponder *)self isEditable];
  if ([(UIResponder *)self canPerformAction:sel_toggleBoldface_ withSender:0]|| [(UIResponder *)self canPerformAction:sel_toggleItalics_ withSender:0])
  {
    LOBYTE(v11) = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  LOBYTE(v11) = [(UIResponder *)self canPerformAction:sel_toggleUnderline_ withSender:0];
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = v11;
  }
}

- (BOOL)_disallowsPresentationOfKeyboardShortcutHUD
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _disallowsPresentationOfKeyboardShortcutHUD];

  return v3;
}

- (BOOL)_alwaysRequireInlineCandidateView
{
  v2 = [(UIResponder *)self nextResponder];
  v3 = [v2 _alwaysRequireInlineCandidateView];

  return v3;
}

- (BOOL)_isHardwareKeyboardBehaviorEnabled
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 isInHardwareKeyboardMode];

  return v3;
}

- (void)setPasteConfiguration:(id)a3
{
  *&self->_responderFlags = *&self->_responderFlags & 0xFFEF | (16 * (a3 != 0));
  v4 = [a3 copy];
  objc_setAssociatedObject(self, &_pasteConfigurationKey, v4, 1);
}

- (void)pasteItemProviders:(id)a3
{
  v8 = a3;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = [(UIResponder *)self _nextResponderUsingTraversalStrategy:2];
    v6 = v5;
    if (v5)
    {
      [v5 pasteItemProviders:v8];
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:2049 description:@"pasteItemProviders: must be overridden if pasteConfiguration is not nil."];
}

- (BOOL)canPasteItemProviders:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _effectivePasteConfiguration];
  v6 = v5;
  if (v5)
  {
    v7 = _UICanPasteItemProviders(v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_dragDataOwner
{
  v3 = objc_getAssociatedObject(self, &_dragDataOwnerKey);
  v4 = [v3 integerValue];

  if (!v4)
  {
    v4 = [(UIResponder *)self nextResponder];

    if (v4)
    {
      v5 = [(UIResponder *)self nextResponder];
      v4 = [v5 _dragDataOwner];
    }
  }

  return v4;
}

- (void)_setDragDataOwner:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, &_dragDataOwnerKey, v4, 1);
}

- (int64_t)_dropDataOwner
{
  v3 = objc_getAssociatedObject(self, &_dropDataOwnerKey);
  v4 = [v3 integerValue];

  if (!v4)
  {
    v4 = [(UIResponder *)self nextResponder];

    if (v4)
    {
      v5 = [(UIResponder *)self nextResponder];
      v4 = [v5 _dropDataOwner];
    }
  }

  return v4;
}

- (void)_setDropDataOwner:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, &_dropDataOwnerKey, v4, 1);
}

- (int64_t)_dataOwnerForCopy
{
  v3 = objc_getAssociatedObject(self, &_dataOwnerForCopyKey);
  v4 = [v3 integerValue];

  if (!v4)
  {
    v4 = [(UIResponder *)self nextResponder];

    if (v4)
    {
      v5 = [(UIResponder *)self nextResponder];
      v4 = [v5 _dataOwnerForCopy];
    }
  }

  return v4;
}

- (void)_setDataOwnerForCopy:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, &_dataOwnerForCopyKey, v4, 1);
}

- (int64_t)_dataOwnerForPaste
{
  v3 = objc_getAssociatedObject(self, &_dataOwnerForPasteKey);
  v4 = [v3 integerValue];

  if (!v4)
  {
    v4 = [(UIResponder *)self nextResponder];

    if (v4)
    {
      v5 = [(UIResponder *)self nextResponder];
      v4 = [v5 _dataOwnerForPaste];
    }
  }

  return v4;
}

- (void)_setDataOwnerForPaste:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, &_dataOwnerForPasteKey, v4, 1);
}

+ (void)clearTextInputContextIdentifier:(NSString *)identifier
{
  v3 = MEMORY[0x1E695E000];
  v4 = identifier;
  v7 = [[v3 alloc] initWithSuiteName:@"UITextInputContextIdentifiers"];
  v5 = [@"ID_" stringByAppendingString:v4];

  v6 = [v5 stringByAppendingString:@"_SETTIME"];
  [v7 removeObjectForKey:v5];
  [v7 removeObjectForKey:v6];
}

- (void)reloadInputViewsWithoutReset
{
  if ([(UIResponder *)self shouldReloadInputViews])
  {
    v3 = [(UIResponder *)self _window];
    v4 = [v3 windowScene];
    v5 = [v4 keyboardSceneDelegate];

    [v5 _setReloadInputViewsForcedIsAllowed:0];
    [v5 _reloadInputViewsForResponder:self];
    [v5 _setReloadInputViewsForcedIsAllowed:1];
  }
}

- (void)_reloadInputViewsFromFirstResponder:(BOOL)a3
{
  if ([(UIResponder *)self shouldReloadInputViews])
  {
    v6 = [(UIResponder *)self _responderWindow];
    v4 = [v6 windowScene];
    v5 = [v4 keyboardSceneDelegate];
    [v5 _reloadInputViewsForResponder:self fromBecomeFirstResponder:1];
  }
}

- (void)_setSuppressSoftwareKeyboard:(BOOL)a3
{
  responderFlags = self->_responderFlags;
  if (((((responderFlags & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *&self->_responderFlags = responderFlags & 0xFFBF | v5;
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:1];
  }
}

- (void)captureTextFromCamera:(id)sender
{
  v6 = sender;
  v4 = [(UIResponder *)self _keyboardResponder];
  if (v4)
  {
    v5 = +[UIKeyboardCameraSession sharedSession];
    [v5 showForResponder:v4 sender:v6 rtiConfiguration:0];
  }
}

- (void)setUserActivity:(NSUserActivity *)userActivity
{
  value = userActivity;
  v4 = [(UIResponder *)self _userActivity];
  if (v4 != value)
  {
    *&self->_responderFlags = *&self->_responderFlags & 0xFFF7 | (8 * (value != 0));
    objc_setAssociatedObject(self, &kResponderUserActivityKey, value, 1);
    if (v4)
    {
      [UIApp _removeResponder:self forUserActivity:v4];
    }

    if (value)
    {
      [UIApp _addResponder:self forUserActivity:value];
    }
  }
}

void __37___UIResponder_Override_Host_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = [*(a1 + 32) overridden];
    [v3 _overrideInputAccessoryViewNextResponderWithResponder:*(a1 + 40)];
  }

  else
  {
    if (a2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 32) overridden];
    [v3 _overrideInputViewNextResponderWithResponder:*(a1 + 40)];
  }
}

void __55___UIResponder_Override_Host_attachOverrider_forTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [_UIResponder_Override_Host_Entry entryWithResponder:*(a1 + 40) forType:a2];
  [v2 addObject:v3];
}

- (void)_rebuildStateRestorationIdentifierPath
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    _rebuildStateRestorationIdentifierPath(self, v3);
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningCalled_0.isa, "[UIResponder(StateRestoration) _rebuildStateRestorationIdentifierPath]", self);
  }
}

- (void)setRestorationIdentifier:(id)a3
{
  objc_setAssociatedObject(self, &kRestorationIdentifierAssociatedObjectKey, a3, 1);

  _trackObjectWithIdentifier(self);
}

+ (id)objectWithRestorationIdentifierPath:(id)a3
{
  if (!qword_1ED4A07D0 || (result = [qword_1ED4A07D0 objectForKey:a3]) == 0)
  {
    v5 = qword_1ED4A07D8;

    return [v5 objectForKey:a3];
  }

  return result;
}

- (id)_restorationIdentifierPath
{
  result = [(UIResponder *)self restorationIdentifier];
  if (result)
  {
    v4 = _restorationIdentifierPathArrayForResponder(self);

    return [v4 componentsJoinedByString:@"/"];
  }

  return result;
}

+ (void)_updateStateRestorationIdentifierMap
{
  [qword_1ED4A07C8 enumerateObjectsUsingBlock:&__block_literal_global_235_1];
  v2 = qword_1ED4A07C8;

  [v2 removeAllObjects];
}

void __69__UIResponder_StateRestoration___updateStateRestorationIdentifierMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = _restorationIdentifierForObject(a2);
  if (v3)
  {
    v4 = v3;
    v5 = qword_1ED4A07D0;
    if (!qword_1ED4A07D0)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      qword_1ED4A07D0 = v5;
    }

    _putObjectIdentifierIntoRestorationIdentifierMap(a2, v4, v5);
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningObject_0.isa, "+[UIResponder(StateRestoration) _updateStateRestorationIdentifierMap]_block_invoke", a2);
  }
}

+ (void)_setRestoredIdentifierPathForObject:(id)a3 identifierPath:(id)a4
{
  v6 = [a4 componentsSeparatedByString:@"/"];
  if ([v6 count])
  {
    v7 = qword_1ED4A07B0;
    if (!qword_1ED4A07B0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      qword_1ED4A07B0 = v7;
    }

    [v7 setObject:v6 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%p", a3)}];
    [v6 lastObject];

    _trackObjectWithIdentifier(a3);
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningIdenti.isa, "+[UIResponder(StateRestoration) _setRestoredIdentifierPathForObject:identifierPath:]", a4, a3);
  }
}

void __55__UIResponder__UIStickerExtension___supportsImagePaste__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==" options:0];
  v1 = _supportsImagePaste_imgData;
  _supportsImagePaste_imgData = v0;
}

- (void)_insertItemFromProvider:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v16 count:1];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{0.5, v16, v17}];
  [UIPasteboard _pinItemProviders:v9 forPasteboardNamed:@"com.apple.UIKit.pboard.general" withExpirationDate:v10];

  v11 = [(UIResponder *)self targetForAction:sel_paste_ withSender:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 conformsToProtocol:&unk_1F016CC30];

    if (v13)
    {
      [v12 pasteWithCompletionHandler:&__block_literal_global_215_3];
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [v12 paste:0];
      v15 = dispatch_time(0, 500000000);
      dispatch_after(v15, MEMORY[0x1E69E96A0], &__block_literal_global_217_2);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v14 = +[UIPasteboard generalPasteboard];

  [v14 _clearPinnedItemProviders];
  if (v6)
  {
LABEL_6:
    v6[2](v6, v12 != 0);
  }

LABEL_7:
}

void __78__UIResponder__UIStickerExtension___insertItemFromProvider_completionHandler___block_invoke()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

void __78__UIResponder__UIStickerExtension___insertItemFromProvider_completionHandler___block_invoke_2()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

- (BOOL)_isEditableForWritingTools
{
  v3 = [(UIResponder *)self _textInputForWritingTools];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isEditable];
  }

  else
  {
    v5 = [(UIResponder *)self _textInteraction];

    if (v5)
    {
      v6 = [(UIResponder *)self _textInteraction];
      v4 = [v6 textInteractionMode] == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)_writingToolsDelegate
{
  v3 = [(UIResponder *)self __wt_writingToolsCoordinator];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UIResponder *)self _textInputForWritingTools];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 textLayoutManager], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (BOOL)_shouldEvaluateForWritingToolsInCandidateBarAsynchronously
{
  v2 = [(UIResponder *)self _textInputForWritingTools];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v2 conformsToProtocolCached:&unk_1F016C810];
  v5 = [v3 inputDelegateManager];
  v6 = [v5 hasAsyncCapableInputDelegate];

  v7 = v4 & [v3 nextInputWouldStartSentence];
  return v7 & v6;
}

- (void)_asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4[2](v4, 0);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __105__UIResponder_WritingToolsSupport___asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E7107E48;
    v5[4] = self;
    v6 = v4;
    [(UIResponder *)self _webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler:v5];
  }
}

void __105__UIResponder_WritingToolsSupport___asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _supportsWritingTools];
    v4 = *(a1 + 40);
    if (v3)
    {
      v8 = [*(a1 + 32) _writingToolsViewController];
      (*(v4 + 16))(v4, v8 == 0);
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = *(a1 + 40);

      v6(v7, 0);
    }
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (BOOL)_shouldDisplayWritingToolsCalloutBarItem
{
  v3 = [(UIResponder *)self _writingToolsDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = self;
  }

  v5 = [(UIResponder *)v4 _supportsWritingTools];

  return v5;
}

- (void)showWritingTools:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIResponder *)self _textInputForWritingTools];
  v6 = v5;
  if (!v5 || v5 == self)
  {
    v7 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUIUnspecified];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUIMenu];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_9:
        v10 = +[_UISignalAnalytics getIASignalWritingToolsPanelRequested];
        v11 = +[_UISignalAnalytics getIAPayloadKeyWritingToolsUI];
        v13 = v11;
        v14[0] = v7;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        [_UISignalAnalytics sendWritingToolsSignal:v10 payload:v12];

        [(UIResponder *)self _startWritingToolsWithTool:@"WTUIRequestedToolNone" prompt:0 sender:v4];
        goto LABEL_10;
      }

      v8 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUICandidateBar];
    }

    v9 = v8;

    v7 = v9;
    goto LABEL_9;
  }

  [(UIResponder *)v5 showWritingTools:v4];
LABEL_10:
}

- (void)_startWritingToolsWithTool:(id)a3 prompt:(id)a4 entryPoint:(id)a5 inputContextHistory:(id)a6 sender:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(UIResponder *)self _supportsWritingTools])
  {
    v15 = [(UIResponder *)self _writingToolsViewController];

    if (v15)
    {
      [(UIResponder *)self _endWritingTools];
    }

    v16 = objc_alloc(getWTWritingToolsViewControllerClass());
    if (v14)
    {
      v17 = [v16 _initWithRequestedTool:v11 baseResponse:v12 entryPoint:v13 inputContextHistory:v14];
    }

    else
    {
      v17 = [v16 initWithRequestedTool:v11 prompt:v12];
    }

    v18 = v17;
    [(UIResponder *)self _setWritingToolsViewController:v17];
    v19 = [(UIResponder *)self _textInputForWritingTools];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v19)
      {
        v21 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v23 = 138412546;
          v24 = self;
          v25 = 2048;
          v26 = self;
          _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "<%@:%p> can not find UITextInput", &v23, 0x16u);
        }
      }
    }

    else if (!v19)
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &_startWritingToolsWithTool_prompt_entryPoint_inputContextHistory_sender____s_category) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412546;
        v24 = self;
        v25 = 2048;
        v26 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "<%@:%p> can not find UITextInput", &v23, 0x16u);
      }
    }

    [v18 setSourceResponder:self sourceTextInput:v19];
    v20 = [(UIResponder *)self _writingToolsDelegate];
    [v18 setWritingToolsDelegate:v20];

    [(UIResponder *)self _setWritingToolsWantsKeyboardSuppression:1];
    if (objc_opt_respondsToSelector())
    {
      [v19 willPresentWritingTools];
    }

    [v18 startWritingTools];
    if (v11 != @"WTUIRequestedToolNone")
    {
      [(UIResponder *)self _playInvocationAnimation];
    }
  }
}

- (void)_endWritingTools
{
  v2 = [(UIResponder *)self _writingToolsViewController];
  [v2 endWritingTools];
}

- (void)_writingToolsDidEnd
{
  v8 = [(UIResponder *)self _textInputForWritingTools];
  v3 = [(UIResponder *)self _writingToolsViewController];

  [(UIResponder *)self _setWritingToolsViewController:0];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 systemInputAssistantViewController];
  [v5 setInputAssistantButtonItemsForResponder:self];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 writingToolsDidEnd];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 didDismissWritingTools];
  }

  v7 = [(UIResponder *)self __wt_writingToolsCoordinator];
  [v7 _didDismissWritingTools];
}

- (void)_setWritingToolsWantsKeyboardSuppression:(BOOL)a3 suppressAssistant:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 wantsAssistantWhileSuppressingKeyboard];

    v10 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v10 setWantsAssistantWhileSuppressingKeyboard:!v4];

    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    value = [v11 vendKeyboardSuppressionAssertionForReason:@"WritingTools" type:0];

    objc_setAssociatedObject(self, &_MergedGlobals_1399, value, 1);
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v13 = [v12 useVisualModeWindowedUI];

    if (v13 && (v9 & 1) == 0 && !v4)
    {
      v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v14 forceReloadInputViews];
    }

    v15 = [(UIResponder *)self _selectionDisplayInteraction];
    v16 = [v15 obtainGhostCursorAssertionForReason:@"WritingTools"];

    objc_setAssociatedObject(self, &unk_1ED4A2F99, v16, 1);
  }

  else
  {
    [v7 setWantsAssistantWhileSuppressingKeyboard:0];

    objc_setAssociatedObject(self, &_MergedGlobals_1399, 0, 1);
    objc_setAssociatedObject(self, &unk_1ED4A2F99, 0, 1);
    v17 = +[UIKeyboardImpl activeInstance];
    [v17 generateCandidates];

    v18 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v18 restoreKeyboardIfNeeded];

    value = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v16 = [value containerRootController];
    [v16 clearExternalTrackingInfo];
  }
}

- (id)_viewControllerForWritingToolsSource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIResponder *)self _viewControllerForAncestor];
    goto LABEL_5;
  }

  v5 = [(UIResponder *)self textInputView];
  v4 = [v5 _viewControllerForAncestor];

LABEL_7:
  v6 = [v4 view];
  v7 = [v6 window];
  v8 = [v7 rootViewController];

  v9 = v4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v9;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = v11;
    while (1)
    {
      if ([v10 containsObject:v14])
      {

        v14 = 0;
        v13 = 0;
      }

      [v10 addObject:v14];
      v15 = [v14 _rootAncestorViewController];
      if (v15 == v8)
      {
        break;
      }

      v16 = [v14 _ancestorViewControllerIsInPopover];

      if (v16)
      {
        goto LABEL_19;
      }

      v17 = [v14 view];
      v18 = [v17 superview];

      if (!v18)
      {
        v15 = v14;
        v14 = v13;
        v13 = 0;
        break;
      }

      v19 = [v18 _viewControllerForAncestor];

      v13 = 0;
      v20 = 0;
      v14 = v19;
      if (!v19)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

LABEL_20:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v8;
  }

  v22 = v21;

  return v21;
}

- (void)_setWritingToolsInputDashboardViewController:(id)a3
{
  objc_setAssociatedObject(self, &kWritingToolsInputDashboardViewControllerKey, a3, 1);
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 systemInputAssistantViewController];
  [v5 setInputAssistantButtonItemsForResponder:self];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateAssistantView];
}

- (UIPredictiveViewController)_smartReplyFeedbackInputDashboardViewController
{
  v3 = objc_getAssociatedObject(self, &kSmartReplyFeedbackInputDashboardViewControllerKey);
  if (!v3)
  {
    v3 = objc_alloc_init(_UISmartReplyFeedbackInputDashboardViewController);
    [(UIResponder *)self _setSmartReplyFeedbackInputDashboardViewController:v3];
  }

  return v3;
}

- (void)_setSmartReplyFeedbackInputDashboardViewController:(id)a3
{
  objc_setAssociatedObject(self, &kSmartReplyFeedbackInputDashboardViewControllerKey, a3, 1);
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 systemInputAssistantViewController];
  [v5 setInputAssistantButtonItemsForResponder:self];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateAssistantView];
}

- (id)_textSuggestionsForWritingTools
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = _UINSLocalizedStringWithDefaultValue(@"Proofread", @"Proofread");
  v4 = [UITextSuggestionWithAction textSuggestionWithInputText:v3 searchText:v3 customInfoType:0x10000];
  [v4 setTarget:self];
  [v4 setAction:sel__startProofreadingFromCandidateBar];
  v5 = [UIImage systemImageNamed:@"text.magnifyingglass"];
  [v4 setImage:v5];

  v6 = _UINSLocalizedStringWithDefaultValue(@"Rewrite", @"Rewrite");
  v7 = [UITextSuggestionWithAction textSuggestionWithInputText:v6 searchText:v6 customInfoType:0x10000];
  [v7 setTarget:self];
  [v7 setAction:sel__startRewritingFromCandidateBar];
  v8 = [UIImage _systemImageNamed:@"pencil.arrow.trianglehead.clockwise"];
  [v7 setImage:v8];

  v9 = [UITextSuggestionWithAction textSuggestionWithInputText:0 searchText:0 customInfoType:0x10000];
  [v9 setTarget:self];
  [v9 setAction:sel_showWritingTools_];
  v10 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
  v11 = [UIImage _systemImageNamed:@"_gm" withConfiguration:v10];
  [v9 setImage:v11];

  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  return v12;
}

- (id)_assistantBarButtonItemForWritingToolsWithStyle:(int64_t)a3
{
  v5 = [(UIResponder *)self _writingToolsViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIResponder *)self _writingToolsViewController];
    v8 = [v7 assistantBarButtonItemWithStyle:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setWritingToolsViewController:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _firstResponder];
  objc_setAssociatedObject(v5, &kWritingToolsViewControllerForFirstResponderKey, v4, 1);

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 generateCandidates];
}

- (id)_responderThatRequestedWritingTools
{
  v2 = [(UIResponder *)self _viewControllerForWritingToolsSource];
  v3 = objc_getAssociatedObject(v2, &kResponderThatRequestedWritingTools);

  return v3;
}

- (void)_setSuppressWritingToolsForRemoteKeyboard:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIResponder *)self _writingToolsViewController];
  [v4 setSuppressWritingToolsForRemoteKeyboard:v3];
}

- (void)_setShouldEndWritingToolsOnResign:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  objc_setAssociatedObject(self, &kShouldEndWritingToolsOnResign, v4, 1);
}

- (void)_startProofreadingFromCandidateBar
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = +[_UISignalAnalytics getIASignalWritingToolsPanelRequested];
  v4 = +[_UISignalAnalytics getIAPayloadKeyWritingToolsUI];
  v7 = v4;
  v5 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUICandidateBar];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [_UISignalAnalytics sendWritingToolsSignal:v3 payload:v6];

  [(UIResponder *)self _startWritingToolsWithTool:@"WTUIRequestedToolProofreading" prompt:0 sender:0];
}

- (void)_startRewritingFromCandidateBar
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = +[_UISignalAnalytics getIASignalWritingToolsPanelRequested];
  v4 = +[_UISignalAnalytics getIAPayloadKeyWritingToolsUI];
  v7 = v4;
  v5 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUICandidateBar];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [_UISignalAnalytics sendWritingToolsSignal:v3 payload:v6];

  [(UIResponder *)self _startWritingToolsWithTool:@"WTUIRequestedToolRewriting" prompt:0 sender:0];
}

- (CGRect)_selectionRectForWritingTools
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [(UIResponder *)self _textInputForWritingTools];
  if ([v2 conformsToProtocolCached:&unk_1F016C810])
  {
    v3 = v2;
    v4 = [v3 selectedTextRange];
    v5 = [v3 selectionRectsForRange:v4];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v68;
      do
      {
        v14 = 0;
        do
        {
          if (*v68 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v67 + 1) + 8 * v14) rect];
          v88.origin.x = v15;
          v88.origin.y = v16;
          v88.size.width = v17;
          v88.size.height = v18;
          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = height;
          v76 = CGRectUnion(v75, v88);
          x = v76.origin.x;
          y = v76.origin.y;
          width = v76.size.width;
          height = v76.size.height;
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v12);
    }

    v19 = [v3 textInputView];
    [v19 bounds];
    v89.origin.x = v20;
    v89.origin.y = v21;
    v89.size.width = v22;
    v89.size.height = v23;
    v77.origin.x = x;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    v78 = CGRectIntersection(v77, v89);
    v24 = v78.origin.x;
    v25 = v78.origin.y;
    v26 = v78.size.width;
    v27 = v78.size.height;
  }

  else
  {
    if ([v2 conformsToProtocolCached:&unk_1F016CC30])
    {
      v3 = v2;
      v28 = [v3 webSelectionRects];
      v30 = *MEMORY[0x1E695F050];
      v29 = *(MEMORY[0x1E695F050] + 8);
      v32 = *(MEMORY[0x1E695F050] + 16);
      v31 = *(MEMORY[0x1E695F050] + 24);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v10 = v28;
      v33 = [v10 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v64;
        do
        {
          v36 = 0;
          do
          {
            if (*v64 != v35)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v63 + 1) + 8 * v36) rect];
            v90.origin.x = v37;
            v90.origin.y = v38;
            v90.size.width = v39;
            v90.size.height = v40;
            v79.origin.x = v30;
            v79.origin.y = v29;
            v79.size.width = v32;
            v79.size.height = v31;
            v80 = CGRectUnion(v79, v90);
            v30 = v80.origin.x;
            v29 = v80.origin.y;
            v32 = v80.size.width;
            v31 = v80.size.height;
            ++v36;
          }

          while (v34 != v36);
          v34 = [v10 countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v34);
      }

      v41 = v3;
    }

    else
    {
      v3 = [v2 selectedTextRange];
      v42 = [v2 selectionRectsForRange:v3];
      v30 = *MEMORY[0x1E695F050];
      v29 = *(MEMORY[0x1E695F050] + 8);
      v32 = *(MEMORY[0x1E695F050] + 16);
      v31 = *(MEMORY[0x1E695F050] + 24);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v10 = v42;
      v43 = [v10 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v60;
        do
        {
          v46 = 0;
          do
          {
            if (*v60 != v45)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v59 + 1) + 8 * v46) rect];
            v47 = v81.origin.x;
            v48 = v81.origin.y;
            v49 = v81.size.width;
            v50 = v81.size.height;
            if (CGRectGetWidth(v81) > 0.0)
            {
              v82.origin.x = v47;
              v82.origin.y = v48;
              v82.size.width = v49;
              v82.size.height = v50;
              if (CGRectGetHeight(v82) > 0.0)
              {
                v83.origin.x = v30;
                v83.origin.y = v29;
                v83.size.width = v32;
                v83.size.height = v31;
                v91.origin.x = v47;
                v91.origin.y = v48;
                v91.size.width = v49;
                v91.size.height = v50;
                v84 = CGRectUnion(v83, v91);
                v30 = v84.origin.x;
                v29 = v84.origin.y;
                v32 = v84.size.width;
                v31 = v84.size.height;
              }
            }

            ++v46;
          }

          while (v44 != v46);
          v44 = [v10 countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v44);
      }

      v41 = v2;
    }

    v4 = [v41 textInputView];
    [v4 bounds];
    v92.origin.x = v51;
    v92.origin.y = v52;
    v92.size.width = v53;
    v92.size.height = v54;
    v85.origin.x = v30;
    v85.origin.y = v29;
    v85.size.width = v32;
    v85.size.height = v31;
    v86 = CGRectIntersection(v85, v92);
    v24 = v86.origin.x;
    v25 = v86.origin.y;
    v26 = v86.size.width;
    v27 = v86.size.height;
  }

  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (BOOL)_shouldShowWritingToolsInCandidateBar
{
  v3 = [(UIResponder *)self _textInputForWritingTools];
  if (objc_opt_respondsToSelector())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__UIResponder_WritingToolsSupport___shouldShowWritingToolsInCandidateBar__block_invoke;
    aBlock[3] = &unk_1E712BD38;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v5 = [v3 selectedTextRange];
    if ([v5 _isRanged])
    {
      v6 = v4[2](v4, v3, v5);
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v7 = [v5 end];
      v8 = [v3 positionFromPosition:v7 offset:-1];
      if (v8)
      {
        v9 = [v3 textRangeFromPosition:v8 toPosition:v7];
        if (v9)
        {
          v10 = [v3 textInRange:v9];
          v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v29 = v10;
          v12 = [v10 rangeOfCharacterFromSet:v11];
          v14 = v13;

          v6 = 0;
          if (v12 != 0x7FFFFFFFFFFFFFFFLL && v14)
          {
            v15 = [v3 tokenizer];
            v16 = [v5 end];
            v17 = [v15 positionFromPosition:v16 toBoundary:4 inDirection:0];

            if (v17)
            {
              v18 = [v5 end];
              v28 = v17;
              v19 = [v3 textRangeFromPosition:v18 toPosition:v17];

              if (v19)
              {
                v27 = v19;
                v20 = [v3 textInRange:v19];
                if ([v20 length] && -[UIResponder _stringContainsMinimumNumberOfWords:minimumNumberOfWords:](self, v20, 1uLL))
                {
                  v21 = v15;
                  v6 = 0;
                }

                else
                {
                  v23 = [v15 positionFromPosition:v8 toBoundary:4 inDirection:1];
                  v21 = v15;
                  if (v23)
                  {
                    v24 = [v3 textRangeFromPosition:v23 toPosition:v8];
                    if (v24)
                    {
                      v25 = v24;
                      v26 = v4[2](v4, v3, v24);
                      v24 = v25;
                      v6 = v26;
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
                }

                v19 = v27;
              }

              else
              {
                v21 = v15;
                v6 = 0;
              }

              v17 = v28;
            }

            else
            {
              v21 = v15;
              v6 = 0;
            }
          }
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

uint64_t __73__UIResponder_WritingToolsSupport___shouldShowWritingToolsInCandidateBar__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 attributedTextInRange:v5];

LABEL_5:
    v9 = [(UIResponder *)*(a1 + 32) _shouldDisplayWritingToolsForAttributedString:v7];

    return v9;
  }

  v8 = [v6 textInRange:v5];

  if (v8)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
    v6 = v8;
    goto LABEL_5;
  }

  return 0;
}

- (uint64_t)_shouldDisplayWritingToolsForAttributedString:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      v5 = [v4 string];
      a1 = [(UIResponder *)a1 _stringContainsMinimumNumberOfWords:v5 minimumNumberOfWords:5uLL];

      if (a1)
      {
        v11 = 0;
        v12 = &v11;
        v13 = 0x2050000000;
        v6 = qword_1ED4A2FB0;
        v14 = qword_1ED4A2FB0;
        if (!qword_1ED4A2FB0)
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __getTCTextCompositionAssistantClass_block_invoke;
          v10[3] = &unk_1E70F2F20;
          v10[4] = &v11;
          __getTCTextCompositionAssistantClass_block_invoke(v10);
          v6 = v12[3];
        }

        v7 = v6;
        _Block_object_dispose(&v11, 8);
        v8 = [v6 sharedAssistant];
        a1 = [v8 fastCanLikelyHandleAttributedString:v4 range:{0, objc_msgSend(v4, "length")}];
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (BOOL)_stringContainsMinimumNumberOfWords:(unint64_t)a3 minimumNumberOfWords:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__UIResponder_WritingToolsSupport___stringContainsMinimumNumberOfWords_minimumNumberOfWords___block_invoke;
    v10[3] = &unk_1E712BD88;
    v10[4] = &v11;
    v10[5] = a3;
    [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v10}];
    v8 = v12[3] >= a3;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(UIResponder *)self _textInputForWritingTools];
  if ([v5 conformsToProtocolCached:&unk_1F016C810])
  {
    v6 = objc_opt_new();
    [v6 setGranularityCount:1];
    [v6 setSurroundingGranularity:4];
    [v6 setFlags:1];
    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 inputDelegateManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101__UIResponder_WritingToolsSupport___webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E712BD60;
    v9[4] = self;
    v10 = v4;
    [v8 requestDocumentContext:v6 completionHandler:v9];
  }
}

void __101__UIResponder_WritingToolsSupport___webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 contextBefore];
  if (![v3 length] || ((objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "rangeOfCharacterFromSet:", v4), v7 = v6, v4, v5 != 0x7FFFFFFFFFFFFFFFLL) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v15 contextAfter];
    v10 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v11 = [v9 rangeOfCharacterFromSet:v10];
    v13 = v12;

    if ([v9 length] && (v11 || v13 != 1))
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
      [(UIResponder *)*(a1 + 32) _shouldDisplayWritingToolsForAttributedString:v14];
      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t __93__UIResponder_WritingToolsSupport___stringContainsMinimumNumberOfWords_minimumNumberOfWords___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  if (v8 >= *(result + 40))
  {
    *a7 = 1;
  }

  return result;
}

- (void)_playInvocationAnimation
{
  [(UIResponder *)self _setCommonUIInvocationAnimationNeeded:1];
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v3 updateRenderConfigForResponder:self];

  v4[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UIResponder_WritingToolsSupport___playInvocationAnimation__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__UIResponder_WritingToolsSupport___playInvocationAnimation__block_invoke_2;
  v4[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:v5 animations:v4 completion:3.0];
}

void __60__UIResponder_WritingToolsSupport___playInvocationAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCommonUIInvocationAnimationNeeded:0];
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 updateRenderConfigForResponder:*(a1 + 32)];
}

- (BOOL)_commonUIInvocationAnimationNeeded
{
  v2 = objc_getAssociatedObject(self, &kCommonUIInvocationAnimationNeededKey);
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setCommonUIInvocationAnimationNeeded:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  objc_setAssociatedObject(self, &kCommonUIInvocationAnimationNeededKey, v4, 1);
}

@end