@interface UIResponder
+ (BOOL)_callBecomeFirstResponder:(id)responder withIntent:(unint64_t)intent;
+ (BOOL)_callResignFirstResponder:(id)responder withIntent:(unint64_t)intent;
+ (BOOL)_isWritingToolsAvailable;
+ (id)_globalFirstResponder;
+ (id)objectWithRestorationIdentifierPath:(id)path;
+ (unint64_t)_currentChangeIntent;
+ (void)_cleanupAllStateRestorationTables;
+ (void)_cleanupStateRestorationObjectIdentifierTrackingTables;
+ (void)_setRestoredIdentifierPathForObject:(id)object identifierPath:(id)path;
+ (void)_updateStateRestorationIdentifierMap;
+ (void)clearTextInputContextIdentifier:(NSString *)identifier;
- (BOOL)_alwaysRequireInlineCandidateView;
- (BOOL)_canBecomeFirstResponder;
- (BOOL)_canChangeFirstResponder:(id)responder toResponder:(id)toResponder;
- (BOOL)_commonUIInvocationAnimationNeeded;
- (BOOL)_conformsToProtocolBETextInput;
- (BOOL)_conformsToProtocolUIAsyncTextInputClient;
- (BOOL)_conformsToProtocolUIKeyInput;
- (BOOL)_containedInAbsoluteResponderChain;
- (BOOL)_containsResponder:(id)responder;
- (BOOL)_disableAutomaticKeyboardBehavior;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)_disallowsPresentationOfKeyboardShortcutHUD;
- (BOOL)_enableAutomaticKeyboardPressDone;
- (BOOL)_finishResignFirstResponderFromBecomeFirstResponder:(BOOL)responder;
- (BOOL)_handleActivityItemsConfigurationCanPerformAction:(SEL)action sender:(id)sender;
- (BOOL)_handleActivityItemsConfigurationDoesNotHandleSelector:(SEL)selector;
- (BOOL)_handleActivityItemsConfigurationShare:(id)share;
- (BOOL)_handleActivityItemsConfigurationShare:(id)share activityItemsConfiguration:(id)configuration;
- (BOOL)_hasMarkedText;
- (BOOL)_hasMarkedTextOrRangedSelection;
- (BOOL)_isDisplayingWritingToolsSessionInUCB;
- (BOOL)_isEditableForWritingTools;
- (BOOL)_isEmptySelection;
- (BOOL)_isHardwareKeyboardBehaviorEnabled;
- (BOOL)_isPinningInputViews;
- (BOOL)_isTransitioningFromView:(id)view;
- (BOOL)_isWritingToolsActive;
- (BOOL)_nextResponderChainContainsResponder:(id)responder;
- (BOOL)_ownsInputAccessoryView;
- (BOOL)_range:(id)_range containsRange:(id)range;
- (BOOL)_range:(id)_range intersectsRange:(id)range;
- (BOOL)_range:(id)_range isEqualToRange:(id)range;
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
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine;
- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)action forText:(id)text checkAutocorrection:(BOOL)autocorrection;
- (BOOL)_shouldShowWritingToolsInCandidateBar;
- (BOOL)_shouldSkipKeyboardShortcutLeaf:(id)leaf forMovement:(int64_t)movement;
- (BOOL)_stringContainsMinimumNumberOfWords:(unint64_t)words minimumNumberOfWords:;
- (BOOL)_supportsImagePaste;
- (BOOL)_supportsWritingTools;
- (BOOL)_usesAsynchronousProtocol;
- (BOOL)_writingToolsWantsKeyboardSuppression;
- (BOOL)becomeFirstResponder;
- (BOOL)canPasteItemProviders:(id)providers;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isEditable;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldReloadInputViews;
- (CGRect)_caretRect;
- (CGRect)_lastRectForRange:(id)range;
- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)window;
- (CGRect)_responderExternalTouchRectForWindow:(id)window;
- (CGRect)_responderSelectionRectForWindow:(id)window;
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
- (_NSRange)_nsrangeForTextRange:(id)range;
- (_NSRange)_selectedNSRange;
- (_NSRange)_selectedRangeWithinMarkedText;
- (_WORD)_storedActivityItemsConfiguration;
- (id)__textInteractionFromAssistant;
- (id)__wt_writingToolsCoordinator;
- (id)_additionalTextInputLocales;
- (id)_assistantBarButtonItemForWritingToolsWithStyle:(int64_t)style;
- (id)_captureOverrideState;
- (id)_clampedpositionFromPosition:(id)position offset:(int)offset;
- (id)_currentOverrideClient;
- (id)_currentOverrideHost;
- (id)_effectiveActivityItemsConfigurationAtLocation:(CGPoint)location inCoordinateSpace:(id)space sender:(id)sender;
- (id)_effectiveActivityItemsConfigurationForSender:(id)sender;
- (id)_findBoundaryPositionClosestToPosition:(id)position withGranularity:(int64_t)granularity;
- (id)_findDocumentBoundaryFromPosition:(id)position;
- (id)_findPleasingWordBoundaryFromPosition:(id)position;
- (id)_firstNonnullActivityItemsConfigurationInResponderChainForLocation:(CGPoint)location inCoordinateSpace:(id)space skipPresentingViewControllers:(BOOL)controllers sender:(id)sender target:(id *)target;
- (id)_firstResponder;
- (id)_fontForCaretSelection;
- (id)_fullRange;
- (id)_fullText;
- (id)_intersectionOfRange:(id)range andRange:(id)andRange;
- (id)_keyboardResponder;
- (id)_keyboardShortcutInvocationForKeyboardEvent:(id)event;
- (id)_moveDown:(BOOL)down withHistory:(id)history;
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveUp:(BOOL)up withHistory:(id)history;
- (id)_nextResponderOverride;
- (id)_nextResponderThatCanBecomeFirstResponder;
- (id)_normalizedStringForRangeComparison:(id)comparison;
- (id)_overrideHost;
- (id)_positionAtStartOfWords:(unint64_t)words beforePosition:(id)position;
- (id)_positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset withAffinityDownstream:(BOOL)downstream;
- (id)_positionFromPosition:(id)position pastTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (id)_positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)_primaryContentResponder;
- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)delta;
- (id)_rangeOfSmartSelectionIncludingRange:(id)range;
- (id)_rangeOfText:(id)text endingAtPosition:(id)position;
- (id)_rangeOfTextUnit:(int64_t)unit enclosingPosition:(id)position;
- (id)_rangeSpanningTextUnit:(int64_t)unit andPosition:(id)position;
- (id)_responderForEditing;
- (id)_responderSelectionContainerViewForResponder:(id)responder;
- (id)_responderSelectionImage;
- (id)_responderThatRequestedWritingTools;
- (id)_responderWindow;
- (id)_restorationIdentifierPath;
- (id)_selectableText;
- (id)_selectionDisplayInteraction;
- (id)_setHistory:(id)history withExtending:(BOOL)extending withAnchor:(int)anchor withAffinityDownstream:(BOOL)downstream;
- (id)_setSelectionRangeWithHistory:(id)history;
- (id)_showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
- (id)_showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
- (id)_showServiceForType:(int64_t)type withContext:(id)context;
- (id)_targetCanPerformBlock:(id)block;
- (id)_textColorForCaretSelection;
- (id)_textInputForWritingTools;
- (id)_textRangeFromDirectionalRange:(id)range;
- (id)_textRangeFromNSRange:(_NSRange)range;
- (id)_textServicesResponderProxy;
- (id)_textSuggestionsForWritingTools;
- (id)_trailingPredictiveCandidateForWritingTools;
- (id)_ui_findNavigatorResponder;
- (id)_underlineRectsByDocumentLineForSelectionRange:(id)range;
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
- (int)_indexForTextPosition:(id)position;
- (int64_t)__wt_writingToolsBehavior;
- (int64_t)_availableTextServices;
- (int64_t)_dataOwnerForCopy;
- (int64_t)_dataOwnerForPaste;
- (int64_t)_dragDataOwner;
- (int64_t)_dropDataOwner;
- (int64_t)_opposingDirectionFromDirection:(int64_t)direction;
- (int64_t)_selectionAffinity;
- (int64_t)_textInputSource;
- (uint64_t)_shouldDisplayWritingToolsForAttributedString:(uint64_t)string;
- (unsigned)_characterInRelationToCaretSelection:(int)selection;
- (unsigned)_characterInRelationToPosition:(id)position amount:(int)amount;
- (unsigned)_characterInRelationToRangedSelection:(int)selection;
- (void)__createInteractionAssistantIfNecessaryWithMode:(int64_t)mode;
- (void)__prepareInteractionAssistantIfNecessary;
- (void)__tearDownInteractionAssistantIfNecessary;
- (void)_addShortcut:(id)shortcut;
- (void)_asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler:(id)handler;
- (void)_beginPinningInputViews;
- (void)_checkIsText:(BOOL *)text isSecure:(BOOL *)secure isEditable:(BOOL *)editable isFormatted:(BOOL *)formatted;
- (void)_clearOverrideHost;
- (void)_clearOverrideNextResponder;
- (void)_clearRestorableResponderStatus;
- (void)_completeForwardingTouches:(id)touches phase:(int64_t)phase event:(id)event index:(unint64_t)index;
- (void)_define:(id)_define;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_deleteByWord;
- (void)_deleteForwardAndNotify:(BOOL)notify;
- (void)_deleteForwardByWord;
- (void)_deleteTextRange:(id)range;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_endPinningInputViews;
- (void)_endWritingTools;
- (void)_endWritingToolsIfNecessaryForResignFirstResponder;
- (void)_enumerateKeyboardShortcutsInChainWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)out;
- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)selection;
- (void)_extendCurrentSelection:(int)selection;
- (void)_handleGameControllerEvent:(id)event;
- (void)_handleKeyEvent:(__GSEvent *)event;
- (void)_handleKeyUIEvent:(id)event;
- (void)_insertItemFromProvider:(id)provider completionHandler:(id)handler;
- (void)_lookup:(id)_lookup;
- (void)_moveCurrentSelection:(int)selection;
- (void)_notifyFocusEngine;
- (void)_overrideNextResponderWithResponder:(id)responder forType:(int64_t)type;
- (void)_playInvocationAnimation;
- (void)_preserveResponderOverridesWhilePerforming:(id)performing;
- (void)_rebuildStateRestorationIdentifierPath;
- (void)_reloadInputViewsFromFirstResponder:(BOOL)responder;
- (void)_replaceCurrentWordWithText:(id)text;
- (void)_replaceDocumentWithText:(id)text;
- (void)_restoreOverrideState:(id)state;
- (void)_scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)_selectAll;
- (void)_selectionDidUpdate;
- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_setCaretSelectionAtEndOfSelection;
- (void)_setCommonUIInvocationAnimationNeeded:(BOOL)needed;
- (void)_setDataOwnerForCopy:(int64_t)copy;
- (void)_setDataOwnerForPaste:(int64_t)paste;
- (void)_setDragDataOwner:(int64_t)owner;
- (void)_setDropDataOwner:(int64_t)owner;
- (void)_setFirstResponder:(id)responder;
- (void)_setGestureRecognizers;
- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_setSelectedTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
- (void)_setSelectionDisplayInteraction:(id)interaction;
- (void)_setSelectionToPosition:(id)position;
- (void)_setShouldEndWritingToolsOnResign:(BOOL)resign;
- (void)_setSmartReplyFeedbackInputDashboardViewController:(id)controller;
- (void)_setStoredActivityItemsConfiguration:(_WORD *)configuration;
- (void)_setSuppressSoftwareKeyboard:(BOOL)keyboard;
- (void)_setSuppressWritingToolsForRemoteKeyboard:(BOOL)keyboard;
- (void)_setWritingToolsInputDashboardViewController:(id)controller;
- (void)_setWritingToolsViewController:(id)controller;
- (void)_setWritingToolsWantsKeyboardSuppression:(BOOL)suppression suppressAssistant:(BOOL)assistant;
- (void)_share:(id)_share;
- (void)_startProofreadingFromCandidateBar;
- (void)_startRewritingFromCandidateBar;
- (void)_startWritingToolsWithTool:(id)tool prompt:(id)prompt entryPoint:(id)point inputContextHistory:(id)history sender:(id)sender;
- (void)_translate:(id)_translate;
- (void)_transpose;
- (void)_unmarkText;
- (void)_updateSelectedRects:(id)rects byTrimmingWhitespaceInRange:(id)range inDocument:(id)document;
- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
- (void)_webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler:(id)handler;
- (void)_windowBecameKey;
- (void)_writingToolsDidEnd;
- (void)captureTextFromCamera:(id)sender;
- (void)dealloc;
- (void)doesNotRecognizeSelector:(SEL)selector;
- (void)pasteItemProviders:(id)providers;
- (void)promptBackgroundViewDidUpdateConfiguration:(id)configuration;
- (void)reloadInputViews;
- (void)reloadInputViewsWithoutReset;
- (void)setPasteConfiguration:(id)configuration;
- (void)setRestorationIdentifier:(id)identifier;
- (void)setUserActivity:(NSUserActivity *)userActivity;
- (void)set_textInputSource:(int64_t)source;
- (void)showWritingTools:(id)tools;
- (void)validateCommand:(UICommand *)command;
@end

@implementation UIResponder

- (BOOL)resignFirstResponder
{
  [(UIResponder *)self _clearBecomeFirstResponderWhenCapable];
  _firstResponder = [(UIResponder *)self _firstResponder];
  if (_firstResponder == self && [(UIResponder *)self canResignFirstResponder])
  {
    [(UIResponder *)self _endWritingToolsIfNecessaryForResignFirstResponder];
    _responderWindow = [(UIResponder *)self _responderWindow];
    if ([_responderWindow _isSettingFirstResponder])
    {
      v5 = [(UIResponder *)self _finishResignFirstResponderFromBecomeFirstResponder:1];
    }

    else
    {
      [_responderWindow _setIsSettingFirstResponder:1];
      nextFirstResponder = [(UIResponder *)self nextFirstResponder];
      if ([_responderWindow _wantsResponderWithoutKeyboard] && -[UIResponder _requiresKeyboardWhenFirstResponder](nextFirstResponder, "_requiresKeyboardWhenFirstResponder"))
      {
        do
        {
          v7NextFirstResponder = [(UIResponder *)nextFirstResponder nextFirstResponder];

          nextFirstResponder = v7NextFirstResponder;
        }

        while ([(UIResponder *)v7NextFirstResponder _requiresKeyboardWhenFirstResponder]);
      }

      else
      {
        v7NextFirstResponder = nextFirstResponder;
      }

      _responderWindow2 = [(UIResponder *)self _responderWindow];
      windowScene = [_responderWindow2 windowScene];
      keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

      if (keyboardSceneDelegate)
      {
        [keyboardSceneDelegate setKeyWindowCandidate:0];
      }

      if (v7NextFirstResponder == self || ![(UIResponder *)v7NextFirstResponder becomeFirstResponder]|| [(UIResponder *)self isFirstResponder])
      {
        [(UIResponder *)self _finishResignFirstResponder];
        [UIApp _updateSerializableKeyCommandsForResponder:0];
      }

      [(UIResponder *)self _notifyFocusEngine];
      [_responderWindow _setIsSettingFirstResponder:0];

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
  nextResponder = [(UIResponder *)self nextResponder];
  _responderWindow = [nextResponder _responderWindow];

  return _responderWindow;
}

- (id)_nextResponderOverride
{
  if (*&self->_responderFlags)
  {
    v3 = objc_getAssociatedObject(self, &_MergedGlobals_1256);
    target = [v3 target];
  }

  else
  {
    target = 0;
  }

  return target;
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
  _userActivity = [(UIResponder *)self _userActivity];
  if (_userActivity)
  {
    v4 = objc_autoreleasePoolPush();
    [UIApp _removeResponder:self forUserActivity:_userActivity];
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

  _responderWindow = [(UIResponder *)self _responderWindow];
  windowScene = [_responderWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  _isSettingFirstResponder = [_responderWindow _isSettingFirstResponder];
  if ([_responderWindow _suppressFirstResponderWhenUserInteractionDisabled] && (objc_msgSend(_responderWindow, "isUserInteractionEnabled") & 1) == 0)
  {
    [_responderWindow _setLastFirstResponder:self];
    v13 = 0;
    goto LABEL_51;
  }

  selfCopy = self;
  _firstResponder = [(UIResponder *)selfCopy _firstResponder];
  firstResponder = [(UIResponder *)selfCopy firstResponder];
  v12 = firstResponder;
  v13 = 1;
  if (_firstResponder != selfCopy && firstResponder != selfCopy)
  {
    if (firstResponder)
    {
      v14 = firstResponder;
    }

    else
    {
      v14 = _firstResponder;
    }

    v15 = v14;
    if ((_isSettingFirstResponder & 1) == 0)
    {
      [_responderWindow _setIsSettingFirstResponder:1];
    }

    localAuthenticationObserver = [keyboardSceneDelegate localAuthenticationObserver];
    [localAuthenticationObserver willTryToBecomeFirstResponder:selfCopy];
    if (v15 && ![v15 _canChangeFirstResponder:v15 toResponder:selfCopy] || !-[UIResponder _canBecomeFirstResponder](selfCopy, "_canBecomeFirstResponder"))
    {
      goto LABEL_44;
    }

    [keyboardSceneDelegate _beginIgnoringReloadInputViews];
    if (_isSettingFirstResponder)
    {
      [v15 _finishResignFirstResponder];
    }

    if (_responderWindow && v15 && ([v15 _window], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != _responderWindow) && (objc_msgSend(v15, "_window"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "_isTextEffectsWindow"), v18, (v19 & 1) == 0))
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

      [(UIResponder *)selfCopy _setFirstResponder:0];

      [(UIResponder *)selfCopy _writingToolsResponderBecomingFirstResponder:selfCopy];
      v15 = 0;
      v20 = 1;
    }

    else
    {
      [(UIResponder *)selfCopy _writingToolsResponderBecomingFirstResponder:selfCopy];
      v20 = v15 == 0;
      if (v15)
      {
        v21 = _isSettingFirstResponder;
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
          _endIgnoringReloadInputViews = [keyboardSceneDelegate _endIgnoringReloadInputViews];
          [(UIResponder *)selfCopy _setSuppressWritingToolsForRemoteKeyboard:0];
          if (v22)
          {
            v13 = 1;
            [(UIResponder *)selfCopy _reloadInputViewsFromFirstResponder:1];
            [UIApp _updateSerializableKeyCommandsForResponder:selfCopy];
LABEL_45:
            [localAuthenticationObserver didTryToBecomeFirstResponder:selfCopy];
            if ((_isSettingFirstResponder & 1) == 0)
            {
              [_responderWindow _setIsSettingFirstResponder:0];
            }

            goto LABEL_48;
          }

          if (_endIgnoringReloadInputViews)
          {
            [keyboardSceneDelegate forceReloadInputViews];
          }

LABEL_44:
          v13 = 0;
          goto LABEL_45;
        }
      }
    }

    if ([(UIResponder *)selfCopy _containedInAbsoluteResponderChain])
    {
      [(UIResponder *)selfCopy _becomeFirstResponder];
      [(UIResponder *)selfCopy _notifyFocusEngine];
      v22 = 1;
    }

    else
    {
      _becomeFirstResponderWhenPossible = [(UIResponder *)selfCopy _becomeFirstResponderWhenPossible];
      if ((_becomeFirstResponderWhenPossible | v20))
      {
        v22 = _becomeFirstResponderWhenPossible;
      }

      else
      {
        if (![(UIResponder *)selfCopy _disableAutomaticKeyboardBehavior])
        {
          [keyboardSceneDelegate _reloadInputViewsForResponder:0];
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
  [self _cleanupStateRestorationObjectIdentifierTrackingTables];

  qword_1ED4A07D0 = 0;
  qword_1ED4A07B0 = 0;
}

+ (void)_cleanupStateRestorationObjectIdentifierTrackingTables
{
  qword_1ED4A07C8 = 0;

  [self _stopDeferredTrackingObjectsWithIdentifiers];
}

- (id)firstResponder
{
  nextResponder = [(UIResponder *)self nextResponder];
  firstResponder = [nextResponder firstResponder];

  return firstResponder;
}

- (BOOL)_canBecomeFirstResponder
{
  canBecomeFirstResponder = [(UIResponder *)self canBecomeFirstResponder];
  if (canBecomeFirstResponder)
  {
    LOBYTE(canBecomeFirstResponder) = [UIApp _disableBecomeFirstResponder] ^ 1;
  }

  return canBecomeFirstResponder;
}

- (id)_firstResponder
{
  nextResponder = [(UIResponder *)self nextResponder];
  _firstResponder = [nextResponder _firstResponder];

  return _firstResponder;
}

- (BOOL)isFirstResponder
{
  selfCopy = self;
  _firstResponder = [(UIResponder *)self _firstResponder];
  LOBYTE(selfCopy) = _firstResponder == selfCopy;

  return selfCopy;
}

- (BOOL)_disableAutomaticKeyboardBehavior
{
  nextResponder = [(UIResponder *)self nextResponder];
  _disableAutomaticKeyboardBehavior = [nextResponder _disableAutomaticKeyboardBehavior];

  return _disableAutomaticKeyboardBehavior;
}

- (BOOL)_containedInAbsoluteResponderChain
{
  nextResponder = [(UIResponder *)self nextResponder];
  _containedInAbsoluteResponderChain = [nextResponder _containedInAbsoluteResponderChain];

  return _containedInAbsoluteResponderChain;
}

- (id)_selectableText
{
  selfCopy = self;
  _textSelectingContainer = [(UIResponder *)self _textSelectingContainer];
  v4 = _textSelectingContainer;
  if (_textSelectingContainer)
  {
    selfCopy = _textSelectingContainer;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)_writingToolsViewController
{
  _firstResponder = [(UIResponder *)self _firstResponder];
  v3 = objc_getAssociatedObject(_firstResponder, &kWritingToolsViewControllerForFirstResponderKey);

  return v3;
}

- (NSUndoManager)undoManager
{
  nextResponder = [(UIResponder *)self nextResponder];
  v4 = nextResponder;
  undoManager = 0;
  if (nextResponder && nextResponder != self)
  {
    undoManager = [(UIResponder *)nextResponder undoManager];
  }

  return undoManager;
}

- (BOOL)_hasMarkedText
{
  _selectableText = [(UIResponder *)self _selectableText];
  if ([_selectableText _usesAsynchronousProtocol] && (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    hasMarkedText = [_selectableText hasMarkedText];
  }

  else
  {
    markedTextRange = [_selectableText markedTextRange];
    hasMarkedText = markedTextRange != 0;
  }

  return hasMarkedText;
}

- (BOOL)_usesAsynchronousProtocol
{
  _selectableText = [(UIResponder *)self _selectableText];
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [_selectableText conformsToProtocol:&unk_1F016CC30];
LABEL_9:
      v3 = v4;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_selectableText conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [_selectableText conformsToProtocolCached:&unk_1F016C810];
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

  textInputContextIdentifier = [(UIResponder *)self textInputContextIdentifier];
  if (textInputContextIdentifier)
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
    v5 = [@"ID_" stringByAppendingString:textInputContextIdentifier];
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
      textInputMode = [v9 inputModeLastUsedForLanguage:v8];

      v11 = 0;
      if (!textInputMode)
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
      textInputMode = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
      v8 = 0;
      if (textInputMode)
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
  textInputContextIdentifier = [(UIResponder *)self nextResponder];
  textInputMode = [textInputContextIdentifier textInputMode];
LABEL_14:

  return textInputMode;
}

- (NSString)textInputContextIdentifier
{
  nextResponder = [(UIResponder *)self nextResponder];
  textInputContextIdentifier = [nextResponder textInputContextIdentifier];

  return textInputContextIdentifier;
}

- (BOOL)_resignIfContainsFirstResponder
{
  _responderWindow = [(UIResponder *)self _responderWindow];
  _firstResponder = [_responderWindow _firstResponder];

  if (!_firstResponder || _firstResponder == self)
  {
    nextResponder = _firstResponder;
    if (_firstResponder != self)
    {
LABEL_12:
      LOBYTE(resignFirstResponder) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    do
    {
      if (![(UIResponder *)_firstResponder _canResignIfContainsFirstResponder])
      {
        LOBYTE(resignFirstResponder) = 0;
        nextResponder = _firstResponder;
        goto LABEL_14;
      }

      nextResponder = [(UIResponder *)_firstResponder nextResponder];

      if (!nextResponder)
      {
        break;
      }

      _firstResponder = nextResponder;
    }

    while (nextResponder != self);
    if (nextResponder != self)
    {
      goto LABEL_12;
    }
  }

  _responderWindow2 = [(UIResponder *)self _responderWindow];
  _firstResponder2 = [_responderWindow2 _firstResponder];

  [_firstResponder2 _setShouldEndWritingToolsOnResign:0];
  resignFirstResponder = [_firstResponder2 resignFirstResponder];
  if (resignFirstResponder && [_firstResponder2 _canBecomeFirstResponderWhenPossible])
  {
    [_firstResponder2 _becomeFirstResponderWhenPossible];
  }

  [_firstResponder2 _setShouldEndWritingToolsOnResign:1];

LABEL_14:
  return resignFirstResponder;
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
  _responderWindow = [(UIResponder *)self _responderWindow];
  v3 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:_responderWindow];
  [v3 _firstResponderDidUpdateFromResponder:self];
}

+ (unint64_t)_currentChangeIntent
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:887 description:@"Call must be made on main thread"];
  }

  return __changeIntent;
}

- (BOOL)shouldReloadInputViews
{
  v41 = *MEMORY[0x1E69E9840];
  if (![(UIResponder *)self _disableAutomaticKeyboardBehavior]&& [(UIResponder *)self isFirstResponder])
  {
    _responderWindow = [(UIResponder *)self _responderWindow];
    if ([_responderWindow _isApplicationKeyWindow])
    {
      goto LABEL_18;
    }

    v4 = +[UIWindow _applicationKeyWindow];

    if (_responderWindow == v4)
    {
      goto LABEL_18;
    }

    if ([_responderWindow isKeyWindow])
    {
      inputAccessoryView = [(UIResponder *)self inputAccessoryView];
      if (inputAccessoryView)
      {
        v6 = inputAccessoryView;
        _requiresKeyboardWhenFirstResponder = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];

        if (!_requiresKeyboardWhenFirstResponder)
        {
          goto LABEL_18;
        }
      }

      else
      {
        inputAccessoryViewController = [(UIResponder *)self inputAccessoryViewController];
        if (inputAccessoryViewController)
        {
          v10 = inputAccessoryViewController;
          _requiresKeyboardWhenFirstResponder2 = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];

          if (!_requiresKeyboardWhenFirstResponder2)
          {
            goto LABEL_18;
          }
        }
      }
    }

    _responderWindow2 = [(UIResponder *)self _responderWindow];
    windowScene = [_responderWindow2 windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    keyWindowCandidate = [keyboardSceneDelegate keyWindowCandidate];

    if (_responderWindow != keyWindowCandidate)
    {
      _window = [(UIResponder *)self _window];
      windowScene2 = [_window windowScene];
      keyboardSceneDelegate2 = [windowScene2 keyboardSceneDelegate];
      responder = [keyboardSceneDelegate2 responder];

      if ((!responder || ([responder _responderWindow], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "screen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_responderWindow, "screen"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v20, v21 == v22)) && ((-[UIResponder _window](self, "_window"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "screen"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "_userInterfaceIdiom"), v24, v23, responder) || v25 != 3))
      {
        v27 = +[UIKeyboardImpl activeInstance];
        _window2 = [v27 _window];

        if (!_window2 || [_window2 _isTextEffectsWindow]) && (-[UIResponder _window](self, "_window"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "windowScene"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "keyboardSceneDelegate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "automaticAppearanceEnabled"), v31, v30, v29, (v32))
        {
          v8 = 0;
        }

        else
        {
          v33 = *(__UILogGetCategoryCachedImpl("View", &shouldReloadInputViews___s_category) + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
            _window3 = [(UIResponder *)self _window];
            keyWindow = [UIApp keyWindow];
            v37 = 138412546;
            v38 = _window3;
            v39 = 2112;
            v40 = keyWindow;
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
  _keyboardResponder = [(UIResponder *)self _keyboardResponder];
  v4 = [_keyboardResponder _conformsToProtocolUIKeyInput] && ((-[UIResponder _conformsToProtocolUIAsyncTextInputClient](self, "_conformsToProtocolUIAsyncTextInputClient") || -[UIResponder _conformsToProtocolBETextInput](self, "_conformsToProtocolBETextInput")) && +[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode") || (objc_opt_respondsToSelector() & 1) == 0 || -[UIResponder isEditable](self, "isEditable"));

  return v4;
}

- (id)_keyboardResponder
{
  _window = [(UIResponder *)self _window];
  windowScene = [_window windowScene];
  _keyboardOverridingSceneComponent = [windowScene _keyboardOverridingSceneComponent];

  preferredKeyboardResponderOverride = [_keyboardOverridingSceneComponent preferredKeyboardResponderOverride];
  v7 = preferredKeyboardResponderOverride;
  if (!preferredKeyboardResponderOverride)
  {
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained((preferredKeyboardResponderOverride + 8));
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
  _window2 = [v11 _window];
  _window3 = [(UIResponder *)self _window];

  if (_window2 != _window3)
  {
    goto LABEL_11;
  }

  _window4 = [(UIResponder *)self _window];
  firstResponder = [_window4 firstResponder];
  v16 = objc_loadWeakRetained(v7 + 3);
  v17 = firstResponder;
  v18 = v16;
  if ((([v17 _isView] & 1) != 0 || objc_msgSend(v18, "_containsResponder:", v17)) && (!objc_msgSend(v17, "_isView") || (objc_msgSend(v17, "isEqual:", v18) & 1) == 0 && objc_msgSend(v17, "isDescendantOfView:", v18)))
  {

LABEL_11:
    selfCopy = self;
    goto LABEL_12;
  }

  selfCopy = objc_loadWeakRetained(v7 + 1);
LABEL_12:
  v20 = selfCopy;

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
  nextResponder = [(UIResponder *)self nextResponder];
  inputAccessoryView = [nextResponder inputAccessoryView];

  _nextResponderOverride = [inputAccessoryView _nextResponderOverride];

  if (!_nextResponderOverride)
  {
    nextResponder2 = [(UIResponder *)self nextResponder];
    [inputAccessoryView _overrideInputAccessoryViewNextResponderWithResponder:nextResponder2];
  }

  return inputAccessoryView;
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
  nextResponder = [(UIResponder *)self nextResponder];
  _disableAutomaticKeyboardUI = [nextResponder _disableAutomaticKeyboardUI];

  return _disableAutomaticKeyboardUI;
}

- (UIInputViewController)inputViewController
{
  nextResponder = [(UIResponder *)self nextResponder];
  inputViewController = [nextResponder inputViewController];

  _nextResponderOverride = [inputViewController _nextResponderOverride];

  if (!_nextResponderOverride)
  {
    nextResponder2 = [(UIResponder *)self nextResponder];
    [inputViewController _overrideInputViewNextResponderWithResponder:nextResponder2];
  }

  return inputViewController;
}

- (UIView)inputView
{
  nextResponder = [(UIResponder *)self nextResponder];
  inputView = [nextResponder inputView];

  _nextResponderOverride = [inputView _nextResponderOverride];

  if (!_nextResponderOverride)
  {
    nextResponder2 = [(UIResponder *)self nextResponder];
    [inputView _overrideInputViewNextResponderWithResponder:nextResponder2];
  }

  return inputView;
}

- (UIInputViewController)inputAccessoryViewController
{
  nextResponder = [(UIResponder *)self nextResponder];
  inputAccessoryViewController = [nextResponder inputAccessoryViewController];

  _nextResponderOverride = [inputAccessoryViewController _nextResponderOverride];

  if (!_nextResponderOverride)
  {
    nextResponder2 = [(UIResponder *)self nextResponder];
    [inputAccessoryViewController _overrideInputAccessoryViewNextResponderWithResponder:nextResponder2];
  }

  return inputAccessoryViewController;
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
    isWritingToolsHostingViewService = [v3 isWritingToolsHostingViewService];

    if ((isWritingToolsHostingViewService & 1) == 0)
    {
      _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];

      if (_writingToolsViewController)
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)nextFirstResponder
{
  nextResponder = [(UIResponder *)self nextResponder];
  if (nextResponder)
  {
    do
    {
      if ([nextResponder isFirstResponder] & 1) == 0 && (objc_msgSend(nextResponder, "_canBecomeFirstResponder"))
      {
        break;
      }

      v2NextResponder = [nextResponder nextResponder];

      nextResponder = v2NextResponder;
    }

    while (v2NextResponder);
  }

  return nextResponder;
}

- (void)_beginPinningInputViews
{
  _window = [(UIResponder *)self _window];
  windowScene = [_window windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  v5 = keyboardSceneDelegate;
  if (!keyboardSceneDelegate)
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v7 = v5;
  [v5 _beginPinningInputViewsOnBehalfOfResponder:self];
}

- (void)_selectionDidUpdate
{
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];

  if (_writingToolsViewController)
  {
    _writingToolsViewController2 = [(UIResponder *)self _writingToolsViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      _writingToolsViewController3 = [(UIResponder *)self _writingToolsViewController];
      [_writingToolsViewController3 performSelector:sel_selectionDidUpdate];
    }
  }
}

- (id)_window
{
  nextResponder = [(UIResponder *)self nextResponder];
  _window = [nextResponder _window];

  return _window;
}

- (void)_windowBecameKey
{
  _window = [(UIResponder *)self _window];
  _isSettingFirstResponder = [_window _isSettingFirstResponder];

  if ((_isSettingFirstResponder & 1) == 0)
  {
    _window2 = [(UIResponder *)self _window];
    windowScene = [_window2 windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    if (!-[UIResponder _isTransitioningFromView:](self, "_isTransitioningFromView:", self) || [keyboardSceneDelegate ignoresPinning])
    {
      [(UIResponder *)self reloadInputViews];
    }
  }
}

- (void)reloadInputViews
{
  if ([(UIResponder *)self shouldReloadInputViews])
  {
    _responderWindow = [(UIResponder *)self _responderWindow];
    windowScene = [_responderWindow windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    [keyboardSceneDelegate _reloadInputViewsForResponder:self];
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
  delegateAsResponder = [v2 delegateAsResponder];
  _editingDelegate = [delegateAsResponder _editingDelegate];

  if (_editingDelegate)
  {
    delegateAsResponder2 = [v2 delegateAsResponder];
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

    delegateAsResponder2 = [v9 _responderForKeyEvents];
  }

  return delegateAsResponder2;
}

- (id)_responderForEditing
{
  selfCopy = self;
  _editingDelegate = [(UIResponder *)self _editingDelegate];
  v4 = _editingDelegate;
  if (_editingDelegate)
  {
    selfCopy = _editingDelegate;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (BOOL)_supportsImagePaste
{
  v28 = *MEMORY[0x1E69E9840];
  pasteConfiguration = [(UIResponder *)self pasteConfiguration];
  v4 = pasteConfiguration;
  if (pasteConfiguration)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    acceptableTypeIdentifiers = [pasteConfiguration acceptableTypeIdentifiers];
    v6 = [acceptableTypeIdentifiers countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(acceptableTypeIdentifiers);
          }

          v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v22 + 1) + 8 * i)];
          v13 = [v12 conformsToType:v10];

          v8 |= v13;
        }

        v7 = [acceptableTypeIdentifiers countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);

      v4 = v21;
      if (v8)
      {
        supportsImagePaste = 1;
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  if (objc_opt_respondsToSelector())
  {
    supportsImagePaste = [(UIResponder *)self supportsImagePaste];
  }

  else
  {
    if (_supportsImagePaste_onceToken != -1)
    {
      dispatch_once(&_supportsImagePaste_onceToken, &__block_literal_global_98_4);
    }

    v15 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    identifier = [*MEMORY[0x1E6982F28] identifier];
    [v15 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:&__block_literal_global_100_1];

    v26 = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
    [UIPasteboard _pinItemProviders:v17 forPasteboardNamed:@"com.apple.UIKit.pboard.general" withExpirationDate:v18];

    v19 = [(UIResponder *)self targetForAction:sel_paste_ withSender:0];

    [UIPasteboard _clearPinnedItemProvidersForPasteboardNamed:@"com.apple.UIKit.pboard.general"];
    supportsImagePaste = v19 == self;
  }

LABEL_17:

  return supportsImagePaste;
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
  _writingToolsInputDashboardViewController = [(UIResponder *)self _writingToolsInputDashboardViewController];
  if (_writingToolsInputDashboardViewController && [(UIResponder *)self _writingToolsWantsKeyboardSuppression])
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    wantsAssistantWhileSuppressingKeyboard = [v4 wantsAssistantWhileSuppressingKeyboard];
  }

  else
  {
    wantsAssistantWhileSuppressingKeyboard = 0;
  }

  return wantsAssistantWhileSuppressingKeyboard;
}

- (int64_t)_textInputSource
{
  v2 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (!v2)
  {
    return __UIPlatformFallbackInputSource;
  }

  v3 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  lastEventSource = [v3 lastEventSource];

  return lastEventSource;
}

- (BOOL)_isWritingToolsActive
{
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
  v3 = _writingToolsViewController != 0;

  return v3;
}

- (BOOL)_shouldDisplayWritingToolsCandidateOptions
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(UIResponder *)self _shouldShowWritingToolsInCandidateBar]|| ![(UIResponder *)self _supportsWritingTools])
  {
    return 0;
  }

  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
  v4 = _writingToolsViewController == 0;

  return v4;
}

- (id)_textInputForWritingTools
{
  _firstResponder = [(UIResponder *)self _firstResponder];
  if ([_firstResponder conformsToProtocolCached:&unk_1EFE8B2D0])
  {
    _selectionDisplayInteraction = _firstResponder;
    goto LABEL_8;
  }

  _textInteraction = [_firstResponder _textInteraction];

  if (_textInteraction)
  {
    _textInteraction2 = [_firstResponder _textInteraction];
  }

  else
  {
    _selectionDisplayInteraction = [_firstResponder _selectionDisplayInteraction];

    if (!_selectionDisplayInteraction)
    {
      goto LABEL_8;
    }

    _textInteraction2 = [_firstResponder _selectionDisplayInteraction];
  }

  v6 = _textInteraction2;
  _selectionDisplayInteraction = [_textInteraction2 textInput];

LABEL_8:

  return _selectionDisplayInteraction;
}

- (int64_t)__wt_writingToolsBehavior
{
  __wt_writingToolsCoordinator = [(UIResponder *)self __wt_writingToolsCoordinator];
  v4 = __wt_writingToolsCoordinator;
  if (__wt_writingToolsCoordinator)
  {
    behavior = [__wt_writingToolsCoordinator behavior];
  }

  else
  {
    _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
    if (objc_opt_respondsToSelector())
    {
      behavior = [_textInputForWritingTools writingToolsBehavior];
    }

    else
    {
      behavior = 0;
    }
  }

  return behavior;
}

- (id)__wt_writingToolsCoordinator
{
  _firstResponder = [(UIResponder *)self _firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _writingToolsCoordinator = [_firstResponder _writingToolsCoordinator];
  }

  else
  {
    textInputView = [_firstResponder textInputView];
    _writingToolsCoordinator = [textInputView _writingToolsCoordinator];
  }

  return _writingToolsCoordinator;
}

- (id)_additionalTextInputLocales
{
  nextResponder = [(UIResponder *)self nextResponder];
  _additionalTextInputLocales = [nextResponder _additionalTextInputLocales];

  return _additionalTextInputLocales;
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

  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  if (!_textInputForWritingTools || -[UIResponder __wt_writingToolsBehavior](self, "__wt_writingToolsBehavior") == -1 || (v4 = MKBGetDeviceLockState(), v4 != 3) && v4 || (objc_opt_respondsToSelector() & 1) != 0 && ([_textInputForWritingTools isSecureTextEntry] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(_textInputForWritingTools, "keyboardType") == 2 || objc_msgSend(_textInputForWritingTools, "keyboardType") == 4 || objc_msgSend(_textInputForWritingTools, "keyboardType") == 5 || objc_msgSend(_textInputForWritingTools, "keyboardType") == 8 || objc_msgSend(_textInputForWritingTools, "keyboardType") == 11))
  {
    v5 = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    textContentType = [_textInputForWritingTools textContentType];
    v5 = [textContentType length] == 0;
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
    fontForCaretSelection = [(UIResponder *)self fontForCaretSelection];
  }

  else
  {
    _selectableText = [(UIResponder *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v6 = [selectedTextRange end];

      if (v6)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v6] == -1)
        {
          v8 = endOfDocument;

          v6 = v8;
        }

        v9 = [_selectableText textStylingAtPosition:v6 inDirection:0];
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

      fontForCaretSelection = [v9 objectForKey:v10];
    }

    else
    {
      fontForCaretSelection = 0;
    }
  }

  return fontForCaretSelection;
}

- (id)_textColorForCaretSelection
{
  if (objc_opt_respondsToSelector())
  {
    textColorForCaretSelection = [(UIResponder *)self textColorForCaretSelection];
  }

  else
  {
    _selectableText = [(UIResponder *)self _selectableText];
    if (objc_opt_respondsToSelector())
    {
      selectedTextRange = [_selectableText selectedTextRange];
      v6 = [selectedTextRange end];

      if (v6)
      {
        endOfDocument = [_selectableText endOfDocument];
        if (endOfDocument && [_selectableText comparePosition:endOfDocument toPosition:v6] == -1)
        {
          v8 = endOfDocument;

          v6 = v8;
        }

        v9 = [_selectableText textStylingAtPosition:v6 inDirection:0];
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

      textColorForCaretSelection = [v9 objectForKey:v10];
    }

    else
    {
      textColorForCaretSelection = 0;
    }
  }

  return textColorForCaretSelection;
}

- (id)inputDashboardViewController
{
  v3 = +[UIKeyboardImpl activeInstance];
  shouldShowSmartReplyFeedbackInputDashboardViewController = [v3 shouldShowSmartReplyFeedbackInputDashboardViewController];

  if (!shouldShowSmartReplyFeedbackInputDashboardViewController || ([(UIResponder *)self _smartReplyFeedbackInputDashboardViewController], (inputDashboardViewController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _writingToolsInputDashboardViewController = [(UIResponder *)self _writingToolsInputDashboardViewController];
    v7 = _writingToolsInputDashboardViewController;
    if (_writingToolsInputDashboardViewController)
    {
      inputDashboardViewController = _writingToolsInputDashboardViewController;
    }

    else
    {
      nextResponder = [(UIResponder *)self nextResponder];
      inputDashboardViewController = [nextResponder inputDashboardViewController];

      _nextResponderOverride = [inputDashboardViewController _nextResponderOverride];

      if (!_nextResponderOverride)
      {
        nextResponder2 = [(UIResponder *)self nextResponder];
        [inputDashboardViewController _overrideInputAccessoryViewNextResponderWithResponder:nextResponder2];
      }
    }
  }

  return inputDashboardViewController;
}

- (id)_trailingPredictiveCandidateForWritingTools
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating]) && ([(UIResponder *)self _writingToolsViewController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4))
  {
    _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
    trailingPredictiveCandidate = [_writingToolsViewController trailingPredictiveCandidate];
  }

  else
  {
    trailingPredictiveCandidate = 0;
  }

  return trailingPredictiveCandidate;
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
  if (self)
  {
    if ((self[4] & 0x20) == 0)
    {
      self = 0;

      return self;
    }

    self = objc_getAssociatedObject(self, &_UIActivityItemsConfigurationKey);
  }

  return self;
}

- (id)_selectionDisplayInteraction
{
  v2 = objc_getAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey);
  weakObject = [v2 weakObject];

  return weakObject;
}

- (void)promptBackgroundViewDidUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  nextResponder = [(UIResponder *)selfCopy nextResponder];
  [(UIResponder *)nextResponder promptBackgroundViewDidUpdateConfiguration:configurationCopy];
}

- (BOOL)_shouldSkipKeyboardShortcutLeaf:(id)leaf forMovement:(int64_t)movement
{
  if ((movement - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  else
  {
    return [leaf _wantsPriorityOverSystemBehavior:{2, v4, v5}] ^ 1;
  }
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine
{
  if (![(UIResponder *)self conformsToProtocol:&unk_1EFE8A940])
  {
    return 1;
  }

  if ((engine - 4) < 2)
  {
    return ![(UIResponder *)self isFirstResponder];
  }

  if (engine != 3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(UIResponder *)self isSingleLineDocument];
}

- (id)_ui_findNavigatorResponder
{
  nextResponder = [(UIResponder *)self nextResponder];
  _ui_findNavigatorResponder = [nextResponder _ui_findNavigatorResponder];

  return _ui_findNavigatorResponder;
}

- (id)_effectiveActivityItemsConfigurationForSender:(id)sender
{
  v3 = _UIResponderTargetForAction(self, sel_copy_, sender);
  if (objc_opt_respondsToSelector())
  {
    _effectiveActivityItemsConfiguration = [v3 _effectiveActivityItemsConfiguration];
LABEL_5:
    v5 = _effectiveActivityItemsConfiguration;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    _effectiveActivityItemsConfiguration = [v3 activityItemsConfiguration];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_effectiveActivityItemsConfigurationAtLocation:(CGPoint)location inCoordinateSpace:(id)space sender:(id)sender
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  senderCopy = sender;
  v11 = _UIResponderTargetForAction(self, sel_copy_, senderCopy);
  if (objc_opt_respondsToSelector())
  {
    [v11 convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
    [v11 _activityItemsConfigurationAtLocation:?];
  }

  else
  {
    _activityItemsConfigurationForTarget(v11, senderCopy);
  }
  v12 = ;

  return v12;
}

- (id)_firstNonnullActivityItemsConfigurationInResponderChainForLocation:(CGPoint)location inCoordinateSpace:(id)space skipPresentingViewControllers:(BOOL)controllers sender:(id)sender target:(id *)target
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  senderCopy = sender;
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
  v14 = spaceCopy;
  v22 = v14;
  v23 = &v26;
  v15 = _Block_copy(v21);
  v16 = _UIResponderTargetForActionWithTestBlock(self, sel_copy_, self, v15);
  v17 = v16;
  if (target)
  {
    v18 = v16;
    *target = v17;
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

- (BOOL)_handleActivityItemsConfigurationCanPerformAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  if (sel__share_ == action || sel_copy_ == action)
  {
    _effectiveActivityItemsConfiguration = [(UIResponder *)self _effectiveActivityItemsConfiguration];
  }

  else
  {
    _effectiveActivityItemsConfiguration = 0;
  }

  if (!dyld_program_sdk_at_least() || !_UIActivityItemsConfigurationHasItems(_effectiveActivityItemsConfiguration))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (sel__share_ == action)
  {
    v11 = _effectiveActivityItemsConfiguration;
    v12 = senderCopy;
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
        activityItemsConfiguration = [v17 activityItemsConfiguration];
        v9 = activityItemsConfiguration != 0;
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

  if (sel_copy_ == action)
  {
    v11 = _effectiveActivityItemsConfiguration;
    v12 = senderCopy;
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

- (BOOL)_handleActivityItemsConfigurationDoesNotHandleSelector:(SEL)selector
{
  v5 = dyld_program_sdk_at_least();
  result = 0;
  if (v5 && sel_copy_ == selector)
  {
    v7 = [(UIResponder *)self _effectiveActivityItemsConfigurationForSender:self];

    if (v7)
    {
      _dataOwnerForCopy = [(UIResponder *)self _dataOwnerForCopy];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __100__UIResponder_UIActivityItemsConfiguration___handleActivityItemsConfigurationDoesNotHandleSelector___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v9];
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

- (BOOL)_handleActivityItemsConfigurationShare:(id)share
{
  shareCopy = share;
  if (dyld_program_sdk_at_least())
  {
    v5 = [(UIResponder *)self _effectiveActivityItemsConfigurationForSender:shareCopy];
    v6 = [(UIResponder *)self _handleActivityItemsConfigurationShare:shareCopy activityItemsConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_handleActivityItemsConfigurationShare:(id)share activityItemsConfiguration:(id)configuration
{
  v72 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  configurationCopy = configuration;
  v8 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_4;
  }

  v9 = configurationCopy;
  v10 = shareCopy;
  if ((+[_UITextServiceSession availableTextServices](_UITextServiceSession, "availableTextServices") & 8) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [v9 activityItemsConfigurationSupportsInteraction:@"share"]))
  {
    v12 = v10;
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v12 sender], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "__isKindOfUIResponder"), v13, v14) && (objc_msgSend(v12, "sender"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      activityItemsConfiguration = [v15 activityItemsConfiguration];

      if (!activityItemsConfiguration)
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
      _targetView = [v12 _targetView];
      v19 = _viewControllerToPresentFromBasedOnResponder(_targetView);
    }

    else
    {
      v19 = 0;
    }

    viewIfLoaded = [v19 viewIfLoaded];
    _window = [viewIfLoaded _window];

    if (!_window)
    {
      v22 = _viewControllerToPresentFromBasedOnResponder(self);

      v19 = v22;
    }

    viewIfLoaded2 = [v19 viewIfLoaded];
    _window2 = [viewIfLoaded2 _window];

    if (!_window2)
    {
      _window3 = [(UIResponder *)self _window];
      rootViewController = [_window3 rootViewController];

      v19 = rootViewController;
    }

    viewIfLoaded3 = [v19 viewIfLoaded];
    _window4 = [viewIfLoaded3 _window];

    if (!_window4)
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
          selfCopy = self;
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
          self = selfCopy;
          v9 = v64;
        }
      }

      if (v31)
      {
        v36 = _preferredUIWindowInWindowScene(v31);
        rootViewController2 = [v36 rootViewController];

        v19 = rootViewController2;
      }
    }

    viewIfLoaded4 = [v19 viewIfLoaded];
    _window5 = [viewIfLoaded4 _window];

    if (!_window5)
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
      _targetView2 = [v40 _targetView];
      if (_targetView2)
      {
        p_super = _targetView2;
        [v40 _targetRect];
        [p_super convertRect:0 fromView:?];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

LABEL_55:
        v60 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration:v9];
        popoverPresentationController = [v60 popoverPresentationController];
        [popoverPresentationController setSourceView:p_super];
        [popoverPresentationController setSourceRect:{v44, v46, v48, v50}];
        [v19 presentViewController:v60 animated:1 completion:&__block_literal_global_218];

LABEL_56:
        v11 = 1;
        goto LABEL_57;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy2 = self;
      if (!selfCopy2)
      {
LABEL_53:
        p_super = [v19 view];
        view = [v19 view];
        [(UIResponder *)view bounds];
        v54 = v57;
        view2 = [v19 view];
        [view2 bounds];
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

      selfCopy2 = [(UIResponder *)self view];
      if (!selfCopy2)
      {
        goto LABEL_53;
      }
    }

    view = selfCopy2;
    [(UIResponder *)view bounds];
    v54 = v53;
    [(UIResponder *)view bounds];
    v56 = v55;
    p_super = &view->super;
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
  _selectableText = [(UIResponder *)self _selectableText];
  inputDelegate = [_selectableText inputDelegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = inputDelegate;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_textInputSource:(int64_t)source
{
  v5 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];

  if (v5)
  {
    v6 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIResponder *)self keyboardType]== 122;
    if (source == 3 && v6)
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v9 = selfCopy;
    v10 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
    [v10 updateEventSource:source options:v7 responder:v9];
  }

  else
  {
    __UIPlatformFallbackInputSource = source;
  }
}

- (_NSRange)_selectedNSRange
{
  _selectableText = [(UIResponder *)self _selectableText];
  v4 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      v6 = [(UIResponder *)self _nsrangeForTextRange:selectedTextRange];
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
  _selectableText = [(UIResponder *)self _selectableText];
  v3 = _selectableText;
  if (_selectableText)
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      markedTextRange = [v3 markedTextRange];
      v6 = markedTextRange;
      if (!markedTextRange || ([markedTextRange start], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "start"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "offsetFromPosition:toPosition:", v7, v8), v8, v7, v9 < 0))
      {
        v12 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        start = [selectedTextRange start];
        v11 = [selectedTextRange end];
        v12 = [v3 offsetFromPosition:start toPosition:v11];
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
  _selectableText = [(UIResponder *)self _selectableText];
  _fullRange = [_selectableText _fullRange];
  [_selectableText setSelectedTextRange:_fullRange];
}

- (int)_indexForTextPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v7 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:positionCopy];

  return v7;
}

- (_NSRange)_nsrangeForTextRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  start = [rangeCopy start];
  v7 = [(UIResponder *)self _indexForTextPosition:start];

  start2 = [rangeCopy start];
  v9 = [rangeCopy end];

  v10 = [_selectableText offsetFromPosition:start2 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_textRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _selectableText = [(UIResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  v7 = [_selectableText positionFromPosition:beginningOfDocument offset:location];
  v8 = v7;
  if (v7)
  {
    endOfDocument = v7;
  }

  else
  {
    endOfDocument = [_selectableText endOfDocument];
  }

  v10 = endOfDocument;

  v11 = [_selectableText positionFromPosition:v10 offset:length];
  v12 = v11;
  if (v11)
  {
    endOfDocument2 = v11;
  }

  else
  {
    endOfDocument2 = [_selectableText endOfDocument];
  }

  v14 = endOfDocument2;

  v15 = [_selectableText textRangeFromPosition:v10 toPosition:v14];

  return v15;
}

- (id)_textRangeFromDirectionalRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v8 = [_selectableText positionFromPosition:start offset:var0];

  v9 = [_selectableText positionFromPosition:v8 offset:var1];
  v10 = [_selectableText textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (unsigned)_characterInRelationToCaretSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange && (v7 = selectedTextRange, [_selectableText selectedTextRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEmpty"), v8, v7, v9))
  {
    v10 = [(UIResponder *)self _characterInRelationToRangedSelection:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_characterInRelationToRangedSelection:(int)selection
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    goto LABEL_4;
  }

  if (selection > -101)
  {
    if ((selection & 0x80000000) == 0)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v8 = [selectedTextRange2 end];

      if (selection)
      {
        v9 = [_selectableText positionFromPosition:v8 offset:selection];

        v8 = v9;
      }

      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_11:
      v12 = [_selectableText positionFromPosition:v8 offset:1];
      if (v12)
      {
        v13 = v12;
        v14 = [_selectableText textRangeFromPosition:v8 toPosition:v12];
        v15 = [_selectableText textInRange:v14];
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
    selectedTextRange3 = [_selectableText selectedTextRange];
    start = [selectedTextRange3 start];
    v8 = [_selectableText positionFromPosition:start offset:selection];

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

- (unsigned)_characterInRelationToPosition:(id)position amount:(int)amount
{
  if (!position)
  {
    return 0;
  }

  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  v8 = [_selectableText positionFromPosition:positionCopy offset:amount];

  v9 = [_selectableText positionFromPosition:v8 offset:1];
  v10 = [_selectableText textRangeFromPosition:v8 toPosition:v9];
  v11 = [_selectableText textInRange:v10];
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
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if (selectedTextRange)
  {
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if (isEmpty)
    {
      selectedTextRange3 = [_selectableText selectedTextRange];
      start = [selectedTextRange3 start];
      v9 = [(UIResponder *)self _rangeOfEnclosingWord:start];

      if (v9)
      {
        selectedTextRange = [_selectableText textInRange:v9];
      }

      else
      {
        selectedTextRange = 0;
      }
    }

    else
    {
      selectedTextRange = 0;
    }
  }

  return selectedTextRange;
}

- (id)_fullText
{
  _selectableText = [(UIResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v5 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  v6 = [_selectableText textInRange:v5];

  return v6;
}

- (void)_setSelectionToPosition:(id)position
{
  if (position)
  {
    positionCopy = position;
    _selectableText = [(UIResponder *)self _selectableText];
    v5 = [_selectableText textRangeFromPosition:positionCopy toPosition:positionCopy];

    if (v5)
    {
      [_selectableText setSelectedTextRange:v5];
    }
  }
}

- (BOOL)_selectionAtWordStart
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v6 = [(UIResponder *)self _rangeOfEnclosingWord:start];

  if (v6)
  {
    start2 = [v6 start];
    selectedTextRange2 = [_selectableText selectedTextRange];
    start3 = [selectedTextRange2 start];
    v10 = [_selectableText comparePosition:start2 toPosition:start3];

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
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];

  if (start)
  {
    beginningOfDocument = [_selectableText beginningOfDocument];
    v6 = [_selectableText comparePosition:beginningOfDocument toPosition:start] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_selectionAtDocumentEnd
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v4 = [selectedTextRange end];

  if (v4)
  {
    endOfDocument = [_selectableText endOfDocument];
    v6 = [_selectableText comparePosition:endOfDocument toPosition:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isEmptySelection
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v5 = [selectedTextRange end];
  v6 = [_selectableText comparePosition:start toPosition:v5] == 0;

  return v6;
}

- (BOOL)_hasMarkedTextOrRangedSelection
{
  _selectableText = [(UIResponder *)self _selectableText];
  markedTextRange = [_selectableText markedTextRange];
  if (markedTextRange)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    selectedTextRange = [_selectableText selectedTextRange];
    if (selectedTextRange)
    {
      selectedTextRange2 = [_selectableText selectedTextRange];
      v4 = [selectedTextRange2 isEmpty] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_extendCurrentSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UIResponder *)self _selectableText];
  if (v3)
  {
    v15 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v15;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v15 selectedTextRange];
      start = [selectedTextRange2 start];

      selectedTextRange3 = [v15 selectedTextRange];
      v10 = [selectedTextRange3 end];

      if (v3 < 1)
      {
        v13 = [(UIResponder *)self _clampedpositionFromPosition:start offset:v3];
        v12 = start;
        start = v13;
      }

      else
      {
        v11 = [(UIResponder *)self _clampedpositionFromPosition:v10 offset:v3];
        v12 = v10;
        v10 = v11;
      }

      v14 = [v15 textRangeFromPosition:start toPosition:v10];
      [v15 setSelectedTextRange:v14];

      _selectableText = v15;
    }
  }
}

- (void)_moveCurrentSelection:(int)selection
{
  v3 = *&selection;
  _selectableText = [(UIResponder *)self _selectableText];
  if (v3)
  {
    v14 = _selectableText;
    selectedTextRange = [_selectableText selectedTextRange];

    _selectableText = v14;
    if (selectedTextRange)
    {
      selectedTextRange2 = [v14 selectedTextRange];
      isEmpty = [selectedTextRange2 isEmpty];

      if (isEmpty)
      {
        selectedTextRange3 = [v14 selectedTextRange];
        start = [selectedTextRange3 start];
      }

      else
      {
        selectedTextRange4 = [v14 selectedTextRange];
        start = [selectedTextRange4 end];

        if (v3 < 1)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = (v3 - 1);
        }
      }

      v12 = [(UIResponder *)self _clampedpositionFromPosition:start offset:v3];

      v13 = [v14 textRangeFromPosition:v12 toPosition:v12];
      if (v13)
      {
        [v14 setSelectedTextRange:v13];
      }

      _selectableText = v14;
    }
  }
}

- (void)_expandSelectionToBackwardDeletionClusterWithReinsertionOut:(id *)out
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v6 = [selectedTextRange end];
  v7 = start;
  if (!selectedTextRange || ([selectedTextRange isEmpty] & 1) != 0)
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

  v8 = [_selectableText textInRange:selectedTextRange];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  outCopy = out;
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

    v10 = [_selectableText positionFromPosition:v19 offset:-1];

    if (v10)
    {
      v17 = [_selectableText textRangeFromPosition:v10 toPosition:v19];
      if (v17)
      {
        v18 = [_selectableText textInRange:v17];
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
  v20 = _selectableText;
  if (outCopy && v16 >= 1)
  {
    v21 = v10;

    *outCopy = [(__CFString *)v8 substringToIndex:v16];
    v20 = _selectableText;
    v19 = v21;
  }

  if (v19 != v7 && v19 && v6)
  {
    v22 = [v20 textRangeFromPosition:v19 toPosition:v6];
    if (v22)
    {
      [_selectableText setSelectedTextRange:v22];
    }
  }

LABEL_29:
}

- (void)_expandSelectionToStartOfWordsBeforeCaretSelection:(int)selection
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v5 = selectedTextRange;
  if (selection && selectedTextRange)
  {
    start = [selectedTextRange start];
    v7 = [_selectableText _positionAtStartOfWords:selection beforePosition:start];

    if (v7)
    {
      v8 = [v5 end];
      v9 = [_selectableText textRangeFromPosition:v7 toPosition:v8];
      [_selectableText setSelectedTextRange:v9];
    }
  }
}

- (id)_positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  v8 = _selectableText;
  if (direction == 1)
  {
    start = [rangeCopy start];
    goto LABEL_7;
  }

  if (!direction)
  {
    start = [rangeCopy end];
LABEL_7:
    v10 = start;
    goto LABEL_8;
  }

  if (rangeCopy)
  {
    start = [_selectableText positionWithinRange:rangeCopy farthestInDirection:direction];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (int64_t)_opposingDirectionFromDirection:(int64_t)direction
{
  result = direction;
  if (direction <= 5)
  {
    return qword_18A680700[direction];
  }

  return result;
}

- (id)_positionFromPosition:(id)position pastTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  if (positionCopy)
  {
    v10 = -3;
    while (!__CFADD__(v10++, 1))
    {
      tokenizer = [_selectableText tokenizer];
      v13 = [tokenizer positionFromPosition:positionCopy toBoundary:unit inDirection:direction];

      if (!v13)
      {
        v17 = 0;
        positionCopy = 0;
        goto LABEL_12;
      }

      tokenizer2 = [_selectableText tokenizer];
      if ([tokenizer2 isPosition:v13 atBoundary:unit inDirection:direction])
      {

LABEL_11:
        v17 = v13;
        positionCopy = v17;
        goto LABEL_12;
      }

      tokenizer3 = [_selectableText tokenizer];
      v16 = [tokenizer3 isPosition:v13 atBoundary:unit inDirection:{-[UIResponder _opposingDirectionFromDirection:](self, "_opposingDirectionFromDirection:", direction)}];

      positionCopy = v13;
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

- (id)_positionAtStartOfWords:(unint64_t)words beforePosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  v8 = _selectableText;
  if (!words || !positionCopy)
  {
    positionCopy = positionCopy;
    v10 = positionCopy;
    goto LABEL_13;
  }

  tokenizer = [_selectableText tokenizer];
  v10 = [tokenizer rangeEnclosingPosition:positionCopy withGranularity:1 inDirection:1];

  if (v10)
  {
    goto LABEL_4;
  }

  tokenizer2 = [v8 tokenizer];
  v19 = [tokenizer2 positionFromPosition:positionCopy toBoundary:1 inDirection:1];

  if (!v19)
  {
    v10 = 0;
    goto LABEL_13;
  }

  tokenizer3 = [v8 tokenizer];
  v10 = [tokenizer3 rangeEnclosingPosition:v19 withGranularity:1 inDirection:1];

  if (v10)
  {
LABEL_4:
    start = [v10 start];

    if (words >= 2)
    {
      v12 = words - 1;
      while (1)
      {
        tokenizer4 = [v8 tokenizer];
        v14 = [tokenizer4 positionFromPosition:start toBoundary:1 inDirection:1];

        if (!v14)
        {
          break;
        }

        tokenizer5 = [v8 tokenizer];
        v16 = [tokenizer5 positionFromPosition:v14 toBoundary:1 inDirection:1];

        if (!v16)
        {
          break;
        }

        start = v16;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = start;
LABEL_12:
    positionCopy = v16;

    v10 = positionCopy;
  }

LABEL_13:

  return v10;
}

- (void)_setCaretSelectionAtEndOfSelection
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v3 = selectedTextRange;
  if (selectedTextRange)
  {
    v4 = [selectedTextRange end];
    v5 = [v3 end];
    v6 = [_selectableText textRangeFromPosition:v4 toPosition:v5];
    [_selectableText setSelectedTextRange:v6];
  }
}

- (void)_deleteByWord
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    start = [selectedTextRange start];
    v6 = [_selectableText _positionAtStartOfWords:1 beforePosition:start];

    if (v6)
    {
      v7 = [selectedTextRange end];
      v8 = [_selectableText textRangeFromPosition:v6 toPosition:v7];

      selectedTextRange = v8;
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteForwardByWord
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    _selectableText2 = [(UIResponder *)self _selectableText];
    v6 = _selectableText2;
    if (selectedTextRange)
    {
      tokenizer = [_selectableText2 tokenizer];
      v8 = [selectedTextRange end];
      v9 = [tokenizer rangeEnclosingPosition:v8 withGranularity:1 inDirection:0];

      if (v9 || ([v6 tokenizer], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedTextRange, "end"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "positionFromPosition:toBoundary:inDirection:", v15, 1, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16) && (objc_msgSend(v6, "tokenizer"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "rangeEnclosingPosition:withGranularity:inDirection:", v16, 1, 0), v9 = objc_claimAutoreleasedReturnValue(), v17, v16, v9))
      {
        start = [selectedTextRange start];
        v11 = [v9 end];
        v12 = [v6 textRangeFromPosition:start toPosition:v11];

        selectedTextRange = v12;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToStartOfLine
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v7 = [tokenizer positionFromPosition:start toBoundary:4 inDirection:1];

    if (v7)
    {
      start2 = [selectedTextRange start];
      v9 = [_selectableText comparePosition:start2 toPosition:v7];

      if (v9 == 1)
      {
        start3 = [selectedTextRange start];
        v11 = [_selectableText textRangeFromPosition:v7 toPosition:start3];

        selectedTextRange = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfLine
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v6 = [selectedTextRange end];
    v7 = [tokenizer positionFromPosition:v6 toBoundary:4 inDirection:0];

    if (v7)
    {
      v8 = [selectedTextRange end];
      v9 = [_selectableText comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [selectedTextRange end];
        v11 = [_selectableText textRangeFromPosition:v10 toPosition:v7];

        selectedTextRange = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteToEndOfParagraph
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v6 = [selectedTextRange end];
    v7 = [tokenizer positionFromPosition:v6 toBoundary:3 inDirection:0];

    if (v7)
    {
      v8 = [selectedTextRange end];
      v9 = [_selectableText comparePosition:v7 toPosition:v8];

      if (v9 == 1)
      {
        v10 = [selectedTextRange end];
        v11 = [_selectableText textRangeFromPosition:v10 toPosition:v7];

        selectedTextRange = v11;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_deleteTextRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  [_selectableText setSelectedTextRange:rangeCopy];

  selectedTextRange2 = [_selectableText selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = _selectableText;
      if ([v8 keyboardInputShouldDelete:v8])
      {
        [v8 deleteBackward];
      }

      else
      {
        [v8 setSelectedTextRange:selectedTextRange];
      }
    }

    else
    {
      [_selectableText deleteBackward];
    }
  }
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  _keyInput = [(UIResponder *)self _keyInput];
  [_keyInput deleteBackward];
}

- (void)_deleteForwardAndNotify:(BOOL)notify
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  inputDelegate = [_selectableText inputDelegate];
  [inputDelegate textWillChange:_selectableText];

  if ([selectedTextRange isEmpty])
  {
    tokenizer = [_selectableText tokenizer];
    v7 = [selectedTextRange end];
    v8 = [tokenizer positionFromPosition:v7 toBoundary:0 inDirection:0];

    if (v8)
    {
      v9 = [selectedTextRange end];
      v10 = [_selectableText comparePosition:v8 toPosition:v9];

      if (v10 == 1)
      {
        v11 = [selectedTextRange end];
        v12 = [_selectableText textRangeFromPosition:v11 toPosition:v8];

        selectedTextRange = v12;
      }
    }
  }

  [(UIResponder *)self _deleteTextRange:selectedTextRange];
  inputDelegate2 = [_selectableText inputDelegate];
  [inputDelegate2 textDidChange:_selectableText];
}

- (void)_transpose
{
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  if ([selectedTextRange isEmpty])
  {
    inputDelegate = [_selectableText inputDelegate];
    [inputDelegate textWillChange:_selectableText];

    tokenizer = [_selectableText tokenizer];
    start = [selectedTextRange start];
    v6 = [tokenizer positionFromPosition:start toBoundary:0 inDirection:1];

    tokenizer2 = [_selectableText tokenizer];
    v8 = [selectedTextRange end];
    v9 = [tokenizer2 positionFromPosition:v8 toBoundary:0 inDirection:0];

    if (v6 && v9)
    {
      start2 = [selectedTextRange start];
      v11 = [_selectableText textRangeFromPosition:v6 toPosition:start2];

      v12 = [selectedTextRange end];
      v13 = [_selectableText textRangeFromPosition:v12 toPosition:v9];

      if (v11 && v13)
      {
        v14 = [_selectableText textInRange:v11];
        v15 = [_selectableText textInRange:v13];
        v16 = [v15 stringByAppendingString:v14];
        v17 = [_selectableText textRangeFromPosition:v6 toPosition:v9];
        if (v17)
        {
          [_selectableText replaceRange:v17 withText:v16];
        }
      }
    }

    inputDelegate2 = [_selectableText inputDelegate];
    [inputDelegate2 textDidChange:_selectableText];
  }
}

- (void)_replaceCurrentWordWithText:(id)text
{
  textCopy = text;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  v7 = [(UIResponder *)self _rangeOfEnclosingWord:start];

  if (v7)
  {
    [_selectableText replaceRange:v7 withText:textCopy];
  }
}

- (void)_replaceDocumentWithText:(id)text
{
  textCopy = text;
  _selectableText = [(UIResponder *)self _selectableText];
  _fullRange = [(UIResponder *)self _fullRange];
  v6 = _fullRange;
  if (_fullRange)
  {
    if (([_fullRange isEmpty] & 1) == 0)
    {
      [_selectableText replaceRange:v6 withText:&stru_1EFB14550];
    }

    [_selectableText insertText:textCopy];
  }
}

- (void)_scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  _selectableText = [(UIResponder *)self _selectableText];
  textInputView = [_selectableText textInputView];
  if (objc_opt_respondsToSelector())
  {
    v10 = [textInputView performSelector:sel__enclosingScrollerIncludingSelf];
    [v10 convertRect:textInputView fromView:{x, y, width, height}];
    [v10 scrollRectToVisible:animatedCopy animated:?];
  }
}

- (id)_normalizedStringForRangeComparison:(id)comparison
{
  v3 = [comparison _stringByReplacingCharacter:160 withCharacter:32];
  v4 = [v3 _stringByReplacingCharacter:8217 withCharacter:39];

  v5 = [v4 _stringByReplacingCharacter:8216 withCharacter:39];

  return v5;
}

- (id)_rangeOfText:(id)text endingAtPosition:(id)position
{
  textCopy = text;
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  if (![textCopy length])
  {
    v11 = [_selectableText textRangeFromPosition:positionCopy toPosition:positionCopy];
    goto LABEL_30;
  }

  v9 = [_selectableText _rangeOfEnclosingWord:positionCopy];
  if (v9)
  {
    v10 = [_selectableText textInRange:v9];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 isEqualToString:textCopy])
  {
    beginningOfDocument = [_selectableText positionFromPosition:positionCopy offset:{-objc_msgSend(textCopy, "length")}];
    if (!beginningOfDocument)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v14 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:positionCopy];

    if (v14)
    {
      v15 = [_selectableText textInRange:v14];

      v16 = [v15 length];
      if (v16 <= [textCopy length])
      {
        v12 = v14;
        v10 = v15;
LABEL_25:
        v21 = [(UIResponder *)self _normalizedStringForRangeComparison:v10];
        v22 = [(UIResponder *)self _normalizedStringForRangeComparison:textCopy];
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
        v18 = beginningOfDocument;
        beginningOfDocument = [_selectableText positionFromPosition:beginningOfDocument offset:1];

        if (!beginningOfDocument)
        {
          break;
        }

        if ([_selectableText comparePosition:beginningOfDocument toPosition:positionCopy] != -1)
        {

          break;
        }

        v12 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:positionCopy];

        if (!v12)
        {
          goto LABEL_24;
        }

        v10 = [_selectableText textInRange:v12];

        v19 = [v10 length];
        if (v19 > [textCopy length])
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

      beginningOfDocument = 0;
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

- (id)_rangeOfTextUnit:(int64_t)unit enclosingPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    _selectableText = [(UIResponder *)self _selectableText];
    tokenizer = [_selectableText tokenizer];
    v9 = [tokenizer rangeEnclosingPosition:positionCopy withGranularity:unit inDirection:0];

    if (!v9)
    {
      tokenizer2 = [_selectableText tokenizer];
      v9 = [tokenizer2 rangeEnclosingPosition:positionCopy withGranularity:unit inDirection:1];
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
  _selectableText = [(UIResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v5 = [_selectableText textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  return v5;
}

- (id)_rangeSpanningTextUnit:(int64_t)unit andPosition:(id)position
{
  positionCopy = position;
  if (!positionCopy)
  {
    v8 = 0;
    goto LABEL_17;
  }

  _selectableText = [(UIResponder *)self _selectableText];
  v8 = [(UIResponder *)self _rangeOfTextUnit:unit enclosingPosition:positionCopy];
  if (!v8)
  {
    tokenizer = [_selectableText tokenizer];
    v10 = 1;
    v11 = [tokenizer positionFromPosition:positionCopy toBoundary:unit inDirection:1];

    v12 = v11;
    if (!v11)
    {
      tokenizer2 = [_selectableText tokenizer];
      v12 = [tokenizer2 positionFromPosition:positionCopy toBoundary:unit inDirection:0];

      if (!v12)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v10 = 0;
    }

    tokenizer3 = [_selectableText tokenizer];
    v15 = [tokenizer3 rangeEnclosingPosition:v12 withGranularity:unit inDirection:v10];

    if (v11)
    {
      start = [v15 start];
      if (start)
      {
        v17 = _selectableText;
        v18 = start;
        v19 = positionCopy;
LABEL_13:
        v8 = [v17 textRangeFromPosition:v18 toPosition:v19];
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_11:
    start = [v15 end];
    if (start)
    {
      v17 = _selectableText;
      v18 = positionCopy;
      v19 = start;
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

- (BOOL)_range:(id)_range containsRange:(id)range
{
  rangeCopy = range;
  v7 = [(UIResponder *)self _nsrangeForTextRange:_range];
  v9 = v8;
  v10 = [(UIResponder *)self _nsrangeForTextRange:rangeCopy];
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

- (BOOL)_range:(id)_range intersectsRange:(id)range
{
  rangeCopy = range;
  v7 = [(UIResponder *)self _nsrangeForTextRange:_range];
  v9 = v8;
  v10 = [(UIResponder *)self _nsrangeForTextRange:rangeCopy];
  v12 = v11;

  v14.location = v7;
  v14.length = v9;
  v15.location = v10;
  v15.length = v12;
  return NSIntersectionRange(v14, v15).length != 0;
}

- (id)_intersectionOfRange:(id)range andRange:(id)andRange
{
  rangeCopy = range;
  andRangeCopy = andRange;
  selfCopy = self;
  start = [rangeCopy start];
  start2 = [andRangeCopy start];
  if ([(UIResponder *)selfCopy comparePosition:start toPosition:start2]== 1)
  {
    v11 = rangeCopy;
  }

  else
  {
    v11 = andRangeCopy;
  }

  start3 = [v11 start];

  v13 = [rangeCopy end];
  v14 = [andRangeCopy end];
  if ([(UIResponder *)selfCopy comparePosition:v13 toPosition:v14]== -1)
  {
    v15 = rangeCopy;
  }

  else
  {
    v15 = andRangeCopy;
  }

  v16 = [v15 end];

  v17 = [(UIResponder *)selfCopy textRangeFromPosition:start3 toPosition:v16];

  return v17;
}

- (BOOL)_range:(id)_range isEqualToRange:(id)range
{
  _rangeCopy = _range;
  rangeCopy = range;
  v8 = rangeCopy;
  if (_rangeCopy == rangeCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (_rangeCopy && rangeCopy)
    {
      selfCopy = self;
      start = [_rangeCopy start];
      start2 = [v8 start];
      v13 = [(UIResponder *)selfCopy comparePosition:start toPosition:start2];

      v14 = [_rangeCopy end];
      v15 = [v8 end];
      v16 = v13 | [(UIResponder *)selfCopy comparePosition:v14 toPosition:v15];

      v9 = v16 == 0;
    }
  }

  return v9;
}

- (id)_findBoundaryPositionClosestToPosition:(id)position withGranularity:(int64_t)granularity
{
  positionCopy = position;
  v7 = positionCopy;
  if (granularity == 5)
  {
    v8 = [(UIResponder *)self _findDocumentBoundaryFromPosition:positionCopy];
  }

  else if (granularity == 1)
  {
    v8 = [(UIResponder *)self _findPleasingWordBoundaryFromPosition:positionCopy];
  }

  else
  {
    v8 = positionCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_findPleasingWordBoundaryFromPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  tokenizer = [_selectableText tokenizer];
  if ([tokenizer isPosition:positionCopy atBoundary:4 inDirection:0])
  {
    goto LABEL_2;
  }

  v9 = [tokenizer isPosition:positionCopy withinTextUnit:1 inDirection:0];
  tokenizer2 = [_selectableText tokenizer];
  v11 = tokenizer2;
  if (v9)
  {
    v12 = [tokenizer2 rangeEnclosingPosition:positionCopy withGranularity:1 inDirection:0];

    start = [v12 start];
    v14 = [_selectableText offsetFromPosition:start toPosition:positionCopy];

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

  v15 = [tokenizer2 isPosition:positionCopy atBoundary:1 inDirection:1];

  if (v15)
  {
LABEL_2:
    endOfDocument = positionCopy;
LABEL_3:
    v8 = endOfDocument;
    goto LABEL_12;
  }

  tokenizer3 = [_selectableText tokenizer];
  v8 = [tokenizer3 positionFromPosition:positionCopy toBoundary:1 inDirection:0];

  if (!v8)
  {
    endOfDocument = [_selectableText endOfDocument];
    goto LABEL_3;
  }

LABEL_12:

  return v8;
}

- (id)_findDocumentBoundaryFromPosition:(id)position
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  beginningOfDocument = [_selectableText beginningOfDocument];
  endOfDocument = [_selectableText endOfDocument];
  v8 = [_selectableText offsetFromPosition:beginningOfDocument toPosition:positionCopy];
  v9 = [_selectableText offsetFromPosition:positionCopy toPosition:endOfDocument];

  if (v8 <= v9)
  {
    v10 = beginningOfDocument;
  }

  else
  {
    v10 = endOfDocument;
  }

  v11 = v10;
  v12 = v11;

  return v11;
}

- (id)_underlineRectsByDocumentLineForSelectionRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  tokenizer = [_selectableText tokenizer];
  start = [rangeCopy start];
  v8 = [tokenizer rangeEnclosingPosition:start withGranularity:4 inDirection:0];

  v9 = [rangeCopy end];
  v10 = [tokenizer rangeEnclosingPosition:v9 withGranularity:4 inDirection:0];

  if (!v8 || !v10 || ([v8 isEmpty] & 1) != 0 || (objc_msgSend(v10, "isEmpty") & 1) != 0 || (objc_msgSend(v8, "isEqual:", v10) & 1) != 0)
  {
    goto LABEL_9;
  }

  start2 = [v8 start];
  start3 = [v10 start];
  if ([start2 isEqual:start3])
  {

LABEL_9:
    v15 = [_selectableText selectionRectsForRange:rangeCopy];
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
  start4 = [rangeCopy start];
  v18 = [v8 end];
  v19 = [_selectableText textRangeFromPosition:start4 toPosition:v18];

  v29 = v19;
  [(UIResponder *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v19 inDocument:_selectableText];
  v20 = [v8 end];
  v21 = [tokenizer rangeEnclosingPosition:v20 withGranularity:4 inDirection:0];

  if (v21)
  {
    while (([v21 isEqual:v10] & 1) == 0)
    {
      v22 = [v21 end];
      v23 = [tokenizer rangeEnclosingPosition:v22 withGranularity:4 inDirection:0];

      if ([v23 isEqual:v21])
      {

        break;
      }

      v24 = [_selectableText selectionRectsForRange:v21];
      [v15 addObjectsFromArray:v24];

      v21 = v23;
      if (!v23)
      {
        break;
      }
    }
  }

  start5 = [v10 start];
  v26 = [rangeCopy end];
  v27 = [_selectableText textRangeFromPosition:start5 toPosition:v26];

  if (v27)
  {
    [(UIResponder *)self _updateSelectedRects:v15 byTrimmingWhitespaceInRange:v27 inDocument:_selectableText];
  }

LABEL_10:

  return v15;
}

- (void)_updateSelectedRects:(id)rects byTrimmingWhitespaceInRange:(id)range inDocument:(id)document
{
  rectsCopy = rects;
  rangeCopy = range;
  documentCopy = document;
  v9 = documentCopy;
  if (rangeCopy)
  {
    v10 = [documentCopy textInRange:rangeCopy];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v12 length])
    {
      start = [rangeCopy start];
      v14 = [v9 positionFromPosition:start offset:{objc_msgSend(v12, "length")}];

      start2 = [rangeCopy start];
      v16 = [v9 textRangeFromPosition:start2 toPosition:v14];

      if (v16)
      {
        v17 = [v9 selectionRectsForRange:v16];
        [rectsCopy addObjectsFromArray:v17];
      }
    }
  }
}

- (id)_rangeOfSmartSelectionIncludingRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    _selectableText = [(UIResponder *)self _selectableText];
    v58 = rangeCopy;
    v6 = rangeCopy;
    tokenizer = [_selectableText tokenizer];
    start = [v6 start];
    v9 = [tokenizer positionFromPosition:start toBoundary:2 inDirection:1];
    v10 = v9;
    if (v9)
    {
      beginningOfDocument = v9;
    }

    else
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
    }

    v12 = beginningOfDocument;

    start2 = [v6 start];
    v14 = [_selectableText offsetFromPosition:v12 toPosition:start2];

    if (v14 >= 65)
    {
      start3 = [v6 start];
      v16 = [_selectableText positionFromPosition:start3 offset:-64];

      v12 = [tokenizer positionFromPosition:v16 toBoundary:1 inDirection:0];

      if (!v12)
      {
        start4 = [v6 start];
        v18 = [_selectableText positionFromPosition:start4 offset:-64];

        v12 = [tokenizer positionFromPosition:v18 toBoundary:0 inDirection:0];
      }

      start5 = [v6 start];
      v20 = [_selectableText comparePosition:v12 toPosition:start5];

      if (v20 == 1)
      {
        start6 = [v6 start];
        v22 = [tokenizer positionFromPosition:start6 toBoundary:0 inDirection:1];
        v23 = v22;
        if (v22)
        {
          start7 = v22;
        }

        else
        {
          start7 = [v6 start];
        }

        v25 = start7;

        v12 = v25;
      }
    }

    v26 = [v6 end];
    v27 = [tokenizer positionFromPosition:v26 toBoundary:2 inDirection:0];
    v28 = v27;
    if (v27)
    {
      endOfDocument = v27;
    }

    else
    {
      endOfDocument = [_selectableText endOfDocument];
    }

    v30 = endOfDocument;

    v31 = [v6 end];
    v32 = [_selectableText offsetFromPosition:v31 toPosition:v30];

    if (v32 >= 65)
    {
      v33 = [v6 end];
      v34 = [_selectableText positionFromPosition:v33 offset:64];

      v30 = [tokenizer positionFromPosition:v34 toBoundary:1 inDirection:1];

      if (!v30)
      {
        v35 = [v6 end];
        v36 = [_selectableText positionFromPosition:v35 offset:64];

        v30 = [tokenizer positionFromPosition:v36 toBoundary:0 inDirection:1];
      }

      v37 = [v6 end];
      v38 = [_selectableText comparePosition:v37 toPosition:v30];

      if (v38 == 1)
      {
        v39 = [v6 end];
        v40 = [tokenizer positionFromPosition:v39 toBoundary:0 inDirection:0];
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

    v57 = tokenizer;
    v59 = [_selectableText textRangeFromPosition:v12 toPosition:v30];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v44 = [_selectableText keyboardType], v45 = 420, v44 != 3) && v44 != 10 && v44 != 120)
    {
      v45 = 428;
    }

    beginningOfDocument2 = [_selectableText beginningOfDocument];
    v56 = v12;
    v47 = [_selectableText offsetFromPosition:beginningOfDocument2 toPosition:v12];

    v48 = [(UIResponder *)self _nsrangeForTextRange:v6];
    v50 = v49;
    v51 = [_selectableText textInRange:v59];
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

    rangeCopy = v58;
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

- (id)_clampedpositionFromPosition:(id)position offset:(int)offset
{
  positionCopy = position;
  v7 = positionCopy;
  if (offset)
  {
    _selectableText = [(UIResponder *)self _selectableText];
    v9 = _selectableText;
    if (offset < 1)
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:offset];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 beginningOfDocument];
      }
    }

    else
    {
      beginningOfDocument = [_selectableText positionFromPosition:v7 offset:offset];
      if (!beginningOfDocument)
      {
        beginningOfDocument = [v9 endOfDocument];
      }
    }

    v11 = beginningOfDocument;
  }

  else
  {
    v11 = positionCopy;
  }

  return v11;
}

- (id)_rangeFromCurrentRangeWithDelta:(_NSRange)delta
{
  length = delta.length;
  location = delta.location;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  v7 = selectedTextRange;
  if (location | length)
  {
    v9 = length + location;
    start = [selectedTextRange start];
    v11 = [v7 end];
    if (location)
    {
      v12 = [_selectableText positionFromPosition:start offset:location];

      start = v12;
      if (!v12)
      {
        if ((location & 0x8000000000000000) != 0)
        {
          [_selectableText beginningOfDocument];
        }

        else
        {
          [_selectableText endOfDocument];
        }
        start = ;
      }
    }

    if (v9)
    {
      v13 = [_selectableText positionFromPosition:v11 offset:v9];

      v11 = v13;
      if (!v13)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          endOfDocument = start;
        }

        else
        {
          endOfDocument = [_selectableText endOfDocument];
        }

        v11 = endOfDocument;
      }
    }

    v15 = [_selectableText textRangeFromPosition:start toPosition:v11];
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
    v8 = selectedTextRange;
  }

  return v8;
}

- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  [_selectableText _setSelectedTextRange:rangeCopy withAffinityDownstream:downstreamCopy];
}

- (id)_setSelectionRangeWithHistory:(id)history
{
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  cursor = [historyCopy cursor];

  if (!cursor)
  {
    goto LABEL_19;
  }

  if ([historyCopy anchor] == 1)
  {
    cursor2 = [historyCopy cursor];
LABEL_5:
    [historyCopy setEnd:cursor2];
    goto LABEL_6;
  }

  anchor = [historyCopy anchor];
  cursor2 = [historyCopy cursor];
  [historyCopy setStart:cursor2];
  if (anchor != 2)
  {
    goto LABEL_5;
  }

LABEL_6:

  start = [historyCopy start];
  v10 = [historyCopy end];
  v11 = [_selectableText comparePosition:start toPosition:v10];

  if (v11 >= 1)
  {
    if ([historyCopy anchor] == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [historyCopy setAnchor:v12];
  }

  start2 = [historyCopy start];
  v14 = [historyCopy end];
  v15 = [_selectableText textRangeFromPosition:start2 toPosition:v14];

  -[UIResponder _updateSelectionWithTextRange:withAffinityDownstream:](self, "_updateSelectionWithTextRange:withAffinityDownstream:", v15, [historyCopy affinityDownstream]);
  if ([historyCopy anchor])
  {
    if ([historyCopy anchor] == 1)
    {
      [_selectableText _lastRectForRange:v15];
    }

    else
    {
      [_selectableText firstRectForRange:v15];
    }

    [_selectableText _scrollRectToVisible:0 animated:?];
  }

  else if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69E3030];
    webView = [(UIResponder *)self webView];
    [defaultCenter postNotificationName:v17 object:webView];
  }

LABEL_19:

  return historyCopy;
}

- (id)_setHistory:(id)history withExtending:(BOOL)extending withAnchor:(int)anchor withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  v7 = *&anchor;
  extendingCopy = extending;
  historyCopy = history;
  if (historyCopy)
  {
    v11 = historyCopy;
    if (!extendingCopy)
    {
      [(UITextInputArrowKeyHistory *)historyCopy setAnchor:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(UITextInputArrowKeyHistory);
  }

  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];
  start = [selectedTextRange start];
  [(UITextInputArrowKeyHistory *)v11 setStart:start];

  selectedTextRange2 = [_selectableText selectedTextRange];
  v16 = [selectedTextRange2 end];
  [(UITextInputArrowKeyHistory *)v11 setEnd:v16];

  anchor = [(UITextInputArrowKeyHistory *)v11 anchor];
  selectedTextRange3 = [_selectableText selectedTextRange];
  v19 = selectedTextRange3;
  if (v7 == 2)
  {
    if (anchor == 1)
    {
LABEL_7:
      start2 = [selectedTextRange3 end];
      goto LABEL_10;
    }
  }

  else if (anchor != 2)
  {
    goto LABEL_7;
  }

  start2 = [selectedTextRange3 start];
LABEL_10:
  v21 = start2;
  [(UITextInputArrowKeyHistory *)v11 setCursor:start2];

  startPosition = [(UITextInputArrowKeyHistory *)v11 startPosition];

  if (!startPosition)
  {
    cursor = [(UITextInputArrowKeyHistory *)v11 cursor];
    [(UITextInputArrowKeyHistory *)v11 setStartPosition:cursor];

    if (extendingCopy)
    {
      goto LABEL_12;
    }

LABEL_16:
    v7 = 0;
LABEL_17:
    [(UITextInputArrowKeyHistory *)v11 setAnchor:v7];
    goto LABEL_18;
  }

  if (!extendingCopy)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (![(UITextInputArrowKeyHistory *)v11 anchor]|| [(UIResponder *)self _isEmptySelection])
  {
    goto LABEL_17;
  }

LABEL_18:
  [(UITextInputArrowKeyHistory *)v11 setAffinityDownstream:downstreamCopy];

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:wordCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:1];

    if (v12)
    {
LABEL_7:
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v24 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:1];
      [v9 setCursor:v24];

      cursor3 = [v9 cursor];
      [v9 setStartPosition:cursor3];

      v26 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
      goto LABEL_9;
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor4 = [v9 cursor];
    cursor7 = [tokenizer3 positionFromPosition:cursor4 toBoundary:1 inDirection:1];

    if (cursor7)
    {
LABEL_4:
      tokenizer4 = [_selectableText tokenizer];
      cursor5 = [v9 cursor];
      v18 = [tokenizer4 isPosition:cursor5 withinTextUnit:1 inDirection:1];

      if ((v18 & 1) == 0)
      {
        tokenizer5 = [_selectableText tokenizer];
        cursor6 = [v9 cursor];
        v21 = [tokenizer5 positionFromPosition:cursor6 toBoundary:1 inDirection:1];
        [v9 setCursor:v21];
      }

      goto LABEL_7;
    }

    cursor7 = [v9 cursor];
    v28 = 0;
    while (1)
    {
      beginningOfDocument = [_selectableText beginningOfDocument];
      v30 = [_selectableText comparePosition:beginningOfDocument toPosition:cursor7];

      if (!v30)
      {
        break;
      }

      if (v28 && ![_selectableText comparePosition:v28 toPosition:cursor7])
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v9 setCursor:beginningOfDocument2];

        cursor8 = [v9 cursor];
        [v9 setStartPosition:cursor8];

        break;
      }

      v31 = cursor7;

      tokenizer6 = [_selectableText tokenizer];
      cursor7 = [tokenizer6 positionFromPosition:v31 toBoundary:3 inDirection:1];

      tokenizer7 = [_selectableText tokenizer];
      v34 = [tokenizer7 isPosition:cursor7 atBoundary:3 inDirection:1];

      v28 = v31;
      if ((v34 & 1) == 0)
      {
        [v9 setCursor:cursor7];

        goto LABEL_4;
      }
    }

    v26 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v26 = 0;
    v9 = historyCopy;
  }

LABEL_9:

  return v26;
}

- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:wordCopy withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor withinTextUnit:1 inDirection:0];

    if ((v12 & 1) == 0)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor2 = [v9 cursor];
      v15 = [tokenizer2 positionFromPosition:cursor2 toBoundary:1 inDirection:0];

      if (v15)
      {
        [v9 setCursor:v15];
      }
    }

    tokenizer3 = [_selectableText tokenizer];
    cursor3 = [v9 cursor];
    v18 = [tokenizer3 positionFromPosition:cursor3 toBoundary:1 inDirection:0];
    [v9 setCursor:v18];

    cursor4 = [v9 cursor];

    if (!cursor4)
    {
      endOfDocument = [_selectableText endOfDocument];
      [v9 setCursor:endOfDocument];
    }

    cursor5 = [v9 cursor];
    [v9 setStartPosition:cursor5];

    v22 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v22 = 0;
    v9 = historyCopy;
  }

  return v22;
}

- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v17 = 0;
    v10 = historyCopy;
    goto LABEL_11;
  }

  affinityDownstream = [historyCopy affinityDownstream];
  v10 = [(UIResponder *)self _setHistory:historyCopy withExtending:lineCopy withAnchor:2 withAffinityDownstream:1];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if (([tokenizer isPosition:v13 atBoundary:3 inDirection:1] & 1) == 0)
  {
    if (affinityDownstream)
    {
      tokenizer2 = [_selectableText tokenizer];
      cursor = [v10 cursor];
      v16 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:1];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:1];
    [v10 setCursor:v13];
  }

LABEL_10:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v17 = [(UIResponder *)self _setSelectionRangeWithHistory:v10];
LABEL_11:

  return v17;
}

- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (!selectedTextRange)
  {
    v14 = 0;
    v10 = historyCopy;
    goto LABEL_10;
  }

  affinityDownstream = [historyCopy affinityDownstream];
  v10 = [(UIResponder *)self _setHistory:historyCopy withExtending:lineCopy withAnchor:1 withAffinityDownstream:0];

  [v10 setAmount:0];
  tokenizer = [_selectableText tokenizer];
  selectedTextRange2 = [_selectableText selectedTextRange];
  v13 = [selectedTextRange2 end];
  if ([tokenizer isPosition:v13 atBoundary:3 inDirection:0])
  {
    goto LABEL_8;
  }

  if (affinityDownstream)
  {

LABEL_7:
    tokenizer = [_selectableText tokenizer];
    selectedTextRange2 = [v10 cursor];
    v13 = [tokenizer positionFromPosition:selectedTextRange2 toBoundary:4 inDirection:0];
    [v10 setCursor:v13];
LABEL_8:

    goto LABEL_9;
  }

  tokenizer2 = [_selectableText tokenizer];
  cursor = [v10 cursor];
  v17 = [tokenizer2 isPosition:cursor atBoundary:4 inDirection:0];

  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  cursor2 = [v10 cursor];
  [v10 setStartPosition:cursor2];

  v14 = [(UIResponder *)self _setSelectionRangeWithHistory:v10];
LABEL_10:

  return v14;
}

- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:paragraphCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:1];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:1];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:1];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = historyCopy;
  }

  return v18;
}

- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:paragraphCopy withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    tokenizer = [_selectableText tokenizer];
    cursor = [v9 cursor];
    v12 = [tokenizer isPosition:cursor atBoundary:3 inDirection:0];

    if (v12)
    {
      cursor2 = [v9 cursor];
      v14 = [tokenizer positionFromPosition:cursor2 toBoundary:0 inDirection:0];

      if (v14)
      {
        [v9 setCursor:v14];
      }
    }

    cursor3 = [v9 cursor];
    v16 = [tokenizer positionFromPosition:cursor3 toBoundary:3 inDirection:0];
    [v9 setCursor:v16];

    cursor4 = [v9 cursor];
    [v9 setStartPosition:cursor4];

    v18 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v18 = 0;
    v9 = historyCopy;
  }

  return v18;
}

- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:documentCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    beginningOfDocument = [_selectableText beginningOfDocument];
    [v9 setCursor:beginningOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    v12 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
    historyCopy = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:documentCopy withAnchor:1 withAffinityDownstream:0];

    [v9 setAmount:0];
    endOfDocument = [_selectableText endOfDocument];
    [v9 setCursor:endOfDocument];

    cursor = [v9 cursor];
    [v9 setStartPosition:cursor];

    tokenizer = [_selectableText tokenizer];
    cursor2 = [v9 cursor];
    v14 = [tokenizer isPosition:cursor2 atBoundary:4 inDirection:3];

    if (v14)
    {
      [v9 setAffinityDownstream:1];
    }

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_moveUp:(BOOL)up withHistory:(id)history
{
  upCopy = up;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (historyCopy)
    {
      affinityDownstream = [historyCopy affinityDownstream];
    }

    else
    {
      affinityDownstream = [(UIResponder *)self _selectionAffinity]== 0;
    }

    v11 = [(UIResponder *)self _setHistory:historyCopy withExtending:upCopy withAnchor:2 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") + 1}];
    cursor = [v11 cursor];
    beginningOfDocument = [_selectableText beginningOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:beginningOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        beginningOfDocument2 = [_selectableText beginningOfDocument];
        [v11 setCursor:beginningOfDocument2];

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
    v11 = historyCopy;
  }

  return v10;
}

- (id)_moveDown:(BOOL)down withHistory:(id)history
{
  downCopy = down;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    if (historyCopy)
    {
      affinityDownstream = [historyCopy affinityDownstream];
    }

    else
    {
      affinityDownstream = [(UIResponder *)self _selectionAffinity]== 0;
    }

    v11 = [(UIResponder *)self _setHistory:historyCopy withExtending:downCopy withAnchor:1 withAffinityDownstream:affinityDownstream];

    [v11 setAmount:{objc_msgSend(v11, "amount") - 1}];
    cursor = [v11 cursor];
    endOfDocument = [_selectableText endOfDocument];
    v14 = [_selectableText comparePosition:cursor toPosition:endOfDocument];

    if (v14)
    {
      startPosition = [v11 startPosition];
      if ([v11 amount] > 0)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      amount = [v11 amount];
      if (amount >= 0)
      {
        v18 = amount;
      }

      else
      {
        v18 = -amount;
      }

      v19 = [_selectableText _positionFromPosition:startPosition inDirection:v16 offset:v18 withAffinityDownstream:{objc_msgSend(v11, "affinityDownstream")}];

      cursor2 = [v11 cursor];
      v21 = [_selectableText comparePosition:cursor2 toPosition:v19];

      if (v21)
      {
        [v11 setCursor:v19];
      }

      else
      {
        endOfDocument2 = [_selectableText endOfDocument];
        [v11 setCursor:endOfDocument2];

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
    v11 = historyCopy;
  }

  return v10;
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  leftCopy = left;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:leftCopy withAnchor:2 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || leftCopy)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:3 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  rightCopy = right;
  historyCopy = history;
  _selectableText = [(UIResponder *)self _selectableText];
  selectedTextRange = [_selectableText selectedTextRange];

  if (selectedTextRange)
  {
    v9 = [(UIResponder *)self _setHistory:historyCopy withExtending:rightCopy withAnchor:1 withAffinityDownstream:1];

    [v9 setAmount:0];
    selectedTextRange2 = [_selectableText selectedTextRange];
    isEmpty = [selectedTextRange2 isEmpty];

    if ((isEmpty & 1) != 0 || rightCopy)
    {
      cursor = [v9 cursor];
      v13 = [_selectableText positionFromPosition:cursor inDirection:2 offset:1];
      [v9 setCursor:v13];
    }

    cursor2 = [v9 cursor];
    [v9 setStartPosition:cursor2];

    v15 = [(UIResponder *)self _setSelectionRangeWithHistory:v9];
  }

  else
  {
    v15 = 0;
    v9 = historyCopy;
  }

  return v15;
}

- (id)_positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset withAffinityDownstream:(BOOL)downstream
{
  positionCopy = position;
  _selectableText = [(UIResponder *)self _selectableText];
  v11 = [_selectableText positionFromPosition:positionCopy inDirection:direction offset:offset];

  return v11;
}

- (void)_setSelectedTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  downstreamCopy = downstream;
  rangeCopy = range;
  if (objc_opt_respondsToSelector())
  {
    [(UIResponder *)self setSelectedTextRange:rangeCopy withAffinityDownstream:downstreamCopy];
  }

  else
  {
    _selectableText = [(UIResponder *)self _selectableText];
    [_selectableText setSelectedTextRange:rangeCopy];
  }
}

- (int64_t)_selectionAffinity
{
  _selectableText = [(UIResponder *)self _selectableText];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    tokenizer = [_selectableText tokenizer];
    selectedTextRange = [_selectableText selectedTextRange];
    start = [selectedTextRange start];
    if ([tokenizer isPosition:start atBoundary:3 inDirection:1])
    {
    }

    else
    {
      tokenizer2 = [_selectableText tokenizer];
      selectedTextRange2 = [_selectableText selectedTextRange];
      v9 = [selectedTextRange2 end];
      v10 = [tokenizer2 isPosition:v9 atBoundary:4 inDirection:2];

      if (v10)
      {
        selectionAffinity = 1;
        goto LABEL_8;
      }
    }

    selectionAffinity = 0;
    goto LABEL_8;
  }

  selectionAffinity = [_selectableText selectionAffinity];
LABEL_8:

  return selectionAffinity;
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
    markedTextOverlay = [v3 markedTextOverlay];
    [markedTextOverlay removeFromSuperview];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    interactions = [markedTextOverlay interactions];
    v6 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(interactions);
          }

          [markedTextOverlay removeInteraction:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    _selectableText = [(UIResponder *)self _selectableText];
    interactionAssistant = [_selectableText interactionAssistant];
    v12 = interactionAssistant;
    if (interactionAssistant)
    {
      [interactionAssistant setGestureRecognizers];
    }

    else if ([_selectableText _hasMarkedText] && objc_msgSend(v3, "hasEditableMarkedText"))
    {
      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

      textInputView = [_selectableText textInputView];
      [textInputView addSubview:markedTextOverlay];

      v15 = [[UITextPhraseBoundaryInteraction alloc] initWithTextInput:_selectableText];
      [markedTextOverlay addInteraction:v15];
    }
  }
}

- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v9 = [[v7 alloc] initWithString:textCopy];

  [(UIResponder *)self _setAttributedMarkedText:v9 selectedRange:location, length];
}

- (void)_setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  _selectableText = [(UIResponder *)self _selectableText];
  _hasMarkedText = [(UIResponder *)self _hasMarkedText];
  if (objc_opt_respondsToSelector())
  {
    [_selectableText setAttributedMarkedText:textCopy selectedRange:{location, length}];
  }

  else
  {
    string = [textCopy string];

    [_selectableText setMarkedText:string selectedRange:{location, length}];
    textCopy = string;
  }

  _hasMarkedText2 = [(UIResponder *)self _hasMarkedText];
  if (_hasMarkedText != _hasMarkedText2)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v12 = _selectableText;
      markedTextOverlay = _selectionDisplayInteraction;
    }

    else
    {
      markedTextOverlay = 0;
      v12 = _selectableText;
    }

    [v12 _setGestureRecognizers];
    _textSelectingContainer = [(UIResponder *)self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v20 = interactionAssistant;
      _textSelectingContainer2 = [(UIResponder *)self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [(UIResponder *)self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:markedTextOverlay];
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (_hasMarkedText2)
  {
    _textSelectingContainer4 = [(UIResponder *)self _textSelectingContainer];
    interactionAssistant4 = [_textSelectingContainer4 interactionAssistant];

    if (!interactionAssistant4)
    {
      v16 = +[UIKeyboardImpl activeInstance];
      markedTextOverlay = [v16 markedTextOverlay];

      markedTextRange = [_selectableText markedTextRange];
      [_selectableText firstRectForRange:markedTextRange];
      [markedTextOverlay setFrame:?];

LABEL_15:
    }
  }
}

- (void)_unmarkText
{
  _selectableText = [(UIResponder *)self _selectableText];
  _hasMarkedText = [(UIResponder *)self _hasMarkedText];
  [_selectableText unmarkText];
  if (_hasMarkedText)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      _selectionDisplayInteraction = [_selectableText _selectionDisplayInteraction];
      v5 = _selectableText;
      v6 = _selectionDisplayInteraction;
    }

    else
    {
      v6 = 0;
      v5 = _selectableText;
    }

    [v5 _setGestureRecognizers];
    _textSelectingContainer = [(UIResponder *)self _textSelectingContainer];
    interactionAssistant = [_textSelectingContainer interactionAssistant];
    if (interactionAssistant)
    {
      v9 = interactionAssistant;
      _textSelectingContainer2 = [(UIResponder *)self _textSelectingContainer];
      interactionAssistant2 = [_textSelectingContainer2 interactionAssistant];
      externalInteractions = [interactionAssistant2 externalInteractions];

      if (externalInteractions)
      {
        _textSelectingContainer3 = [(UIResponder *)self _textSelectingContainer];
        interactionAssistant3 = [_textSelectingContainer3 interactionAssistant];
        [interactionAssistant3 deactivateSelection];

        [_selectableText _setSelectionDisplayInteraction:v6];
      }
    }

    else
    {
    }
  }
}

- (BOOL)_shouldPerformUICalloutBarButtonReplaceAction:(SEL)action forText:(id)text checkAutocorrection:(BOOL)autocorrection
{
  autocorrectionCopy = autocorrection;
  textCopy = text;
  v8 = textCopy;
  if (sel_promptForReplace_ != action && sel__promptForReplace_ != action)
  {
    if (sel__transliterateChinese_ == action)
    {
      v14 = UIKeyboardEnabledInputModesAllowChineseTransliterationForText(textCopy);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (autocorrectionCopy && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 autocorrectSpellingEnabled], v10, !v11) || (objc_msgSend(v8, "_containsCJScriptsOnly") & 1) != 0)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v8 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v14 = [v13 count] < 8;
LABEL_13:

  return v14;
}

- (CGRect)_lastRectForRange:(id)range
{
  rangeCopy = range;
  _selectableText = [(UIResponder *)self _selectableText];
  tokenizer = [_selectableText tokenizer];
  v7 = [rangeCopy end];
  v8 = [tokenizer positionFromPosition:v7 toBoundary:4 inDirection:1];

  if (v8)
  {
    start = [rangeCopy start];
    if ([_selectableText comparePosition:start toPosition:v8] < 0)
    {
      v10 = [rangeCopy end];
      v11 = [_selectableText comparePosition:v8 toPosition:v10];

      if (v11 < 0)
      {
        v24 = [rangeCopy end];
        v25 = [_selectableText textRangeFromPosition:v8 toPosition:v24];
        [_selectableText firstRectForRange:v25];
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

  [_selectableText firstRectForRange:rangeCopy];
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
  nextResponder = [(UIResponder *)self nextResponder];
  textInputView = [nextResponder textInputView];

  return textInputView;
}

- (void)_setSelectionDisplayInteraction:(id)interaction
{
  v4 = [_UITextInputImplicitObjectWrapper wrapperForObject:interaction];
  objc_setAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey, v4, 1);
}

- (void)__createInteractionAssistantIfNecessaryWithMode:(int64_t)mode
{
  v5 = objc_getAssociatedObject(self, &_UITextInputImplicitInteractionAssistantKey);
  if (!v5)
  {
    if ([(UIResponder *)self conformsToProtocol:&unk_1EFE8B2D0])
    {
      v6 = [[UITextInteractionAssistant alloc] initWithView:self textInteractionMode:mode];
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
    isValid = [v2 isValid];
    v3 = v5;
    if ((isValid & 1) == 0)
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
  interactionAssistant = [(UIResponder *)self interactionAssistant];
  interactions = [interactionAssistant interactions];

  return interactions;
}

- (BOOL)isEditable
{
  __textInteractionFromAssistant = [(UIResponder *)self __textInteractionFromAssistant];
  v3 = __textInteractionFromAssistant;
  if (__textInteractionFromAssistant)
  {
    v4 = [__textInteractionFromAssistant textInteractionMode] != 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CGRect)_caretRect
{
  _asTextSelection = [(UIResponder *)self _asTextSelection];
  selectedTextRange = [_asTextSelection selectedTextRange];
  start = [selectedTextRange start];

  if (start)
  {
    [_asTextSelection caretRectForPosition:start];
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

- (BOOL)_containsResponder:(id)responder
{
  responderCopy = responder;
  while (responderCopy)
  {
    if (responderCopy == self)
    {
      break;
    }

    v5 = responderCopy;
    responderCopy = [(UIResponder *)responderCopy nextResponder];
  }

  return responderCopy == self;
}

- (BOOL)_finishResignFirstResponderFromBecomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  _responderWindow = [(UIResponder *)self _responderWindow];
  if (!_responderWindow)
  {
    v6 = +[UIWindow _applicationKeyWindow];
    windowScene = [v6 windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    responder = [keyboardSceneDelegate responder];

    if (responder == self)
    {
      _responderWindow = v6;
    }

    else
    {
      _responderWindow = 0;
    }
  }

  windowScene2 = [_responderWindow windowScene];
  keyboardSceneDelegate2 = [windowScene2 keyboardSceneDelegate];

  responder2 = [keyboardSceneDelegate2 responder];
  if (!responder2 || ![keyboardSceneDelegate2 _isTrackingResponder:self])
  {
    goto LABEL_14;
  }

  if ([keyboardSceneDelegate2 _isTrackingResponder:self])
  {
    _window = [(UIResponder *)self _window];
    _window2 = [responder2 _window];
    v15 = _window2;
    if (_window != _window2)
    {

      goto LABEL_12;
    }

    _disableAutomaticKeyboardBehavior = [(UIResponder *)self _disableAutomaticKeyboardBehavior];

    if (_disableAutomaticKeyboardBehavior)
    {
      goto LABEL_12;
    }

    [keyboardSceneDelegate2 _reloadInputViewsForResponder:0 fromBecomeFirstResponder:responderCopy];
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
  __textInteractionFromAssistant = [(UIResponder *)self __textInteractionFromAssistant];
  v3 = [__textInteractionFromAssistant interactionWithClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    responder = [v3 responder];
  }

  else
  {
    responder = 0;
  }

  return responder;
}

- (void)_setStoredActivityItemsConfiguration:(_WORD *)configuration
{
  if (configuration)
  {
    configuration[4] = configuration[4] & 0xFFDF | (32 * (value != 0));
    objc_setAssociatedObject(configuration, &_UIActivityItemsConfigurationKey, value, 1);
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
      _effectivePasteConfiguration = [(UIResponder *)self _effectivePasteConfiguration];
      if (_effectivePasteConfiguration)
      {
        v24 = _effectivePasteConfiguration;
        v25 = +[UIPasteboard generalPasteboard];
        itemProviders = [v25 itemProviders];
        v27 = _UICanPasteItemProviders(v24, itemProviders);

        if (v27)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v19 = +[UIPasteboard generalPasteboard];
      itemProviders2 = [v19 itemProviders];
      v21 = [(UIResponder *)self canPasteItemProviders:itemProviders2];

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
    _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
    v16 = _textServicesResponderProxy;
    v17 = _textServicesResponderProxy && ([_textServicesResponderProxy canPerformAction:action withSender:v6] & 1) != 0;
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

      _requiresKeyboardWhenFirstResponder = [(UIResponder *)self _requiresKeyboardWhenFirstResponder];
    }

    else if (sel_showWritingTools_ == action)
    {
      _requiresKeyboardWhenFirstResponder = [(UIResponder *)self _shouldDisplayWritingToolsCalloutBarItem];
    }

    else
    {
      _requiresKeyboardWhenFirstResponder = objc_opt_respondsToSelector();
    }

    v17 = _requiresKeyboardWhenFirstResponder;
  }

LABEL_47:

  return v17;
}

- (id)_targetCanPerformBlock:(id)block
{
  blockCopy = block;
  if (blockCopy[2](blockCopy, self))
  {
    selfCopy = self;
  }

  else if ([(UIResponder *)self __isKindOfUIResponder])
  {
    nextResponder = [(UIResponder *)self nextResponder];
    if (objc_opt_respondsToSelector())
    {
      selfCopy = [nextResponder _targetCanPerformBlock:blockCopy];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)validateCommand:(UICommand *)command
{
  v8 = command;
  if ([(UICommand *)v8 action]== sel_undo_)
  {
    _undoManagerForValidatingUndoRedoCommands = [(UIResponder *)self _undoManagerForValidatingUndoRedoCommands];
    undoMenuItemTitle = [_undoManagerForValidatingUndoRedoCommands undoMenuItemTitle];
    if (undoMenuItemTitle)
    {
LABEL_9:
      [(UICommand *)v8 setTitle:undoMenuItemTitle];
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
    _undoManagerForValidatingUndoRedoCommands = [(UIResponder *)self _undoManagerForValidatingUndoRedoCommands];
    undoMenuItemTitle = [_undoManagerForValidatingUndoRedoCommands redoMenuItemTitle];
    if (undoMenuItemTitle)
    {
      goto LABEL_9;
    }

    v6 = @"Redo";
    goto LABEL_11;
  }

  if ([(UICommand *)v8 action]== sel_captureTextFromCamera_ && [(UIResponder *)self _conformsToProtocolUIKeyInput])
  {
    _undoManagerForValidatingUndoRedoCommands = [UIAction _textFromCameraTitleForResponder:self];
    [(UICommand *)v8 setTitle:_undoManagerForValidatingUndoRedoCommands];
LABEL_13:
  }
}

- (void)_define:(id)_define
{
  _defineCopy = _define;
  _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
  [_textServicesResponderProxy _define:_defineCopy];
}

- (void)_lookup:(id)_lookup
{
  _lookupCopy = _lookup;
  _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
  [_textServicesResponderProxy _lookup:_lookupCopy];
}

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
  [_textServicesResponderProxy _translate:_translateCopy];
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  if (![(UIResponder *)self _handleActivityItemsConfigurationShare:?])
  {
    _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
    [_textServicesResponderProxy _share:_shareCopy];
  }
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _textServicesResponderProxy = [(UIResponder *)self _textServicesResponderProxy];
  [_textServicesResponderProxy _addShortcut:shortcutCopy];
}

- (void)doesNotRecognizeSelector:(SEL)selector
{
  if (dyld_program_sdk_at_least() && sel_paste_ == selector && ([(UIResponder *)self _effectivePasteConfiguration], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (objc_opt_respondsToSelector())
    {
      _dataOwnerForPaste = [(UIResponder *)self _dataOwnerForPaste];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__UIResponder_doesNotRecognizeSelector___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v8];
    }
  }

  else if (![(UIResponder *)self _handleActivityItemsConfigurationDoesNotHandleSelector:selector])
  {
    v7.receiver = self;
    v7.super_class = UIResponder;
    [(UIResponder *)&v7 doesNotRecognizeSelector:selector];
  }
}

void __40__UIResponder_doesNotRecognizeSelector___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[UIPasteboard generalPasteboard];
  v2 = [v3 itemProviders];
  [v1 pasteItemProviders:v2];
}

+ (BOOL)_callBecomeFirstResponder:(id)responder withIntent:(unint64_t)intent
{
  responderCopy = responder;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:895 description:@"Call must be made on main thread"];
  }

  v8 = __changeIntent;
  __changeIntent = intent;
  becomeFirstResponder = [responderCopy becomeFirstResponder];
  __changeIntent = v8;

  return becomeFirstResponder;
}

+ (BOOL)_callResignFirstResponder:(id)responder withIntent:(unint64_t)intent
{
  responderCopy = responder;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:908 description:@"Call must be made on main thread"];
  }

  v8 = __changeIntent;
  __changeIntent = intent;
  resignFirstResponder = [responderCopy resignFirstResponder];
  __changeIntent = v8;

  return resignFirstResponder;
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
  _currentOverrideClient = [(UIResponder *)self _currentOverrideClient];
  target = [_currentOverrideClient target];
  types = [_currentOverrideClient types];
  if (target)
  {
    v8[0] = target;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:types];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_restoreOverrideState:(id)state
{
  stateCopy = state;
  if ((*&self->_responderFlags & 1) == 0)
  {
    v9 = stateCopy;
    v5 = stateCopy;
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

    stateCopy = v9;
  }
}

- (void)_preserveResponderOverridesWhilePerforming:(id)performing
{
  performingCopy = performing;
  v4 = objc_autoreleasePoolPush();
  _currentOverrideClient = [(UIResponder *)self _currentOverrideClient];
  target = [_currentOverrideClient target];
  types = [_currentOverrideClient types];

  performingCopy[2]();
  if (target && (*&self->_responderFlags & 1) == 0)
  {
    v8 = [_UIResponder_Override overrideForResponder:self withTarget:target forType:types];
    objc_setAssociatedObject(self, &_MergedGlobals_1256, v8, 1);
    *&self->_responderFlags |= 1u;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_overrideNextResponderWithResponder:(id)responder forType:(int64_t)type
{
  responderCopy = responder;
  v6 = objc_autoreleasePoolPush();
  if (![(UIResponder *)self _containsResponder:responderCopy])
  {
    if (responderCopy)
    {
      v7 = [_UIResponder_Override overrideForResponder:self withTarget:responderCopy forType:type];
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
  nextResponder = [(UIResponder *)self nextResponder];
  recentsAccessoryView = [nextResponder recentsAccessoryView];

  return recentsAccessoryView;
}

- (id)_keyboardShortcutInvocationForKeyboardEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 4)
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
    v8 = eventCopy;
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

- (void)_enumerateKeyboardShortcutsInChainWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v75 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (qword_1ED4A0038 != -1)
  {
    dispatch_once(&qword_1ED4A0038, &__block_literal_global_487);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  v69 = (optionsCopy & 8) != 0;
  v10 = dictionary;
  v67 = v10;
  v11 = _Block_copy(aBlock);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __72__UIResponder__enumerateKeyboardShortcutsInChainWithOptions_usingBlock___block_invoke_194;
  v63[3] = &unk_1E711E220;
  v52 = v11;
  v64 = v52;
  v65 = (optionsCopy & 2) != 0;
  v12 = _Block_copy(v63);
  v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  selfCopy = self;
  if (selfCopy)
  {
    v15 = selfCopy;
    while (![v13 containsObject:v15])
    {
      [v13 addObject:v15];
      _keyboardShortcutMenuLeaves = [v15 _keyboardShortcutMenuLeaves];
      v12[2](v12, _keyboardShortcutMenuLeaves, v15);

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
  if ((optionsCopy & 1) == 0)
  {
    v20 = +[UIMainMenuSystem sharedSystem];
    _keyCommands = [v20 _keyCommands];

    v12[2](v12, _keyCommands, UIApp);
  }

  if ((optionsCopy & 0x20) != 0)
  {
    v22 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v22 inputDelegateManager];
    keyInputDelegate = [inputDelegateManager keyInputDelegate];

    if (keyInputDelegate)
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
  allKeys = [v10 allKeys];
  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0];
  v72 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v28 = [allKeys sortedArrayUsingDescriptors:v27];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = v28;
  v47 = [v29 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v47)
  {
    v30 = *v60;
    v31 = optionsCopy & 0x14;
    v45 = *v60;
    v46 = optionsCopy;
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
            keyboardShortcutLeaf = [v39 keyboardShortcutLeaf];
            v41 = keyboardShortcutLeaf;
            if (v31 != 16)
            {
              _keyboardShortcut = [keyboardShortcutLeaf _keyboardShortcut];
              v43 = [v53 containsObject:_keyboardShortcut];

              if (v43)
              {
                goto LABEL_43;
              }

              _keyboardShortcut2 = [v41 _keyboardShortcut];
              [v53 addObject:_keyboardShortcut2];
            }

            blockCopy[2](blockCopy, v39, buf);
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
  nextResponder = [(UIResponder *)self nextResponder];
  _enableAutomaticKeyboardPressDone = [nextResponder _enableAutomaticKeyboardPressDone];

  return _enableAutomaticKeyboardPressDone;
}

- (id)_nextResponderThatCanBecomeFirstResponder
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      if ([(UIResponder *)selfCopy isFirstResponder])
      {
        break;
      }

      if ([(UIResponder *)selfCopy canBecomeFirstResponder])
      {
        break;
      }

      nextResponder = [(UIResponder *)selfCopy nextResponder];

      selfCopy = nextResponder;
    }

    while (nextResponder);
  }

  return selfCopy;
}

- (BOOL)_nextResponderChainContainsResponder:(id)responder
{
  responderCopy = responder;
  if (!responderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:1663 description:{@"Invalid parameter not satisfying: %@", @"nextResponder"}];
  }

  selfCopy = self;
  for (i = selfCopy != 0; selfCopy; i = selfCopy != 0)
  {
    if (selfCopy == responderCopy)
    {
      break;
    }

    v8 = selfCopy;
    selfCopy = [(UIResponder *)selfCopy nextResponder];
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

- (void)_handleKeyEvent:(__GSEvent *)event
{
  nextResponder = [(UIResponder *)self nextResponder];
  [nextResponder _handleKeyEvent:event];
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  nextResponder = [(UIResponder *)self nextResponder];
  [nextResponder _handleKeyUIEvent:eventCopy];
}

- (void)_handleGameControllerEvent:(id)event
{
  eventCopy = event;
  nextResponder = [(UIResponder *)self nextResponder];
  [nextResponder _handleGameControllerEvent:eventCopy];
}

- (BOOL)_isTransitioningFromView:(id)view
{
  selfCopy = self;
  nextResponder = [(UIResponder *)self nextResponder];
  LOBYTE(selfCopy) = [nextResponder _isTransitioningFromView:selfCopy];

  return selfCopy;
}

- (void)_completeForwardingTouches:(id)touches phase:(int64_t)phase event:(id)event index:(unint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  eventCopy = event;
  if (os_variant_has_internal_diagnostics())
  {
    if (phase > 4 || ((1 << phase) & 0x1A) == 0)
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

  else if (phase > 4 || ((1 << phase) & 0x1A) == 0)
  {
    v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0068) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315138;
      v29 = "[UIResponder _completeForwardingTouches:phase:event:index:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected touch phase in %s", &v28, 0xCu);
    }
  }

  nextResponder = [(UIResponder *)self nextResponder];
  anyObject = [touchesCopy anyObject];
  _forwardingRecord = [anyObject _forwardingRecord];
  v15 = [_forwardingRecord count];
  if (v15 <= index)
  {
    goto LABEL_25;
  }

  v16 = v15;
  while (1)
  {
    v17 = [_forwardingRecord objectAtIndex:index];
    v18 = v17;
    if (nextResponder)
    {
      responder = [v17 responder];

      if (nextResponder == responder)
      {
        break;
      }
    }

    [v18 setResponder:0];
    v12NextResponder = 0;
LABEL_14:

    ++index;
    nextResponder = v12NextResponder;
    if (v16 == index)
    {
      goto LABEL_26;
    }
  }

  if (!v18)
  {
    if (phase > 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v18[3] >= phase && (phase != 1 || v18[4] != 1))
  {
LABEL_13:
    v12NextResponder = [nextResponder nextResponder];
    goto LABEL_14;
  }

  v18[3] = phase;
  v18[4] = phase;
LABEL_21:
  responder2 = [v18 responder];

  if (responder2)
  {
    _eventComponentPhase = [anyObject _eventComponentPhase];
    v24 = [anyObject _responderSelectorForPhase:{objc_msgSend(_eventComponentPhase, "value")}];

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

    ([nextResponder methodForSelector:v24])(responder2, v24, touchesCopy, eventCopy);
    [responder2 _completeForwardingTouches:touchesCopy phase:phase event:eventCopy index:index + 1];
  }

LABEL_25:
  v12NextResponder = nextResponder;
LABEL_26:
}

- (int64_t)_availableTextServices
{
  nextResponder = [(UIResponder *)self nextResponder];
  _availableTextServices = [nextResponder _availableTextServices];

  return _availableTextServices;
}

- (id)_showServiceForType:(int64_t)type withContext:(id)context
{
  contextCopy = context;
  nextResponder = [(UIResponder *)self nextResponder];
  v8 = [nextResponder _showServiceForType:type withContext:contextCopy];

  return v8;
}

- (id)_showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  textCopy = text;
  nextResponder = [(UIResponder *)self nextResponder];
  v16 = [nextResponder _showServiceForText:textCopy type:type fromRect:viewCopy inView:{x, y, width, height}];

  return v16;
}

- (id)_showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  nextResponder = [(UIResponder *)self nextResponder];
  v19 = [nextResponder _showServiceForText:textCopy selectedTextRange:location type:length fromRect:type inView:{viewCopy, x, y, width, height}];

  return v19;
}

- (id)_primaryContentResponder
{
  nextResponder = [(UIResponder *)self nextResponder];
  _primaryContentResponder = [nextResponder _primaryContentResponder];

  return _primaryContentResponder;
}

- (CGRect)_responderSelectionRectForWindow:(id)window
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

- (CGRect)_responderExternalTouchRectForWindow:(id)window
{
  if (window)
  {
    [window frame];
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

- (id)_responderSelectionContainerViewForResponder:(id)responder
{
  responderCopy = responder;
  nextResponder = [(UIResponder *)self nextResponder];
  v6 = [nextResponder _responderSelectionContainerViewForResponder:responderCopy];

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

- (BOOL)_canChangeFirstResponder:(id)responder toResponder:(id)toResponder
{
  responderCopy = responder;
  toResponderCopy = toResponder;
  nextResponder = [(UIResponder *)self nextResponder];
  v9 = nextResponder;
  if (nextResponder)
  {
    v10 = [nextResponder _canChangeFirstResponder:responderCopy toResponder:toResponderCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setFirstResponder:(id)responder
{
  responderCopy = responder;
  [(UIResponder *)self _willChangeToFirstResponder:responderCopy];
  nextResponder = [(UIResponder *)self nextResponder];
  [nextResponder _setFirstResponder:responderCopy];

  [(UIResponder *)self _didChangeToFirstResponder:responderCopy];
}

- (CGRect)_rectToScrollToVisibleInCellInWindow:(id)window
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

- (void)_checkIsText:(BOOL *)text isSecure:(BOOL *)secure isEditable:(BOOL *)editable isFormatted:(BOOL *)formatted
{
  v11 = [(UIResponder *)self conformsToProtocol:&unk_1EFE8A8A0];
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    isSecureTextEntry = 0;
    if (!text)
    {
      goto LABEL_17;
    }

LABEL_16:
    *text = v12;
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    isSecureTextEntry = [(UIResponder *)self isSecureTextEntry];
  }

  else
  {
    v15 = [UITextInputTraits traitsByAdoptingTraits:self];
    v16 = v15;
    if (v15)
    {
      isSecureTextEntry = [v15 isSecureTextEntry];
    }

    else
    {
      isSecureTextEntry = 0;
    }
  }

  v14 = (objc_opt_respondsToSelector() & 1) != 0 && [(UIResponder *)self isEditable];
  if ([(UIResponder *)self canPerformAction:sel_toggleBoldface_ withSender:0]|| [(UIResponder *)self canPerformAction:sel_toggleItalics_ withSender:0])
  {
    LOBYTE(v11) = 1;
    if (!text)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  LOBYTE(v11) = [(UIResponder *)self canPerformAction:sel_toggleUnderline_ withSender:0];
  if (text)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (secure)
  {
    *secure = isSecureTextEntry;
  }

  if (editable)
  {
    *editable = v14;
  }

  if (formatted)
  {
    *formatted = v11;
  }
}

- (BOOL)_disallowsPresentationOfKeyboardShortcutHUD
{
  nextResponder = [(UIResponder *)self nextResponder];
  _disallowsPresentationOfKeyboardShortcutHUD = [nextResponder _disallowsPresentationOfKeyboardShortcutHUD];

  return _disallowsPresentationOfKeyboardShortcutHUD;
}

- (BOOL)_alwaysRequireInlineCandidateView
{
  nextResponder = [(UIResponder *)self nextResponder];
  _alwaysRequireInlineCandidateView = [nextResponder _alwaysRequireInlineCandidateView];

  return _alwaysRequireInlineCandidateView;
}

- (BOOL)_isHardwareKeyboardBehaviorEnabled
{
  v2 = +[UIKeyboardImpl activeInstance];
  isInHardwareKeyboardMode = [v2 isInHardwareKeyboardMode];

  return isInHardwareKeyboardMode;
}

- (void)setPasteConfiguration:(id)configuration
{
  *&self->_responderFlags = *&self->_responderFlags & 0xFFEF | (16 * (configuration != 0));
  v4 = [configuration copy];
  objc_setAssociatedObject(self, &_pasteConfigurationKey, v4, 1);
}

- (void)pasteItemProviders:(id)providers
{
  providersCopy = providers;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = [(UIResponder *)self _nextResponderUsingTraversalStrategy:2];
    v6 = v5;
    if (v5)
    {
      [v5 pasteItemProviders:providersCopy];
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIResponder.m" lineNumber:2049 description:@"pasteItemProviders: must be overridden if pasteConfiguration is not nil."];
}

- (BOOL)canPasteItemProviders:(id)providers
{
  providersCopy = providers;
  _effectivePasteConfiguration = [(UIResponder *)self _effectivePasteConfiguration];
  v6 = _effectivePasteConfiguration;
  if (_effectivePasteConfiguration)
  {
    v7 = _UICanPasteItemProviders(_effectivePasteConfiguration, providersCopy);
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
  integerValue = [v3 integerValue];

  if (!integerValue)
  {
    integerValue = [(UIResponder *)self nextResponder];

    if (integerValue)
    {
      nextResponder = [(UIResponder *)self nextResponder];
      integerValue = [nextResponder _dragDataOwner];
    }
  }

  return integerValue;
}

- (void)_setDragDataOwner:(int64_t)owner
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:owner];
  objc_setAssociatedObject(self, &_dragDataOwnerKey, v4, 1);
}

- (int64_t)_dropDataOwner
{
  v3 = objc_getAssociatedObject(self, &_dropDataOwnerKey);
  integerValue = [v3 integerValue];

  if (!integerValue)
  {
    integerValue = [(UIResponder *)self nextResponder];

    if (integerValue)
    {
      nextResponder = [(UIResponder *)self nextResponder];
      integerValue = [nextResponder _dropDataOwner];
    }
  }

  return integerValue;
}

- (void)_setDropDataOwner:(int64_t)owner
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:owner];
  objc_setAssociatedObject(self, &_dropDataOwnerKey, v4, 1);
}

- (int64_t)_dataOwnerForCopy
{
  v3 = objc_getAssociatedObject(self, &_dataOwnerForCopyKey);
  integerValue = [v3 integerValue];

  if (!integerValue)
  {
    integerValue = [(UIResponder *)self nextResponder];

    if (integerValue)
    {
      nextResponder = [(UIResponder *)self nextResponder];
      integerValue = [nextResponder _dataOwnerForCopy];
    }
  }

  return integerValue;
}

- (void)_setDataOwnerForCopy:(int64_t)copy
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:copy];
  objc_setAssociatedObject(self, &_dataOwnerForCopyKey, v4, 1);
}

- (int64_t)_dataOwnerForPaste
{
  v3 = objc_getAssociatedObject(self, &_dataOwnerForPasteKey);
  integerValue = [v3 integerValue];

  if (!integerValue)
  {
    integerValue = [(UIResponder *)self nextResponder];

    if (integerValue)
    {
      nextResponder = [(UIResponder *)self nextResponder];
      integerValue = [nextResponder _dataOwnerForPaste];
    }
  }

  return integerValue;
}

- (void)_setDataOwnerForPaste:(int64_t)paste
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:paste];
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
    _window = [(UIResponder *)self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    [keyboardSceneDelegate _setReloadInputViewsForcedIsAllowed:0];
    [keyboardSceneDelegate _reloadInputViewsForResponder:self];
    [keyboardSceneDelegate _setReloadInputViewsForcedIsAllowed:1];
  }
}

- (void)_reloadInputViewsFromFirstResponder:(BOOL)responder
{
  if ([(UIResponder *)self shouldReloadInputViews])
  {
    _responderWindow = [(UIResponder *)self _responderWindow];
    windowScene = [_responderWindow windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    [keyboardSceneDelegate _reloadInputViewsForResponder:self fromBecomeFirstResponder:1];
  }
}

- (void)_setSuppressSoftwareKeyboard:(BOOL)keyboard
{
  responderFlags = self->_responderFlags;
  if (((((responderFlags & 0x40) == 0) ^ keyboard) & 1) == 0)
  {
    if (keyboard)
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
  _keyboardResponder = [(UIResponder *)self _keyboardResponder];
  if (_keyboardResponder)
  {
    v5 = +[UIKeyboardCameraSession sharedSession];
    [v5 showForResponder:_keyboardResponder sender:v6 rtiConfiguration:0];
  }
}

- (void)setUserActivity:(NSUserActivity *)userActivity
{
  value = userActivity;
  _userActivity = [(UIResponder *)self _userActivity];
  if (_userActivity != value)
  {
    *&self->_responderFlags = *&self->_responderFlags & 0xFFF7 | (8 * (value != 0));
    objc_setAssociatedObject(self, &kResponderUserActivityKey, value, 1);
    if (_userActivity)
    {
      [UIApp _removeResponder:self forUserActivity:_userActivity];
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

- (void)setRestorationIdentifier:(id)identifier
{
  objc_setAssociatedObject(self, &kRestorationIdentifierAssociatedObjectKey, identifier, 1);

  _trackObjectWithIdentifier(self);
}

+ (id)objectWithRestorationIdentifierPath:(id)path
{
  if (!qword_1ED4A07D0 || (result = [qword_1ED4A07D0 objectForKey:path]) == 0)
  {
    v5 = qword_1ED4A07D8;

    return [v5 objectForKey:path];
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

+ (void)_setRestoredIdentifierPathForObject:(id)object identifierPath:(id)path
{
  v6 = [path componentsSeparatedByString:@"/"];
  if ([v6 count])
  {
    v7 = qword_1ED4A07B0;
    if (!qword_1ED4A07B0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      qword_1ED4A07B0 = v7;
    }

    [v7 setObject:v6 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%p", object)}];
    [v6 lastObject];

    _trackObjectWithIdentifier(object);
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningIdenti.isa, "+[UIResponder(StateRestoration) _setRestoredIdentifierPathForObject:identifierPath:]", path, object);
  }
}

void __55__UIResponder__UIStickerExtension___supportsImagePaste__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==" options:0];
  v1 = _supportsImagePaste_imgData;
  _supportsImagePaste_imgData = v0;
}

- (void)_insertItemFromProvider:(id)provider completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  providerCopy = provider;
  v7 = MEMORY[0x1E695DEC8];
  providerCopy2 = provider;
  v9 = [v7 arrayWithObjects:&providerCopy count:1];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{0.5, providerCopy, v17}];
  [UIPasteboard _pinItemProviders:v9 forPasteboardNamed:@"com.apple.UIKit.pboard.general" withExpirationDate:v10];

  v11 = [(UIResponder *)self targetForAction:sel_paste_ withSender:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 conformsToProtocol:&unk_1F016CC30];

    if (v13)
    {
      [v12 pasteWithCompletionHandler:&__block_literal_global_215_3];
      if (!handlerCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [v12 paste:0];
      v15 = dispatch_time(0, 500000000);
      dispatch_after(v15, MEMORY[0x1E69E96A0], &__block_literal_global_217_2);
      if (!handlerCopy)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v14 = +[UIPasteboard generalPasteboard];

  [v14 _clearPinnedItemProviders];
  if (handlerCopy)
  {
LABEL_6:
    handlerCopy[2](handlerCopy, v12 != 0);
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
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  if (objc_opt_respondsToSelector())
  {
    isEditable = [_textInputForWritingTools isEditable];
  }

  else
  {
    _textInteraction = [(UIResponder *)self _textInteraction];

    if (_textInteraction)
    {
      _textInteraction2 = [(UIResponder *)self _textInteraction];
      isEditable = [_textInteraction2 textInteractionMode] == 0;
    }

    else
    {
      isEditable = 1;
    }
  }

  return isEditable;
}

- (id)_writingToolsDelegate
{
  __wt_writingToolsCoordinator = [(UIResponder *)self __wt_writingToolsCoordinator];
  v4 = __wt_writingToolsCoordinator;
  if (__wt_writingToolsCoordinator)
  {
    v5 = __wt_writingToolsCoordinator;
  }

  else
  {
    _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([_textInputForWritingTools textLayoutManager], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = _textInputForWritingTools;
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
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [_textInputForWritingTools conformsToProtocolCached:&unk_1F016C810];
  inputDelegateManager = [v3 inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  v7 = v4 & [v3 nextInputWouldStartSentence];
  return v7 & hasAsyncCapableInputDelegate;
}

- (void)_asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __105__UIResponder_WritingToolsSupport___asyncShouldDisplayWritingToolsCandidateOptionsWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E7107E48;
    v5[4] = self;
    v6 = handlerCopy;
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
  _writingToolsDelegate = [(UIResponder *)self _writingToolsDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = _writingToolsDelegate;
  }

  else
  {
    selfCopy = self;
  }

  _supportsWritingTools = [(UIResponder *)selfCopy _supportsWritingTools];

  return _supportsWritingTools;
}

- (void)showWritingTools:(id)tools
{
  v14[1] = *MEMORY[0x1E69E9840];
  toolsCopy = tools;
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  v6 = _textInputForWritingTools;
  if (!_textInputForWritingTools || _textInputForWritingTools == self)
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

        [(UIResponder *)self _startWritingToolsWithTool:@"WTUIRequestedToolNone" prompt:0 sender:toolsCopy];
        goto LABEL_10;
      }

      v8 = +[_UISignalAnalytics getIAPayloadValueWritingToolsUICandidateBar];
    }

    v9 = v8;

    v7 = v9;
    goto LABEL_9;
  }

  [(UIResponder *)_textInputForWritingTools showWritingTools:toolsCopy];
LABEL_10:
}

- (void)_startWritingToolsWithTool:(id)tool prompt:(id)prompt entryPoint:(id)point inputContextHistory:(id)history sender:(id)sender
{
  v27 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  promptCopy = prompt;
  pointCopy = point;
  historyCopy = history;
  if ([(UIResponder *)self _supportsWritingTools])
  {
    _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];

    if (_writingToolsViewController)
    {
      [(UIResponder *)self _endWritingTools];
    }

    v16 = objc_alloc(getWTWritingToolsViewControllerClass());
    if (historyCopy)
    {
      v17 = [v16 _initWithRequestedTool:toolCopy baseResponse:promptCopy entryPoint:pointCopy inputContextHistory:historyCopy];
    }

    else
    {
      v17 = [v16 initWithRequestedTool:toolCopy prompt:promptCopy];
    }

    v18 = v17;
    [(UIResponder *)self _setWritingToolsViewController:v17];
    _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
    if (os_variant_has_internal_diagnostics())
    {
      if (!_textInputForWritingTools)
      {
        v21 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v23 = 138412546;
          selfCopy3 = self;
          v25 = 2048;
          selfCopy4 = self;
          _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "<%@:%p> can not find UITextInput", &v23, 0x16u);
        }
      }
    }

    else if (!_textInputForWritingTools)
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &_startWritingToolsWithTool_prompt_entryPoint_inputContextHistory_sender____s_category) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412546;
        selfCopy3 = self;
        v25 = 2048;
        selfCopy4 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "<%@:%p> can not find UITextInput", &v23, 0x16u);
      }
    }

    [v18 setSourceResponder:self sourceTextInput:_textInputForWritingTools];
    _writingToolsDelegate = [(UIResponder *)self _writingToolsDelegate];
    [v18 setWritingToolsDelegate:_writingToolsDelegate];

    [(UIResponder *)self _setWritingToolsWantsKeyboardSuppression:1];
    if (objc_opt_respondsToSelector())
    {
      [_textInputForWritingTools willPresentWritingTools];
    }

    [v18 startWritingTools];
    if (toolCopy != @"WTUIRequestedToolNone")
    {
      [(UIResponder *)self _playInvocationAnimation];
    }
  }
}

- (void)_endWritingTools
{
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
  [_writingToolsViewController endWritingTools];
}

- (void)_writingToolsDidEnd
{
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];

  [(UIResponder *)self _setWritingToolsViewController:0];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v4 systemInputAssistantViewController];
  [systemInputAssistantViewController setInputAssistantButtonItemsForResponder:self];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 writingToolsDidEnd];

  if (_writingToolsViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_textInputForWritingTools didDismissWritingTools];
  }

  __wt_writingToolsCoordinator = [(UIResponder *)self __wt_writingToolsCoordinator];
  [__wt_writingToolsCoordinator _didDismissWritingTools];
}

- (void)_setWritingToolsWantsKeyboardSuppression:(BOOL)suppression suppressAssistant:(BOOL)assistant
{
  assistantCopy = assistant;
  suppressionCopy = suppression;
  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v8 = v7;
  if (suppressionCopy)
  {
    wantsAssistantWhileSuppressingKeyboard = [v7 wantsAssistantWhileSuppressingKeyboard];

    v10 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v10 setWantsAssistantWhileSuppressingKeyboard:!assistantCopy];

    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    value = [v11 vendKeyboardSuppressionAssertionForReason:@"WritingTools" type:0];

    objc_setAssociatedObject(self, &_MergedGlobals_1399, value, 1);
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    useVisualModeWindowedUI = [v12 useVisualModeWindowedUI];

    if (useVisualModeWindowedUI && (wantsAssistantWhileSuppressingKeyboard & 1) == 0 && !assistantCopy)
    {
      v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      [v14 forceReloadInputViews];
    }

    _selectionDisplayInteraction = [(UIResponder *)self _selectionDisplayInteraction];
    containerRootController = [_selectionDisplayInteraction obtainGhostCursorAssertionForReason:@"WritingTools"];

    objc_setAssociatedObject(self, &unk_1ED4A2F99, containerRootController, 1);
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
    containerRootController = [value containerRootController];
    [containerRootController clearExternalTrackingInfo];
  }
}

- (id)_viewControllerForWritingToolsSource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
LABEL_5:
    _viewControllerForAncestor = selfCopy;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [(UIResponder *)self _viewControllerForAncestor];
    goto LABEL_5;
  }

  textInputView = [(UIResponder *)self textInputView];
  _viewControllerForAncestor = [textInputView _viewControllerForAncestor];

LABEL_7:
  view = [_viewControllerForAncestor view];
  window = [view window];
  rootViewController = [window rootViewController];

  v9 = _viewControllerForAncestor;
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
      _rootAncestorViewController = [v14 _rootAncestorViewController];
      if (_rootAncestorViewController == rootViewController)
      {
        break;
      }

      _ancestorViewControllerIsInPopover = [v14 _ancestorViewControllerIsInPopover];

      if (_ancestorViewControllerIsInPopover)
      {
        goto LABEL_19;
      }

      view2 = [v14 view];
      superview = [view2 superview];

      if (!superview)
      {
        _rootAncestorViewController = v14;
        v14 = v13;
        v13 = 0;
        break;
      }

      _viewControllerForAncestor2 = [superview _viewControllerForAncestor];

      v13 = 0;
      v20 = 0;
      v14 = _viewControllerForAncestor2;
      if (!_viewControllerForAncestor2)
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
    v21 = rootViewController;
  }

  v22 = v21;

  return v21;
}

- (void)_setWritingToolsInputDashboardViewController:(id)controller
{
  objc_setAssociatedObject(self, &kWritingToolsInputDashboardViewControllerKey, controller, 1);
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v4 systemInputAssistantViewController];
  [systemInputAssistantViewController setInputAssistantButtonItemsForResponder:self];

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

- (void)_setSmartReplyFeedbackInputDashboardViewController:(id)controller
{
  objc_setAssociatedObject(self, &kSmartReplyFeedbackInputDashboardViewControllerKey, controller, 1);
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v4 systemInputAssistantViewController];
  [systemInputAssistantViewController setInputAssistantButtonItemsForResponder:self];

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

- (id)_assistantBarButtonItemForWritingToolsWithStyle:(int64_t)style
{
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _writingToolsViewController2 = [(UIResponder *)self _writingToolsViewController];
    v8 = [_writingToolsViewController2 assistantBarButtonItemWithStyle:style];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setWritingToolsViewController:(id)controller
{
  controllerCopy = controller;
  _firstResponder = [(UIResponder *)self _firstResponder];
  objc_setAssociatedObject(_firstResponder, &kWritingToolsViewControllerForFirstResponderKey, controllerCopy, 1);

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 generateCandidates];
}

- (id)_responderThatRequestedWritingTools
{
  _viewControllerForWritingToolsSource = [(UIResponder *)self _viewControllerForWritingToolsSource];
  v3 = objc_getAssociatedObject(_viewControllerForWritingToolsSource, &kResponderThatRequestedWritingTools);

  return v3;
}

- (void)_setSuppressWritingToolsForRemoteKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  _writingToolsViewController = [(UIResponder *)self _writingToolsViewController];
  [_writingToolsViewController setSuppressWritingToolsForRemoteKeyboard:keyboardCopy];
}

- (void)_setShouldEndWritingToolsOnResign:(BOOL)resign
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:resign];
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
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  if ([_textInputForWritingTools conformsToProtocolCached:&unk_1F016C810])
  {
    selectedTextRange2 = _textInputForWritingTools;
    selectedTextRange = [selectedTextRange2 selectedTextRange];
    v5 = [selectedTextRange2 selectionRectsForRange:selectedTextRange];
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

    textInputView = [selectedTextRange2 textInputView];
    [textInputView bounds];
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
    if ([_textInputForWritingTools conformsToProtocolCached:&unk_1F016CC30])
    {
      selectedTextRange2 = _textInputForWritingTools;
      webSelectionRects = [selectedTextRange2 webSelectionRects];
      v30 = *MEMORY[0x1E695F050];
      v29 = *(MEMORY[0x1E695F050] + 8);
      v32 = *(MEMORY[0x1E695F050] + 16);
      v31 = *(MEMORY[0x1E695F050] + 24);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v10 = webSelectionRects;
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

      v41 = selectedTextRange2;
    }

    else
    {
      selectedTextRange2 = [_textInputForWritingTools selectedTextRange];
      v42 = [_textInputForWritingTools selectionRectsForRange:selectedTextRange2];
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

      v41 = _textInputForWritingTools;
    }

    selectedTextRange = [v41 textInputView];
    [selectedTextRange bounds];
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
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  if (objc_opt_respondsToSelector())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__UIResponder_WritingToolsSupport___shouldShowWritingToolsInCandidateBar__block_invoke;
    aBlock[3] = &unk_1E712BD38;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    selectedTextRange = [_textInputForWritingTools selectedTextRange];
    if ([selectedTextRange _isRanged])
    {
      v6 = v4[2](v4, _textInputForWritingTools, selectedTextRange);
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v7 = [selectedTextRange end];
      v8 = [_textInputForWritingTools positionFromPosition:v7 offset:-1];
      if (v8)
      {
        v9 = [_textInputForWritingTools textRangeFromPosition:v8 toPosition:v7];
        if (v9)
        {
          v10 = [_textInputForWritingTools textInRange:v9];
          newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v29 = v10;
          v12 = [v10 rangeOfCharacterFromSet:newlineCharacterSet];
          v14 = v13;

          v6 = 0;
          if (v12 != 0x7FFFFFFFFFFFFFFFLL && v14)
          {
            tokenizer = [_textInputForWritingTools tokenizer];
            v16 = [selectedTextRange end];
            v17 = [tokenizer positionFromPosition:v16 toBoundary:4 inDirection:0];

            if (v17)
            {
              v18 = [selectedTextRange end];
              v28 = v17;
              v19 = [_textInputForWritingTools textRangeFromPosition:v18 toPosition:v17];

              if (v19)
              {
                v27 = v19;
                v20 = [_textInputForWritingTools textInRange:v19];
                if ([v20 length] && -[UIResponder _stringContainsMinimumNumberOfWords:minimumNumberOfWords:](self, v20, 1uLL))
                {
                  v21 = tokenizer;
                  v6 = 0;
                }

                else
                {
                  v23 = [tokenizer positionFromPosition:v8 toBoundary:4 inDirection:1];
                  v21 = tokenizer;
                  if (v23)
                  {
                    v24 = [_textInputForWritingTools textRangeFromPosition:v23 toPosition:v8];
                    if (v24)
                    {
                      v25 = v24;
                      v26 = v4[2](v4, _textInputForWritingTools, v24);
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
                v21 = tokenizer;
                v6 = 0;
              }

              v17 = v28;
            }

            else
            {
              v21 = tokenizer;
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

- (uint64_t)_shouldDisplayWritingToolsForAttributedString:(uint64_t)string
{
  v3 = a2;
  v4 = v3;
  if (string)
  {
    if ([v3 length])
    {
      string = [v4 string];
      string = [(UIResponder *)string _stringContainsMinimumNumberOfWords:string minimumNumberOfWords:5uLL];

      if (string)
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
        sharedAssistant = [v6 sharedAssistant];
        string = [sharedAssistant fastCanLikelyHandleAttributedString:v4 range:{0, objc_msgSend(v4, "length")}];
      }
    }

    else
    {
      string = 0;
    }
  }

  return string;
}

- (BOOL)_stringContainsMinimumNumberOfWords:(unint64_t)words minimumNumberOfWords:
{
  v5 = a2;
  v6 = v5;
  if (self)
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
    v10[5] = words;
    [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v10}];
    v8 = v12[3] >= words;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _textInputForWritingTools = [(UIResponder *)self _textInputForWritingTools];
  if ([_textInputForWritingTools conformsToProtocolCached:&unk_1F016C810])
  {
    v6 = objc_opt_new();
    [v6 setGranularityCount:1];
    [v6 setSurroundingGranularity:4];
    [v6 setFlags:1];
    v7 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v7 inputDelegateManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101__UIResponder_WritingToolsSupport___webkitShouldShowWritingToolsInCandidateBarWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E712BD60;
    v9[4] = self;
    v10 = handlerCopy;
    [inputDelegateManager requestDocumentContext:v6 completionHandler:v9];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)_setCommonUIInvocationAnimationNeeded:(BOOL)needed
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:needed];
  objc_setAssociatedObject(self, &kCommonUIInvocationAnimationNeededKey, v4, 1);
}

@end