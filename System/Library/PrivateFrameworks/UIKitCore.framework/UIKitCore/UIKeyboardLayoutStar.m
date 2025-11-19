@interface UIKeyboardLayoutStar
+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5;
+ (Class)_subclassForScreenTraits:(id)a3;
+ (id)keyboardFromFactoryWithName:(id)a3 screenTraits:(id)a4;
+ (id)keyboardWithName:(id)a3 screenTraits:(id)a4;
+ (id)sharedPunctuationCharacterSet;
+ (id)sharedRivenKeyplaneGenerator;
+ (void)accessibilitySensitivityChanged;
- (BOOL)_allowContinuousPathUI;
- (BOOL)_allowPaddle;
- (BOOL)_allowStartingContinuousPathForTouchInfo:(id)a3 alreadyActiveKeyExisting:(BOOL)a4;
- (BOOL)_continuousPathModalPunctuationPlaneEnabled;
- (BOOL)_continuousPathSpotlightEffectEnabled;
- (BOOL)_handleTouchForEmojiInputView;
- (BOOL)_pointAllowedInStaticHitBuffer:(CGPoint)a3;
- (BOOL)_shouldAttemptToAddSupplementaryControlKeys;
- (BOOL)_shouldSwapGlobeAndMore;
- (BOOL)_stringContainsCurrencyCharacters:(id)a3;
- (BOOL)allKeyplanesHaveSameHeight;
- (BOOL)canAddRomanSwitchKey;
- (BOOL)canForceTouchUUIDCommit:(id)a3 inWindow:(id)a4;
- (BOOL)canMultitap;
- (BOOL)canProduceString:(id)a3;
- (BOOL)canReuseKeyplaneView;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)globeKeyDisplaysAsEmojiKey;
- (BOOL)handRestRecognizerShouldNeverIgnoreTouchState:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 forRestingState:(unint64_t)a6 otherRestedTouchLocations:(id)a7;
- (BOOL)handleFlick:(id)a3;
- (BOOL)hasAccentKey;
- (BOOL)hasActiveContinuousPathInput;
- (BOOL)hasActiveKeys;
- (BOOL)hasCandidateKeys;
- (BOOL)ignoreWriteboard;
- (BOOL)isDeadkeyInput:(id)a3;
- (BOOL)isEmojiKeyplane;
- (BOOL)isGeometricShiftOrMoreKeyForTouch:(id)a3;
- (BOOL)isHandwritingPlane;
- (BOOL)isKeyScriptSwitchKey:(id)a3;
- (BOOL)isLongPressedKey:(id)a3;
- (BOOL)isMultitapKey:(id)a3;
- (BOOL)isResized;
- (BOOL)isShiftKeyPlaneChooser;
- (BOOL)keyHasAccentedVariants:(id)a3;
- (BOOL)keyplaneContainsDismissKey;
- (BOOL)keyplaneContainsEmojiKey;
- (BOOL)keyplaneIsSplit;
- (BOOL)keyplaneSupportsResizingGesture;
- (BOOL)keyplaneUsesResizingOffset;
- (BOOL)performReturnAction;
- (BOOL)performSpaceAction;
- (BOOL)pinchCanBeginWithTouches:(id)a3 andScale:(double)a4;
- (BOOL)pinchSplitGestureEnabled;
- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)shouldCommitPrecedingTouchesForTouchDownWithActions:(unint64_t)a3;
- (BOOL)shouldHideKeyName:(id)a3;
- (BOOL)shouldHitTestKey:(id)a3;
- (BOOL)shouldIgnoreContinuousPathRequirements;
- (BOOL)shouldIgnoreDistantKey;
- (BOOL)shouldMergeAssistantBarWithKeyboardLayout;
- (BOOL)shouldMergeKey:(id)a3;
- (BOOL)shouldRetestKey:(id)a3 slidOffKey:(id)a4 withKeyplane:(id)a5;
- (BOOL)shouldRetestTouchUp:(id)a3;
- (BOOL)shouldSendStringForFlick:(id)a3;
- (BOOL)shouldSendTouchUpToInputManager:(id)a3;
- (BOOL)shouldShowDictationKey;
- (BOOL)shouldShowGestureKeyboardIntroduction;
- (BOOL)shouldShowIndicator;
- (BOOL)shouldShowInternationalMenuForKey:(id)a3;
- (BOOL)shouldSkipResponseToDotKey:(id)a3 atPoint:(CGPoint)a4;
- (BOOL)shouldSkipResponseToGlobeKey:(id)a3 atPoint:(CGPoint)a4;
- (BOOL)shouldYieldToControlCenterForFlickWithInitialPoint:(CGPoint)a3 finalPoint:(CGPoint)a4;
- (BOOL)showGestureKeyboardIntroductionIfNeeded;
- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton;
- (BOOL)stretchKeyboardToFitKeyplane:(id)a3;
- (BOOL)supportStylingWithKey:(id)a3;
- (BOOL)supportsSupplementalDisplayString;
- (BOOL)touchPassesDragThreshold:(id)a3;
- (BOOL)useDismissForMessagesWriteboard;
- (BOOL)useUndoForMessagesWriteboard;
- (CGImage)cachedCompositeImageWithCacheKey:(id)a3;
- (CGImage)renderedImageWithStateFallbacksForToken:(id)a3;
- (CGImage)renderedImageWithToken:(id)a3;
- (CGImage)renderedKeyplaneWithToken:(id)a3 split:(BOOL)a4;
- (CGPoint)applyError:(CGPoint)a3 toKey:(id)a4;
- (CGPoint)getCenterForKeyUnderLeftIndexFinger;
- (CGPoint)getCenterForKeyUnderRightIndexFinger;
- (CGRect)_paddedKeyUnionFrame;
- (CGRect)dragGestureRectInView:(id)a3;
- (CGRect)frameForKeyWithRepresentedString:(id)a3;
- (CGRect)frameForKeylayoutName:(id)a3;
- (CGRect)frameForKeylayoutName:(id)a3 onKeyplaneName:(id)a4;
- (CGRect)frameForLastKeyWithRepresentedString:(id)a3;
- (CGSize)handRestRecognizerStandardKeyPixelSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForKeyplane:(id)a3;
- (CGSize)stretchFactor;
- (NSString)localizedInputMode;
- (UIEdgeInsets)keyplanePadding;
- (UIKeyboardEmojiKeyDisplayController)emojiKeyManager;
- (UIKeyboardKeyplaneTransitionDelegate)splitKeyplaneTransitionDelegate;
- (UIKeyboardLayoutStar)initWithFrame:(CGRect)a3;
- (UIKeyboardLayoutStarDelegate)delegate;
- (UIKeyboardPathEffectView)pathEffectView;
- (double)biasedKeyboardWidthRatio;
- (double)hitBuffer;
- (double)stretchFactorHeight;
- (id)_analyticsMetadataForTouch:(id)a3 keyPressed:(id)a4;
- (id)_currentKeyplaneTransformationContext;
- (id)_currentLayoutInfo;
- (id)_keyboardLongPressInteractionRegions;
- (id)_keyplaneVariantsKeyForString:(id)a3;
- (id)_uniquelyInsertVariantString:(id)a3 beforeVariants:(id)a4 direction:(id)a5;
- (id)_variantsByAppendingDualStringKey:(id)a3 toVariants:(id)a4;
- (id)_variantsOfCurrencyKey:(id)a3 language:(id)a4;
- (id)activationIndicatorView;
- (id)activeMultitapCompleteKey;
- (id)activeTouchInfoForShift;
- (id)animatableLayout;
- (id)baseKeyForString:(id)a3;
- (id)cacheIdentifierForKeyplaneNamed:(id)a3;
- (id)cacheTokenForKeyplane:(id)a3 caseAlternates:(BOOL)a4;
- (id)candidateList;
- (id)createKeyEventForStringAction:(id)a3 forKey:(id)a4 inputFlags:(int)a5;
- (id)createKeyEventForStringAction:(id)a3 forKey:(id)a4 touchInfo:(id)a5 inputFlags:(int)a6;
- (id)currentRepresentedStringForDualDisplayKey:(id)a3;
- (id)defaultKeyplaneForKeyplane:(id)a3;
- (id)flickPopupStringForKey:(id)a3 withString:(id)a4;
- (id)flickStringForInputKey:(id)a3 direction:(int64_t)a4;
- (id)generateInfoForTouch:(id)a3;
- (id)getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:(int64_t)a3;
- (id)getSortedKeysForDisplayRowHint:(int)a3;
- (id)handRestRecognizerGetHomeRowHint;
- (id)highlightedVariantListForStylingKey:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)infoForTouch:(id)a3;
- (id)infoForTouchUUID:(id)a3;
- (id)initialKeyplaneNameWithKBStarName:(id)a3;
- (id)inputModeToMergeCapsLockKey;
- (id)internationalKeyDisplayStringOnEmojiKeyboard;
- (id)keyForKeyboardName:(id)a3 screenTraits:(id)a4;
- (id)keyHitTest:(CGPoint)a3;
- (id)keyHitTestClosestToPoint:(CGPoint)a3;
- (id)keyHitTestClosestToPoint:(CGPoint)a3 inKeys:(id)a4;
- (id)keyHitTestContainingPoint:(CGPoint)a3;
- (id)keyHitTestWithoutCharging:(CGPoint)a3;
- (id)keyViewAnimator;
- (id)keyViewHitTestForPoint:(CGPoint)a3;
- (id)keyWithRepresentedString:(id)a3;
- (id)keylistContainingKey:(id)a3;
- (id)keyplaneFactory;
- (id)keyplaneForKey:(id)a3;
- (id)keyplaneNameForRevertAfterTouch;
- (id)keyplaneNamed:(id)a3;
- (id)keyplaneView:(id)a3 containingViewForActiveKey:(id)a4;
- (id)popupKeyViews;
- (id)simulateTouch:(CGPoint)a3;
- (id)simulateTouchForCharacter:(id)a3 errorVector:(CGPoint)a4 shouldTypeVariants:(BOOL)a5 baseKeyForVariants:(BOOL)a6;
- (id)splitNameForKeyplane:(id)a3;
- (id)splitNameForKeyplaneName:(id)a3;
- (id)splitTransitionDelegate;
- (id)synthesizeTouchUpEventForKey:(id)a3;
- (id)touchInfoForKey:(id)a3;
- (id)unprocessedTouchEventsForTouchInfo:(id)a3 touchStage:(int)a4 forcedKeyCode:(int)a5;
- (id)viewForKey:(id)a3;
- (int)displayTypeHintForMoreKey;
- (int)displayTypeHintForShiftKey;
- (int)keycodeForKey:(id)a3;
- (int)stateForDictationKey:(id)a3;
- (int)stateForKey:(id)a3;
- (int)stateForKeyplaneSwitchKey:(id)a3;
- (int)stateForManipulationKey:(id)a3;
- (int)stateForMultitapReverseKey:(id)a3;
- (int)stateForShiftKey:(id)a3;
- (int)stateForStylingKey:(id)a3;
- (int)visualStyleForKeyboardIfSplit:(BOOL)a3;
- (int64_t)currentHandBias;
- (int64_t)defaultSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4;
- (unint64_t)downActionFlagsForKey:(id)a3;
- (unint64_t)keyplaneShiftState;
- (unint64_t)textEditingKeyMask;
- (unint64_t)upActionFlagsForKey:(id)a3;
- (unsigned)getHandRestRecognizerState;
- (void)_addExtraControlKeysIfNecessary;
- (void)_addResizeTransformationsIfNecessary;
- (void)_autoSplit:(id)a3;
- (void)_cleanUpBlinkAssertionIfNecessary;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)_didTapBiasEscapeButton:(id)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_recordKeystrokeStatisticForKeyPress;
- (void)_setBiasEscapeButtonVisible:(BOOL)a3;
- (void)_setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5;
- (void)_swapGlobeAndMoreKeysIfNecessary;
- (void)_transformCarPlayIfNecessary;
- (void)_transformFloatingKeyboardIfNecessary;
- (void)_transitionToContinuousPathState:(int64_t)a3 forTouchInfo:(id)a4;
- (void)_updateSupplementaryKeys;
- (void)addContinuousPathPoint:(CGPoint)a3 withTimestamp:(double)a4;
- (void)annotateKeysWithDeveloperPunctuation;
- (void)annotateWriteboardDisplayTypeHintForKeyIfNeeded;
- (void)calculateReachabilityScoreWithKey:(id)a3 keyError:(CGPoint)a4;
- (void)cancelDelayedCentroidUpdate;
- (void)cancelModalDoubleConsonantKeysTimer;
- (void)cancelMultitapTimer;
- (void)cancelTouchIfNecessaryForInfo:(id)a3 forResting:(BOOL)a4;
- (void)cancelTouchesForTwoFingerTapGesture:(id)a3;
- (void)changeToKeyplane:(id)a3;
- (void)cleanupPreviousKeyboardWithNewInputTraits:(id)a3;
- (void)clearAllTouchInfo;
- (void)clearContinuousPathView;
- (void)clearHandwritingStrokesIfNeededAndNotify:(BOOL)a3;
- (void)clearInfoForTouch:(id)a3 forResting:(BOOL)a4;
- (void)clearKeyAnnotationsIfNecessary;
- (void)clearTransientState;
- (void)clearUnusedObjects:(BOOL)a3;
- (void)completeCommitTouchesPrecedingTouchDownWithKey:(id)a3 withActions:(unint64_t)a4 executionContext:(id)a5;
- (void)completeDeleteActionForTouchDownWithActions:(unint64_t)a3 executionContext:(id)a4;
- (void)completeHitTestForTouchDown:(id)a3 executionContext:(id)a4;
- (void)completeHitTestForTouchDragged:(id)a3 hitKey:(id)a4;
- (void)completeRetestForTouchUp:(id)a3 timestamp:(double)a4 interval:(double)a5 executionContext:(id)a6;
- (void)completeSendStringActionForTouchDownWithKey:(id)a3 withActions:(unint64_t)a4 executionContext:(id)a5;
- (void)completeSendStringActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9;
- (void)continueFromInternationalActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9;
- (void)createLayoutFromName:(id)a3;
- (void)deactivateActiveKey;
- (void)deactivateActiveKeys;
- (void)deactivateActiveKeysClearingTouchInfo:(BOOL)a3 clearingDimming:(BOOL)a4;
- (void)dealloc;
- (void)deleteHandwritingStrokesAtIndexes:(id)a3;
- (void)didBeginContinuousPath;
- (void)didClearInput;
- (void)didDetectPinchWithSeparation:(double)a3;
- (void)didEndIndirectSelectionGesture:(BOOL)a3;
- (void)didMoveToWindow;
- (void)didRotate;
- (void)didTriggerDestructiveRenderConfigChange;
- (void)dismissGestureKeyboardIntroduction;
- (void)divideKeysIntoLeft:(id)a3 right:(id)a4;
- (void)downActionShiftWithKey:(id)a3;
- (void)endMultitapForKey:(id)a3;
- (void)fadeWithInvocation:(id)a3;
- (void)finishContinuousPathView:(BOOL)a3;
- (void)finishSliderBehaviorFeedback;
- (void)finishSplitTransitionWithCompletion:(id)a3;
- (void)finishSplitWithCompletion:(id)a3;
- (void)flushKeyCache:(id)a3;
- (void)handRestRecognizerNotifyRestForBegin:(BOOL)a3 location:(CGPoint)a4 timestamp:(double)a5 pathIndex:(int)a6 touchUUID:(id)a7 context:(id)a8;
- (void)handleDelayedCentroidUpdate;
- (void)handleDismissFlickView;
- (void)handleDismissFlickView:(id)a3;
- (void)handleDoubleConsonantKeysTimerFired;
- (void)handleKeyboardMenusForTouch:(id)a3;
- (void)handleMultitapTimerFired;
- (void)handlePopupView;
- (void)handlePopupView:(id)a3;
- (void)incrementPunctuationIfNeeded:(id)a3;
- (void)installGestureRecognizers;
- (void)layoutSubviews;
- (void)logHandwritingData;
- (void)longPressAction;
- (void)mergeKeysIfNeeded;
- (void)multitapExpired;
- (void)multitapInterrupted;
- (void)nextToUseInputModeDidChange:(id)a3;
- (void)performHitTestForTouchInfo:(id)a3 touchStage:(int)a4 executionContextPassingUIKBTree:(id)a5;
- (void)pinchDidConsumeTouch:(id)a3;
- (void)pinchHandler:(id)a3;
- (void)playKeyClickSoundForKey:(id)a3;
- (void)playKeyClickSoundOnDownForKey:(id)a3;
- (void)playKeyFeedbackIfNecessaryForTouchDownOnKey:(id)a3 touchInfo:(id)a4;
- (void)playKeyReleaseSoundForKey:(id)a3;
- (void)populateFlickPopupsForKey:(id)a3;
- (void)prepareForFloatingTransition:(BOOL)a3;
- (void)prepareForSplitTransition;
- (void)preparePopupVariantsForKey:(id)a3 onKeyplane:(id)a4;
- (void)prepareSliderBehaviorFeedback;
- (void)presentModalDisplayForKey:(id)a3;
- (void)provideSliderBehaviorFeedback;
- (void)rebuildSplitTransitionView;
- (void)recenterMonolithKeyplaneSwitchKeys;
- (void)refreshDualStringKeys;
- (void)refreshForDictationAvailablityDidChange;
- (void)refreshForRivenPreferences;
- (void)refreshGhostKeyState;
- (void)relayoutForWriteboardKey;
- (void)reloadCurrentKeyplane;
- (void)removeFromSuperview;
- (void)removePathEffectViewConstraintsIfNeeded;
- (void)resetHRRLayoutState;
- (void)resetPanAlternativesForEndedTouch:(id)a3;
- (void)resizeKeyplaneAndRedraw:(BOOL)a3;
- (void)restoreDefaultsForAllKeys;
- (void)restoreDefaultsForKey:(id)a3;
- (void)rollbackKeyplaneTransformations;
- (void)setAction:(SEL)a3 forKey:(id)a4;
- (void)setAutoshift:(BOOL)a3;
- (void)setCurrencyKeysForCurrentLocaleOnKeyplane:(id)a3;
- (void)setDisableInteraction:(BOOL)a3;
- (void)setHideKeysUnderIndicator:(BOOL)a3;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setKeyboardBias:(int64_t)a3;
- (void)setKeyboardDim:(BOOL)a3;
- (void)setKeyboardDim:(BOOL)a3 amount:(double)a4 withDuration:(double)a5;
- (void)setKeyboardName:(id)a3 appearance:(int64_t)a4;
- (void)setKeyplaneName:(id)a3;
- (void)setLabel:(id)a3 forKey:(id)a4;
- (void)setLayoutTag:(id)a3;
- (void)setLongPressAction:(SEL)a3 forKey:(id)a4;
- (void)setMultitapReverseKeyState;
- (void)setNeedsVirtualDriftUpdate;
- (void)setPasscodeOutlineAlpha:(double)a3;
- (void)setPercentSignKeysForCurrentLocaleOnKeyplane:(id)a3;
- (void)setRenderConfig:(id)a3 updateKeyplane:(BOOL)a4;
- (void)setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5;
- (void)setShift:(BOOL)a3;
- (void)setSplit:(BOOL)a3 animated:(BOOL)a4;
- (void)setSplitProgress:(double)a3;
- (void)setState:(int)a3 forKey:(id)a4;
- (void)setTarget:(id)a3 forKey:(id)a4;
- (void)setTextEditingTraits:(id)a3;
- (void)setToInitialKeyplane;
- (void)setTrackpadMode:(BOOL)a3 animated:(BOOL)a4;
- (void)showFlickView:(int64_t)a3 withKey:(id)a4 flickString:(id)a5;
- (void)showKeyboardWithInputMode:(id)a3 renderConfig:(id)a4 inputTraits:(id)a5 screenTraits:(id)a6 splitTraits:(id)a7 reload:(BOOL)a8;
- (void)showMenu:(id)a3 forKey:(id)a4;
- (void)showPopupVariantsForKey:(id)a3;
- (void)showPopupView:(int64_t)a3 withKey:(id)a4 popupInfo:(id)a5 force:(BOOL)a6;
- (void)showSplitTransitionView:(BOOL)a3;
- (void)swipeDetected:(id)a3;
- (void)switchKeyplane:(id)a3;
- (void)tearDownSplitTransitionView;
- (void)touchCancelled:(id)a3 forResting:(BOOL)a4 executionContext:(id)a5;
- (void)touchChanged:(id)a3 executionContext:(id)a4;
- (void)touchDown:(id)a3 executionContext:(id)a4;
- (void)touchDownWithKey:(id)a3 withTouchInfo:(id)a4 atPoint:(CGPoint)a5 executionContext:(id)a6;
- (void)touchDragged:(id)a3;
- (void)touchDragged:(id)a3 executionContext:(id)a4;
- (void)touchModalDoubleConsonantKeysTimer;
- (void)touchMultitapTimer;
- (void)touchUp:(id)a3 executionContext:(id)a4;
- (void)traitCollectionDidChange;
- (void)transitionToModalContinuousPathKeyplane;
- (void)transitionToPunctuationKeysVisible:(BOOL)a3;
- (void)triggerSpaceKeyplaneSwitchIfNecessary;
- (void)typingStyleEstimator:(id)a3 didChangeTypingStyleEstimate:(unint64_t)a4;
- (void)uninstallGestureRecognizers;
- (void)upActionShift;
- (void)updateAllKeyStates;
- (void)updateAutolocalizedKeysForKeyplane:(id)a3;
- (void)updateBackgroundCorners;
- (void)updateBackgroundIfNeeded;
- (void)updateCachedKeyplaneKeycaps;
- (void)updateCurrencySymbolForKey:(id)a3 withCurrencyString:(id)a4;
- (void)updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:(id)a3;
- (void)updateGlobeKeyDisplayString;
- (void)updateInputModeLocalizedKeysForKeyplane:(id)a3;
- (void)updateKeyCentroids;
- (void)updateKeyboardForKeyplane:(id)a3;
- (void)updateLayoutTags;
- (void)updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:(id)a3 withInputMode:(id)a4;
- (void)updateLocalizedDisplayStringsForKeys:(id)a3;
- (void)updateLocalizedKeys:(BOOL)a3;
- (void)updateLocalizedKeysForKeyplane:(id)a3 updateAllKeyplanes:(BOOL)a4;
- (void)updateLocalizedKeysOnKeyplane:(id)a3;
- (void)updateMoreAndInternationalKeys;
- (void)updatePanAlternativesForTouchInfo:(id)a3;
- (void)updatePhysicalKeyboardEvent:(id)a3 withMarkedInput:(id)a4;
- (void)updateReturnKeysIfNeeded;
- (void)updateSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4 withPoint:(CGPoint)a5;
- (void)updateShiftKeyState;
- (void)updateState:(int)a3 forKey:(id)a4;
- (void)updateStateForKey:(id)a3;
- (void)updateTransitionWithFlags:(unint64_t)a3;
- (void)updateUndoKeyState;
- (void)willBeginIndirectSelectionGesture:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
- (void)willRotate:(int64_t)a3;
@end

@implementation UIKeyboardLayoutStar

- (CGSize)intrinsicContentSize
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (liveKeyplaneView = self->_liveKeyplaneView) != 0)
  {

    [(TUIKeyplaneView *)liveKeyplaneView intrinsicContentSize];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKeyboardLayoutStar;
    [(UIView *)&v6 intrinsicContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)updateAllKeyStates
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(UIKBTree *)self->_keyboard dynamicLayout])
  {
    [(UIKBTree *)self->_keyplane subtreeWithType:3];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v3 = [obj keys];
    v4 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v38;
      do
      {
        v7 = 0;
        do
        {
          if (*v38 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(UIKeyboardLayoutStar *)self updateStateForKey:*(*(&v37 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(UIKBTree *)self->_keyplane subtrees];
    v24 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v24)
    {
      v23 = *v34;
      do
      {
        v8 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * v8);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v10 = [v9 keySet];
          v11 = [v10 subtrees];

          v12 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              v15 = 0;
              do
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * v15);
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                v17 = [v16 subtrees];
                v18 = [v17 countByEnumeratingWithState:&v25 objects:v41 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v26;
                  do
                  {
                    v21 = 0;
                    do
                    {
                      if (*v26 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      [(UIKeyboardLayoutStar *)self updateStateForKey:*(*(&v25 + 1) + 8 * v21++)];
                    }

                    while (v19 != v21);
                    v19 = [v17 countByEnumeratingWithState:&v25 objects:v41 count:16];
                  }

                  while (v19);
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
            }

            while (v13);
          }

          ++v8;
        }

        while (v8 != v24);
        v24 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v24);
    }
  }
}

- (id)activeTouchInfoForShift
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:*(*(&v12 + 1) + 8 * i)];
        v9 = [v8 key];
        if ([v9 interactionType] == 14)
        {
          shiftKeyTouchUUID = self->super._shiftKeyTouchUUID;

          if (shiftKeyTouchUUID)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)updateGlobeKeyDisplayString
{
  v6 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
  if ([UIKeyboardActiveUserSelectableInputModes count] < 2 || !-[UIKeyboardLayoutStar supportsEmoji](self, "supportsEmoji"))
  {
    v5 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
    v3 = v6;
    if (v5 != 122)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = v6;
  if (v6)
  {
    v4 = [(UIKeyboardLayoutStar *)self globeKeyDisplaysAsEmojiKey];
    v3 = v6;
    if (v4)
    {
LABEL_7:
      [v3 setOverrideDisplayString:@"emoji"];
      v3 = v6;
    }
  }

LABEL_8:
}

- (id)keyViewAnimator
{
  keyViewAnimator = self->_keyViewAnimator;
  if (!keyViewAnimator)
  {
    v4 = [(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord];
    v5 = off_1E70E9C68;
    if (!v4)
    {
      v5 = off_1E70E9C60;
    }

    v6 = objc_alloc_init(*v5);
    v7 = self->_keyViewAnimator;
    self->_keyViewAnimator = v6;

    keyViewAnimator = self->_keyViewAnimator;
  }

  return keyViewAnimator;
}

- (void)updateShiftKeyState
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self->_isTrackpadMode)
  {
    v3 = updateShiftKeyState_shiftKeyNames;
    if (!updateShiftKeyState_shiftKeyNames)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Shift-Key", @"Caps-Lock-Key", 0}];
      v5 = updateShiftKeyState_shiftKeyNames;
      updateShiftKeyState_shiftKeyNames = v4;

      v3 = updateShiftKeyState_shiftKeyNames;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v3;
    v21 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v7 = 0;
      v20 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [(UIKBTree *)self->_keyplane cache];
          v11 = [v10 objectForKey:v9];

          if (v11)
          {
            v22 = v11;
            v23 = i;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v24 + 1) + 8 * j);
                  if ([(UIKeyboardLayoutStar *)self stateForKey:v17]!= 1)
                  {
                    v18 = [(UIKeyboardLayoutStar *)self stateForShiftKey:v17];
                    if ([(UIKeyboardLayoutStar *)self stateForKey:v17]!= v18)
                    {
                      [(UIKeyboardLayoutStar *)self setState:v18 forKey:v17];
                      if (v18 == 8)
                      {
                        v19 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
                        [(UIKeyboardLayoutStar *)self setState:8 forKey:v19];
                      }

                      v7 = [(UIKBScreenTraits *)self->super._screenTraits supportsSplit];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v14);
            }

            v11 = v22;
            i = v23;
          }
        }

        v21 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);

      if (v7)
      {
        [(UIKeyboardLayoutStar *)self updateTransitionWithFlags:6];
      }
    }

    else
    {
    }
  }
}

- (void)setMultitapReverseKeyState
{
  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Multitap-Reverse-Key"];
  v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Multitap-Forward-Key"];
  if (v3 | v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__UIKeyboardLayoutStar_setMultitapReverseKeyState__block_invoke;
    v5[3] = &unk_1E70F6228;
    v6 = v3;
    v7 = self;
    v8 = v4;
    [UIView performWithoutAnimation:v5];
  }
}

- (BOOL)supportsSupplementalDisplayString
{
  v3 = [(UIKBTree *)self->_keyboard name];
  if ([v3 containsString:@"Korean"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIKBTree *)self->_keyboard name];
    v4 = [v5 containsString:@"Thai"];
  }

  return v4;
}

- (BOOL)hasActiveContinuousPathInput
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:*(*(&v12 + 1) + 8 * i)];
        v9 = [v8 continuousPathState];

        if (v9 == 4)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)shouldMergeAssistantBarWithKeyboardLayout
{
  if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 122 || [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v3 = [(UIKeyboardLayoutStar *)self hasCandidateKeys];
    if (v3)
    {
      v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Handwriting-Input"];
      if (v4)
      {
        LOBYTE(v5) = 1;
LABEL_13:

        return v5;
      }
    }

    if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]&& [(UIKeyboardLayoutStar *)self isEmojiKeyplane]&& ![(UIKeyboardLayout *)self isFloating])
    {
      v5 = ![(UIKBScreenTraits *)self->super._screenTraits isSplit];
      if (!v3)
      {
        return v5;
      }

      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    if (v3)
    {
LABEL_12:
      v4 = 0;
      goto LABEL_13;
    }
  }

  return v5;
}

- (int64_t)currentHandBias
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
  {
    screenTraits = self->super._screenTraits;
    if (!screenTraits || !screenTraits->_isStickerPickerServiceCollectionView)
    {
      liveKeyplaneView = self->_liveKeyplaneView;
      v6 = +[UIKeyboardImpl activeInstance];
      v7 = [v6 allowsReachableKeyboard];
      if (liveKeyplaneView)
      {
        if (v7)
        {
          currentHandBias = [(TUIKeyplaneView *)self->_liveKeyplaneView currentHandBias];
LABEL_11:

          return currentHandBias;
        }
      }

      else if (v7)
      {
        currentHandBias = self->_currentHandBias;
        goto LABEL_11;
      }

      currentHandBias = 0;
      goto LABEL_11;
    }
  }

  return 0;
}

- (BOOL)isShiftKeyPlaneChooser
{
  if (![(UIKBTree *)self->_keyplane isShiftKeyplane])
  {
    goto LABEL_10;
  }

  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Shift-Key"];
  if (!v3 || !self->_multitapKey)
  {
LABEL_9:

    goto LABEL_10;
  }

  v4 = [(UIKBTree *)self->_keyplane keys];
  if (![v4 containsObject:self->_multitapKey] || !-[UIDelayedAction scheduled](self->_multitapAction, "scheduled"))
  {

    goto LABEL_9;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isShiftLocked];

  if ((v6 & 1) == 0)
  {
    self->_unshiftAfterMultitap = 1;
    return 1;
  }

LABEL_10:
  if ([(UIKeyboardLayoutStar *)self supportsSupplementalDisplayString]&& self->_dismissModalDoubleConsonantKeys)
  {
    return 1;
  }

  keyplane = self->_keyplane;

  return [(UIKBTree *)keyplane isShiftKeyPlaneChooser];
}

- (void)restoreDefaultsForAllKeys
{
  [(UIKeyboardLayoutStar *)self restoreDefaultsForKey:@"_keyid_space_"];

  [(UIKeyboardLayoutStar *)self restoreDefaultsForKey:@"_keyid_return_"];
}

- (void)updateLayoutTags
{
  v48 = *MEMORY[0x1E69E9840];
  if (!self->_isTrackpadMode)
  {
    v3 = [(UIKeyboardLayoutStar *)self layoutTag];
    v4 = [(UIKBTree *)self->_keyplane adaptiveKeys];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v5)
    {
      v6 = v5;
      v35 = 0;
      v7 = *v43;
      while (1)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          if ([v9 hasLayoutTag:v3])
          {
            v10 = [v9 layoutTag];
            if ([v10 isEqualToString:v3])
            {
              v11 = [(UIKeyboardLayoutStar *)self shouldMergeKey:v9];

              if (!v11)
              {
LABEL_15:
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 3221225472;
                v41[2] = __40__UIKeyboardLayoutStar_updateLayoutTags__block_invoke;
                v41[3] = &unk_1E7114858;
                v41[4] = self;
                [v9 setLayoutTag:v3 passingKeyTest:v41];
                [v9 setVisible:1];
                [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:v4];
                v14 = [(UIKeyboardLayoutStar *)self stateForKey:v9];
                if (v14)
                {
                  v15 = v14;
                }

                else
                {
                  v15 = 2;
                }

                [(UIKeyboardLayoutStar *)self setState:v15 forKey:v9];
                continue;
              }
            }

            else
            {
            }

            v12 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
            v13 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
            if (v12)
            {
              v13 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
            }

            [*(&self->super.super.super.super.isa + *v13) deactivateAdaptiveKey:v9];
            v35 = 1;
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    v35 = 0;
LABEL_23:
    v16 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
    if (v16)
    {
      v17 = v16;
      v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v19 = [v18 preferencesActions];
      v20 = [v19 BOOLForPreferenceKey:@"GesturesEnabled"];

      if (v20)
      {
        keyboard = self->_keyboard;
        v22 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
        v23 = [(UIKBTree *)keyboard subtreeWithName:v22];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v34 = v23;
        v24 = [v23 cachedKeysByKeyName:@"Adaptive-Key"];
        v25 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v38;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v37 + 1) + 8 * j);
              if ([v29 hasLayoutTag:v3])
              {
                v30 = [v29 layoutTag];
                v31 = [v30 isEqualToString:v3];

                if ((v31 & 1) == 0)
                {
                  v36[0] = MEMORY[0x1E69E9820];
                  v36[1] = 3221225472;
                  v36[2] = __40__UIKeyboardLayoutStar_updateLayoutTags__block_invoke_2;
                  v36[3] = &unk_1E7114858;
                  v36[4] = self;
                  [v29 setLayoutTag:v3 passingKeyTest:v36];
                  v35 = 1;
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v26);
        }
      }
    }

    if (v35)
    {
      keyplane = self->_keyplane;
      v33 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)keyplane updateFlickKeycapOnKeysWithLayoutInfo:v33];
    }
  }
}

- (void)updateCachedKeyplaneKeycaps
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_allKeyplaneKeycaps removeAllObjects];
  v16 = [MEMORY[0x1E695DF58] preferredLocale];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(UIKBTree *)self->_keyplane keys];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 displayString];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 interactionType];

          if (v11 != 10)
          {
            v12 = +[UIKeyboardLayout _showSmallDisplayKeyplane];
            v13 = [v8 displayString];
            v14 = v13;
            if (!v12)
            {
              v15 = [v13 uppercaseStringWithLocale:v16];

              v14 = v15;
            }

            [(NSMutableSet *)self->_allKeyplaneKeycaps addObject:v14];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (BOOL)isEmojiKeyplane
{
  if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
  {
    v3 = @"Emoji-InputView-Key";
  }

  else
  {
    v3 = @"Emoji-International-Key";
  }

  v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:v3];

  return v4 != 0;
}

- (void)clearTransientState
{
  v3 = [(UIKeyboardLayoutStar *)self modalDisplayView];

  if (v3)
  {
    v4 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    [v4 removeFromSuperview];

    [(UIKeyboardLayoutStar *)self setModalDisplayView:0];
    liveKeyplaneView = self->_liveKeyplaneView;
    if (liveKeyplaneView)
    {
      [(TUIKeyplaneView *)liveKeyplaneView setHidden:0];
    }

    if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      keyplaneView = self->_keyplaneView;

      [(UIView *)keyplaneView setHidden:0];
    }
  }
}

- (BOOL)_continuousPathModalPunctuationPlaneEnabled
{
  v2 = UIKeyboardGetCurrentInputMode();
  v3 = KBStarLayoutString(v2);

  if ([v3 isEqualToString:@"Korean"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Korean-With-QWERTY") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Thai"))
  {
    v4 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v4 = [v6 BOOLForPreferenceKey:*MEMORY[0x1E69D9818]];
  }

  return v4;
}

- (BOOL)canReuseKeyplaneView
{
  if (self->_externalDictationAndInternationalKeys != +[UIKeyboardImpl showsGlobeAndDictationKeysExternally])
  {
    return 0;
  }

  HasMultipleActiveSecureInputModes = +[UIKeyboardImpl canShowInternationalKey];
  if (HasMultipleActiveSecureInputModes)
  {
    if ([(UITextInputTraits *)self->super._inputTraits isSecureTextEntry])
    {
      HasMultipleActiveSecureInputModes = UIKeyboardHasMultipleActiveSecureInputModes();
    }

    else
    {
      HasMultipleActiveSecureInputModes = [UIKeyboardActiveUserSelectableInputModes count] > 1;
    }
  }

  if (HasMultipleActiveSecureInputModes != self->_showIntlKey || self->_showDictationKey != [(UIKeyboardLayoutStar *)self shouldShowDictationKey]|| self->_inputTraitsPreventInitialReuse)
  {
    return 0;
  }

  v4 = [(UIKeyboardLayoutStar *)self useCrescendoLayout]? 1448 : 688;
  if (!*(&self->super.super.super.super.isa + v4) || ![(NSMutableDictionary *)self->_allKeyplaneViews count])
  {
    return 0;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = UIKeyboardGetCurrentInputMode();
  v7 = [MEMORY[0x1E695DF58] preferredLocale];
  v8 = [v7 localeIdentifier];
  v9 = [(UIKBTree *)self->_keyplane name];
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  v11 = [v5 stringWithFormat:@"%@^%@^%@^%d", v6, v8, v9, v10];

  if (v11 == self->_localizedInputKey)
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSString *)v11 isEqual:?];
  }

  return v12;
}

- (BOOL)shouldShowDictationKey
{
  if ([(UITextInputTraits *)self->super._inputTraits isSecureTextEntry]|| [(UIKBScreenTraits *)self->super._screenTraits idiom]== 3 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 4)
  {
    goto LABEL_16;
  }

  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
  if (v3)
  {
    v4 = v3;
    v5 = [UIDictationController checkTraitsSupportDictation:self->super._inputTraits];

    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-Dictation"];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"TenKey-Dictation-Key"];
    if (!v9)
    {
      return v9;
    }
  }

  v11 = [UIDictationController checkTraitsSupportDictation:self->super._inputTraits];

  if (!v11)
  {
LABEL_16:
    LOBYTE(v9) = 0;
    return v9;
  }

LABEL_6:
  v6 = +[UIDictationController activeInstance];

  if (!v6)
  {
    LOBYTE(v9) = 1;
    if (!self->_pendingDictationReload)
    {
      self->_pendingDictationReload = 1;
      v10 = +[UIPeripheralHost sharedInstance];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__UIKeyboardLayoutStar_shouldShowDictationKey__block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [v10 queueDelayedTask:v12];
    }

    return v9;
  }

  return +[UIDictationController fetchCurrentInputModeSupportsDictation];
}

- (BOOL)keyplaneUsesResizingOffset
{
  if ([(UIKBScreenTraits *)self->super._screenTraits resizeKeyboardHeight])
  {
    return 1;
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
  {
    return 0;
  }

  v5 = [(UIKBTree *)self->_keyboard name];
  if ([v5 _containsSubstring:@"HWR"])
  {
    v6 = [(UIKBTree *)self->_keyplane name];
    v3 = [v6 containsString:@"Portrait"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateUndoKeyState
{
  v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Undo-Key"];
  if (v4)
  {
    [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForManipulationKey:v4] forKey:v4];
  }

  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Redo-Key"];
  if (v3)
  {
    [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForManipulationKey:v3] forKey:v3];
  }
}

- (void)deactivateActiveKeys
{
  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:1 clearingDimming:1];
  v3 = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [v3 deactivate];

  [(UIKeyboardLayoutStar *)self setSlideBehaviour:0];
  if (self->_lastInputIsGestureKey)
  {
    +[_UIKeyboardUsageTracking panAlternateKeyFlickDownCount];
    self->_lastInputIsGestureKey = 0;
  }

  if (self->_isTrackpadMode)
  {
    [(UIKeyboardLayoutStar *)self didEndIndirectSelectionGesture:0];
  }

  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v4 deactivateActiveKeys];
}

- (BOOL)keyplaneSupportsResizingGesture
{
  v3 = [(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset];
  if (v3)
  {

    LOBYTE(v3) = [(UIKeyboardLayoutStar *)self isHandwritingPlane];
  }

  return v3;
}

- (void)dismissGestureKeyboardIntroduction
{
  gestureKeyboardIntroduction = self->_gestureKeyboardIntroduction;
  if (gestureKeyboardIntroduction)
  {
    [(UIGestureKeyboardIntroduction *)gestureKeyboardIntroduction dismissGestureKeyboardIntroduction];
    v4 = self->_gestureKeyboardIntroduction;
    self->_gestureKeyboardIntroduction = 0;
  }
}

- (void)clearAllTouchInfo
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_extendedTouchInfoMap allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        [(UIKeyboardLayoutStar *)self cancelTouchIfNecessaryForInfo:*(*(&v8 + 1) + 8 * v7++) forResting:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_extendedTouchInfoMap removeAllObjects];
}

- (void)cancelModalDoubleConsonantKeysTimer
{
  [(UIDelayedAction *)self->_dismissModalDoubleConsonantKeys cancel];
  dismissModalDoubleConsonantKeys = self->_dismissModalDoubleConsonantKeys;
  self->_dismissModalDoubleConsonantKeys = 0;
}

- (double)stretchFactorHeight
{
  [(UIKBTree *)self->_keyboard frame];
  v4 = v3;
  v5 = UIKeyboardGetCurrentInputMode();
  v6 = UIKeyboardGetDerivedKeyboard(v5, self->super._screenTraits, [(UITextInputTraits *)self->super._inputTraits keyboardType]);

  if (v6)
  {
    [v6 keyboardSize];
    if (v7 != -1.0)
    {
      [v6 keyboardSize];
      v4 = v8;
    }
  }

  [(UIKBTree *)self->_keyboard frame];
  if (v9 == 0.0)
  {
    [v6 keyboardSizeBasis];
    v9 = v10;
  }

  v11 = 1.0;
  if (v9 > 0.0 && vabdd_f64(v4, v9) > 0.00000011920929)
  {
    v11 = v4 / v9;
  }

  return v11;
}

- (unint64_t)textEditingKeyMask
{
  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Cut-Key"];
  if (v3 || ([(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Copy-Key"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Paste-Key"];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v4 = 2;
LABEL_5:
  v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Bold-Key"];
  if (v5 || ([(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Italic-Key"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Underline-Key"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v8 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"BIU-Key"];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v4 |= 4uLL;
LABEL_10:
  v6 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"RTL-Left-Arrow-Key"];
  if (v6 || ([(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Left-Arrow-Key"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"RTL-Right-Arrow-Key"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v9 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Right-Arrow_key"];

    if (!v9)
    {
      return v4;
    }
  }

  v4 |= 1uLL;
  return v4;
}

- (BOOL)hasCandidateKeys
{
  v2 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Candidate-Selection"];
  v3 = v2 != 0;

  return v3;
}

- (void)setToInitialKeyplane
{
  v4 = [(UIKBTree *)self->_keyboard name];
  v3 = [(UIKeyboardLayoutStar *)self initialKeyplaneNameWithKBStarName:v4];
  [(UIKeyboardLayoutStar *)self setKeyplaneName:v3];
}

- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton
{
  v3 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  if (v3 == 122)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom])
  {
    return 0;
  }

  if (!self->_externalDictationAndInternationalKeys)
  {
    return 0;
  }

  v5 = UIKeyboardActiveUserSelectableInputModes;
  v6 = [v5 count];

  if (v6 < v4)
  {
    return 0;
  }

  v8 = UIKeyboardActiveUserSelectableInputModes;
  v9 = [v8 indexOfObjectPassingTest:&__block_literal_global_690];

  return v9 != 0x7FFFFFFFFFFFFFFFLL || v3 == 122;
}

- (unint64_t)keyplaneShiftState
{
  v3 = [(UIKBTree *)self->_keyplane name];
  v4 = [v3 containsString:@"Uncased"];

  if (v4)
  {
    return 4;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 isAutoShifted];

  if (v7)
  {
    return 2;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 isShiftLocked];

  if (v9)
  {
    return 3;
  }

  else
  {
    return self->_shift;
  }
}

- (void)installGestureRecognizers
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v4 == 6))
  {
    v5 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:sel_swipeDetected_];
    upSwipeRecognizer = self->_upSwipeRecognizer;
    self->_upSwipeRecognizer = v5;

    [(UIGestureRecognizer *)self->_upSwipeRecognizer setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)self->_upSwipeRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_upSwipeRecognizer setDelaysTouchesEnded:0];
    [(UISwipeGestureRecognizer *)self->_upSwipeRecognizer setDirection:4];
    v7 = self->_upSwipeRecognizer;
    if (v7)
    {
      v7->_minimumPrimaryMovement = 40.0;
      v8 = self->_upSwipeRecognizer;
    }

    else
    {
      v8 = 0;
    }

    [(UIGestureRecognizer *)v8 setDelegate:self];
    [(UIView *)self addGestureRecognizer:self->_upSwipeRecognizer];
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = [[UIKeyboardPinchGestureRecognizer alloc] initWithTarget:self action:sel_pinchHandler_];
    pinchGestureRecognizer = self->_pinchGestureRecognizer;
    self->_pinchGestureRecognizer = v9;

    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setDelaysTouchesEnded:0];
    [(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer setPinchDelegate:self];
    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setDelegate:self];
    v11 = self->_pinchGestureRecognizer;

    [(UIView *)self addGestureRecognizer:v11];
  }
}

- (NSString)localizedInputMode
{
  localizedInputKey = self->_localizedInputKey;
  if (localizedInputKey)
  {
    v3 = [(NSString *)localizedInputKey componentsSeparatedByString:@"^"];
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)cancelMultitapTimer
{
  [(UIDelayedAction *)self->_multitapAction cancel];
  multitapAction = self->_multitapAction;
  self->_multitapAction = 0;
}

- (CGSize)stretchFactor
{
  v3 = 1.0;
  if ([(UIKeyboardLayoutStar *)self stretchKeyboardToFit])
  {
    if (self->_keyboard)
    {
      v4 = [(UIKeyboardLayout *)self sizeDelegate];
      v5 = [(UIKeyboardLayout *)self orientation];
      v6 = +[UIKeyboardInputModeController sharedInputModeController];
      v7 = [v6 currentInputMode];
      [v4 deviceSpecificPaddingForInterfaceOrientation:v5 inputMode:v7];
      v9 = v8;
      v11 = v10;

      [(UIKBScreenTraits *)self->super._screenTraits bounds];
      v13 = v12;
      [(UIKBTree *)self->_keyboard frame];
      if (v14 > 0.0)
      {
        [(UIKBTree *)self->_keyboard frame];
        v3 = (v13 - (v9 + v11)) / v15;
      }
    }
  }

  [(UIKeyboardLayoutStar *)self stretchFactorHeight];
  v17 = v16;
  v18 = v3;
  result.height = v17;
  result.width = v18;
  return result;
}

- (BOOL)_shouldAttemptToAddSupplementaryControlKeys
{
  if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 127)
  {
    return 0;
  }

  if (self->_layoutSupportsCrescendo)
  {
    return 0;
  }

  v4 = +[UIDevice _hasHomeButton];
  if (UIKeyboardComputeKeyboardIdiomFromScreenTraits(self->super._screenTraits, [(UIKBScreenTraits *)self->super._screenTraits idiom], 0) != 24)
  {
    return 0;
  }

  if (v4)
  {
    return 0;
  }

  v5 = [(UIKeyboardLayoutStar *)self isEmojiKeyplane];
  v6 = [(UIKBTree *)self->_keyplane isKanaKeyboard];
  v7 = [(UIKBTree *)self->_keyplane numberOfRows];
  v8 = [(UIKeyboardLayoutStar *)self isHandwritingPlane];
  if ([(UIKBTree *)self->_keyboard isFloating]|| v6 || v5 || !v8 && (v7 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return 0;
  }

  v9 = UIKeyboardGetCurrentInputMode();
  v10 = UIKeyboardGetDerivedKeyboard(v9, self->super._screenTraits, [(UITextInputTraits *)self->super._inputTraits keyboardType]);

  LOBYTE(v9) = [v10 addsSupplementaryControlKeys];
  return v9;
}

- (UIKeyboardLayoutStarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_allowPaddle
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = ([v4 BOOLForPreferenceKey:*MEMORY[0x1E69D97F0]] & 1) != 0 || -[UITextInputTraits isSecureTextEntry](self->super._inputTraits, "isSecureTextEntry");

  return v5;
}

- (id)_currentLayoutInfo
{
  v3 = objc_alloc_init(UIKBLayoutInfo);
  [(UIKBLayoutInfo *)v3 setScreenTraits:self->super._screenTraits];
  [(UIKBLayoutInfo *)v3 setTextInputTraits:self->super._inputTraits];
  v4 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsAutoShifted:](v3, "setIsAutoShifted:", [v4 isAutoShifted]);

  v5 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsShiftLocked:](v3, "setIsShiftLocked:", [v5 isShiftLocked]);

  return v3;
}

- (void)rollbackKeyplaneTransformations
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_keyplaneTransformations;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = +[UIKBContinuousPathModalKeysTransformation transformationIdentifier];

        if (v8 == v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          keyplane = self->_keyplane;
          v11 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
          v12 = [UIKBContinuousPathModalKeysTransformation rollbackKeyplane:keyplane withTransformationContext:v11];
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_keyplaneTransformations removeAllObjects];
}

- (void)transitionToModalContinuousPathKeyplane
{
  if (self->_showsPunctuationKeysOnPrimaryKeyplane)
  {
    keyplaneTransformations = self->_keyplaneTransformations;
    v4 = +[UIKBContinuousPathModalKeysTransformation transformationIdentifier];
    LOBYTE(keyplaneTransformations) = [(NSMutableSet *)keyplaneTransformations containsObject:v4];

    if ((keyplaneTransformations & 1) == 0)
    {
      keyplane = self->_keyplane;
      v6 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
      v7 = [UIKBContinuousPathModalKeysTransformation transformKeyplane:keyplane withTransformationContext:v6];
      v8 = self->_keyplane;
      self->_keyplane = v7;

      v9 = self->_keyplaneTransformations;
      v10 = +[UIKBContinuousPathModalKeysTransformation transformationIdentifier];
      [(NSMutableSet *)v9 addObject:v10];
    }
  }
}

- (BOOL)_shouldSwapGlobeAndMore
{
  v3 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(self->super._screenTraits, [(UIKBScreenTraits *)self->super._screenTraits idiom], 0);
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    if (v3 != 26)
    {
      if ((v3 - 23) < 2 && [(UIKeyboardLayout *)self isFloating])
      {
        goto LABEL_21;
      }

      return 0;
    }

    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v5 = [v4 preferencesActions];
    [v5 rivenSizeFactor:1.0];
    v7 = v6;

    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v9 = [v8 preferencesActions];
    [v9 rivenSizeFactor:1.0];
    if (v10 > 1.0)
    {

      goto LABEL_21;
    }

    if (v7 <= 1.0)
    {
      goto LABEL_27;
    }

    v11 = [(UIKeyboardLayout *)self isFloating];

    if (!v11)
    {
      return 0;
    }

LABEL_21:
    v8 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"More-Key"];
    v15 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
    v9 = v15;
    if (v8)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && [v8 visible])
    {
      v12 = [v9 visible];
LABEL_28:

      return v12;
    }

LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  if (v3 == 23)
  {
    if ([(UIKeyboardLayout *)self isFloating])
    {
      goto LABEL_21;
    }
  }

  else if (v3 == 24 || v3 == 26 && !+[UIDevice _hasHomeButton])
  {
    goto LABEL_21;
  }

  if (([(UIKBScreenTraits *)self->super._screenTraits orientation]- 3) > 1)
  {
    return 0;
  }

  v12 = 0;
  if (!self->_externalDictationAndInternationalKeys && (v3 - 23) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v13 = [(UIKBTree *)self->_keyboard name];
    v14 = [v13 _containsSubstring:@"HWR"];

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return v12;
}

- (int)displayTypeHintForShiftKey
{
  v2 = [(UIKBTree *)self->_keyplane intForProperty:@"shift-rendering"];
  if (v2 <= 25)
  {
    if (v2 == 22)
    {
      return 1;
    }

    if (v2 == 24)
    {
      return 7;
    }
  }

  else
  {
    switch(v2)
    {
      case 26:
        return 2;
      case 31:
        return 3;
      case 35:
        return 8;
    }
  }

  return 0;
}

- (int)displayTypeHintForMoreKey
{
  result = [(UIKBTree *)self->_keyplane intForProperty:@"more-rendering"];
  if (result <= 25)
  {
    if (result == 6)
    {
      return result;
    }

    if (result != 8)
    {
      return result == 22;
    }

    return 5;
  }

  else if (result > 30)
  {
    if (result != 31)
    {
      if (result == 35)
      {
        return 8;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (result != 26)
    {
      if (result == 27)
      {
        return 4;
      }

      return 0;
    }

    return 2;
  }
}

- (BOOL)globeKeyDisplaysAsEmojiKey
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 normalizedIdentifier];
  v6 = [v5 isEqualToString:@"emoji"];

  if ((v6 & 1) == 0)
  {
    v8 = [v3 normalizedEnabledInputModeIdentifiers];
    v9 = [v3 activeUserSelectableInputModeIdentifiers];
    if ([v8 containsObject:@"emoji"])
    {
      if ([v9 count] == 2)
      {
        if (UIKeyboardHas10KeyChineseKeyboard())
        {
          v10 = [v3 currentInputMode];
          v11 = [v10 identifier];
          v12 = TIInputModeGetLanguage();
          v7 = [v12 isEqualToString:@"zh"];

LABEL_26:
          goto LABEL_27;
        }

LABEL_8:
        v7 = 1;
        goto LABEL_26;
      }

      if ([(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
      {
        goto LABEL_8;
      }

      if ([v9 count] == 3 && ((-[UIKBTree visualStyling](self->_keyplane, "visualStyling") & 0x3F) == 0x18 || (-[UIKBTree visualStyling](self->_keyplane, "visualStyling") & 0x3F) == 0x17))
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = [v3 activeUserSelectableInputModes];
        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v25 = 0;
          v15 = *v28;
LABEL_14:
          v16 = 0;
          while (1)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v27 + 1) + 8 * v16);
            if ([v17 isExtensionInputMode])
            {
              break;
            }

            v18 = [v17 normalizedIdentifier];
            v19 = [v18 isEqualToString:@"emoji"];

            if ((v19 & 1) == 0)
            {
              v20 = [v17 normalizedIdentifier];
              IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v20);

              if (IsASCIICapable)
              {
                LODWORD(v25) = 1;
              }

              else
              {
                v22 = [v17 normalizedIdentifier];
                v23 = UIKeyboardLayoutSupportsASCIIToggleKey(v22);

                HIDWORD(v25) |= v23;
              }
            }

            if (v14 == ++v16)
            {
              v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
              if (v14)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }

        else
        {
          v25 = 0;
        }

        v7 = v25 & BYTE4(v25);
        goto LABEL_26;
      }
    }

    v7 = 0;
    goto LABEL_26;
  }

  v7 = 0;
LABEL_27:

  return v7 & 1;
}

- (void)didClearInput
{
  [(UIKeyboardLayoutStar *)self clearHandwritingStrokesIfNeededAndNotify:0];
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v3 didClearInput];
}

- (BOOL)isHandwritingPlane
{
  v3 = [(UIKBTree *)self->_keyboard name];
  if ([v3 _containsSubstring:@"HWR"])
  {
    v4 = [(UIKBTree *)self->_keyplane name];
    v5 = [v4 _containsSubstring:@"Letters"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasAccentKey
{
  v2 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Latin-Accents"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canMultitap
{
  v3 = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIKeyboardLayoutStar *)self multitapForwardKeys];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(UIKBTree *)self->_keyplane supportsMultitap];
    }
  }

  return v4;
}

- (id)candidateList
{
  v2 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Candidate-Selection"];
  v3 = [v2 objectAtIndex:0];

  if (v3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 candidateController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = UIKeyboardLayoutStar;
  [(UIView *)&v10 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_keyplaneTransformationAreaView setFrame:?];
  if (+[UIKeyboard resizable])
  {
    [(UIView *)self->_keyplaneView frame];
    if (v8 != v4 || v7 != v6)
    {
      [(UIKeyboardLayoutStar *)self resizeKeyplaneAndRedraw:0];
    }
  }
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self _rootInputWindowController];

  if (v3)
  {
    [(UIKeyboardLayoutStar *)self removePathEffectViewConstraintsIfNeeded];
    pathEffectView = self->_pathEffectView;
    self->_pathEffectView = 0;
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 didMoveToWindow];
}

- (void)removePathEffectViewConstraintsIfNeeded
{
  if (self->_pathEffectViewConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    pathEffectViewConstraints = self->_pathEffectViewConstraints;
    self->_pathEffectViewConstraints = 0;
  }
}

- (id)animatableLayout
{
  if (self->_layoutCanAnimate)
  {
    return self->_liveKeyplaneView;
  }

  else
  {
    return 0;
  }
}

- (void)refreshForDictationAvailablityDidChange
{
  if ([(UIKeyboardLayoutStar *)self shouldShowDictationKey])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    if (([v6 isDictationPopoverPresented] & 1) == 0)
    {
      v3 = +[UIKeyboardImpl activeInstance];
      v4 = [v3 inputDelegate];

      if (!v4)
      {
        return;
      }

      v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
      if (!v5)
      {
        v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-Dictation"];
        if (!v5)
        {
          return;
        }
      }

      v6 = v5;
      [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForDictationKey:v5] forKey:v5];
    }
  }
}

+ (Class)_subclassForScreenTraits:(id)a3
{
  v4 = a3;
  UIKeyboardComputeKeyboardIdiomFromScreenTraits(v4, [v4 idiom], objc_msgSend(v4, "isSplit"));
  if ([v4 idiom] == 3 && ((objc_msgSend(v4, "knobInput") & 1) != 0 || objc_msgSend(v4, "touchpadInput")))
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;

  return v6;
}

- (UIKeyboardLayoutStar)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = UIKeyboardLayoutStar;
  v3 = [(UIKeyboardLayout *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_lastTwoFingerTapTimestamp = CFAbsoluteTimeGetCurrent();
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyboards = v3->_keyboards;
    v3->_keyboards = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allKeyplaneViews = v3->_allKeyplaneViews;
    v3->_allKeyplaneViews = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    allKeyplaneKeycaps = v3->_allKeyplaneKeycaps;
    v3->_allKeyplaneKeycaps = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    keysUnderIndicator = v3->_keysUnderIndicator;
    v3->_keysUnderIndicator = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extendedTouchInfoMap = v3->_extendedTouchInfoMap;
    v3->_extendedTouchInfoMap = v12;

    v14 = objc_alloc_init(UIKBResizingKeyplaneCoordinator);
    resizingKeyplaneCoordinator = v3->_resizingKeyplaneCoordinator;
    v3->_resizingKeyplaneCoordinator = v14;

    [(UIKBResizingKeyplaneCoordinator *)v3->_resizingKeyplaneCoordinator setDelegate:v3];
    [(UIKeyboardLayoutStar *)v3 installGestureRecognizers];
    keyplaneView = v3->_keyplaneView;
    v3->_keyplaneView = 0;

    backgroundView = v3->_backgroundView;
    v3->_backgroundView = 0;

    localizedInputKey = v3->_localizedInputKey;
    v3->_localizedInputKey = 0;

    flickPopuptimer = v3->_flickPopuptimer;
    v3->_flickPopuptimer = 0;

    flickPopupView = v3->_flickPopupView;
    v3->_flickPopupView = 0;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    compositeImages = v3->_compositeImages;
    v3->_compositeImages = v21;

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v3 selector:sel_refreshForDictationAvailablityDidChange name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
    [v23 addObserver:v3 selector:sel_refreshForDictationAvailablityDidChange name:@"UIDictationControllerDictationDidFinish" object:0];
    [v23 addObserver:v3 selector:sel_nextToUseInputModeDidChange_ name:@"UITextInputNextInputModeInputModeDidChangeNotification" object:0];
    [v23 addObserver:v3 selector:sel_didTriggerDestructiveRenderConfigChange name:@"UIAccessibilityBoldTextStatusDidChangeNotification" object:0];
    v24 = objc_alloc_init(_UIKeyboardTypingSpeedLogger);
    typingSpeedLogger = v3->_typingSpeedLogger;
    v3->_typingSpeedLogger = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    keyplaneTransformations = v3->_keyplaneTransformations;
    v3->_keyplaneTransformations = v26;

    v28 = [MEMORY[0x1E695DF00] distantPast];
    prevProgressiveCandidateRequestTime = v3->_prevProgressiveCandidateRequestTime;
    v3->_prevProgressiveCandidateRequestTime = v28;

    progressiveCandidateUpdateTimer = v3->_progressiveCandidateUpdateTimer;
    v3->_progressiveCandidateUpdateTimer = 0;

    v31 = [(UIKeyboardLayout *)v3 typingStyleEstimator];
    [v31 setDelegate:v3];

    objc_storeWeak(&currentInstance, v3);
    v32 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v15[3] = *MEMORY[0x1E69E9840];
  self->_inDealloc = 1;
  v3 = +[UIInputSwitcherView activeInstance];
  [v3 setLayout:0];

  objc_storeWeak(&currentInstance, 0);
  [(UIKeyboardLayoutStar *)self uninstallGestureRecognizers];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  multitapKey = self->_multitapKey;
  self->_multitapKey = 0;

  [(UIKeyboardLayoutStar *)self cancelMultitapTimer];
  [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
  [(UIKeyboardLayoutStar *)self rollbackKeyplaneTransformations];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v15[0] = @"UIKeyboardDictationAvailabilityDidChangeNotification";
  v15[1] = @"UITextInputNextInputModeInputModeDidChangeNotification";
  v15[2] = @"UIAccessibilityBoldTextStatusDidChangeNotification";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [(NSNotificationCenter *)v5 _uiRemoveObserver:v6 names:?];

  if (self->_transitionView)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self->_transitionView];

    transitionView = self->_transitionView;
  }

  else
  {
    transitionView = 0;
  }

  [(UIKeyboardSplitTransitionView *)transitionView setSplitTransitionDataSource:0];
  v9 = self->_transitionView;
  self->_transitionView = 0;

  objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, 0);
  passcodeRenderConfig = self->_passcodeRenderConfig;
  self->_passcodeRenderConfig = 0;

  accentInfo = self->_accentInfo;
  self->_accentInfo = 0;

  hasAccents = self->_hasAccents;
  self->_hasAccents = 0;

  [(UIKeyboardLayoutStar *)self dismissGestureKeyboardIntroduction];
  [(NSTimer *)self->_flickPopuptimer invalidate];
  flickPopuptimer = self->_flickPopuptimer;
  self->_flickPopuptimer = 0;

  [(NSTimer *)self->_progressiveCandidateUpdateTimer invalidate];
  [(_UIKeyboardTypingSpeedLogger *)self->_typingSpeedLogger logToAggregate];
  [(UIKeyboardLayoutStar *)self removePathEffectViewConstraintsIfNeeded];
  v14.receiver = self;
  v14.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v14 dealloc];
}

+ (void)accessibilitySensitivityChanged
{
  WeakRetained = objc_loadWeakRetained(&currentInstance);
  [WeakRetained accessibilitySensitivityChanged];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->_gestureKeyboardIntroduction)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3 || !UIKeyboardAlwaysShowCandidateBarForCurrentInputMode() || ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    goto LABEL_19;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 candidateController];

  v11 = [(UIKeyboardLayoutStar *)self candidateList];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
LABEL_13:
    v13 = v12;
    if (v12)
    {
      if (([v12 isHidden] & 1) == 0)
      {
        v14 = [v10 candidateResultSet];
        v15 = [v14 hasCandidates];

        if (v15)
        {
          [(UIView *)self convertPoint:v13 toView:x, y];
          v17 = v16;
          v19 = v18;
          if ([v13 pointInside:v7 withEvent:?])
          {
            v8 = [v13 hitTest:v7 withEvent:{v17, v19}];

            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 view];
    goto LABEL_13;
  }

  if ([v10 activeCandidateViewType])
  {
    v12 = [v10 candidateKey];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_18:

LABEL_19:
  v21.receiver = self;
  v21.super_class = UIKeyboardLayoutStar;
  v8 = [(UIView *)&v21 hitTest:v7 withEvent:x, y];
LABEL_20:

  return v8;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4 && [(UIKeyboardLayoutStar *)self shouldDeactivateWithoutWindow]&& !+[UIKeyboard resizable])
  {
    [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 willMoveToWindow:v4];
}

- (void)clearUnusedObjects:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x1E69E9840];
  [(UIKeyboardLayoutStar *)self clearTransientState];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  if (self->_transitionView)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self->_transitionView];

    transitionView = self->_transitionView;
  }

  else
  {
    transitionView = 0;
  }

  [(UIKeyboardSplitTransitionView *)transitionView setSplitTransitionDataSource:0];
  [(UIView *)self->_transitionView removeFromSuperview];
  v7 = self->_transitionView;
  self->_transitionView = 0;

  objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, 0);
  v8 = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(NSMutableDictionary *)self->_keyboards keyEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v25 + 1) + 8 * i) _containsSubstring:@"Emoji"])
        {
          +[UIKeyboardEmojiKeyDisplayController writeEmojiDefaultsAndReleaseActiveInputView];
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(NSMutableDictionary *)self->_allKeyplaneViews objectEnumerator];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 purgeSubviews];
          [v19 purgeKeyViews];
          [v19 purgeLayerContents];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }

  objc_autoreleasePoolPop(v8);
  keyplaneName = self->_keyplaneName;
  self->_keyplaneName = 0;
}

- (void)removeFromSuperview
{
  [(UIKeyboardLayoutStar *)self clearTransientState];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  [(UIKeyboardLayoutStar *)self cancelDelayedCentroidUpdate];
  [(UIKeyboardSplitTransitionView *)self->_transitionView setCompletionBlock:0];
  [(UIKeyboardLayoutStar *)self cancelMultitapTimer];
  [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
  [(UIKeyboardLayoutStar *)self rollbackKeyplaneTransformations];
  [(UIKeyboardLayoutStar *)self dismissGestureKeyboardIntroduction];
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutStar;
  [(UIView *)&v3 removeFromSuperview];
}

- (void)flushKeyCache:(id)a3
{
  v15 = a3;
  if (v15)
  {
    if (+[UIView _isInAnimationBlock])
    {
      goto LABEL_9;
    }

    v4 = [v15 userInfo];
    v5 = [v4 objectForKey:@"UIKeyboardChangedAccessoryOnly"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      goto LABEL_9;
    }

    if (![(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected])
    {
      [(UIKeyboardLayoutStar *)self clearAllTouchInfo];
      [(UIKeyboardLayoutStar *)self handleDismissFlickView:0];
    }
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 stopAutoDelete];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 cancelAllKeyEvents];

  v9 = +[UIKeyboardImpl activeInstance];
  [v9 clearLongPressTimer];

  flickPopuptimer = self->_flickPopuptimer;
  if (flickPopuptimer)
  {
    [(NSTimer *)flickPopuptimer invalidate];
    v11 = self->_flickPopuptimer;
    self->_flickPopuptimer = 0;
  }

  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:0 clearingDimming:0];
  v12 = +[UIInputSwitcherView activeInstance];
  [v12 hide];

  v13 = +[UIKeyboardSplitControlMenu activeInstance];
  [v13 hide];

  v14 = +[UIKeyboardDictationMenu activeInstance];
  [v14 hide];

  [(UIKeyboardLayoutStar *)self setActiveKey:0];
  [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
LABEL_9:
}

+ (id)keyboardFromFactoryWithName:(id)a3 screenTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 screen];
    v9 = [UIKBGraphCache graphCacheForScreen:v8];
    v10 = [v9 graphCache];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "idiom")}];
    v13 = [v11 stringWithFormat:@"%@", v12];

    if ([v5 hasPrefix:@"Dynamic"])
    {
      v14 = [v13 stringByAppendingString:@"_Dynamic"];

      v13 = v14;
    }

    v15 = [v10 objectForKey:v13];
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v10 setObject:v15 forKey:v13];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v16 = getTUIKeyboardLayoutFactoryClass_softClass;
    v25 = getTUIKeyboardLayoutFactoryClass_softClass;
    if (!getTUIKeyboardLayoutFactoryClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getTUIKeyboardLayoutFactoryClass_block_invoke_1;
      v21[3] = &unk_1E70F2F20;
      v21[4] = &v22;
      __getTUIKeyboardLayoutFactoryClass_block_invoke_1(v21);
      v16 = v23[3];
    }

    v17 = v16;
    _Block_object_dispose(&v22, 8);
    v18 = [v16 sharedKeyboardFactory];
    v19 = [v18 keyboardWithName:v5 inCache:v15];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)keyboardWithName:(id)a3 screenTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [a1 keyboardFromFactoryWithName:v6 screenTraits:v7];
    if ([v6 hasSuffix:@"PasscodePad"] && objc_msgSend(v6, "hasPrefix:", @"Wildcat-"))
    {
      v10 = [a1 keyboardFromFactoryWithName:@"iPhone-Portrait-NumberPad" screenTraits:v7];

      v9 = v10;
    }

    if (v9 || ![v6 hasSuffix:@"Small"] || (v11 = objc_msgSend(v6, "rangeOfString:options:", @"-", 4), v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v12 = 0;
    }

    else
    {
      v12 = [v6 substringFromIndex:v11];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__UIKeyboardLayoutStar_keyboardWithName_screenTraits___block_invoke;
    aBlock[3] = &unk_1E7114830;
    v18 = v12;
    v20 = a1;
    v19 = v7;
    v13 = v12;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (!v9)
    {
      v9 = (*(v14 + 2))(v14, v6);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __54__UIKeyboardLayoutStar_keyboardWithName_screenTraits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  while (1)
  {
    v4 = [v3 rangeOfString:@"-" options:4];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v5 = [v3 substringToIndex:v4];

    v6 = *(a1 + 48);
    if (*(a1 + 32))
    {
      v7 = [v5 stringByAppendingString:?];
      v8 = [v6 keyboardFromFactoryWithName:v7 screenTraits:*(a1 + 40)];
    }

    else
    {
      v8 = [*(a1 + 48) keyboardFromFactoryWithName:v5 screenTraits:*(a1 + 40)];
    }

    v3 = v5;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v5 = v3;
LABEL_9:

  return v8;
}

+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v11 = [v10 preferencesActions];
  if ([v11 crescendoEnabled])
  {
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    v14 = [v13 inputModeSupportsCrescendo:v8 screenTraits:v9];

    if (v14)
    {
      [getTUIKeyplaneViewClass() keyplaneSizeForLayout:v8 screenTraits:v9 keyboardType:a5];
      v16 = v15;
      v18 = v17;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = UIKeyboardGetKBStarName(v8, v9, a5, 0);
  v20 = [a1 keyboardWithName:v19 screenTraits:v9];
  [v20 setIsFloating:{objc_msgSend(v9, "isFloating")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 frame];
    v16 = v21;
    v18 = v22;
  }

  else
  {
    v23 = MEMORY[0x1E695F060];
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __75__UIKeyboardLayoutStar_keyboardSizeForInputMode_screenTraits_keyboardType___block_invoke;
    v35 = &unk_1E70F35B8;
    v36 = v19;
    v37 = v20;
    if (keyboardSizeForInputMode_screenTraits_keyboardType__once_0 != -1)
    {
      dispatch_once(&keyboardSizeForInputMode_screenTraits_keyboardType__once_0, &v32);
    }

    v16 = *v23;
    v18 = v23[1];
  }

  v24 = UIKeyboardGetDerivedKeyboard(v8, v9, a5);
  v25 = v24;
  if (v24)
  {
    [v24 keyboardSize];
    if (v26 != -1.0)
    {
      [v25 keyboardSize];
      v18 = v27;
    }

    [v25 keyboardSize];
    if (v28 != -1.0)
    {
      [v25 keyboardSize];
      v16 = v29;
    }
  }

LABEL_16:
  v30 = v16;
  v31 = v18;
  result.height = v31;
  result.width = v30;
  return result;
}

void __75__UIKeyboardLayoutStar_keyboardSizeForInputMode_screenTraits_keyboardType___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &currentInstance_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Error: LayoutStar keyboardName %@ resulted in %@", &v5, 0x16u);
  }
}

- (id)splitNameForKeyplaneName:(id)a3
{
  v3 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:a3];
  v4 = [v3 stringByAppendingString:@"-split"];

  return v4;
}

- (id)splitNameForKeyplane:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForProperty:@"split-alternate"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 name];
    v7 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:v8];
  }

  return v7;
}

- (id)defaultKeyplaneForKeyplane:(id)a3
{
  keyboard = self->_keyboard;
  v5 = [a3 name];
  v6 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:v5];
  v7 = [(UIKBTree *)keyboard subtreeWithName:v6];

  return v7;
}

- (CGRect)dragGestureRectInView:(id)a3
{
  v36.receiver = self;
  v36.super_class = UIKeyboardLayoutStar;
  v4 = a3;
  [(UIKeyboardLayout *)&v36 dragGestureRectInView:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(UIKBTree *)self->_keyplane keysWithString:@"Dismiss", v36.receiver, v36.super_class];
  v10 = [v9 lastObject];
  [v10 frame];
  x = v11;
  y = v13;
  width = v15;
  height = v17;

  if (self->_flickPopuptimer)
  {
    [(UIView *)self bounds];
    v20 = v19;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v21 = v20 - CGRectGetMaxX(v37);
    if (x < v21)
    {
      v21 = x;
    }

    v22 = -v21;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectInset(v38, v22, v22);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  if (width >= v6)
  {
    v23 = v6;
  }

  else
  {
    v23 = width;
  }

  [(UIView *)self convertRect:v4 toView:width * 0.5 + x - v23 * 0.5, height * 0.5 + y - v8 * 0.5];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)frameForKeylayoutName:(id)a3 onKeyplaneName:(id)a4
{
  keyboard = self->_keyboard;
  v6 = a3;
  v7 = [(UIKBTree *)keyboard subtreeWithName:a4];
  [v7 frameForKeylayoutName:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)frameForKeylayoutName:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    v5 = [v4 hasSuffix:@"right"];
    liveKeyplaneView = self->_liveKeyplaneView;
    if (v5)
    {
      [(TUIKeyplaneView *)liveKeyplaneView rightSplitSize];
      v8 = v7;
      v10 = v9;
      [(TUIKeyplaneView *)self->_liveKeyplaneView frame];
      v12 = v11 - v8 + -10.0;
    }

    else
    {
      [(TUIKeyplaneView *)liveKeyplaneView leftSplitSize];
      v8 = v27;
      v10 = v28;
      v12 = 0.0;
    }

    v18 = v8 + 10.0;
    v20 = v10 + 10.0;
    v16 = 0.0;
  }

  else
  {
    v13 = [(UIKBTree *)self->_keyplane name];
    [(UIKeyboardLayoutStar *)self frameForKeylayoutName:v4 onKeyplaneName:v13];
    v12 = v14;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v12;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    if (CGRectEqualToRect(v33, *MEMORY[0x1E695F058]))
    {
      v21 = [(UIKBTree *)self->_keyplane name];
      v22 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:v21];

      [(UIKeyboardLayoutStar *)self frameForKeylayoutName:v4 onKeyplaneName:v22];
      v12 = v23;
      v16 = v24;
      v18 = v25;
      v20 = v26;
    }
  }

  v29 = v12;
  v30 = v16;
  v31 = v18;
  v32 = v20;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)tearDownSplitTransitionView
{
  transitionView = self->_transitionView;
  if (transitionView)
  {
    [(UIKeyboardSplitTransitionView *)transitionView setSplitTransitionDataSource:0];
    [(UIView *)self->_transitionView removeFromSuperview];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self->_transitionView];

    v5 = self->_transitionView;
    self->_transitionView = 0;
  }

  objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, 0);
}

- (void)refreshForRivenPreferences
{
  if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    if ([(UIKBScreenTraits *)self->super._screenTraits supportsSplit])
    {
      UIKeyboardSplitTransitionViewClass();
      isKindOfClass = objc_opt_isKindOfClass();
      if (!self->_transitionView || (isKindOfClass & 1) == 0)
      {
        [(UIKeyboardLayoutStar *)self tearDownSplitTransitionView];
        v4 = [objc_alloc(UIKeyboardSplitTransitionViewClass()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        transitionView = self->_transitionView;
        self->_transitionView = v4;

        [(UIView *)self->_transitionView setHidden:1];
        [(UIKeyboardSplitTransitionView *)self->_transitionView setSplitTransitionDataSource:self];
        [(UIView *)self addSubview:self->_transitionView];
      }
    }

    else
    {
      [(UIKeyboardLayoutStar *)self tearDownSplitTransitionView];
    }

    [(UIView *)self addGestureRecognizer:self->_upSwipeRecognizer];
    [v6 removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
    [v6 removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];
  }
}

- (int)visualStyleForKeyboardIfSplit:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKBTree *)self->_keyboard visualStyle];
  v6 = [(UIKBTree *)self->_keyboard visualStyle];
  if (v3)
  {
    if (v6 == 102)
    {
      return 106;
    }

    v8 = 109;
    v9 = 108;
  }

  else
  {
    if (v6 == 106 || [(UIKBTree *)self->_keyboard visualStyle]== 107)
    {
      return 102;
    }

    v8 = 108;
    v9 = 109;
  }

  if ([(UIKBTree *)self->_keyboard visualStyle]== v9)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  if (appearance == -1)
  {
    appearance = self->_appearance;
  }

  self->_appearance = appearance;
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
  {
    v4 = ![(UIKeyboardLayout *)self isFloating];
  }

  else
  {
    v4 = 0;
  }

  if ([(UIKBTree *)self->_keyboard visualStyle]!= 101 && [(UIKBTree *)self->_keyboard visualStyle]!= 4 && [(UIKBTree *)self->_keyboard visualStyle]!= 108 && [(UIKBTree *)self->_keyboard visualStyle]!= 301 && [(UIKBTree *)self->_keyboard visualStyle]!= 109)
  {
    v5 = self->_appearance;
    if (v5 <= 8)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          goto LABEL_29;
        }

        if (v5 != 2)
        {
LABEL_36:
          if ([(UIKBTree *)self->_keyboard dynamicLayout]&& ![(UIKBTree *)self->_keyboard visualStyle])
          {
            if (v4)
            {
              v8 = 102;
            }

            else
            {
              v8 = 1;
            }

            [(UIKBTree *)self->_keyboard setVisualStyle:v8];
          }

          goto LABEL_42;
        }
      }

      keyboard = self->_keyboard;
      if (v4)
      {
LABEL_30:
        v7 = 102;
LABEL_35:
        [(UIKBTree *)keyboard setVisualStyle:v7];
        goto LABEL_36;
      }
    }

    else
    {
      if (v5 <= 11)
      {
        if (v5 != 9)
        {
          if (v5 != 11)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        }

LABEL_29:
        keyboard = self->_keyboard;
        if (!v4)
        {
          v7 = 3;
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      if (v5 != 12)
      {
        if (v5 == 127)
        {
LABEL_27:
          keyboard = self->_keyboard;
          if (v4)
          {
            v7 = 105;
          }

          else
          {
            v7 = 5;
          }

          goto LABEL_35;
        }

        goto LABEL_36;
      }

      keyboard = self->_keyboard;
    }

    v7 = 1;
    goto LABEL_35;
  }

LABEL_42:
  if ([(UIKBScreenTraits *)self->super._screenTraits supportsSplit])
  {
    [(UIKBTree *)self->_keyboard setVisualStyle:[(UIKeyboardLayoutStar *)self visualStyleForKeyboardIfSplit:[(UIKBScreenTraits *)self->super._screenTraits isSplit]]];
    [(UIKBTree *)self->_keyplane setVisualStyle:[(UIKBTree *)self->_keyboard visualStyle]];

    [(UIKeyboardLayoutStar *)self updateBackgroundIfNeeded];
  }

  else
  {
    v9 = [(UIKBTree *)self->_keyboard visualStyle];
    keyplane = self->_keyplane;

    [(UIKBTree *)keyplane setVisualStyle:v9];
  }
}

- (BOOL)allKeyplanesHaveSameHeight
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(UIKBTree *)self->_keyboard subtrees];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = -1.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = v6;
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          [v9 originalFrame];
          Height = CGRectGetHeight(v19);
          v6 = Height;
          if (v8 >= 0.0)
          {
            v6 = v8;
            if (Height != v8)
            {
              v11 = 0;
              goto LABEL_13;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (CGSize)sizeForKeyplane:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (liveKeyplaneView = self->_liveKeyplaneView) != 0)
  {
    [(TUIKeyplaneView *)liveKeyplaneView bounds];
    v7 = v6;
    v9 = v8;
  }

  else if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService](UIKeyboard, "canShowEmojiKeyboardInsideStickerPickerService") && (-[UIView superview](self, "superview"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 inputDelegateManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "keyInputDelegate"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v11, !v14))
  {
    v31 = [(UIView *)self superview];
    [v31 bounds];
    v7 = v32;
    v9 = v33;
  }

  else
  {
    v15 = UIKeyboardGetCurrentInputMode();
    v16 = UIKeyboardGetDerivedKeyboard(v15, self->super._screenTraits, [(UITextInputTraits *)self->super._inputTraits keyboardType]);

    v17 = [v4 subtrees];
    v18 = [v17 count];

    if (v18)
    {
      [v4 frame];
      v7 = v19;
      v9 = v20;
      if ([(UIKeyboardLayoutStar *)self currentHandBias])
      {
        [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
        v7 = v21;
      }

      else if (!+[UIKeyboard resizable]&& v16)
      {
        [v16 keyboardSize];
        if (v27 != -1.0)
        {
          [v16 keyboardSize];
          v7 = v28;
        }

        [v16 keyboardSize];
        if (v29 != -1.0 && ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23 || [(UIKeyboardLayoutStar *)self allKeyplanesHaveSameHeight]))
        {
          [v16 keyboardSize];
          v9 = v30;
        }
      }
    }

    else
    {
      v22 = [(UIKeyboardLayout *)self sizeDelegate];
      [v22 defaultSizeForInterfaceOrientation:{-[UIKeyboardLayout orientation](self, "orientation")}];
      v7 = v23;
      v9 = v24;
    }
  }

  v25 = v7;
  v26 = v9;
  result.height = v26;
  result.width = v25;
  return result;
}

- (UIEdgeInsets)keyplanePadding
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (liveKeyplaneView = self->_liveKeyplaneView) != 0)
  {

    [(TUIKeyplaneView *)liveKeyplaneView keyplaneInsets];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardLayoutStar;
    [(UIKeyboardLayout *)&v8 keyplanePadding];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)updateKeyboardForKeyplane:(id)a3
{
  [(UIKeyboardLayoutStar *)self sizeForKeyplane:a3];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v4 currentInputMode];

  v5 = [(UIKeyboardLayout *)self sizeDelegate];
  [v5 deviceSpecificStaticHitBufferForInterfaceOrientation:-[UIKeyboardLayout orientation](self inputMode:{"orientation"), v7}];

  [(UIView *)self frame];
  [(UIView *)self setFrame:?];
  homeRowHint = self->_homeRowHint;
  self->_homeRowHint = 0;
}

- (id)keyForKeyboardName:(id)a3 screenTraits:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@_%ld", v6, objc_msgSend(a4, "idiom")];

  return v7;
}

- (void)setKeyboardName:(id)a3 appearance:(int64_t)a4
{
  v6 = a3;
  v23 = v6;
  if (!v6)
  {
    NSLog(&cfstr_AttemptToSetKe.isa);
    goto LABEL_24;
  }

  v7 = [(UIKeyboardLayoutStar *)self keyForKeyboardName:v6 screenTraits:self->super._screenTraits];
  v8 = [(NSMutableDictionary *)self->_keyboards objectForKey:v7];
  if (v8 || ([objc_opt_class() keyboardWithName:v23 screenTraits:self->super._screenTraits], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = UIKeyboardGetCurrentInputMode();
    v11 = [(UIKeyboardLayoutStar *)self localizedInputMode];
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 isEqual:v11] ^ 1;
    }

    v22 = a4;
    if ([v23 isEqualToString:self->_keyboardName] && self->_appearance == a4 && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") != 126 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 3)
    {
      v20 = [(UIKBTree *)self->_keyplane visualStyling];
      v13 = (v20 & 0x3F) == 3;
      if ((v20 & 0x3F) == 3)
      {
        v21 = 1;
      }

      else
      {
        v21 = v12;
      }

      if (v21 != 1)
      {
LABEL_20:
        if (!+[UIKeyboardImpl rivenPreference]|| self->_transitionView)
        {
LABEL_22:

          goto LABEL_23;
        }

LABEL_14:
        homeRowHint = self->_homeRowHint;
        self->_homeRowHint = 0;

        [(NSMutableDictionary *)self->_keyboards setObject:v9 forKey:v7];
        [(NSMutableDictionary *)self->_allKeyplaneViews removeAllObjects];
        [(NSMutableSet *)self->_keysUnderIndicator removeAllObjects];
        [(UIKBTree *)self->_keyplane clearManualAddedKey];
        v17 = [v23 copy];
        keyboardName = self->_keyboardName;
        self->_keyboardName = v17;

        objc_storeStrong(&self->_keyboard, v9);
        keyplane = self->_keyplane;
        self->_keyplane = 0;

        [(UIView *)self setOpaque:0];
        [(NSMutableSet *)self->_validInputStrings removeAllObjects];
        [(UIKeyboardLayoutStar *)self setKeyboardAppearance:v22];
        [(UIKeyboardLayoutStar *)self clearAllTouchInfo];
        if (+[UIKeyboardImpl rivenInstalled])
        {
          [(UIKeyboardLayoutStar *)self refreshForRivenPreferences];
        }

        goto LABEL_22;
      }
    }

    else
    {
      v13 = 1;
    }

    [(UIKeyboardLayoutStar *)self setLocalizedInputKey:&stru_1EFB14550];
    [(UIKeyboardLayoutStar *)self cancelMultitapTimer];
    [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
    v14 = [(NSMutableDictionary *)self->_allKeyplaneViews allValues];
    [v14 makeObjectsPerformSelector:sel_purgeSubviews];

    v15 = [(NSMutableDictionary *)self->_allKeyplaneViews allValues];
    [v15 makeObjectsPerformSelector:sel_purgeFactory];

    [(NSMutableSet *)self->_accentInfo removeAllObjects];
    [(NSMutableSet *)self->_hasAccents removeAllObjects];
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_23:

LABEL_24:
}

- (BOOL)hasActiveKeys
{
  v2 = [(UIKeyboardLayoutStar *)self currentKeyplaneView];
  v3 = [v2 activeKeyViews];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)canProduceString:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  validInputStrings = self->_validInputStrings;
  if (!validInputStrings)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_validInputStrings;
    self->_validInputStrings = v6;

    validInputStrings = self->_validInputStrings;
  }

  if (![(NSMutableSet *)validInputStrings count])
  {
    v33 = v4;
    v39 = UIKeyboardGetCurrentInputMode();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [(UIKBTree *)self->_keyboard subtrees];
    v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v36)
    {
      v35 = *v45;
      do
      {
        v8 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v8;
          v9 = *(*(&v44 + 1) + 8 * v8);
          [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v9];
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = [v9 keys];
          v10 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v41;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v41 != v12)
                {
                  objc_enumerationMutation(v38);
                }

                v14 = *(*(&v40 + 1) + 8 * i);
                v15 = [v14 representedString];

                if (v15)
                {
                  v16 = self->_validInputStrings;
                  v17 = [v14 fullRepresentedString];
                  [(NSMutableSet *)v16 addObject:v17];

                  v18 = [v14 representedString];
                  if ([v14 displayType] == 7)
                  {
                    v19 = [v14 secondaryRepresentedStrings];
                    v20 = [v19 count];

                    if (v20)
                    {
                      v21 = [v14 secondaryRepresentedStrings];
                      v22 = [v21 firstObject];

                      [(NSMutableSet *)self->_validInputStrings addObject:v22];
                      v23 = [v18 stringByAppendingString:v22];

                      v18 = v23;
                    }
                  }

                  if ([v14 variantType] == 3)
                  {
                    v24 = [(UIKeyboardLayoutStar *)self _variantsOfCurrencyKey:v14 language:v39];
                    v25 = self->_validInputStrings;
                    v26 = [v24 objectForKeyedSubscript:@"Strings"];
                    [(NSMutableSet *)v25 addObjectsFromArray:v26];
                  }

                  v27 = UIKeyboardRomanAccentVariants(v18, v39, 7);
                  v28 = [v27 objectForKey:@"Strings"];

                  [(NSMutableSet *)self->_validInputStrings addObjectsFromArray:v28];
                }
              }

              v11 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v11);
          }

          v8 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v36);
    }

    v4 = v33;
  }

  v29 = v4;
  if (([(__CFString *)v29 _isDelete]& 1) != 0)
  {
    v30 = @"Delete";
LABEL_30:

    goto LABEL_31;
  }

  v30 = v29;
  if ([(__CFString *)v29 _isNewlineOrReturn])
  {
    v30 = @"\n";
    goto LABEL_30;
  }

LABEL_31:
  v31 = [(NSMutableSet *)self->_validInputStrings containsObject:v30];

  return v31;
}

- (void)updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:(id)a3 withInputMode:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  v9 = v8 > 0xB || ((1 << v8) & 0x930) == 0;
  if (v9 && v8 != 127)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v6 cachedKeysByKeyName:@"Emoji-International-Key"];
    v18 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v27 = v6;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = [v7 normalizedIdentifier];
        v24 = [v23 rangeOfString:@"HWR"];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [v7 identifier];
          v26 = UIKeyboardLocalizedString(@"UI-ABC", v25, 0, @"ABC");
          [v22 setDisplayString:v26];
        }

        else
        {
          [v22 setDisplayString:@""];
        }
      }

      v19 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
    goto LABEL_12;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v6 cachedKeysByKeyName:@"NumberPad-International"];
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = v6;
    v13 = *v33;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * j);
        v16 = [v7 identifier];
        v17 = UIKeyboardLocalizedString(@"UI-Numbers", v16, 0, @"123");
        [v15 setDisplayString:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
LABEL_12:
    v6 = v27;
  }

LABEL_13:
}

- (id)internationalKeyDisplayStringOnEmojiKeyboard
{
  if ([(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Emoji-International-Key"];
    v3 = [v4 displayString];
  }

  return v3;
}

- (void)nextToUseInputModeDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:@"UITextInputNextInputModeInputModeDidChangeKey"];

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:self->_keyplane withInputMode:v6];
  v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Emoji-International-Key"];
  [v5 setRendering:38];
  [(UIKeyboardLayoutStar *)self setState:2 forKey:v5];
}

- (void)updateLocalizedKeysOnKeyplane:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = [v4 cachedKeysByKeyName:@"Shift-Key"];
  v6 = [v5 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v63 + 1) + 8 * i);
        [v10 setDisplayTypeHint:{-[UIKeyboardLayoutStar displayTypeHintForShiftKey](self, "displayTypeHintForShiftKey")}];
        v11 = UIKBShiftKeyStringForActiveInputMode(v10);
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"shift";
        }

        [v10 setDisplayString:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v7);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v14 = [v4 cachedKeysByKeyName:@"More-Key"];
  v15 = [v14 countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v59 + 1) + 8 * j);
        if ([v19 interactionType] == 11)
        {
          [v19 setDisplayTypeHint:{-[UIKeyboardLayoutStar displayTypeHintForMoreKey](self, "displayTypeHintForMoreKey")}];
          v20 = UIKBMoreKeyStringForActiveInputMode(self->_keyboard, v19);
          [v19 setDisplayString:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v16);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [v4 cachedKeysByKeyName:@"Return-Key"];
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * k);
        v27 = UIKeyboardLocalizedReturnKeyName([v26 displayTypeHint]);
        [v26 setDisplayString:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v23);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = [v4 cachedKeysByKeyName:@"Dictation-Key"];
  v29 = [v28 countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v51 + 1) + 8 * m) setDisplayTypeHint:{objc_msgSend(UIKeyboardActiveUserSelectableInputModes, "count") > 1}];
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v30);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = [v4 cachedKeysByKeyName:{@"NumberPad-More", 0}];
  v34 = [v33 countByEnumeratingWithState:&v47 objects:v67 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v47 + 1) + 8 * n);
        [v38 setDisplayTypeHint:{-[UIKeyboardLayoutStar displayTypeHintForMoreKey](self, "displayTypeHintForMoreKey")}];
        v39 = UIKBMoreKeyStringForActiveInputMode(self->_keyboard, v38);
        [v38 setDisplayString:v39];
      }

      v35 = [v33 countByEnumeratingWithState:&v47 objects:v67 count:16];
    }

    while (v35);
  }

  v40 = +[UIKeyboardInputModeController sharedInputModeController];
  v41 = [v40 inputModeThatInvokeEmoji];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v44 = +[UIKeyboardInputModeController sharedInputModeController];
    v45 = +[UIKeyboardImpl activeInstance];
    v46 = [v45 textInputTraits];
    v43 = [v44 nextInputModeInPreferenceListForTraits:v46 updatePreference:0];
  }

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:v4 withInputMode:v43];
  [(UIKeyboardLayoutStar *)self updateInputModeLocalizedKeysForKeyplane:v4];
}

- (void)updateAutolocalizedKeysForKeyplane:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 autolocalizedKeyCacheIterator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateLocalizedDisplayStringsForKeys:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v47 = UIKeyboardGetCurrentInputMode();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    do
    {
      v7 = 0;
      do
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * v7);
        if ([v8 displayType] != 23 || (objc_msgSend(v8, "displayString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"shift"), v9, v10))
        {
          v11 = [v8 localizationKey];
          if ([v11 hasPrefix:@"Localized-Number-"])
          {
            v12 = [v11 substringFromIndex:{objc_msgSend(@"Localized-Number-", "length")}];
            v13 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
            if (v13 == 127 || ([MEMORY[0x1E695DF58] preferredLocale], v14 = objc_claimAutoreleasedReturnValue(), v15 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, v14), v14, v15))
            {
              v16 = UIKeyboardGetNumberFormatterForPreferredLocale();
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
              v18 = [v16 stringFromNumber:v17];

              [v8 setDisplayString:v18];
              if (v13 == 127)
              {
                v19 = v12;
              }

              else
              {
                v19 = v18;
              }

              [v8 setRepresentedString:v19];
            }

            else
            {
              v37 = [MEMORY[0x1E695DF58] currentLocale];
              v38 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, v37);

              if (v38)
              {
                v39 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", objc_msgSend(v12, "integerValue")];
                [v8 setDisplayString:v39];
                [v8 setRepresentedString:v39];
              }

              else
              {
                [v8 setDisplayString:v12];
                [v8 setRepresentedString:v12];
              }
            }

            if ([v8 displayType] == 20)
            {
              if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 userInterfaceIdiom], v20, v21 == 6))
              {
                [v8 setSecondaryDisplayStrings:&unk_1EFE2C6B8];
                [v8 setSecondaryRepresentedStrings:&unk_1EFE2C6D0];
              }

              else
              {
                v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UI-NumberPad-%u", objc_msgSend(v12, "integerValue")];
                v34 = UIKeyboardLocalizedString(v33, v47, 0, 0);

                if (v34)
                {
                  v55 = v34;
                  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
                  [v8 setSecondaryDisplayStrings:v35];

                  v54 = v34;
                  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                  [v8 setSecondaryRepresentedStrings:v36];
                }
              }
            }

LABEL_36:

            goto LABEL_37;
          }

          if ([v8 interactionType] == 9)
          {
            v12 = [v8 representedString];
            if (([v12 isEqualToString:@"NonASCII"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"ASCIICapable"))
            {
              v22 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
              v23 = [v22 identifier];

              if (v23)
              {
                v24 = v23;

                v12 = v24;
              }
            }

            v25 = UIKeyboardLocalizedString(v11, v12, 0, 0);
            [v8 setDisplayString:v25];

            goto LABEL_36;
          }

          if (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 2 && [v11 hasSuffix:@"TV"])
          {
            v26 = UIKeyboardLocalizedString(v11, 0, 0, 0);
            [v8 setDisplayString:v26];

            v27 = [v8 displayString];

            v28 = 0;
            if (!v27)
            {
              v28 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@"TV", "length")}];
            }

            v11 = v28;
          }

          if ([v11 hasSuffix:@"Caps"])
          {
            v29 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@"Caps", "length")}];

            v30 = UIKeyboardLocalizedString(v29, 0, 0, 0);
            v31 = [MEMORY[0x1E695DF58] preferredLocale];
            v32 = [v30 uppercaseStringWithLocale:v31];
            [v8 setDisplayString:v32];

            v11 = v29;
LABEL_37:

            goto LABEL_38;
          }

          if ([v8 displayType] == 20 && objc_msgSend(v8, "interactionType") == 14)
          {
            if ([v11 isEqualToString:@"UI-Numbers"])
            {
              v40 = [MEMORY[0x1E695DF58] preferredLocale];
              v41 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, v40);

              if (v41)
              {
                v42 = UIKeyboardGetNumbersStringForPreferredLocale();
LABEL_50:
                v43 = v42;
                [v8 setDisplayString:v42];

                goto LABEL_37;
              }
            }
          }

          if (v11)
          {
            if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:v11])
            {
LABEL_53:
              [v8 setDisplayString:@" "];
              goto LABEL_37;
            }

            v42 = UIKeyboardLocalizedString(v11, 0, 0, 0);
            goto LABEL_50;
          }

          v44 = [v8 displayString];
          v45 = [(UIKeyboardLayoutStar *)self shouldHideKeyName:v44];

          if (v45)
          {
            goto LABEL_53;
          }
        }

LABEL_38:
        ++v7;
      }

      while (v5 != v7);
      v46 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      v5 = v46;
    }

    while (v46);
  }
}

- (BOOL)shouldHideKeyName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"Unlabeled-Space-Key"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @" ") & 1) == 0)
  {
    if ([v5 isEqualToString:@"UI-Space"])
    {
      v8 = [(UIKeyboardLayoutStar *)self renderConfig];
      v9 = [v8 colorAdaptiveBackground];

      if (v9)
      {
        v10 = [(UIKeyboardLayoutStar *)self keyplane];
        if (([v10 gridLayout] & 1) != 0 || -[UIKeyboardLayoutStar isHandwritingPlane](self, "isHandwritingPlane") || -[UIKeyboardLayoutStar is10KeyRendering](self, "is10KeyRendering"))
        {
        }

        else
        {
          v11 = [(UIKeyboardLayoutStar *)self keyboard];
          v12 = [v11 isKanaKeyboard];

          if ((v12 & 1) == 0)
          {
            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
            {
              v13 = [(UIKeyboardLayoutStar *)self keyboardName];
              v14 = [v13 containsString:@"Linear-Keyboard"];

              v6 = v14 ^ 1;
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }
      }
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v6 = 1;
LABEL_5:

  return v6 & 1;
}

- (void)updateInputModeLocalizedKeysForKeyplane:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIKeyboardLayoutStar *)self updateAutolocalizedKeysForKeyplane:v4];
  v79 = UIKeyboardGetCurrentInputMode();
  v5 = UIKeyboardInputModeGetDecimalSeparator(v79);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v75 = v4;
  v6 = [v4 cachedKeysByKeyName:@"NumberPad-Dot"];
  v7 = [v6 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v102;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v102 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v101 + 1) + 8 * i);
        [v11 setDisplayString:v5];
        [v11 setRepresentedString:v5];
        [(UIKeyboardLayoutStar *)self setState:2 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v8);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v12 = [v75 cachedKeysByKeyName:@"Primary-Tag-Symbol"];
  v13 = [v12 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v98;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v98 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v97 + 1) + 8 * j);
        v18 = UIKeyboardLocalizedString(@"UI-PrimaryTagSymbol", v79, 0, @"@");
        [v17 setDisplayString:v18];
        [v17 setRepresentedString:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v14);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v19 = [v75 cachedKeysByKeyName:@"Alternate-Tag-Symbol"];
  v20 = [v19 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v94;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v94 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v93 + 1) + 8 * k);
        v25 = UIKeyboardLocalizedString(@"UI-AlternateTagSymbol", v79, 0, @"#");
        [v24 setDisplayString:v25];
        [v24 setRepresentedString:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v21);
  }

  v74 = [v75 cachedKeysByKeyName:@"Top-Level-Domain-Key"];
  if ([v74 count])
  {
    v26 = [MEMORY[0x1E695DF58] preferredLocale];
    v27 = [v26 localeIdentifier];

    v28 = UIKeyboardTopLevelDomainVariants(v27, 3);
    v29 = [v28 objectForKey:@"Strings"];
    v30 = [v29 lastObject];

    if (v30 || (UIKeyboardTopLevelDomainVariants(0, 3), v31 = objc_claimAutoreleasedReturnValue(), v28, [v31 objectForKey:@"Strings"], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "lastObject"), v30 = objc_claimAutoreleasedReturnValue(), v32, v28 = v31, v30))
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v33 = v74;
      v34 = [v33 countByEnumeratingWithState:&v89 objects:v108 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v90;
        do
        {
          for (m = 0; m != v35; ++m)
          {
            if (*v90 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v89 + 1) + 8 * m);
            [v38 setDisplayString:v30];
            [v38 setRepresentedString:v30];
          }

          v35 = [v33 countByEnumeratingWithState:&v89 objects:v108 count:16];
        }

        while (v35);
      }
    }
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [v75 cachedKeysByKeyName:@"Single-Domain-Key"];
  v78 = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
  if (v78)
  {
    v39 = *v86;
    while (2)
    {
      for (n = 0; n != v78; n = n + 1)
      {
        if (*v86 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v85 + 1) + 8 * n);
        v42 = UIKeyboardTopLevelDomainVariants(0, 3);
        v43 = [v42 objectForKey:@"Strings"];
        v44 = v43;
        if (!v43 || [v43 count] < 3)
        {

          goto LABEL_53;
        }

        if ([v41 intForProperty:@"popup-bias"] == 2)
        {
          v45 = -2;
        }

        else
        {
          v45 = -1;
        }

        if ([v41 intForProperty:@"popup-bias"] == 29)
        {
          v45 = -3;
        }

        v46 = [v44 objectAtIndex:{v45 + objc_msgSend(v44, "count")}];
        if (-[UIKeyboardLayoutStar shouldMatchCaseForDomainKeys](self, "shouldMatchCaseForDomainKeys") && [v75 isShiftKeyplane])
        {
          v47 = [MEMORY[0x1E695DF58] preferredLocale];
          [v46 uppercaseStringWithLocale:v47];
          v49 = v48 = v39;

          v46 = v49;
          v39 = v48;
        }

        [v41 setDisplayString:v46];
        [v41 setRepresentedString:v46];
      }

      v78 = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
      if (v78)
      {
        continue;
      }

      break;
    }
  }

LABEL_53:

  [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v75];
  [(UIKeyboardLayoutStar *)self setPercentSignKeysForCurrentLocaleOnKeyplane:v75];
  if (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 3 || (-[UIKeyboardLayoutStar keyboardName](self, "keyboardName"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 containsString:@"Linear-Keyboard"], v50, (v51 & 1) == 0))
  {
    v52 = objc_alloc(MEMORY[0x1E695DF70]);
    v53 = [v75 cachedKeysByKeyName:@"Space-Key"];
    v54 = [v52 initWithArray:v53];

    v55 = [v75 cachedKeysByKeyName:@"Unlabeled-Space-Key"];
    [v54 addObjectsFromArray:v55];

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v56 = v54;
    v57 = [v56 countByEnumeratingWithState:&v81 objects:v106 count:16];
    if (!v57)
    {
      goto LABEL_82;
    }

    v58 = v57;
    v59 = *v82;
    v77 = v56;
    while (1)
    {
      v60 = 0;
      do
      {
        if (*v82 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v81 + 1) + 8 * v60);
        v62 = +[UIKeyboardInputModeController sharedInputModeController];
        v63 = [v62 currentInputMode];

        if (!_os_feature_enabled_impl() || ([v63 _iconLabelForMultilingualSet], (v64 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v65 = [(UIKeyboardLayoutStar *)self renderConfig];
          v66 = [v65 colorAdaptiveBackground];

          if (v66 && ([v61 localizationKey], v67 = objc_claimAutoreleasedReturnValue(), v68 = -[UIKeyboardLayoutStar shouldHideKeyName:](self, "shouldHideKeyName:", v67), v67, v68))
          {
            v80 = 0;
            [v63 _getIconLabel:&v80 secondaryIconLabel:0 artwork:0];
            v64 = v80;
          }

          else
          {
            v64 = 0;
          }
        }

        if ([v64 length])
        {
          [v61 setDisplayString:@" "];
          v105 = v64;
          v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
          v70 = v69;
          goto LABEL_68;
        }

        v70 = [v61 localizationKey];
        if (v70)
        {
          if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:v70])
          {
            [v61 setDisplayString:@" "];
            v69 = 0;
            goto LABEL_68;
          }

          v71 = v70;
        }

        else
        {
          v78 = [v61 displayString];
          if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:?])
          {
            [v61 setDisplayString:@" "];
            goto LABEL_80;
          }

          v71 = [v61 displayString];
          obj = v71;
        }

        v72 = UIKeyboardLocalizedString(v71, 0, 0, 0);
        [v61 setDisplayString:v72];

        if (v70)
        {
          v69 = 0;
          v56 = v77;
          goto LABEL_68;
        }

        v56 = v77;
LABEL_80:

        v69 = 0;
        v70 = 0;
LABEL_68:
        [v61 setSecondaryDisplayStrings:v69];

        ++v60;
      }

      while (v58 != v60);
      v73 = [v56 countByEnumeratingWithState:&v81 objects:v106 count:16];
      v58 = v73;
      if (!v73)
      {
LABEL_82:

        break;
      }
    }
  }
}

- (void)updateLocalizedKeys:(BOOL)a3
{
  if (self->_keyplaneName)
  {
    v3 = a3;
    keyplane = self->_keyplane;
    if (keyplane)
    {
      [(UIKeyboardLayoutStar *)self updateLocalizedKeysForKeyplane:keyplane updateAllKeyplanes:v3];
    }
  }
}

- (void)updateLocalizedKeysForKeyplane:(id)a3 updateAllKeyplanes:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = UIKeyboardGetCurrentInputMode();
  v8 = [MEMORY[0x1E695DF58] preferredLocale];
  v9 = [v8 localeIdentifier];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v6 name];
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  v13 = [v10 stringWithFormat:@"%@^%@^%@^%d", v7, v9, v11, v12];

  if (v13 == self->_localizedInputKey)
  {
    v14 = 0;
  }

  else
  {
    v14 = [(NSString *)v13 isEqual:?]^ 1;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (!v4)
  {
    [(UIKeyboardLayoutStar *)self updateLocalizedKeysOnKeyplane:v6];
    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    [(UIKeyboardLayoutStar *)self setLocalizedInputKey:v13];
    goto LABEL_18;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [(UIKBTree *)self->_keyboard subtrees];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(UIKeyboardLayoutStar *)self updateLocalizedKeysOnKeyplane:*(*(&v20 + 1) + 8 * i)];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)rebuildSplitTransitionView
{
  if (![(UIKeyboardLayoutStar *)self useCrescendoLayout]&& !self->_isRebuilding)
  {
    v3 = [(UIKBTree *)self->_keyplane name];
    v4 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:v3];
    v15 = [(UIKeyboardLayoutStar *)self keyplaneNamed:v4];

    v5 = [(UIKBTree *)self->_keyplane name];
    v6 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:v5];
    v7 = [(UIKeyboardLayoutStar *)self keyplaneNamed:v6];

    if (v15 | v7 && ![(UIKeyboardLayoutStar *)self isRotating]&& self->_transitionView)
    {
      v8 = [(UIKeyboardLayout *)self orientation];
      v9 = v15;
      v10 = v9;
      if ([v9 looksLikeShiftAlternate])
      {
        v10 = v9;
        if ([v9 isShiftKeyplane])
        {
          keyboard = self->_keyboard;
          v12 = [v9 shiftAlternateKeyplaneName];
          v10 = [(UIKBTree *)keyboard subtreeWithName:v12];
        }
      }

      if (![v10 visualStyle])
      {
        [v10 setVisualStyle:{-[UIKBTree visualStyle](self->_keyboard, "visualStyle")}];
      }

      v13 = [(UIKeyboardLayoutStar *)self cacheTokenForKeyplane:v9 caseAlternates:0];
      v14 = [(UIKeyboardLayoutStar *)self cacheTokenForKeyplane:v7 caseAlternates:0];
      if (!self->_isRebuilding)
      {
        self->_isRebuilding = 1;
        [(UIKeyboardLayoutStar *)self showSplitTransitionView:0];
        self->_splitTransitionNeedsRebuild = 0;
        [(UIKeyboardSplitTransitionView *)self->_transitionView rebuildFromKeyplane:v10 toKeyplane:v7 startToken:v13 endToken:v14 keyboardType:[(UITextInputTraits *)self->super._inputTraits keyboardType] orientation:v8];
        self->_isRebuilding = 0;
      }
    }
  }
}

- (CGImage)cachedCompositeImageWithCacheKey:(id)a3
{
  v25[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:5];
  v7 = [(UIKeyboardLayoutStar *)self renderConfig];
  v8 = [UIKBRenderFactory cacheKeyForString:v5 withRenderFlags:2 renderConfig:v7];
  [v6 addObject:v8];

  v9 = [(UIKeyboardLayoutStar *)self renderConfig];
  v10 = [UIKBRenderFactory cacheKeyForString:v5 withRenderFlags:1 renderConfig:v9];
  [v6 addObject:v10];

  v11 = [(UIKeyboardLayoutStar *)self renderConfig];
  v12 = [UIKBRenderFactory cacheKeyForString:v5 withRenderFlags:3 renderConfig:v11];
  [v6 addObject:v12];

  v13 = [(UIKeyboardLayoutStar *)self renderConfig];
  v14 = [UIKBRenderFactory cacheKeyForString:v5 withRenderFlags:6 renderConfig:v13];
  [v6 addObject:v14];

  v15 = [(UIKeyboardLayoutStar *)self renderConfig];
  v16 = [UIKBRenderFactory cacheKeyForString:v5 withRenderFlags:4 renderConfig:v15];

  [v6 addObject:v16];
  v17 = MEMORY[0x1E696AD98];
  v18 = [(UIKeyboardLayoutStar *)self renderConfig];
  [v18 keycapOpacity];
  v19 = [v17 numberWithDouble:?];
  v25[1] = v19;
  v25[2] = &unk_1EFE312A0;
  v25[3] = &unk_1EFE312A0;
  v25[4] = &unk_1EFE312A0;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];

  v21 = +[UIKeyboardCache sharedInstance];
  v22 = [(UIKBTree *)self->_keyplane layoutName];
  v23 = [v21 cachedCompositeImageForCacheKeys:v6 fromLayout:v22 opacities:v20];

  if (v23)
  {
    CFAutorelease(v23);
  }

  return v23;
}

- (CGImage)renderedImageWithStateFallbacksForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForState:2];
  v6 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v5];
  if (!v6)
  {
    v8 = [v4 stringForState:1];

    v9 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v8];
    if (v9)
    {
      v7 = v9;
      v5 = v8;
      goto LABEL_5;
    }

    v5 = [v4 stringForState:4];

    v6 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v5];
  }

  v7 = v6;
LABEL_5:

  return v7;
}

- (CGImage)renderedImageWithToken:(id)a3
{
  v4 = a3;
  [v4 setStyling:{objc_msgSend(v4, "styling") & 0xFFFFFFFFFFFF00FFLL | ((-[UIKBTree visualStyling](self->_keyplane, "visualStyling") >> 8) << 8)}];
  keyplane = self->_keyplane;
  v6 = [v4 name];
  v7 = [(UIKBTree *)keyplane keysByKeyName:v6];

  if ([v4 emptyFields] >= 2 && (objc_msgSend(v4, "hasKey") & 1) != 0 || objc_msgSend(v4, "emptyFields") == 1 && !objc_msgSend(v7, "count"))
  {
    v10 = [(UIKeyboardLayoutStar *)self renderedImageWithStateFallbacksForToken:v4];
    goto LABEL_22;
  }

  if (![v7 count])
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [v7 objectAtIndex:0];
  if (!v8)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_13;
  }

  v9 = [(UIKeyboardLayoutStar *)self stateForKey:v8];
  if (v9 == 4)
  {
    if ([v8 displayType] != 14)
    {
      v11 = 2;
      goto LABEL_14;
    }

    v9 = 4;
  }

LABEL_13:
  v11 = v9 & 0xFFFFFFFB;
LABEL_14:
  [v8 paddedFrame];
  [v4 setSize:{v12, v13}];
  [v4 resetAnnotations];
  if ([v8 isRightToLeftSensitive])
  {
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 currentLinguisticInputMode];
    [v4 annotateWithBool:{objc_msgSend(v15, "isDefaultRightToLeft")}];
  }

  if ([v8 displayTypeHint] == 10 && objc_msgSend(v8, "displayType") == 7)
  {
    [v4 annotateWithBool:{-[UIKBTree isShiftKeyplane](self->_keyplane, "isShiftKeyplane")}];
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    [v4 annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
  }

  v16 = [v4 stringForKey:v8 state:v11];
  v10 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v16];

LABEL_22:
  return v10;
}

- (CGImage)renderedKeyplaneWithToken:(id)a3 split:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 stringForSplitState:v4 handBias:{-[UIKeyboardLayoutStar currentHandBias](self, "currentHandBias")}];

  v8 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v7];
  return v8;
}

+ (id)sharedRivenKeyplaneGenerator
{
  if (qword_1ED493208 != -1)
  {
    dispatch_once(&qword_1ED493208, &__block_literal_global_363);
  }

  v3 = qword_1ED493200;

  return v3;
}

void __52__UIKeyboardLayoutStar_sharedRivenKeyplaneGenerator__block_invoke()
{
  v0 = objc_alloc_init(UIKBSplitKeyplaneGenerator);
  v1 = qword_1ED493200;
  qword_1ED493200 = v0;
}

- (void)traitCollectionDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self _inheritedRenderConfig];
  if (v3)
  {
    [(UIKeyboardLayoutStar *)self setRenderConfig:v3];
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 candidateController];
    [v5 _setRenderConfig:v3];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_allKeyplaneViews objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 purgeFactory];
        if (v3)
        {
          [v11 setRenderConfig:v3];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
}

- (void)setRenderConfig:(id)a3 updateKeyplane:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIKeyboardLayoutStar *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIKeyboardLayoutStar *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(UIKeyboardLayoutStar *)self delegate];
      v12 = [v11 keyboardLayout:self willChangeRenderConfig:v6];

      v6 = v12;
    }
  }

  if (![(UIKBRenderConfig *)self->_renderConfig isEqual:v6])
  {
    if (v4)
    {
      v13 = [(UIKBRenderConfig *)self->_renderConfig lightKeyboard];
      v14 = v13 ^ [(UIKBRenderConfig *)v6 lightKeyboard];
    }

    else
    {
      v14 = 0;
    }

    if ([(UIKBRenderConfig *)v6 usesCompactKeycapsFont]&& [(UIKBTree *)self->_keyplane isKanaKeyboard])
    {
      [(UIKBRenderConfig *)v6 setUsesCompactKeycapsFont:0];
      v15 = [(UIKBRenderConfig *)self->_renderConfig usesCompactKeycapsFont];
      v14 = v15 ^ [(UIKBRenderConfig *)v6 usesCompactKeycapsFont];
    }

    if (([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 || (passcodeRenderConfig = self->_passcodeRenderConfig) == 0)
    {
      passcodeRenderConfig = v6;
    }

    v17 = passcodeRenderConfig;
    renderConfig = self->_renderConfig;
    self->_renderConfig = v17;

    v19 = +[UIKeyboardImpl activeInstance];
    v20 = [v19 delegateAsResponder];
    v21 = [v20 inputAssistantItem];
    v22 = [v21 _dictationReplacementAction];

    if (((v22 != 0) & v14) != 0 || (v23 = self->_dictationReplacementKeycap, [v22 title], v24 = objc_claimAutoreleasedReturnValue(), LOBYTE(v23) = -[NSString isEqualToString:](v23, "isEqualToString:", v24), v24, (v23 & 1) == 0))
    {
      v25 = [v22 title];
      dictationReplacementKeycap = self->_dictationReplacementKeycap;
      self->_dictationReplacementKeycap = v25;

      [(UIKBRenderConfig *)self->_renderConfig overrideKeycapWithSymbol:self->_dictationReplacementKeycap forDisplayType:4];
      [(UIKBRenderConfig *)self->_renderConfig overrideKeycapWithSymbol:self->_dictationReplacementKeycap forDisplayType:56];
    }

    if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      v27 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
    }

    else
    {
      [(UIKBKeyplaneView *)self->_keyplaneView setRenderConfig:self->_renderConfig];
      v27 = &OBJC_IVAR___UIKeyboardLayoutStar__resizingKeyplaneCoordinator;
      [(UIKBBackgroundView *)self->_backgroundView setRenderConfig:self->_renderConfig];
    }

    [*(&self->super.super.super.super.isa + *v27) setRenderConfig:self->_renderConfig];
    v28 = +[UIInputSwitcherView activeInstance];
    v29 = [v28 isVisible];

    if (v29)
    {
      v30 = +[UIInputSwitcherView activeInstance];
      [v30 setRenderConfig:v6];
    }

    if (v14)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__UIKeyboardLayoutStar_setRenderConfig_updateKeyplane___block_invoke;
      v31[3] = &unk_1E70F3590;
      v31[4] = self;
      [UIView performWithoutAnimation:v31];
    }
  }
}

- (void)didTriggerDestructiveRenderConfigChange
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    liveKeyplaneView = self->_liveKeyplaneView;
    renderConfig = self->_renderConfig;

    [(TUIKeyplaneView *)liveKeyplaneView setRenderConfig:renderConfig];
  }

  else
  {
    [(UIKBKeyplaneView *)self->_keyplaneView purgeFactory];

    [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
  }
}

- (void)setPasscodeOutlineAlpha:(double)a3
{
  passcodeRenderConfig = self->_passcodeRenderConfig;
  if (!passcodeRenderConfig)
  {
    v6 = +[UIKBRenderConfig darkConfig];
    v7 = [v6 copy];
    v8 = self->_passcodeRenderConfig;
    self->_passcodeRenderConfig = v7;

    passcodeRenderConfig = self->_passcodeRenderConfig;
  }

  [(UIKBRenderConfig *)passcodeRenderConfig setKeycapOpacity:a3 * 0.5];
  if (([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) == 0x7F00)
  {
    objc_storeStrong(&self->_renderConfig, self->_passcodeRenderConfig);
    if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      liveKeyplaneView = self->_liveKeyplaneView;
      renderConfig = self->_renderConfig;
    }

    else
    {
      [(UIKBKeyplaneView *)self->_keyplaneView setRenderConfig:self->_renderConfig];
      renderConfig = self->_renderConfig;
      liveKeyplaneView = self->_backgroundView;
    }

    [liveKeyplaneView setRenderConfig:renderConfig];
  }
}

- (void)willBeginIndirectSelectionGesture:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 willBeginIndirectSelectionGesture];
  [(UIKeyboardLayoutStar *)self setTrackpadMode:1 animated:v3];
}

- (void)cancelTouchesForTwoFingerTapGesture:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v4 cancelTouchesForTwoFingerTapGesture:a3];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:1 clearingDimming:1];
}

- (void)didEndIndirectSelectionGesture:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 didEndIndirectSelectionGesture];
  [(UIKeyboardLayoutStar *)self setTrackpadMode:0 animated:v3];
}

- (void)setTrackpadMode:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v32[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    self->_isTrackpadMode = 0;
    v14 = +[UIKeyboard activeKeyboard];
    [v14 setTypingEnabled:1];

    LOBYTE(v14) = [(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord];
    v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v16 = [v15 preferencesActions];
    if (([v16 BOOLForPreferenceKey:@"GesturesEnabled"] | v14))
    {
      v17 = 0.25;
    }

    else
    {
      v17 = 1.0;
    }

    v28[0] = &unk_1EFE2E728;
    v27[0] = &unk_1EFE312D0;
    v27[1] = &unk_1EFE312E8;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v28[1] = v12;
    v27[2] = &unk_1EFE31288;
    v18 = MEMORY[0x1E696AD98];
    v19 = [(UIKeyboardLayoutStar *)self renderConfig];
    [v19 lightKeycapOpacity];
    v20 = [v18 numberWithDouble:?];
    v28[2] = v20;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

    goto LABEL_11;
  }

  [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
  self->_isTrackpadMode = a3;
  v7 = +[UIKeyboard activeKeyboard];
  [v7 setTypingEnabled:0];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 clearLanguageIndicator];

  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:1 clearingDimming:0];
  [(UIKeyboardLayoutStar *)self clearHandwritingStrokesIfNeededAndNotify:1];
  v9 = [(UIKeyboardLayoutStar *)self renderConfig];
  if ([v9 lightKeyboard])
  {
    v10 = 0.5;
  }

  else
  {
    v10 = 0.6;
  }

  v32[0] = &unk_1EFE2E708;
  v31[0] = &unk_1EFE312B8;
  v31[1] = &unk_1EFE31288;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v32[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

  if ([(UIKeyboardLayoutStar *)self isEmojiKeyplane])
  {
    v29[0] = &unk_1EFE312B8;
    v29[1] = &unk_1EFE31288;
    v30[0] = &unk_1EFE2E718;
    v30[1] = &unk_1EFE2E718;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
LABEL_11:

    v12 = v13;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__UIKeyboardLayoutStar_setTrackpadMode_animated___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v21 = v12;
  v26 = v21;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (v4)
  {
    [UIView animateWithDuration:50331648 delay:v22 options:0 animations:0.2 completion:0.0];
    if (a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(v22 + 2))(v22);
  if (!a3)
  {
LABEL_16:
    v24 = +[UIKeyboardImpl activeInstance];
    [v24 updateKeyboardConfigurations];

    [(UIKeyboardLayoutStar *)self clearContinuousPathView];
  }

LABEL_17:
}

void __49__UIKeyboardLayoutStar_setTrackpadMode_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) useCrescendoLayout];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v5 = *(v4 + 1448);
  }

  else
  {
    [*(v4 + 688) dimKeys:v3];
    v3 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 1344);
  }

  [v5 dimKeys:v3];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 usesCandidateSelection];

  if (v7)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    v8 = [v9 candidateController];
    [v8 dimKeys:*(a1 + 40)];
  }
}

- (void)updateBackgroundCorners
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
  {

    [(UIKeyboardLayoutStar *)self updateBackgroundIfNeeded];
  }
}

- (void)updateBackgroundIfNeeded
{
  v3 = [(UIView *)self->_keyplaneView superview];
  if (v3 && (v4 = v3, v5 = [(UIKBScreenTraits *)self->super._screenTraits idiom], v4, v5 != 2))
  {
    if (!self->_backgroundView)
    {
      v7 = [UIKBBackgroundView alloc];
      [(UIView *)self bounds];
      v8 = [(UIKBBackgroundView *)v7 initWithFrame:?];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v8;
    }

    [(UIView *)self->_backgroundView setHidden:[(UIKeyboardLayoutStar *)self isEmojiKeyplane]];
    [(UIView *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
    [(UIKBBackgroundView *)self->_backgroundView setScreenTraits:self->super._screenTraits];
    v10 = [(UIKeyboardLayoutStar *)self renderConfig];
    [(UIKBBackgroundView *)self->_backgroundView setRenderConfig:v10];

    [(UIKBBackgroundView *)self->_backgroundView refreshStyleForKeyplane:self->_keyplane inputTraits:self->super._inputTraits];
    if (![(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected])
    {
      [(UIView *)self->_backgroundView setHidden:0];
    }

    [(UIView *)self setOpaque:0];
  }

  else
  {
    v6 = self->_backgroundView;

    [(UIView *)v6 setHidden:1];
  }
}

void __46__UIKeyboardLayoutStar_shouldShowDictationKey__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 656);
  if (v2)
  {
    v8 = v2;
    v3 = +[UIDictationController fetchCurrentInputModeSupportsDictation];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 refreshForDictationAvailablityDidChange];
    }

    else
    {
      [v4 setKeyplaneName:0];
      [*(a1 + 32) setKeyplaneName:v8];
      v5 = [*(a1 + 32) candidateList];
      v6 = objc_opt_respondsToSelector();

      v2 = v8;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = +[UIKeyboardImpl activeInstance];
      [v7 generateCandidates];
    }

    v2 = v8;
  }

LABEL_7:
  *(*(a1 + 32) + 1312) = 0;
}

- (BOOL)isResized
{
  [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator resizingOffset];
  if (v3 == 0.0)
  {
    return 0;
  }

  return [(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset];
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v10 = +[UIKeyboardImpl keyboardScreen];
  v11 = [v10 _userInterfaceIdiom];

  if (v11 != 3)
  {
    v31.receiver = self;
    v31.super_class = UIKeyboardLayoutStar;
    if ([(UIKeyboardLayout *)&v31 shouldAllowSelectionGestures:v8 atPoint:v5 toBegin:x, y])
    {
      if ([(UIView *)self isUserInteractionEnabled])
      {
        if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
        {
          v12 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
          v13 = [v12 objectAtIndex:0];

          v14 = [(UIKeyboardLayoutStar *)self viewForKey:v13];
          if ((v8 || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) && ([v14 numberOfStrokes] > v5 || !objc_msgSend(v14, "shouldAllowSelectionGestures:", v8)))
          {

LABEL_42:
            v27 = 0;
LABEL_43:

            return v27;
          }
        }

        v15 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:x, y];
        v13 = v15;
        if (!v8)
        {
          if ([v15 interactionType] == 14 || objc_msgSend(v13, "interactionType") == 11 || objc_msgSend(v13, "interactionType") == 4 || objc_msgSend(v13, "interactionType") == 10 || objc_msgSend(v13, "interactionType") == 9 || objc_msgSend(v13, "interactionType") == 5 || objc_msgSend(v13, "interactionType") == 44 || objc_msgSend(v13, "displayType") == 27)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        v16 = [(UIKeyboardLayoutStar *)self activeKey];
        if (v16)
        {
          v17 = v16;
          v18 = [(UIKeyboardLayoutStar *)self activeKey];
          if ([v18 interactionType] == 1)
          {
LABEL_15:

            goto LABEL_16;
          }

          v19 = [(UIKeyboardLayoutStar *)self activeKey];
          if ([v19 interactionType] == 2)
          {

            goto LABEL_15;
          }

          v29 = [(UIKeyboardLayoutStar *)self activeKey];
          v30 = [v29 interactionType];

          if (v30 == 16)
          {
LABEL_16:
            v20 = [(UIKeyboardLayoutStar *)self activeKey];
            v21 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v20];

            v22 = [(UIKeyboardLayoutStar *)self activeKey];
            if ([v22 state] == 16)
            {
              v23 = [(UIKeyboardLayoutStar *)self activeKey];
              v24 = [v23 selectedVariantIndex];
              v25 = [(UIKeyboardLayoutStar *)self activeKey];
              v26 = [(UIKeyboardLayoutStar *)self defaultSelectedVariantIndexForKey:v25 withActions:v21];

              if (v24 != v26)
              {
                goto LABEL_42;
              }
            }

            else
            {
            }
          }
        }

        if ([v13 interactionType] == 14 || objc_msgSend(v13, "interactionType") == 11 || objc_msgSend(v13, "interactionType") == 4 || objc_msgSend(v13, "interactionType") == 10 || objc_msgSend(v13, "interactionType") == 5 || objc_msgSend(v13, "interactionType") == 9 || objc_msgSend(v13, "interactionType") == 44 || objc_msgSend(v13, "displayType") == 27 || -[UIKeyboardLayoutStar hasActiveContinuousPathInput](self, "hasActiveContinuousPathInput"))
        {
          goto LABEL_42;
        }

LABEL_44:
        v27 = 1;
        goto LABEL_43;
      }
    }
  }

  return 0;
}

uint64_t __66__UIKeyboardLayoutStar_showsDedicatedEmojiKeyAlongsideGlobeButton__block_invoke()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = [v0 isEqualToString:@"emoji"];

  return v1;
}

- (BOOL)stretchKeyboardToFitKeyplane:(id)a3
{
  v4 = a3;
  [(UIKBTree *)self->_keyboard frame];
  v6 = v5;
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  if (v6 == v7 || -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 1 && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") == 127 || -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 2 || [v4 isSplit] && (objc_msgSend(v4, "isGenerated") & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(UIKeyboardLayoutStar *)self _shouldAttemptToAddSupplementaryControlKeys];
  }

  return v8;
}

- (BOOL)_allowStartingContinuousPathForTouchInfo:(id)a3 alreadyActiveKeyExisting:(BOOL)a4
{
  v6 = a3;
  [v6 initialDragPoint];
  v8 = v7;
  v10 = v9;
  v11 = [v6 key];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (([v11 allowsStartingContinuousPath] & 1) != 0 || (v20 = 0, objc_msgSend(v11, "allowsDelayedTapForContinuousPathDisambiguation")) && !a4)
  {
    if ([v11 allowsDelayedTapForContinuousPathDisambiguation])
    {
      [v6 setDelayed:1];
    }

    if ([v11 interactionType] == 15 && (-[UIKeyboardLayout sizeDelegate](self, "sizeDelegate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = -[UIKeyboardLayout orientation](self, "orientation"), +[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "currentInputMode"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "deviceSpecificPaddingForInterfaceOrientation:inputMode:", v22, v24), v26 = v25, v24, v23, v21, v26 == 0.0))
    {
      v30.origin.x = v13;
      v30.origin.y = v15;
      v30.size.width = v17;
      v30.size.height = v19;
      Width = CGRectGetWidth(v30);
      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      v32.size.height = CGRectGetHeight(v31) * 0.7;
      v32.origin.x = v13;
      v32.origin.y = v15;
      v32.size.width = Width;
      v29.x = v8;
      v29.y = v10;
      v20 = CGRectContainsPoint(v32, v29);
    }

    else
    {
      v20 = 1;
    }
  }

  return v20;
}

- (BOOL)shouldIgnoreContinuousPathRequirements
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputManagerState];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 inputManagerState];
  v7 = [v6 performSelector:sel_ignoreContinuousPathRequirements] != 0;

  return v7;
}

- (BOOL)_allowContinuousPathUI
{
  v3 = ([(UIKeyboardLayoutStar *)self isAlphabeticPlane]|| [(UIKeyboardLayoutStar *)self supportsContinuousPath]) && ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 && [(UIKeyboardLayout *)self isFloating]|| ![(UIKBScreenTraits *)self->super._screenTraits idiom]|| [(UIKBScreenTraits *)self->super._screenTraits idiom]== 4);
  v4 = +[UIKeyboardImpl activeInstance];
  if ([v4 usesContinuousPath])
  {
    v5 = ![(UITextInputTraits *)self->super._inputTraits isSecureTextEntry]&& v3;

    if (v5)
    {
      v6 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([(UIKeyboardLayoutStar *)self shouldIgnoreContinuousPathRequirements])
  {
    v6 = [(UIKeyboardLayoutStar *)self isAlphabeticPlane];
  }

  else
  {
    v6 = 0;
  }

LABEL_16:
  v7 = +[UIKeyboardImpl activeInstance];
  [v7 setLayoutAllowsContinuousPath:v6];

  return v6;
}

- (void)reloadCurrentKeyplane
{
  v3 = [(NSString *)self->_keyplaneName copy];
  if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    [(UIKeyboardLayoutStar *)self setKeyplaneName:0];
  }

  [(UIKeyboardLayoutStar *)self setKeyplaneName:v3];
}

- (void)createLayoutFromName:(id)a3
{
  v190 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    keyplaneView = self->_keyplaneView;
    if (keyplaneView)
    {
      [(UIKBKeyplaneView *)keyplaneView removeFromSuperview];
      v6 = self->_keyplaneView;
      self->_keyplaneView = 0;
    }

    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(UIView *)backgroundView removeFromSuperview];
      v8 = self->_backgroundView;
      self->_backgroundView = 0;
    }

    v9 = +[UIKeyboardImpl activeInstance];
    v176 = [(UIKeyboardLayoutStar *)self _allowPaddle];
    [_UIKeyboardUsageTracking showCharacterPreviewPreference:?];
    if (self->_lastInputIsGestureKey)
    {
      +[_UIKeyboardUsageTracking panAlternateKeyFlickDownCount];
      self->_lastInputIsGestureKey = 0;
    }

    self->_dictationUsingServerManualEndpointing = 0;
    v10 = 0;
    if (UIKeyboardDeviceSupportsSplit())
    {
      v10 = [(NSString *)v4 hasSuffix:@"split"];
    }

    v11 = [(UIKBTree *)self->_keyplane isFloating];
    if (v11 == [(UIKeyboardLayout *)self isFloating])
    {
      keyplaneName = self->_keyplaneName;
      if (keyplaneName == v4 || v4 && keyplaneName && [(NSString *)keyplaneName caseInsensitiveCompare:v4]== NSOrderedSame)
      {
        inputTraits = self->super._inputTraits;
        v14 = [v9 textInputTraits];
        if ([(UITextInputTraits *)inputTraits publicTraitsMatchTraits:v14]&& [(UIKeyboardLayoutStar *)self canReuseKeyplaneView]&& [(UIKeyboardLayoutStar *)self shouldAllowCurrentKeyplaneReload])
        {
          [(UIView *)self bounds];
          v16 = v15;
          v18 = v17;
          [(TUIKeyplaneView *)self->_liveKeyplaneView bounds];
          v20 = v19;
          v22 = v21;

          if (v16 == v20 && v18 == v22)
          {
            [v9 setShouldSkipCandidateSelection:{-[UIKBTree shouldSkipCandidateSelection](self->_keyplane, "shouldSkipCandidateSelection")}];
            [v9 updateReturnKey:0];
            [(UIKeyboardLayoutStar *)self updateKeyCentroids];
            v23 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            [v23 setAllowsPaddles:v176];

            v24 = [(UIKeyboardLayoutStar *)self keyplaneShiftState];
            v25 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            v26 = [v25 renderingContext];
            [v26 setShiftState:v24];

            v27 = UIKeyboardGetCurrentInputMode();
            v28 = UIKeyboardUIPreferStringOverImageForInputMode(v27);
            v29 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            [v29 setPreferStringKeycapOverImage:v28];

            [(TUIKeyplaneView *)self->_liveKeyplaneView prepareForDisplay];
            if ((v10 & UIKeyboardDeviceSupportsSplit()) == 1)
            {
              v185[0] = MEMORY[0x1E69E9820];
              v185[1] = 3221225472;
              v185[2] = __45__UIKeyboardLayoutStar_createLayoutFromName___block_invoke;
              v185[3] = &unk_1E70F3590;
              v185[4] = self;
              [UIView performWithoutAnimation:v185];
            }

            v30 = [(UIView *)self superview];

            if (!v30)
            {
              goto LABEL_112;
            }

            [(UIView *)self bounds];
            v33 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v31, v32];
            [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v33];
LABEL_111:

LABEL_112:
            goto LABEL_113;
          }
        }

        else
        {
        }
      }
    }

    v171 = v10;
    self->_externalDictationAndInternationalKeys = [(UIKeyboardLayoutStar *)self showsGlobeAndDictationKeysInDockView];
    v168 = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
    self->_inputTraitsPreventInitialReuse = 0;
    [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:0 clearingDimming:1];
    v33 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:v4];
    v36 = [(UIKBTree *)self->_keyboard subtreeWithName:v33];
    v37 = v36;
    if (!v36)
    {
      v54 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
      [v54 setDisabled:0];

      [(TUIKeyplaneView *)self->_liveKeyplaneView removeFromSuperview];
      liveKeyplaneView = self->_liveKeyplaneView;
      self->_liveKeyplaneView = 0;

      v56 = self->_keyplaneName;
      self->_keyplaneName = 0;

      keyplane = self->_keyplane;
      self->_keyplane = 0;

LABEL_110:
      goto LABEL_111;
    }

    v167 = v33;
    v38 = [v36 gestureKeyplaneName];
    v177 = v37;
    v169 = v4;
    v175 = v9;
    if (v38)
    {
      v39 = v38;
      if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
      {

        goto LABEL_35;
      }

      v145 = [(UIKBScreenTraits *)self->super._screenTraits idiom];

      if (v145 == 23)
      {
LABEL_35:
        keyboard = self->_keyboard;
        v41 = [v37 gestureKeyplaneName];
        v42 = [(UIKBTree *)keyboard subtreeWithName:v41];

        [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v42];
        [(UIKeyboardLayoutStar *)self setPercentSignKeysForCurrentLocaleOnKeyplane:v42];
        v43 = [(UIKeyboardLayoutStar *)self layoutTag];
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v44 = [v42 cachedKeysByKeyName:@"Adaptive-Key"];
        v45 = [v44 countByEnumeratingWithState:&v181 objects:v189 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v182;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v182 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v181 + 1) + 8 * i);
              v180[0] = MEMORY[0x1E69E9820];
              v180[1] = 3221225472;
              v180[2] = __45__UIKeyboardLayoutStar_createLayoutFromName___block_invoke_2;
              v180[3] = &unk_1E7114858;
              v180[4] = self;
              [v49 setLayoutTag:v43 passingKeyTest:v180];
            }

            v46 = [v44 countByEnumeratingWithState:&v181 objects:v189 count:16];
          }

          while (v46);
        }

        [(UIKeyboardLayoutStar *)self updateAutolocalizedKeysForKeyplane:v42];
        v50 = [v42 subtrees];
        v51 = [v50 firstObject];

        v52 = [v177 subtrees];
        v53 = [v52 firstObject];

        [v53 setCachedGestureLayout:v51];
        if ([v177 intForProperty:@"shift-rendering"] == 31)
        {
          v4 = v169;
LABEL_50:
          v61 = self->_keyplane;
          v62 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
          [(UIKBTree *)v61 applyDynamicAttributes:1 layoutInfo:v62];

          v37 = v177;
          goto LABEL_51;
        }

        v58 = [v177 subtrees];
        v4 = v169;
        if ([v58 count] <= 1)
        {
        }

        else
        {
          v59 = [v177 subtrees];
          v60 = [v59 objectAtIndexedSubscript:1];

          if (v60)
          {
            [v60 setCachedGestureLayout:v51];
            v53 = v60;
            goto LABEL_50;
          }
        }

        v53 = 0;
        goto LABEL_50;
      }
    }

LABEL_51:
    v63 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Shift-Key"];
    [v63 behavesAsShiftKey];

    v64 = self->_keyboard;
    v65 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
    [(UIKBTree *)v64 subtreeWithName:v65];

    v66 = [v37 firstCachedKeyWithName:@"Shift-Key"];
    [v66 behavesAsShiftKey];

    v67 = [(NSString *)v4 copy];
    v68 = self->_keyplaneName;
    self->_keyplaneName = v67;

    objc_storeStrong(&self->_keyplane, v37);
    [(UIKeyboardLayoutStar *)self rollbackKeyplaneTransformations];
    [(UIKeyboardLayoutStar *)self transitionToModalContinuousPathKeyplane];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
    {
      [v37 setVisualStyling:{objc_msgSend(v37, "visualStyling") & 0xFFFFFFFFFFFFFFC0 | 3}];
    }

    [v37 setVisualStyle:{-[UIKBTree visualStyle](self->_keyboard, "visualStyle")}];
    [v37 cacheNativeIdiomIfNecessaryForScreenTraits:self->super._screenTraits];
    v69 = [(UIKBTree *)self->_keyboard layoutName];
    [v37 precacheLayoutName:v69];

    v70 = self->_keyplane;
    v71 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
    [(UIKBTree *)v70 applyDynamicAttributes:0 layoutInfo:v71];

    v72 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
    if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && ([(UIKeyboardLayout *)self orientation]- 3) >= 2 && ![(UIKBScreenTraits *)self->super._screenTraits idiom])
    {
      v72 = 0;
    }

    [(UIKBTree *)self->_keyplane updateKeysForType:v72];
    v73 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-Dictation"];

      if (!v74)
      {
LABEL_62:
        v77 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
        v78 = v77;
        if (v77)
        {
          v79 = v77;
        }

        else
        {
          v79 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-International"];
        }

        [v74 setVisible:{-[UIKeyboardLayoutStar shouldMergeKey:](self, "shouldMergeKey:", v74) ^ 1}];
        v174 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-International"];
        if ([v9 isNumberpadPopoverPresented] && v79)
        {
          v80 = v174;
          v81 = 0;
        }

        else
        {
          v81 = ![(UIKeyboardLayoutStar *)self shouldMergeKey:v79]&& +[UIKeyboardImpl canShowInternationalKey];
          v80 = v79;
        }

        [v80 setVisible:v81];
        v82 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-Empty"];
        v170 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"NumberPad-Dot"];
        v172 = v82;
        if (v82 && (([v74 visible] & 1) != 0 || (objc_msgSend(v79, "visible") & 1) != 0 || v170))
        {
          [v82 setVisible:0];
        }

        v83 = [(UIKBTree *)self->_keyplane scriptSwitchKey];
        v84 = v83;
        if (v83)
        {
          v85 = v83;
          if ([(UIKeyboardLayout *)self isFloating])
          {
            v86 = 0;
          }

          else
          {
            v87 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
            v86 = v87 != 0;
          }

          v88 = v86;
          v84 = v85;
          [v85 setVisible:v88];
        }

        v89 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
        v165 = v84;
        if (v84)
        {
          v90 = [v84 visible] ^ 1;
        }

        else
        {
          v90 = 1;
        }

        [v89 setVisible:v90];
        v173 = [(UIKeyboardLayoutStar *)self cacheTokenForKeyplane:self->_keyplane caseAlternates:0];
        [v173 setTransformationIdentifiers:self->_keyplaneTransformations];
        v163 = [(UIKeyboardLayoutStar *)self defaultKeyplaneForKeyplane:self->_keyplane];
        v162 = [UIKeyboardLayoutStar cacheTokenForKeyplane:"cacheTokenForKeyplane:caseAlternates:" caseAlternates:?];
        v91 = [(UIKeyboardLayoutStar *)self renderConfig];
        v92 = [UIKBRenderingContext renderingContextForRenderConfig:v91];

        [v92 setKeyboardType:v72];
        [v92 setShiftState:{-[UIKeyboardLayoutStar keyplaneShiftState](self, "keyplaneShiftState")}];
        v178 = v92;
        [v92 setHandBias:{-[UIKeyboardLayoutStar currentHandBias](self, "currentHandBias")}];
        if ([(UIKeyboardLayoutStar *)self _shouldSwapGlobeAndMore])
        {
          v93 = [(UIKBTree *)self->_keyplane subtreeWithType:3];
          v188[0] = @"More-Key";
          v188[1] = @"International-Key";
          v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
          [v93 swapToggleKeys:v94];
        }

        if ([(UIKeyboardLayout *)self isFloating])
        {
          [v178 setIsFloating:1];
          [(UIKBTree *)self->_keyplane setIsFloating:1];
        }

        v166 = v79;
        if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
        {
          [v173 annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
        }

        v95 = objc_autoreleasePoolPush();
        [(UIKeyboardLayoutStar *)self updateLocalizedKeys:0];
        v96 = [(UIKeyboardLayoutStar *)self delegate];
        if (v96)
        {
          v97 = v96;
          v98 = [(UIKeyboardLayoutStar *)self delegate];
          v99 = objc_opt_respondsToSelector();

          if (v99)
          {
            v100 = [(UIKeyboardLayoutStar *)self delegate];
            [v100 keyboardLayout:self didSwitchToKeyplane:self->_keyplane];
          }
        }

        v164 = v89;
        objc_autoreleasePoolPop(v95);
        if (!self->_liveKeyplaneView)
        {
          v101 = objc_alloc(getTUIKeyplaneViewClass());
          [(UIView *)self bounds];
          v102 = [v101 initWithFrame:self->_keyplane keyplane:?];
          [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
          objc_storeStrong(&self->_liveKeyplaneView, v102);
          liveKeyplaneConstraints = self->_liveKeyplaneConstraints;
          self->_liveKeyplaneConstraints = 0;
        }

        self->_layoutCanAnimate = objc_opt_respondsToSelector() & 1;
        v104 = [(TUIKeyplaneView *)self->_liveKeyplaneView superview];

        v105 = 0x1E6997000uLL;
        if (v104 != self)
        {
          [(UIView *)self insertSubview:self->_liveKeyplaneView atIndex:0];
          v150 = MEMORY[0x1E69977A0];
          v160 = [(TUIKeyplaneView *)self->_liveKeyplaneView topAnchor];
          v158 = [(UIView *)self topAnchor];
          v156 = [v160 constraintEqualToAnchor:v158];
          v187[0] = v156;
          v154 = [(TUIKeyplaneView *)self->_liveKeyplaneView leadingAnchor];
          v152 = [(UIView *)self leadingAnchor];
          v106 = [v154 constraintEqualToAnchor:v152];
          v187[1] = v106;
          v107 = [(UIView *)self bottomAnchor];
          v108 = [(TUIKeyplaneView *)self->_liveKeyplaneView bottomAnchor];
          v109 = [v107 constraintEqualToAnchor:v108];
          v187[2] = v109;
          v110 = [(UIView *)self trailingAnchor];
          v111 = [(TUIKeyplaneView *)self->_liveKeyplaneView trailingAnchor];
          v112 = [v110 constraintEqualToAnchor:v111];
          v187[3] = v112;
          v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:4];
          [v150 activateConstraints:v113];

          v4 = v169;
          v105 = 0x1E6997000;

          v9 = v175;
        }

        if (!self->_liveKeyplaneConstraints)
        {
          v159 = [(UIView *)self topAnchor];
          v161 = [(UIView *)self superview];
          v157 = [v161 topAnchor];
          v155 = [v159 constraintEqualToAnchor:v157];
          v186[0] = v155;
          v151 = [(UIView *)self leadingAnchor];
          v153 = [(UIView *)self superview];
          v149 = [v153 leadingAnchor];
          v148 = [v151 constraintEqualToAnchor:v149];
          v186[1] = v148;
          v147 = [(UIView *)self superview];
          v146 = [v147 bottomAnchor];
          v114 = [(UIView *)self bottomAnchor];
          v115 = [v146 constraintEqualToAnchor:v114];
          v186[2] = v115;
          v116 = [(UIView *)self superview];
          v117 = [v116 trailingAnchor];
          v118 = [(UIView *)self trailingAnchor];
          [v117 constraintEqualToAnchor:v118];
          v120 = v119 = v4;
          v186[3] = v120;
          v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];
          v122 = self->_liveKeyplaneConstraints;
          self->_liveKeyplaneConstraints = v121;

          v4 = v119;
          v9 = v175;

          v105 = 0x1E6997000uLL;
        }

        [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
        [*(v105 + 1952) activateConstraints:self->_liveKeyplaneConstraints];
        v123 = [(TUIKeyplaneView *)self->_liveKeyplaneView isSplit];
        v124 = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
        [(TUIKeyplaneView *)self->_liveKeyplaneView setRenderingContext:v178];
        v125 = self->_liveKeyplaneView;
        v126 = [(UIKeyboardLayoutStar *)self renderConfig];
        [(TUIKeyplaneView *)v125 setRenderConfig:v126];

        [(TUIKeyplaneView *)self->_liveKeyplaneView setOverrideScreenTraits:self->super._screenTraits];
        v127 = [(UIKBScreenTraits *)self->super._screenTraits screen];
        [v127 scale];
        v129 = v128;
        v130 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [v130 setScale:v129];

        v131 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [v131 setAllowsPaddles:v176];

        v132 = UIKeyboardGetCurrentInputMode();
        v133 = UIKeyboardUIPreferStringOverImageForInputMode(v132);
        v134 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [v134 setPreferStringKeycapOverImage:v133];

        [(TUIKeyplaneView *)self->_liveKeyplaneView setKeyplane:self->_keyplane];
        [(TUIKeyplaneView *)self->_liveKeyplaneView setNeedsDisplay];
        if (UIKeyboardDeviceSupportsSplit() && v171 | v123 ^ v124)
        {
          v135 = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
          v136 = 0.0;
          if (v135)
          {
            v136 = 1.0;
          }

          self->_finalSplitProgress = v136;
          self->_initialSplitProgress = v136;
          v179[0] = MEMORY[0x1E69E9820];
          v179[1] = 3221225472;
          v179[2] = __45__UIKeyboardLayoutStar_createLayoutFromName___block_invoke_3;
          v179[3] = &unk_1E70F3590;
          v179[4] = self;
          [UIView performWithoutAnimation:v179];
        }

        v37 = v177;
        [(UIKeyboardLayoutStar *)self updateKeyboardForKeyplane:v177];
        [(TUIKeyplaneView *)self->_liveKeyplaneView bounds];
        v139 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v137, v138];
        [v139 setSplitWidthsChanged:1];
        [v139 setUpdateAssistantView:1];
        [v139 setIsDynamicLayout:1];
        v140 = (self->_setKeyplaneViewCount + 1) % 100;
        self->_setKeyplaneViewCount = v140;
        [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v139];
        if (v140 == self->_setKeyplaneViewCount)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardAppearance:self->_appearance];
          [(UIKeyboardLayoutStar *)self _setBiasEscapeButtonVisible:0];
          [(UIKeyboardLayoutStar *)self updateAllKeyStates];
          [(UIKeyboardLayoutStar *)self updateLayoutTags];
          [(UIKeyboardLayoutStar *)self updateCachedKeyplaneKeycaps];
          [(UIKeyboardLayoutStar *)self updateGlobeKeyDisplayString];
          [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator updateGestureRecognizers];
          v141 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [v141 reset];

          v142 = [(UIKBTree *)self->_keyplane adaptiveKeys];
          [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:v142];
          v143 = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
          v144 = v74;
          v33 = v167;
          if (v168 != v143)
          {
            [v9 clearShiftState];
          }
        }

        else
        {
          v142 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [v142 setDisabled:0];
          v144 = v74;
          v33 = v167;
        }

        goto LABEL_110;
      }
    }

    v75 = [(UIKBTree *)self->_keyplane name];
    v76 = [v75 hasPrefix:@"Dynamic-Pinyin10"];

    if (v76)
    {

      v74 = 0;
    }

    goto LABEL_62;
  }

  v34 = self->_liveKeyplaneView;
  if (v34)
  {
    [(TUIKeyplaneView *)v34 removeFromSuperview];
    v35 = self->_liveKeyplaneView;
    self->_liveKeyplaneView = 0;
  }

  self->_layoutSupportsCrescendo = 0;
LABEL_113:
}

uint64_t __45__UIKeyboardLayoutStar_createLayoutFromName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareForSplitTransition];
  v2 = *(a1 + 32);

  return [v2 finishSplitTransition];
}

uint64_t __45__UIKeyboardLayoutStar_createLayoutFromName___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) prepareForSplitTransition];
  v2 = *(a1 + 32);

  return [v2 finishSplitTransition];
}

- (void)setKeyplaneName:(id)a3
{
  v279 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_isTrackpadMode)
  {
    if (!self->_isContinuousPathUnderway)
    {
      [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    }

    if ([(UIKBTree *)self->_keyboard dynamicLayout])
    {
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v6 = [v5 preferencesActions];
      v7 = [v6 crescendoEnabled];

      if (v7)
      {
        self->_layoutSupportsCrescendo = 1;
        [(UIKeyboardLayoutStar *)self createLayoutFromName:v4];
        goto LABEL_213;
      }
    }

    self->_layoutSupportsCrescendo = 0;
    if (self->_liveKeyplaneView)
    {
      [(UIKeyboardLayoutStar *)self flushKeyCache:0];
      [(TUIKeyplaneView *)self->_liveKeyplaneView removeFromSuperview];
      liveKeyplaneView = self->_liveKeyplaneView;
      self->_liveKeyplaneView = 0;

      [MEMORY[0x1E69977A0] deactivateConstraints:self->_liveKeyplaneConstraints];
      [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:1];
    }

    self->_layoutCanAnimate = 0;
    v243 = +[UIKeyboardImpl activeInstance];
    v9 = [(UIKeyboardLayoutStar *)self _allowPaddle];
    [_UIKeyboardUsageTracking showCharacterPreviewPreference:v9];
    if (self->_lastInputIsGestureKey)
    {
      +[_UIKeyboardUsageTracking panAlternateKeyFlickDownCount];
      self->_lastInputIsGestureKey = 0;
    }

    self->_dictationUsingServerManualEndpointing = 0;
    v10 = [(UIKBTree *)self->_keyplane isFloating];
    if (v10 == [(UIKeyboardLayout *)self isFloating])
    {
      keyplaneName = self->_keyplaneName;
      if (keyplaneName == v4 || v4 && keyplaneName && [(NSString *)keyplaneName caseInsensitiveCompare:v4]== NSOrderedSame)
      {
        inputTraits = self->super._inputTraits;
        v13 = [v243 textInputTraits];
        if ([(UITextInputTraits *)inputTraits publicTraitsMatchTraits:v13]&& [(UIKeyboardLayoutStar *)self canReuseKeyplaneView]&& [(UIKeyboardLayoutStar *)self shouldAllowCurrentKeyplaneReload])
        {
          [(UIView *)self bounds];
          v15 = v14;
          v17 = v16;
          [(UIView *)self->_keyplaneView bounds];
          v19 = v18;
          v21 = v20;

          if (v15 == v19 && v17 == v21)
          {
            v22 = v243;
            [v243 setShouldSkipCandidateSelection:{-[UIKBTree shouldSkipCandidateSelection](self->_keyplane, "shouldSkipCandidateSelection")}];
            [v243 updateReturnKey:0];
            [(UIKeyboardLayoutStar *)self updateKeyCentroids];
            v23 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            [v23 setAllowsPaddles:v9];

            v24 = [(UIKeyboardLayoutStar *)self keyplaneShiftState];
            v25 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            v26 = [v25 renderingContext];
            [v26 setShiftState:v24];

            v27 = UIKeyboardGetCurrentInputMode();
            v28 = UIKeyboardUIPreferStringOverImageForInputMode(v27);
            v29 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            [v29 setPreferStringKeycapOverImage:v28];

            v30 = [(UIView *)self superview];

            if (v30)
            {
              [(UIView *)self bounds];
              v33 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v31, v32];
              [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v33];
            }

            [(UIKeyboardLayout *)self updateTouchProcessingForKeyplaneChange];
            goto LABEL_212;
          }
        }

        else
        {
        }
      }
    }

    v238 = v9;
    [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator stopResizing];
    self->_externalDictationAndInternationalKeys = [(UIKeyboardLayoutStar *)self showsGlobeAndDictationKeysInDockView];
    v232 = [(UIKeyboardLayoutStar *)self candidateList];

    v239 = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
    v237 = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
    v231 = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
    self->_inputTraitsPreventInitialReuse = 0;
    v34 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
    [v34 setDisabled:1];

    [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:0 clearingDimming:1];
    [(UIKBKeyplaneView *)self->_keyplaneView purgeKeyViews];
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v35 = [(UIKBTree *)self->_keyplane keys];
    v36 = [v35 countByEnumeratingWithState:&v270 objects:v278 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v271;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v271 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v270 + 1) + 8 * i);
          [v40 setGestureKey:0];
          if ([v40 displayTypeHint] == 10 && objc_msgSend(v40, "displayType") != 7)
          {
            [v40 setSecondaryDisplayStrings:0];
            [v40 setSecondaryRepresentedStrings:0];
          }

          if ([v40 displayType] == 21)
          {
            [v40 setVisible:1];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v270 objects:v278 count:16];
      }

      while (v37);
    }

    v240 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:v4];
    v41 = [(UIKBTree *)self->_keyboard subtreeWithName:?];
    v42 = [v41 gestureKeyplaneName];

    if (!v42)
    {
LABEL_54:
      v61 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Shift-Key"];
      v62 = [v61 behavesAsShiftKey];

      keyboard = self->_keyboard;
      v64 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
      v65 = [(UIKBTree *)keyboard subtreeWithName:v64];

      v66 = [v41 firstCachedKeyWithName:@"Shift-Key"];
      LODWORD(v64) = [v66 behavesAsShiftKey];

      v22 = v243;
      if (v64)
      {
        if (v65 == v41)
        {
          v67 = v62;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      v68 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)self->_keyplane clearManualAddedKey];
      self->_splitTransitionNeedsRebuild = 0;
      if (!v4 || ![(UIKBScreenTraits *)self->super._screenTraits supportsSplit]|| [(UIKBTree *)self->_keyboard visualStyle]- 101 > 8)
      {
        if (!v41)
        {
LABEL_210:
          v225 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [v225 setDisabled:0];

          [(UIKBKeyplaneView *)self->_keyplaneView removeFromSuperview];
          keyplaneView = self->_keyplaneView;
          self->_keyplaneView = 0;

          v227 = self->_keyplaneName;
          self->_keyplaneName = 0;

          keyplane = self->_keyplane;
          self->_keyplane = 0;

          [(UIView *)self->_backgroundView removeFromSuperview];
          backgroundView = self->_backgroundView;
          self->_backgroundView = 0;

          [(UIKeyboardLayout *)self updateTouchProcessingForKeyplaneChange];
          v216 = v240;
          goto LABEL_211;
        }

LABEL_65:
        [(UIKBTree *)self->_keyplane frameForKeylayoutName:?];
        v73 = v72;
        [(UIKBTree *)self->_keyplane frameForKeylayoutName:?];
        v75 = v74;
        [(UIKBTree *)self->_keyplane clearManualAddedKey];
        v76 = [(NSString *)v4 copy];
        v77 = self->_keyplaneName;
        self->_keyplaneName = v76;

        objc_storeStrong(&self->_keyplane, v41);
        [v41 setVisualStyle:{-[UIKBTree visualStyle](self->_keyboard, "visualStyle")}];
        [v41 cacheNativeIdiomIfNecessaryForScreenTraits:self->super._screenTraits];
        v78 = [(UIKBTree *)self->_keyboard layoutName];
        [v41 precacheLayoutName:v78];

        v234 = v67;
        if ([(UIKeyboardLayoutStar *)self canReuseKeyplaneView])
        {
          v230 = [(UIKBKeyplaneView *)self->_keyplaneView validForKeyplane:self->_keyplane withVisualStyle:[(UIKBTree *)self->_keyboard visualStyle]];
        }

        else
        {
          v230 = 0;
        }

        [(UIKeyboardLayoutStar *)self rollbackKeyplaneTransformations];
        v79 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];

        if ([(UIKBScreenTraits *)self->super._screenTraits isInPopover])
        {
          v80 = [(UIKBScreenTraits *)self->super._screenTraits idiom]== 0;
        }

        else
        {
          v80 = 0;
        }

        v245 = v41;
        v242 = v4;
        v235 = v79;
        if ([(UIKeyboardLayout *)self isFloating])
        {
          goto LABEL_72;
        }

        if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
        {
          if (!v80)
          {
LABEL_92:
            [(UIKBScreenTraits *)self->super._screenTraits bounds];
            v116 = v115;
            v117 = [(UIKeyboardLayout *)self orientation];
            v118 = +[UIKeyboardInputModeController sharedInputModeController];
            v119 = [v118 currentInputMode];
            [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:v117 inputMode:v119];
            v121 = v120;
            v123 = v122;

            v124 = v116 - (v121 + v123);
            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
            {
              goto LABEL_100;
            }

            v125 = [(UIView *)self window];
            if (v125)
            {
              v126 = v125;
            }

            else
            {
              v133 = +[UIKeyboard activeKeyboard];
              v126 = [v133 window];

              if (!v126)
              {
                goto LABEL_100;
              }
            }

            v134 = [v126 safeAreaLayoutGuide];
            [v134 layoutFrame];
            v124 = v135;

LABEL_100:
            v136 = MEMORY[0x1E695EFF8];
            v137 = *MEMORY[0x1E695EFF8];
            if ([(UIKeyboardLayoutStar *)self currentHandBias])
            {
              v138 = [(UIKBTree *)self->_keyplane containsKeyThatIgnoresHandBias];
              [(UIKeyboardLayoutStar *)self biasedKeyboardWidthRatio];
              v140 = v124 * v139;
              if ([(UIKeyboardLayoutStar *)self currentHandBias]== 1)
              {
                v141 = v124 - v140;
              }

              else
              {
                v141 = 0.0;
              }

              if (!v138)
              {
                v124 = v140;
              }
            }

            else
            {
              v138 = 0;
              v140 = 0.0;
              v141 = v137;
            }

            [(UIKBTree *)self->_keyboard frame];
            v143 = v124 / v142;
            [(UIKBTree *)self->_keyboard frame];
            v145 = v144;
            [(UITextInputTraits *)self->super._inputTraits preferredInputViewHeight];
            if (v146 > 0.0 && v143 * v145 - v146 > 5.0)
            {
              v143 = v143 * (v146 / (v143 * v145));
            }

            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
            {
              v147 = 1.0;
              if (v143 >= 1.0)
              {
                v148 = 1.0;
                if (![(UIKBScreenTraits *)self->super._screenTraits knobInput])
                {
                  goto LABEL_119;
                }
              }

              v148 = 1.0;
            }

            else
            {
              if (![(UIKeyboardLayoutStar *)self stretchKeyboardToFit])
              {
                v147 = v143;
                v148 = v143;
                goto LABEL_119;
              }

              [(UIKeyboardLayoutStar *)self stretchFactorHeight];
              v148 = v149;
            }

            v147 = v143;
LABEL_119:
            v150 = *(v136 + 8);
            v81 = self->_keyplane;
            v84 = v147;
            if (v138)
            {
              [(UIKBTree *)v81 elaborateLayoutWithSize:v79 origin:v147 layoutInfo:v148, v137, *(v136 + 8)];
              [(UIKBTree *)self->_keyboard frame];
              v81 = self->_keyplane;
              v84 = v140 / v151;
            }

            v85 = v148;
            v82 = v141;
            v83 = v150;
            goto LABEL_122;
          }
        }

        else if (!(v80 | ![(UIKeyboardLayoutStar *)self stretchKeyboardToFit]))
        {
          goto LABEL_92;
        }

LABEL_72:
        if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 2 || ![(UIKBScreenTraits *)self->super._screenTraits isLinear])
        {
          [(UIKBTree *)self->_keyplane zipGeometrySetWithLayoutInfo:v79];
          if ([(UIKeyboardLayoutStar *)self currentHandBias])
          {
            v86 = *(MEMORY[0x1E695EFF8] + 8);
            [(UIKeyboardLayoutStar *)self biasedKeyboardWidthRatio];
            v88 = v87;
            v89 = [(UIKeyboardLayoutStar *)self currentHandBias];
            v90 = 0.0;
            if (v89 == 1)
            {
              [v41 frame];
              v90 = (1.0 - v88) * v91;
            }

            [v41 elaborateLayoutWithSize:v79 origin:v88 layoutInfo:{1.0, v90, v86}];
          }

          if ([(UIKeyboardLayout *)self isFloating]&& +[UIKeyboardImpl floatingIdiom]== 1)
          {
            +[UIKeyboardImpl floatingWidth];
            v93 = v92;
            +[UIKeyboardImpl floatingHeight];
            v95 = v94;
            [v41 frame];
            v97 = v93 / v96;
            [v41 frame];
            [v41 elaborateLayoutWithSize:v79 origin:v97 layoutInfo:{v95 / v98, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
            [v41 setIsFloating:1];
          }

          if (v80)
          {
            [(UIKBScreenTraits *)self->super._screenTraits preferredContentSizeInPopover];
            v100 = v99;
            v102 = v101;
            [v41 frame];
            v104 = v100 / v103;
            [v41 frame];
            v106 = v102 / v105;
            v107 = [(UIKBScreenTraits *)self->super._screenTraits screen];
            [v107 bounds];
            v109 = v108;
            v110 = [(UIKBScreenTraits *)self->super._screenTraits screen];
            [v110 bounds];
            v112 = v111;

            v113 = fmin(v106, 1.0);
            if (v109 <= v112)
            {
              v114 = v106;
            }

            else
            {
              v114 = v113;
            }

            [v41 elaborateLayoutWithSize:v79 origin:v104 layoutInfo:{v114, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          [(UIKBTree *)self->_keyplane clearManualAddedKey];
LABEL_123:
          [(UIKeyboardLayoutStar *)self _setBiasEscapeButtonVisible:[(UIKeyboardLayoutStar *)self currentHandBias]!= 0];
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          v236 = self;
          obj = [(UIKBTree *)self->_keyplane subtrees];
          v248 = [obj countByEnumeratingWithState:&v261 objects:v276 count:16];
          if (v248)
          {
            v247 = *v262;
            do
            {
              v152 = 0;
              do
              {
                if (*v262 != v247)
                {
                  objc_enumerationMutation(obj);
                }

                v250 = v152;
                v153 = *(*(&v261 + 1) + 8 * v152);
                v257 = 0u;
                v258 = 0u;
                v259 = 0u;
                v260 = 0u;
                v154 = [v153 keySet];
                v155 = [v154 subtrees];

                v251 = v155;
                v156 = [v155 countByEnumeratingWithState:&v257 objects:v275 count:16];
                if (v156)
                {
                  v157 = v156;
                  v158 = *v258;
                  do
                  {
                    for (j = 0; j != v157; ++j)
                    {
                      if (*v258 != v158)
                      {
                        objc_enumerationMutation(v251);
                      }

                      v160 = *(*(&v257 + 1) + 8 * j);
                      v161 = [v160 numberForProperty:@"KBdisplayRowHint"];
                      if (v161)
                      {
                        v255 = 0u;
                        v256 = 0u;
                        v253 = 0u;
                        v254 = 0u;
                        v162 = [v160 subtrees];
                        v163 = [v162 countByEnumeratingWithState:&v253 objects:v274 count:16];
                        if (v163)
                        {
                          v164 = v163;
                          v165 = *v254;
                          do
                          {
                            for (k = 0; k != v164; ++k)
                            {
                              if (*v254 != v165)
                              {
                                objc_enumerationMutation(v162);
                              }

                              [*(*(&v253 + 1) + 8 * k) setDisplayRowHint:{objc_msgSend(v161, "intValue")}];
                            }

                            v164 = [v162 countByEnumeratingWithState:&v253 objects:v274 count:16];
                          }

                          while (v164);
                        }
                      }
                    }

                    v157 = [v251 countByEnumeratingWithState:&v257 objects:v275 count:16];
                  }

                  while (v157);
                }

                v152 = v250 + 1;
              }

              while (v250 + 1 != v248);
              v248 = [obj countByEnumeratingWithState:&v261 objects:v276 count:16];
            }

            while (v248);
          }

          [(UIKBTree *)v236->_keyplane frameForKeylayoutName:@"split-left"];
          v168 = v167;
          [(UIKBTree *)v236->_keyplane frameForKeylayoutName:@"split-right"];
          v170 = 1;
          if (v168 == v73)
          {
            v171 = v245;
            if (v169 == v75)
            {
              if (UIKeyboardDeviceSupportsSplit())
              {
                v170 = UIKeyboardSupportsSplit() ^ 1;
              }

              else
              {
                v170 = 0;
              }
            }
          }

          else
          {
            v171 = v245;
          }

          [(UIKeyboardLayoutStar *)v236 _addResizeTransformationsIfNecessary];
          [(UIKeyboardLayoutStar *)v236 updateKeyboardForKeyplane:v171];
          [(UIView *)v236 bounds];
          v174 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v172, v173];
          [v174 setSplitWidthsChanged:v170];
          [v174 setUpdateAssistantView:1];
          v175 = (v236->_setKeyplaneViewCount + 1) % 100;
          v236->_setKeyplaneViewCount = v175;
          [(UIKeyboardLayoutStar *)v236 _didChangeKeyplaneWithContext:v174];
          if (v175 != v236->_setKeyplaneViewCount)
          {
            v176 = [(UIKeyboardLayoutStar *)v236 keyViewAnimator];
            [v176 setDisabled:0];
            v22 = v243;
LABEL_198:
            v216 = v240;
            v68 = v235;

            v4 = v242;
            v41 = v245;
LABEL_211:

LABEL_212:
            goto LABEL_213;
          }

          [(UIKeyboardLayoutStar *)v236 setKeyboardAppearance:v236->_appearance];
          v176 = [(UIKeyboardLayoutStar *)v236 cacheTokenForKeyplane:v236->_keyplane caseAlternates:0];
          [v176 setTransformationIdentifiers:v236->_keyplaneTransformations];
          v177 = [(UIKeyboardLayoutStar *)v236 defaultKeyplaneForKeyplane:v236->_keyplane];
          v252 = [(UIKeyboardLayoutStar *)v236 cacheTokenForKeyplane:v177 caseAlternates:v234];
          v178 = [(UIKeyboardLayoutStar *)v236 renderConfig];
          v179 = [UIKBRenderingContext renderingContextForRenderConfig:v178];

          [v179 setShiftState:{-[UIKeyboardLayoutStar keyplaneShiftState](v236, "keyplaneShiftState")}];
          [v179 setKeyboardType:{-[UITextInputTraits keyboardType](v236->super._inputTraits, "keyboardType")}];
          [v179 setHandBias:{-[UIKeyboardLayoutStar currentHandBias](v236, "currentHandBias")}];
          if ([(UIKeyboardLayout *)v236 isFloating])
          {
            [v179 setIsFloating:1];
          }

          if ([(UIKeyboardLayoutStar *)v236 isDeveloperGestureKeybaord]&& _UIIsPrivateMainBundle())
          {
            v180 = [UIKBRenderFactory lightweightFactoryForVisualStyle:[(UIKBTree *)v236->_keyplane visualStyling] renderingContext:v179];
            [(UIKeyboardLayoutStar *)v236 clearKeyAnnotationsIfNecessary];
            if ([v180 supportsInputTraits:v236->super._inputTraits forKeyplane:v236->_keyplane])
            {
              [v176 annotateWithInt:{-[UITextInputTraits keyboardType](v236->super._inputTraits, "keyboardType")}];
              [v252 annotateWithInt:{-[UITextInputTraits keyboardType](v236->super._inputTraits, "keyboardType")}];
              [(UIKeyboardLayoutStar *)v236 annotateKeysWithDeveloperPunctuation];
            }
          }

          if ([(UIKBScreenTraits *)v236->super._screenTraits idiom]== 3)
          {
            [v176 annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
          }

          if (!v230)
          {
            [(UIKBKeyplaneView *)v236->_keyplaneView purgeKeyViews];
          }

          v181 = objc_autoreleasePoolPush();
          [(UIKeyboardLayoutStar *)v236 mergeKeysIfNeeded];
          [(UIKeyboardLayoutStar *)v236 updateLocalizedKeys:0];
          v182 = [(UIKeyboardLayoutStar *)v236 delegate];
          if (v182)
          {
            v183 = v182;
            v184 = [(UIKeyboardLayoutStar *)v236 delegate];
            v185 = objc_opt_respondsToSelector();

            if (v185)
            {
              v186 = [(UIKeyboardLayoutStar *)v236 delegate];
              [v186 keyboardLayout:v236 didSwitchToKeyplane:v236->_keyplane];
            }
          }

          objc_autoreleasePoolPop(v181);
          [(UIKBKeyplaneView *)v236->_keyplaneView removeFromSuperview];
          v187 = [v176 stringForSplitState:-[UIKBTree isSplit](v236->_keyplane handBias:{"isSplit"), -[UIKeyboardLayoutStar currentHandBias](v236, "currentHandBias")}];
          v188 = [(UIKeyboardLayoutStar *)v236 cacheIdentifierForKeyplaneNamed:v187];

          if (v188)
          {
            v189 = [(NSMutableDictionary *)v236->_allKeyplaneViews objectForKey:v188];
            objc_storeStrong(&v236->_keyplaneView, v189);
          }

          else
          {
            v189 = v236->_keyplaneView;
            v236->_keyplaneView = 0;
          }

          v190 = v236->_keyplaneView;
          [(UIView *)v236 bounds];
          v195 = v193;
          if (v190)
          {
            [(UIView *)v236->_keyplaneView setFrame:v191, v192, v193, v194];
            [(UIKBKeyplaneView *)v236->_keyplaneView setKeyplane:v236->_keyplane];
            [(UIKBKeyplaneView *)v236->_keyplaneView setDefaultKeyplane:v177];
            [(UIKBKeyplaneView *)v236->_keyplaneView setDefaultKeyplaneCacheToken:v252];
            [(UIKBKeyplaneView *)v236->_keyplaneView setOverrideScreenTraits:v236->super._screenTraits];
            [(UIKBKeyplaneView *)v236->_keyplaneView purgeSubviews];
          }

          else
          {
            v217 = [[UIKBKeyplaneView alloc] initWithFrame:v236->_keyplane keyplane:v191, v192, v193, v194];
            v218 = v236->_keyplaneView;
            v236->_keyplaneView = v217;

            [(UIKBKeyplaneView *)v236->_keyplaneView setDelegate:v236];
            v219 = [(UIKeyboardLayoutStar *)v236 keyViewAnimator];
            [(UIKBKeyplaneView *)v236->_keyplaneView setKeyViewAnimator:v219];

            [(UIKBKeyplaneView *)v236->_keyplaneView setCacheToken:v176];
            [(UIKBKeyplaneView *)v236->_keyplaneView setDefaultKeyplane:v177];
            [(UIKBKeyplaneView *)v236->_keyplaneView setDefaultKeyplaneCacheToken:v252];
            [(UIKBKeyplaneView *)v236->_keyplaneView setOverrideScreenTraits:v236->super._screenTraits];
            if (v188)
            {
              [(UIKBScreenTraits *)v236->super._screenTraits keyboardWidth];
              if (v220 == v195)
              {
                [(NSMutableDictionary *)v236->_allKeyplaneViews setObject:v236->_keyplaneView forKey:v188];
              }
            }
          }

          v196 = [(UIKBKeyplaneView *)v236->_keyplaneView keyViewAnimator];
          [v196 reset];

          v197 = [(UIKBKeyplaneView *)v236->_keyplaneView emojiKeyManager];
          if (!v197)
          {
            if (![(UIKeyboardLayoutStar *)v236 isEmojiKeyplane])
            {
LABEL_177:
              [(UIKBKeyplaneView *)v236->_keyplaneView setRenderingContext:v179];
              v198 = [(UIKeyboardLayoutStar *)v236 renderConfig];
              [(UIKBKeyplaneView *)v236->_keyplaneView setRenderConfig:v198];

              if (![(UIKeyboardPinchGestureRecognizer *)v236->_pinchGestureRecognizer pinchDetected])
              {
                [(UIView *)v236->_keyplaneView setHidden:0];
              }

              v199 = v236->_backgroundView;
              if (v199 && ([(UIView *)v199 superview], v200 = objc_claimAutoreleasedReturnValue(), v200, v200))
              {
                [(UIView *)v236 insertSubview:v236->_keyplaneView aboveSubview:v236->_backgroundView];
              }

              else
              {
                [(UIView *)v236 insertSubview:v236->_keyplaneView atIndex:0];
              }

              v22 = v243;
              [(UIKeyboardLayoutStar *)v236 updateBackgroundIfNeeded];
              [(UIKBKeyplaneView *)v236->_keyplaneView prepareForDisplay];
              [(UIView *)v236->_keyplaneView setNeedsDisplay];
              v201 = [(UIKBScreenTraits *)v236->super._screenTraits screen];
              [v201 scale];
              v203 = v202;
              v204 = [(UIKBKeyplaneView *)v236->_keyplaneView factory];
              [v204 setScale:v203];

              v205 = [(UIKBKeyplaneView *)v236->_keyplaneView factory];
              [v205 setAllowsPaddles:v238];

              v206 = UIKeyboardGetCurrentInputMode();
              v207 = UIKeyboardUIPreferStringOverImageForInputMode(v206);
              v208 = [(UIKBKeyplaneView *)v236->_keyplaneView factory];
              [v208 setPreferStringKeycapOverImage:v207];

              [(UIKeyboardLayoutStar *)v236 updateAllKeyStates];
              [(UIKeyboardLayoutStar *)v236 _updateSupplementaryKeys];
              [(UIKeyboardLayoutStar *)v236 updateLayoutTags];
              [(UIKeyboardLayoutStar *)v236 updateCachedKeyplaneKeycaps];
              [(UIKeyboardLayoutStar *)v236 updateGlobeKeyDisplayString];
              [(UIKBResizingKeyplaneCoordinator *)v236->_resizingKeyplaneCoordinator reloadResizingOffset];
              [(UIKBResizingKeyplaneCoordinator *)v236->_resizingKeyplaneCoordinator updateGestureRecognizers];
              resizingKeyplaneCoordinator = v236->_resizingKeyplaneCoordinator;
              v210 = [(UIKeyboardLayoutStar *)v236 renderConfig];
              [(UIKBResizingKeyplaneCoordinator *)resizingKeyplaneCoordinator setRenderConfig:v210];

              [(UIKBResizingKeyplaneCoordinator *)v236->_resizingKeyplaneCoordinator updateGrabber];
              if ([(UIKBTree *)v236->_keyplane shouldSkipCandidateSelection])
              {
                [v243 setShouldSkipCandidateSelection:1];
                v211 = v239;
                v212 = v237;
              }

              else
              {
                v212 = v237;
                [v243 setShouldSkipCandidateSelection:0];
                v211 = v239;
                if ((([(UIKeyboardLayoutStar *)v236 isRotating]| v237 ^ v231) & 1) == 0)
                {
                  v213 = +[UIKBAnalyticsDispatcher sharedInstance];
                  [v213 setNextCommitTextSource:6];

                  [v243 acceptCurrentCandidateIfSelected];
                }
              }

              [v243 setUsesCandidateSelection:{-[UIKBTree notUseCandidateSelection](v236->_keyplane, "notUseCandidateSelection") ^ 1}];
              v214 = [(UIKeyboardLayoutStar *)v236 candidateList];

              if (v212 != [(NSString *)v236->_keyplaneName hasSuffix:@"split"]|| (v232 == 0) == (v214 != 0))
              {
                [v243 removeAutocorrectPromptAndCandidateList];
                [v243 updateCandidateDisplay];
              }

              [(UIKeyboardLayoutStar *)v236 refreshForDictationAvailablityDidChange];
              [v243 updateReturnKey:1];
              [(UIKeyboardLayoutStar *)v236 updateKeyCentroids];
              if (v211 != [(UIKeyboardLayoutStar *)v236 isShiftKeyPlaneChooser])
              {
                [v243 clearShiftState];
              }

              if ([(UIKeyboardLayout *)v236 disableInteraction])
              {
                [(UIKeyboardLayoutStar *)v236 setKeyboardDim:1];
              }

              else
              {
                [(UIView *)v236 setUserInteractionEnabled:1];
              }

              v215 = [(UIKeyboardLayoutStar *)v236 keyViewAnimator];
              [v215 setDisabled:0];

              if (!v236->_settingShift)
              {
                [(UIKeyboardLayout *)v236 updateTouchProcessingForKeyplaneChange];
              }

              goto LABEL_198;
            }

            v197 = [(UIKeyboardLayoutStar *)v236 emojiKeyManager];
            [(UIKBKeyplaneView *)v236->_keyplaneView setEmojiKeyManager:v197];
          }

          goto LABEL_177;
        }

        v81 = self->_keyplane;
        v82 = *MEMORY[0x1E695EFF8];
        v83 = *(MEMORY[0x1E695EFF8] + 8);
        v84 = 1.0;
        v85 = 1.0;
LABEL_122:
        [(UIKBTree *)v81 elaborateLayoutWithSize:v79 origin:v84 layoutInfo:v85, v82, v83];
        goto LABEL_123;
      }

      v249 = v68;
      v233 = v67;
      v69 = self->_keyboard;
      v70 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:v4];
      v71 = [(UIKBTree *)v69 subtreeWithName:v70];

      if (v71)
      {
        v68 = v249;
      }

      else
      {
        v127 = [(UIKeyboardLayoutStar *)self splitNameForKeyplane:v41];
        v71 = [(UIKBTree *)self->_keyboard subtreeWithName:v127];

        v68 = v249;
        if (!v71)
        {
          if ([(UIKeyboardLayoutStar *)self stretchKeyboardToFitKeyplane:v41])
          {
            [(UIKBScreenTraits *)self->super._screenTraits bounds];
            v129 = v128;
            [(UIKBTree *)self->_keyboard frame];
            v131 = v129 / v130;
            [(UIKeyboardLayoutStar *)self stretchFactorHeight];
            [v41 elaborateLayoutWithSize:v249 origin:v131 layoutInfo:{v132, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          else
          {
            [v41 zipGeometrySetWithLayoutInfo:v249];
          }

          v221 = [objc_opt_class() sharedRivenKeyplaneGenerator];
          v222 = [v221 generateRivenKeyplaneFromKeyplane:v41 forKeyboard:self->_keyboard];
          v71 = v222;
          if (!v222)
          {
            goto LABEL_208;
          }

          [v222 setIsGenerated:1];
          v223 = [v41 layoutName];
          [v71 precacheLayoutName:v223];

          v224 = [(UIKBTree *)self->_keyboard subtrees];
          [v224 addObject:v71];
        }
      }

      if (![(UIKBScreenTraits *)self->super._screenTraits isSplit]|| ![(UITextInputTraits *)self->super._inputTraits acceptsSplitKeyboard])
      {
LABEL_209:
        self->_splitTransitionNeedsRebuild = 1;

        v67 = v233;
        if (!v41)
        {
          goto LABEL_210;
        }

        goto LABEL_65;
      }

      v71 = v71;

      [v71 name];
      v221 = v4;
      v4 = v41 = v71;
LABEL_208:

      goto LABEL_209;
    }

    v241 = v4;
    v43 = self->_keyboard;
    v244 = v41;
    v44 = [v41 gestureKeyplaneName];
    v45 = [(UIKBTree *)v43 subtreeWithName:v44];

    [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v45];
    [(UIKeyboardLayoutStar *)self setPercentSignKeysForCurrentLocaleOnKeyplane:v45];
    v46 = self;
    v47 = [(UIKeyboardLayoutStar *)self layoutTag];
    v266 = 0u;
    v267 = 0u;
    v268 = 0u;
    v269 = 0u;
    v48 = [v45 cachedKeysByKeyName:@"Adaptive-Key"];
    v49 = [v48 countByEnumeratingWithState:&v266 objects:v277 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v267;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v267 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v266 + 1) + 8 * m);
          v265[0] = MEMORY[0x1E69E9820];
          v265[1] = 3221225472;
          v265[2] = __40__UIKeyboardLayoutStar_setKeyplaneName___block_invoke;
          v265[3] = &unk_1E7114858;
          v265[4] = v46;
          [v53 setLayoutTag:v47 passingKeyTest:v265];
        }

        v50 = [v48 countByEnumeratingWithState:&v266 objects:v277 count:16];
      }

      while (v50);
    }

    self = v46;
    [(UIKeyboardLayoutStar *)v46 updateAutolocalizedKeysForKeyplane:v45];
    v54 = [v45 subtrees];
    v55 = [v54 firstObject];

    v56 = [v41 subtrees];
    v57 = [v56 firstObject];

    [v57 setCachedGestureLayout:v55];
    if ([v41 intForProperty:@"shift-rendering"] != 31)
    {
      v58 = [v41 subtrees];
      if ([v58 count] > 1)
      {
        v59 = [v41 subtrees];
        v60 = [v59 objectAtIndexedSubscript:1];

        if (v60)
        {
          [v60 setCachedGestureLayout:v55];
          v57 = v60;
        }

        else
        {
          v57 = 0;
        }

        v4 = v241;
        v41 = v244;
        goto LABEL_53;
      }

      v57 = 0;
    }

    v4 = v241;
LABEL_53:

    goto LABEL_54;
  }

LABEL_213:
}

- (void)updateStateForKey:(id)a3
{
  v14 = a3;
  if ([v14 displayType] == 23 || objc_msgSend(v14, "displayType") == 51)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForShiftKey:v14];
LABEL_4:
    v6 = v5;
    v7 = self;
LABEL_5:
    [(UIKeyboardLayoutStar *)v7 setState:v6 forKey:v14];
    goto LABEL_6;
  }

  if ([v14 displayType] == 14)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForKeyplaneSwitchKey:v14];
    goto LABEL_4;
  }

  if ([v14 displayType] == 11)
  {
    v7 = self;
    v6 = 4;
    goto LABEL_5;
  }

  if ([v14 interactionType] == 21)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForMultitapReverseKey:v14];
    goto LABEL_4;
  }

  if ([v14 interactionType] == 41)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForMultitapForwardKey:v14];
    goto LABEL_4;
  }

  if (([v14 disabled] & 1) != 0 || objc_msgSend(v14, "interactionType") == 20 && !-[UIDelayedAction scheduled](self->_multitapAction, "scheduled"))
  {
    goto LABEL_20;
  }

  if ([v14 displayType] == 1)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForCandidateListKey:v14];
    goto LABEL_4;
  }

  if ([v14 interactionType] == 44)
  {
LABEL_26:
    v7 = self;
    v6 = 2;
    goto LABEL_5;
  }

  if ([v14 displayType] == 4)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForDictationKey:v14];
    goto LABEL_4;
  }

  if ([v14 displayType] == 39 || objc_msgSend(v14, "displayType") == 40 || objc_msgSend(v14, "displayType") == 41 || objc_msgSend(v14, "displayType") == 49)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForStylingKey:v14];
    goto LABEL_4;
  }

  if ([v14 displayType] == 42 || objc_msgSend(v14, "displayType") == 43 || objc_msgSend(v14, "displayType") == 44 || objc_msgSend(v14, "displayType") == 45 || objc_msgSend(v14, "displayType") == 46 || objc_msgSend(v14, "interactionType") == 17 || objc_msgSend(v14, "interactionType") == 12)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForManipulationKey:v14];
    goto LABEL_4;
  }

  if ([v14 displayType] != 36 && objc_msgSend(v14, "displayType") != 37)
  {
    if ([v14 interactionType] != 9)
    {
      goto LABEL_56;
    }

    v9 = [v14 representedString];
    v10 = [v9 isEqualToString:@"NonASCII"];
    if ((v10 & 1) == 0)
    {
      v3 = [v14 representedString];
      if (([v3 isEqualToString:@"ASCIICapable"] & 1) == 0)
      {

        goto LABEL_56;
      }
    }

    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 textInputTraits];
    v13 = [v12 loadKeyboardsForSiriLanguage];

    if (v10)
    {

      if (!v13)
      {
        goto LABEL_56;
      }
    }

    else
    {

      if ((v13 & 1) == 0)
      {
LABEL_56:
        if ([v14 displayType] == 50)
        {
          v7 = self;
          v6 = 0;
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

LABEL_20:
    v7 = self;
    v6 = 1;
    goto LABEL_5;
  }

  [(UIKeyboardLayoutStar *)self setState:2 forKey:v14];
  v8 = [(UIKeyboardLayoutStar *)self viewForKey:v14];
  if (objc_opt_respondsToSelector())
  {
    [v8 setHitTestResponder:self];
  }

LABEL_6:
  if ([v14 displayType] != 8)
  {
    [v14 setOverrideDisplayString:0];
  }

  [v14 setFlickDirection:-3];
}

- (void)annotateKeysWithDeveloperPunctuation
{
  v46[3] = *MEMORY[0x1E69E9840];
  v45[0] = &unk_1EFE312A0;
  v45[1] = &unk_1EFE31300;
  v46[0] = &unk_1EFE2C7D8;
  v46[1] = &unk_1EFE2C8C8;
  v45[2] = &unk_1EFE31318;
  v46[2] = &unk_1EFE2C988;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(UIKBTree *)self->_keyplane subtrees];
  v4 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v37;
    v28 = *v37;
    do
    {
      v8 = 0;
      v29 = v5;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = [v9 name];
        v11 = [v10 rangeOfString:@"Letters"];
        v31 = v8;
        if (((v11 == 0x7FFFFFFFFFFFFFFFLL) & v6) == 1)
        {
          v12 = [v9 name];
          v13 = [v12 rangeOfString:@"Punctuation"];

          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = 1;
            goto LABEL_31;
          }
        }

        else
        {
          v14 = v11;

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_31;
          }
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = [v9 keys];
        v16 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (!v16)
        {
          goto LABEL_30;
        }

        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "displayRowHint")}];
            v22 = [v3 objectForKeyedSubscript:v21];

            v23 = [v20 displayRowHint];
            switch(v23)
            {
              case 1:
                v24 = &v42;
                break;
              case 3:
                v24 = &v40;
                break;
              case 2:
                v24 = &v41;
                break;
              default:
                goto LABEL_28;
            }

            v25 = *v24;
            v26 = [v22 count];
            v27 = MEMORY[0x1E695E0F0];
            if (v25 < v26)
            {
              v27 = [v22 objectAtIndexedSubscript:*v24];
              ++*v24;
            }

            if ([v20 visible])
            {
              if ([v27 count])
              {
                [v20 setSecondaryDisplayStrings:v27];
                [v20 setSecondaryRepresentedStrings:v27];
              }

              [v20 setDisplayTypeHint:10];
            }

LABEL_28:
          }

          v17 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v17);
LABEL_30:

        v6 = 1;
        v7 = v28;
        v5 = v29;
LABEL_31:
        v8 = v31 + 1;
      }

      while (v31 + 1 != v5);
      v5 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v5);
  }
}

- (BOOL)ignoreWriteboard
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23 || ([(UIKeyboardLayout *)self orientation]- 3) > 1)
  {
    return 0;
  }

  return [(UIKeyboardLayoutStar *)self isEmojiKeyplane];
}

- (BOOL)useDismissForMessagesWriteboard
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23 || [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23)
  {
    return 0;
  }

  v3 = [(UIKBTree *)self->_keyplane rightSpaceKey];
  v4 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"More-Key"];
  if ([v4 count] < 2)
  {
    if ([v4 count] <= 1)
    {
      v11 = [(UIKBTree *)self->_keyplane firstKeyplaneSwitchKey];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v20 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Handwriting-Input"];

        v12 = v20 == 0;
      }

      v8 = 0;
      goto LABEL_26;
    }

    v8 = 0;
    goto LABEL_23;
  }

  v5 = [v4 objectAtIndex:0];
  [v5 frame];
  MidX = CGRectGetMidX(v22);
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  v8 = [v4 objectAtIndex:MidX <= v7 * 0.5];

  v9 = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
  v10 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Modify-For-Writeboard-Key"];
  if (v10)
  {

LABEL_23:
    v12 = 0;
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = 4.0;
  }

  else
  {
    v13 = 3.0;
  }

  [v8 frame];
  MinX = CGRectGetMinX(v23);
  [v3 frame];
  v15 = vabdd_f64(MinX, CGRectGetMaxX(v24));
  v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v17 = [v16 preferencesActions];
  [v17 rivenSizeFactor:v13];
  v19 = v18;

  if (v15 <= v19)
  {
    goto LABEL_23;
  }

  v12 = 1;
LABEL_26:

  return v12;
}

- (BOOL)useUndoForMessagesWriteboard
{
  v3 = [(UIKeyboardLayoutStar *)self is10KeyRendering];
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom])
  {
    v4 = 1;
  }

  else
  {
    v4 = !v3;
  }

  result = 0;
  if (!v4)
  {
    v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Undo-Key"];

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

- (void)annotateWriteboardDisplayTypeHintForKeyIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Dismiss-Key"];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && [(UIKeyboardLayoutStar *)self useDismissForMessagesWriteboard])
        {
          v9 = 11;
        }

        else
        {
          v9 = 0;
        }

        [v8 setDisplayTypeHint:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Undo-Key", 0];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && [(UIKeyboardLayoutStar *)self useUndoForMessagesWriteboard])
        {
          v16 = 11;
        }

        else
        {
          v16 = 0;
        }

        [v15 setDisplayTypeHint:v16];
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)clearKeyAnnotationsIfNecessary
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(UIKBTree *)self->_keyboard subtrees];
  v18 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v18)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v4 = [v3 subtrees];
        v5 = [v4 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v24;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v24 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v23 + 1) + 8 * j);
              v19 = 0u;
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v10 = [v9 keys];
              v11 = [v10 countByEnumeratingWithState:&v19 objects:v31 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v20;
                do
                {
                  for (k = 0; k != v12; ++k)
                  {
                    if (*v20 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v19 + 1) + 8 * k);
                    if ([v15 displayTypeHint] == 10)
                    {
                      if ([v15 displayType] != 7)
                      {
                        [v15 setSecondaryDisplayStrings:0];
                        [v15 setSecondaryRepresentedStrings:0];
                      }

                      [v15 setDisplayTypeHint:0];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v19 objects:v31 count:16];
                }

                while (v12);
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v6);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)updateTransitionWithFlags:(unint64_t)a3
{
  if ([(UIKBScreenTraits *)self->super._screenTraits supportsSplit]&& ![(UIKBScreenTraits *)self->super._screenTraits isFloating]&& ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    transitionView = self->_transitionView;

    [(UIKeyboardSplitTransitionView *)transitionView rebuildControlKeys:a3];
  }
}

- (void)setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__UIKeyboardLayoutStar_setReturnKeyEnabled_withDisplayName_withType___block_invoke;
  v10[3] = &unk_1E7114880;
  v13 = a3;
  v10[4] = self;
  v11 = v8;
  v12 = a5;
  v9 = v8;
  [UIView performWithoutAnimation:v10];
}

- (void)_setReturnKeyEnabled:(BOOL)a3 withDisplayName:(id)a4 withType:(int)a5
{
  v5 = *&a5;
  v6 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(UIKBTree *)self->_keyplane cache];
  v10 = [v9 objectForKey:@"Return-Key"];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v10;
    v12 = v10;
    v30 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v30)
    {
      goto LABEL_29;
    }

    v13 = *v32;
    v29 = self;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (([v11 containsObject:v15] & 1) == 0)
        {
          if ([v15 displayTypeHint] == v5)
          {
            [v15 displayString];
            v16 = v13;
            v17 = v11;
            v18 = v5;
            v19 = v12;
            v21 = v20 = v6;
            v22 = [v8 isEqualToString:v21];

            v6 = v20;
            v12 = v19;
            v5 = v18;
            v11 = v17;
            v13 = v16;
            self = v29;
            if (v22)
            {
              v23 = 0;
              goto LABEL_13;
            }
          }

          [v11 addObject:v15];
        }

        v23 = 1;
LABEL_13:
        [v15 setDisplayString:v8];
        [v15 setDisplayTypeHint:v5];
        v24 = [(UIKeyboardLayoutStar *)self stateForKey:v15];
        if (v6)
        {
          if (v24 == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v23;
          }

          if (v25 == 1)
          {
            v26 = 2;
LABEL_26:
            [(UIKeyboardLayoutStar *)self setState:v26 forKey:v15];
            continue;
          }
        }

        else if ((v23 & 1) != 0 || (v24 != 2 ? (v27 = v24 == 4) : (v27 = 1), v27))
        {
          v26 = 1;
          goto LABEL_26;
        }
      }

      v30 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v30)
      {
LABEL_29:

        [(UIKeyboardLayoutStar *)self updateTransitionWithFlags:5];
        v10 = v28;
        break;
      }
    }
  }
}

- (BOOL)_stringContainsCurrencyCharacters:(id)a3
{
  v3 = a3;
  if (_stringContainsCurrencyCharacters__onceToken != -1)
  {
    dispatch_once(&_stringContainsCurrencyCharacters__onceToken, &__block_literal_global_902_1);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UIKeyboardLayoutStar__stringContainsCurrencyCharacters___block_invoke_2;
  v7[3] = &unk_1E71148A8;
  v7[4] = &v8;
  [v3 _enumerateLongCharactersInRange:0 usingBlock:{v4, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __58__UIKeyboardLayoutStar__stringContainsCurrencyCharacters___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[1] = 0;
  [@"[\\p{Sc}]" getCharacters:{v1 - ((2 * objc_msgSend(@"[\\p{Sc}]", "length") + 15) & 0x3FFFFFFF0)}];
  result = uset_openPattern();
  _stringContainsCurrencyCharacters__currencySet = result;
  return result;
}

uint64_t __58__UIKeyboardLayoutStar__stringContainsCurrencyCharacters___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = MEMORY[0x18CFEA920](_stringContainsCurrencyCharacters__currencySet);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)updateCurrencySymbolForKey:(id)a3 withCurrencyString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 representedString];
  v9 = [(UIKeyboardLayoutStar *)self _stringContainsCurrencyCharacters:v8];

  if (v9)
  {
    [v6 setDisplayString:v7];
    [v6 setRepresentedString:v7];
  }

  v10 = [v6 secondaryRepresentedStrings];
  v11 = [v10 mutableCopy];

  v12 = [v6 secondaryDisplayStrings];
  v13 = [v12 mutableCopy];

  v14 = [v6 secondaryRepresentedStrings];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__UIKeyboardLayoutStar_updateCurrencySymbolForKey_withCurrencyString___block_invoke;
  v21 = &unk_1E71148D0;
  v22 = self;
  v23 = v11;
  v24 = v7;
  v25 = v13;
  v15 = v13;
  v16 = v7;
  v17 = v11;
  [v14 enumerateObjectsUsingBlock:&v18];

  [v6 setSecondaryRepresentedStrings:{v17, v18, v19, v20, v21, v22}];
  [v6 setSecondaryDisplayStrings:v15];
}

uint64_t __70__UIKeyboardLayoutStar_updateCurrencySymbolForKey_withCurrencyString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _stringContainsCurrencyCharacters:a2];
  if (result)
  {
    [*(a1 + 40) replaceObjectAtIndex:a3 withObject:*(a1 + 48)];
    result = [*(a1 + 56) replaceObjectAtIndex:a3 withObject:*(a1 + 48)];
    *a4 = 1;
  }

  return result;
}

- (void)setCurrencyKeysForCurrentLocaleOnKeyplane:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = UIKeyboardGetCurrentInputMode();
  v5 = [MEMORY[0x1E695DF58] preferredLocale];
  v32 = [v5 localeIdentifier];

  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"$", @"€", @"£", @"¥", @"₩", 0}];
  v6 = [v4 cache];
  v7 = [v6 objectForKey:@"Primary-Currency-Sign"];

  if (v7)
  {
    v8 = UIKeyboardLocalizedObject(@"UI-PrimaryCurrencySign", v32, 0, 0, 0);
    if (!v8)
    {
      v8 = UIKeyboardLocalizedString(@"UI-PrimaryCurrencySign", v31, 0, @"$");
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          if ([v14 displayType] == 7)
          {
            [(UIKeyboardLayoutStar *)self updateCurrencySymbolForKey:v14 withCurrencyString:v8];
          }

          else
          {
            [v14 setDisplayString:v8];
            [v14 setRepresentedString:v8];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v11);
    }
  }

  v29 = v7;
  v15 = 0;
  do
  {
    v16 = [v4 cache];
    v17 = v15 + 1;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternate-Currency-Sign-%d", v15 + 1];
    v19 = [v16 objectForKey:v18];

    if (v19)
    {
      v20 = UIKeyboardStringAlternateCurrencySign[v15];
      v21 = UIKeyboardLocalizedObject(v20, v32, 0, 0, 0);
      if (!v21)
      {
        v22 = [v30 objectAtIndex:v15 + 1];
        v21 = UIKeyboardLocalizedString(v20, v31, 0, v22);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = v19;
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v33 + 1) + 8 * j);
            if ([v28 displayType] == 7)
            {
              [(UIKeyboardLayoutStar *)self updateCurrencySymbolForKey:v28 withCurrencyString:v21];
            }

            else
            {
              [v28 setDisplayString:v21];
              [v28 setRepresentedString:v21];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
      }
    }

    v15 = v17;
  }

  while (v17 != 4);
}

- (void)setPercentSignKeysForCurrentLocaleOnKeyplane:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = UIKeyboardGetCurrentInputMode();
  v5 = UIKeyboardInputModeGetNumericLocale(v4);
  v6 = [v5 localeIdentifier];

  v7 = [v3 cache];
  v8 = [v7 objectForKey:@"Localized-Percent-Sign"];

  if ([v8 count])
  {
    v34 = v3;
    if (qword_1ED493218 != -1)
    {
      dispatch_once(&qword_1ED493218, &__block_literal_global_933);
    }

    v9 = v6;
    if (qword_1ED4932D0 && [qword_1ED4932C8 isEqualToString:v9])
    {
      v10 = qword_1ED4932D0;
    }

    else
    {
      v11 = objc_opt_new();
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
      [v11 setLocale:v12];

      v13 = [v11 percentSymbol];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @"%";
      }

      v10 = v15;

      v16 = [v9 copy];
      v17 = qword_1ED4932C8;
      qword_1ED4932C8 = v16;

      objc_storeStrong(&qword_1ED4932D0, v15);
    }

    [qword_1ED493210 addObject:v10];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v8;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          if ([v23 displayType] == 7)
          {
            v24 = qword_1ED493210;
            v25 = [v23 representedString];
            LODWORD(v24) = [v24 containsObject:v25];

            if (v24)
            {
              [v23 setDisplayString:v10];
              [v23 setRepresentedString:v10];
            }

            v26 = [v23 secondaryRepresentedStrings];
            v27 = [v26 mutableCopy];

            v28 = [v23 secondaryDisplayStrings];
            v29 = [v28 mutableCopy];

            v30 = [v23 secondaryRepresentedStrings];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __69__UIKeyboardLayoutStar_setPercentSignKeysForCurrentLocaleOnKeyplane___block_invoke_2;
            v35[3] = &unk_1E71148F8;
            v36 = v27;
            v37 = v10;
            v38 = v29;
            v31 = v29;
            v32 = v27;
            [v30 enumerateObjectsUsingBlock:v35];

            [v23 setSecondaryRepresentedStrings:v32];
            [v23 setSecondaryDisplayStrings:v31];
          }

          else
          {
            [v23 setDisplayString:v10];
            [v23 setRepresentedString:v10];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v20);
    }

    v3 = v34;
    v8 = v33;
  }
}

void __69__UIKeyboardLayoutStar_setPercentSignKeysForCurrentLocaleOnKeyplane___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"⁒", 0}];
  v1 = qword_1ED493210;
  qword_1ED493210 = v0;
}

uint64_t __69__UIKeyboardLayoutStar_setPercentSignKeysForCurrentLocaleOnKeyplane___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [qword_1ED493210 containsObject:a2];
  if (result)
  {
    [*(a1 + 32) replaceObjectAtIndex:a3 withObject:*(a1 + 40)];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v6 replaceObjectAtIndex:a3 withObject:v7];
  }

  return result;
}

- (int)stateForMultitapReverseKey:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 markedText];
  v7 = [v6 _lastGrapheme];

  if (self->_multitapKey || [v7 length] && (-[UIKeyboardLayoutStar keyWithRepresentedString:](self, "keyWithRepresentedString:", v7), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int)stateForDictationKey:(id)a3
{
  v3 = +[UIDictationController activeInstance];

  if (!v3)
  {
    return 1;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 enabledDictationLanguages];
  if (![v5 count] || !+[UIDictationController dictationIsFunctional](UIDictationController, "dictationIsFunctional"))
  {

    return 1;
  }

  v6 = +[UIDictationController fetchCurrentInputModeSupportsDictation];

  if (!v6)
  {
    return 1;
  }

  if (+[UIDictationController isRunning](UIDictationController, "isRunning") && (+[UIDictationController isRunning](UIDictationController, "isRunning") || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isDictationPopoverPresented], v7, v8)) && ((+[UIKeyboardInputMode dictationInputMode](UIKeyboardInputMode, "dictationInputMode"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isCurrentDictationLanguageOnDevice"), v9, (v10 & 1) != 0) || +[UIDictationController viewMode](UIDictationController, "viewMode") == 1))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (BOOL)supportStylingWithKey:(id)a3
{
  v4 = a3;
  if (-[UIKBTextEditingTraits supportStyling](self->super._textEditingTraits, "supportStyling") && ([v4 interactionType] != 28 || -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface")) && (objc_msgSend(v4, "interactionType") != 29 || -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics")) && (objc_msgSend(v4, "interactionType") != 30 || -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline")))
  {
    v5 = [v4 displayType] != 49 || -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface") || -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics") || -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)stateForStylingKey:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self supportStylingWithKey:v4])
  {
    if ([v4 interactionType] == 28 && -[UIKBTextEditingTraits isBold](self->super._textEditingTraits, "isBold") || objc_msgSend(v4, "interactionType") == 29 && -[UIKBTextEditingTraits isItalicized](self->super._textEditingTraits, "isItalicized") || objc_msgSend(v4, "interactionType") == 30 && -[UIKBTextEditingTraits isUnderlined](self->super._textEditingTraits, "isUnderlined"))
    {
      v5 = 4;
    }

    else if ([v4 state] == 16)
    {
      v5 = 16;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)highlightedVariantListForStylingKey:(id)a3
{
  if ([a3 variantType] == 9)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    if ([(UIKBTextEditingTraits *)self->super._textEditingTraits isBold])
    {
      [v4 addObject:&unk_1EFE31330];
    }

    if ([(UIKBTextEditingTraits *)self->super._textEditingTraits isItalicized])
    {
      [v4 addObject:&unk_1EFE31288];
    }

    if ([(UIKBTextEditingTraits *)self->super._textEditingTraits isUnderlined])
    {
      [v4 addObject:&unk_1EFE31348];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)stateForManipulationKey:(id)a3
{
  v4 = a3;
  if (([v4 interactionType] != 31 || !-[UIKBTextEditingTraits canCut](self->super._textEditingTraits, "canCut")) && (objc_msgSend(v4, "interactionType") != 32 || !-[UIKBTextEditingTraits canCopy](self->super._textEditingTraits, "canCopy")) && (objc_msgSend(v4, "interactionType") != 33 || !-[UIKBTextEditingTraits canPaste](self->super._textEditingTraits, "canPaste")) && (objc_msgSend(v4, "interactionType") != 34 || !-[UIKBTextEditingTraits canMoveCursorLeft](self->super._textEditingTraits, "canMoveCursorLeft")) && (objc_msgSend(v4, "interactionType") != 35 || !-[UIKBTextEditingTraits canMoveCursorRight](self->super._textEditingTraits, "canMoveCursorRight")))
  {
    if ([v4 interactionType] != 17 && objc_msgSend(v4, "interactionType") != 12)
    {
      v5 = 1;
      goto LABEL_12;
    }

    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 delegateAsResponder];
    v9 = [v8 _responderForEditing];
    v10 = [v9 undoManager];

    if ([v4 interactionType] == 17)
    {
      if ([v10 canUndo])
      {
        goto LABEL_20;
      }
    }

    else if ([v10 canRedo])
    {
      goto LABEL_20;
    }

    if ([v4 displayTypeHint] != 11)
    {
      v5 = 1;
      goto LABEL_23;
    }

LABEL_20:
    v5 = 2;
LABEL_23:

    goto LABEL_12;
  }

  v5 = 2;
LABEL_12:

  return v5;
}

- (void)setTextEditingTraits:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v43 setTextEditingTraits:a3];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [(UIKBTree *)self->_keyplane subtrees];
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 _containsSubstring:@"Assist"];

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v12;
  v13 = [v12 keySet];
  v14 = [v13 subtrees];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v35 + 1) + 8 * j);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = [v19 subtrees];
        v21 = [v20 countByEnumeratingWithState:&v31 objects:v44 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v32;
          do
          {
            v24 = 0;
            do
            {
              if (*v32 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v31 + 1) + 8 * v24);
              if ([v25 displayType] == 39 || objc_msgSend(v25, "displayType") == 40 || objc_msgSend(v25, "displayType") == 41 || objc_msgSend(v25, "displayType") == 49)
              {
                [v25 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
                v26 = [(UIKeyboardLayoutStar *)self highlightedVariantListForStylingKey:v25];
                [v25 setHighlightedVariantsList:v26];

                v27 = [(UIKeyboardLayoutStar *)self stateForStylingKey:v25];
LABEL_26:
                [(UIKeyboardLayoutStar *)self setState:v27 forKey:v25];
                goto LABEL_27;
              }

              if ([v25 displayType] == 42 || objc_msgSend(v25, "displayType") == 43 || objc_msgSend(v25, "displayType") == 44 || objc_msgSend(v25, "displayType") == 45 || objc_msgSend(v25, "displayType") == 46)
              {
                v27 = [(UIKeyboardLayoutStar *)self stateForManipulationKey:v25];
                goto LABEL_26;
              }

LABEL_27:
              ++v24;
            }

            while (v22 != v24);
            v28 = [v20 countByEnumeratingWithState:&v31 objects:v44 count:16];
            v22 = v28;
          }

          while (v28);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v16);
  }
}

- (int)stateForKeyplaneSwitchKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBTree *)self->_keyboard name];
  v6 = [v5 rangeOfString:@"QWERTY-Japanese"];

  v7 = 2;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSString *)self->_keyplaneName lowercaseString];
    v9 = [v4 representedString];
    v10 = [v9 lowercaseString];

    if ([v8 rangeOfString:v10] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    if ([(UIKBTree *)self->_keyboard visualStyle]== 101 || [(UIKeyboardLayoutStar *)self is10KeyRendering])
    {
      v11 = [v8 componentsSeparatedByString:@"-"];
      v12 = [v10 componentsSeparatedByString:@"-"];
      v13 = [v12 objectAtIndex:0];
      v14 = [v11 objectAtIndex:0];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        v7 = 4;
      }
    }
  }

  return v7;
}

- (id)keylistContainingKey:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(UIKBTree *)self->_keyplane subtrees];
  v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v6 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 keySet];
        v10 = [v9 subtrees];

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              v16 = [v15 subtrees];
              v17 = [v16 containsObject:v4];

              if (v17)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v18 = 0;
      v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (void)mergeKeysIfNeeded
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UIKeyboardNeedsUpdatingKeyboardDockViewVisibilityNotification" object:0 userInfo:0];

  [(UIKeyboardLayoutStar *)self _addExtraControlKeysIfNecessary];
  [(UIKeyboardLayoutStar *)self annotateWriteboardDisplayTypeHintForKeyIfNeeded];
  [(UIKeyboardLayoutStar *)self updateMoreAndInternationalKeys];
  [(UIKeyboardLayoutStar *)self _swapGlobeAndMoreKeysIfNecessary];
  [(UIKeyboardLayoutStar *)self relayoutForWriteboardKey];
  [(UIKeyboardLayoutStar *)self updateReturnKeysIfNeeded];
  [(UIKeyboardLayoutStar *)self transitionToModalContinuousPathKeyplane];
  [(UIKeyboardLayoutStar *)self _transformFloatingKeyboardIfNecessary];

  [(UIKeyboardLayoutStar *)self _transformCarPlayIfNecessary];
}

- (void)_swapGlobeAndMoreKeysIfNecessary
{
  v28[1] = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutStar *)self _shouldSwapGlobeAndMore])
  {
    v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"More-Key"];
    v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
    [v3 frame];
    v6 = v5;
    [v4 frame];
    if (vabdd_f64(v6, v7) < 0.00000011920929)
    {
      v8 = [v3 shape];
      v9 = [v8 copy];

      v10 = [v4 shape];
      v11 = [v10 copy];

      if ([(UIKBScreenTraits *)self->super._screenTraits isSplit])
      {
        v12 = [(UIKBScreenTraits *)self->super._screenTraits screen];
        [v12 scale];
        v13 = [UIKBShapeOperator operatorWithScale:?];

        [v11 frame];
        v15 = v14;
        v16 = v14 * 0.5;
        v28[0] = v11;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        v18 = -(v15 * 0.5);
        v19 = [v13 shapesByRepositioningShapes:v17 withOffset:{v18, 0.0}];
        v20 = [v19 firstObject];

        v27 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        v22 = [v13 shapesByResizingShapes:v21 withOffset:{v16, 0.0}];
        v11 = [v22 firstObject];

        v26 = v9;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        v24 = [v13 shapesByResizingShapes:v23 withOffset:{v18, 0.0}];
        v25 = [v24 firstObject];

        v9 = v25;
      }

      [v3 setShape:v11];
      [v4 setShape:v9];
    }
  }
}

- (void)_updateSupplementaryKeys
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardLayoutStar *)self _shouldAttemptToAddSupplementaryControlKeys])
  {
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
    {
      return;
    }

    v15 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v16 = [UIKBPhoneToCarPlayTransformation cachedKeysForTransformationContext:v15];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v16;
    v17 = [v4 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v4);
          }

          [(UIKeyboardLayoutStar *)self setState:2 forKey:*(*(&v21 + 1) + 8 * i), v21];
        }

        v18 = [v4 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v18);
    }

    goto LABEL_26;
  }

  v3 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
  v4 = [UIKeyboardSupplementaryControlKeyTransformation cachedControlKeySetsForTransformationContext:v3];

  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v4;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * j);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v10 = [v9 subtrees];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (k = 0; k != v12; ++k)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [(UIKeyboardLayoutStar *)self setState:2 forKey:*(*(&v25 + 1) + 8 * k)];
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v12);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v6);
    }

LABEL_26:
  }
}

- (id)_currentKeyplaneTransformationContext
{
  v3 = objc_alloc_init(UIKBKeyplaneTransformationContext);
  v4 = [(UIKeyboardLayoutStar *)self keyplaneName];
  [(UIKBKeyplaneTransformationContext *)v3 setCurrentKeyplaneName:v4];

  [(UIKBKeyplaneTransformationContext *)v3 setScreenTraits:self->super._screenTraits];
  v5 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
  [(UIKBKeyplaneTransformationContext *)v3 setUsesScriptSwitch:v5 != 0];

  [(UIKBKeyplaneTransformationContext *)v3 setActiveKeyboard:self->_keyboard];
  [(UIKBKeyplaneTransformationContext *)v3 setActiveKeyplane:self->_keyplane];
  if (+[UIKeyboard resizable])
  {
    v6 = [(UIView *)self superview];
    [v6 bounds];
    [(UIKBKeyplaneTransformationContext *)v3 setKeyboardSize:v7, v8];
  }

  else
  {
    [(UIKeyboardLayoutStar *)self sizeForKeyplane:self->_keyplane];
    [(UIKBKeyplaneTransformationContext *)v3 setKeyboardSize:?];
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits resizeKeyboardHeight])
  {
    [(UIKBScreenTraits *)self->super._screenTraits keyboardHeightAdjustment];
  }

  else
  {
    [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator resizingOffset];
  }

  [(UIKBKeyplaneTransformationContext *)v3 setResizingOffset:?];
  [(UIKBKeyplaneTransformationContext *)v3 setAdditionalKeyboardLoader:objc_opt_class()];

  return v3;
}

- (void)_addExtraControlKeysIfNecessary
{
  if ([(UIKeyboardLayoutStar *)self _shouldAttemptToAddSupplementaryControlKeys])
  {
    keyplane = self->_keyplane;
    v4 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v5 = [UIKeyboardSupplementaryControlKeyTransformation transformKeyplane:keyplane withTransformationContext:v4];
    v6 = self->_keyplane;
    self->_keyplane = v5;

    keyplaneTransformations = self->_keyplaneTransformations;
    v8 = +[UIKeyboardSupplementaryControlKeyTransformation transformationIdentifier];
    [(NSMutableSet *)keyplaneTransformations addObject:v8];
  }
}

- (void)_addResizeTransformationsIfNecessary
{
  if ([(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset])
  {
    v3 = off_1E70E9E68;
  }

  else
  {
    if (!+[UIKeyboard resizable](UIKeyboard, "resizable") && (!_UIApplicationIsStickerPickerService() || +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService]))
    {
      goto LABEL_6;
    }

    v3 = off_1E70E9E60;
  }

  v4 = *v3;
  keyplane = self->_keyplane;
  v6 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
  v7 = [(__objc2_class *)v4 transformKeyplane:keyplane withTransformationContext:v6];
  v8 = self->_keyplane;
  self->_keyplane = v7;

  keyplaneTransformations = self->_keyplaneTransformations;
  v10 = [(__objc2_class *)*v3 transformationIdentifier];
  [(NSMutableSet *)keyplaneTransformations addObject:v10];

LABEL_6:
  if ([(UIKeyboardLayoutStar *)self isEmojiKeyplane]&& ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23) && ![(UIKeyboardLayout *)self isFloating]&& +[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    v11 = self->_keyplane;
    v12 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v13 = [UIKBRemoteEmojiKeyplaneTransformation transformKeyplane:v11 withTransformationContext:v12];
    v14 = self->_keyplane;
    self->_keyplane = v13;

    v15 = self->_keyplaneTransformations;
    v16 = +[UIKBRemoteEmojiKeyplaneTransformation transformationIdentifier];
    [(NSMutableSet *)v15 addObject:v16];
  }
}

- (void)_transformFloatingKeyboardIfNecessary
{
  if ([(UIKeyboardLayout *)self isFloating])
  {
    keyplane = self->_keyplane;
    v4 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v5 = [UIKBFloatingKeyplaneTransformation transformKeyplane:keyplane withTransformationContext:v4];
    v6 = self->_keyplane;
    self->_keyplane = v5;

    keyplaneTransformations = self->_keyplaneTransformations;
    v8 = +[UIKBFloatingKeyplaneTransformation transformationIdentifier];
    [(NSMutableSet *)keyplaneTransformations addObject:v8];
  }
}

- (void)_transformCarPlayIfNecessary
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    if (-[UIKBTree visualStyling](self->_keyplane, "visualStyling") & 0xFF0000) == 0x2A0000 && (-[UIKeyboardLayoutStar renderConfig](self, "renderConfig"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 colorAdaptiveBackground], v3, (v4))
    {
      v5 = off_1E70E9C18;
    }

    else
    {
      v5 = off_1E70E9C90;
    }

    v6 = *v5;
    keyplane = self->_keyplane;
    v8 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v9 = [(__objc2_class *)v6 transformKeyplane:keyplane withTransformationContext:v8];
    v10 = self->_keyplane;
    self->_keyplane = v9;

    keyplaneTransformations = self->_keyplaneTransformations;
    v12 = [(__objc2_class *)*v5 transformationIdentifier];
    [(NSMutableSet *)keyplaneTransformations addObject:v12];
  }
}

- (void)recenterMonolithKeyplaneSwitchKeys
{
  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Monolith-International-Key"];
  v4 = [(UIKeyboardLayoutStar *)self keylistContainingKey:v3];
  v17 = [v4 subtrees];

  v5 = [v17 sortedArrayUsingComparator:&__block_literal_global_994];
  keyplane = self->_keyplane;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(UIKBScreenTraits *)self->super._screenTraits screen];
  [v15 scale];
  [(UIKBTree *)keyplane centerKeys:v5 inRect:v8 scale:v10, v12, v14, v16];
}

uint64_t __58__UIKeyboardLayoutStar_recenterMonolithKeyplaneSwitchKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  if (v6 - v8 < 0.0)
  {
    return -1;
  }

  else
  {
    return v6 - v8 > 0.0;
  }
}

- (void)updateMoreAndInternationalKeys
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = +[UIKeyboardImpl canShowInternationalKey];
  if (v3)
  {
    if ([(UITextInputTraits *)self->super._inputTraits isSecureTextEntry])
    {
      LOBYTE(v3) = UIKeyboardHasMultipleActiveSecureInputModes();
    }

    else
    {
      LOBYTE(v3) = [UIKeyboardActiveUserSelectableInputModes count] > 1;
    }
  }

  self->_showIntlKey = v3;
  self->_showDictationKey = [(UIKeyboardLayoutStar *)self shouldShowDictationKey];
  v4 = [(UIKBTree *)self->_keyplane keysForMergeConditions];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          [v11 setVisible:1];
          if ([(UIKeyboardLayoutStar *)self shouldMergeKey:v11])
          {
            v12 = [v11 name];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    v13 = [(UIKBTree *)self->_keyplane mergeKeyNames:v5 inRightToLeft:0];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:*(*(&v37 + 1) + 8 * j)];
          [v18 setVisible:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v15);
    }

    v19 = [v5 objectsPassingTest:&__block_literal_global_997];
    if ([v19 count] == 2)
    {
      v32 = v4;
      v20 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"More-Key"];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v33 + 1) + 8 * k) setObject:&unk_1EFE31360 forProperty:@"More-Key-Merged"];
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v22);
      }

      v4 = v32;
    }

    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 2)
    {
      v25 = [(UIKBScreenTraits *)self->super._screenTraits isLinear];
      [(UIKeyboardLayoutStar *)self recenterMonolithKeyplaneSwitchKeys];
      if (v25)
      {
        if (+[UIKeyboardCache enabled])
        {
          v26 = +[UIKeyboardCache sharedInstance];
          [v26 purge];
        }
      }
    }

    goto LABEL_45;
  }

  showIntlKey = self->_showIntlKey;
  if (self->_showDictationKey)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
  {
    v29 = 4;
  }

  else
  {
    v29 = 4 * ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 23);
  }

  v5 = [(UIKBTree *)self->_keyboard name];
  if ([v5 _containsSubstring:@"LandscapeChoco"])
  {
LABEL_45:

    goto LABEL_46;
  }

  v30 = [(UIKBTree *)self->_keyboard name];
  v31 = [v30 _containsSubstring:@"LandscapeTruffle"];

  if ((v31 & 1) == 0)
  {
    [(UIKBTree *)self->_keyplane updateMoreAndInternationalKeysWithOptions:v28 | showIntlKey | v29];
  }

LABEL_46:
}

uint64_t __54__UIKeyboardLayoutStar_updateMoreAndInternationalKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"International-Key"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"Dictation-Key"];
  }

  return v3;
}

- (void)updateReturnKeysIfNeeded
{
  v6 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Return-Key"];
  if ([v6 count] >= 2)
  {
    keyplane = self->_keyplane;
    v4 = [v6 objectAtIndex:0];
    v5 = [v6 objectAtIndex:1];
    [(UIKBTree *)keyplane mergeReturnKey:v4 withReturnKey:v5];
  }
}

- (void)relayoutForWriteboardKey
{
  v3 = ([(UIKeyboardLayout *)self orientation]- 3) >= 2 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23 || [(UIKeyboardLayout *)self isFloating]|| [(UIKeyboardLayoutStar *)self useDismissForMessagesWriteboard]|| [(UIKeyboardLayoutStar *)self useUndoForMessagesWriteboard]|| [(UIKeyboardLayoutStar *)self ignoreWriteboard];
  v4 = [(UIKeyboardLayoutStar *)self canAddRomanSwitchKey];
  if (([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 || v4) && !v3 && ![(UIKBTree *)self->_keyplane addMessagesWriteboardKeyOrRomanSwitch:!v4])
  {
    v6 = [(UIKBTree *)self->_keyboard name];
    v5 = [(UIKBTree *)self->_keyplane name];
    NSLog(&cfstr_CanNotAddWrite.isa, v6, v5);
  }
}

- (BOOL)canAddRomanSwitchKey
{
  if ([(UIKBTree *)self->_keyplane isKanaKeyboard]|| ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) != 0x18 && ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) != 0x17 || [(UIKeyboardLayout *)self isFloating])
  {
    return 0;
  }

  v5 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
  if (v5)
  {
    v6 = [(UIKBTree *)self->_keyplane scriptSwitchKey];
    if (v6)
    {
      v3 = 0;
    }

    else
    {
      v7 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Tab-Key"];
      v3 = v7 == 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)inputModeToMergeCapsLockKey
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 inputModeForASCIIToggleWithTraits:self->super._inputTraits];

  return v4;
}

- (BOOL)shouldMergeKey:(id)a3
{
  v4 = a3;
  v5 = [v4 interactionType];
  LOBYTE(v6) = 0;
  if (v5 > 37)
  {
    if (v5 == 38)
    {
      v9 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
      LOBYTE(v6) = v9 != 0;

      goto LABEL_19;
    }

    if (v5 == 42)
    {
      LOBYTE(v6) = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
      goto LABEL_19;
    }

    if (v5 != 44)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (v5 == 5)
  {
LABEL_10:
    if (self->_externalDictationAndInternationalKeys)
    {
      LOBYTE(v6) = 1;
      goto LABEL_19;
    }

    v10 = [(UIKeyboardLayoutStar *)self shouldShowDictationKey];
LABEL_18:
    LOBYTE(v6) = !v10;
    goto LABEL_19;
  }

  if (v5 == 9)
  {
    v7 = [v4 representedString];
    if ([v7 isEqualToString:@"ASCIICapable"])
    {
      v8 = 1;
    }

    else
    {
      v11 = [v4 representedString];
      v8 = [v11 isEqualToString:@"NonASCII"];
    }

    if (self->_externalDictationAndInternationalKeys)
    {
      v10 = [(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton];
      goto LABEL_18;
    }

    if (([(UITextInputTraits *)self->super._inputTraits keyboardType]!= 122) | v8 & 1)
    {
      v13 = +[UIKeyboardInputModeController sharedInputModeController];
      v14 = [v13 normalizedEnabledInputModeIdentifiers];

      v15 = [v14 containsObject:@"emoji"];
      v16 = ([v14 count] == 2) & v15;
      v17 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
      if (v16 == 1 && v17 == 122 || (v29 = v17, v18 = [(UITextInputTraits *)self->super._inputTraits keyboardType], (v8 & 1) == 0) && (v25 = v18, [(UIKeyboardLayoutStar *)self globeKeyDisplaysAsEmojiKey]) && v25 == 13)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        v19 = +[UIKeyboardInputModeController sharedInputModeController];
        v20 = [v4 representedString];
        v21 = [v19 identifierIsValidSystemInputMode:v20];

        if (v21)
        {
          v22 = [v4 representedString];
          v23 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v22];

          v24 = [v4 representedString];
          LODWORD(v22) = [v24 containsString:@"emoji"];

          if (v22)
          {
            if (v16 & 1 | ((v15 & 1) == 0))
            {
              LOBYTE(v6) = 1;
            }

            else
            {
              v28 = [(UITextInputTraits *)self->super._inputTraits isSecureTextEntry];
              LOBYTE(v6) = v29 == 122 || v28;
            }
          }

          else
          {
            v26 = +[UIKeyboardInputModeController sharedInputModeController];
            v27 = [v26 activeInputModes];
            LOBYTE(v6) = [v27 containsObject:v23];
          }
        }

        else if (v8)
        {
          v23 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
          LOBYTE(v6) = v23 == 0;
        }

        else
        {
          v23 = +[UIKeyboardImpl activeInstance];
          v6 = [v23 shouldShowInternationalKey] ^ 1;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

LABEL_19:

  return v6;
}

- (id)keyplaneFactory
{
  v3 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v4 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (v3)
  {
    v4 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v5 = [*(&self->super.super.super.super.isa + *v4) factory];

  return v5;
}

- (id)viewForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v6 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (v5)
  {
    v6 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v7 = [*(&self->super.super.super.super.isa + *v6) viewForKey:v4];

  return v7;
}

- (int)stateForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v6 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (v5)
  {
    v6 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v7 = [*(&self->super.super.super.super.isa + *v6) stateForKey:v4];

  return v7;
}

- (void)setState:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v6)
  {
    v10 = v6;
    if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      v7 = [v10 state];
      [(TUIKeyplaneView *)self->_liveKeyplaneView setState:v4 forKey:v10];
      v8 = [(UIKeyboardLayoutStar *)self viewForKey:v10];
      if ([v10 displayTypeHint] == 10)
      {
        v9 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
        [v9 transitionKeyView:v8 fromState:v7 toState:v4 completion:0];
      }
    }

    else
    {
      [(UIKBKeyplaneView *)self->_keyplaneView setState:v4 forKey:v10];
    }

    v6 = v10;
  }
}

- (void)updateState:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  [(UIKeyboardLayoutStar *)self setActiveKey:v6];
  [(UIKeyboardLayoutStar *)self setState:v4 forKey:v6];
}

- (UIKeyboardEmojiKeyDisplayController)emojiKeyManager
{
  emojiKeyManager = self->_emojiKeyManager;
  if (!emojiKeyManager)
  {
    v4 = objc_alloc_init(UIKeyboardEmojiKeyDisplayController);
    v5 = self->_emojiKeyManager;
    self->_emojiKeyManager = v4;

    emojiKeyManager = self->_emojiKeyManager;
  }

  return emojiKeyManager;
}

- (id)cacheIdentifierForKeyplaneNamed:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self showsInternationalKey];
  v6 = [(UIKeyboardLayoutStar *)self showsDictationKey];
  v7 = [MEMORY[0x1E695DF58] preferredLocale];
  v8 = [v7 localeIdentifier];
  v9 = [v4 stringByAppendingFormat:@"-%d-%d-%@", v5, v6, v8];

  return v9;
}

- (id)cacheTokenForKeyplane:(id)a3 caseAlternates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v17 = 0;
    goto LABEL_16;
  }

  keyboard = self->_keyboard;
  v9 = [v6 name];
  v10 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:v9];
  v11 = [(UIKBTree *)keyboard subtreeWithName:v10];

  if (v11)
  {
    v12 = [v7 name];
    v13 = [v11 name];
    v14 = [v12 hasPrefix:v13];

    if (v14)
    {
      if (v4)
      {
        if (([v11 looksLikeShiftAlternate] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (![v11 looksExactlyLikeShiftAlternate])
      {
LABEL_12:
        v15 = [(UIView *)self _inheritedRenderConfig];
        v16 = v11;
        goto LABEL_13;
      }

      if ([v11 isShiftKeyplane])
      {
        v18 = [v11 visualStyle];
        v19 = self->_keyboard;
        v20 = [v11 shiftAlternateKeyplaneName];
        v21 = [(UIKBTree *)v19 subtreeWithName:v20];

        [v21 setVisualStyle:v18];
        v11 = v21;
      }

      goto LABEL_12;
    }
  }

  v15 = [(UIView *)self _inheritedRenderConfig];
  v16 = v7;
LABEL_13:
  v17 = [UIKBCacheToken tokenForKeyplane:v16 renderConfig:v15];

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    [(UIView *)self contentScaleFactor];
    [v17 setScale:?];
  }

LABEL_16:

  return v17;
}

- (void)showKeyboardWithInputMode:(id)a3 renderConfig:(id)a4 inputTraits:(id)a5 screenTraits:(id)a6 splitTraits:(id)a7 reload:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (self->_isTrackpadMode)
  {
    [(UIKeyboardLayoutStar *)self didEndIndirectSelectionGesture:0];
  }

  [(UIKeyboardLayoutStar *)self cleanupPreviousKeyboardWithNewInputTraits:v16];
  inputTraits = self->super._inputTraits;
  if (inputTraits)
  {
    v20 = ![(UITextInputTraits *)inputTraits publicTraitsMatchTraits:v16];
  }

  else
  {
    v20 = 0;
  }

  self->_inputTraitsPreventInitialReuse = v20;
  v33.receiver = self;
  v33.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v33 showKeyboardWithInputTraits:v16 screenTraits:v17 splitTraits:v18];
  if (!v14)
  {
    v14 = UIKeyboardGetCurrentInputMode();
  }

  v21 = +[UIKeyboardImpl activeInstance];
  v22 = [v21 allowsReachableKeyboard];

  if (v22)
  {
    [v17 idiom];
    [v17 orientation];
    v23 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v24 = [v23 preferencesActions];
    self->_currentHandBias = [v24 handBias];
  }

  v25 = UIKeyboardGetKBStarName(v14, v17, [v16 keyboardType], 0);
  -[UIKeyboardLayoutStar setKeyboardName:appearance:](self, "setKeyboardName:appearance:", v25, [v16 keyboardAppearance]);
  if (self->_keyboard)
  {
    [(UIKeyboardLayoutStar *)self stretchFactor];
    [(UIKBScreenTraits *)self->super._screenTraits setStretchFactor:?];
    if (!v15)
    {
      v26 = [(UIView *)self _inheritedRenderConfig];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = +[UIKBRenderConfig defaultConfig];
      }

      v15 = v28;
    }

    [(UIKeyboardLayoutStar *)self setRenderConfig:v15 updateKeyplane:0, v15];
    v29 = +[UIKeyboardImpl activeInstance];
    self->_shift = [v29 isShifted];

    v30 = +[UIKeyboardImpl activeInstance];
    self->_autoshift = [v30 isAutoShifted];

    [(UIKeyboardLayoutStar *)self setLayoutTag:@"Default"];
    if (v8)
    {
      [(UIKeyboardLayoutStar *)self setKeyboardName:0];
    }

    [(UIKeyboardLayoutStar *)self setToInitialKeyplane];
    if ([(UIKeyboardLayoutStar *)self shouldUseDefaultShiftStateFromLayout])
    {
      self->_shift = [(UIKBTree *)self->_keyplane isShiftKeyplane];
      self->_autoshift = 0;
    }

    [(UIKeyboardLayout *)self reloadKeyboardGestureRecognition];
    v15 = v32;
    if (+[UIKeyboardImpl rivenPreference])
    {
      v31 = [(UIKeyboardLayoutStar *)self pinchSplitGestureEnabled];
    }

    else
    {
      v31 = 0;
    }

    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setEnabled:v31];
  }
}

- (id)initialKeyplaneNameWithKBStarName:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = a3;
  v4 = [(UIKBTree *)self->_keyboard subtrees];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v26;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if (!v7)
      {
        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 supportsType:{-[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")}])
        {
          v7 = [v10 name];
          shift = self->_shift;
          v12 = [v10 BOOLForProperty:@"autoshift"] & shift;
          if ([v10 isShiftKeyplane] == v12)
          {
            continue;
          }

          v13 = [v10 firstCachedKeyWithName:@"Emoji-International-Key"];
          if (!v13)
          {
            if ([(UIKeyboardLayoutStar *)self shouldUseDefaultShiftStateFromLayout])
            {
              continue;
            }

            v14 = [v10 shiftAlternateKeyplaneName];
            v13 = v7;
            v7 = v14;
          }
        }

        else
        {
          v7 = 0;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v6);
LABEL_18:

  preRotateKeyplaneName = self->_preRotateKeyplaneName;
  if (preRotateKeyplaneName)
  {
    v16 = preRotateKeyplaneName;
    v17 = [(UIKBTree *)self->_keyboard subtreeWithName:v16];

    if (!v17)
    {
      v18 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:self->_preRotateKeyplaneName];

      v16 = v18;
    }

    v19 = [(UIKBTree *)self->_keyboard subtreeWithName:v16];

    if (v19)
    {
      if (v16 && v16 != self->_preRotateKeyplaneName)
      {
        v19 = v16;

        v16 = self->_preRotateKeyplaneName;
        self->_preRotateKeyplaneName = 0;
        v7 = v19;
        goto LABEL_25;
      }
    }

    else
    {
LABEL_25:

      v16 = v19;
    }

    v20 = v24;

    if (!v7)
    {
LABEL_27:
      v21 = [(UIKBTree *)self->_keyboard subtrees];
      v22 = [v21 objectAtIndex:0];
      v7 = [v22 name];

      NSLog(&cfstr_CanTFindKeypla.isa, [(UITextInputTraits *)self->super._inputTraits keyboardType], v20, v7);
    }
  }

  else
  {
    v20 = v24;
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  return v7;
}

- (void)cleanupPreviousKeyboardWithNewInputTraits:(id)a3
{
  v5 = a3;
  keyViewAnimator = self->_keyViewAnimator;
  self->_keyViewAnimator = 0;

  if ([(UIKeyboardLayoutStar *)self isEmojiKeyplane])
  {
    +[UIKeyboardEmojiKeyDisplayController writeEmojiDefaultsAndReleaseActiveInputView];
  }

  if (-[UIKeyboardLayoutStar isDeveloperGestureKeybaord](self, "isDeveloperGestureKeybaord") && [v5 keyboardType] != 12)
  {
    [(UIKeyboardLayoutStar *)self clearKeyAnnotationsIfNecessary];
  }
}

- (void)deactivateActiveKeysClearingTouchInfo:(BOOL)a3 clearingDimming:(BOOL)a4
{
  if (!self->_suppressDeactivateKeys)
  {
    v4 = a4;
    v5 = a3;
    if (self->_liveKeyplaneView)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 clearLongPressTimer];

      [(TUIKeyplaneView *)self->_liveKeyplaneView deactivateKeys];
    }

    [(UIKBKeyplaneView *)self->_keyplaneView deactivateKeys];
    if (v5)
    {
      [(UIKeyboardLayoutStar *)self clearAllTouchInfo];
      [(UIKeyboardLayoutStar *)self handleDismissFlickView:0];
      touchInfo = self->_touchInfo;
      self->_touchInfo = 0;

      v9 = +[UIKeyboardImpl activeInstance];
      [v9 stopAutoDelete];

      [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
    }

    [(UIKeyboardLayoutStar *)self setActiveKey:0];
    if (v4)
    {
      if (!self->_isTrackpadMode)
      {
        [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
      }

      v10 = +[UIKeyboardSplitControlMenu activeInstance];
      [v10 hide];

      v11 = +[UIKeyboardDictationMenu activeInstance];
      [v11 hide];
    }
  }
}

- (void)deactivateActiveKey
{
  v3 = [(UIKeyboardLayoutStar *)self activeKey];

  if (v3)
  {
    v4 = [(UIKeyboardLayoutStar *)self activeKey];
    [(UIKeyboardLayoutStar *)self setState:2 forKey:v4];

    [(UIKeyboardLayoutStar *)self setActiveKey:0];
  }
}

- (void)prepareSliderBehaviorFeedback
{
  v3 = [(UIKeyboardLayoutStar *)self slideBehaviour];

  if (!v3)
  {
    v4 = objc_alloc_init(UISelectionFeedbackGenerator);
    [(UIKeyboardLayoutStar *)self setSlideBehaviour:v4];

    v5 = [(UIKeyboardLayoutStar *)self slideBehaviour];
    [v5 userInteractionStarted];
  }
}

- (void)provideSliderBehaviorFeedback
{
  v2 = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [v2 selectionChanged];
}

- (void)finishSliderBehaviorFeedback
{
  v3 = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [v3 userInteractionEnded];

  [(UIKeyboardLayoutStar *)self setSlideBehaviour:0];
}

- (BOOL)shouldHitTestKey:(id)a3
{
  v4 = a3;
  v5 = [v4 visible] && (!objc_msgSend(v4, "ghost") || self->_ghostKeysEnabled) && objc_msgSend(v4, "displayType") != 12;

  return v5;
}

- (id)keyViewHitTestForPoint:(CGPoint)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_liveKeyplaneView)
  {
    v3 = 0;
  }

  else
  {
    y = a3.y;
    x = a3.x;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews];
    v3 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          [v9 variantFrame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v18 = [v9 key];
          if ([v18 state] == 16)
          {
            v29.origin.x = v11;
            v29.origin.y = v13;
            v29.size.width = v15;
            v29.size.height = v17;
            v28.x = x;
            v28.y = y;
            v19 = CGRectContainsPoint(v29, v28);

            if (v19)
            {
              v3 = [v9 key];
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v3 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v3);
    }

LABEL_14:
  }

  return v3;
}

- (id)keyHitTestContainingPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(UIKBTree *)self->_keyplane keys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(UIKeyboardLayoutStar *)self shouldHitTestKey:v11])
        {
          [v11 frame];
          v21.x = x;
          v21.y = y;
          if (CGRectContainsPoint(v22, v21))
          {
            v12 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)keyHitTestClosestToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIKBTree *)self->_keyplane keys];
  v7 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:v6 inKeys:x, y];

  return v7;
}

- (id)keyHitTestClosestToPoint:(CGPoint)a3 inKeys:(id)a4
{
  y = a3.y;
  x = a3.x;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = 0;
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v10)
  {

    v8 = 0;
LABEL_18:
    if ([(UIKeyboardLayoutStar *)self shouldIgnoreDistantKey])
    {
      v23 = 0;
LABEL_20:

      v8 = v23;
    }

    goto LABEL_21;
  }

  v11 = v10;
  v8 = 0;
  v12 = *v26;
  v13 = 1.79769313e308;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      if ([(UIKeyboardLayoutStar *)self shouldHitTestKey:v15, v25])
      {
        [v15 frame];
        UIDistanceBetweenPointAndRect(x, y, v16, v17, v18, v19);
        v21 = v20;
        if (fabs(v20) < 2.22044605e-16)
        {
          v23 = v15;

          goto LABEL_20;
        }

        if (v20 < v13)
        {
          v22 = v15;

          v8 = v22;
          v13 = v21;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v13 > 17.0)
  {
    goto LABEL_18;
  }

LABEL_21:

  return v8;
}

- (id)keyHitTestWithoutCharging:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_inactiveLanguageIndicator && (-[UIKeyboardLayoutStar viewForKey:](self, "viewForKey:"), v6 = objc_claimAutoreleasedReturnValue(), [v6 frame], v11.x = x, v11.y = y, v7 = CGRectContainsPoint(v12, v11), v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(UIKeyboardLayoutStar *)self keyViewHitTestForPoint:x, y];
    if (!v8)
    {
      v8 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:x, y];
      if (!v8)
      {
        v8 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:x, y];
      }
    }
  }

  return v8;
}

- (id)keyHitTest:(CGPoint)a3
{
  if (self->_keyboard)
  {
    if (self->_keyplane && (y = a3.y, x = a3.x, [(UIKeyboardLayoutStar *)self pointInside:0 withEvent:?]))
    {
      v7 = [(UIKeyboardLayoutStar *)self keyHitTestWithoutCharging:x, y];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isGeometricShiftOrMoreKeyForTouch:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];

  if (v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v4 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(UIKeyboardLayoutStar *)self keyHitTest:v8, v10];
    LOBYTE(v5) = [v11 displayType] == 23 || objc_msgSend(v11, "displayType") == 18;
  }

  return v5;
}

- (BOOL)shouldIgnoreDistantKey
{
  [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator resizingOffset];
  if (v3 > 0.0 && [(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset])
  {
    return 1;
  }

  v5 = [(UIKBTree *)self->_keyplane name];
  v6 = [v5 containsString:@"Korean10KeySplit-Keyboard"];

  return v6;
}

- (int)keycodeForKey:(id)a3
{
  keyplane = self->_keyplane;
  v4 = a3;
  v5 = [(UIKBTree *)keyplane keys];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)unprocessedTouchEventsForTouchInfo:(id)a3 touchStage:(int)a4 forcedKeyCode:(int)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v7 processedTouchCount];
  v10 = [v7 touchHistory];
  v11 = [v10 count];

  if (v9 < v11)
  {
    do
    {
      v12 = [v7 touchHistory];
      v13 = [v12 objectAtIndexedSubscript:v9];

      if (v9)
      {
        if (a4 == 1 || ([v7 touchHistory], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v9 + 1 < v15))
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = MEMORY[0x1E69D9668];
      [v13 locationInView:self];
      v19 = v18;
      v21 = v20;
      [v13 pathMajorRadius];
      v23 = v22;
      [v13 timestamp];
      v25 = [v17 touchEventWithStage:v16 location:objc_msgSend(v13 radius:"pathIndex") timestamp:objc_msgSend(v7 pathIndex:"fingerID") fingerID:a5 forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(v7 continuousPathState:{"continuousPathState")), v19, v21, v23, v24}];
      [v8 addObject:v25];

      ++v9;
      v26 = [v7 touchHistory];
      v27 = [v26 count];
    }

    while (v9 < v27);
  }

  v28 = [v7 touchHistory];
  [v7 setProcessedTouchCount:{objc_msgSend(v28, "count")}];

  return v8;
}

- (void)playKeyFeedbackIfNecessaryForTouchDownOnKey:(id)a3 touchInfo:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v8];
  if (([v6 didPlayKeyFeedback] & 1) == 0 && (v7 & 0x40000004) == 4)
  {
    if (!_AXSZoomTouchEnabled())
    {
      if (+[UIKeyboardImpl rivenPreference]&& [(UIKeyboardLayoutStar *)self playKeyClickSoundOn])
      {
        [(UIKeyboardLayoutStar *)self performSelector:sel_playKeyClickSoundOnDownForKey_ withObject:v8 afterDelay:0.05];
      }

      else
      {
        [(UIKeyboardLayoutStar *)self playKeyClickSoundOnDownForKey:v8];
      }
    }

    [v6 setDidPlayKeyFeedback:1];
  }
}

- (void)performHitTestForTouchInfo:(id)a3 touchStage:(int)a4 executionContextPassingUIKBTree:(id)a5
{
  v6 = *&a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 touch];
    [v12 locationInView:self];
    v14 = v13;
    v16 = v15;
    [v12 timestamp];
    v18 = v17;
    v19 = +[UIKeyboardImpl activeInstance];
    v20 = [(UIKeyboardLayoutStar *)self pointInside:0 withEvent:v14, v16];
    v21 = [(UIKeyboardLayoutStar *)self keyHitTest:v14, v16];
    if (!v6)
    {
      [(UIKeyboardLayoutStar *)self playKeyFeedbackIfNecessaryForTouchDownOnKey:v21 touchInfo:v9];
    }

    if ([v19 canHandleKeyHitTest])
    {
      v22 = [v19 containsView:self];
    }

    else
    {
      v22 = 0;
    }

    if (![(UIKeyboardLayoutStar *)self shouldPreventInputManagerHitTestingForKey:v21])
    {
      if (([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23) && ![(UIKBTree *)self->_keyplane usesKeyCharging])
      {
        [v21 frame];
        v53.origin.x = v26 + -20.0;
        v53.size.width = v27 + 40.0;
        v53.origin.y = v28 + -20.0;
        v53.size.height = v29 + 40.0;
        v51.x = v14;
        v51.y = v16;
        if (!CGRectContainsPoint(v53, v51))
        {
          goto LABEL_36;
        }
      }

      if (!v22)
      {
        goto LABEL_43;
      }

      v30 = [v9 continuousPathState];
      if (v30 == 4 || v20)
      {
        if (v30 == 4)
        {
          v31 = 4294967294;
        }

        else
        {
          v31 = 0xFFFFFFFFLL;
        }

        v32 = [(UIKeyboardLayoutStar *)self unprocessedTouchEventsForTouchInfo:v9 touchStage:v6 forcedKeyCode:v31];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __94__UIKeyboardLayoutStar_performHitTestForTouchInfo_touchStage_executionContextPassingUIKBTree___block_invoke;
        v46[3] = &unk_1E7114940;
        v49 = a2;
        v46[4] = self;
        v47 = v9;
        v50 = v6;
        v33 = v19;
        v48 = v33;
        v34 = [v11 childWithContinuation:v46];
        [v33 performHitTestForTouchEvents:v32 executionContextPassingNSNumber:v34];

        goto LABEL_44;
      }

      if (v6 != 1)
      {
LABEL_36:
        [v11 returnExecutionToParent];
      }

      else
      {
        [v9 setStage:3];
        [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:6 forTouchInfo:v9];
        v37 = MEMORY[0x1E69D9668];
        [v12 pathMajorRadius];
        v39 = [v37 touchEventWithStage:3 location:objc_msgSend(v12 radius:"pathIndex") timestamp:objc_msgSend(v9 pathIndex:"fingerID") fingerID:-1 forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(v9 continuousPathState:{"continuousPathState")), v14, v16, v38, v18}];
        [v19 skipHitTestForTouchEvent:v39];
        [v11 returnExecutionToParent];
      }

LABEL_44:

      goto LABEL_45;
    }

    if ([v21 interactionType] == 5 && CFAbsoluteTimeGetCurrent() - self->_prevTouchUpTime < 0.325)
    {
      [v21 frame];
      v24 = [(UIKeyboardLayoutStar *)self keyHitTest:v14 + v23, v16];
      if (![(UIKeyboardLayoutStar *)self shouldPreventInputManagerHitTestingForKey:v24])
      {
        v25 = v24;

        v21 = v25;
      }
    }

    else
    {
      if (self->_isTrackpadMode)
      {
        if (!v22)
        {
          goto LABEL_43;
        }

LABEL_40:
        if (([v21 isExemptFromInputManagerLayout] & 1) == 0)
        {
          [v9 setStage:v6];
          v24 = [(UIKeyboardLayoutStar *)self unprocessedTouchEventsForTouchInfo:v9 touchStage:v6 forcedKeyCode:[(UIKeyboardLayoutStar *)self keycodeForKey:v21]];
          [v19 skipHitTestForTouchEvents:v24];
          goto LABEL_42;
        }

LABEL_43:
        [v11 returnExecutionToParentWithInfo:v21];
        goto LABEL_44;
      }

      if ([v21 interactionType] != 18)
      {
        v40 = [v21 parentKey];
        v41 = v12;
        v42 = v22;
        v43 = v19;
        v44 = [v40 interactionType] != 18;

        v45 = v44 & v42;
        v12 = v41;
        v19 = v43;
        if ((v45 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v24 = [(UIKeyboardLayoutStar *)self viewForKey:v21];
      [v24 frame];
      v52.x = v14;
      v52.y = v16;
      if (CGRectContainsPoint(v54, v52))
      {
        [(UIView *)self convertPoint:v24 toView:v14, v16];
        v35 = [v24 subTreeHitTest:?];
        if (v35)
        {
          v36 = v35;

          v21 = v36;
LABEL_42:

          goto LABEL_43;
        }
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  [v10 returnExecutionToParent];
LABEL_45:
}

void __94__UIKeyboardLayoutStar_performHitTestForTouchInfo_touchStage_executionContextPassingUIKBTree___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v18 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = [v18 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"UIKeyboardLayoutStar.m" lineNumber:5643 description:{@"UIKeyboardTask %s expected NSNumber but received %@", "-[UIKeyboardLayoutStar performHitTestForTouchInfo:touchStage:executionContextPassingUIKBTree:]_block_invoke", v10}];
    }
  }

  v11 = [v18 info];
  [*(a1 + 40) setStage:*(a1 + 64)];
  if (v11)
  {
    v12 = [v11 integerValue];
    if (v12 == -2)
    {
      if ([*(a1 + 32) _allowContinuousPathUI] && objc_msgSend(*(a1 + 40), "continuousPathState") == 3)
      {
        [*(a1 + 32) _transitionToContinuousPathState:4 forTouchInfo:*(a1 + 40)];
      }

      if ([*(a1 + 32) _allowContinuousPathUI] && objc_msgSend(*(a1 + 48), "usesCandidateSelection") && objc_msgSend(*(a1 + 40), "continuousPathState") == 4)
      {
        [*(a1 + 48) generateCandidatesWithOptions:4];
      }
    }

    else
    {
      v13 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v14 = [*(*(a1 + 32) + 640) keys];
        v15 = [v14 count];

        if (v13 < v15)
        {
          v16 = [*(*(a1 + 32) + 640) keys];
          v17 = [v16 objectAtIndex:v13];

          [v18 returnExecutionToParentWithInfo:v17];
          goto LABEL_17;
        }
      }
    }
  }

  [v18 returnExecutionToParent];
LABEL_17:
}

- (BOOL)isDeadkeyInput:(id)a3
{
  v4 = a3;
  if (-[UIKeyboardLayoutStar diacriticForwardCompose](self, "diacriticForwardCompose") && [v4 length] == 1)
  {
    v5 = MEMORY[0x18CFE7A80]([v4 _firstLongCharacter]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatePhysicalKeyboardEvent:(id)a3 withMarkedInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    [v6 set_inputFlags:{objc_msgSend(v6, "_inputFlags") | 2}];
    v8 = UIKeyboardGetCurrentInputMode();
    v9 = UIKeyboardLocalizedObject(@"CustomDeadkeyComposition", v8, 0, 0, 0);
    v10 = [v6 _modifiedInput];
    v11 = [v7 stringByAppendingString:v10];

    v12 = [v9 objectForKey:v11];
    if (!v12)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__UIKeyboardLayoutStar_updatePhysicalKeyboardEvent_withMarkedInput___block_invoke;
      v19[3] = &unk_1E7114968;
      v19[4] = self;
      v12 = [v11 _stringByComposingDiacriticsLogicalOrder:0 allowedCharacters:v19];
    }

    if ([v12 isEqualToString:v11])
    {
      v13 = [v9 objectForKey:v7];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v7;
      }

      v16 = v15;

      v17 = [v6 _modifiedInput];
      v18 = [v16 stringByAppendingString:v17];

      [v6 set_modifiedInput:v18];
    }

    else
    {
      [v6 set_modifiedInput:v12];
    }
  }
}

uint64_t __68__UIKeyboardLayoutStar_updatePhysicalKeyboardEvent_withMarkedInput___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] _stringWithUnichar:a2];
  v4 = [v2 canProduceString:v3];

  return v4;
}

- (id)currentRepresentedStringForDualDisplayKey:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v4 secondaryRepresentedStrings];
  v7 = [v6 firstObject];

  if (!-[UIKeyboardLayoutStar isShiftKeyBeingHeld](self, "isShiftKeyBeingHeld") && (!self->_shift || ([v5 isAutoShifted] & 1) != 0 || (objc_msgSend(v5, "isShiftLocked") & 1) != 0) || (UIKeyboardCurrentInputModeIsMultiscript() & 1) != 0)
  {
    v9 = [v4 representedString];
    v8 = v9;
    if (!v7)
    {
      v10 = [v9 substringToIndex:1];

      v8 = v10;
    }
  }

  else if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11 = [v4 representedString];
    v8 = [v11 substringFromIndex:1];
  }

  return v8;
}

- (id)createKeyEventForStringAction:(id)a3 forKey:(id)a4 touchInfo:(id)a5 inputFlags:(int)a6
{
  v6 = *&a6;
  v9 = a5;
  v10 = a3;
  v11 = [v9 key];
  v12 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v10 forKey:v11 inputFlags:v6];

  v13 = [v9 continuousPathState];
  if (v13 >= 4)
  {
    [v12 setSource:6];
  }

  return v12;
}

- (id)createKeyEventForStringAction:(id)a3 forKey:(id)a4 inputFlags:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = [(UIKeyboardLayoutStar *)self activeKey];
  }

  if ((a5 & 2) != 0)
  {
    if ([(UIKBTree *)self->_keyplane shouldSkipCandidateSelectionForVariants])
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  v12 = self->_keyplane;
  v13 = [(UIKBTree *)v11 gestureKey];
  if (!v13)
  {
    v18 = v11;
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
  if (!v15)
  {
    v18 = v11;
LABEL_17:

    goto LABEL_18;
  }

  v16 = v15;
  v17 = [(UIKBTree *)v11 representedString];
  if ([(__CFString *)v8 isEqualToString:v17])
  {

    v18 = v11;
LABEL_16:

    goto LABEL_17;
  }

  HIDWORD(v40) = v10;
  v41 = v12;
  v19 = [(UIKBTree *)v11 gestureKey];
  v20 = [v19 representedString];
  LODWORD(v40) = [(__CFString *)v8 isEqualToString:v20];

  if (v40)
  {
    v18 = [(UIKBTree *)v11 gestureKey];

    keyboard = self->_keyboard;
    v14 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
    v12 = [(UIKBTree *)keyboard subtreeWithName:v14];
    v16 = v41;
    v10 = HIDWORD(v40);
    goto LABEL_16;
  }

  v18 = v11;
  v12 = v41;
  v10 = HIDWORD(v40);
LABEL_18:
  v22 = [(UIKBTree *)v18 objectForProperty:@"shouldskipcandidateselection", v40];

  if (v22)
  {
    v23 = v18;
  }

  else
  {
    v23 = v12;
  }

  if ([(UIKBTree *)v23 shouldSkipCandidateSelection])
  {
    v24 = 8;
  }

  else
  {
    v24 = v10;
  }

  v25 = v24 | a5;
  if ([(__CFString *)v8 _containsEmoji])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  if ([(UIKeyboardLayoutStar *)self isLongPressedKey:v11])
  {
    v27 = [(UIKBTree *)v11 name];
    if (![v27 hasPrefix:@"NumberPad-"])
    {
LABEL_31:

      goto LABEL_32;
    }

    v28 = [(UIKBTree *)v11 name];
    v29 = [v28 hasSuffix:@"-0-Plus"];

    if (v29)
    {
      v27 = v8;
      v8 = @"+";
      goto LABEL_31;
    }
  }

LABEL_32:
  if ((a5 & 0x102) == 0 && [(UIKBTree *)v11 displayType]== 7)
  {
    v30 = [(UIKeyboardLayoutStar *)self currentRepresentedStringForDualDisplayKey:v11];

    v8 = v30;
  }

  v31 = +[UIKeyboardImpl activeInstance];
  if ([v31 isShiftLocked])
  {
    v32 = [(UIKBTree *)v11 displayType];

    if (v32 != 7)
    {
      goto LABEL_39;
    }

    v31 = [MEMORY[0x1E695DF58] preferredLocale];
    v33 = [(__CFString *)v8 uppercaseStringWithLocale:v31];

    v8 = v33;
  }

LABEL_39:
  v34 = [UIPhysicalKeyboardEvent _eventWithInput:v8 inputFlags:v26];
  [v34 setSource:1];
  v35 = [(UIKBTree *)v11 stringForProperty:@"KBhint"];
  [v34 set_hint:v35];

  v36 = +[UIKeyboardImpl activeInstance];
  if (([v36 usesCandidateSelection] & 1) == 0)
  {
    if ([(UIKeyboardLayoutStar *)self isDeadkeyInput:v8])
    {
      [v34 set_inputFlags:{objc_msgSend(v34, "_inputFlags") | 0x10}];
      v37 = [v34 _modifiedInput];
      [v34 set_markedInput:v37];

      [v34 set_modifiedInput:&stru_1EFB14550];
    }

    v38 = [v36 inputForMarkedText];
    if ([v38 length])
    {
      [(UIKeyboardLayoutStar *)self updatePhysicalKeyboardEvent:v34 withMarkedInput:v38];
    }
  }

  return v34;
}

- (void)clearHandwritingStrokesIfNeededAndNotify:(BOOL)a3
{
  v3 = a3;
  if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
  {
    v5 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v7 = [v5 objectAtIndex:0];

    v6 = [(UIKeyboardLayoutStar *)self viewForKey:v7];
    [v6 clearAndNotify:v3];
    [v6 clearTouches];
  }
}

- (void)deleteHandwritingStrokesAtIndexes:(id)a3
{
  v7 = a3;
  if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
  {
    v4 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v5 = [v4 objectAtIndex:0];

    v6 = [(UIKeyboardLayoutStar *)self viewForKey:v5];
    [v6 deleteStrokesAtIndexes:v7];
  }
}

- (void)logHandwritingData
{
  if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
  {
    v3 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v5 = [v3 objectAtIndex:0];

    v4 = [(UIKeyboardLayoutStar *)self viewForKey:v5];
    [v4 log];
  }
}

- (id)activeMultitapCompleteKey
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  v4 = [v3 count];
  multitapKey = self->_multitapKey;
  if (v4 == 1)
  {
    if ([(UIKBTree *)multitapKey forceMultitap])
    {
      v6 = 0;
      goto LABEL_16;
    }
  }

  else if (multitapKey)
  {
    [(UIKBTree *)multitapKey frame];
    v8 = v7;
    [(UIKBTree *)self->_keyboard frame];
    v10 = v9;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = v10 * 0.5;
      v15 = *v23;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        [v17 frame];
        v19 = v18;
        [(UIKBTree *)self->_keyboard frame];
        if (v8 >= v14 != v19 < v20 * 0.5)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v6 = v17;

      if (v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_13:
    }
  }

  v6 = [v3 firstObject];
LABEL_16:

  return v6;
}

- (void)multitapInterrupted
{
  v15 = *MEMORY[0x1E69E9840];
  [(UIKeyboardLayoutStar *)self cancelMultitapTimer];
  self->_multitapCount = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 state] != 1)
        {
          [(UIKeyboardLayoutStar *)self setState:1 forKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (self->_unshiftAfterMultitap)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 setShift:0];

    [(UIKeyboardLayoutStar *)self setShift:0];
    self->_unshiftAfterMultitap = 0;
  }
}

- (void)endMultitapForKey:(id)a3
{
  if (a3)
  {
    [(UIKeyboardLayoutStar *)self setState:2 forKey:a3];
  }
}

- (void)multitapExpired
{
  [(UIKeyboardLayoutStar *)self multitapInterrupted];
  [(UIKeyboardLayoutStar *)self endMultitapForKey:self->_multitapKey];
  multitapKey = self->_multitapKey;
  self->_multitapKey = 0;
}

- (void)handleMultitapTimerFired
{
  v3 = self->_multitapAction;
  objc_initWeak(&location, self);
  if (qword_1ED493228 != -1)
  {
    dispatch_once(&qword_1ED493228, &__block_literal_global_1070_0);
  }

  v4 = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__UIKeyboardLayoutStar_handleMultitapTimerFired__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  v8 = self;
  objc_copyWeak(&v9, &location);
  [v4 addTask:v6 breadcrumb:qword_1ED493220];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__UIKeyboardLayoutStar_handleMultitapTimerFired__block_invoke()
{
  v0 = [&__block_literal_global_1073_0 copy];
  v1 = qword_1ED493220;
  qword_1ED493220 = v0;
}

void __48__UIKeyboardLayoutStar_handleMultitapTimerFired__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1072))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained multitapExpired];
    }

    v3 = v6;
  }

  [v3 returnExecutionToParent];
}

- (BOOL)isMultitapKey:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self canMultitap])
  {
    v5 = [v4 fullRepresentedString];
    v6 = [v5 length];
    v7 = [v4 representedString];
    if (v6 <= [v7 length])
    {
      v8 = [v4 forceMultitap];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = [v4 forceMultitap];
  }

  return v8;
}

- (void)touchMultitapTimer
{
  multitapAction = self->_multitapAction;
  if (multitapAction)
  {
    [(UIDelayedAction *)multitapAction touch];
  }

  else
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleMultitapTimerFired userInfo:0 delay:1.0];
    v5 = self->_multitapAction;
    self->_multitapAction = v4;
  }

  v6 = [(UIKeyboardLayoutStar *)self activeMultitapCompleteKey];
  v8 = v6;
  if (v6)
  {
    v7 = [(UIKeyboardLayoutStar *)self stateForKey:v6];
    v6 = v8;
    if (v7 != 2)
    {
      self->_multitapCount = 0;
      self->_unshiftAfterMultitap = 0;
    }
  }

  [(UIKeyboardLayoutStar *)self setState:2 forKey:v6];
}

- (void)setLayoutTag:(id)a3
{
  objc_storeStrong(&self->_layoutTag, a3);
  [(UIKeyboardLayoutStar *)self updateLayoutTags];

  [(UIKeyboardLayoutStar *)self updateCachedKeyplaneKeycaps];
}

- (void)setLabel:(id)a3 forKey:(id)a4
{
  v35 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_isTrackpadMode)
  {
    if (@"_keyid_space_" != v6)
    {
      if (@"_keyid_return_" == v6)
      {
        v15 = [(UIKBTree *)self->_keyplane cache];
        v16 = v15;
        v17 = @"Return-Key";
      }

      else
      {
        if (@"_keyid_accent_" != v6)
        {
          if (@"_keyid_facemark_" == v6)
          {
            v8 = @"Facemark";
          }

          else
          {
            v8 = v6;
          }

          v10 = [(UIKBTree *)self->_keyplane keysWithString:v8];
          goto LABEL_19;
        }

        v15 = [(UIKBTree *)self->_keyplane cache];
        v16 = v15;
        v17 = @"Latin-Accents";
      }

      v10 = [v15 objectForKey:v17];

      goto LABEL_19;
    }

    v9 = [(UIKBTree *)self->_keyplane cache];
    v10 = [v9 objectForKey:@"Space-Key"];

    v11 = [v10 count];
    v12 = [(UIKBTree *)self->_keyplane cache];
    v13 = [v12 objectForKey:@"Unlabeled-Space-Key"];
    if (v11)
    {

      if (![v13 count])
      {
        goto LABEL_11;
      }

      [v10 arrayByAddingObjectsFromArray:v13];
      v13 = v12 = v13;
    }

    v14 = v13;

    v13 = v12;
    v10 = v14;
LABEL_11:

    if (![v10 count])
    {
      v18 = [(UIKBTree *)self->_keyplane cache];
      v19 = [v18 objectForKey:@"Ideographic-Space-Key"];

      v10 = v19;
    }

LABEL_19:
    if (![v10 count])
    {
LABEL_62:

      goto LABEL_63;
    }

    v20 = @"_keyid_space_" == v7 && @"UI-Space" == v35;
    if (v20 && (([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 1 && ([(UIKBTree *)self->_keyplane visualStyling]& 0x80) == 0 && ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF0000) != 0xB0000 && ![(UIKeyboardLayoutStar *)self isHandwritingPlane]|| ([(UIKBTree *)self->_keyplane visualStyling]& 0x80) != 0 && ![(UIKeyboardLayoutStar *)self hasCandidateKeys]|| [(UIKeyboardLayoutStar *)self useCrescendoLayout]&& ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 1))
    {
      v21 = &stru_1EFB14550;
    }

    else
    {
      v22 = UIKeyboardLocalizedString(v35, 0, 0, 0);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v35;
      }

      v21 = v23;
    }

    v24 = [v10 firstObject];
    if (@"_keyid_space_" == v7 && [v10 count] >= 2 && -[UIKeyboardLayoutStar keyplaneIsSplit](self, "keyplaneIsSplit"))
    {
      v25 = [v10 objectAtIndex:1];

      v26 = 0;
    }

    else
    {
      if (@"_keyid_return_" != v7 || [v10 count] < 2 || (objc_msgSend(v24, "shape"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "concaveCorner"), v27, !v28))
      {
        v26 = 0;
LABEL_48:
        v29 = [v24 overrideDisplayString];
        v30 = v29;
        if (v29 == v21)
        {
        }

        else
        {
          v31 = [v24 overrideDisplayString];
          v32 = [v31 isEqualToString:v21];

          if ((v32 & 1) == 0)
          {
            [v24 setOverrideDisplayString:v21];
            v33 = [(UIKeyboardLayoutStar *)self viewForKey:v24];
            if (v33)
            {
              [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForKey:v24] forKey:v24];
              if (!v26)
              {
                goto LABEL_59;
              }
            }

            else
            {
              [v24 frame];
              [(UIView *)self setNeedsDisplayInRect:?];
              if (!v26)
              {
                goto LABEL_59;
              }
            }

            [v26 setOverrideDisplayString:v21];
            v34 = [(UIKeyboardLayoutStar *)self viewForKey:v26];
            if (v34)
            {
              [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForKey:v26] forKey:v26];
            }

            else
            {
              [v26 frame];
              [(UIView *)self setNeedsDisplayInRect:?];
            }

LABEL_59:
            if (@"_keyid_return_" == v7)
            {
              [(UIKeyboardLayoutStar *)self updateTransitionWithFlags:5];
            }
          }
        }

        goto LABEL_62;
      }

      v25 = [v10 lastObject];

      v26 = [v10 firstObject];
    }

    v24 = v25;
    goto LABEL_48;
  }

LABEL_63:
}

- (void)setTarget:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = v7;
  if (@"_keyid_space_" == v7)
  {
    v9 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
  }

  else
  {
    if (@"_keyid_return_" != v7)
    {
      goto LABEL_6;
    }

    v9 = &OBJC_IVAR___UIKeyboardLayoutStar__returnTarget;
  }

  objc_storeStrong((&self->super.super.super.super.isa + *v9), a3);
LABEL_6:
}

- (void)setAction:(SEL)a3 forKey:(id)a4
{
  if (@"_keyid_space_" == a4)
  {
    v4 = 824;
  }

  else
  {
    if (@"_keyid_return_" != a4)
    {
      return;
    }

    v4 = 848;
  }

  v5 = (self + v4);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
}

- (void)setLongPressAction:(SEL)a3 forKey:(id)a4
{
  if (@"_keyid_space_" == a4)
  {
    v4 = 832;
  }

  else
  {
    if (@"_keyid_return_" != a4)
    {
      return;
    }

    v4 = 856;
  }

  v5 = (self + v4);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
}

- (void)restoreDefaultsForKey:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (@"_keyid_space_" == v4)
  {
    [(UIKeyboardLayoutStar *)self setLabel:0 forKey:?];
    v5 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
  }

  else
  {
    if (@"_keyid_return_" != v4)
    {
      [(UIKeyboardLayoutStar *)self setLabel:0 forKey:v4];
      goto LABEL_7;
    }

    [(UIKeyboardLayoutStar *)self setLabel:0 forKey:?];
    v5 = &OBJC_IVAR___UIKeyboardLayoutStar__returnTarget;
  }

  v6 = *v5;
  v7 = *(&self->super.super.super.super.isa + v6);
  *(&self->super.super.super.super.isa + v6) = 0;

  *(&self->super.super.super.super.isa + v5[2]) = 0;
  *(&self->super.super.super.super.isa + v5[4]) = 0;
LABEL_7:
}

- (BOOL)isLongPressedKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 interactionType];
    if (self->_showDictationKey && v6 == 5)
    {
      v8 = 1;
      goto LABEL_10;
    }

    if (([(UIKeyboardLayoutStar *)self downActionFlagsForKey:v5]& 0x80) != 0)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      v8 = [v9 isLongPress];

      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)shouldShowInternationalMenuForKey:(id)a3
{
  v4 = a3;
  if ([v4 interactionType] == 9 && objc_msgSend(v4, "displayType") == 13)
  {
    v5 = ![(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)showMenu:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(UIKeyboardLayoutStar *)self viewForKey:v6];
  [v7 setPopupMenu:v9];

  v8 = [(UIKeyboardLayoutStar *)self renderConfig];
  [v9 setRenderConfig:v8];

  [v9 showAsPopupForKey:v6 inLayout:self];
}

- (void)longPressAction
{
  v3 = [(UIKeyboardLayoutStar *)self activeKey];
  if (v3)
  {
    v4 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v3];
    v5 = [v4 touch];
    v6 = [(UIKeyboardLayout *)self _hasRelatedTouchesForTouchState:v5];

    if (v6 || [v4 continuousPathState] == 4 || objc_msgSend(v4, "continuousPathState") == 3)
    {
      [(UIKeyboardLayoutStar *)self deactivateActiveKey];
LABEL_6:

      goto LABEL_7;
    }

    if ([v3 interactionType] == 4 && -[UIKeyboardLayoutStar isHandwritingPlane](self, "isHandwritingPlane"))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    if (!-[UIKeyboardLayoutStar isLongPressedKey:](self, "isLongPressedKey:", v3) && ![v4 delayed])
    {
      goto LABEL_6;
    }

    self->_didLongPress = 1;
    v7 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v3];
    if ([v4 delayed] && (objc_msgSend(v3, "interactionType") == 4 || objc_msgSend(v3, "interactionType") == 14))
    {
      objc_initWeak(&location, self);
      if (qword_1ED493238 != -1)
      {
        dispatch_once(&qword_1ED493238, &__block_literal_global_1089);
      }

      v8 = [(UIKeyboardLayout *)self taskQueue];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke_4;
      v63[3] = &unk_1E71149B8;
      objc_copyWeak(v66, &location);
      v64 = v4;
      v65 = v3;
      v66[1] = v7;
      [v8 addTask:v63 breadcrumb:qword_1ED493230];

      v9 = v66;
LABEL_19:
      objc_destroyWeak(v9);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    v10 = [v3 interactionType];
    if ((v7 & 0x1000F8000) != 0)
    {
      [(UIKeyboardLayoutStar *)self showPopupVariantsForKey:v3];
      if (self->_swipeDetected && ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23))
      {
        if ([v3 displayType] == 7)
        {
          +[_UIKeyboardUsageTracking dualStringsKeyFlickUpCount];
        }

        else
        {
          +[_UIKeyboardUsageTracking singleStringKeyFlickUpCount];
        }
      }

      goto LABEL_6;
    }

    v11 = v10;
    if ((v7 & 0x100000) != 0)
    {
      if (v10 == 4)
      {
        v25 = 880;
        deleteTarget = self->_deleteTarget;
      }

      else
      {
        if (v10 == 15)
        {
          v14 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
        }

        else
        {
          if (v10 != 13)
          {
            goto LABEL_6;
          }

          v14 = &OBJC_IVAR___UIKeyboardLayoutStar__returnTarget;
        }

        deleteTarget = *(&self->super.super.super.super.isa + *v14);
        v25 = v14[4];
      }

      if (*(&self->super.super.super.super.isa + v25))
      {
        v26 = *(&self->super.super.super.super.isa + v25);
      }

      else
      {
        v26 = 0;
      }

      if (dyld_program_sdk_at_least())
      {
        [deleteTarget v26];
      }

      else
      {
        [deleteTarget performSelector_];
      }

      goto LABEL_6;
    }

    if ((v7 & 0x40000000) != 0)
    {
      if (+[UIDictationController isRunning])
      {
        v15 = +[UIDictationController activeInstance];
        [v15 cancelDictation];

        v16 = +[UIKeyboardImpl activeInstance];
        v17 = [v16 isDictationPopoverPresented];

        if (v17)
        {
          v18 = +[UIKeyboardImpl activeInstance];
          [v18 dismissDictationPopover];
        }
      }

      if (v11 != 5 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
      {
        goto LABEL_6;
      }

      v12 = +[UIDictationConnectionPreferences sharedInstance];
      if (([v12 dictationIsEnabled] & 1) == 0)
      {
        goto LABEL_74;
      }

      v19 = +[UIKeyboardInputModeController sharedInputModeController];
      v20 = [v19 enabledDictationLanguages];
      v21 = [v20 count];

      if (v21 < 2)
      {
        goto LABEL_6;
      }

      v12 = +[UIInputSwitcherView sharedInstance];
      if ([v12 isVisible] & 1) != 0 || (+[UIKeyboardSplitControlMenu activeInstance](UIKeyboardSplitControlMenu, "activeInstance"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isVisible"), v22, (v23))
      {
LABEL_74:

        goto LABEL_6;
      }

LABEL_92:
      [(UIKeyboardLayoutStar *)self showMenu:v12 forKey:v3];
      goto LABEL_74;
    }

    if (v10 == 38)
    {
      objc_initWeak(&location, self);
      if (qword_1ED493248 != -1)
      {
        dispatch_once(&qword_1ED493248, &__block_literal_global_1096);
      }

      v29 = [(UIKeyboardLayout *)self taskQueue];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke_7;
      v60[3] = &unk_1E70FDBD0;
      objc_copyWeak(&v62, &location);
      v61 = v3;
      [v29 addTask:v60 breadcrumb:qword_1ED493240];

      v9 = &v62;
      goto LABEL_19;
    }

    if (v10 == 9 && [v3 displayType] == 13)
    {
      if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3 || ![(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:v3])
      {
        goto LABEL_6;
      }

      v12 = +[UIInputSwitcherView sharedInstance];
      if ([v12 isVisible])
      {
        goto LABEL_74;
      }

      v13 = +[UIKeyboardSplitControlMenu activeInstance];
      if ([v13 isVisible])
      {

        goto LABEL_74;
      }

      v58 = [(UIKeyboardLayoutStar *)self stateForKey:v3];

      if (v58 != 4)
      {
        goto LABEL_74;
      }

      goto LABEL_92;
    }

    if (!+[UIKeyboardImpl rivenTranslationPreference]|| self->_swipeDetected)
    {
      if (v11 == 6)
      {
        v27 = [(UIView *)self window];
        v28 = [v27 _isTextEffectsWindow] ^ 1;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) != 0 || v11 == 3)
      {
        goto LABEL_6;
      }

      v12 = +[UIKeyboardImpl activeInstance];
      [v12 setShift:1];
      [v12 forceShiftUpdate];
      [(UIKeyboardLayoutStar *)self setState:4 forKey:v3];
      goto LABEL_74;
    }

    if (v11 == 6)
    {
      [v3 paddedFrame];
    }

    else
    {
      v35 = *(MEMORY[0x1E695F058] + 16);
      v34 = *(MEMORY[0x1E695F058] + 24);
      v37 = *MEMORY[0x1E695F058];
      v36 = *(MEMORY[0x1E695F058] + 8);
      if (![(UIKeyboardLayoutStar *)self isHandwritingPlane]|| v11 != 3)
      {
LABEL_81:
        v72.origin.x = v37;
        v72.origin.y = v36;
        v72.size.width = v35;
        v72.size.height = v34;
        if (CGRectIsEmpty(v72))
        {
          goto LABEL_6;
        }

        v47 = +[UIKeyboardSplitControlMenu sharedInstance];
        v48 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v3];
        v49 = [v48 touch];
        [v49 locationInView:self];
        v51 = v50;
        v53 = v52;

        [(UIView *)self bounds];
        if (v51 >= v54 + -60.0)
        {
          [(UIView *)self bounds];
          v55 = v53 >= v56 + -60.0;
        }

        else
        {
          v55 = 0;
        }

        if (([v47 isVisible] & 1) == 0)
        {
          v57 = +[UIInputSwitcherView activeInstance];
          if (![v57 isVisible])
          {
            if ([(UIKeyboardLayoutStar *)self isHandwritingPlane]&& v55 && v11 == 3)
            {
            }

            else
            {
              v59 = [(UIKeyboardLayoutStar *)self stateForKey:v3];

              if (v59 != 4)
              {
                goto LABEL_95;
              }
            }

            [(UIKeyboardLayoutStar *)self showMenu:v47 forKey:v3];
            goto LABEL_95;
          }
        }

LABEL_95:

        goto LABEL_6;
      }

      [v3 paddedFrame];
      MaxX = CGRectGetMaxX(v69);
      [v3 paddedFrame];
      v40 = MaxX - v39 * 0.25;
      [v3 paddedFrame];
      MaxY = CGRectGetMaxY(v70);
      [v3 paddedFrame];
      v43 = MaxY + v42 * -0.15;
      [v3 paddedFrame];
      v45 = v44 * 0.25;
      [v3 paddedFrame];
      v71.size.height = v46 * 0.25;
      v71.origin.x = v40;
      v71.origin.y = v43;
      v71.size.width = v45;
      *&v30 = CGRectIntegral(v71);
    }

    v37 = v30;
    v36 = v31;
    v35 = v32;
    v34 = v33;
    goto LABEL_81;
  }

LABEL_7:
}

void __39__UIKeyboardLayoutStar_longPressAction__block_invoke_2()
{
  v0 = [&__block_literal_global_1091 copy];
  v1 = qword_1ED493230;
  qword_1ED493230 = v0;
}

void __39__UIKeyboardLayoutStar_longPressAction__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _transitionToContinuousPathState:6 forTouchInfo:*(a1 + 32)];
    [*(a1 + 32) setDelayed:0];
    [v4 completeCommitTouchesPrecedingTouchDownWithKey:*(a1 + 40) withActions:*(a1 + 56) executionContext:v5];
  }
}

void __39__UIKeyboardLayoutStar_longPressAction__block_invoke_5()
{
  v0 = [&__block_literal_global_1098_1 copy];
  v1 = qword_1ED493240;
  qword_1ED493240 = v0;
}

void __39__UIKeyboardLayoutStar_longPressAction__block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained playKeyClickSoundForKey:*(a1 + 32)];
    [v4 completeCommitTouchesPrecedingTouchDownWithKey:*(a1 + 32) withActions:0x400000000 executionContext:v5];
  }
}

- (id)_keyboardLongPressInteractionRegions
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(UIKBTree *)self->_keyplane cache];
  v3 = [v2 objectForKey:@"Space-Key"];

  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * i) frame];
          v10 = [MEMORY[0x1E696B098] valueWithCGRect:?];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_keyplaneVariantsKeyForString:(id)a3
{
  keyplane = self->_keyplane;
  v4 = a3;
  v5 = [(UIKBTree *)keyplane componentName];
  v6 = [v4 stringByAppendingFormat:@"-%@", v5];

  return v6;
}

- (id)_uniquelyInsertVariantString:(id)a3 beforeVariants:(id)a4 direction:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 mutableCopy];
  v10 = [v9 indexOfObject:v7];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v10];
  }

  if ([v8 isEqualToString:@"left"])
  {
    [v9 addObject:v7];
  }

  else
  {
    [v9 insertObject:v7 atIndex:0];
  }

  return v9;
}

- (id)_variantsByAppendingDualStringKey:(id)a3 toVariants:(id)a4
{
  v32[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 displayType] == 7)
  {
    v8 = [v6 secondaryDisplayStrings];
    v9 = [v8 objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v30 = v9;
    }

    else
    {
      v11 = [v6 displayString];
      v30 = [v11 substringFromIndex:1];
    }

    v12 = [v6 secondaryRepresentedStrings];
    v13 = [v12 objectAtIndex:0];
    v14 = v13;
    v15 = self;
    if (v13)
    {
      v29 = v13;
    }

    else
    {
      v16 = [v6 representedString];
      v29 = [v16 substringFromIndex:1];
    }

    v17 = [v7 objectForKey:?];
    v18 = [v7 objectForKey:@"Strings"];
    v19 = [v7 objectForKey:@"Direction"];
    v20 = v15;
    v21 = [(UIKeyboardLayoutStar *)v15 _uniquelyInsertVariantString:v30 beforeVariants:v17 direction:v19];

    v22 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:v29 beforeVariants:v18 direction:v19];

    v23 = [v6 representedString];
    v24 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:v23 beforeVariants:v21 direction:v19];

    v25 = [v6 displayString];
    v26 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:v25 beforeVariants:v22 direction:v19];

    v31[0] = @"Direction";
    v31[1] = @"Keycaps";
    v32[0] = v19;
    v32[1] = v24;
    v31[2] = @"Strings";
    v32[2] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

    v7 = v27;
  }

  return v7;
}

- (id)_variantsOfCurrencyKey:(id)a3 language:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 representedString];
  v9 = [(UIKBTree *)self->_keyplane visualStyling]& 0x3F;
  v10 = UIKeyboardCurrencyVariants(v8, v7);
  if (!v10 && v9 == 23)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v6 secondaryRepresentedStrings];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = UIKeyboardCurrencyVariants(*(*(&v20 + 1) + 8 * i), v7);
          if (v16)
          {
            v10 = v16;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  if (!v10)
  {
    v17 = UIKeyboardGetCurrentInputMode();

    v10 = UIKeyboardCurrencyVariants(v8, v17);
    v7 = v17;
  }

  if (v9 == 23)
  {
    v18 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:v6 toVariants:v10];

    v10 = v18;
  }

  return v10;
}

- (void)preparePopupVariantsForKey:(id)a3 onKeyplane:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& os_variant_has_internal_diagnostics())
  {
    if (objc_opt_respondsToSelector())
    {
      [(TUIKeyplaneView *)self->_liveKeyplaneView updateVariantSelectorFramesForKey:v9];
    }
  }

  else
  {
    v7 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
    v8 = [v7 traitsForKey:v9 onKeyplane:v6];
  }
}

- (void)showPopupVariantsForKey:(id)a3
{
  v129[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && [(UIKeyboardLayoutStar *)self stateForKey:v4]!= 16)
  {
    v107 = [v4 representedString];
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = UIKeyboardGetCurrentUILanguage();
    [MEMORY[0x1E695DF58] preferredLocale];
    v118 = v117 = v4;
    v13 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v4];
    if (UIKeyboardGetCurrentIdiom() == 1 || UIKeyboardGetCurrentIdiom() == 24 || UIKeyboardGetCurrentIdiom() == 25 || UIKeyboardGetCurrentIdiom() == 26)
    {
      v14 = v11;
      v15 = 1;
    }

    else
    {
      v14 = v11;
      v15 = UIKeyboardGetCurrentIdiom() == 23;
    }

    v110 = v15;
    v16 = [(UIKBTree *)self->_keyplane visualStyling]& 0x3F;
    IsMultiscript = UIKeyboardCurrentInputModeIsMultiscript();
    v114 = self;
    v115 = v13;
    if ((v13 & 0x8000) == 0)
    {
      if ((v13 & 0x20000) != 0)
      {
        v34 = [MEMORY[0x1E695DF58] preferredLocale];
        v35 = [v34 localeIdentifier];

        v22 = UIKeyboardTopLevelDomainVariants(v35, 15);

        v23 = 0;
        v110 = 1;
      }

      else
      {
        if ((v13 & 0x10000) == 0)
        {
          if ((v13 & 0x40000) != 0)
          {
            if (!self->_shift || v16 == 23)
            {
              v22 = [(UIKeyboardLayoutStar *)self _variantsOfCurrencyKey:v4 language:v12];
              v23 = 0;
            }

            else
            {
              v23 = 0;
              v22 = 0;
            }
          }

          else
          {
            if ((v13 & 0x100000000) == 0)
            {
              v18 = v107;
              if ([v4 variantType] == 9)
              {
                v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"#BOLD", @"#ITALIC", @"#UNDERLINE", 0}];
                v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"popup_bold.png", @"popup_italic.png", @"popup_underline.png", 0}];
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v19, @"Strings", v20, @"Keycaps", @"right", @"Direction", 0}];
                [v14 updateStylingTraitsIfNeeded];

                v4 = v117;
                v22 = v21;
                v23 = 0;
              }

              else
              {
                v23 = 0;
                v22 = 0;
              }

              v104 = v12;
LABEL_41:
              v38 = [v22 objectForKey:@"Strings"];
              v39 = [v22 objectForKey:@"Keycaps"];
              v40 = v14;
              if ((v23 & 1) == 0 && (!v22 || ![v38 count]))
              {
                goto LABEL_135;
              }

              v122 = [MEMORY[0x1E695DF70] arrayWithArray:v38];
              v119 = [MEMORY[0x1E695DF70] arrayWithArray:v39];
              v41 = [v22 objectForKey:@"Direction"];
              v42 = v23;
              v43 = v41;
              v102 = v42;
              if ((v42 & 1) == 0 && (!v122 || !v119 || !v41))
              {
LABEL_134:

LABEL_135:
                goto LABEL_136;
              }

              v100 = v22;
              if ((v13 & 0x20000) != 0)
              {
                [v122 addObject:@"."];
                [v119 addObject:@"."];
              }

              v99 = v38;
              if (([(__CFString *)v43 isEqualToString:?]& 1) != 0 || ([(__CFString *)v43 isEqualToString:@"strictly-left"]& 1) != 0 || [(__CFString *)v43 isEqualToString:@"fixed-left"])
              {
                [v122 _kb_reverse];
                [v119 _kb_reverse];
              }

              v103 = v43;
              v44 = [v122 count];
              if (v44 <= [v119 count])
              {
                v45 = v122;
              }

              else
              {
                v45 = v119;
              }

              v46 = [v45 count];
              if ((v46 - 2) > 6)
              {
                v112 = 0;
              }

              else
              {
                if ([v18 _containsFullwidthLettersAndSymbolsOnly])
                {
                  v112 = [v18 _stringByConvertingFromFullWidthToHalfWidth];
                  v47 = @"UI-Halfwidth";
LABEL_63:
                  v106 = v47;
                  v98 = v39;
                  v48 = [v14 autocorrectPrompt];

                  if (v48)
                  {
                    [v14 removeAutocorrectPromptAndCandidateList];
                  }

                  v49 = [MEMORY[0x1E695DF70] array];
                  v111 = [MEMORY[0x1E695DF70] array];
                  v101 = v14;
                  v50 = [v14 smartPunctuationController];
                  v105 = [v50 smartQuotesEnabled];

                  v109 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'"];
                  if ([v4 displayType] == 27 || (objc_msgSend(v117, "name"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "_containsSubstring:", @"Email-Dot-"), v51, v52))
                  {
                    v113 = 28;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v53 = v117;
                  v120 = [v117 representedString];
                  if ([v117 displayType] == 7 && objc_msgSend(v18, "length") >= 2)
                  {
                    v127 = [v18 characterAtIndex:0];
                    v54 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v127 length:1];

                    v120 = v54;
                  }

                  if (v46 >= 1)
                  {
                    v55 = 0;
                    v116 = v46 & 0x7FFFFFFF;
                    v108 = 1;
                    while (1)
                    {
                      v56 = [v122 objectAtIndex:v55];
                      v57 = [v56 isEqualToString:v120];

                      v58 = [v119 objectAtIndex:v55];
                      if ([(UIKBTree *)self->_keyplane isShiftKeyplane]|| !+[UIKeyboardLayout _showSmallDisplayKeyplane])
                      {
                        v59 = [v58 uppercaseStringWithLocale:v118];
                      }

                      else
                      {
                        v59 = [v58 lowercaseStringWithLocale:v118];
                      }

                      v60 = v59;

                      v61 = (v13 & 0x40000) != 0 ? v58 : v60;
                      v62 = v61;
                      v63 = [v53 displayString];
                      v121 = v62;
                      if (([v63 isEqual:v62] & 1) == 0)
                      {
                        v64 = [(NSMutableSet *)self->_allKeyplaneKeycaps containsObject:v60]&& (v13 & 0x10000) == 0;
                        if (v64 && [v53 variantType] != 9)
                        {
                          break;
                        }
                      }

                      v63 = [v122 objectAtIndex:v55];
                      if (!v57)
                      {
                        if ([v112 isEqualToString:v63])
                        {
                          v65 = UIKeyboardLocalizedString(v106, 0, 0, 0);

                          v112 = 0;
                        }

                        else
                        {
LABEL_94:
                          v65 = 0;
                        }

LABEL_96:
                        v66 = [v53 copy];
                        [v66 setRepresentedString:v63];
                        [v66 setDisplayString:v58];
                        if (v65)
                        {
                          v129[0] = v65;
                          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:1];
                          [v66 setSecondaryDisplayStrings:v67];
                        }

                        else
                        {
                          [v66 setSecondaryDisplayStrings:0];
                        }

                        [v66 setDisplayType:v113];
                        v68 = MEMORY[0x1E696AEC0];
                        v69 = [v53 name];
                        v70 = [v66 representedString];
                        v71 = [v68 stringWithFormat:@"%@/%@", v69, v70];
                        [v66 setName:v71];

                        [v66 setOverrideDisplayString:0];
                        if ([v58 length] != 1 || (v72 = objc_msgSend(v58, "characterAtIndex:", 0), v73 = v111, v72 != 170) && (v74 = objc_msgSend(v58, "characterAtIndex:", 0), v73 = v111, v74 != 186))
                        {
                          v73 = v49;
                        }

                        [v73 addObject:v66];

                        v53 = v117;
                        self = v114;
                        v13 = v115;
LABEL_104:

                        goto LABEL_105;
                      }

                      if (!v110)
                      {
                        v65 = 0;
                        v108 = 2;
                        goto LABEL_96;
                      }

                      if ([v109 longCharacterIsMember:{objc_msgSend(v120, "_firstLongCharacter")}] & v105)
                      {
                        goto LABEL_94;
                      }

LABEL_105:

                      if (v116 == ++v55)
                      {
                        goto LABEL_109;
                      }
                    }

                    v65 = [v53 displayString];
                    [v65 isEqualToString:v58];
                    goto LABEL_104;
                  }

                  v108 = 1;
LABEL_109:
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v75 = v111;
                  v76 = [v75 countByEnumeratingWithState:&v123 objects:v128 count:16];
                  v18 = v107;
                  if (v76)
                  {
                    v77 = v76;
                    v78 = *v124;
                    do
                    {
                      for (i = 0; i != v77; ++i)
                      {
                        if (*v124 != v78)
                        {
                          objc_enumerationMutation(v75);
                        }

                        [v49 addObject:*(*(&v123 + 1) + 8 * i)];
                      }

                      v77 = [v75 countByEnumeratingWithState:&v123 objects:v128 count:16];
                    }

                    while (v77);
                  }

                  if ((v102 & 1) != 0 || [v49 count] >= v108)
                  {
                    v4 = v117;
                    [v117 updateVariantTypeForActions:v13];
                    if ([(UIKeyboardLayoutStar *)self keyplaneIsSplit])
                    {
                      v80 = [(__CFString *)v103 _containsSubstring:@"strict"];
                      [v117 frame];
                      v82 = v81;
                      [(UIKBTree *)self->_keyboard frame];
                      v84 = @"right";
                      if (v82 < v83 * 0.5)
                      {
                        v84 = @"left";
                      }

                      v85 = v84;

                      if (v80)
                      {
                        v86 = [@"strictly-" stringByAppendingString:v85];
                      }

                      else
                      {
                        v86 = v85;
                      }

                      v103 = v86;
                    }

                    v22 = v100;
                    if ((v102 & 1) == 0)
                    {
                      [v117 setVariantPopupBias:v103];
                      [v117 setSubtrees:v49];
                    }

                    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
                    {
                      v87 = [(UIKeyboardLayoutStar *)self slideBehaviour];

                      if (!v87)
                      {
                        v88 = objc_alloc_init(UISelectionFeedbackGenerator);
                        [(UIKeyboardLayoutStar *)self setSlideBehaviour:v88];

                        v89 = [(UIKeyboardLayoutStar *)self slideBehaviour];
                        [v89 userInteractionStarted];
                      }

                      v90 = [(UIKeyboardLayoutStar *)self slideBehaviour];
                      [v90 selectionChanged];
                    }

                    [v117 setSelectedVariantIndex:{-[UIKeyboardLayoutStar defaultSelectedVariantIndexForKey:withActions:](self, "defaultSelectedVariantIndexForKey:withActions:", v117, v13)}];
                    v91 = [(UIKeyboardLayoutStar *)self highlightedVariantListForStylingKey:v117];
                    [v117 setHighlightedVariantsList:v91];

                    [(UIKeyboardLayoutStar *)self setState:16 forKey:v117];
                  }

                  else
                  {
                    v4 = v117;
                    v22 = v100;
                  }

                  v40 = v101;
                  v39 = v98;
                  v38 = v99;
                  v43 = v103;
                  goto LABEL_134;
                }

                v112 = [v18 _stringByConvertingFromHalfWidthToFullWidth];
              }

              v47 = @"UI-Fullwidth";
              goto LABEL_63;
            }

            v22 = 0;
            v23 = 1;
          }

          v104 = v12;
LABEL_40:
          v18 = v107;
          goto LABEL_41;
        }

        v36 = [MEMORY[0x1E695DF58] preferredLocale];
        v37 = [v36 localeIdentifier];

        v22 = UIKeyboardTopLevelDomainVariants(v37, 15);

        v23 = 0;
      }

      v104 = v12;
      v4 = v117;
      goto LABEL_40;
    }

    v24 = IsMultiscript;
    v104 = UIKeyboardGetCurrentInputMode();

    if (self->_swipeDetected)
    {
      v25 = 23;
    }

    else
    {
      v25 = 7;
    }

    v26 = v107;
    v27 = v26;
    if ((v13 & 0x80000) != 0)
    {
      v27 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v26];
    }

    if ([v117 displayType] == 7)
    {
      v28 = [v117 secondaryRepresentedStrings];
      v29 = [v28 count];

      if (v29 && (!v24 || ![(UIKeyboardLayoutStar *)self isDynamicLayout]))
      {
        v30 = [v117 secondaryRepresentedStrings];
        v31 = [v30 firstObject];
        v32 = [v27 stringByAppendingString:v31];

        v27 = v32;
        self = v114;
      }

      v13 = v115;
    }

    v33 = [(UIKeyboardLayout *)self getRomanAccentVariantsForString:v27 inputMode:v104 keyboardVariantIndludes:v25];
    if ([v117 displayType] == 7 && objc_msgSend(v117, "interactionType") == 2)
    {
      if ([v117 variantType] != 3)
      {
        if (v24)
        {
          v4 = v117;
          v22 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:v117 toVariants:v33];
          v18 = v107;
        }

        else
        {
          if (v16 != 23)
          {
            v4 = v117;
            v18 = v107;
            v22 = v33;
            goto LABEL_36;
          }

          v18 = v107;
          if (self->_shift && !self->_autoshift)
          {
            v92 = [v117 secondaryRepresentedStrings];
            v93 = [v92 objectAtIndex:0];
            v94 = v93;
            if (v93)
            {
              v95 = v93;
            }

            else
            {
              v96 = [v117 representedString];
              v95 = [v96 substringFromIndex:1];

              self = v114;
            }

            v13 = v115;
            if ((v115 & 0x80000) != 0)
            {
              v97 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v26];

              v95 = v97;
            }

            v22 = UIKeyboardRomanAccentVariants(v95, v104, v25);

            v33 = v95;
            v4 = v117;
          }

          else
          {
            v4 = v117;
            v22 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:v117 toVariants:v33];
          }
        }

        goto LABEL_36;
      }

      v4 = v117;
    }

    else
    {
      v4 = v117;
    }

    v18 = v107;
    v22 = v33;
LABEL_36:

    v23 = 0;
    goto LABEL_41;
  }

  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"EmojiPopupKey"];

  if (v6)
  {
    v7 = [(UIKeyboardLayoutStar *)self slideBehaviour];

    if (!v7)
    {
      v8 = objc_alloc_init(UISelectionFeedbackGenerator);
      [(UIKeyboardLayoutStar *)self setSlideBehaviour:v8];

      v9 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [v9 userInteractionStarted];
    }

    v10 = [(UIKeyboardLayoutStar *)self slideBehaviour];
    [v10 selectionChanged];
  }

LABEL_136:
}

- (BOOL)shouldShowIndicator
{
  if ([(UIKBTree *)self->_keyplane noLanguageIndicator])
  {
    return 0;
  }

  v4 = [(UIKBTree *)self->_keyplane keysByKeyName:@"International-Key"];
  v3 = [v4 count] != 0;

  return v3;
}

- (void)setHideKeysUnderIndicator:(BOOL)a3
{
  keysUnderIndicator = self->_keysUnderIndicator;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIKeyboardLayoutStar_setHideKeysUnderIndicator___block_invoke;
  v6[3] = &__block_descriptor_33_e12_v24__0_8_B16l;
  v7 = a3;
  [(NSMutableSet *)keysUnderIndicator enumerateObjectsUsingBlock:v6];
  if (!a3)
  {
    [(NSMutableSet *)self->_keysUnderIndicator removeAllObjects];
  }
}

uint64_t __50__UIKeyboardLayoutStar_setHideKeysUnderIndicator___block_invoke(uint64_t a1, void *a2)
{
  v2 = 1.0;
  if (*(a1 + 32))
  {
    v2 = 0.0;
  }

  return [a2 setAlpha:v2];
}

- (id)activationIndicatorView
{
  v209 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTree *)self->_keyplane keys];
  v4 = [v3 count];

  if (!v4)
  {
    goto LABEL_145;
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    v4 = 0;
    goto LABEL_145;
  }

  inactiveLanguageIndicator = self->_inactiveLanguageIndicator;
  self->_inactiveLanguageIndicator = 0;

  if (([(UIKeyboardLayout *)self orientation]- 3) > 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
  {
    v6 = 0;
  }

  else
  {
    v186 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v6 = [v186 count] != 0;
  }

  v192 = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
  v7 = UIKeyboardGetCurrentInputMode();
  v8 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v7];
  v189 = [v8 displayName];

  [(UIView *)self center];
  v191 = v9;
  v10 = +[UIApplication _classicMode];
  v11 = [(UIKeyboardLayout *)self orientation]- 3;
  v12 = [(UIKBScreenTraits *)self->super._screenTraits idiom];
  if (v11 > 1)
  {
    if (v12 != 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23)
    {
      v14 = 140.0;
      goto LABEL_29;
    }

    v13 = 320.0;
LABEL_24:
    v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v16 = [v15 preferencesActions];
    v17 = v16;
    v18 = 40.0;
    if (!v10)
    {
      v18 = 0.0;
    }

    v19 = v13 - v18;
    if (v192)
    {
      v19 = 150.0;
    }

    [v16 rivenSizeFactor:v19];
    v21 = v20;

    v14 = v21;
    goto LABEL_29;
  }

  v13 = 440.0;
  if (v12 == 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
  {
    goto LABEL_24;
  }

  v14 = 150.0;
LABEL_29:
  v190 = v14;
  if (v6)
  {
    v22 = 0;
    goto LABEL_111;
  }

  if (!-[UIKeyboardLayoutStar isDynamicLayout](self, "isDynamicLayout") || -[UIKBTree isKanaKeyboard](self->_keyplane, "isKanaKeyboard") || (-[UIKBTree name](self->_keyboard, "name"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 _containsSubstring:@"Korean10Key"], v23, (v24 & 1) != 0))
  {
    v25 = [(UIKBTree *)self->_keyplane keysOrderedByPositionWithoutZip];
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v198 objects:v207 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v199;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v199 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v198 + 1) + 8 * i);
          if ([v32 visible])
          {
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v198 objects:v207 count:16];
      }

      while (v29);
    }

    v33 = [v26 count];
    v34 = [v26 lastObject];
    [v34 frame];
    v35 = 0;
    v37 = v36;
    v38 = v33 - 1;
    do
    {
      v39 = v37;
      v40 = v35;
      v41 = v33 + v35;
      v42 = v41 - 1;
      if (v41 == 1)
      {
        break;
      }

      v43 = [v26 objectAtIndex:v41 - 2];
      [v43 frame];
      v37 = v44;

      v35 = v40 - 1;
    }

    while (v39 >= v37);
    if (v192)
    {
      [v34 frame];
      v45 = (CGRectGetMaxX(v211) - v39) * 0.5;
      [v34 frame];
      if (v46 > v45)
      {
        do
        {
          v47 = [v26 objectAtIndex:--v38];
          [v47 frame];
          v49 = v48;
        }

        while (v49 > v45);
      }

      v50 = [v26 objectAtIndex:v38 + 1];
      v51 = [v26 subarrayWithRange:{v38 + 1, v33 + ~v38}];
    }

    else
    {
      if (v33 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = 1 - v40;
      }

      v53 = [v26 subarrayWithRange:{v42, v52}];
      v51 = __47__UIKeyboardLayoutStar_activationIndicatorView__block_invoke(v53, v191);

      v50 = [v51 firstObject];
    }

LABEL_54:
    v54 = 640;
  }

  else
  {
    v175 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
    v176 = [v175 renderingContext];
    v177 = [v176 keyboardType];

    v27 = [(UIKBTree *)self->_keyplane subtreeWithType:3];
    v26 = [v27 orderedRowsForType:v177];
    v34 = [v26 objectAtIndexedSubscript:{objc_msgSend(v26, "count") - 1}];
    v178 = [v34 flattenedSubtrees];
    v179 = __47__UIKeyboardLayoutStar_activationIndicatorView__block_invoke(v178, v191);

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v51 = v179;
    v180 = [v51 countByEnumeratingWithState:&v202 objects:v208 count:16];
    if (v180)
    {
      v181 = v180;
      v182 = *v203;
LABEL_150:
      v183 = 0;
      while (1)
      {
        if (*v203 != v182)
        {
          objc_enumerationMutation(v51);
        }

        v184 = *(*(&v202 + 1) + 8 * v183);
        if ([v184 type] == 8 && objc_msgSend(v184, "interactionType") == 15)
        {
          if (!v192)
          {
            break;
          }

          v185 = [v184 localizationKey];

          if (v185)
          {
            break;
          }
        }

        if (v181 == ++v183)
        {
          v181 = [v51 countByEnumeratingWithState:&v202 objects:v208 count:16];
          if (v181)
          {
            goto LABEL_150;
          }

          goto LABEL_159;
        }
      }

      v50 = v184;

      if (v50)
      {
        goto LABEL_54;
      }
    }

    else
    {
LABEL_159:
    }

    v54 = 640;
    if ([v51 count])
    {
      v50 = [v51 firstObject];
    }

    else
    {
      v50 = 0;
    }
  }

  v55 = [v50 copy];
  [v55 setName:@"LanguageIndicator"];
  if (([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) == 0x7F00)
  {
    v56 = 4;
  }

  else
  {
    v56 = 2;
  }

  [v55 setState:v56];
  v57 = [v50 shape];

  if (v57)
  {
    v58 = [v50 shape];
    v59 = [v58 copy];
    [v55 setShape:v59];
  }

  [v55 setDisplayRowHint:{objc_msgSend(v50, "displayRowHint")}];
  [v55 setDisplayType:25];
  [v55 setInteractionType:15];
  [v55 setGroupNeighbor:{objc_msgSend(v50, "groupNeighbor")}];
  [v55 setRepresentedString:&stru_1EFB14550];
  [v55 setOverrideDisplayString:&stru_1EFB14550];
  [v55 setObject:0 forProperty:@"variant-type"];
  if ([v50 rendering])
  {
    [v55 setRendering:{objc_msgSend(v50, "rendering")}];
  }

  [v55 frame];
  v60 = v191 - CGRectGetMidX(v212);
  if (v60 >= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = -v60;
  }

  v62 = [(UIKeyboardLayoutStar *)self renderConfig];
  [v62 keycapOpacity];
  v64 = v63;

  v65 = [(UIKeyboardLayoutStar *)self viewForKey:v50];
  [(NSMutableSet *)self->_keysUnderIndicator removeAllObjects];
  if (v64 < 0.5 && v65)
  {
    [(NSMutableSet *)self->_keysUnderIndicator addObject:v65];
  }

  v187 = v65;
  v188 = v50;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v66 = v51;
  v67 = [v66 countByEnumeratingWithState:&v194 objects:v206 count:16];
  if (!v67)
  {

    goto LABEL_103;
  }

  v68 = v67;
  v69 = 0;
  v70 = v61;
  v71 = *v195;
  while (2)
  {
    for (j = 0; j != v68; ++j)
    {
      if (*v195 != v71)
      {
        objc_enumerationMutation(v66);
      }

      v73 = *(*(&v194 + 1) + 8 * j);
      if (([v73 avoidsLanguageIndicator] & 1) == 0)
      {
        if (v192 && [v73 displayType] == 25)
        {
          v54 = [v73 localizationKey];
          if (!v54)
          {
            continue;
          }

          v74 = 1;
        }

        else
        {
          v74 = 0;
        }

        if ([v73 rendering] == 34 && (-[UIKeyboardLayout orientation](self, "orientation") - 3) <= 1)
        {
          [v73 frame];
          v76 = v75;
          if (v74)
          {
          }

          if (v76 < v191)
          {
            continue;
          }
        }

        else if (v74)
        {
        }

        v77 = [(UIKeyboardLayoutStar *)self viewForKey:v73];
        [v55 frame];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        [v73 frame];
        v218.origin.x = v86;
        v218.origin.y = v87;
        v218.size.width = v88;
        v218.size.height = v89;
        v213.origin.x = v79;
        v213.origin.y = v81;
        v213.size.width = v83;
        v213.size.height = v85;
        v214 = CGRectUnion(v213, v218);
        x = v214.origin.x;
        y = v214.origin.y;
        width = v214.size.width;
        height = v214.size.height;
        v94 = v191 - CGRectGetMidX(v214);
        if (v94 < 0.0)
        {
          v94 = -v94;
        }

        v95 = v94;
        [v55 frame];
        if (v96 >= v190 && v70 < v95)
        {

          goto LABEL_99;
        }

        if (v64 < 0.5 && v77)
        {
          [(NSMutableSet *)self->_keysUnderIndicator addObject:v77];
        }

        [v55 frame];
        v219.origin.x = v97;
        v219.origin.y = v98;
        v219.size.width = v99;
        v219.size.height = v100;
        v215.origin.x = x;
        v215.origin.y = y;
        v215.size.width = width;
        v215.size.height = height;
        v69 |= !CGRectEqualToRect(v215, v219);
        [v55 setFrame:{x, y, width, height}];
        [v55 paddedFrame];
        v102 = v101;
        v104 = v103;
        v106 = v105;
        v108 = v107;
        [v73 paddedFrame];
        v220.origin.x = v109;
        v220.origin.y = v110;
        v220.size.width = v111;
        v220.size.height = v112;
        v216.origin.x = v102;
        v216.origin.y = v104;
        v216.size.width = v106;
        v216.size.height = v108;
        v217 = CGRectUnion(v216, v220);
        [v55 setPaddedFrame:{v217.origin.x, v217.origin.y, v217.size.width, v217.size.height}];

        v70 = v95;
      }
    }

    v68 = [v66 countByEnumeratingWithState:&v194 objects:v206 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_99:

  if ((v69 & 1) != 0 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
  {
    [v55 setName:@"EnabledLanguageIndicator"];
    goto LABEL_104;
  }

LABEL_103:
  objc_storeStrong(&self->_inactiveLanguageIndicator, v55);
LABEL_104:
  if (v55)
  {
    v113 = UIKBRectsCreate(self->_keyplane, v55, 2);
    v114 = v113[8];
    v115 = v113[9];
    v116 = v113[10];
    v117 = v113[11];
    if (+[UIKBRenderFactory _graphicsQuality]== 10)
    {
      v118 = [(UIKeyboardLayoutStar *)self renderConfig];
      [v118 colorAdaptiveBackground];
      v119 = objc_opt_class();
    }

    else
    {
      v119 = objc_opt_class();
    }

    v22 = [[v119 alloc] initWithFrame:self->_keyplane keyplane:v55 key:self->super._screenTraits screenTraits:{v114, v115, v116, v117}];
    [(UIImageView *)v22 setScreenTraits:self->super._screenTraits];
    [(UIImageView *)v22 setDrawFrame:v114, v115, v116, v117];
    v120 = [(UIKeyboardLayoutStar *)self renderConfig];
    [(UIImageView *)v22 setRenderConfig:v120];

    [(UIImageView *)v22 prepareForDisplay];
    free(v113);
    v121 = [(UIView *)v22 layer];
    [v121 setAllowsGroupOpacity:0];
  }

  else
  {
    v22 = 0;
  }

LABEL_111:
  v122 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Space-Key"];
  if (!v122)
  {
    v122 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Unlabeled-Space-Key"];
    if (!v122)
    {
      v122 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Ideographic-Space-Key"];
    }
  }

  v123 = v122;
  v124 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
  v125 = [v124 traitsForKey:v123 onKeyplane:self->_keyplane];
  v126 = [v125 symbolStyle];

  if (v123)
  {
    [v126 fontSize];
    v128 = v127;
    v129 = [v126 fontName];
  }

  else
  {
    v130 = [(UIKeyboardLayoutStar *)self renderConfig];
    v131 = [v130 usesCompactKeycapsFont];
    v132 = @"UIKBRenderFactorySystemFontName";
    if (v131)
    {
      v132 = @"UIKBRenderFactoryWordsSystemCompactFontName";
    }

    v129 = v132;

    v128 = 16.0;
  }

  if (v129 == @"UIKBRenderFactoryWordsSystemCompactFontName")
  {
    [v126 fontSize];
    v134 = v133;
    [v126 fontWeight];
    [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v134 design:v135];
  }

  else
  {
    [off_1E70ECC18 systemFontOfSize:v128];
  }
  v136 = ;

  [v189 _legacy_sizeWithFont:v136];
  v138 = v137;
  v140 = ceil(v139);
  v193 = v126;
  if (!v22 || v128 <= 10.0)
  {
    v144 = v136;
    goto LABEL_133;
  }

  [(UIView *)v22 frame];
  if (v140 + 8.0 <= v141)
  {
    v144 = v136;
LABEL_138:
    [(UIView *)v22 frame];
    v153 = (v156 - v140) * 0.5;
    [(UIView *)v22 frame];
    v155 = (v157 - v138) * 0.5;
    goto LABEL_139;
  }

  v142 = *off_1E70ECCE0;
  do
  {
    v128 = v128 + -1.0;
    if (v129 == @"UIKBRenderFactoryWordsSystemCompactFontName")
    {
      [v193 fontWeight];
      [off_1E70ECC18 systemFontOfSize:v142 weight:v128 design:v143];
    }

    else
    {
      [off_1E70ECC18 systemFontOfSize:v128];
    }
    v144 = ;

    [v189 _legacy_sizeWithFont:v144];
    v138 = v145;
    v140 = ceil(v146);
    if (v128 <= 10.0)
    {
      break;
    }

    [(UIView *)v22 frame];
    v136 = v144;
  }

  while (v140 + 8.0 > v147);
LABEL_133:
  if (v22)
  {
    goto LABEL_138;
  }

  v148 = [(UIKeyboardLayout *)self orientation];
  v149 = +[UIKeyboardInputModeController sharedInputModeController];
  v150 = [v149 currentInputMode];
  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:v148 inputMode:v150];
  v152 = v151;

  v153 = ceil(v191 + v140 * -0.5);
  [(UIView *)self bounds];
  v155 = floor(v154 - v138 + -8.0 - v152);
  if (([(UIKeyboardLayout *)self orientation]- 3) < 2)
  {
    v155 = v155 + -1.0;
  }

LABEL_139:
  v158 = v153;
  v159 = [UIKBRenderGeometry geometryWithFrame:0.0 paddedFrame:0.0, v140, v138, 0.0, 0.0, v140, v138];
  v160 = [UIKBRenderTraits traitsWithGeometry:v159];
  v161 = [v144 fontName];
  v162 = [UIKBTextStyle styleWithFontName:v161 withFontSize:v128];
  [v160 setSymbolStyle:v162];

  v163 = [(UIKeyboardLayoutStar *)self renderConfig];
  v164 = [v163 whiteText];
  v165 = UIKBColorWhite;
  if (!v164)
  {
    v165 = UIKBColorBlack;
  }

  v166 = *v165;
  v167 = [v160 symbolStyle];
  [v167 setTextColor:v166];

  v168 = +[UIKBKeyDisplayContents displayContents];
  [v168 setDisplayString:v189];
  v169 = UIKBScale();
  v170 = [UIKBRenderer rendererWithContext:0 withSize:0 withScale:255 opaque:UIKeyboardGetCurrentIdiom() renderFlags:v140 assetIdiom:v138, v169];
  [v170 renderKeyContents:v168 withTraits:v160];
  v171 = [UIImageView alloc];
  v172 = [v170 renderedImage];
  v173 = [(UIImageView *)v171 initWithImage:v172];

  [(UIView *)v173 frame];
  [(UIImageView *)v173 setFrame:v158, v155, v140, v138];
  if (v22)
  {
    [(UIView *)v22 addSubview:v173];
  }

  else
  {
    v22 = v173;
  }

  v4 = v22;
LABEL_145:

  return v4;
}

id __47__UIKeyboardLayoutStar_activationIndicatorView__block_invoke(void *a1, double a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = a1;
  *&v5 = v3;
  v6 = [v4 sortedArrayUsingFunction:keyPositionSortByHorizontalDistanceFromPoint context:{objc_msgSend(v2, "numberWithFloat:", v5)}];

  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_1163];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  return v8;
}

- (unsigned)getHandRestRecognizerState
{
  if (qword_1ED493250 != -1)
  {
    dispatch_once(&qword_1ED493250, &__block_literal_global_1185);
  }

  if (_MergedGlobals_80 != 1)
  {
    return 0;
  }

  if ([(UIKeyboardLayoutStar *)self keyplaneIsSplit])
  {
    return 0;
  }

  v3 = +[UIPeripheralHost sharedInstance];
  v4 = [v3 isUndocked];

  if (v4)
  {
    return 0;
  }

  v7 = [(UIKBTree *)self->_keyplane objectForProperty:@"restable"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEqualToString:@"nohomerow"])
  {
    v5 = 2;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue] & 1) != 0;
  }

  return v5;
}

void __50__UIKeyboardLayoutStar_getHandRestRecognizerState__block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_4;
  }

  v1 = _UIInternalPreference__UIRestablePadKeyboardsEnabled;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference__UIRestablePadKeyboardsEnabled)
  {
    goto LABEL_4;
  }

  while (v0 >= v1)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference__UIRestablePadKeyboardsEnabled, @"_UIRestablePadKeyboardsEnabled", _UIInternalPreferenceUpdateBool);
    v1 = _UIInternalPreference__UIRestablePadKeyboardsEnabled;
    if (v0 == _UIInternalPreference__UIRestablePadKeyboardsEnabled)
    {
      goto LABEL_4;
    }
  }

  if (!byte_1ED48B2C4)
  {
LABEL_4:
    _MergedGlobals_80 = 0;
  }

  else
  {
    v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v2 = [v4 preferencesActions];
    [v2 rivenSizeFactor:1.0];
    _MergedGlobals_80 = v3 <= 1.0;
  }
}

- (BOOL)handRestRecognizerShouldNeverIgnoreTouchState:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 forRestingState:(unint64_t)a6 otherRestedTouchLocations:(id)a7
{
  y = a5.y;
  x = a5.x;
  v11 = a4.y;
  v12 = a4.x;
  v14 = a3;
  v15 = a7;
  if (v14)
  {
    v16 = [v14 phase] == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:v12, v11];
  if (v17)
  {
    v18 = 0x21E00FA0F2;
    if ([v15 count])
    {
      [(UIView *)self bounds];
      if (v12 <= v19 * 0.5)
      {
        v20 = v34;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v21 = __130__UIKeyboardLayoutStar_handRestRecognizerShouldNeverIgnoreTouchState_fromPoint_toPoint_forRestingState_otherRestedTouchLocations___block_invoke;
      }

      else
      {
        v20 = &v32;
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v21 = __130__UIKeyboardLayoutStar_handRestRecognizerShouldNeverIgnoreTouchState_fromPoint_toPoint_forRestingState_otherRestedTouchLocations___block_invoke_2;
      }

      *(v20 + 2) = v21;
      *(v20 + 3) = &__block_descriptor_56_e24_B32__0__NSValue_8Q16_B24l;
      v20[4] = v12;
      v20[5] = v11;
      v20[6] = v19 * 0.5;
      v22 = [v15 indexesOfObjectsPassingTest:{v32, v33}];
      v23 = [v15 objectsAtIndexes:v22];

      v24 = [v23 count];
      if (v24 > 1)
      {
        v18 = 0x21C00FA052;
      }

      if (v14 && v24 >= 2)
      {
        v16 = [v14 phase] != 0;
        v18 = 0x21C00FA052;
      }

      if ([v17 interactionType] == 15 || objc_msgSend(v17, "interactionType") == 13)
      {
        v18 |= 1uLL;
      }
    }

    v25 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v17];
    if ([v17 interactionType] == 2)
    {
      if ([(UIKeyboardLayoutStar *)self keyHasAccentedVariants:v17])
      {
        v26 = [v17 name];
        v27 = [v26 hasPrefix:@"Assist"];

        if ((v27 & 1) == 0)
        {
          v25 |= 0x8080uLL;
        }
      }
    }

    v28 = v25 & v18;
    if (a6 != 1 && !v28)
    {
      v28 = [(UIKeyboardLayoutStar *)self upActionFlagsForKey:v17]& v18;
    }

    if (v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = v16;
    }

    if ([v17 displayTypeHint] == 10)
    {
      v16 = 1;
    }

    else
    {
      v16 = v29;
    }

    if ([v17 interactionType] == 16)
    {
      v16 |= ([v17 state] & 0x10) >> 4;
    }

    if (!v14 || a6 == 1 || (v16 & 1) != 0 || ![v14 phase])
    {
      if (a6 == 2 || (v16 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (self->_activeKey || [v17 interactionType] != 1 && objc_msgSend(v17, "interactionType") != 2)
      {
        LOBYTE(v16) = 1;
        goto LABEL_41;
      }
    }

    v30 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:x, y];
    LOBYTE(v16) = v30 == v17;
  }

LABEL_41:

  return v16 & 1;
}

- (id)getSortedKeysForDisplayRowHint:(int)a3
{
  v4 = [(UIKBTree *)self->_keyplane keys];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__UIKeyboardLayoutStar_getSortedKeysForDisplayRowHint___block_invoke;
  v11[3] = &__block_descriptor_36_e25_B32__0__UIKBTree_8Q16_B24l;
  v12 = a3;
  v5 = [v4 indexesOfObjectsPassingTest:v11];
  v6 = [v4 objectsAtIndexes:v5];

  v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_1191];
  v8 = [v6 objectsAtIndexes:v7];

  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_1193];

  return v9;
}

BOOL __55__UIKeyboardLayoutStar_getSortedKeysForDisplayRowHint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 interactionType] == 1)
  {
    v3 = [v2 representedString];
    if ([v3 length])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v2 interactionType] == 2;
    }
  }

  else
  {
    v4 = [v2 interactionType] == 2;
  }

  return v4;
}

uint64_t __55__UIKeyboardLayoutStar_getSortedKeysForDisplayRowHint___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  if (v6 - v8 < 0.0)
  {
    return -1;
  }

  else
  {
    return v6 - v8 > 0.0;
  }
}

- (id)handRestRecognizerGetHomeRowHint
{
  v20 = *MEMORY[0x1E69E9840];
  homeRowHint = self->_homeRowHint;
  if (!homeRowHint)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v18[0] = @"Caps-Lock-Key";
    v18[1] = @"Roman-to-Non-Roman-Switch-Key";
    v18[2] = @"Non-Roman-to-Roman-Switch-Key";
    v18[3] = @"Return-Key";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{4, 0}];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:*(*(&v14 + 1) + 8 * i)];
          if (v9)
          {
            v10 = v9;
            v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "displayRowHint")}];
            v12 = self->_homeRowHint;
            self->_homeRowHint = v11;

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    homeRowHint = self->_homeRowHint;
  }

  return homeRowHint;
}

- (CGSize)handRestRecognizerStandardKeyPixelSize
{
  v3 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 intValue];
  v6 = v5;
  v7 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:v5];
  v8 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:(v6 - 1)];
  if ([v7 count] < 5 || objc_msgSend(v8, "count") <= 3)
  {

LABEL_6:
    v26.receiver = self;
    v26.super_class = UIKeyboardLayoutStar;
    [(UIKeyboardLayout *)&v26 handRestRecognizerStandardKeyPixelSize];
    v20 = v22;
    v21 = v23;
    goto LABEL_7;
  }

  v9 = [v8 objectAtIndex:3];
  [v9 frame];
  v11 = v10;

  v12 = [v7 objectAtIndex:3];
  [v12 frame];
  v14 = v13;
  v16 = v15;

  v17 = [v7 objectAtIndex:4];
  [v17 frame];
  v19 = v18;

  v20 = v19 - v14;
  v21 = v16 - v11;

LABEL_7:
  v24 = v20;
  v25 = v21;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)handRestRecognizerNotifyRestForBegin:(BOOL)a3 location:(CGPoint)a4 timestamp:(double)a5 pathIndex:(int)a6 touchUUID:(id)a7 context:(id)a8
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v20 = a8;
  v15 = a7;
  v16 = +[UIKeyboardImpl activeInstance];
  v17 = [(UIKeyboardLayout *)self fingerIDForTouchUUID:v15];

  if (v13)
  {
    v18 = 4;
  }

  else
  {
    v18 = 5;
  }

  v19 = [MEMORY[0x1E69D9668] touchEventWithStage:v18 location:a6 radius:v17 timestamp:-1 pathIndex:x fingerID:y forcedKeyCode:{1.0, a5}];
  if (v13)
  {
    [v16 performHitTestForTouchEvent:v19 executionContextPassingNSNumber:v20];
  }

  else
  {
    [v16 skipHitTestForTouchEvent:v19];
    [v20 returnExecutionToParent];
  }
}

- (CGPoint)getCenterForKeyUnderLeftIndexFinger
{
  v3 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = v3;
  if (v3)
  {
    v5 = -[UIKeyboardLayoutStar getSortedKeysForDisplayRowHint:](self, "getSortedKeysForDisplayRowHint:", [v3 intValue]);
    if ([v5 count] > 6)
    {
      v10 = [v5 objectAtIndex:3];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v23.origin.x = v12;
      v23.origin.y = v14;
      v23.size.width = v16;
      v23.size.height = v18;
      MidX = CGRectGetMidX(v23);
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      MidY = CGRectGetMidY(v24);

      goto LABEL_6;
    }
  }

  v21.receiver = self;
  v21.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v21 getCenterForKeyUnderLeftIndexFinger];
  MidX = v6;
  MidY = v8;
LABEL_6:

  v19 = MidX;
  v20 = MidY;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)getCenterForKeyUnderRightIndexFinger
{
  v3 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = v3;
  if (v3)
  {
    v5 = -[UIKeyboardLayoutStar getSortedKeysForDisplayRowHint:](self, "getSortedKeysForDisplayRowHint:", [v3 intValue]);
    if ([v5 count] > 6)
    {
      v10 = [v5 objectAtIndex:6];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v23.origin.x = v12;
      v23.origin.y = v14;
      v23.size.width = v16;
      v23.size.height = v18;
      MidX = CGRectGetMidX(v23);
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      MidY = CGRectGetMidY(v24);

      goto LABEL_6;
    }
  }

  v21.receiver = self;
  v21.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v21 getCenterForKeyUnderLeftIndexFinger];
  MidX = v6;
  MidY = v8;
LABEL_6:

  v19 = MidX;
  v20 = MidY;
  result.y = v20;
  result.x = v19;
  return result;
}

- (id)getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:(int64_t)a3
{
  v5 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
    v8 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:v7];
    if ([v8 count])
    {
      v9 = [v8 count];
      if ((v9 - 1) >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9 - 1;
      }

      v11 = [v8 objectAtIndex:v10];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = v17 * 0.05;
      v21 = floorf(v20);
      v36.origin.x = v13;
      v36.origin.y = v15;
      v36.size.width = v17;
      v36.size.height = v19;
      v37 = CGRectInset(v36, v21, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v26 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:(v7 + a3)];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __78__UIKeyboardLayoutStar_getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow___block_invoke;
      v34[3] = &__block_descriptor_72_e25_B32__0__UIKBTree_8Q16_B24l;
      v34[4] = a3;
      *&v34[5] = x;
      *&v34[6] = y;
      *&v34[7] = width;
      *&v34[8] = height;
      v27 = [v26 indexesOfObjectsPassingTest:v34];
      v28 = [v26 objectsAtIndexes:v27];

      if ([v28 count])
      {
        v29 = MEMORY[0x1E696AD98];
        v30 = [v28 objectAtIndex:0];
        [v30 frame];
        v32 = [v29 numberWithDouble:v31 - v13];
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

BOOL __78__UIKeyboardLayoutStar_getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow___block_invoke(uint64_t a1, void *a2)
{
  [a2 frame];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if ((*(a1 + 32) & 0x8000000000000000) != 0)
  {
    MinX = CGRectGetMinX(*&v3);
    if (MinX <= CGRectGetMinX(*(a1 + 40)))
    {
      v12 = CGRectGetMinX(*(a1 + 40));
      goto LABEL_7;
    }

    return 0;
  }

  v11 = CGRectGetMinX(*(a1 + 40));
  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  if (v11 > CGRectGetMinX(v15))
  {
    return 0;
  }

  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = v9;
  v16.size.height = v10;
  v12 = CGRectGetMinX(v16);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
LABEL_7:
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v9;
  v17.size.height = v10;
  return v12 <= CGRectGetMaxX(v17);
}

- (void)setNeedsVirtualDriftUpdate
{
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v3 setNeedsVirtualDriftUpdate];
  if ([(UIKeyboardLayout *)self supportsVirtualDrift])
  {
    [(UIKeyboardLayoutStar *)self updateKeyCentroids];
  }
}

- (void)resetHRRLayoutState
{
  v3.receiver = self;
  v3.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v3 resetHRRLayoutState];
  [(UIKeyboardLayoutStar *)self clearAllTouchInfo];
}

- (void)calculateReachabilityScoreWithKey:(id)a3 keyError:(CGPoint)a4
{
  x = a4.x;
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  p_leftSideReachability = &self->_leftSideReachability;
  if (!self->_leftSideReachability)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
    v9 = *p_leftSideReachability;
    *p_leftSideReachability = v8;
  }

  p_rightSideReachability = &self->_rightSideReachability;
  if (!self->_rightSideReachability)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
    v12 = *p_rightSideReachability;
    *p_rightSideReachability = v11;
  }

  v13 = [(NSMutableSet *)self->_leftKeySet containsObject:v6];
  v14 = &self->_leftSideReachability;
  if ((v13 & 1) != 0 || (v15 = [(NSMutableSet *)self->_rightKeySet containsObject:v6], v14 = &self->_rightSideReachability, v15))
  {
    v16 = *v14;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:x];
    [(NSMutableArray *)v16 addObject:v17];
  }

  if ([*p_leftSideReachability count] >= 5 && objc_msgSend(*p_rightSideReachability, "count") >= 5)
  {
    if ([*p_leftSideReachability count] >= 0x15)
    {
      [*p_leftSideReachability removeObjectsInRange:{0, objc_msgSend(*p_leftSideReachability, "count") - 20}];
    }

    if ([*p_rightSideReachability count] >= 0x15)
    {
      [*p_rightSideReachability removeObjectsInRange:{0, objc_msgSend(*p_rightSideReachability, "count") - 20}];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = *p_leftSideReachability;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
    v20 = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v22 = v19;
      v23 = *v43;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v42 + 1) + 8 * i) doubleValue];
          v21 = v21 + v25;
        }

        v22 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v22);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = *p_rightSideReachability;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      v20 = 0.0;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v38 + 1) + 8 * j) doubleValue];
          v20 = v20 + v31;
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v28);
    }

    v32 = v21 / [*p_leftSideReachability count];
    v33 = v20 / [*p_rightSideReachability count];
    v34 = fabs(v33);
    if (v32 > 8.0 && v34 < 8.0)
    {
      v37 = ceil(v32);
    }

    else
    {
      if (fabs(v32) >= 8.0 || v33 >= -8.0)
      {
        goto LABEL_40;
      }

      v37 = floor(v33);
    }

    [_UIKeyboardUsageTracking keyboardReachabilityDistribution:v37, v38];
  }

LABEL_40:
}

- (double)biasedKeyboardWidthRatio
{
  v2 = +[UIKeyboardImpl keyboardScreen];
  [v2 _unjailedReferenceBounds];
  v4 = v3;

  return 320.0 / v4;
}

- (void)setKeyboardBias:(int64_t)a3
{
  screenTraits = self->super._screenTraits;
  if (!screenTraits || !screenTraits->_isStickerPickerServiceCollectionView)
  {
    if (self->_currentHandBias != a3 || [(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (v6 = self->_liveKeyplaneView) != 0 && (currentHandBias = self->_currentHandBias, currentHandBias != [(TUIKeyplaneView *)v6 currentHandBias]))
    {
      self->_currentHandBias = a3;
      if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        liveKeyplaneView = self->_liveKeyplaneView;
        if (liveKeyplaneView)
        {
          [(TUIKeyplaneView *)liveKeyplaneView setKeyboardBias:a3];
        }
      }

      [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
      [_UIKeyboardUsageTracking countReachableKeyboardHandBiasChangeToBias:a3];
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"UIKeyboardHandBiasDidChangeNotification" object:0 userInfo:0];
    }
  }
}

- (void)_setBiasEscapeButtonVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardLayoutStar *)self currentHandBias];
  biasEscapeButton = self->_biasEscapeButton;
  if (v3 && v5)
  {
    if (!biasEscapeButton)
    {
      v7 = [UIButton alloc];
      v8 = [(UIButton *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_biasEscapeButton;
      self->_biasEscapeButton = v8;

      [(UIView *)self->_biasEscapeButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_biasEscapeButton setContentMode:4];
      [(UIControl *)self->_biasEscapeButton addTarget:self action:sel__didTapBiasEscapeButton_ forControlEvents:64];
      [(UIView *)self addSubview:self->_biasEscapeButton];
      v10 = [(UIView *)self->_biasEscapeButton centerYAnchor];
      v11 = [(UIView *)self centerYAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v12 setActive:1];

      biasEscapeButton = self->_biasEscapeButton;
    }

    [(UIView *)biasEscapeButton setHidden:0];
    [(UIView *)self frame];
    v14 = v13;
    [(UIKeyboardLayoutStar *)self biasedKeyboardWidthRatio];
    v16 = v14 * (1.0 - v15);
    v17 = v16 * 0.25 + -15.0;
    v43 = +[UIColor whiteColor];
    v18 = [(UIKeyboardLayoutStar *)self renderConfig];
    v19 = [v18 lightKeyboard];

    if (v19)
    {
      if (![(UIKeyboardLayoutStar *)self isHandwritingPlane]&& ![(UIKeyboardLayoutStar *)self isEmojiKeyplane])
      {
LABEL_14:
        v22 = [UIImage kitImageNamed:@"bias_escape_chevron.png"];
        v23 = [v22 _flatImageWithColor:v43];

        [(UIKBTree *)self->_keyplane frame];
        v25 = v24;
        [v23 size];
        v27 = (v25 - v26) * 0.5 + -15.0;
        [v23 size];
        v29 = v16 * 3.0 / 5.0 - (v17 + v28 + 15.0);
        if (v29 <= 15.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 15.0;
        }

        if (v5 == 1)
        {
          [(UIButton *)self->_biasEscapeButton setImage:v23 forState:0];
          [(UIButton *)self->_biasEscapeButton setContentEdgeInsets:v27, 15.0, v27, v30];
          biasEscapeButtonLeftConstraint = self->_biasEscapeButtonLeftConstraint;
          if (!biasEscapeButtonLeftConstraint)
          {
            v32 = [(UIView *)self->_biasEscapeButton leftAnchor];
            v33 = [(UIView *)self leftAnchor];
            v34 = [v32 constraintEqualToAnchor:v33 constant:v17];
            v35 = self->_biasEscapeButtonLeftConstraint;
            self->_biasEscapeButtonLeftConstraint = v34;

            biasEscapeButtonLeftConstraint = self->_biasEscapeButtonLeftConstraint;
          }

          [(NSLayoutConstraint *)biasEscapeButtonLeftConstraint setConstant:v17];
          [(NSLayoutConstraint *)self->_biasEscapeButtonLeftConstraint setActive:1];
          [(NSLayoutConstraint *)self->_biasEscapeButtonRightConstraint setActive:0];
        }

        else
        {
          v36 = [v23 imageWithHorizontallyFlippedOrientation];
          [(UIButton *)self->_biasEscapeButton setImage:v36 forState:0];
          [(UIButton *)self->_biasEscapeButton setContentEdgeInsets:v27, v30, v27, 15.0];
          biasEscapeButtonRightConstraint = self->_biasEscapeButtonRightConstraint;
          if (biasEscapeButtonRightConstraint)
          {
            v38 = -v17;
          }

          else
          {
            v39 = [(UIView *)self->_biasEscapeButton rightAnchor];
            v40 = [(UIView *)self rightAnchor];
            v38 = -v17;
            v41 = [v39 constraintEqualToAnchor:v40 constant:v38];
            v42 = self->_biasEscapeButtonRightConstraint;
            self->_biasEscapeButtonRightConstraint = v41;

            biasEscapeButtonRightConstraint = self->_biasEscapeButtonRightConstraint;
          }

          [(NSLayoutConstraint *)biasEscapeButtonRightConstraint setConstant:v38];
          [(NSLayoutConstraint *)self->_biasEscapeButtonRightConstraint setActive:1];
          [(NSLayoutConstraint *)self->_biasEscapeButtonLeftConstraint setActive:0];
        }

        return;
      }

      v20 = +[UIColor blackColor];
    }

    else
    {
      v20 = [UIColor colorWithWhite:0.353 alpha:1.0];
    }

    v21 = v20;

    v43 = v21;
    goto LABEL_14;
  }

  [(UIView *)biasEscapeButton setHidden:1];
}

- (void)_didTapBiasEscapeButton:(id)a3
{
  [(UIKeyboardLayoutStar *)self setKeyboardBias:0];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 setHandBias:0];

  v5 = +[UIKeyboardImpl activeInstance];
  [v5 updateForHandBiasChange];
}

- (void)resizeKeyplaneAndRedraw:(BOOL)a3
{
  v3 = a3;
  v53 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset]|| +[UIKeyboard resizable])
  {
    [(UIKBTree *)self->_keyplane frame];
    v6 = v5;
    v8 = v7;
    [(UIKeyboardLayoutStar *)self _addResizeTransformationsIfNecessary];
    [(UIKBTree *)self->_keyplane frame];
    if (v6 != v10 || v8 != v9)
    {
      [(UIKeyboardLayoutStar *)self updateKeyboardForKeyplane:self->_keyplane];
      if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        liveKeyplaneView = self->_liveKeyplaneView;
        [(UIView *)self bounds];
        [(TUIKeyplaneView *)liveKeyplaneView updateToSize:v13, v14];
      }

      else
      {
        v33 = v3;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = [(UIKBTree *)self->_keyplane subtrees];
        v36 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v36)
        {
          v35 = *v47;
          do
          {
            v15 = 0;
            do
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = v15;
              v16 = *(*(&v46 + 1) + 8 * v15);
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v17 = [v16 keySet];
              v18 = [v17 subtrees];

              v19 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v43;
                do
                {
                  v22 = 0;
                  do
                  {
                    if (*v43 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v42 + 1) + 8 * v22);
                    v38 = 0u;
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    v24 = [v23 subtrees];
                    v25 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v39;
                      do
                      {
                        v28 = 0;
                        do
                        {
                          if (*v39 != v27)
                          {
                            objc_enumerationMutation(v24);
                          }

                          [(UIKBKeyplaneView *)self->_keyplaneView updateFrameForKey:*(*(&v38 + 1) + 8 * v28++)];
                        }

                        while (v26 != v28);
                        v26 = [v24 countByEnumeratingWithState:&v38 objects:v50 count:16];
                      }

                      while (v26);
                    }

                    ++v22;
                  }

                  while (v22 != v20);
                  v20 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
                }

                while (v20);
              }

              v15 = v37 + 1;
            }

            while (v37 + 1 != v36);
            v36 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v36);
        }

        v3 = v33;
      }

      [(UIView *)self bounds];
      v31 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v29, v30];
      if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        [(UIKBKeyplaneView *)self->_keyplaneView setSuppressDrawing:!v3];
        [v31 size];
        [(UIView *)self->_keyplaneView setSize:?];
        [(UIKBKeyplaneView *)self->_keyplaneView setSuppressDrawing:0];
      }

      [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v31];
      if (v3)
      {
        v32 = +[UIKeyboardImpl activeInstance];
        [v32 layoutDidResize];
      }
    }
  }
}

- (BOOL)keyplaneIsSplit
{
  v3 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v4 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplane;
  if (v3)
  {
    v4 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return [v5 isSplit];
}

- (id)splitTransitionDelegate
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    WeakRetained = objc_loadWeakRetained(&self->_splitKeyplaneTransitionDelegate);

    if (!WeakRetained)
    {
      v4 = [(UIView *)self window];
      v5 = [v4 screen];
      v6 = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:v5];
      objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, v6);
    }

    v7 = objc_loadWeakRetained(&self->_splitKeyplaneTransitionDelegate);
  }

  else
  {
    v7 = [(UIKeyboardSplitTransitionView *)self->_transitionView splitTransitionDelegate];
  }

  return v7;
}

- (void)prepareForSplitTransition
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& !+[UIInputWindowController supportsStateBasedAnimations])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView prepareForSplitTransition];
  }

  v3 = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
  [v3 prepareForTransition];

  [(UIKeyboardLayoutStar *)self flushKeyCache:0];
  [(UIView *)self setUserInteractionEnabled:0];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 clearLanguageIndicator];

  +[UIKeyboardImpl persistentSplitProgress];
  if (self->_finalSplitProgress != v5)
  {
    self->_initialSplitProgress = v5;
  }

  if (+[UIDictationController isRunning])
  {
    v6 = +[UIDictationController sharedInstance];
    [v6 cancelDictation];
  }
}

- (void)showSplitTransitionView:(BOOL)a3
{
  v3 = a3;
  if (a3 && ([(UIView *)self->_transitionView isHidden]|| [(UIKeyboardLayoutStar *)self useCrescendoLayout]))
  {
    [(UIKeyboardLayoutStar *)self prepareForSplitTransition];
  }

  if ([(UIKeyboardLayoutStar *)self pinchSplitGestureEnabled])
  {
    if (self->_isRebuilding && v3)
    {
      if (![(UIKeyboardSplitTransitionView *)self->_transitionView canDisplayTransition]&& ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        [(UIKeyboardLayoutStar *)self rebuildSplitTransitionView];
      }
    }

    else
    {
      [(UIView *)self->_keyplaneView setHidden:v3];
      [(UIView *)self->_backgroundView setHidden:v3];
      v5 = [(UIView *)self->_dimKeyboardImageView layer];
      [v5 removeAllAnimations];

      [(UIView *)self->_dimKeyboardImageView setHidden:v3];
      v6 = !v3 || [(UIKeyboardLayoutStar *)self useCrescendoLayout];
      [(UIView *)self->_transitionView setHidden:v6];
    }
  }

  [(UIView *)self setUserInteractionEnabled:v3 ^ 1];
}

- (void)finishSplitWithCompletion:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__UIKeyboardLayoutStar_finishSplitWithCompletion___block_invoke;
  v11 = &unk_1E70F37C0;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v6 = _Block_copy(&v8);
  [(UIKeyboardLayoutStar *)self setPlayKeyClickSoundOn:0, v8, v9, v10, v11, v12];
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& !+[UIInputWindowController supportsStateBasedAnimations])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView finishSplitTransition];
  }

  v7 = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
  [v7 finishTransitionWithCompletion:v6];
}

uint64_t __50__UIKeyboardLayoutStar_finishSplitWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[121] == v2[122])
  {
    [*(a1 + 32) bounds];
    v7 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v5, v6];
    [v2 _didChangeKeyplaneWithContext:v7];
  }

  else
  {
    [UIKeyboardImpl setPersistentSplitProgress:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 656);
    if (*(v3 + 976) <= 0.0)
    {
      [v3 defaultNameForKeyplaneName:v4];
    }

    else
    {
      [v3 splitNameForKeyplaneName:v4];
    }
    v7 = ;
    v8 = [*(*(a1 + 32) + 632) subtreeWithName:v7];

    if (!v8)
    {
      v9 = [*(a1 + 32) splitNameForKeyplane:*(*(a1 + 32) + 640)];

      v7 = v9;
    }

    [*(a1 + 32) setKeyplaneName:v7];
    [*(a1 + 32) updateKeyCentroids];
  }

  [*(a1 + 32) showSplitTransitionView:0];
  [*(*(a1 + 32) + 952) resetPinchCalculations];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"UIKeyboardLayoutDidChangedNotification" object:0];

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 showsCandidateBar];

  if (v12)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 candidateController];
    [v14 updateStates];
  }

  v15 = +[UIKeyboardImpl activeInstance];
  [v15 forceShiftUpdate];

  [*(a1 + 32) _cleanUpBlinkAssertionIfNecessary];
  v16 = +[UIKeyboardSplitControlMenu activeInstance];
  [v16 didFinishSplitTransition];

  v17 = +[UIInputSwitcherView activeInstance];
  [v17 didFinishSplitTransition];

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }

  v19 = *(a1 + 32);

  return [v19 updateTouchProcessingForKeyplaneChange];
}

- (void)finishSplitTransitionWithCompletion:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected])
  {
    [(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer finalProgressForInitialProgress:self->_initialSplitProgress];
    self->_finalSplitProgress = v5;
    if (v5 != self->_initialSplitProgress)
    {
      v6 = +[UIKeyboardImpl activeInstance];
      [v6 setRivenSplitLock:1];
    }
  }

  v7 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  finalSplitProgress = self->_finalSplitProgress;
  if (v7)
  {
    liveKeyplaneView = self->_liveKeyplaneView;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__UIKeyboardLayoutStar_finishSplitTransitionWithCompletion___block_invoke;
    v16[3] = &unk_1E70FE248;
    v10 = &v17;
    v16[4] = self;
    v17 = v4;
    v11 = v4;
    [(TUIKeyplaneView *)liveKeyplaneView transitionWillFinishWithProgress:v16 completion:finalSplitProgress];
  }

  else
  {
    transitionView = self->_transitionView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__UIKeyboardLayoutStar_finishSplitTransitionWithCompletion___block_invoke_2;
    v14[3] = &unk_1E70F37C0;
    v10 = &v15;
    v14[4] = self;
    v15 = v4;
    v13 = v4;
    [(UIKeyboardSplitTransitionView *)transitionView finishWithProgress:v14 completionBlock:finalSplitProgress];
  }
}

void __60__UIKeyboardLayoutStar_finishSplitTransitionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishSplitWithCompletion:*(a1 + 40)];
  if (!+[UIInputWindowController supportsStateBasedAnimations])
  {
    v2 = [*(a1 + 32) splitTransitionDelegate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 976);
    [*(v3 + 1448) fullHeightForDockedKeyboard];
    v6 = v5;
    [*(*(a1 + 32) + 1448) leftSplitSize];
    [v2 updateProgress:v4 startHeight:v6 endHeight:v7 + 10.0];
  }

  v8 = [*(a1 + 32) splitTransitionDelegate];
  [v8 transitionDidFinish:1];
}

- (BOOL)pinchSplitGestureEnabled
{
  v3 = [(UIKeyboardLayoutStar *)self renderConfig];
  v4 = [v3 animatedBackground];

  if (v4)
  {
    return 0;
  }

  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    liveKeyplaneView = self->_liveKeyplaneView;

    return [(TUIKeyplaneView *)liveKeyplaneView supportsSplit];
  }

  else
  {

    return UIKeyboardSplitTransitionViewSupportsPinch();
  }
}

- (BOOL)pinchCanBeginWithTouches:(id)a3 andScale:(double)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_isTrackpadMode || [(UIKeyboardLayout *)self isFloating]|| ![(UIView *)self isUserInteractionEnabled]|| (v7 = [(UIKBScreenTraits *)self->super._screenTraits isSplit], a4 >= 1.0) && v7 || (v8 = [(UIKBScreenTraits *)self->super._screenTraits isSplit], a4 <= 1.0) && !v8)
  {
    v9 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [UIKBTouchState touchUUIDForTouch:*(*(&v20 + 1) + 8 * i)];
          v16 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v15];
          v17 = [v16 key];
          v18 = [v17 interactionType];

          if (v18 == 11)
          {
            v9 = 0;
            goto LABEL_20;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_20:
  }

  return v9;
}

- (void)didDetectPinchWithSeparation:(double)a3
{
  self->_finalSplitProgress = self->_initialSplitProgress;
  [(UIView *)self frame];
  v6 = v5 * -0.3;
  initialSplitProgress = self->_initialSplitProgress;
  [(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer initialPinchSeparation];
  v9 = initialSplitProgress + (v8 - a3) / v6;

  [(UIKeyboardLayoutStar *)self setSplitProgress:v9];
}

- (void)pinchDidConsumeTouch:(id)a3
{
  v6 = [UIKBTouchState touchUUIDForTouch:a3];
  v4 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v6];
  v5 = [v4 touch];

  [(UIKeyboardLayoutStar *)self clearInfoForTouch:v5];
}

- (void)pinchHandler:(id)a3
{
  v4 = a3;
  if ([v4 state] == 5)
  {
    v5 = [v4 pinchDetected];

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = [v4 state];

    if (v6 != 3)
    {
      return;
    }
  }

  [(UIKeyboardLayoutStar *)self finishSplitTransition];
}

- (void)setSplitProgress:(double)a3
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    v5 = 1.0;
    if (a3 <= 1.0)
    {
      v5 = a3;
    }

    if (a3 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [(UIKeyboardLayoutStar *)self showSplitTransitionView:1, v5];
    if (!+[UIInputWindowController supportsStateBasedAnimations])
    {
      [(TUIKeyplaneView *)self->_liveKeyplaneView updateSplitProgress:v6];
    }

    v10 = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
    [(TUIKeyplaneView *)self->_liveKeyplaneView fullHeightForDockedKeyboard];
    v8 = v7;
    [(TUIKeyplaneView *)self->_liveKeyplaneView leftSplitSize];
    [v10 updateProgress:v6 startHeight:v8 endHeight:v9 + 10.0];
  }

  else
  {
    if (self->_splitTransitionNeedsRebuild)
    {
      [(UIKeyboardLayoutStar *)self rebuildSplitTransitionView];
    }

    [(UIKeyboardSplitTransitionView *)self->_transitionView updateWithProgress:a3];
    if ([(UIView *)self->_transitionView isHidden])
    {

      [(UIKeyboardLayoutStar *)self showSplitTransitionView:1];
    }
  }
}

- (void)_autoSplit:(id)a3
{
  [a3 timestamp];
  v5 = v4;
  v6 = (v4 - self->_autoSplitLastUpdate) * 1000.0;
  v7 = 1.0;
  if (v6 > 1.0)
  {
    v8 = v6 / 1000.0 / 0.4 + self->_autoSplitElapsedTime;
    self->_autoSplitElapsedTime = v8;
    v9 = self->_initialSplitProgress + v8 * (self->_finalSplitProgress - self->_initialSplitProgress);
    if (v9 <= 1.0)
    {
      v7 = v9;
    }

    if (v9 >= 0.0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    [(UIKeyboardLayoutStar *)self setSplitProgress:v10 * v10];
    if (vabdd_f64(v10, self->_finalSplitProgress) < 0.01)
    {
      [(CADisplayLink *)self->_displayLink invalidate];
      displayLink = self->_displayLink;
      self->_displayLink = 0;

      [(UIKeyboardLayoutStar *)self finishSplitTransition];
    }

    self->_autoSplitLastUpdate = v5;
  }
}

- (void)setSplit:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(UIKBScreenTraits *)self->super._screenTraits supportsSplit])
  {
    displayLink = self->_displayLink;
    if (displayLink)
    {
      [(CADisplayLink *)displayLink invalidate];
      v8 = self->_displayLink;
      self->_displayLink = 0;
    }

    v9 = 0.0;
    if (v5)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    self->_finalSplitProgress = v10;
    if (!v5)
    {
      v9 = 1.0;
    }

    self->_initialSplitProgress = v9;
    if (v4)
    {
      v11 = [(UIKBScreenTraits *)self->super._screenTraits screen];
      v12 = [v11 displayLinkWithTarget:self selector:sel__autoSplit_];
      v13 = self->_displayLink;
      self->_displayLink = v12;

      v14 = self->_displayLink;
      v15 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v14 addToRunLoop:v15 forMode:*MEMORY[0x1E695DA28]];

      self->_autoSplitLastUpdate = CACurrentMediaTime();
      self->_autoSplitElapsedTime = 0.0;
      initialSplitProgress = self->_initialSplitProgress;

      [(UIKeyboardLayoutStar *)self setSplitProgress:initialSplitProgress];
    }

    else
    {
      finalSplitProgress = self->_finalSplitProgress;

      [(UIKeyboardLayoutStar *)self finishSplitTransitionWithProgress:finalSplitProgress];
    }
  }
}

- (void)prepareForFloatingTransition:(BOOL)a3
{
  if (a3)
  {
    [(UIKeyboardLayoutStar *)self flushKeyCache:0];
    [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
    [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];

    [(UIView *)self setUserInteractionEnabled:0];
  }

  else
  {
    [(UIView *)self setUserInteractionEnabled:1];
    [(UIKeyboardLayout *)self updateTouchProcessingForKeyplaneChange];
    [(UIKeyboardLayout *)self resetTouchProcessingForKeyboardChange];
    if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      [(TUIKeyplaneView *)self->_liveKeyplaneView transitionToKeyplane:self->_keyplane];

      [(UIKeyboardLayoutStar *)self updateAllKeyStates];
    }
  }
}

- (BOOL)_handleTouchForEmojiInputView
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 normalizedIdentifier];
  if ([v5 isEqualToString:@"emoji"])
  {
    [(UIKBTree *)self->_keyplane frame];
    v7 = v6;
    [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
    v9 = v7 < v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)_paddedKeyUnionFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIKeyboardLayoutStar *)self hitBuffer];
  v12 = -v11;
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  v36 = CGRectInset(v35, 0.0, v12);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  if ([(UIKeyboardLayoutStar *)self _handleTouchForEmojiInputView])
  {
    [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
    v18 = (width - v17) * 0.5;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectInset(v37, v18, 0.0);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  if ([(UIKeyboardLayoutStar *)self currentHandBias]&& ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    [(UIKBTree *)self->_keyplane keyUnionFrame];
    height = v19;
    x = v20 + -25.0;
    width = v21 + 50.0;
    y = v22 + 0.0;
  }

  v23 = [(UIKeyboardLayoutStar *)self activeKey];
  v24 = [v23 state];

  if (v24 == 16)
  {
    v25 = [(UIKeyboardLayoutStar *)self activeKey];
    v26 = [(UIKeyboardLayoutStar *)self viewForKey:v25];

    [v26 bounds];
    [(UIView *)self convertRect:v26 fromView:?];
    v42.origin.x = v27;
    v42.origin.y = v28;
    v42.size.width = v29;
    v42.size.height = v30;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v40 = CGRectUnion(v39, v42);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (double)hitBuffer
{
  [(UIKBScreenTraits *)self->super._screenTraits keyboardBarHeight];
  v4 = v3;
  v5 = CFAbsoluteTimeGetCurrent() - self->_prevTouchDownTime;
  result = 0.0;
  if (v5 < 0.35)
  {
    result = v4 * 0.6;
    if (v5 >= 0.2)
    {
      v7 = (0.35 - v5) / 0.15;
      return result * v7;
    }
  }

  return result;
}

- (BOOL)_pointAllowedInStaticHitBuffer:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 currentInputMode];

  v8 = [(UIKeyboardLayout *)self sizeDelegate];
  [v8 deviceSpecificStaticHitBufferForInterfaceOrientation:-[UIKeyboardLayout orientation](self inputMode:{"orientation"), v7}];
  v10 = v9;

  if (v10 <= 0.00000011920929)
  {
    goto LABEL_7;
  }

  [(UIView *)self bounds];
  v12 = v11 - v10;
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
  {
    if (y <= v12)
    {
LABEL_7:
      v13 = 1;
      goto LABEL_8;
    }
  }

  else if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23 || y <= v12)
  {
    goto LABEL_7;
  }

  if ([(UIKBTree *)self->_keyplane isKanaKeyboard])
  {
    v13 = 0;
  }

  else
  {
    v16 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Space-Key"];
    v17 = v16;
    if (v16)
    {
      [v16 paddedFrame];
      v18 = v22.origin.x;
      v19 = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
      if (x <= CGRectGetMinX(v22))
      {
        v13 = 0;
      }

      else
      {
        v23.origin.x = v18;
        v23.origin.y = v19;
        v23.size.width = width;
        v23.size.height = height;
        v13 = x < CGRectGetMaxX(v23);
      }
    }

    else
    {
      v13 = 1;
    }
  }

LABEL_8:

  return v13;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [a4 _gsEvent];

  return [(UIKeyboardLayoutStar *)self pointInside:v7 forEvent:x, y];
}

- (BOOL)pointInside:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  if ([(UIKeyboardLayoutStar *)self _pointAllowedInStaticHitBuffer:a4]&& ([(UIView *)self bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(UIKeyboardLayoutStar *)self hitBuffer], v16 = -v15, v65.origin.x = v8, v65.origin.y = v10, v65.size.width = v12, v65.size.height = v14, v66 = CGRectInset(v65, 0.0, v16), v63.x = x, v63.y = y, CGRectContainsPoint(v66, v63)))
  {
    if ([(UIKeyboardLayoutStar *)self keyplaneIsSplit])
    {
      v17 = [(UIKeyboardLayoutStar *)self keyViewHitTestForPoint:x, y];

      if (!v17)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [(UIKeyboardLayoutStar *)self lastTouchUpTimestamp];
        if (Current - v19 > 0.25)
        {
          [(UIKeyboardLayoutStar *)self frameForKeylayoutName:@"split-left"];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          [(UIKeyboardLayoutStar *)self frameForKeylayoutName:@"split-right"];
          rect = v28;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v67.origin.x = v21;
          v67.origin.y = v23;
          v67.size.width = v25;
          v67.size.height = v27;
          if (!CGRectIsEmpty(v67))
          {
            v68.origin.x = rect;
            v68.origin.y = v30;
            v68.size.width = v32;
            v68.size.height = v34;
            v35 = 1;
            if (!CGRectIsEmpty(v68) && x >= v25 + 24.0)
            {
              [(UIView *)self frame];
              return x > v36 - v32 + -24.0;
            }

            return v35;
          }
        }
      }

      return 1;
    }

    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
    {
      v55 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v56 = [v55 preferencesActions];
      [v56 rivenSizeFactor:1.0];
      v58 = v57;

      if (v58 > 1.0)
      {
        [(UIView *)self bounds];
        v60 = (v59 - y) * 0.03125;
        if (x * 0.0625 + v60 <= 1.0)
        {
          return 0;
        }

        [(UIView *)self bounds];
        return v60 + (v61 - x) * 0.0625 > 1.0;
      }
    }

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

  if (-[UIKeyboardLayoutStar _handleTouchForEmojiInputView](self, "_handleTouchForEmojiInputView") && (-[UIKBTree firstCachedKeyWithName:](self->_keyplane, "firstCachedKeyWithName:", @"Emoji-InputView-Key"), v38 = objc_claimAutoreleasedReturnValue(), [v38 frame], v40 = v39, v38, y < v40))
  {
    [(UIView *)self bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [(UIKBTree *)self->_keyplane frame];
    v50 = v49;
    [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
    v52 = (v50 - v51) * 0.5;
    v69.origin.x = v42;
    v69.origin.y = v44;
    v69.size.width = v46;
    v69.size.height = v48;
    v70 = CGRectInset(v69, v52, 0.0);
    v64.x = x;
    v64.y = y;
    v35 = CGRectContainsPoint(v70, v64);
    v53 = [(UIKeyboardLayoutStar *)self keyViewHitTestForPoint:x, y];
    if (v53)
    {
      v35 = 1;
    }
  }

  else
  {
    v53 = [(UIKeyboardLayoutStar *)self keyViewHitTestForPoint:x, y];
    if (v53)
    {
      v35 = 1;
    }

    else
    {
      v35 = v37;
    }
  }

  return v35;
}

- (void)touchDown:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UIKeyboardLayoutStar *)self activeKey];

  if (v9)
  {
    v10 = [(UIKeyboardLayoutStar *)self activeKey];
    v11 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v10];

    if ([v11 delayed] && !self->_didLongPress && objc_msgSend(v11, "continuousPathState") == 1)
    {
      [v11 setDelayed:0];
      v12 = [v11 key];
      v13 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v12];

      [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:6 forTouchInfo:v11];
      v14 = [v11 key];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __51__UIKeyboardLayoutStar_touchDown_executionContext___block_invoke;
      v41[3] = &unk_1E70FD1B8;
      v41[4] = self;
      v42 = v7;
      v15 = [v8 childWithContinuation:v41];
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:v14 withActions:v13 executionContext:v15];

LABEL_34:
      goto LABEL_35;
    }
  }

  [v7 locationInView:self];
  v17 = v16;
  v19 = v18;
  v20 = [(UIKeyboardLayoutStar *)self pointInside:0 forEvent:?];
  [(UIKeyboardLayoutStar *)self _paddedKeyUnionFrame];
  v43.x = v17;
  v43.y = v19;
  v21 = CGRectContainsPoint(v44, v43);
  v22 = [(UIKeyboardLayoutStar *)self modalDisplayView];

  v23 = [(UIKeyboardLayoutStar *)self hasActiveContinuousPathInput];
  if (v20 && v21 && !v22 && !v23)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(UIKeyboardLayoutStar *)self lastTwoFingerTapTimestamp];
    v26 = Current - v25;
    if (v26 >= 0.3 || v26 <= 0.0)
    {
      v11 = +[UIKeyboardImpl activeInstance];
      [v11 forceShiftUpdateIfKeyboardStateChanged];
      v27 = [(NSMutableDictionary *)self->_extendedTouchInfoMap count];
      if (+[UIKeyboardImpl rivenPreference])
      {
        if ([(UIKeyboardLayoutStar *)self getHandRestRecognizerState])
        {
          v28 = 0;
        }

        else
        {
          v29 = Current - self->_prevTouchDownTime;
          if (v27 && v29 < 0.05)
          {
            v28 = 2;
          }

          else
          {
            v28 = v29 >= 0.5;
          }
        }

        [(UIKeyboardLayoutStar *)self setPlayKeyClickSoundOn:v28];
      }

      self->_prevTouchDownTime = Current;
      self->_hasPeekedGestureKey = 0;
      v30 = [(UIKeyboardLayoutStar *)self generateInfoForTouch:v7];
      [v30 setKeyplane:self->_keyplane];
      [v30 setInitialPoint:{v17, v19}];
      v31 = [v7 touchUUID];
      [v30 setFingerID:{-[UIKeyboardLayout fingerIDForTouchUUID:](self, "fingerIDForTouchUUID:", v31)}];

      [v30 setContinuousPathState:0];
      if (([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23) && [(UIKeyboardLayout *)self isFloating])
      {
        v32 = [(UIKeyboardLayout *)self currentTouchDownEvent];
        v33 = [v32 allTouches];
        v34 = [v33 count] > 1;
      }

      else
      {
        v34 = 0;
      }

      if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI]&& !v34)
      {
        [v7 timestamp];
        [(UIKeyboardLayoutStar *)self addContinuousPathPoint:v17 withTimestamp:v19, v35];
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __51__UIKeyboardLayoutStar_touchDown_executionContext___block_invoke_2;
      v38[3] = &unk_1E70FD8B0;
      v39 = v30;
      v40 = a2;
      v38[4] = self;
      v36 = v30;
      v37 = [v8 childWithContinuation:v38];
      [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v36 touchStage:0 executionContextPassingUIKBTree:v37];

      goto LABEL_34;
    }
  }

  [v8 returnExecutionToParent];
LABEL_35:
}

void __51__UIKeyboardLayoutStar_touchDown_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = [v12 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"UIKeyboardLayoutStar.m" lineNumber:8275 description:{@"UIKeyboardTask %s expected UIKBTree but received %@", "-[UIKeyboardLayoutStar touchDown:executionContext:]_block_invoke_2", v10}];
    }
  }

  v11 = [v12 info];
  [*(a1 + 40) setKey:v11];
  [*(a1 + 40) setInitialKeyState:{objc_msgSend(v11, "state")}];
  [*(a1 + 32) completeHitTestForTouchDown:*(a1 + 40) executionContext:v12];
}

- (void)completeHitTestForTouchDown:(id)a3 executionContext:(id)a4
{
  v46 = a3;
  v7 = a4;
  v8 = [v46 touch];
  [v46 initialPoint];
  v10 = v9;
  v12 = v11;
  v13 = [v46 key];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &OBJC_IVAR___UIKeyboardLayoutStar__leftDriftOffset;
  if (([(NSMutableSet *)self->_leftKeySet containsObject:v13]& 1) != 0 || (v22 = &OBJC_IVAR___UIKeyboardLayoutStar__rightDriftOffset, [(NSMutableSet *)self->_rightKeySet containsObject:v13]))
  {
    v23 = (self + *v22);
  }

  else
  {
    v23 = MEMORY[0x1E695EFF8];
  }

  v24 = *v23;
  v25 = v23[1];
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v26 = v10 - CGRectGetMidX(v48) - v24;
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  v27 = v12 - CGRectGetMidY(v49) - v25;
  if ([(UIKeyboardLayout *)self supportsVirtualDrift])
  {
    v28 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
    if (v28 && ([v13 interactionType] == 1 || objc_msgSend(v13, "interactionType") == 2))
    {
      -[UIKeyboardLayout _updateTouchState:errorVector:rowOffsetFromHomeRow:](self, "_updateTouchState:errorVector:rowOffsetFromHomeRow:", v8, [v13 displayRowHint] - objc_msgSend(v28, "integerValue"), v26, v27);
    }

    else
    {
      [(UIKeyboardLayout *)self _ignoreTouchState:v8];
    }
  }

  else if ([(UIKeyboardLayout *)self isReachableDevice])
  {
    [(UIKeyboardLayoutStar *)self calculateReachabilityScoreWithKey:v13 keyError:v26, v27];
  }

  if (self->_lastInputIsGestureKey)
  {
    if ([v13 interactionType] != 4)
    {
      +[_UIKeyboardUsageTracking panAlternateKeyFlickDownCount];
    }

    self->_lastInputIsGestureKey = 0;
  }

  if ([v13 state] == 1)
  {
    goto LABEL_28;
  }

  v29 = [(UIKeyboardLayoutStar *)self activeKey];
  v30 = [v29 parentKey];
  if (v30)
  {
    v31 = v30;
    v32 = [(UIKeyboardLayoutStar *)self activeKey];

    if (v32 != v13)
    {
      [(UIKeyboardLayoutStar *)self deactivateActiveKey];
      v33 = [v13 parentKey];

      if (v33)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
  }

  v34 = [(UIKeyboardLayoutStar *)self activeKey];

  [(UIKeyboardLayoutStar *)self setActiveKey:v13];
  self->_didLongPress = 0;
  if (!v13)
  {
LABEL_28:
    [(UIKeyboardLayoutStar *)self clearInfoForTouch:v8];
    [v7 returnExecutionToParent];
    goto LABEL_42;
  }

  [v46 setInitialDragPoint:{v10, v12}];
  if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI]&& [(UIKeyboardLayoutStar *)self _allowStartingContinuousPathForTouchInfo:v46 alreadyActiveKeyExisting:v34 != 0])
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:v35 forTouchInfo:v46];
  [(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer resetPinchCalculations];
  if ([v13 interactionType] == 16 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 3)
  {
    [v13 setFlickDirection:-3];
    self->_isOutOfBounds = 0;
    [(UIKeyboardLayoutStar *)self setState:2 forKey:v13];
    [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    flickPopuptimer = self->_flickPopuptimer;
    if (flickPopuptimer)
    {
      [(NSTimer *)flickPopuptimer invalidate];
      v37 = self->_flickPopuptimer;
      self->_flickPopuptimer = 0;
    }

    touchInfo = self->_touchInfo;
    if (touchInfo)
    {
      self->_touchInfo = 0;
    }

    flickPopupView = self->_flickPopupView;
    if (flickPopupView)
    {
      [(UIView *)flickPopupView removeFromSuperview];
      v40 = self->_flickPopupView;
      self->_flickPopupView = 0;

      [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    }

    v41 = [v13 displayString];
    v42 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v13 withString:v41];
    v43 = getFlickPopupInfoArray(v42, @"Keycaps");

    if (v43)
    {
      objc_storeStrong(&self->_touchInfo, a3);
      v44 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_handlePopupView_ selector:0 userInfo:0 repeats:0.375];
      v45 = self->_flickPopuptimer;
      self->_flickPopuptimer = v44;
    }
  }

  [(UIKeyboardLayoutStar *)self touchDownWithKey:v13 withTouchInfo:v46 atPoint:v7 executionContext:v10, v12];
LABEL_42:
}

- (void)playKeyReleaseSoundForKey:(id)a3
{
  v4 = a3;
  v25 = +[UIKeyboardImpl activeInstance];
  [v4 frame];
  MidX = CGRectGetMidX(v27);
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  MidY = CGRectGetMidY(v28);
  v15 = [(UIKeyboardLayoutStar *)self hasActiveContinuousPathInput];
  v16 = [v25 feedbackGenerator];
  v17 = v16;
  if (v15)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v25 autocorrectionController];
      v19 = [v18 autocorrection];
      v20 = [v19 candidate];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [v25 markedText];
      }

      v23 = v22;

      v24 = [v25 feedbackGenerator];
      [v24 actionOccurred:9 textLength:objc_msgSend(v23 atLocation:{"length"), MidX, MidY}];
    }

    else
    {
      v23 = [v25 feedbackGenerator];
      [v23 actionOccurred:9 atLocation:{MidX, MidY}];
    }
  }

  else
  {
    [v16 actionOccurred:8 atLocation:{MidX, MidY}];
  }
}

- (void)playKeyClickSoundForKey:(id)a3
{
  v4 = a3;
  screenTraits = self->super._screenTraits;
  if (!screenTraits || !screenTraits->_isFirstPartyStickers)
  {
    v11 = v4;
    if ([(UIKeyboardLayoutStar *)self muteNextKeyClickSound])
    {
      [(UIKeyboardLayoutStar *)self setMuteNextKeyClickSound:0];
LABEL_24:
      v4 = v11;
      goto LABEL_25;
    }

    v6 = +[UIKeyboardImpl activeInstance];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
    {
      v7 = +[UIDevice currentDevice];
      [v7 _playSystemSound:1123];
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    if ([v11 interactionType] == 4 && !+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled]())
    {
      goto LABEL_23;
    }

    v8 = [v11 interactionType];
    v9 = 1;
    if (v8 > 8)
    {
      if (v8 == 9)
      {
        v9 = 6;
        goto LABEL_19;
      }

      if (v8 == 15)
      {
        v9 = 2;
        goto LABEL_19;
      }

      if (v8 != 16)
      {
        goto LABEL_16;
      }
    }

    else if ((v8 - 1) >= 2)
    {
      if (v8 == 4)
      {
        v9 = 3;
        goto LABEL_19;
      }

LABEL_16:
      v9 = 7;
    }

LABEL_19:
    if ([(UITextInputTraits *)self->super._inputTraits isSecureTextEntry])
    {
      v9 = 1;
    }

    v7 = [v6 feedbackGenerator];
    [v11 frame];
    MidX = CGRectGetMidX(v13);
    [v11 frame];
    [v7 actionOccurred:v9 atLocation:{MidX, CGRectGetMidY(v14)}];
    goto LABEL_22;
  }

LABEL_25:
}

- (void)playKeyClickSoundOnDownForKey:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutStar *)self playKeyClickSoundOn]!= 2)
  {
    [(UIKeyboardLayoutStar *)self playKeyClickSoundForKey:v4];
  }
}

- (BOOL)shouldSkipResponseToGlobeKey:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(UIKeyboardLayoutStar *)self viewForKey:a3];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17.origin.x = v8 + v12 * 0.15;
  v17.size.width = v12 + v12 * -0.4;
  v17.origin.y = v10 + v14 * 0.15;
  v17.size.height = v14 - v14 * 0.15;
  v16.x = x;
  v16.y = y;
  return !CGRectContainsPoint(v17, v16);
}

- (BOOL)isKeyScriptSwitchKey:(id)a3
{
  v3 = a3;
  if ([v3 interactionType] == 9)
  {
    v4 = [v3 name];
    v5 = [v4 hasSuffix:@"Switch-Key"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSkipResponseToDotKey:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (+[UIKBKeyView shouldUseOvalHitArea]&& [UIKBKeyView isDotKey:v7])
  {
    v8 = [(UIKeyboardLayoutStar *)self viewForKey:v7];
    v9 = [v8 contentsKeyView];

    [v9 tapActionRegion];
    v11 = v10;
    v13 = v12;
    v14 = [UIBezierPath bezierPathWithOvalInRect:?];
    if ([v14 containsPoint:{x, y}])
    {
      v15 = 1;
    }

    else
    {
      [(UIView *)self convertPoint:v9 toView:x, y];
      v15 = v16 < (v11 + v13) * 0.5;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_cleanUpBlinkAssertionIfNecessary
{
  v3 = [(UIKeyboardLayoutStar *)self blinkAssertion];
  [v3 invalidate];

  [(UIKeyboardLayoutStar *)self setBlinkAssertion:0];
}

- (void)touchDownWithKey:(id)a3 withTouchInfo:(id)a4 atPoint:(CGPoint)a5 executionContext:(id)a6
{
  y = a5.y;
  x = a5.x;
  v121 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  Current = CFAbsoluteTimeGetCurrent();
  prevTouchUpTime = self->_prevTouchUpTime;
  v16 = +[UIKeyboardImpl activeInstance];
  [v16 forceShiftUpdateIfKeyboardStateChanged];
  v105 = v13;
  if ([UIKBKeyView isDotKey:v11]&& [(UIKeyboardLayoutStar *)self shouldSkipResponseToDotKey:v11 atPoint:x, y])
  {
    v17 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Space-Key"];
    v18 = [(UIKeyboardLayoutStar *)self keycodeForKey:v17];
    v19 = [(UIKeyboardLayoutStar *)self keycodeForKey:v11]- 1;
    if (v17)
    {
      v20 = v18 == v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = v17;

      [v13 setInfo:v21];
      [v12 setKey:v21];
      v11 = v21;
    }
  }

  v22 = Current - prevTouchUpTime;
  v23 = [v11 representedString];
  v24 = [v11 interactionType];
  v25 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v11];
  if (v24 == 5)
  {
    if (![(UIKBScreenTraits *)self->super._screenTraits idiom]&& +[UIDictationController usingServerManualEndpointingThreshold])
    {
      self->_dictationUsingServerManualEndpointing = 1;
      +[UIDictationController serverManualEndpointingThreshold];
      v27 = dispatch_time(0, (v26 * 1000000000.0));
      v28 = MEMORY[0x1E69E96A0];
      v29 = MEMORY[0x1E69E96A0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__UIKeyboardLayoutStar_touchDownWithKey_withTouchInfo_atPoint_executionContext___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v118 = v11;
      dispatch_after(v27, v28, block);
    }

    [v16 touchLongPressTimerWithDelay:0.25];
  }

  else
  {
    [v16 touchLongPressTimer];
    v30 = [v11 interactionType];
    v31 = +[UIKeyboardImpl activeInstance];
    v32 = v31;
    if (v30 == 4)
    {
      v33 = 6;
    }

    else
    {
      v33 = 0;
    }

    [v31 updateIdleDetection:v33];
  }

  if (v22 < 0.5 && v24 <= 0x11 && ((1 << v24) & 0x21040) != 0)
  {
    goto LABEL_36;
  }

  v36 = [(UIKeyboardLayoutStar *)self isKeyScriptSwitchKey:v11];
  v37 = v36;
  if (v24 != 9 || v36)
  {
    if (v24 == 38)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v22 < 0.325 && [(UIKeyboardLayoutStar *)self shouldSkipResponseToGlobeKey:v11 atPoint:x, y])
    {
      goto LABEL_36;
    }

    [v16 clearLongPressTimer];
    [v16 touchLongPressTimerWithDelay:0.3];
  }

  if (!v37 || [(UIKeyboardLayoutStar *)self is10KeyRendering])
  {
LABEL_38:
    if ([v12 delayed])
    {
      [v16 clearLongPressTimer];
      [v16 touchLongPressTimerWithDelay:0.08];
    }

    if (v24 == 15)
    {
      [v16 clearLanguageIndicator];
    }

    v39 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
    if (v39)
    {
      v40 = +[UIInputSwitcherView activeInstance];
      [v40 hide];

      if (v11 != v39)
      {
        v41 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v39];
        [v41 setMaySuppressUpAction:1];
      }
    }

    v104 = v39;
    if ([v11 interactionType] == 28 || objc_msgSend(v11, "interactionType") == 29 || objc_msgSend(v11, "interactionType") == 30)
    {
      if ([v11 interactionType] == 28 && -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface"))
      {
        v42 = v23;
        v43 = [v16 delegateAsResponder];
        v44 = [v43 _responderForEditing];
        [v44 toggleBoldface:0];
LABEL_57:

        v23 = v42;
        goto LABEL_58;
      }

      if ([v11 interactionType] == 29 && -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics"))
      {
        v42 = v23;
        v43 = [v16 delegateAsResponder];
        v44 = [v43 _responderForEditing];
        [v44 toggleItalics:0];
        goto LABEL_57;
      }

      if ([v11 interactionType] == 30 && -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline"))
      {
        v42 = v23;
        v43 = [v16 delegateAsResponder];
        v44 = [v43 _responderForEditing];
        [v44 toggleUnderline:0];
        goto LABEL_57;
      }
    }

LABEL_58:
    if ((v25 & 1) != 0 && ([v11 interactionType] == 31 || objc_msgSend(v11, "interactionType") == 32 || objc_msgSend(v11, "interactionType") == 33 || objc_msgSend(v11, "interactionType") == 34 || objc_msgSend(v11, "interactionType") == 35))
    {
      if ([v11 interactionType] == 31)
      {
        [v16 cutOperation];
        if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canCut])
        {
          goto LABEL_73;
        }

LABEL_72:
        [(UIKeyboardLayoutStar *)self setState:4 forKey:v11];
        goto LABEL_73;
      }

      if ([v11 interactionType] == 32)
      {
        [v16 copyOperation];
        if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canCopy])
        {
          goto LABEL_72;
        }
      }

      else
      {
        if ([v11 interactionType] == 33)
        {
          [v16 pasteOperation];
          if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canPaste])
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if ([v11 interactionType] == 34 && -[UIKBTextEditingTraits canMoveCursorLeft](self->super._textEditingTraits, "canMoveCursorLeft"))
        {
          [v16 moveCursorLeftShifted:{objc_msgSend(v16, "isShiftLocked")}];
          if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canMoveCursorLeft])
          {
            goto LABEL_72;
          }
        }

        else if ([v11 interactionType] == 35)
        {
          if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canMoveCursorRight])
          {
            [v16 moveCursorRightShifted:{objc_msgSend(v16, "isShiftLocked")}];
            if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canMoveCursorRight])
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

LABEL_73:
    if (([v16 acceptInputString:v23] & 1) == 0)
    {
      v101 = v25;
      v45 = v12;
      v46 = v23;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v113 = 0u;
      v47 = [v11 secondaryRepresentedStrings];
      v48 = [v47 countByEnumeratingWithState:&v113 objects:v120 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v114;
        while (2)
        {
          v51 = v16;
          for (i = 0; i != v49; ++i)
          {
            if (*v114 != v50)
            {
              objc_enumerationMutation(v47);
            }

            if ([v51 acceptInputString:*(*(&v113 + 1) + 8 * i)])
            {

              v16 = v51;
              v23 = v46;
              v12 = v45;
              v25 = v101;
              goto LABEL_84;
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v113 objects:v120 count:16];
          v16 = v51;
          if (v49)
          {
            continue;
          }

          break;
        }
      }

      v53 = +[UIDevice currentDevice];
      [v53 _playSystemSound:1103];

      v38 = v105;
      [v105 returnExecutionToParent];
      v23 = v46;
      v12 = v45;
      goto LABEL_141;
    }

LABEL_84:
    if (v24 == 13 && ([v16 returnKeyEnabled] & 1) == 0)
    {
      v38 = v105;
      [v105 returnExecutionToParent];
LABEL_141:

      goto LABEL_142;
    }

    v38 = v105;
    if (!+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
      v54 = [v16 _activeAssertionController];
      v55 = [v54 nonBlinkingAssertionWithReason:@"Keyboard Key Press"];
      [(UIKeyboardLayoutStar *)self setBlinkAssertion:v55];
    }

    v103 = v16;
    [v16 setInputPoint:{x, y}];
    if ((v25 & 1) != 0 && [v11 state] != 1)
    {
      if ([(UIKeyboardLayoutStar *)self preventPaddlesForPointerTouches])
      {
        v56 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
        v57 = [v56 allowsPaddles];

        if (v57)
        {
          v58 = v23;
          v59 = [v12 touch];
          v60 = [v59 touchUUID];
          v61 = [UIKBTouchState touchForTouchUUID:v60];

          if ([v61 _isPointerTouch])
          {
            [v11 setPreventPaddle:1];
          }

          v23 = v58;
        }
      }

      if ([v11 state] == 16 || objc_msgSend(v11, "state") == 4 && objc_msgSend(v11, "hasSemiStickyVariant"))
      {
        [v16 clearLongPressTimer];
        v62 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
        v63 = [v62 popupKeyUsesCustomKeyContentView:v11];

        if (v63)
        {
          v64 = [(UIKBKeyplaneView *)self->_keyplaneView retestSelectedVariantIndexForKey:v11 atPoint:0 phase:x, y]|| self->_selectedVariantIndexChanged;
          self->_selectedVariantIndexChanged = v64;
        }

        else
        {
          [(UIKeyboardLayoutStar *)self updateSelectedVariantIndexForKey:v11 withActions:v25 withPoint:x, y];
        }

        v78 = 16;
      }

      else
      {
        v102 = v25;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v65 = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews:v23];
        v66 = [v65 countByEnumeratingWithState:&v109 objects:v119 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v110;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v110 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v109 + 1) + 8 * j);
              v71 = [v70 key];
              v72 = [v71 name];
              v73 = [v72 isEqual:@"EmojiPopupKey"];

              if (v73)
              {
                [v70 removeFromSuperview];
              }

              else
              {
                v74 = [v70 key];
                if ([v74 state] == 16)
                {
                  v75 = [v70 key];
                  v76 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v75];

                  if (!v76)
                  {
                    v77 = [v70 key];
                    [(UIKeyboardLayoutStar *)self setState:2 forKey:v77];
                  }
                }

                else
                {
                }
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v109 objects:v119 count:16];
          }

          while (v67);
        }

        v78 = 4;
        v11 = v99;
        v12 = v100;
        v38 = v105;
        v23 = v98;
        v25 = v102;
      }

      [(UIKeyboardLayoutStar *)self setState:v78 forKey:v11];
      [(UIKeyboardLayoutStar *)self setActiveKey:v11];
      if (self->_multitapKey)
      {
        v79 = [(UIKeyboardLayoutStar *)self activeKey];
        v80 = v79;
        if (v79 == self->_multitapKey)
        {
        }

        else
        {
          v81 = [(UIKeyboardLayoutStar *)self activeKey];
          [(UIKeyboardLayoutStar *)self activeMultitapCompleteKey];
          v82 = v38;
          v84 = v83 = v25;

          v20 = v81 == v84;
          v25 = v83;
          v38 = v82;
          if (!v20)
          {
            [(UIKeyboardLayoutStar *)self setState:2 forKey:self->_multitapKey];
            multitapKey = self->_multitapKey;
            self->_multitapKey = 0;

            v86 = [(UIKeyboardLayoutStar *)self activeKey];
            if ([(UIKeyboardLayoutStar *)self isMultitapKey:v86])
            {
              unshiftAfterMultitap = self->_unshiftAfterMultitap;

              if (!unshiftAfterMultitap)
              {
                goto LABEL_137;
              }
            }

            else
            {
            }

            [(UIKeyboardLayoutStar *)self multitapInterrupted];
          }
        }
      }
    }

LABEL_137:
    [(UIKeyboardLayoutStar *)self playKeyFeedbackIfNecessaryForTouchDownOnKey:v11 touchInfo:v12];
    if ([(UIKeyboardLayoutStar *)self shouldCommitPrecedingTouchesForTouchDownWithActions:v25])
    {
      v88 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v11];
      [v88 touch];
      v89 = v38;
      v91 = v90 = v25;
      v92 = [v91 touchUUID];
      [(UIKeyboardLayout *)self touchUUIDsToCommitBeforeTouchUUID:v92];
      v93 = v12;
      v95 = v94 = v23;

      v96 = [UIKBTouchState touchesForTouchUUIDs:v95];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __80__UIKeyboardLayoutStar_touchDownWithKey_withTouchInfo_atPoint_executionContext___block_invoke_2;
      v106[3] = &unk_1E70FD8B0;
      v106[4] = self;
      v107 = v11;
      v108 = v90;
      v97 = [v89 childWithContinuation:v106];
      [(UIKeyboardLayout *)self commitTouches:v96 executionContext:v97];

      v38 = v89;
      v23 = v94;
      v12 = v93;
    }

    else
    {
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:v11 withActions:v25 executionContext:v38];
    }

    v16 = v103;
    goto LABEL_141;
  }

LABEL_35:
  [v16 clearLongPressTimer];
  if (v22 >= 0.5)
  {
    [v16 touchLongPressTimerWithDelay:0.01];
    goto LABEL_38;
  }

LABEL_36:
  v38 = v105;
  [v105 returnExecutionToParent];
LABEL_142:
}

void __80__UIKeyboardLayoutStar_touchDownWithKey_withTouchInfo_atPoint_executionContext___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 1328) == 1)
  {
    v3 = +[UIDictationController sharedInstance];
    [v3 setReasonType:7];

    v8 = +[UIDictationController sharedInstance];
    v4 = [*(a1 + 32) touchInfoForKey:*(a1 + 40)];
    v5 = [v4 touch];
    v6 = [v5 touchUUID];
    v7 = [UIKBTouchState touchForTouchUUID:v6];
    [v8 switchToDictationInputModeWithTouch:v7];
  }
}

- (BOOL)shouldCommitPrecedingTouchesForTouchDownWithActions:(unint64_t)a3
{
  if ((a3 & 0x20000012) != 0 || (a3 & 0x800000) != 0 && (a3 & 0x78000) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else if ((a3 & 0x20) == 0 || (v5 = [(NSMutableDictionary *)self->_extendedTouchInfoMap count:v3], v5 != 1))
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)sharedPunctuationCharacterSet
{
  if (qword_1ED493260 != -1)
  {
    dispatch_once(&qword_1ED493260, &__block_literal_global_1240);
  }

  v3 = qword_1ED493258;

  return v3;
}

void __53__UIKeyboardLayoutStar_sharedPunctuationCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v1 = qword_1ED493258;
  qword_1ED493258 = v0;
}

- (void)incrementPunctuationIfNeeded:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v3 = [objc_opt_class() sharedPunctuationCharacterSet];
    if (qword_1ED493270 != -1)
    {
      dispatch_once(&qword_1ED493270, &__block_literal_global_1242);
    }

    v4 = [v6 characterAtIndex:0];
    if (([v3 characterIsMember:v4] & 1) != 0 || objc_msgSend(qword_1ED493268, "characterIsMember:", v4))
    {
      v5 = UIKeyboardGetCurrentInputMode();
      TIStatisticScalarIncrementInputStringCount();
    }
  }
}

void __53__UIKeyboardLayoutStar_incrementPunctuationIfNeeded___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v1 = qword_1ED493268;
  qword_1ED493268 = v0;
}

- (void)completeCommitTouchesPrecedingTouchDownWithKey:(id)a3 withActions:(unint64_t)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v8];
  if ([v10 delayed])
  {
    [v9 returnExecutionToParent];
  }

  else if ((a4 & 2) != 0)
  {
    v11 = [v8 representedString];
    v12 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v11 forKey:v8 touchInfo:v10 inputFlags:0];
    v13 = [v12 _modifiedInput];
    [(UIKeyboardLayoutStar *)self incrementPunctuationIfNeeded:v13];

    v14 = +[UIKeyboardImpl activeInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100__UIKeyboardLayoutStar_completeCommitTouchesPrecedingTouchDownWithKey_withActions_executionContext___block_invoke;
    v16[3] = &unk_1E70FD8B0;
    v16[4] = self;
    v17 = v8;
    v18 = a4;
    v15 = [v9 childWithContinuation:v16];
    [v14 _handleKeyEvent:v12 executionContext:v15];
  }

  else
  {
    [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchDownWithKey:v8 withActions:a4 executionContext:v9];
  }
}

- (id)keyplaneNameForRevertAfterTouch
{
  if ([(UIKBTree *)self->_keyplane isShiftKeyplane]&& [(UIKBTree *)self->_keyplane looksLikeShiftAlternate])
  {
    v3 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
  }

  else
  {
    v3 = self->_keyplaneName;
  }

  return v3;
}

- (id)synthesizeTouchUpEventForKey:(id)a3
{
  v3 = self;
  v4 = [(UIKeyboardLayoutStar *)self touchInfoForKey:a3];
  v5 = [v4 touch];
  [v4 initialPoint];
  v7 = v6;
  v9 = v8;
  [v5 timestamp];
  v11 = v10;
  v12 = [v4 key];
  LODWORD(v3) = [(UIKeyboardLayoutStar *)v3 keycodeForKey:v12];

  v13 = MEMORY[0x1E69D9668];
  [v5 pathMajorRadius];
  v15 = [v13 touchEventWithStage:2 location:objc_msgSend(v5 radius:"pathIndex") timestamp:v3 pathIndex:v7 forcedKeyCode:{v9, v14, v11}];

  return v15;
}

- (BOOL)shouldShowGestureKeyboardIntroduction
{
  if (-[UITextInputTraits keyboardAppearance](self->super._inputTraits, "keyboardAppearance") == 127 || (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v2 = objc_claimAutoreleasedReturnValue(), [v2 preferencesActions], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForPreferenceKey:", @"GesturesEnabled"), v3, v2, !v4))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = +[UIKeyboard keyboardBundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.purplebuddy"] ^ 1;
  }

  return v6;
}

- (BOOL)showGestureKeyboardIntroductionIfNeeded
{
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23 || [(UIKeyboardLayout *)self isFloating]|| [(UIKeyboardLayoutStar *)self keyplaneIsSplit]|| ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 0x17 || [(UITextInputTraits *)self->super._inputTraits keyboardType]== 12)
  {
    return 0;
  }

  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  if ([v4 oneTimeActionCompleted:@"DidShowGestureKeyboardIntroduction"])
  {

    return 0;
  }

  v5 = [(UIKeyboardLayoutStar *)self shouldShowGestureKeyboardIntroduction];

  if (!v5)
  {
    return 0;
  }

  objc_initWeak(&location, self);
  v6 = [UIGestureKeyboardIntroduction alloc];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __63__UIKeyboardLayoutStar_showGestureKeyboardIntroductionIfNeeded__block_invoke;
  v14 = &unk_1E70F3668;
  objc_copyWeak(&v15, &location);
  v7 = [(UIGestureKeyboardIntroduction *)v6 initWithLayoutStar:self completion:&v11];
  gestureKeyboardIntroduction = self->_gestureKeyboardIntroduction;
  self->_gestureKeyboardIntroduction = v7;

  v9 = [(UIGestureKeyboardIntroduction *)self->_gestureKeyboardIntroduction showGestureKeyboardIntroduction:v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return v9;
}

void __63__UIKeyboardLayoutStar_showGestureKeyboardIntroductionIfNeeded__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v4 = [v3 preferencesActions];
    [v4 didTriggerOneTimeAction:@"DidShowGestureKeyboardIntroduction"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[165];
  WeakRetained[165] = 0;
}

- (void)completeSendStringActionForTouchDownWithKey:(id)a3 withActions:(unint64_t)a4 executionContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[UIKeyboardImpl activeInstance];
  if ((a4 & 0x800000) != 0)
  {
    [(UIKeyboardLayoutStar *)self showPopupVariantsForKey:v8];
  }

  v11 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

  if (v11)
  {
    self->_revertKeyplaneAfterTouch = 1;
  }

  if ((a4 & 0x10) != 0)
  {
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    v12 = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:v12];

    self->_revertKeyplaneAfterTouch = 0;
    [(UIKeyboardLayoutStar *)self downActionShiftWithKey:v8];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1)
    {
      if ([(UIKBTree *)self->_keyplane isShiftKeyplane])
      {
        v13 = UIKeyboardGetCurrentInputMode();
        TIStatisticScalarIncrementInputStringCount();
      }
    }
  }

  if ((a4 & 0x400000000) != 0)
  {
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    v14 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
    v15 = +[UIKeyboardImpl activeInstance];
    v16 = [v15 isShiftLocked];

    keyplane = self->_keyplane;
    if (v16)
    {
      v18 = [(UIKBTree *)keyplane shiftAlternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:v18];

      v19 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
      v20 = [v19 renderingContext];
      [v20 setShiftState:0];

      [v10 setShift:0];
      [v10 setShiftPreventAutoshift:1];
      [v10 forceShiftUpdate];
      v21 = 2;
    }

    else
    {
      v22 = [(UIKBTree *)keyplane name];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:v22];

      v23 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
      v24 = [v23 renderingContext];
      [v24 setShiftState:3];

      [v10 setShiftLockedForced:1];
      v25 = self->_keyplane;
      v26 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)v25 updateFlickKeycapOnKeysWithLayoutInfo:v26];

      [(UIKeyboardLayoutStar *)self refreshDualStringKeys];
      v21 = 8;
    }

    [(UIKeyboardLayoutStar *)self setState:v21 forKey:v14];
  }

  if ((a4 & 0x20) != 0 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
  {
    [(UIView *)self bounds];
    v28 = v27;
    v29 = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:v29];

    self->_revertKeyplaneAfterTouch = 0;
    [v10 keyActivated];
    self->_suppressShiftKeyplaneAnimation = 1;
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    v30 = [(UIKBTree *)self->_keyplane isShiftKeyPlaneChooser];
    keyboard = self->_keyboard;
    v32 = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    v33 = [(UIKBTree *)keyboard subtreeWithName:v32];

    if ([v33 intForProperty:@"shift-rendering"] != 31 || (TIStatisticGetKey(), v34 = objc_claimAutoreleasedReturnValue(), TIStatisticScalarIncrement(), v34, !-[UIKeyboardLayoutStar showGestureKeyboardIntroductionIfNeeded](self, "showGestureKeyboardIntroductionIfNeeded")))
    {
      v35 = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:v35];
    }

    if (v30)
    {
      autoshift = self->_autoshift;
      v36 = v33;
      shift = self->_shift;
      [v10 forceShiftUpdate];
      v38 = shift == self->_shift;
      v33 = v36;
      if (v38 && autoshift != self->_autoshift)
      {
        v39 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:v39];
      }
    }

    self->_suppressShiftKeyplaneAnimation = 0;
    [(UIKeyboardLayoutStar *)self setActiveKey:0];
    [(UIView *)self bounds];
    v41 = v40 - v28;
    v42 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v8];
    [v42 initialDragPoint];
    v44 = v43;
    [v42 initialDragPoint];
    [v42 setInitialDragPoint:{v44, v41 + v45}];
    if (v41 != 0.0)
    {
      v46 = [(UIView *)self window];
      [v46 layoutIfNeeded];
    }

    self->_preferredTrackingChangeCount = [v10 changeCount];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 && ![(UIKBTree *)self->_keyplane looksLikeShiftAlternate])
    {
      v47 = UIKeyboardGetCurrentInputMode();
      TIStatisticScalarIncrementInputStringCount();
    }

    v48 = [MEMORY[0x1E695DF00] date];
    [v48 timeIntervalSinceDate:self->_prevTouchMoreKeyTime];
    v50 = v49;

    if (v50 != 0.0 && v50 <= 0.300000012)
    {
      v51 = UIKeyboardGetCurrentInputMode();
      v52 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    prevTouchMoreKeyTime = self->_prevTouchMoreKeyTime;
    if (prevTouchMoreKeyTime)
    {
      self->_prevTouchMoreKeyTime = 0;
    }

    v54 = [MEMORY[0x1E695DF00] date];
    v55 = self->_prevTouchMoreKeyTime;
    self->_prevTouchMoreKeyTime = v54;
  }

  if ((a4 & 0x20000000) != 0)
  {
    [(UIView *)self bounds];
    v57 = v56;
    v58 = [v8 representedString];
    [(UIKeyboardLayoutStar *)self switchKeyplane:v58];

    [(UIView *)self bounds];
    v60 = v59 - v57;
    v61 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v8];
    [v61 initialDragPoint];
    v63 = v62;
    [v61 initialDragPoint];
    [v61 setInitialDragPoint:{v63, v60 + v64}];
    if (v60 != 0.0)
    {
      v65 = [(UIView *)self window];
      [v65 layoutIfNeeded];
    }

    self->_preferredTrackingChangeCount = [v10 changeCount];
  }

  if ((a4 & 0x40) != 0)
  {
    v66 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v66 setAnalyticsShouldCallDidKeyPressForDeleteKey:1];

    v67 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v8];
    v68 = [v67 touch];

    if ([v68 inputSource] == 8)
    {
      v69 = 8;
    }

    else
    {
      v69 = 1;
    }

    v70 = [v68 touchUUID];
    v71 = [(UIKeyboardLayout *)self touchUUIDsToCommitBeforeTouchUUID:v70];

    v72 = [UIKBTouchState touchesForTouchUUIDs:v71];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke;
    v75[3] = &unk_1E70FD900;
    v75[4] = self;
    v76 = v8;
    v77 = v10;
    v78 = a4;
    v79 = v69;
    v73 = [v9 childWithContinuation:v75];
    [(UIKeyboardLayout *)self commitTouches:v72 executionContext:v73];
  }

  else
  {
    [(UIKeyboardLayoutStar *)self completeDeleteActionForTouchDownWithActions:a4 executionContext:v9];
  }
}

void __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyplaneNameForRevertAfterTouch];
  [*(a1 + 32) setPreTouchKeyplaneName:v4];

  *(*(a1 + 32) + 904) = 0;
  v5 = [*(a1 + 32) synthesizeTouchUpEventForKey:*(a1 + 40)];
  [*(a1 + 48) skipHitTestForTouchEvent:v5 delayed:1];
  v6 = [*(a1 + 32) traitCollection];
  v7 = [v6 forceTouchCapability];

  v8 = *(a1 + 48);
  if (v7 == 2)
  {
    v9 = [*(a1 + 32) touchInfoForKey:*(a1 + 40)];
    v10 = [v9 touch];
    v11 = [v10 touchUUID];
    v12 = [UIKBTouchState touchForTouchUUID:v11];
    [v12 force];
    [v8 startAutoDeleteTimerForForce:?];
  }

  else
  {
    [*(a1 + 48) startAutoDeleteTimer];
  }

  v13 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_2;
  v18[3] = &unk_1E7107CE8;
  v19 = v13;
  v20 = v3;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v21 = v14;
  v22 = v15;
  v17 = v3;
  [v19 performOperations:v18 withTextInputSource:v16];
}

void __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldUseAdaptiveDelete];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_3;
    v9[3] = &unk_1E70FDAE0;
    v5 = *(a1 + 56);
    v9[4] = *(a1 + 48);
    v9[5] = v5;
    v6 = [v3 childWithContinuation:v9];
    [v4 handleDeleteWordWithExecutionContext:v6];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_4;
    v8[3] = &unk_1E70FDAE0;
    v7 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v8[5] = v7;
    v6 = [v3 childWithContinuation:v8];
    [v4 handleDeleteWithExecutionContext:v6];
  }
}

void __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 multitapExpired];
  [*(a1 + 32) completeDeleteActionForTouchDownWithActions:*(a1 + 40) executionContext:v4];
}

void __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 multitapExpired];
  [*(a1 + 32) completeDeleteActionForTouchDownWithActions:*(a1 + 40) executionContext:v4];
}

- (void)completeDeleteActionForTouchDownWithActions:(unint64_t)a3 executionContext:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = +[UIKeyboardImpl activeInstance];
  if ((v4 & 0x40000000) != 0)
  {
    v7 = +[UIDictationController viewMode];
    v8 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
    if (v7 == 1)
    {
      [v6 acceptAutocorrectionWithCompletionHandler:0];
      v9 = +[UIKeyboardDictationMenu sharedInstance];
      [(UIKeyboardLayoutStar *)self showMenu:v9 forKey:v8];
    }
  }

  [v10 returnExecutionToParent];
}

- (BOOL)canForceTouchUUIDCommit:(id)a3 inWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v6];
  v9 = v8;
  if (v7 && v8 && ([v8 key], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "modifiesKeyplane"), v10, (v11 & 1) != 0) || objc_msgSend(v9, "continuousPathState") == 4)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIKeyboardLayoutStar;
    v12 = [(UIKeyboardLayout *)&v14 canForceTouchUUIDCommit:v6 inWindow:v7];
  }

  return v12;
}

- (BOOL)touchPassesDragThreshold:(id)a3
{
  v4 = a3;
  if ([v4 dragged])
  {
    v5 = 12.0;
  }

  else
  {
    v5 = 18.0;
  }

  v6 = [v4 key];
  v7 = [(UIKeyboardLayoutStar *)self stateForKey:v6];

  v8 = [(UIKBTree *)self->_keyplane dragThreshold];
  if (v7 != 16 && v8 == 41)
  {
    if ([v4 dragged])
    {
      v5 = 36.0;
    }

    else
    {
      v5 = 45.0;
    }
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || (v9 = 5.0, [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23))
  {
    v9 = 5.0;
    if (![(UIKeyboardLayout *)self isFloating])
    {
      if ([v4 dragged])
      {
        v5 = 34.0;
      }

      else
      {
        v5 = 42.0;
      }

      v9 = 15.0;
    }
  }

  v10 = [v4 key];

  if (v10)
  {
    v11 = v7 == 16;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v5 = v5 - v9;
  }

  v12 = [v4 key];
  if (v12)
  {
    v13 = v12;
    v14 = [v4 key];
    if ([v14 interactionType] == 16)
    {

      if ((v7 & 0x10) != 0)
      {
        v5 = v5 / 3.0;
      }
    }

    else
    {
    }
  }

  v15 = +[UIKeyboardSplitControlMenu activeInstance];
  v16 = [v15 isVisible];

  if (v16)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v5;
  }

  v18 = [v4 touch];
  [v18 locationInView:self];
  v20 = v19;
  v22 = v21;

  [v4 initialDragPoint];
  *&v23 = v20 - v23;
  *&v20 = fabsf(*&v23);
  [v4 initialDragPoint];
  v25 = v22 - v24;
  v26 = fmaxf(*&v20, fabsf(v25)) >= v17;

  return v26;
}

- (void)touchDragged:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v12 touchDragged:v4];
  v5 = [UIKBTouchState touchUUIDForTouch:v4];
  v6 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v5];
  if (-[UIKeyboardLayoutStar _allowContinuousPathUI](self, "_allowContinuousPathUI") && [v6 continuousPathState] == 4)
  {
    [v4 locationInView:self];
    v8 = v7;
    v10 = v9;
    [v4 timestamp];
    [(UIKeyboardLayoutStar *)self addContinuousPathPoint:v8 withTimestamp:v10, v11];
  }
}

- (void)touchDragged:(id)a3 executionContext:(id)a4
{
  v170 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(UIKeyboardLayoutStar *)self infoForTouch:v7];
  v10 = v9;
  if (v9)
  {
    [v9 addTouch:v7];
    v11 = off_1E70EA000;
    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [(UIKeyboardLayoutStar *)self touchPassesDragThreshold:v10];
    v14 = [v10 touch];
    [v14 locationInView:self];
    v16 = v15;
    v18 = v17;

    [v10 initialDragPoint];
    v20 = v19;
    v21 = [v10 key];
    *&v158.origin.x = a2;
    if ([v21 displayTypeHint] == 10)
    {
      v22 = [v10 key];
      if ([v22 state] != 20)
      {
        v23 = self;
        v24 = v7;
        v25 = v8;
        v26 = v12;
        v27 = [v10 key];
        if ([v27 state] != 2)
        {
          v43 = [v10 slidOffKey];

          v12 = v26;
          v8 = v25;
          v7 = v24;
          self = v23;
          v11 = off_1E70EA000;
          if (!v43)
          {
            [v10 initialPoint];
            v45 = v44;
            v46 = [v10 key];
            [v46 paddedFrame];
            v48 = v47;

            v49 = [v10 key];
            v50 = [v49 state];

            if (v50 != 16 || (v18 - v45) / v48 > 0.25)
            {
              v51 = [v10 key];
              v52 = [v51 state];

              if (v52 == 16)
              {
                v53 = [v10 key];
                [(UIKeyboardLayoutStar *)self setState:4 forKey:v53];
              }

              [v10 setInitialDragPoint:{v16, v18}];
              [v10 setDragged:1];
              [(UIKeyboardLayoutStar *)self updatePanAlternativesForTouchInfo:v10];
              goto LABEL_29;
            }
          }

LABEL_8:
          v28 = [v10 key];
          v29 = [v28 interactionType];

          if (v29 == 4)
          {
            v30 = [(__objc2_class *)v11[11] activeInstance];
            [v7 touchUUID];
            v31 = self;
            v32 = v7;
            v33 = v8;
            v35 = v34 = v12;
            v36 = [UIKBTouchState touchForTouchUUID:v35];
            [v36 force];
            [v30 adjustAutoDeleteTimerForForce:?];

            v12 = v34;
            v8 = v33;
            v7 = v32;
            self = v31;
          }

          if (![(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected]&& v13)
          {
            [v10 setInitialDragPoint:{v16, v18}];
            [v10 setDragged:1];
            [v12 touchLongPressTimer];
            if (v29 != 16 || ([(UIKeyboardLayoutStar *)self multitapInterrupted], multitapKey = self->_multitapKey, self->_multitapKey = 0, multitapKey, ![(UIKeyboardLayoutStar *)self handleFlick:v10]) && self->_preTouchKeyplaneName && ![(NSString *)self->_keyplaneName isEqualToString:?])
            {
              v38 = [v10 key];
              v39 = [(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:v38];

              if (v39)
              {
                v40 = +[UIInputSwitcherView sharedInstance];
                goto LABEL_41;
              }

              if (v29 == 5)
              {
                if (+[UIDictationController viewMode]== 1)
                {
                  v41 = +[UIKeyboardDictationMenu sharedInstance];
                  if ([v41 isVisible])
                  {
                    v42 = UIKeyboardDictationMenu;
                    goto LABEL_33;
                  }

LABEL_34:
                  v40 = 0;
                  goto LABEL_35;
                }

                v54 = +[UIDictationConnectionPreferences sharedInstance];
                if ([v54 dictationIsEnabled])
                {
                  v55 = v12;
                  v56 = +[UIKeyboardInputModeController sharedInputModeController];
                  v57 = [v56 enabledDictationLanguages];
                  v58 = [v57 count];

                  if (v58 < 2)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = +[UIInputSwitcherView sharedInstance];
                  }

                  v12 = v55;
LABEL_41:
                  v59 = [v10 key];
                  if (v59)
                  {
                    v60 = v59;
                    v61 = [v10 key];
                    v157 = v12;
                    v62 = [(UIKeyboardLayoutStar *)self stateForKey:v61];

                    v63 = v62 == 16;
                    v12 = v157;
                    if (v63 && !v40)
                    {
                      [v157 clearLongPressTimer];
                      v64 = [v10 key];
                      [v64 frame];
                      x = v65;
                      y = v67;
                      width = v69;
                      height = v71;

                      v165 = 0u;
                      v166 = 0u;
                      v163 = 0u;
                      v164 = 0u;
                      v73 = [v10 key];
                      v74 = [v73 subtrees];

                      v75 = [v74 countByEnumeratingWithState:&v163 objects:v169 count:16];
                      if (v75)
                      {
                        v76 = v75;
                        v77 = *v164;
                        do
                        {
                          for (i = 0; i != v76; ++i)
                          {
                            if (*v164 != v77)
                            {
                              objc_enumerationMutation(v74);
                            }

                            [*(*(&v163 + 1) + 8 * i) frame];
                            v183.origin.x = v79;
                            v183.origin.y = v80;
                            v183.size.width = v81;
                            v183.size.height = v82;
                            v172.origin.x = x;
                            v172.origin.y = y;
                            v172.size.width = width;
                            v172.size.height = height;
                            v173 = CGRectUnion(v172, v183);
                            x = v173.origin.x;
                            y = v173.origin.y;
                            width = v173.size.width;
                            height = v173.size.height;
                          }

                          v76 = [v74 countByEnumeratingWithState:&v163 objects:v169 count:16];
                        }

                        while (v76);
                      }

                      v83 = [v10 key];
                      [v83 frame];
                      v85 = v84 * -0.5;
                      v86 = [v10 key];
                      [v86 frame];
                      v88 = v87 * -0.5;
                      v174.origin.x = x;
                      v174.origin.y = y;
                      v174.size.width = width;
                      v174.size.height = height;
                      v175 = CGRectInset(v174, v85, v88);
                      v89 = v175.origin.x;
                      v90 = v175.origin.y;
                      v91 = v175.size.width;
                      v92 = v175.size.height;

                      v93 = [v10 key];
                      v94 = [v93 subtrees];
                      v95 = [v94 count];

                      if (v95 == 1)
                      {
                        v176.origin.x = v89;
                        v176.origin.y = v90;
                        v176.size.width = v91;
                        v176.size.height = v92;
                        if (v16 < CGRectGetMinX(v176))
                        {
                          goto LABEL_88;
                        }

                        v177.origin.x = v89;
                        v177.origin.y = v90;
                        v177.size.width = v91;
                        v177.size.height = v92;
                        if (v16 > CGRectGetMaxX(v177))
                        {
                          goto LABEL_88;
                        }
                      }

                      else
                      {
                        v108 = [v10 key];
                        v109 = [v108 subtrees];
                        v110 = [v109 count];

                        if (v110 < 2)
                        {
                          goto LABEL_97;
                        }

                        v111 = [v10 key];
                        v112 = [v111 name];
                        v113 = [v112 isEqual:@"EmojiPopupKey"];

                        if (v113)
                        {
                          v114 = [v10 key];
                          v115 = [(UIKBKeyplaneView *)self->_keyplaneView existingVariantsKeyViewForKey:v114];
                          if (v115)
                          {
                            [v114 frame];
                            v158.origin.x = v116;
                            r1 = v117;
                            v119 = v118;
                            v121 = v120;
                            [v115 frame];
                            v123 = v122;
                            v125 = v124;
                            v127 = v126;
                            v129 = v128;
                            v130 = [v115 superview];
                            [(UIView *)self convertRect:v130 fromView:v123, v125, v127, v129];
                            v132 = v131;
                            v134 = v133;
                            v136 = v135;
                            v138 = v137;

                            v178.origin.x = v158.origin.x;
                            v178.origin.y = r1;
                            v178.size.width = v119;
                            v178.size.height = v121;
                            v184.origin.x = v132;
                            v184.origin.y = v134;
                            v184.size.width = v136;
                            v184.size.height = v138;
                            v179 = CGRectUnion(v178, v184);
                            v180 = CGRectInset(v179, v119 * -0.5, v121 * -0.5);
                            v89 = v180.origin.x;
                            v90 = v180.origin.y;
                            v91 = v180.size.width;
                            v92 = v180.size.height;
                          }

                          v181.origin.x = v89;
                          v181.origin.y = v90;
                          v181.size.width = v91;
                          v181.size.height = v92;
                          v171.x = v16;
                          v171.y = v18;
                          if (!CGRectContainsPoint(v181, v171) && (_os_feature_enabled_impl() & 1) != 0)
                          {
                            v139 = [MEMORY[0x1E696AD88] defaultCenter];
                            v167[0] = @"key";
                            v167[1] = @"touch";
                            v168[0] = v114;
                            v140 = [v7 uiTouch];
                            v168[1] = v140;
                            v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:2];
                            [v139 postNotificationName:@"UIKeyboardWillCancelEmojiVariants" object:self userInfo:v141];

                            v12 = v157;
LABEL_88:
                            [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
                            if ([v12 caretVisible])
                            {
                              [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
                            }

                            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
                            {
                              [(UIKeyboardLayoutStar *)self setKeyboardDim:0 amount:0.0 withDuration:0.3];
                            }

                            goto LABEL_103;
                          }

LABEL_97:
                          v146 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
                          v147 = [v10 key];
                          v148 = [v146 popupKeyUsesCustomKeyContentView:v147];

                          if (v148)
                          {
                            keyplaneView = self->_keyplaneView;
                            v150 = [v10 key];
                            selectedVariantIndexChanged = 1;
                            if (![(UIKBKeyplaneView *)keyplaneView retestSelectedVariantIndexForKey:v150 atPoint:1 phase:v16, v18])
                            {
                              selectedVariantIndexChanged = self->_selectedVariantIndexChanged;
                            }

                            self->_selectedVariantIndexChanged = selectedVariantIndexChanged;
                          }

                          else
                          {
                            v150 = [v10 key];
                            [(UIKeyboardLayoutStar *)self updateSelectedVariantIndexForKey:v150 withActions:0 withPoint:v16, v18];
                          }

                          v152 = [v10 key];
                          [(UIKeyboardLayoutStar *)self setState:16 forKey:v152];

                          goto LABEL_103;
                        }
                      }

                      v182.origin.x = v89;
                      v182.origin.y = v90;
                      v182.size.width = v91;
                      v182.size.height = v92;
                      if (v18 > CGRectGetMaxY(v182))
                      {
                        goto LABEL_88;
                      }

                      goto LABEL_97;
                    }
                  }

                  if (v40 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
                  {
                    v102 = [v40 superview];

                    if (v102)
                    {
                      [v7 locationInView:self];
                      [(UIView *)self convertPoint:v40 toView:?];
                      v104 = v103;
                      v106 = v105;
                      [v40 frame];
                      if (v106 < v107)
                      {
                        self->_dictationUsingServerManualEndpointing = 0;
                      }

                      [v40 updateSelectionWithPoint:{v104, v106}];
                      goto LABEL_103;
                    }

                    v142 = v18 - v20;
                    v143 = fabsf(v142);
                    [(UIKeyboardLayout *)self flickDistance];
                    if (v144 < v143 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
                    {
                      if (![(UIKeyboardLayoutStar *)self isHandwritingPlane]|| v29 != 3)
                      {
                        v145 = [v10 key];
                        if ([(UIKeyboardLayoutStar *)self stateForKey:v145]== 4)
                        {
                        }

                        else
                        {
                          v153 = [v10 key];
                          v154 = [v153 interactionType];

                          if (v154 != 5)
                          {
                            goto LABEL_103;
                          }
                        }
                      }

                      v155 = [v10 key];
                      [(UIKeyboardLayoutStar *)self showMenu:v40 forKey:v155];

                      [v7 locationInView:v40];
                      [v40 updateSelectionWithPoint:?];
                      self->_dictationUsingServerManualEndpointing = 0;
                    }
                  }

                  else
                  {
                    if (-[UIKeyboardLayoutStar _allowContinuousPathUI](self, "_allowContinuousPathUI") && [v10 continuousPathState] == 1)
                    {
                      [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:3 forTouchInfo:v10];
                    }

                    v96 = [v10 continuousPathState] == 3 || objc_msgSend(v10, "continuousPathState") == 4;
                    v97 = [(UIKBTree *)self->_keyplane shouldSuppressDragRetest];
                    if (!v97 && !v96)
                    {
                      v98 = [v10 key];
                      v99 = [(UIKeyboardLayoutStar *)self shouldRetestTouchDraggedFromKey:v98];

                      if (!v99)
                      {
                        goto LABEL_103;
                      }

LABEL_69:
                      *&v158.origin.y = MEMORY[0x1E69E9820];
                      *&v158.size.width = 3221225472;
                      *&v158.size.height = __54__UIKeyboardLayoutStar_touchDragged_executionContext___block_invoke;
                      v159 = &unk_1E70FD8B0;
                      v162 = v158.origin.x;
                      v160 = self;
                      v100 = v10;
                      v161 = v100;
                      v101 = [v8 childWithContinuation:&v158.origin.y];
                      [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v100 touchStage:1 executionContextPassingUIKBTree:v101];

LABEL_104:
                      goto LABEL_105;
                    }

                    if (!v97)
                    {
                      goto LABEL_69;
                    }
                  }

LABEL_103:
                  [v8 returnExecutionToParent];
                  goto LABEL_104;
                }
              }

              else if (v29 == 6)
              {
                v41 = +[UIKeyboardSplitControlMenu sharedInstance];
                if ([v41 isVisible])
                {
                  v42 = UIKeyboardSplitControlMenu;
LABEL_33:
                  v40 = [(__objc2_class *)v42 sharedInstance];
LABEL_35:

                  goto LABEL_41;
                }

                goto LABEL_34;
              }

              v40 = 0;
              goto LABEL_41;
            }
          }

LABEL_29:
          [v8 returnExecutionToParent];
LABEL_105:

          goto LABEL_106;
        }

        v12 = v26;
        v8 = v25;
        v7 = v24;
        self = v23;
        v11 = off_1E70EA000;
      }
    }

    goto LABEL_8;
  }

  [v8 returnExecutionToParent];
LABEL_106:
}

void __54__UIKeyboardLayoutStar_touchDragged_executionContext___block_invoke(uint64_t *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = a1[6];
      v9 = a1[4];
      v10 = [v12 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"UIKeyboardLayoutStar.m" lineNumber:9321 description:{@"UIKeyboardTask %s expected UIKBTree but received %@", "-[UIKeyboardLayoutStar touchDragged:executionContext:]_block_invoke", v10}];
    }
  }

  v11 = [v12 info];
  [a1[4] completeHitTestForTouchDragged:a1[5] hitKey:v11];
  [v12 returnExecutionToParent];
}

- (void)completeHitTestForTouchDragged:(id)a3 hitKey:(id)a4
{
  v120 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 initialDragPoint];
  v9 = v8;
  v11 = v10;
  v12 = +[UIKeyboardImpl activeInstance];
  if ([(UIKeyboardLayout *)self supportsVirtualDrift])
  {
    [v7 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = &OBJC_IVAR___UIKeyboardLayoutStar__leftDriftOffset;
    if (([(NSMutableSet *)self->_leftKeySet containsObject:v7]& 1) != 0 || (v21 = &OBJC_IVAR___UIKeyboardLayoutStar__rightDriftOffset, [(NSMutableSet *)self->_rightKeySet containsObject:v7]))
    {
      v22 = (self + *v21);
    }

    else
    {
      v22 = MEMORY[0x1E695EFF8];
    }

    v23 = *v22;
    v24 = v22[1];
    v121.origin.x = v14;
    v121.origin.y = v16;
    v121.size.width = v18;
    v121.size.height = v20;
    v25 = v9 - CGRectGetMidX(v121) - v23;
    v122.origin.x = v14;
    v122.origin.y = v16;
    v122.size.width = v18;
    v122.size.height = v20;
    v26 = v11 - CGRectGetMidY(v122) - v24;
    v27 = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
    v28 = [v6 touch];
    -[UIKeyboardLayout _updateTouchState:errorVector:rowOffsetFromHomeRow:](self, "_updateTouchState:errorVector:rowOffsetFromHomeRow:", v28, [v7 displayRowHint] - objc_msgSend(v27, "integerValue"), v25, v26);
  }

  v29 = [v6 key];

  if (v29 == v7)
  {
    goto LABEL_81;
  }

  if (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 23 || ([v12 usesContinuousPath] & 1) != 0)
  {
    v30 = [v6 key];
    if ([v30 state] != 1)
    {
      v31 = [v6 key];
      if ([v31 interactionType] == 11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v32 = [v6 key];
      if ([v32 interactionType] == 14)
      {

        goto LABEL_18;
      }

      v98 = [v6 key];
      if ([v98 state] == 4)
      {
        v99 = [v6 key];
        v100 = [v99 interactionType];

        if (v100 == 10)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v30 = [v6 key];
      [(UIKeyboardLayoutStar *)self setState:2 forKey:v30];
    }

LABEL_19:

LABEL_20:
    v33 = [v6 key];
    if (([(UIKeyboardLayoutStar *)self upActionFlagsForKey:v33]& 0x400) != 0)
    {
      shift = self->_shift;

      if (shift)
      {
        [v12 setShift:0];
        [(UIKeyboardLayoutStar *)self setShift:0];
      }
    }

    else
    {
    }

    [v12 stopAutoDelete];
    if (v7)
    {
      if ([v7 interactionType] == 13)
      {
        goto LABEL_81;
      }

      if ([v7 interactionType] == 4)
      {
        goto LABEL_81;
      }

      if ([v7 displayType] == 49)
      {
        goto LABEL_81;
      }

      if (([(UIKeyboardLayoutStar *)self upActionFlagsForKey:v7]& 2) == 0)
      {
        goto LABEL_81;
      }

      self->_revertKeyplaneAfterTouch = 1;
      [v12 setInputPoint:{v9, v11}];
      [(UIKeyboardLayoutStar *)self setActiveKey:v7];
      v37 = [v6 key];
      [v6 setSlidOffKey:v37];

      [v6 setKey:v7];
      [v6 setKeyplane:self->_keyplane];
      if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI])
      {
        if ([v6 continuousPathState] != 2)
        {
          goto LABEL_81;
        }
      }

LABEL_70:
      [(UIKeyboardLayoutStar *)self setState:4 forKey:v7];
      goto LABEL_81;
    }

    [(UIKeyboardLayoutStar *)self setActiveKey:0];
    v70 = [v6 key];
    [v6 setSlidOffKey:v70];

LABEL_80:
    [v6 setKey:0];
    [v6 setKeyplane:self->_keyplane];
    goto LABEL_81;
  }

  [v12 stopAutoDelete];
  v34 = [v6 key];
  [v6 setSlidOffKey:v34];

  v35 = [v6 slidOffKey];
  if (([(UIKeyboardLayoutStar *)self downActionFlagsForKey:v35]& 0x10) != 0)
  {
    v38 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v7];

    if ((v38 & 0x10) == 0)
    {
      [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
      keyplane = self->_keyplane;
      v40 = [v6 slidOffKey];
      v41 = [v40 name];
      v42 = [(UIKBTree *)keyplane keysByKeyName:v41];

      v43 = [v6 slidOffKey];
      v44 = [(UIKeyboardLayoutStar *)self stateForShiftKey:v43];

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v45 = v42;
      v46 = [v45 countByEnumeratingWithState:&v114 objects:v119 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v115;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v115 != v48)
            {
              objc_enumerationMutation(v45);
            }

            [(UIKeyboardLayoutStar *)self setState:v44 ^ 4u forKey:*(*(&v114 + 1) + 8 * i)];
          }

          v47 = [v45 countByEnumeratingWithState:&v114 objects:v119 count:16];
        }

        while (v47);
      }
    }
  }

  else
  {
  }

  v50 = [v6 key];
  if (v50)
  {
    v51 = v50;
    v52 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (v52 || ([v6 keyplane], v52 = objc_claimAutoreleasedReturnValue(), v52 == self->_keyplane))
    {
    }

    else
    {
      v71 = [v6 keyplane];
      v72 = [v71 looksLikeShiftAlternate];

      if (v72)
      {
        [(UIKeyboardLayoutStar *)self setActiveKey:v7];
        [v6 setKey:v7];
        [v6 setKeyplane:self->_keyplane];
        goto LABEL_70;
      }
    }
  }

  v53 = [v6 key];
  if (v53)
  {
    v54 = v53;
    v55 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (v55)
    {
      v56 = v55;
      v57 = [(UIKeyboardLayoutStar *)self isShiftKeyBeingHeld];

      if (!v57)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v73 = [v6 key];
    if ([v73 state] == 1)
    {
      goto LABEL_77;
    }

    v74 = [v6 key];
    if ([v74 interactionType] != 14)
    {
      v75 = [v6 key];
      if ([v75 interactionType] != 38)
      {
        v101 = [v6 key];
        if ([v101 state] == 4)
        {
          v102 = [v6 key];
          v103 = [v102 interactionType];

          if (v103 == 10)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        v73 = [v6 key];
        [(UIKeyboardLayoutStar *)self setState:2 forKey:v73];
LABEL_77:

LABEL_78:
        [v6 initialPoint];
        v77 = v9 - v76;
        [v6 initialPoint];
        v79 = v11 - v78;
        if (((v77 * v77) + (v79 * v79)) <= 10000.0)
        {
          goto LABEL_81;
        }

        [(UIKeyboardLayoutStar *)self setActiveKey:0];
        goto LABEL_80;
      }
    }

    goto LABEL_77;
  }

LABEL_49:
  v58 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

  if (v58)
  {
    self->_revertKeyplaneAfterTouch = 1;
    if ([v7 interactionType] != 13 && objc_msgSend(v7, "interactionType") != 4 && (-[UIKeyboardLayoutStar upActionFlagsForKey:](self, "upActionFlagsForKey:", v7) & 2) != 0)
    {
      [v12 setInputPoint:{v9, v11}];
      [(UIKeyboardLayoutStar *)self setActiveKey:v7];
      [v6 setKey:v7];
      [v6 setKeyplane:self->_keyplane];
      v59 = [v6 slidOffKey];
      if ([v59 interactionType] != 11)
      {
        v60 = [v6 slidOffKey];
        v61 = [v60 interactionType];

        if (v61 == 14)
        {
          goto LABEL_64;
        }

        v62 = self->_keyplane;
        v63 = [v6 slidOffKey];
        v64 = [v63 name];
        v65 = [(UIKBTree *)v62 keysByKeyName:v64];

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v59 = v65;
        v66 = [v59 countByEnumeratingWithState:&v110 objects:v118 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v111;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v111 != v68)
              {
                objc_enumerationMutation(v59);
              }

              [(UIKeyboardLayoutStar *)self setState:2 forKey:*(*(&v110 + 1) + 8 * j)];
            }

            v67 = [v59 countByEnumeratingWithState:&v110 objects:v118 count:16];
          }

          while (v67);
        }
      }

LABEL_64:
      if ([v6 continuousPathState] == 4)
      {
        goto LABEL_81;
      }

      goto LABEL_70;
    }
  }

LABEL_81:
  if ([v12 usesContinuousPathProgressiveCandidates] && objc_msgSend(v6, "continuousPathState") == 4)
  {
    if (self->_prevProgressiveCandidateRequestTime)
    {
      v80 = [MEMORY[0x1E695DF00] date];
      [v80 timeIntervalSinceDate:self->_prevProgressiveCandidateRequestTime];
      v82 = v81;

      if (v82 > 0.2)
      {
        [v12 generateCandidatesWithOptions:12];
        progressiveCandidateUpdateTimer = self->_progressiveCandidateUpdateTimer;
        if (progressiveCandidateUpdateTimer)
        {
          [(NSTimer *)progressiveCandidateUpdateTimer invalidate];
        }

        v84 = [MEMORY[0x1E695DF00] date];
        prevProgressiveCandidateRequestTime = self->_prevProgressiveCandidateRequestTime;
        self->_prevProgressiveCandidateRequestTime = v84;
      }
    }

    if (![(NSTimer *)self->_progressiveCandidateUpdateTimer isValid])
    {
      v86 = MEMORY[0x1E695DFF0];
      v104 = MEMORY[0x1E69E9820];
      v105 = 3221225472;
      v106 = __62__UIKeyboardLayoutStar_completeHitTestForTouchDragged_hitKey___block_invoke;
      v107 = &unk_1E70F4050;
      v108 = self;
      v109 = v12;
      v87 = [v86 scheduledTimerWithTimeInterval:0 repeats:&v104 block:0.2];
      v88 = self->_progressiveCandidateUpdateTimer;
      self->_progressiveCandidateUpdateTimer = v87;
    }
  }

  v89 = [v6 key];
  if (v89)
  {
    v90 = v89;
    v91 = [v6 key];
    if ([v91 interactionType] == 9)
    {
    }

    else
    {
      v92 = [v6 key];
      v93 = [v92 interactionType];

      if (v93 != 5)
      {
        v94 = [(UIKeyboardLayoutStar *)self activeKey];
        if ([v94 interactionType] == 13)
        {
          v95 = [v12 returnKeyEnabled];

          if ((v95 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
        }

        v96 = [v6 key];
        v97 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v96];

        if (v97 < 0)
        {
          [v12 touchLongPressTimerWithDelay:1.5];
        }
      }
    }
  }

LABEL_100:
}

void __62__UIKeyboardLayoutStar_completeHitTestForTouchDragged_hitKey___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 1408) == 1)
  {
    [*(a1 + 40) generateCandidatesWithOptions:12];
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1288);
    *(v4 + 1288) = v3;
  }
}

- (int64_t)defaultSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 variantType] != 10)
  {
    if ([v6 variantType] == 11 || objc_msgSend(v6, "variantType") == 13)
    {
      v7 = [v6 selectedVariantIndex];
      goto LABEL_6;
    }

    if ((v4 & 0x80000000) == 0 && (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 23 || -[UIKeyboardLayout isFloating](self, "isFloating") || [v6 displayType] == 7))
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v7;
}

- (void)updateSelectedVariantIndexForKey:(id)a3 withActions:(unint64_t)a4 withPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [v9 selectedVariantIndex];
  [v9 setSelectedVariantIndex:{-[UIKeyboardLayoutStar defaultSelectedVariantIndexForKey:withActions:](self, "defaultSelectedVariantIndexForKey:withActions:", v9, a4)}];
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView changingSelectedVariantForKey:v9 atPoint:a4 == 0 isDragging:x, y];
  }

  else
  {
    if ((a4 & 0x80000000) != 0 || [v9 variantType] == 10 || objc_msgSend(v9, "variantType") == 12)
    {
      [v9 frame];
      v34.x = x;
      v34.y = y;
      if (CGRectContainsPoint(v35, v34))
      {
        [v9 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
        goto LABEL_25;
      }
    }

    v27 = v10;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [v9 subtrees];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      LODWORD(v14) = 0;
      v15 = *v29;
      v16 = 80.0;
LABEL_10:
      v17 = 0;
      v14 = v14;
      while (1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if ([v18 state] != 1)
        {
          [v18 frame];
          UIDistanceBetweenPointAndRect(x, y, v19, v20, v21, v22);
          v24 = v23;
          if (v16 > v24)
          {
            v25 = [v18 displayString];

            if (!v25)
            {
              NSLog(&cfstr_NilKey.isa);
            }

            [v9 setSelectedVariantIndex:v14];
            v16 = v24;
            if (fabsf(v24) < 2.2204e-16)
            {
              break;
            }
          }
        }

        ++v14;
        if (v13 == ++v17)
        {
          v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v10 = v27;
  }

  if (v10 != [v9 selectedVariantIndex] && objc_msgSend(v9, "selectedVariantIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_selectedVariantIndexChanged = 1;
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
    {
      v26 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [v26 selectionChanged];
    }
  }

LABEL_25:
}

- (void)updatePanAlternativesForTouchInfo:(id)a3
{
  v4 = a3;
  v30 = [v4 key];
  [v30 paddedFrame];
  v6 = v5;
  v8 = v7;
  [v4 initialDragPoint];
  v10 = v9;
  [v4 initialPoint];
  v12 = v10 - v11;
  [v4 initialDragPoint];
  v14 = v13;
  [v4 initialPoint];
  v16 = v15;

  v17 = v14 - v16;
  v18 = v12 / v6;
  v19 = v17 / v8;
  v20 = 45.0 / v8;
  if ([v30 displayType] == 7)
  {
    v20 = 0.6;
  }

  v21 = [v30 secondaryDisplayStrings];
  v22 = [v21 count];

  if (v22 != 1)
  {
    v23 = [v30 secondaryDisplayStrings];
    v24 = [v23 count];

    if (v24 != 2)
    {
      goto LABEL_14;
    }

    if (v19 > v20)
    {
      if (v18 <= -0.3)
      {
        v25 = v30;
        v26 = 1;
      }

      else
      {
        if (v18 < 0.3)
        {
          goto LABEL_14;
        }

        v25 = v30;
        v26 = 0;
      }

      goto LABEL_13;
    }

LABEL_12:
    v25 = v30;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
    [v25 setSelectedVariantIndex:v26];
    goto LABEL_14;
  }

  if (v19 <= v20)
  {
    goto LABEL_12;
  }

  [v30 setSelectedVariantIndex:0];
  if (![(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord])
  {
    self->_hasPeekedGestureKey = 1;
  }

LABEL_14:
  if (v19 > 0.25)
  {
    v27 = +[UIKeyboardImpl activeInstance];
    [v27 clearLongPressTimer];
  }

  if (self->_keyboardImageViewIsDim && [v30 selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
  }

  v28 = [(UIKeyboardLayoutStar *)self viewForKey:v30];
  v29 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
  [v29 updateTransitionForKeyView:v28 normalizedDragSize:{-v18, v19}];
}

- (void)resetPanAlternativesForEndedTouch:(id)a3
{
  v6 = [a3 key];
  v4 = [(UIKeyboardLayoutStar *)self viewForKey:v6];
  v5 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
  [v5 endTransitionForKeyView:v4];
}

- (BOOL)performReturnAction
{
  if (!self->_returnAction)
  {
    return 0;
  }

  returnAction = self->_returnAction;
  returnTarget = self->_returnTarget;
  if (dyld_program_sdk_at_least())
  {
    [returnTarget returnAction];
  }

  else
  {
    [returnTarget performSelector_];
  }

  return 1;
}

- (BOOL)performSpaceAction
{
  if (!self->_spaceAction)
  {
    return 0;
  }

  spaceAction = self->_spaceAction;
  spaceTarget = self->_spaceTarget;
  if (dyld_program_sdk_at_least())
  {
    [spaceTarget spaceAction];
  }

  else
  {
    [spaceTarget performSelector_];
  }

  return 1;
}

- (void)refreshGhostKeyState
{
  if ([(UIKBTree *)self->_keyplane isSplit])
  {
    if (!self->_ghostKeysEnabled)
    {
      [(UIKeyboardLayoutStar *)self updateKeyCentroids];
    }

    delayedCentroidUpdate = self->_delayedCentroidUpdate;
    if (!delayedCentroidUpdate)
    {
      v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel_updateKeyCentroids userInfo:0 delay:1.0];
      v5 = self->_delayedCentroidUpdate;
      self->_delayedCentroidUpdate = v4;

      delayedCentroidUpdate = self->_delayedCentroidUpdate;
    }

    [(UIDelayedAction *)delayedCentroidUpdate touch];
  }

  else if (self->_delayedCentroidUpdate)
  {

    [(UIKeyboardLayoutStar *)self cancelDelayedCentroidUpdate];
  }
}

- (void)cancelDelayedCentroidUpdate
{
  [(UIDelayedAction *)self->_delayedCentroidUpdate cancel];
  delayedCentroidUpdate = self->_delayedCentroidUpdate;
  self->_delayedCentroidUpdate = 0;
}

- (void)handleDelayedCentroidUpdate
{
  v3 = self->_delayedCentroidUpdate;
  objc_initWeak(&location, self);
  if (qword_1ED493280 != -1)
  {
    dispatch_once(&qword_1ED493280, &__block_literal_global_1269_0);
  }

  v4 = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__UIKeyboardLayoutStar_handleDelayedCentroidUpdate__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  v8 = self;
  objc_copyWeak(&v9, &location);
  [v4 addTask:v6 breadcrumb:qword_1ED493278];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__UIKeyboardLayoutStar_handleDelayedCentroidUpdate__block_invoke()
{
  v0 = [&__block_literal_global_1271 copy];
  v1 = qword_1ED493278;
  qword_1ED493278 = v0;
}

void __51__UIKeyboardLayoutStar_handleDelayedCentroidUpdate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1016))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained updateKeyCentroids];
    }

    v3 = v6;
  }

  [v3 returnExecutionToParent];
}

- (BOOL)shouldRetestTouchUp:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = v5;
  v7 = 0;
  if (!v4 || !v5)
  {
    goto LABEL_35;
  }

  if (![v5 allowRetestAfterCommittingDownActions])
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  v8 = [v4 key];
  if ([v8 displayTypeHint] != 10)
  {
    goto LABEL_9;
  }

  v9 = [v4 key];
  if ([v9 state] == 20)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v10 = [v4 key];
  if ([v10 state] == 2)
  {

    goto LABEL_8;
  }

  v17 = [v4 slidOffKey];

  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ([(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected])
  {
    goto LABEL_34;
  }

  v11 = [v4 key];
  v12 = [v11 interactionType];

  if (v12 != 5)
  {
    if (v12 != 6)
    {
      if (v12 == 9)
      {
        v13 = [v4 key];
        v14 = [v13 displayType];

        if (v14 == 13)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_26;
    }

    v15 = +[UIKeyboardSplitControlMenu sharedInstance];
    if ([v15 isVisible])
    {
      v18 = UIKeyboardSplitControlMenu;
LABEL_23:
      v16 = [(__objc2_class *)v18 sharedInstance];

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (+[UIDictationController viewMode]== 1)
  {
    v15 = +[UIKeyboardDictationMenu sharedInstance];
    if ([v15 isVisible])
    {
      v18 = UIKeyboardDictationMenu;
      goto LABEL_23;
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  v15 = +[UIDictationConnectionPreferences sharedInstance];
  if (![v15 dictationIsEnabled])
  {
    goto LABEL_27;
  }

  v19 = +[UIKeyboardInputModeController sharedInputModeController];
  v20 = [v19 enabledDictationLanguages];
  v21 = [v20 count];

  if (v21 >= 2)
  {
LABEL_15:
    v15 = +[UIInputSwitcherView sharedInstance];
    v16 = v15;
LABEL_28:

    v22 = v16 == 0;
    goto LABEL_29;
  }

LABEL_26:
  v22 = 1;
LABEL_29:
  v23 = [v4 key];
  if (v23)
  {
    v24 = v23;
    v25 = [v4 key];
    v26 = [(UIKeyboardLayoutStar *)self stateForKey:v25]== 16 && v22;

    if (v26)
    {
      goto LABEL_34;
    }
  }

  if (!v22 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3 || [(UIKBTree *)self->_keyplane shouldSuppressDragRetest])
  {
    goto LABEL_34;
  }

  v28 = [v4 key];
  v29 = [v4 slidOffKey];
  v30 = [v4 keyplane];
  v31 = [(UIKeyboardLayoutStar *)self shouldRetestKey:v28 slidOffKey:v29 withKeyplane:v30];

  v7 = v31 || [v4 continuousPathState] == 4;
LABEL_35:

  return v7;
}

- (void)touchUp:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(UIKeyboardLayoutStar *)self infoForTouch:v7];
    if ([(UIKeyboardLayoutStar *)self preventPaddlesForPointerTouches])
    {
      v10 = [v9 key];
      [v10 setPreventPaddle:0];
    }

    if ([v9 delayed] && !self->_didLongPress && objc_msgSend(v9, "continuousPathState") == 1)
    {
      v11 = [v9 key];
      v12 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:v11];

      v13 = +[UIKeyboardImpl activeInstance];
      [v13 clearLongPressTimer];

      [v9 setDelayed:0];
      v14 = [v9 key];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __49__UIKeyboardLayoutStar_touchUp_executionContext___block_invoke;
      v51[3] = &unk_1E70FD1B8;
      v51[4] = self;
      v52 = v7;
      v15 = [v8 childWithContinuation:v51];
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:v14 withActions:v12 executionContext:v15];

LABEL_51:
      goto LABEL_52;
    }

    [v9 addTouch:v7];
    if (v9)
    {
      goto LABEL_10;
    }
  }

  [v7 locationInView:self];
  v9 = 0;
  if ([(UIKeyboardLayoutStar *)self pointInside:0 forEvent:?])
  {
LABEL_10:
    Current = CFAbsoluteTimeGetCurrent();
    v17 = Current - self->_prevTouchUpTime;
    [(_UIKeyboardTypingSpeedLogger *)self->_typingSpeedLogger recordTypingDelay:v17];
    if (!-[UIKeyboardLayoutStar hasActiveContinuousPathInput](self, "hasActiveContinuousPathInput") && [v9 continuousPathState] != 4)
    {
      v18 = [(UIKeyboardLayout *)self typingStyleEstimator];
      [v18 tapTypedKey];

      [(UIKeyboardLayoutStar *)self clearContinuousPathView];
    }

    v19 = [v9 key];
    if ([v19 interactionType] != 17)
    {
      v20 = [v9 key];
      if ([v20 interactionType] != 12)
      {
        v21 = [v9 key];
        if ([v21 interactionType] != 38)
        {
          v36 = [v9 key];
          v45 = [v36 interactionType];

          if (v45 != 9)
          {
            self->_prevTouchUpTime = Current;
          }

LABEL_19:
          v22 = +[UIKeyboardImpl activeInstance];
          [(UIKeyboardLayoutStar *)self refreshGhostKeyState];
          if (_AXSZoomTouchEnabled() || [(UIKeyboardLayoutStar *)self playKeyClickSoundOn]== 2)
          {
            v23 = [v9 key];
            v24 = [v23 interactionType];

            if (v24 == 13)
            {
              if (([v22 returnKeyEnabled] & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else if (!v7)
            {
              v27 = [v9 key];
              [(UIKeyboardLayoutStar *)self playKeyReleaseSoundForKey:v27];

              goto LABEL_30;
            }

            v25 = [v9 key];
            [(UIKeyboardLayoutStar *)self playKeyClickSoundForKey:v25];
          }

LABEL_27:
          v26 = [v9 key];
          [(UIKeyboardLayoutStar *)self playKeyReleaseSoundForKey:v26];

          if (v7)
          {
LABEL_31:
            [v22 setShiftNeedsUpdate];
            v29 = [(UIKeyboardLayoutStar *)self slideBehaviour];
            [v29 userInteractionEnded];

            [(UIKeyboardLayoutStar *)self setSlideBehaviour:0];
            v30 = [v9 key];
            v31 = [v30 interactionType];

            if (v31 == 16)
            {
              if (([v9 dragged] & 1) == 0)
              {
                v32 = [v9 key];
                if ([v32 flickDirection] == -3)
                {
                  v33 = [(UIKeyboardLayoutStar *)self touchPassesDragThreshold:v9];

                  if (v33)
                  {
                    [(UIKeyboardLayoutStar *)self handleFlick:v9];
                  }
                }

                else
                {
                }
              }

              touchInfo = self->_touchInfo;
              if (touchInfo)
              {
                self->_touchInfo = 0;
              }

              [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
              flickPopuptimer = self->_flickPopuptimer;
              if (flickPopuptimer)
              {
                [(NSTimer *)flickPopuptimer invalidate];
                v39 = self->_flickPopuptimer;
                self->_flickPopuptimer = 0;
              }
            }

            else
            {
              v34 = [v9 key];
              v35 = [v34 displayTypeHint];

              if (v35 == 10)
              {
                [(UIKeyboardLayoutStar *)self resetPanAlternativesForEndedTouch:v9];
              }
            }

            if ([(UIKeyboardLayoutStar *)self shouldRetestTouchUp:v9])
            {
              v46[0] = MEMORY[0x1E69E9820];
              v46[1] = 3221225472;
              v46[2] = __49__UIKeyboardLayoutStar_touchUp_executionContext___block_invoke_2;
              v46[3] = &unk_1E7114A60;
              v48 = a2;
              v46[4] = self;
              v40 = v9;
              v47 = v40;
              v49 = Current;
              v50 = v17;
              v41 = [v8 childWithContinuation:v46];
              [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v40 touchStage:1 executionContextPassingUIKBTree:v41];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                liveKeyplaneView = self->_liveKeyplaneView;
                v43 = [v9 key];
                v44 = [v9 touch];
                [v44 locationInView:self];
                [(TUIKeyplaneView *)liveKeyplaneView finishedSelectingVariantForKey:v43 atPoint:?];
              }

              [(UIKeyboardLayoutStar *)self completeRetestForTouchUp:v9 timestamp:v8 interval:Current executionContext:v17];
            }

            goto LABEL_51;
          }

LABEL_30:
          v28 = [(UIKeyboardLayoutStar *)self activeKey];
          [(UIKeyboardLayoutStar *)self setState:2 forKey:v28];

          [(UIKeyboardLayoutStar *)self setActiveKey:0];
          goto LABEL_31;
        }
      }
    }

    goto LABEL_19;
  }

  [v8 returnExecutionToParent];
LABEL_52:
}

void __49__UIKeyboardLayoutStar_touchUp_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v21 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = [v21 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"UIKeyboardLayoutStar.m" lineNumber:9836 description:{@"UIKeyboardTask %s expected UIKBTree but received %@", "-[UIKeyboardLayoutStar touchUp:executionContext:]_block_invoke_2", v10}];
    }
  }

  v11 = [v21 info];
  v12 = [*(a1 + 32) activeTouchInfoForShift];

  if (!v12)
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) key];
    [v13 setState:2 forKey:v14];
  }

  v15 = [*(a1 + 32) preTouchKeyplaneName];
  v16 = *(a1 + 40);
  if (v15)
  {
    v17 = [v16 key];
    if ([v17 modifiesKeyplane] && (objc_msgSend(v11, "modifiesKeyplane") & 1) == 0)
    {
      v18 = [*(a1 + 40) slidOffKey];
      [*(a1 + 40) setMaySuppressUpAction:v18 == 0];
    }

    else
    {
      [*(a1 + 40) setMaySuppressUpAction:0];
    }
  }

  else
  {
    [v16 setMaySuppressUpAction:0];
  }

  v19 = [*(a1 + 40) key];
  if ([v19 interactionType] != 11)
  {

    goto LABEL_17;
  }

  v20 = [v11 interactionType];

  if (v20 != 6)
  {
LABEL_17:
    [*(a1 + 40) setKey:v11];
  }

  [*(a1 + 40) setKeyplane:*(*(a1 + 32) + 640)];
  [*(a1 + 32) completeRetestForTouchUp:*(a1 + 40) timestamp:v21 interval:*(a1 + 56) executionContext:*(a1 + 64)];
}

- (void)handleKeyboardMenusForTouch:(id)a3
{
  v26 = a3;
  v4 = [v26 key];
  v5 = [v4 interactionType];

  v6 = [v26 key];
  if ([v6 interactionType] == 9)
  {
    v7 = [v26 key];
    if ([v7 displayType] == 13 && objc_msgSend(v26, "dragged"))
    {

      goto LABEL_7;
    }
  }

  if (v5 != 5)
  {
    v9 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v8 = +[UIInputSwitcherView sharedInstance];
  v9 = v8;
  self->_dictationUsingServerManualEndpointing = 0;
  if (v8)
  {
    v10 = [v8 superview];

    if (v10)
    {
      v11 = [v26 touch];
      v12 = [v26 key];
      v13 = [(UIKeyboardLayoutStar *)self viewForKey:v12];

      [v11 locationInView:v13];
      v15 = v14;
      v17 = v16;
      [v11 locationInView:v9];
      v19 = v18;
      v21 = v20;
      if (v5 == 5 && ([v9 bounds], v28.x = v19, v28.y = v21, !CGRectContainsPoint(v30, v28)))
      {
        [v13 bounds];
        v29.x = v15;
        v29.y = v17;
        if (CGRectContainsPoint(v31, v29))
        {
          v23 = +[UIDictationController specificReasonTypeMicButtonOnKeyboard];
          v24 = +[UIDictationController sharedInstance];
          [v24 setReasonType:v23];

          v25 = +[UIDictationController sharedInstance];
          [v25 switchToDictationInputModeWithTouch:0];
        }
      }

      else
      {
        [v9 selectItemAtPoint:{v19, v21}];
      }

      v22 = [v26 key];
      [(UIKeyboardLayoutStar *)self setState:2 forKey:v22];
    }
  }

LABEL_14:
}

- (BOOL)shouldSendTouchUpToInputManager:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v9 = [v4 canHandleKeyHitTest] && (objc_msgSend(v3, "key"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isExemptFromInputManagerLayout"), v5, (v6 & 1) == 0) && (objc_msgSend(v3, "key"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interactionType"), v7, v8 != 4) && (!objc_msgSend(v4, "canHandleKeyHitTest") || !objc_msgSend(v3, "stage") || objc_msgSend(v3, "stage") == 1);

  return v9;
}

- (void)_recordKeystrokeStatisticForKeyPress
{
  if ([(UIKeyboardLayoutStar *)self currentHandBias])
  {
    v3 = [(UIKeyboardLayoutStar *)self currentHandBias];

    [_UIKeyboardUsageTracking countKeystrokeForReachableKeyboardWithBias:v3];
  }
}

- (void)completeRetestForTouchUp:(id)a3 timestamp:(double)a4 interval:(double)a5 executionContext:(id)a6
{
  v10 = a3;
  v275 = a6;
  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v10 touch];
  didLongPress = self->_didLongPress;
  self->_didLongPress = 0;
  [v11 stopAutoDelete];
  [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
  v14 = [v10 key];

  if ([v10 continuousPathState] == 4)
  {
    [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:5 forTouchInfo:v10];
    goto LABEL_4;
  }

  if (v14)
  {
LABEL_4:
    if ([(UIKeyboardLayoutStar *)self shouldSendTouchUpToInputManager:v10])
    {
      [v12 locationInView:self];
      v16 = v15;
      v18 = v17;
      [v12 timestamp];
      v20 = v19;
      if ([v10 continuousPathState] == 5)
      {
        v21 = didLongPress;
        v22 = -2;
      }

      else
      {
        v24 = [v10 key];
        if (v24 && (v25 = v24, [v10 key], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "interactionType"), v26, v25, v27 != 11))
        {
          v21 = didLongPress;
          v28 = [v10 key];
          v29 = [(UIKeyboardLayoutStar *)self keycodeForKey:v28];

          v22 = v29;
        }

        else
        {
          v21 = didLongPress;
          v22 = -1;
        }
      }

      v30 = MEMORY[0x1E69D9668];
      [v12 pathMajorRadius];
      v23 = [v30 touchEventWithStage:2 location:objc_msgSend(v12 radius:"pathIndex") timestamp:objc_msgSend(v10 pathIndex:"fingerID") fingerID:v22 forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(v10 continuousPathState:{"continuousPathState")), v16, v18, v31, v20}];
      [v10 setStage:2];
      didLongPress = v21;
    }

    else
    {
      v23 = 0;
    }

    if ([v10 continuousPathState] == 5)
    {
      [v11 skipHitTestForTouchEvent:v23];
      if ([v11 usesContinuousPathProgressiveCandidates])
      {
        v32 = 0x1000000000;
      }

      else
      {
        v32 = 0x1001000000;
      }

      [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchUp:v10 withActions:v32 timestamp:didLongPress interval:0 didLongPress:v275 prevActions:a4 executionContext:a5];
      goto LABEL_227;
    }

    v33 = [v10 key];
    v34 = [(UIKeyboardLayoutStar *)self stateForKey:v33];

    v35 = [v10 key];
    v272 = [v35 subtrees];

    v36 = [v10 key];
    v37 = [(UIKeyboardLayoutStar *)self upActionFlagsForKey:v36];

    prevUpActions = self->_prevUpActions;
    self->_prevUpActions = v37;
    v263 = v34;
    v270 = v11;
    v271 = v12;
    v273 = v23;
    if (v34 != 16 || (v37 & 0x2080000000) == 0)
    {
      goto LABEL_55;
    }

    v38 = v37;
    v39 = [v10 initialKeyState];
    v40 = [v10 key];
    v41 = [v40 selectedVariantIndex];

    v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
    if (v39 != 16)
    {
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 &= 0xFFFFFFFFFFFFFFF5;
      }

      else if ((v37 & 0x2000000000) != 0 && !self->_selectedVariantIndexChanged)
      {
        v37 &= 0xFFFFFFFFFFFFFFF5;
      }

      goto LABEL_54;
    }

    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 &= ~2uLL;
    }

    v43 = [v10 touch];
    [v43 locationInView:self];
    v45 = v44;
    v47 = v46;

    v48 = [v10 key];
    [v48 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [v10 key];
    if ([v57 variantType] == 9)
    {
      v287.origin.x = v50;
      v287.origin.y = v52;
      v287.size.width = v54;
      v287.size.height = v56;
      v286.x = v45;
      v286.y = v47;
      v58 = CGRectContainsPoint(v287, v286);

      if (!v58)
      {
        v37 &= ~8uLL;
LABEL_50:
        v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
LABEL_54:
        *(&self->super.super.super.super.isa + v42[81]) = 0;
LABEL_55:
        if ((v37 & 8) != 0)
        {
          v72 = [v10 keyplane];
          keyplane = self->_keyplane;

          if (v72 == keyplane)
          {
            v80 = [v10 key];
            v81 = [v80 interactionType];

            if (v81 == 44)
            {
              v82 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              v83 = [v82 responder];
              v84 = [v83 inputAssistantItem];
              [v84 _dictationReplacementAction];
              didLongPress = v267 = didLongPress;

              v85 = [didLongPress sender];
              [didLongPress performWithSender:v85 target:0];

              LODWORD(didLongPress) = v267;
            }

            if (!didLongPress)
            {
              goto LABEL_78;
            }

            v86 = [v10 key];
            if ([(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:v86])
            {

              goto LABEL_57;
            }

            v89 = [v10 key];
            v90 = [v89 interactionType];

            if (v90 != 5)
            {
LABEL_78:
              v91 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
              v92 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
              if (v91)
              {
                v92 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
              }

              v93 = *(&self->super.super.super.super.isa + *v92);
              v94 = [v10 key];
              [v93 addKeyToDelayedDeactivationSet:v94];

              if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
              {
                if (v263 != 16)
                {
                  goto LABEL_57;
                }

                goto LABEL_85;
              }

              v234 = [(UIKBScreenTraits *)self->super._screenTraits idiom];
              if (v263 == 16 && v234 == 23)
              {
LABEL_85:
                [(UIKeyboardLayoutStar *)self setKeyboardDim:0 amount:0.0 withDuration:0.3];
              }
            }
          }
        }

LABEL_57:
        v74 = [v10 key];
        if ([v74 interactionType] == 13)
        {
          v75 = [v11 returnKeyEnabled];

          if ((v75 & 1) == 0)
          {
            v23 = v273;
            [v11 skipHitTestForTouchEvent:v273];
            [v11 clearLongPressTimer];
            [v10 setDragged:0];
            [(UIKeyboardLayoutStar *)self setActiveKey:0];
            [(UIKeyboardLayoutStar *)self clearInfoForTouch:v12];
            [v275 returnExecutionToParent];
LABEL_226:

LABEL_227:
            goto LABEL_228;
          }
        }

        else
        {
        }

        if (v37 & 0x100000) == 0 || (didLongPress)
        {
          v76 = v273;
        }

        else
        {
          v76 = v273;
          if (([v10 maySuppressUpAction] & 1) == 0)
          {
            [v11 skipHitTestForTouchEvent:v273];

            v77 = [v10 key];
            v78 = [v77 interactionType];

            v76 = 0;
            if (v78 > 14)
            {
              if (v78 == 15)
              {
                v79 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
                goto LABEL_88;
              }

              if (v78 == 42)
              {
                v87 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                v88 = [v87 systemInputAssistantViewController];
                [v88 showEmojiSearch:1];

LABEL_95:
                v76 = 0;
              }
            }

            else
            {
              if (v78 == 4)
              {
                deleteTarget = self->_deleteTarget;
                v96 = 872;
LABEL_89:
                if (*(&self->super.super.super.super.isa + v96))
                {
                  v97 = *(&self->super.super.super.super.isa + v96);
                }

                else
                {
                  v97 = 0;
                }

                if (dyld_program_sdk_at_least())
                {
                  [deleteTarget v97];
                }

                else
                {
                  [deleteTarget performSelector_];
                }

                goto LABEL_95;
              }

              if (v78 == 13)
              {
                v79 = &OBJC_IVAR___UIKeyboardLayoutStar__returnTarget;
LABEL_88:
                deleteTarget = *(&self->super.super.super.super.isa + *v79);
                v96 = v79[2];
                goto LABEL_89;
              }
            }
          }
        }

        v274 = v76;
        if ((v37 & 0x200000000) != 0 && ![v11 handleTabWithShift:{-[UIKeyboardLayoutStar isShiftKeyBeingHeld](self, "isShiftKeyBeingHeld")}])
        {
          v37 |= 2uLL;
        }

        v264 = v37;
        v98 = [v10 key];
        v99 = [v98 interactionType];

        if (v99 != 16)
        {
          goto LABEL_126;
        }

        v100 = 1096;
        if (self->_flickPopupView)
        {
          v101 = [v10 key];
          v102 = [v101 state];

          if (v102 == 16)
          {
            [(UIView *)self->_flickPopupView removeFromSuperview];
            flickPopupView = self->_flickPopupView;
            self->_flickPopupView = 0;
          }
        }

        v104 = [v10 key];
        if (([v104 state] & 0x10) != 0)
        {
        }

        else
        {
          v105 = [v10 key];
          v100 = [v105 flickDirection];

          if (v100 != -1)
          {
            v106 = [v10 key];
            v107 = [(UIKeyboardLayoutStar *)self isMultitapKey:v106];

            if (v107)
            {
              v108 = didLongPress;
              v109 = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
              if (![v109 count])
              {
                v110 = [v10 key];
                if (![v110 forceMultitap])
                {
                  v220 = [(UIKBTree *)self->_keyplane supportsMultitap];

                  if (!v220)
                  {
                    v114 = 0;
                    v113 = 0;
                    self->_multitapCount = 0;
LABEL_232:
                    v221 = [v10 key];
                    multitapKey = self->_multitapKey;
                    self->_multitapKey = v221;

                    if (v114)
                    {
                      v223 = [v10 key];
                      [(UIKeyboardLayoutStar *)self setState:8 forKey:v223];

                      [(UIKeyboardLayoutStar *)self touchMultitapTimer];
                    }

                    goto LABEL_234;
                  }

LABEL_110:
                  v111 = self->_multitapKey;
                  v112 = [v10 key];

                  if (v111 == v112)
                  {
                    v190 = [(UIKBTree *)self->_multitapKey fullRepresentedString];
                    [v190 rangeOfComposedCharacterSequenceAtIndex:self->_multitapCount];
                    v192 = v191;

                    v193 = v192 + self->_multitapCount;
                    v194 = [(UIKBTree *)self->_multitapKey fullRepresentedString];
                    self->_multitapCount = v193 % [v194 length];

                    v114 = 1;
                    v113 = 1;
                  }

                  else
                  {
                    if (self->_multitapKey)
                    {
                      [(UIKeyboardLayoutStar *)self setState:2 forKey:?];
                    }

                    v113 = 0;
                    self->_multitapCount = 0;
                    v114 = 1;
                  }

                  goto LABEL_232;
                }
              }

              goto LABEL_110;
            }

LABEL_126:
            v113 = 0;
            goto LABEL_127;
          }
        }

        if (!didLongPress)
        {
          goto LABEL_275;
        }

        v108 = didLongPress;
        v115 = [v10 key];
        v116 = [v115 interactionType];
        if (v116 == 9)
        {
          v100 = [v10 key];
          if ([v100 displayType] == 13)
          {

            v113 = 0;
LABEL_234:
            LODWORD(didLongPress) = v108;
LABEL_127:
            v122 = [v10 key];
            v268 = didLongPress;
            if ([v122 interactionType] == 41)
            {
            }

            else
            {
              v123 = [v10 key];
              v124 = [v123 interactionType];

              if (v124 != 21)
              {
                v269 = 0;
                goto LABEL_147;
              }
            }

            v125 = +[UIKeyboardImpl activeInstance];
            v126 = [v125 inputDelegate];
            v127 = [v126 _selectedRangeWithinMarkedText];

            v128 = +[UIKeyboardImpl activeInstance];
            v129 = [v128 markedText];

            if (v127 && v127 != 0x7FFFFFFFFFFFFFFFLL && v127 <= [v129 length])
            {
              v146 = [v129 substringToIndex:v127];
              v130 = [v146 _lastGrapheme];
            }

            else
            {
              v130 = [v129 _lastGrapheme];
            }

            if ([v130 length] && (-[UIKeyboardLayoutStar keyWithRepresentedString:](self, "keyWithRepresentedString:", v130), v131 = objc_claimAutoreleasedReturnValue(), v131, v131))
            {
              v132 = [v131 fullRepresentedString];
              v133 = [v132 rangeOfString:v130];
              v135 = v134;
              if ([v132 length])
              {
                [v10 key];
                v136 = v261 = v113;
                v137 = [v136 interactionType];

                v138 = [v132 length];
                v139 = [v132 length];
                if (v137 == 41)
                {
                  v140 = v135;
                }

                else
                {
                  v140 = -v135;
                }

                v141 = v133 + v138;
                v113 = v261;
                v142 = [v132 rangeOfComposedCharacterSequenceAtIndex:(v140 + v141) % v139];
                v144 = [v132 substringWithRange:{v142, v143}];
                v145 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v144 forKey:v131 touchInfo:v10 inputFlags:6];
              }

              else
              {
                v145 = 0;
              }
            }

            else
            {
              v145 = 0;
            }

            v269 = v145;

            v11 = v270;
LABEL_147:
            v147 = v264;
            if (v264 & 2) == 0 || ([v10 maySuppressUpAction])
            {
LABEL_211:
              if ((v147 & 0x20000000) != 0)
              {
                v202 = [v10 key];
                v203 = [v202 representedString];
                [(UIKeyboardLayoutStar *)self switchKeyplane:v203];
              }

              v204 = +[UIKBAnalyticsDispatcher sharedInstance];
              [v204 setAnalyticsShouldCallDidKeyPress:1];

              v205 = [v10 key];
              if ([v205 interactionType] == 4)
              {
                v206 = +[UIKBAnalyticsDispatcher sharedInstance];
                v207 = [v206 analyticsShouldCallDidKeyPressForDeleteKey];

                if (v207)
                {
LABEL_217:
                  v208 = [v271 inputSource];
                  v209 = v269;
                  if (v269)
                  {
                    [v269 setSource:v208];
                    v210 = [v269 _modifiedInput];
                    [(UIKeyboardLayoutStar *)self incrementPunctuationIfNeeded:v210];

                    [v11 skipHitTestForTouchEvent:v274 delayed:1];
                    v276[0] = MEMORY[0x1E69E9820];
                    v276[1] = 3221225472;
                    v276[2] = __85__UIKeyboardLayoutStar_completeRetestForTouchUp_timestamp_interval_executionContext___block_invoke;
                    v276[3] = &unk_1E7114A88;
                    v280 = v208;
                    v277 = v10;
                    v278 = self;
                    v279 = v271;
                    v281 = v147;
                    v282 = a4;
                    v283 = a5;
                    v285 = v268;
                    v284 = prevUpActions;
                    v211 = [v275 childWithContinuation:v276];
                    [v11 _handleKeyEvent:v269 executionContext:v211];

                    v212 = [(UIKeyboardLayoutStar *)self delegate];
                    v213 = objc_opt_respondsToSelector();

                    v12 = v271;
                    if (v213)
                    {
                      v214 = [(UIKeyboardLayoutStar *)self delegate];
                      [v214 handleKeyUIEvent:v269 dismiss:1];
                    }

                    v23 = v274;
                  }

                  else
                  {
                    if ([v10 continuousPathState] != 5)
                    {
                      v215 = +[UIKBAnalyticsDispatcher sharedInstance];
                      v216 = [v215 analyticsShouldCallDidKeyPress];

                      if (v216)
                      {
                        v217 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                        v218 = [v217 _textInputSessionAnalytics];
                        v219 = [v10 key];
                        [v218 didKeyPress:v219 inputSource:v208];
                      }
                    }

                    v23 = v274;
                    [v11 skipHitTestForTouchEvent:v274];
                    [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchUp:v10 withActions:v147 timestamp:v268 interval:prevUpActions didLongPress:v275 prevActions:a4 executionContext:a5];
                    v12 = v271;
                    v209 = 0;
                  }

                  goto LABEL_226;
                }

                v205 = +[UIKBAnalyticsDispatcher sharedInstance];
                [v205 setAnalyticsShouldCallDidKeyPress:0];
              }

              goto LABEL_217;
            }

            v262 = v113;
            v148 = [v10 key];
            v149 = [v148 representedString];

            if (v263 != 16)
            {
              v150 = [v10 key];
              v151 = [v150 displayTypeHint];

              if (v151 != 10)
              {
                v160 = 0;
                v161 = 0;
                goto LABEL_173;
              }
            }

            v152 = [v10 key];
            v153 = [v152 selectedVariantIndex];

            if ((v153 & 0x8000000000000000) != 0)
            {
              v155 = v11;
              v157 = 0;
              v159 = 0;
              v158 = 0;
            }

            else
            {
              v154 = [v272 count];
              if (v263 == 16 && v153 < v154)
              {
                v155 = v11;
                v156 = [v272 objectAtIndex:v153];
                v157 = [(__CFString *)v156 representedString];
                v158 = 0;
                v159 = 1;
              }

              else
              {
                v162 = [v10 key];
                v163 = [v162 secondaryRepresentedStrings];
                v164 = [v163 count];

                if (v153 >= v164)
                {
                  v159 = 0;
                  if (!self->_hasPeekedGestureKey)
                  {
                    v158 = 0;
                    goto LABEL_163;
                  }

                  v155 = v11;
                  v157 = 0;
                  v158 = 0;
                  goto LABEL_161;
                }

                v155 = v11;
                v165 = [v10 key];
                v166 = [v165 displayTypeHint];
                v158 = v166 == 10;
                v159 = v166 != 10;

                v167 = [v10 key];
                v168 = [v167 secondaryRepresentedStrings];
                v157 = [v168 objectAtIndex:v153];

                v169 = [v10 key];
                v170 = [v169 gestureKey];

                if (!v170)
                {
LABEL_162:
                  v149 = v157;
                  v11 = v155;
LABEL_163:
                  v171 = [v10 key];
                  v172 = [v171 displayTypeHint];

                  if (v172 == 10)
                  {
                    if (v153 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      self->_lastInputIsGestureKey = 1;
                    }
                  }

                  else
                  {
                    v173 = [v10 key];
                    [v173 setDisplayTypeHint:0];
                  }

                  if (v159)
                  {
                    v160 = 2;
                  }

                  else
                  {
                    v160 = 0;
                  }

                  if (v158)
                  {
                    v161 = 256;
                  }

                  else
                  {
                    v161 = 0;
                  }

LABEL_173:
                  v174 = +[UIKeyboardPreferencesController sharedPreferencesController];
                  v175 = [v174 preferencesActions];
                  if ([v175 BOOLForPreferenceKey:@"GesturesEnabled"] && v149 && !self->_lastInputIsGestureKey)
                  {
                    v189 = [(UIKBTree *)self->_keyplane intForProperty:@"shift-rendering"];

                    if (v189 != 8)
                    {
                      +[_UIKeyboardUsageTracking normalPunctuationKeyCount];
                    }
                  }

                  else
                  {
                  }

                  v176 = [v10 key];
                  v177 = [v176 displayTypeHint];

                  v147 = v264;
                  if (v177 == 10)
                  {
                    v178 = [v10 key];
                    [v178 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
                  }

                  v179 = [v10 key];
                  v180 = [v179 variantType];

                  if (v180 == 9)
                  {

                    v181 = [v10 key];
                    v182 = [v181 selectedVariantIndex];

                    if (v182 == 2)
                    {
                      if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleUnderline])
                      {
                        goto LABEL_207;
                      }

                      v183 = [v11 delegateAsResponder];
                      v184 = [v183 _responderForEditing];
                      [v184 toggleUnderline:0];
                      goto LABEL_200;
                    }

                    if (v182 == 1)
                    {
                      if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleItalics])
                      {
                        goto LABEL_207;
                      }

                      v183 = [v11 delegateAsResponder];
                      v184 = [v183 _responderForEditing];
                      [v184 toggleItalics:0];
                      goto LABEL_200;
                    }

                    if (!v182 && [(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleBoldface])
                    {
                      v183 = [v11 delegateAsResponder];
                      v184 = [v183 _responderForEditing];
                      [v184 toggleBoldface:0];
LABEL_200:

LABEL_201:
                      goto LABEL_207;
                    }

                    goto LABEL_207;
                  }

                  if (v149 == @"UIButtonBarKeyboardCut.png")
                  {

                    [v11 cutOperation];
                    goto LABEL_207;
                  }

                  if (v149 == @"UIButtonBarKeyboardCopy.png")
                  {

                    [v11 copyOperation];
                    goto LABEL_207;
                  }

                  if (v149 == @"UIButtonBarKeyboardPaste.png")
                  {

                    [v11 pasteOperation];
                    goto LABEL_207;
                  }

                  if (v149 == @"UIButtonBarKeyboardUndo.png" || -[__CFString isEqualToString:](v149, "isEqualToString:", @"undo") && ([v10 key], v185 = objc_claimAutoreleasedReturnValue(), v186 = objc_msgSend(v185, "displayTypeHint"), v185, v186 == 10))
                  {

                    v187 = [v11 delegateAsResponder];
                    v188 = [v187 _responderForEditing];
                    v183 = [v188 undoManager];

                    if ([v183 canUndo])
                    {
                      [v183 undo];
                    }

                    goto LABEL_201;
                  }

                  if ([(__CFString *)v149 isEqualToString:@"redo"])
                  {
                    v224 = [v10 key];
                    v225 = [v224 displayTypeHint];

                    if (v225 == 10)
                    {

                      v226 = [v11 delegateAsResponder];
                      v227 = [v226 _responderForEditing];
                      v183 = [v227 undoManager];

                      if ([v183 canRedo])
                      {
                        [v183 redo];
                      }

                      goto LABEL_201;
                    }
                  }

                  if (!v149)
                  {
LABEL_207:
                    v149 = [v10 key];
                    v195 = [(__CFString *)v149 displayImage];
                    if (v195)
                    {
                      v196 = v195;
                      v197 = [v10 key];
                      v198 = [v197 parentKey];

                      if (!v198)
                      {
                        goto LABEL_211;
                      }

                      v199 = [v10 key];
                      v200 = [v199 parentKey];
                      v149 = [(UIKeyboardLayoutStar *)self viewForKey:v200];

                      v201 = [v10 key];
                      [(__CFString *)v149 didInputSubTree:v201];
                    }

                    goto LABEL_210;
                  }

                  v228 = [v10 key];
                  v229 = [v228 interactionType];

                  if (v229 == 16)
                  {
                    if (![(UIKeyboardLayoutStar *)self shouldSendStringForFlick:v10])
                    {
                      goto LABEL_252;
                    }

                    v230 = [v10 key];
                    v231 = [v10 key];
                    v232 = -[UIKeyboardLayoutStar flickStringForInputKey:direction:](self, "flickStringForInputKey:direction:", v230, [v231 flickDirection]);

                    if (![v232 length])
                    {
LABEL_251:

                      v147 = v264;
LABEL_252:
                      if (v269)
                      {
                        v237 = [v10 key];
                        v238 = [v237 parentKey];

                        if (v238)
                        {
                          v239 = [v10 key];
                          v240 = [v239 parentKey];
                          v241 = [(UIKeyboardLayoutStar *)self viewForKey:v240];

                          v242 = [v10 key];
                          v243 = [v241 didInputSubTree:v242];

                          if (v243 == 1)
                          {
                            v244 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
                            v245 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
                            if (v244)
                            {
                              v245 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
                            }

                            v246 = *(&self->super.super.super.super.isa + *v245);
                            v247 = [v10 key];
                            [v246 addKeyToDelayedDeactivationSet:v247];

                            v248 = [v10 key];
                            [(UIKeyboardLayoutStar *)self presentModalDisplayForKey:v248];
                          }
                        }
                      }

                      [(UIKeyboardLayoutStar *)self _recordKeystrokeStatisticForKeyPress];
LABEL_210:

                      goto LABEL_211;
                    }

                    if (v262)
                    {
                      v233 = 6;
                    }

                    else
                    {
                      v249 = [v10 key];
                      if ([v249 flickDirection] <= -2)
                      {
                        v233 = 2;
                      }

                      else
                      {
                        v233 = 66;
                      }
                    }

                    v250 = [v10 key];
                    v235 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v232 forKey:v250 touchInfo:v10 inputFlags:v233];

                    if (!TIStatisticShouldSample() || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
                    {
LABEL_250:
                      v269 = v235;
                      goto LABEL_251;
                    }

                    v251 = UIKeyboardGetCurrentInputMode();
                    v236 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v251);

                    v252 = [v10 key];
                    v253 = [v252 flickDirection];

                    if ((v253 & 0x8000000000000000) == 0)
                    {
                      v254 = [objc_opt_class() sharedPunctuationCharacterSet];
                      [v232 rangeOfCharacterFromSet:v254];
                      v256 = v255;

                      if (v256)
                      {
                        v257 = TIStatisticGetKeyForTenKeyFlickPunctuation();
                        TIStatisticScalarIncrement();
                      }

                      v258 = TIStatisticGetKeyForTenKeyFlick();
                      TIStatisticScalarIncrement();
                    }

                    if ([(NSString *)self->_keyplaneName length])
                    {
                      v259 = [(UIKBTree *)self->_keyplane componentName];
                      v260 = TIStatisticGetKeyForTenKeyKeyTappedInKeyplane();
                      TIStatisticScalarIncrement();
                    }
                  }

                  else
                  {
                    v232 = [v10 key];
                    v235 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v149 forKey:v232 touchInfo:v10 inputFlags:v161 | v160];
                    v236 = v269;
                  }

                  goto LABEL_250;
                }

                v156 = [v10 key];
                v149 = [(__CFString *)v156 gestureKey];
                v264 = [(UIKeyboardLayoutStar *)self upActionFlagsForKey:v149];
              }

              v149 = v156;
            }

LABEL_161:

            goto LABEL_162;
          }
        }

        v117 = [v10 key];
        v118 = [v117 interactionType];

        if (v116 == 9)
        {
        }

        LODWORD(didLongPress) = v108;
        if (v118 != 5)
        {
LABEL_275:
          if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
          {
            v119 = 1448;
          }

          else
          {
            v119 = 688;
          }

          v120 = *(&self->super.super.super.super.isa + v119);
          v121 = [v10 key];
          [v120 addKeyToDelayedDeactivationSet:v121];
        }

        goto LABEL_126;
      }
    }

    else
    {
    }

    v59 = [v10 key];
    if ([v59 variantType] != 10)
    {
      v60 = [v10 key];
      if ([v60 variantType] != 12)
      {
        v266 = didLongPress;
        v70 = [v10 key];
        v71 = [v70 variantType];

        if (v71 != 13)
        {
          v12 = v271;
          LODWORD(didLongPress) = v266;
          goto LABEL_50;
        }

        v61 = v41 == 0x7FFFFFFFFFFFFFFFLL;
        v12 = v271;
        LODWORD(didLongPress) = v266;
LABEL_34:
        v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
        if (!v61)
        {
          goto LABEL_54;
        }

        v37 = v38 & 0xFFFFFFFFFFFFFFF5;
        if ([(UIKeyboardEmojiKeyDisplayController *)self->_emojiKeyManager userHasSelectedSkinToneEmoji])
        {
          v62 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
          v63 = [v10 key];
          if (![v62 popupKeyUsesCustomKeyContentView:v63])
          {

            goto LABEL_50;
          }

          screenTraits = self->super._screenTraits;
          if (screenTraits)
          {
            isFirstPartyStickers = screenTraits->_isFirstPartyStickers;

            if (isFirstPartyStickers)
            {
              goto LABEL_50;
            }
          }

          else
          {
          }

          keyplaneView = self->_keyplaneView;
          v67 = [v10 key];
          v68 = [(UIKBKeyplaneView *)keyplaneView retestSelectedVariantIndexForKey:v67 atPoint:3 phase:v45, v47];
          v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
          v69 = v68 || self->_selectedVariantIndexChanged;
          self->_selectedVariantIndexChanged = v69;
        }

        else
        {
          v67 = [v10 key];
          [(UIKeyboardLayoutStar *)self presentModalDisplayForKey:v67];
        }

        goto LABEL_54;
      }
    }

    v37 = v38;
    v61 = v41 == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_34;
  }

  [v11 clearLongPressTimer];
  [v10 setDragged:0];
  [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
  [(UIKeyboardLayoutStar *)self clearInfoForTouch:v12];
  [v275 returnExecutionToParent];
LABEL_228:
}

void __85__UIKeyboardLayoutStar_completeRetestForTouchUp_timestamp_interval_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([*(a1 + 32) continuousPathState] != 5)
  {
    v3 = +[UIKBAnalyticsDispatcher sharedInstance];
    v4 = [v3 analyticsShouldCallDidKeyPress];

    if (v4)
    {
      v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v6 = [v5 _textInputSessionAnalytics];
      v7 = [*(a1 + 32) key];
      [v6 didKeyPress:v7 inputSource:*(a1 + 56)];
    }
  }

  if ([*(*(a1 + 40) + 408) keyboardType] == 10 && objc_msgSend(*(a1 + 40), "isAlphabeticPlane"))
  {
    v8 = [*(a1 + 32) key];
    v9 = [v8 name];

    if (([v9 isEqualToString:@"Space-Key"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"Email-Dot-Key"))
    {
      v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v11 = [v10 _textInputSessionAnalytics];
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = [*(a1 + 32) key];
      v15 = [v13 _analyticsMetadataForTouch:v12 keyPressed:v14];
      [v11 didOnWebSearchKeyboardPressKey:v9 withMetadata:v15];
    }
  }

  [*(a1 + 40) completeSendStringActionForTouchUp:*(a1 + 32) withActions:*(a1 + 64) timestamp:*(a1 + 96) interval:*(a1 + 88) didLongPress:v16 prevActions:*(a1 + 72) executionContext:*(a1 + 80)];
}

- (id)_analyticsMetadataForTouch:(id)a3 keyPressed:(id)a4
{
  v37[9] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a3 locationInView:self];
  v8 = v7;
  v10 = v9;
  v36[0] = @"KbHeight";
  v11 = MEMORY[0x1E696AD98];
  [(UIView *)self bounds];
  v35 = [v11 numberWithDouble:v12];
  v37[0] = v35;
  v36[1] = @"KbWidth";
  v13 = MEMORY[0x1E696AD98];
  [(UIView *)self bounds];
  v15 = [v13 numberWithDouble:v14];
  v37[1] = v15;
  v36[2] = @"KeyHeight";
  v16 = MEMORY[0x1E696AD98];
  [v6 frame];
  v18 = [v16 numberWithDouble:v17];
  v37[2] = v18;
  v36[3] = @"KeyWidth";
  v19 = MEMORY[0x1E696AD98];
  [v6 frame];
  v21 = [v19 numberWithDouble:v20];
  v37[3] = v21;
  v36[4] = @"KeyCoordsX";
  v22 = MEMORY[0x1E696AD98];
  [v6 frame];
  v23 = [v22 numberWithDouble:?];
  v37[4] = v23;
  v36[5] = @"KeyCoordsY";
  v24 = MEMORY[0x1E696AD98];
  [v6 frame];
  v26 = v25;

  v27 = [v24 numberWithDouble:v26];
  v37[5] = v27;
  v36[6] = @"TouchUpCoordsX";
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v37[6] = v28;
  v36[7] = @"TouchUpCoordsY";
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v37[7] = v29;
  v36[8] = @"Scale";
  v30 = MEMORY[0x1E696AD98];
  v31 = [(UIKBScreenTraits *)self->super._screenTraits screen];
  [v31 scale];
  v32 = [v30 numberWithDouble:?];
  v37[8] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:9];

  return v33;
}

- (void)presentModalDisplayForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 parentKey];
  v6 = [(UIKeyboardLayoutStar *)self viewForKey:v5];

  v7 = [UIView alloc];
  [(UIView *)self bounds];
  v8 = [(UIView *)v7 initWithFrame:?];
  [(UIKeyboardLayoutStar *)self setModalDisplayView:v8];

  v9 = [(UIKeyboardLayoutStar *)self modalDisplayView];
  [(UIView *)self addSubview:v9];

  [(TUIKeyplaneView *)self->_liveKeyplaneView setHidden:1];
  [(UIView *)self->_keyplaneView setHidden:1];
  v10 = [(UIKeyboardLayoutStar *)self viewForKey:v4];

  if (v10)
  {
    v11 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__UIKeyboardLayoutStar_presentModalDisplayForKey___block_invoke;
    v16 = &unk_1E70F35B8;
    v17 = self;
    v12 = v10;
    v18 = v12;
    [v6 willDisplayModalActionView:v11 withSubTreeKeyView:v12 completion:&v13];

    [v12 setHidden:{1, v13, v14, v15, v16, v17}];
  }
}

uint64_t __50__UIKeyboardLayoutStar_presentModalDisplayForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modalDisplayView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setModalDisplayView:0];
  if ([*(a1 + 32) useCrescendoLayout])
  {
    [*(*(a1 + 32) + 1448) setHidden:0];
  }

  [*(*(a1 + 32) + 688) setHidden:0];
  v3 = *(a1 + 40);

  return [v3 setHidden:0];
}

- (BOOL)shouldYieldToControlCenterForFlickWithInitialPoint:(CGPoint)a3 finalPoint:(CGPoint)a4
{
  y = a4.y;
  v5 = a3.y;
  v7 = [UIPeripheralHost sharedInstance:a3.x];
  v8 = [v7 _isCoordinatingWithSystemGestures];

  if (!v8)
  {
    return 0;
  }

  [(UIView *)self bounds];
  Height = CGRectGetHeight(v14);
  v10 = +[UIPeripheralHost sharedInstance];
  [v10 ambiguousControlCenterActivationMargin];
  v12 = v11;

  return y < Height - v12 && v5 > Height + -30.0;
}

- (BOOL)shouldSendStringForFlick:(id)a3
{
  v4 = a3;
  [v4 initialPoint];
  v6 = v5;
  v8 = v7;
  v9 = [v4 touch];
  [v9 locationInView:self];
  v11 = v10;
  v13 = v12;

  v14 = [v4 key];

  if ([v14 state] == 16)
  {
    v15 = isFlickOutOfBounds(v6, v8, v11, v13);

    if (v15)
    {
      return 0;
    }
  }

  else
  {
  }

  return ![(UIKeyboardLayoutStar *)self shouldYieldToControlCenterForFlickWithInitialPoint:v6 finalPoint:v8, v11, v13];
}

- (void)completeSendStringActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9
{
  v16 = a3;
  v17 = a9;
  v18 = +[UIKeyboardImpl activeInstance];
  v19 = "_UIMonochromaticTreatment";
  if ([v16 dragged])
  {
    v20 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (v20)
    {
      goto LABEL_6;
    }
  }

  if ((a4 & 0x20) != 0)
  {
    v21 = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    [(UIKeyboardLayoutStar *)self setKeyplaneName:v21];

    self->_preferredTrackingChangeCount = [v18 changeCount];
  }

  if ((a4 & 0x1000) == 0)
  {
LABEL_6:
    v22 = 0;
    v23 = 0;
    goto LABEL_20;
  }

  v24 = +[UIInputSwitcherView sharedInstance];
  v25 = [v16 key];
  v26 = [v25 displayType] == 21 && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") == 122 && -[UITextInputTraits returnKeyType](self->super._inputTraits, "returnKeyType") == 9;
  v57 = v25;
  v59 = v24;
  if ([(UIKeyboardLayoutStar *)self stateForKey:v25]!= 4 || [(NSMutableDictionary *)self->_extendedTouchInfoMap count]!= 1)
  {
    v23 = 0;
    self->_prevTouchUpTime = a5 - a6;
    goto LABEL_17;
  }

  if ([v24 mode] != 1)
  {
    v39 = [v16 key];
    v56 = self;
    if ([(UIKeyboardLayoutStar *)self isKeyScriptSwitchKey:v39]|| [(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
    {
    }

    else
    {
      v45 = [v16 key];
      v46 = self;
      v47 = v45;
      v54 = [(UIKeyboardLayoutStar *)v46 isLongPressedKey:v45];

      if (v54)
      {
        v23 = 0;
        self = v56;
        goto LABEL_17;
      }
    }

    HIDWORD(v52) = v26;
    v40 = +[UIKeyboardInputModeController sharedInputModeController];
    v41 = [v16 key];
    v42 = [v41 representedString];
    v53 = [v40 identifierIsValidSystemInputMode:v42];

    if (v53)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_2;
      v80[3] = &unk_1E70FD1B8;
      v81 = v16;
      v82 = v18;
      v23 = _Block_copy(v80);

      self = v56;
      goto LABEL_17;
    }

    v43 = [v16 key];
    v44 = [v43 representedString];
    if ([v44 isEqualToString:@"ASCIICapable"])
    {
    }

    else
    {
      v48 = [v16 key];
      [v48 representedString];
      v49 = v55 = v43;
      LODWORD(v52) = [v49 isEqualToString:@"NonASCII"];

      if (!v52)
      {
        self = v56;
        if (__PAIR64__(HIDWORD(v52), 0) == [(UIKeyboardLayoutStar *)v56 globeKeyDisplaysAsEmojiKey])
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_6;
          v69[3] = &unk_1E70FD1B8;
          v70 = v16;
          v71 = v18;
          v23 = _Block_copy(v69);

          v27 = v70;
        }

        else
        {
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_4;
          v72[3] = &unk_1E70FD0F0;
          v73 = v16;
          v75 = BYTE4(v52);
          v74 = v18;
          v23 = _Block_copy(v72);

          v27 = v73;
        }

        goto LABEL_15;
      }
    }

    self = v56;
    v50 = [(UIKeyboardLayoutStar *)v56 inputModeToMergeCapsLockKey];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_3;
    v76[3] = &unk_1E70FD208;
    v77 = v16;
    v78 = v18;
    v79 = v50;
    v51 = v50;
    v23 = _Block_copy(v76);

    goto LABEL_17;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke;
  aBlock[3] = &unk_1E70FD208;
  v84 = v16;
  v85 = v18;
  v86 = v24;
  v23 = _Block_copy(aBlock);

  v27 = v84;
LABEL_15:

LABEL_17:
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_7;
  v68[3] = &unk_1E70F3590;
  v68[4] = self;
  v22 = _Block_copy(v68);
  if (!self->_lastInputMode)
  {
    v28 = UIKeyboardGetCurrentInputMode();
    lastInputMode = self->_lastInputMode;
    self->_lastInputMode = v28;
  }

  v19 = "_UIMonochromaticTreatment";
LABEL_20:
  if (self->_prevUpActions != 4104)
  {
    v58 = v23;
    v30 = self->_lastInputMode;
    v31 = UIKeyboardGetCurrentInputMode();
    LODWORD(v30) = [(NSString *)v30 isEqualToString:v31];

    if (v30)
    {
      v32 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    v33 = self->_lastInputMode;
    self->_lastInputMode = 0;

    v23 = v58;
    v19 = "_UIMonochromaticTreatment";
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = *(v19 + 235);
  v60[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_8;
  v60[3] = &unk_1E7114AB0;
  v34 = v22;
  v60[4] = self;
  v61 = v16;
  v62 = v34;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v67 = a7;
  v66 = a8;
  v35 = v16;
  v36 = _Block_copy(v60);
  v37 = v36;
  if (v23)
  {
    v38 = [v17 childWithContinuation:v36];
    v23[2](v23, v38);
  }

  else
  {
    (*(v36 + 2))(v36, v17);
  }
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) maySuppressUpAction])
  {
    [v5 returnExecutionToParent];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) selectedInputMode];
    [v3 setInputMode:v4 userInitiated:1 updateIndicator:0 executionContext:v5];
  }
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([*(a1 + 32) maySuppressUpAction])
  {
    [v12 returnExecutionToParent];
  }

  else
  {
    v3 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentInputMode];
    [v3 updateLastUsedInputMode:v5];

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) key];
    v8 = [v7 representedString];
    [v6 setInputMode:v8 userInitiated:1 updateIndicator:0 executionContext:v12];

    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    [v9 updateLastUsedInputMode:v11];
  }
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([*(a1 + 32) maySuppressUpAction])
  {
    [v12 returnExecutionToParent];
  }

  else
  {
    v3 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentInputMode];
    [v3 updateLastUsedInputMode:v5];

    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) identifier];
    [v6 setInputMode:v7 userInitiated:1 updateIndicator:1 executionContext:v12];

    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    [v8 setLastInputModeSwitchTriggeredByASCIIToggle:1];

    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    [v9 updateLastUsedInputMode:v11];
  }
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v17 = a2;
  if ([*(a1 + 32) maySuppressUpAction])
  {
    [v17 returnExecutionToParent];
  }

  else
  {
    v3 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentInputMode];
    [v3 updateLastUsedInputMode:v5];

    if (*(a1 + 48) == 1)
    {
      v6 = [*(a1 + 40) inputDelegateManager];
      v7 = [v6 delegateRespectingForwardingDelegate:0];

      if (v7)
      {
        [*(a1 + 40) selectionWillChange:v7];
        [*(a1 + 40) selectionDidChange:v7];
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"UITextInputDidSwitchFromEmojiSearchNotification" object:0 userInfo:0];

      [v17 returnExecutionToParent];
    }

    else
    {
      v9 = +[UIKeyboardInputModeController sharedInputModeController];
      v10 = [v9 activeInputModeIdentifiers];
      v11 = [v10 indexOfObjectPassingTest:&__block_literal_global_1284_0];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = @"emoji";
      }

      else
      {
        v12 = +[UIKeyboardInputModeController sharedInputModeController];
        v13 = [v12 activeInputModeIdentifiers];
        v7 = [v13 objectAtIndex:v11];
      }

      v14 = +[UIKeyboardInputModeController sharedInputModeController];
      v15 = [v14 currentInputMode];
      v16 = +[UIKeyboardInputModeController sharedInputModeController];
      [v16 setInputModeThatInvokeEmoji:v15];

      [*(a1 + 40) setInputMode:v7 userInitiated:1 updateIndicator:0 executionContext:v17];
    }
  }
}

uint64_t __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_5()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = [v0 isEqualToString:@"emoji"];

  return v1;
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) maySuppressUpAction])
  {
    [v7 returnExecutionToParent];
  }

  else
  {
    v3 = +[UIKeyboardInputModeController sharedInputModeController];
    v4 = [v3 inputModeThatInvokeEmoji];

    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = [v4 identifier];
      [v5 setInputMode:v6 userInitiated:1 updateIndicator:0 executionContext:v7];
    }

    else
    {
      [v5 setInputModeToNextInPreferredListWithExecutionContext:v7];
    }
  }
}

void __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  [*(a1 + 32) continueFromInternationalActionForTouchUp:*(a1 + 40) withActions:*(a1 + 56) timestamp:*(a1 + 88) interval:*(a1 + 80) didLongPress:v4 prevActions:*(a1 + 64) executionContext:*(a1 + 72)];
}

- (void)continueFromInternationalActionForTouchUp:(id)a3 withActions:(unint64_t)a4 timestamp:(double)a5 interval:(double)a6 didLongPress:(BOOL)a7 prevActions:(unint64_t)a8 executionContext:(id)a9
{
  v11 = a8;
  v12 = a7;
  v66 = a3;
  v17 = a9;
  v18 = +[UIKeyboardImpl activeInstance];
  v19 = [v66 touch];
  if ([v66 dragged])
  {
    v20 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (v20)
    {
      goto LABEL_25;
    }
  }

  if ((a4 & 0x2000000) != 0 || (v21 = [(UIKeyboardLayoutStar *)self isHandwritingPlane], (a4 & 0x80) != 0) && v21)
  {
    v22 = +[UIKeyboardSplitControlMenu activeInstance];
    v23 = v22;
    if (a6 > 0.5 || (v11 & 0x2000000) != 0)
    {
      if (v12 && [v22 isVisible])
      {
        [v19 locationInView:v23];
        [v23 selectItemAtPoint:?];
      }

      else
      {
        v34 = [v23 isVisible];
        if ((a4 & 0x2000000) != 0 && (v34 & 1) == 0 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
        {
          if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && [(UIKeyboardLayoutStar *)self useDismissForMessagesWriteboard])
          {
            [v18 lookUpResponderChainForCustomInputView];
          }

          else
          {
            [v18 dismissKeyboard];
          }
        }
      }
    }

    else
    {
      self->_prevTouchUpTime = a5 - a6;
    }

    [v23 hide];
    goto LABEL_10;
  }

  v23 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
  if (v23)
  {
    v9 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    v35 = [v9 isEqualToString:self->_keyplaneName];
    if ((a4 & 0x800000000) == 0 || (v35 & 1) == 0)
    {

LABEL_10:
      goto LABEL_11;
    }
  }

  else if ((a4 & 0x800000000) == 0)
  {
    goto LABEL_11;
  }

  v55 = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  if (v23)
  {
  }

  if (v55 == 126)
  {
    [v18 lookUpResponderChainForCustomInputView];
  }

LABEL_11:
  if ((a4 & 0x8000000) == 0 || a6 <= 0.5 && (v11 & 0x8000000) == 0 || ([v66 key], v24 = objc_claimAutoreleasedReturnValue(), v25 = -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", v24), v24, v25 != 4))
  {
LABEL_18:
    if ((a4 & 0x10000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

  if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && [(UIKeyboardLayoutStar *)self useUndoForMessagesWriteboard])
  {
    [v18 lookUpResponderChainForCustomInputView];
    goto LABEL_18;
  }

  v51 = +[UIWindow _applicationKeyWindow];
  v52 = [v51 firstResponder];
  v9 = [v52 undoManager];
  [v9 undo];

  +[_UIKeyboardUsageTracking undoKeyCount];
  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"SWKeyboard"];
  [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
  if ((a4 & 0x10000000) == 0)
  {
LABEL_19:
    if ((a4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_79;
  }

LABEL_78:
  v53 = +[UIWindow _applicationKeyWindow];
  v54 = [v53 firstResponder];
  v9 = [v54 undoManager];
  [v9 redo];

  +[_UIKeyboardUsageTracking redoKeyCount];
  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Redo" trigger:@"SWKeyboard"];
  [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
  if ((a4 & 0x2000) == 0)
  {
LABEL_20:
    if ((a4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v18 revealHiddenCandidates];
  if ((a4 & 0x4000) == 0)
  {
LABEL_21:
    if ((a4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v18 showNextCandidates];
  if ((a4 & 0x200000) == 0)
  {
LABEL_22:
    if ((a4 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_82:
    [v18 acceptAutocorrectionAndEndComposition];
    if ((a4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_81:
  [v18 showPreviousCandidate];
  if ((a4 & 0x1000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_23:
  if ((a4 & 0x4000000) != 0)
  {
LABEL_24:
    v26 = [v66 key];
    v27 = [v26 representedString];
    [(UIKeyboardLayoutStar *)self setLayoutTag:v27];

    [(UIKeyboardLayoutStar *)self updateKeyCentroids];
  }

LABEL_25:
  if (a4 & 0x100) == 0 || -[UIKBTree supportsType:](self->_keyplane, "supportsType:", -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")) || ([v66 key], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "representedString"), v29 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v29, "isEqualToString:", @"-"), v29, v28, (v9))
  {
    v30 = 1;
    if ((a4 & 0x400) == 0)
    {
      goto LABEL_37;
    }

LABEL_29:
    if (self->_shift)
    {
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    else if ((v30 & self->_autoshift & 1) == 0)
    {
      goto LABEL_37;
    }

    [v18 setShift:0];
    [(UIKeyboardLayoutStar *)self setShift:0];
    [(UIKeyboardLayoutStar *)self setAutoshift:0];
    goto LABEL_37;
  }

  v48 = [v66 key];
  v49 = [v48 representedString];
  v9 = [v49 _isSpaceOrReturn];

  if (v9)
  {
    ++self->_preferredTrackingChangeCount;
  }

  if ([v18 changeCount] > self->_preferredTrackingChangeCount)
  {
    v50 = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    [(UIKeyboardLayoutStar *)self setKeyplaneName:v50];

    [(UIKeyboardLayoutStar *)self setShift:[(UIKBTree *)self->_keyplane isShiftKeyplane]];
  }

  v30 = 0;
  if ((a4 & 0x400) != 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  if ((a4 & 0x400000) != 0)
  {
    [v18 toggleShift];
    [v18 setShiftPreventAutoshift:1];
    -[UIKeyboardLayoutStar setShift:](self, "setShift:", [v18 isShifted]);
    [(UIKeyboardLayoutStar *)self setAutoshift:0];
  }

  else if ((a4 & 0x10) != 0)
  {
    [(UIKeyboardLayoutStar *)self upActionShift];
  }

  if (self->_revertKeyplaneAfterTouch)
  {
    v31 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (v31)
    {
      v32 = v31;
      v33 = [v66 key];
      if ([v33 modifiesKeyplane])
      {
      }

      else
      {
        v9 = [v66 slidOffKey];

        if (!v9)
        {
          goto LABEL_62;
        }
      }

      v36 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:v36];

      v37 = [(UIKBTree *)self->_keyplane isShiftKeyplane];
      if (v37 != [v18 isShifted] || self->_shift != v37)
      {
        [v18 setShift:v37];
        [v18 setShiftPreventAutoshift:1];
        [(UIKeyboardLayoutStar *)self setShift:v37];
      }

      v38 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];

      if (v38)
      {
        v39 = [(UIKBTree *)self->_keyplane name];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:v39];
      }

      self->_revertKeyplaneAfterTouch = 0;
    }
  }

LABEL_62:
  v40 = [v66 key];
  if ((a4 & 0x40000000) != 0)
  {
    v9 = 0x1E70E9000uLL;
    if (+[UIDictationController viewMode]== 1)
    {
      if (a6 > 3.0 && v12)
      {
        v41 = +[UIKeyboardDictationMenu activeInstance];
        [v41 hide];
LABEL_90:
      }
    }

    else
    {
      v42 = +[UIInputSwitcherView activeInstance];
      v43 = [v42 isVisible];

      if ((v43 & 1) == 0)
      {
        if (!+[UIDictationController isRunning])
        {
          v56 = +[UIDictationController specificReasonTypeMicButtonOnKeyboard];
          v57 = +[UIDictationController sharedInstance];
          [v57 setReasonType:v56];

          v41 = +[UIDictationController sharedInstance];
          [v41 switchToDictationInputModeWithTouch:0];
          goto LABEL_90;
        }

        v44 = +[UIDictationController sharedInstance];
        [v44 setReasonType:1];

        v45 = +[UIDictationController sharedInstance];
        [v45 stopDictation];

        v46 = +[UIKeyboardImpl activeInstance];
        v47 = [v46 isDictationPopoverPresented];

        if (v47)
        {
          v41 = +[UIKeyboardImpl activeInstance];
          [v41 dismissDictationPopover];
          goto LABEL_90;
        }
      }
    }
  }

  if (!self->_multitapKey && [v40 state] == 20)
  {
    [(UIKeyboardLayoutStar *)self setMultitapReverseKeyState];
  }

  if ((a4 & 0x200) != 0)
  {
    [(UIKeyboardLayoutStar *)self multitapExpired];
  }

  [(UIKeyboardLayoutStar *)self handleKeyboardMenusForTouch:v66];
  if ((a4 & 0x1000000000) != 0)
  {
    [v18 generateCandidatesWithOptions:4];
  }

  [v18 clearLongPressTimer];
  [v66 setInitialDragPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v66 setDragged:0];
  if (!self->_revertKeyplaneAfterTouch)
  {
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
  }

  v58 = [(UIKeyboardLayoutStar *)self activeKey];
  v59 = [v58 parentKey];
  if (v59 || (-[UIKeyboardLayoutStar activeKey](self, "activeKey"), v9 = objc_claimAutoreleasedReturnValue(), ([v9 hasSemiStickyVariant] & 1) != 0))
  {
    v60 = [(UIKeyboardLayoutStar *)self activeKey];
    v61 = [v60 parentKey];
    v62 = (v61 != 0) & (a4 >> 3);

    if (v59)
    {

      if (!v62)
      {
        goto LABEL_109;
      }
    }

    else
    {

      if ((v62 & 1) == 0)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
  }

  [(UIKeyboardLayoutStar *)self setActiveKey:0];
LABEL_109:
  self->_prevTouchUpFinishedTime = CFAbsoluteTimeGetCurrent();
  [(UIKeyboardLayoutStar *)self clearInfoForTouch:v19];
  [v18 deleteWordLastDelete];
  if (v63 > 0.0 && ([v66 key], v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "interactionType"), v64, v65 == 4))
  {
    [v18 setDeleteWordLastDelete:0.0];
    [v18 handleDeleteWithExecutionContext:v17];
  }

  else
  {
    [v17 returnExecutionToParent];
  }
}

- (void)touchCancelled:(id)a3 forResting:(BOOL)a4 executionContext:(id)a5
{
  v6 = a4;
  v37 = a3;
  v8 = a5;
  v9 = [(UIKeyboardLayoutStar *)self infoForTouch:v37];
  [v9 addTouch:v37];
  v10 = +[UIKeyboardImpl activeInstance];
  if ([v9 initialKeyState] != 16 || !_os_feature_enabled_impl() || (objc_msgSend(v9, "key"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "variantType"), v11, (v12 - 10) >= 4))
  {
    v13 = [v9 key];
    if (v13)
    {
      v14 = v13;
      v15 = [v9 key];
      v16 = [v15 interactionType];

      if (v16 != 18)
      {
        v17 = [v9 key];
        [(UIKeyboardLayoutStar *)self setState:2 forKey:v17];
      }
    }

    v18 = [v9 key];
    v19 = [v18 interactionType];

    if (v19 == 9)
    {
      v20 = +[UIInputSwitcherView activeInstance];
      [v20 hide];
    }

    v21 = [v9 key];
    v22 = [v21 interactionType];

    if (v22 == 4)
    {
      [v10 stopAutoDelete];
    }

    [v10 clearLongPressTimer];
    if (self->_keyboardImageViewIsDim)
    {
      [(UIKeyboardLayoutStar *)self setKeyboardDim:0];
    }

    v23 = [v9 key];
    if ([v23 interactionType] == 6)
    {
    }

    else
    {
      v24 = [v9 key];
      v25 = [v24 interactionType];

      if (v25 != 3)
      {
        [(UIKeyboardLayoutStar *)self clearHandwritingStrokesIfNeededAndNotify:0];
      }
    }

    [(UIKeyboardLayoutStar *)self clearInfoForTouch:v37 forResting:v6];
    v26 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (v26)
    {
      if ([v37 tapCount] == 1 && self->_prevTouchMoreKeyTime && (objc_msgSend(MEMORY[0x1E695DF00], "date"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "timeIntervalSinceDate:", self->_prevTouchMoreKeyTime), v29 = v28, v27, v29 <= 0.25))
      {
        v36 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:v36];
      }

      else
      {
        [(UIKeyboardLayoutStar *)self updateShiftKeyState];
      }
    }

    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
    [(UIKeyboardLayoutStar *)self handleDismissFlickView:0];
    if (+[UIDictationController isRunning])
    {
      v30 = +[UIKeyboardInputMode dictationInputMode];
      v31 = [v30 usingTypeAndTalk];

      if ((v31 & 1) == 0)
      {
        v32 = +[UIDictationController sharedInstance];
        [v32 cancelDictation];

        v33 = +[UIKeyboardImpl activeInstance];
        v34 = [v33 isDictationPopoverPresented];

        if (v34)
        {
          v35 = +[UIKeyboardImpl activeInstance];
          [v35 dismissDictationPopover];
        }
      }
    }

    [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
  }

  [v8 returnExecutionToParent];
}

- (void)touchChanged:(id)a3 executionContext:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(UIKeyboardLayoutStar *)self infoForTouch:v13];
  v8 = [v7 key];
  v9 = [v8 interactionType];

  if (v9 == 4)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    v11 = [v13 touchUUID];
    v12 = [UIKBTouchState touchForTouchUUID:v11];
    [v12 force];
    [v10 adjustAutoDeleteTimerForForce:?];
  }

  [v6 returnExecutionToParent];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rightSwipeRecognizer == v4 || self->_leftSwipeRecognizer == v4)
  {
    v7 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Space-Key"];
    v8 = [(UIKeyboardLayoutStar *)self viewForKey:v7];

    if (v8)
    {
      [(UISwipeGestureRecognizer *)v5 locationInView:v8];
      v6 = [v8 pointInside:0 withEvent:?];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  if (self->_upSwipeRecognizer == v4)
  {
    if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI])
    {
      v6 = 0;
      goto LABEL_12;
    }

    v8 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:[(UISwipeGestureRecognizer *)self->_upSwipeRecognizer startPoint]];
    v6 = v8 != 0;
LABEL_11:

    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_upSwipeRecognizer == a3)
  {
    v6 = a4;
    v7 = [v6 view];
    [v6 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:v9, v11];
    v4 = [v12 behavesAsShiftKey] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_pinchGestureRecognizer == a3)
  {
    [(UIKeyboardLayoutStar *)self pinchHandler:?];
  }
}

- (void)uninstallGestureRecognizers
{
  upSwipeRecognizer = self->_upSwipeRecognizer;
  if (upSwipeRecognizer)
  {
    v4 = [(UIGestureRecognizer *)upSwipeRecognizer view];

    if (v4)
    {
      [(UIView *)self removeGestureRecognizer:self->_upSwipeRecognizer];
    }

    v5 = self->_upSwipeRecognizer;
    self->_upSwipeRecognizer = 0;
  }

  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    v7 = [(UIGestureRecognizer *)pinchGestureRecognizer view];

    if (v7)
    {
      [(UIView *)self removeGestureRecognizer:self->_pinchGestureRecognizer];
    }

    v8 = self->_pinchGestureRecognizer;
    self->_pinchGestureRecognizer = 0;
  }

  rightSwipeRecognizer = self->_rightSwipeRecognizer;
  if (rightSwipeRecognizer)
  {
    v10 = [(UIGestureRecognizer *)rightSwipeRecognizer view];

    if (v10)
    {
      [(UIView *)self removeGestureRecognizer:self->_rightSwipeRecognizer];
    }

    v11 = self->_rightSwipeRecognizer;
    self->_rightSwipeRecognizer = 0;
  }

  leftSwipeRecognizer = self->_leftSwipeRecognizer;
  if (leftSwipeRecognizer)
  {
    v13 = [(UIGestureRecognizer *)leftSwipeRecognizer view];

    if (v13)
    {
      [(UIView *)self removeGestureRecognizer:self->_leftSwipeRecognizer];
    }

    v14 = self->_leftSwipeRecognizer;
    self->_leftSwipeRecognizer = 0;
  }

  resizingKeyplaneCoordinator = self->_resizingKeyplaneCoordinator;

  [(UIKBResizingKeyplaneCoordinator *)resizingKeyplaneCoordinator uninstallGestureRecognizers];
}

- (void)swipeDetected:(id)a3
{
  if (([a3 direction] & 4) != 0)
  {
    v4 = [(UIKeyboardLayoutStar *)self activeKey];
    v5 = [v4 interactionType];

    if (v5 != 6)
    {
      self->_swipeDetected = 1;
      v6 = +[UIKeyboardImpl activeInstance];
      [v6 longPressAction];

      self->_swipeDetected = 0;
    }
  }
}

- (id)infoForTouchUUID:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)infoForTouch:(id)a3
{
  v4 = [a3 touchUUID];
  v5 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v4];

  return v5;
}

- (id)generateInfoForTouch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIKeyboardTouchInfo);
  [(UIKeyboardTouchInfo *)v5 addTouch:v4];
  [(UIKeyboardTouchInfo *)v5 setStage:3];
  v6 = [v4 touchUUID];

  if (v6)
  {
    extendedTouchInfoMap = self->_extendedTouchInfoMap;
    v8 = [v4 touchUUID];
    [(NSMutableDictionary *)extendedTouchInfoMap setObject:v5 forKey:v8];
  }

  return v5;
}

- (void)cancelTouchIfNecessaryForInfo:(id)a3 forResting:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 key];
    v9 = [v8 interactionType];

    if (v9 != 4)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      if ([v10 canHandleKeyHitTest])
      {
        [v10 clearLongPressTimer];
        if ([v7 stage])
        {
          v11 = [v7 stage] == 1;
        }

        else
        {
          v11 = 1;
        }

        if ([(UIKeyboardLayoutStar *)self isDynamicLayout])
        {
          v12 = [v7 key];
          v13 = [v12 displayTypeHint];

          if (v13 == 10 && v11)
          {
            [(UIKeyboardLayoutStar *)self resetPanAlternativesForEndedTouch:v7];
          }
        }

        if (qword_1ED493290 != -1)
        {
          dispatch_once(&qword_1ED493290, &__block_literal_global_1295);
        }

        v14 = [v10 taskQueue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65__UIKeyboardLayoutStar_cancelTouchIfNecessaryForInfo_forResting___block_invoke_3;
        v15[3] = &unk_1E70FD140;
        v19 = v11;
        v16 = v7;
        v17 = self;
        v20 = a4;
        v18 = v10;
        [v14 addTask:v15 breadcrumb:qword_1ED493288];
      }
    }
  }
}

void __65__UIKeyboardLayoutStar_cancelTouchIfNecessaryForInfo_forResting___block_invoke()
{
  v0 = [&__block_literal_global_1297 copy];
  v1 = qword_1ED493288;
  qword_1ED493288 = v0;
}

void __65__UIKeyboardLayoutStar_cancelTouchIfNecessaryForInfo_forResting___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = a2;
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setStage:3];
    v3 = [*(a1 + 32) touch];
    [v3 locationInView:*(a1 + 40)];
    v5 = v4;
    v7 = v6;
    [v3 timestamp];
    v9 = v8;
    v10 = MEMORY[0x1E69D9668];
    if (*(a1 + 57))
    {
      v11 = 4;
    }

    else
    {
      v11 = 3;
    }

    [v3 pathMajorRadius];
    v13 = [v10 touchEventWithStage:v11 location:objc_msgSend(v3 radius:"pathIndex") timestamp:objc_msgSend(*(a1 + 32) pathIndex:"fingerID") fingerID:-1 forcedKeyCode:{v5, v7, v12, v9}];
    [*(a1 + 48) skipHitTestForTouchEvent:v13];
  }

  [v14 returnExecutionToParent];
}

- (void)clearInfoForTouch:(id)a3 forResting:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(UIKeyboardLayoutStar *)self infoForTouch:?];
  [(UIKeyboardLayoutStar *)self cancelTouchIfNecessaryForInfo:v6 forResting:v4];
  if (!v4)
  {
    v7 = [v10 touchUUID];

    if (v7)
    {
      extendedTouchInfoMap = self->_extendedTouchInfoMap;
      v9 = [v10 touchUUID];
      [(NSMutableDictionary *)extendedTouchInfoMap removeObjectForKey:v9];
    }
  }
}

- (id)touchInfoForKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:*(*(&v13 + 1) + 8 * v9)];
      v11 = [v10 key];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (BOOL)keyHasAccentedVariants:(id)a3
{
  v4 = a3;
  if (-[UIKBTree visualStyle](self->_keyboard, "visualStyle") == 301 || ([v4 name], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"NumberPad"), v5, (v6 & 1) != 0) || -[UIKBTree visualStyle](self->_keyboard, "visualStyle") == 101)
  {
    v7 = 0;
  }

  else
  {
    if (!self->_accentInfo)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      accentInfo = self->_accentInfo;
      self->_accentInfo = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      hasAccents = self->_hasAccents;
      self->_hasAccents = v11;
    }

    v13 = [v4 representedString];
    if ([v4 variantType] == 8)
    {
      v14 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v13];

      v13 = v14;
    }

    if ([v4 displayType] == 7)
    {
      v15 = [v4 secondaryRepresentedStrings];
      v16 = [v15 count];

      if (v16)
      {
        v17 = [v4 secondaryRepresentedStrings];
        v18 = [v17 firstObject];
        v19 = [v13 stringByAppendingString:v18];

        v13 = v19;
      }
    }

    if (v13 && ([(NSMutableSet *)self->_accentInfo containsObject:v13]& 1) == 0)
    {
      [(NSMutableSet *)self->_accentInfo addObject:v13];
      v20 = UIKeyboardGetCurrentInputMode();
      v21 = [(UIKeyboardLayout *)self getRomanAccentVariantsForString:v13 inputMode:v20 keyboardVariantIndludes:7];

      v22 = [v21 objectForKey:@"Strings"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__UIKeyboardLayoutStar_keyHasAccentedVariants___block_invoke;
      v25[3] = &unk_1E710DCF0;
      v25[4] = self;
      v23 = [v22 indexesOfObjectsPassingTest:v25];
      v24 = [v22 objectsAtIndexes:v23];

      if ([v24 count])
      {
        [(NSMutableSet *)self->_hasAccents addObject:v13];
      }
    }

    v7 = [(NSMutableSet *)self->_hasAccents containsObject:v13];
  }

  return v7;
}

- (unint64_t)downActionFlagsForKey:(id)a3
{
  v4 = a3;
  if (![v4 visible] || -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", v4) == 1)
  {
    v5 = 0;
    goto LABEL_4;
  }

  v7 = [v4 interactionType];
  v8 = [v4 variantType];
  if (v7 == 4)
  {
    if (self->_deleteTarget && self->_deleteLongAction)
    {
      v5 = 1048773;
    }

    else
    {
      v5 = 69;
    }

    goto LABEL_58;
  }

  if (v7 == 13)
  {
    if (!self->_returnTarget)
    {
      goto LABEL_14;
    }

    v9 = 856;
    goto LABEL_12;
  }

  if (v7 != 15)
  {
    if ((v7 - 1) > 1)
    {
      v13 = v7 - 3;
      v5 = 5;
      switch(v13)
      {
        case 0:
        case 35:
          v5 = 128;
          break;
        case 2:
          if (+[UIDictationController viewMode]== 1)
          {
            v5 = 1073741957;
          }

          else
          {
            v5 = 1073741829;
          }

          break;
        case 3:
          if (+[UIKeyboardImpl rivenTranslationPreference])
          {
            v5 = 133;
          }

          else
          {
            v5 = 5;
          }

          break;
        case 4:
          v5 = 1048581;
          break;
        case 6:
          v5 = 4229;
          break;
        case 7:
          v5 = 536870916;
          break;
        case 8:
          v5 = 36;
          break;
        case 9:
        case 13:
        case 14:
        case 17:
        case 18:
        case 21:
        case 22:
        case 23:
        case 24:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 37:
        case 38:
          goto LABEL_58;
        case 11:
          v5 = 20;
          break;
        case 25:
        case 26:
        case 27:
          v5 = 4;
          break;
        case 41:
          v5 = 1;
          break;
        default:
          v5 = 0;
          break;
      }

      goto LABEL_58;
    }

    v10 = v8;
    if (([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 0x17 || UIKeyboardCurrentInputModeIsMultiscript())
    {
      v11 = [v4 displayType];
      if (v10 != 3 && v11 == 7)
      {
        v5 = 32901;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 5;
    }

    if (v10 <= 7)
    {
      if (v10 <= 3)
      {
        if (v10 == 1)
        {
          v5 = 32901;
          goto LABEL_53;
        }

        if (v10 == 3)
        {
          v14 = 262272;
          goto LABEL_52;
        }

        goto LABEL_69;
      }

      if (v10 == 4)
      {
        v14 = 131200;
        goto LABEL_52;
      }

      if (v10 != 5)
      {
        if (v10 == 7)
        {
          v14 = 65664;
LABEL_52:
          v5 |= v14;
          goto LABEL_53;
        }

        goto LABEL_69;
      }
    }

    else
    {
      if (v10 <= 10)
      {
        if (v10 == 8)
        {
          v5 = 557189;
LABEL_53:
          v15 = [v4 name];
          if ([v15 hasPrefix:@"NumberPad-"])
          {
            v16 = [v4 name];
            v17 = [v16 hasSuffix:@"-0-Plus"];

            if (v17)
            {
              v5 |= 0x80uLL;
            }
          }

          else
          {
          }

          goto LABEL_58;
        }

        if (v10 == 9)
        {
          v14 = 2155872261;
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if (v10 == 11)
      {
        goto LABEL_44;
      }

      if (v10 != 12)
      {
        if (v10 == 13)
        {
LABEL_44:
          v14 = 0x100000080;
          goto LABEL_52;
        }

LABEL_69:
        v22 = +[UIKeyboardImpl activeInstance];
        if ([v22 isLongPress] && -[UIKeyboardLayoutStar keyHasAccentedVariants:](self, "keyHasAccentedVariants:", v4))
        {
          v23 = [v4 name];
          v24 = [v23 hasPrefix:@"Assist"];

          if ((v24 & 1) == 0)
          {
            v5 = 32901;
          }
        }

        else
        {
        }

        goto LABEL_53;
      }
    }

LABEL_45:
    v14 = 8421376;
    goto LABEL_52;
  }

  if (!self->_spaceTarget)
  {
    goto LABEL_14;
  }

  v9 = 832;
LABEL_12:
  if (*(&self->super.super.super.super.isa + v9))
  {
    v5 = 1048709;
    goto LABEL_58;
  }

LABEL_14:
  v5 = 5;
LABEL_58:
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 2 && [(UITextInputTraits *)self->super._inputTraits keyboardType]== 7)
  {
    v18 = [v4 representedString];
    v19 = [v18 isEqualToString:@"@"];

    if (v19)
    {
      v5 &= 0x1FFFF7F7FuLL;
    }
  }

  v20 = [(UIKeyboardLayoutStar *)self renderConfig];
  if ([v20 colorAdaptiveBackground])
  {
  }

  else
  {
    v21 = [(UIKeyboardLayoutStar *)self isDynamicLayout];

    if (!v21 && [(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
    {
      v5 &= ~0x80uLL;
    }
  }

LABEL_4:

  return v5;
}

- (unint64_t)upActionFlagsForKey:(id)a3
{
  v4 = a3;
  if ([v4 visible] && -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", v4) != 1)
  {
    if ([v4 BOOLForProperty:@"more-after"])
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    if ([v4 BOOLForProperty:@"shift-after"])
    {
      v8 = v7 | 0x400000;
    }

    else
    {
      v8 = v7;
    }

    v5 = v8;
    switch([v4 interactionType])
    {
      case 1u:
      case 2u:
      case 0x10u:
        if ([v4 variantType] == 9 || objc_msgSend(v4, "variantType") == 10 || objc_msgSend(v4, "variantType") == 12 || objc_msgSend(v4, "variantType") == 13)
        {
          v9 = 2147483658;
          goto LABEL_50;
        }

        v5 = v8 | 0xA;
        if ([v4 variantType] == 11 && _os_feature_enabled_impl())
        {
          v5 = v8 | 0x200000000ALL;
        }

        break;
      case 3u:
        v5 = v8 | 0x80;
        break;
      case 4u:
        v5 = v8 | 0x808;
        if (self->_deleteTarget && self->_deleteAction)
        {
          v10 = v8 & 0x400000 | 0x808;
          goto LABEL_43;
        }

        break;
      case 5u:
        v5 = v8 | 0x40000000;
        break;
      case 6u:
        v9 = 33554440;
        goto LABEL_50;
      case 9u:
        v9 = 4104;
        goto LABEL_50;
      case 0xBu:
        if ([(UIKBTree *)self->_keyplane isShiftKeyPlaneChooser])
        {
          v5 = v8 | 0x400;
        }

        else
        {
          v5 = v8;
        }

        break;
      case 0xCu:
        v9 = 268435464;
        goto LABEL_50;
      case 0xDu:
        v5 = v8 | 0xA;
        if (self->_returnTarget && self->_returnAction)
        {
          goto LABEL_33;
        }

        if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 122 && [(UITextInputTraits *)self->super._inputTraits returnKeyType]== 9)
        {
          v5 = v8 | 0x100A;
        }

        break;
      case 0xEu:
        v5 = v8 | 0x10;
        break;
      case 0xFu:
        v5 = v8 | 0xA;
        if (self->_spaceTarget && self->_spaceAction)
        {
LABEL_33:
          v10 = v5 & 0x400008;
LABEL_43:
          v5 = v10 | 0x100000;
        }

        break;
      case 0x11u:
        v9 = 134217736;
        goto LABEL_50;
      case 0x14u:
      case 0x15u:
      case 0x29u:
        v9 = 520;
        goto LABEL_50;
      case 0x18u:
        v9 = 8200;
        goto LABEL_50;
      case 0x19u:
        v9 = 16392;
        goto LABEL_50;
      case 0x1Au:
        v5 = v8 + 2097160;
        break;
      case 0x1Bu:
        v9 = 16777736;
        goto LABEL_50;
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x2Cu:
        v5 = v8 | 8;
        break;
      case 0x24u:
        v9 = 67108872;
        goto LABEL_50;
      case 0x25u:
        v9 = 0x200000008;
LABEL_50:
        v5 = v8 | v9;
        break;
      case 0x28u:
        v5 = v8 | 0x800000008;
        break;
      case 0x2Au:
        v5 = v8 | 0x100000;
        break;
      default:
        break;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshDualStringKeys
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UIKBTree *)self->_keyplane keys];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 displayType] == 7)
        {
          -[UIKeyboardLayoutStar setState:forKey:](self, "setState:forKey:", [v8 state], v8);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)downActionShiftWithKey:(id)a3
{
  v15 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current;
  if (!self->_shiftLockReady || Current - self->_shiftLockFirstTapTime >= 0.3 || ![v4 shiftLockedEnabled] || -[UIKeyboardLayoutStar ignoresShiftState](self, "ignoresShiftState"))
  {
    self->_shiftLockReady = 1;
    self->_shiftLockFirstTapTime = v6;
    self->_wasShifted = [v4 isShifted];
    self->_holdingShift = 1;
    if (self->_wasShifted)
    {
      v7 = [(UIKBTree *)self->_keyplane looksLikeShiftAlternate];
      [v4 setShiftLocked:0];
      if (!v7)
      {
        holdingShift = self->_holdingShift;
LABEL_10:
        [v4 setShift:holdingShift];
        v9 = 1;
        [v4 setShiftPreventAutoshift:1];
        if (([v4 isShifted] & 1) == 0)
        {
          v9 = self->_holdingShift;
        }

        [(UIKeyboardLayoutStar *)self setShift:v9];
        v10 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v15];
        v11 = [v10 touch];
        v12 = [v11 touchUUID];
        [(UIKeyboardLayout *)self setShiftKeyTouchUUID:v12];

        self->_shiftTrackingChangeCount = [v4 changeCount];
        goto LABEL_13;
      }
    }

    else
    {
      [v4 setShiftLocked:0];
    }

    holdingShift = 1;
    goto LABEL_10;
  }

  self->_shiftLockReady = 0;
  [v4 setShiftLocked:1];
  keyplane = self->_keyplane;
  v14 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
  [(UIKBTree *)keyplane updateFlickKeycapOnKeysWithLayoutInfo:v14];

  [(UIKeyboardLayoutStar *)self refreshDualStringKeys];
  [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
  [(UIKeyboardLayoutStar *)self setShift:1];
  if (![(UIKBTree *)self->_keyplane isShiftKeyPlaneChooser])
  {
    [(UIKeyboardLayoutStar *)self setState:8 forKey:v15];
  }

LABEL_13:
  [(UIKeyboardLayoutStar *)self setActiveKey:0];
}

- (void)upActionShift
{
  v3 = +[UIKeyboardImpl activeInstance];
  self->_holdingShift = 0;
  shiftTrackingChangeCount = self->_shiftTrackingChangeCount;
  v7 = v3;
  if (shiftTrackingChangeCount == [v3 changeCount])
  {
    v5 = v7;
    if (self->_wasShifted)
    {
      v6 = [v7 isShiftLocked];
      v5 = v7;
    }

    else
    {
      v6 = 1;
    }

    [v5 setShift:v6];
    [v7 setShiftPreventAutoshift:1];
    -[UIKeyboardLayoutStar setShift:](self, "setShift:", [v7 isShifted]);
    self->_revertKeyplaneAfterTouch = 0;
  }

  else
  {
    [v7 setShift:0];
    [v7 setShiftPreventAutoshift:1];
    -[UIKeyboardLayoutStar setShift:](self, "setShift:", [v7 isShifted]);
  }
}

- (int)stateForShiftKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 visible];
    if (([v4 behavesAsShiftKey] & 1) == 0)
    {
      v8 = 2;
      if (v7)
      {
        v9 = +[UIKeyboardImpl activeInstance];
        v10 = [v9 isShiftLocked];

        if (v10)
        {
          v8 = 8;
        }

        else
        {
          v8 = 2;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (![v4 behavesAsShiftKey])
    {
      v8 = 2;
      goto LABEL_18;
    }

    v7 = 0;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 isShiftLocked];

  if (v12)
  {
    v13 = v7 == 0;
    v14 = 8;
    v15 = 2;
  }

  else
  {
    if (self->_autoshift)
    {
      v8 = 64;
      goto LABEL_18;
    }

    v13 = !self->_shift;
    v14 = 2;
    v15 = 32;
  }

  if (v13)
  {
    v8 = v14;
  }

  else
  {
    v8 = v15;
  }

LABEL_18:
  v16 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
  v17 = [(UIKeyboardLayoutStar *)self activeTouchInfoForShift];
  if (v17 && [v4 behavesAsShiftKey])
  {
    v18 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if ([v18 isEqualToString:self->_keyplaneName])
    {

LABEL_24:
      v8 |= 4u;
      goto LABEL_25;
    }

    v19 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    v20 = [v19 isEqualToString:v16];

    if (v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

LABEL_25:

  return v8;
}

- (void)setShift:(BOOL)a3
{
  if (!self->_gestureKeyboardIntroduction)
  {
    v5 = a3;
    if (![(UIKeyboardLayoutStar *)self isEmojiKeyplane])
    {
      v6 = [(UIKeyboardLayout *)self ignoringKeyplaneChange];
      if (!self->_settingShift && !v6)
      {
        self->_settingShift = 1;
        if ((v5 & 1) == 0)
        {
          [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
        }

        shift = self->_shift;
        self->_shift = v5;
        v8 = [(UIKBTree *)self->_keyplane isShiftKeyplane];
        keyplane = self->_keyplane;
        if (v8 != v5)
        {
          v10 = [(UIKBTree *)keyplane shiftAlternateKeyplaneName];
LABEL_20:
          v16 = v10;
          goto LABEL_21;
        }

        v11 = [(UIKBTree *)keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v13 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Non-Roman-to-Roman-Switch-Key"];
          if (v13)
          {
            v3 = v13;
            v12 = 0;
          }

          else
          {
            v17 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Roman-to-Non-Roman-Switch-Key"];
            if (!v17)
            {
              goto LABEL_26;
            }

            v23 = v17;
            v3 = 0;
            v12 = 1;
          }
        }

        v14 = +[UIKeyboardImpl activeInstance];
        v15 = [v14 isShiftLocked];

        if (v12)
        {
        }

        if (v11)
        {

          if (v15)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if (v15)
          {
LABEL_19:
            v10 = [(UIKBTree *)self->_keyplane name];
            goto LABEL_20;
          }
        }

LABEL_26:
        if (self->_shift == shift)
        {
          v16 = 0;
        }

        else
        {
          v16 = [(UIKBTree *)self->_keyplane name];

          if (v16)
          {
            keyboard = self->_keyboard;
            v19 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
            v20 = [(UIKBTree *)keyboard subtreeWithName:v19];
            v21 = [v20 name];

            v22 = [(UIKBTree *)self->_keyplane name];
            LODWORD(v19) = [v21 isEqualToString:v22];

            if (v19)
            {
              v16 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
            }

            else
            {
              v16 = 0;
            }

LABEL_21:
            if (!self->_isContinuousPathUnderway && v16)
            {
              [(UIKeyboardLayoutStar *)self setKeyplaneName:v16];
            }
          }
        }

        [(UIKeyboardLayoutStar *)self updateShiftKeyState];
        self->_settingShift = 0;
      }
    }
  }

  [(UIKeyboardLayoutStar *)self setMultitapReverseKeyState];
}

uint64_t __50__UIKeyboardLayoutStar_setMultitapReverseKeyState__block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(result + 40) setState:objc_msgSend(*(result + 40) forKey:{"stateForMultitapReverseKey:"), *(result + 32)}];
  }

  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
    v3 = [v2 stateForMultitapForwardKey:?];
    v4 = *(v1 + 48);

    return [v2 setState:v3 forKey:v4];
  }

  return result;
}

- (void)setAutoshift:(BOOL)a3
{
  if (!self->_settingShift)
  {
    self->_settingShift = 1;
    self->_autoshift = a3;
    [(UIKeyboardLayoutStar *)self updateShiftKeyState];
    self->_settingShift = 0;
  }
}

- (void)divideKeysIntoLeft:(id)a3 right:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(UIKBTree *)self->_keyplane subtrees];
    v10 = [v9 firstObject];

    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v41 = "";
    v11 = *(MEMORY[0x1E695F050] + 16);
    v42 = *MEMORY[0x1E695F050];
    v43 = v11;
    v32 = 0;
    v33 = &v32;
    v34 = 0x4010000000;
    v35 = "";
    v36 = v42;
    v37 = v11;
    v12 = [v10 keys];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke;
    v31[3] = &unk_1E7114AD8;
    v31[4] = &v38;
    v31[5] = &v32;
    [v12 enumerateObjectsUsingBlock:v31];

    v13 = v39[4];
    v14 = v39[5];
    v16 = v39[6];
    v15 = *(v39 + 7);
    v17 = v33[6];
    v18 = [(UIKBTree *)self->_keyplane keys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke_2;
    v19[3] = &unk_1E7114B00;
    v23 = v13 + v17 * -0.5;
    v24 = v14 + 0.0;
    v25 = v16 * 0.5 - (v17 * -0.5 + 0.0);
    v26 = v15;
    v22 = &v38;
    v20 = v6;
    v27 = v16 * 0.5 + 0.0;
    v28 = v14 + 0.0;
    v29 = v25;
    v30 = v15;
    v21 = v8;
    [v18 enumerateObjectsUsingBlock:v19];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }
}

void __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke(uint64_t a1, void *a2)
{
  [a2 frame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = a1 + 32;
  IsNull = CGRectIsNull(*(*(*(a1 + 32) + 8) + 32));
  v13 = *(*(a1 + 32) + 8);
  if (IsNull)
  {
    v13[1].origin.x = x;
    v13[1].origin.y = y;
    v11 = a1 + 40;
    v13[1].size.width = width;
    v13[1].size.height = height;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v15 = CGRectUnion(v13[1], v16);
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  v14 = *(*v11 + 8);
  v14[4] = x;
  v14[5] = y;
  v14[6] = width;
  v14[7] = height;
}

void __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23.origin.x = v3;
  v23.origin.y = v5;
  v23.size.width = v7;
  v23.size.height = v9;
  if (CGRectIntersectsRect(*(a1 + 56), v23) || (v24.origin.x = v4, v24.origin.y = v6, v24.size.width = v8, v24.size.height = v10, CGRectIntersectsRect(*(*(*(a1 + 48) + 8) + 32), v24)) && (MaxX = CGRectGetMaxX(*(a1 + 56)), v19.origin.x = v4, v19.origin.y = v6, v19.size.width = v8, v19.size.height = v10, v12 = MaxX - CGRectGetMinX(v19), v20.origin.x = v4, v20.origin.y = v6, v20.size.width = v8, v20.size.height = v10, v13 = CGRectGetMaxX(v20), v12 > v13 - CGRectGetMaxX(*(a1 + 56))))
  {
    [*(a1 + 32) addObject:v17];
  }

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  if (CGRectIntersectsRect(*(a1 + 88), v25) || (v26.origin.x = v4, v26.origin.y = v6, v26.size.width = v8, v26.size.height = v10, CGRectIntersectsRect(*(*(*(a1 + 48) + 8) + 32), v26)) && (v21.origin.x = v4, v21.origin.y = v6, v21.size.width = v8, v21.size.height = v10, v14 = CGRectGetMaxX(v21), v15 = v14 - CGRectGetMinX(*(a1 + 88)), MinX = CGRectGetMinX(*(a1 + 88)), v22.origin.x = v4, v22.origin.y = v6, v22.size.width = v8, v22.size.height = v10, v15 > MinX - CGRectGetMinX(v22)))
  {
    [*(a1 + 40) addObject:v17];
  }
}

- (void)updateKeyCentroids
{
  self->_ghostKeysEnabled = CFAbsoluteTimeGetCurrent() - self->_prevTouchUpTime < 1.0;
  if ([(UIKeyboardLayout *)self supportsVirtualDrift]|| [(UIKeyboardLayout *)self isReachableDevice])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    leftKeySet = self->_leftKeySet;
    self->_leftKeySet = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    rightKeySet = self->_rightKeySet;
    self->_rightKeySet = v5;

    [(UIKeyboardLayoutStar *)self divideKeysIntoLeft:self->_leftKeySet right:self->_rightKeySet];
    [(UIKeyboardLayout *)self leftVirtualDriftOffset];
    self->_leftDriftOffset.x = v7;
    self->_leftDriftOffset.y = v8;
    v9 = 1232;
    [(UIKeyboardLayout *)self rightVirtualDriftOffset];
    self->_rightDriftOffset.x = v10;
    self->_rightDriftOffset.y = v11;
  }

  else
  {
    v12 = self->_leftKeySet;
    self->_leftKeySet = 0;

    v13 = self->_rightKeySet;
    self->_rightKeySet = 0;

    v14 = *MEMORY[0x1E695EFF8];
    self->_leftDriftOffset = *MEMORY[0x1E695EFF8];
    self->_rightDriftOffset = v14;
    v9 = 1232;
  }

  v55 = [(UIKBTree *)self->_keyplane keys];
  v15 = [v55 count];
  v16 = [objc_alloc(MEMORY[0x1E69D9628]) initWithCapacity:v15];
  [v16 setUsesTwoHands:{-[UIKeyboardLayout supportsVirtualDrift](self, "supportsVirtualDrift")}];
  if (objc_opt_respondsToSelector())
  {
    [v16 setShifted:{-[UIKBTree isShiftKeyplane](self->_keyplane, "isShiftKeyplane")}];
  }

  if (v15)
  {
    v17 = 0;
    v18 = *MEMORY[0x1E695F050];
    v19 = *(MEMORY[0x1E695F050] + 8);
    v20 = *(MEMORY[0x1E695F050] + 16);
    v21 = *(MEMORY[0x1E695F050] + 24);
    while (1)
    {
      v22 = [v55 objectAtIndex:v17];
      [v22 paddedFrame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      if (([v22 isExemptFromInputManagerLayout] & 1) == 0 && -[UIKeyboardLayoutStar shouldHitTestKey:](self, "shouldHitTestKey:", v22))
      {
        break;
      }

      [v16 addKeyWithString:&stru_1EFB14550 frame:{v18, v19, v20, v21}];
LABEL_33:

      if (v15 == ++v17)
      {
        goto LABEL_34;
      }
    }

    if ([v22 interactionType] != 15 || !self->_showDictationKey)
    {
LABEL_22:
      v43 = [v22 representedString];
      if ([v22 displayType] == 7 && (objc_msgSend(v22, "supportsSupplementalDisplayString") & 1) == 0)
      {
        v44 = [(UIKeyboardLayoutStar *)self currentRepresentedStringForDualDisplayKey:v22];

        v43 = v44;
      }

      v45 = @"undo";
      if ([v22 interactionType] == 12 || (v45 = @"international", objc_msgSend(v22, "interactionType") == 9) || (v45 = @"delete", objc_msgSend(v22, "interactionType") == 4))
      {

        v43 = v45;
      }

      v46 = [(NSMutableSet *)self->_leftKeySet containsObject:v22];
      v47 = 1216;
      if ((v46 & 1) != 0 || (v48 = [(NSMutableSet *)self->_rightKeySet containsObject:v22], v47 = v9, v48))
      {
        v49 = (self + v47);
        v24 = v24 + *v49;
        v26 = v26 + v49[1];
      }

      [v16 addKeyWithString:v43 frame:{v24, v26, v28, v30}];

      goto LABEL_33;
    }

    v31 = v9;
    v32 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"More-Key"];
    v33 = [v32 interactionType];

    if (v33 == 10)
    {
      v9 = v31;
      goto LABEL_22;
    }

    v34 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
    v35 = [v34 shape];

    [v22 paddedFrame];
    MinY = CGRectGetMinY(v57);
    [v35 paddedFrame];
    if (MinY == CGRectGetMinY(v58))
    {
      [v22 paddedFrame];
      MinX = CGRectGetMinX(v59);
      [v35 paddedFrame];
      v9 = v31;
      if (MinX <= CGRectGetMaxX(v60))
      {
        goto LABEL_21;
      }

      [v22 paddedFrame];
      v53 = CGRectGetMinX(v61);
      [v35 paddedFrame];
      v54 = v53 - CGRectGetMaxX(v62);
      [v35 paddedFrame];
      if (v54 >= v36)
      {
        goto LABEL_21;
      }

      v37 = [v22 shape];
      v38 = [UIKBShape shapeByCombining:v37 withShape:v35];

      [v38 paddedFrame];
      v24 = v39;
      v26 = v40;
      v28 = v41;
      v30 = v42;
    }

    v9 = v31;
LABEL_21:

    goto LABEL_22;
  }

LABEL_34:
  v50 = +[UIKeyboardImpl activeInstance];
  [v50 setLayoutForKeyHitTest:v16];
}

- (void)willRotate:(int64_t)a3
{
  self->_preRotateShift = self->_shift;
  v5 = [(UIKBTree *)self->_keyplane name];
  v6 = [v5 copy];
  preRotateKeyplaneName = self->_preRotateKeyplaneName;
  self->_preRotateKeyplaneName = v6;

  v8 = [(UIKeyboardLayoutStar *)self modalDisplayView];

  if (v8)
  {
    v9 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    [v9 removeFromSuperview];

    [(UIKeyboardLayoutStar *)self setModalDisplayView:0];
    [(UIView *)self->_keyplaneView setHidden:0];
  }

  if (self->_isTrackpadMode)
  {
    [(UIKeyboardLayoutStar *)self didEndIndirectSelectionGesture:0];
    self->_preRotateTrackpadMode = 1;
  }

  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& self->_liveKeyplaneView)
  {
    v10 = +[UIKeyboardImpl keyboardScreen];
    v11 = [UIKBScreenTraits traitsWithScreen:v10 orientation:a3 ignoreRemoteKeyboard:1];

    [(TUIKeyplaneView *)self->_liveKeyplaneView setOverrideScreenTraits:v11];
  }
}

- (void)didRotate
{
  preRotateKeyplaneName = self->_preRotateKeyplaneName;
  if (preRotateKeyplaneName)
  {
    v4 = preRotateKeyplaneName;
    v5 = [(UIKBTree *)self->_keyboard subtreeWithName:v4];

    if (!v5)
    {
      v6 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:self->_preRotateKeyplaneName];

      v4 = v6;
    }

    v7 = [(UIKBTree *)self->_keyboard subtreeWithName:v4];

    if (!v7)
    {
      v8 = [(UIKeyboardLayoutStar *)self initialKeyplaneNameWithKBStarName:0];

      v4 = v8;
    }

    v9 = [(UIKeyboardLayoutStar *)self keyplaneName];
    v10 = [v9 isEqualToString:v4];

    if (![(UIKeyboardLayout *)self isFloating]|| (v10 & 1) == 0)
    {
      if ((v10 & 1) == 0)
      {
        v11 = self->super._screenTraits;
        v12 = [(UIKBScreenTraits *)self->super._screenTraits orientation];
        v13 = +[UIKeyboard activeKeyboard];
        v14 = [v13 interfaceOrientation];

        if (v12 != v14)
        {
          v15 = +[UIKeyboardImpl keyboardScreen];
          v16 = +[UIKeyboard activeKeyboard];
          v17 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v15, [v16 interfaceOrientation]);

          v11 = v17;
        }

        v18 = UIKeyboardGetCurrentInputMode();
        v19 = UIKeyboardGetKBStarName(v18, v11, [(UITextInputTraits *)self->super._inputTraits keyboardType], 0);

        v20 = [(UIKBTree *)self->_keyboard name];

        if (v19 != v20)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardName:v19 appearance:[(UITextInputTraits *)self->super._inputTraits keyboardAppearance]];
        }
      }

      [(UIKeyboardLayoutStar *)self setKeyplaneName:v4];
    }

    v21 = self->_preRotateKeyplaneName;
    self->_preRotateKeyplaneName = 0;
  }

  [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  [(UIKeyboardLayoutStar *)self updateShiftKeyState];
  if (self->_preRotateShift)
  {
    [(UIKeyboardLayoutStar *)self setAutoshift:1];
  }

  if (self->_preRotateTrackpadMode)
  {
    [(UIKeyboardLayoutStar *)self willBeginIndirectSelectionGesture:0];
    self->_preRotateTrackpadMode = 0;
  }

  [(UIKeyboardLayoutStar *)self rebuildSplitTransitionView];
}

- (BOOL)shouldRetestKey:(id)a3 slidOffKey:(id)a4 withKeyplane:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = 0;
  if ([v8 interactionType] != 4 && self->_keyplane != v9)
  {
    if (![v8 modifiesKeyplane] || objc_msgSend(v8, "interactionType") != 10 && (-[UIKeyboardLayoutStar preTouchKeyplaneName](self, "preTouchKeyplaneName"), v12 = objc_claimAutoreleasedReturnValue(), v12, a4) && v12)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (id)baseKeyForString:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self keyboard];
  v6 = [v5 subtrees];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = v6;
  v53 = [v7 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v53)
  {
    v8 = *v72;
    v52 = *v72;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v72 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = v7;
        v11 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v12 = [v11 keys];
        v13 = [v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v68;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v68 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v67 + 1) + 8 * j);
              v18 = [v17 representedString];
              v19 = [v18 isEqualToString:v4];

              if (v19)
              {
                v44 = v17;

                v7 = v10;
                v23 = v10;
                goto LABEL_46;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v7 = v10;
        v8 = v52;
      }

      v53 = [v7 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v53);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v64;
    v49 = v7;
    v50 = v20;
    v46 = *v64;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v64 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v63 + 1) + 8 * k);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v27 = [v26 keys];
        v51 = [v27 countByEnumeratingWithState:&v59 objects:v76 count:16];
        if (v51)
        {
          v28 = *v60;
          v47 = v22;
          v48 = *v60;
          v54 = v27;
          do
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v60 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v30 = *(*(&v59 + 1) + 8 * m);
              v31 = [v30 representedString];
              if ([v30 displayType] == 7)
              {
                v32 = [v30 secondaryRepresentedStrings];
                v33 = [v32 count];

                if (v33)
                {
                  v34 = [v30 secondaryRepresentedStrings];
                  v35 = [v34 firstObject];
                  v36 = [v31 stringByAppendingString:v35];

                  v31 = v36;
                }
              }

              v37 = UIKeyboardGetCurrentInputMode();
              v38 = UIKeyboardRomanAccentVariants(v31, v37, 7);
              v39 = [v38 objectForKey:@"Strings"];

              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v23 = v39;
              v40 = [v23 countByEnumeratingWithState:&v55 objects:v75 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v56;
                while (2)
                {
                  for (n = 0; n != v41; ++n)
                  {
                    if (*v56 != v42)
                    {
                      objc_enumerationMutation(v23);
                    }

                    if ([*(*(&v55 + 1) + 8 * n) isEqualToString:v4])
                    {
                      v44 = v30;

                      v7 = v49;
                      goto LABEL_46;
                    }
                  }

                  v41 = [v23 countByEnumeratingWithState:&v55 objects:v75 count:16];
                  if (v41)
                  {
                    continue;
                  }

                  break;
                }
              }

              v27 = v54;
              v28 = v48;
            }

            v20 = v50;
            v24 = v46;
            v22 = v47;
            v51 = [v54 countByEnumeratingWithState:&v59 objects:v76 count:16];
          }

          while (v51);
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v63 objects:v77 count:16];
      v7 = v49;
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }

  NSLog(&cfstr_CouldnTFindKey.isa, v4);
  v44 = 0;
LABEL_46:

  return v44;
}

- (id)keyplaneForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self keyboard];
  v6 = [v5 keyplaneForKey:v4];

  return v6;
}

- (id)keyplaneNamed:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self keyboard];
  v6 = [v5 subtreeWithName:v4];

  return v6;
}

- (void)changeToKeyplane:(id)a3
{
  v4 = [a3 name];
  [(UIKeyboardLayoutStar *)self setKeyplaneName:v4];

  v5 = [(UIKBTree *)self->_keyplane isShiftKeyplane];
  v6 = +[UIKeyboardImpl activeInstance];
  if (v5 != [v6 isShifted])
  {
    [v6 setShift:v5];
    [v6 setShiftPreventAutoshift:1];
    [v6 forceShiftUpdate];
  }
}

- (void)switchKeyplane:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
  [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:v5];

  self->_revertKeyplaneAfterTouch = 0;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 keyActivated];

  [(UIKeyboardLayoutStar *)self setKeyplaneName:v4];

  [(UIKeyboardLayoutStar *)self setActiveKey:0];
}

- (CGPoint)applyError:(CGPoint)a3 toKey:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 frame];
  v11 = x + v8 + v7 * 0.5;
  v12 = y + v10 + v9 * 0.5;
  [(UIView *)self bounds];
  MinX = CGRectGetMinX(v28);
  [(UIView *)self bounds];
  if (v11 >= MinX)
  {
    if (v11 <= CGRectGetMaxX(*&v14))
    {
      goto LABEL_6;
    }

    [(UIView *)self bounds];
    MaxX = CGRectGetMaxX(v29);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v14);
  }

  v11 = MaxX;
LABEL_6:
  [(UIView *)self bounds];
  MinY = CGRectGetMinY(v30);
  [(UIView *)self bounds];
  if (v12 < MinY)
  {
    MaxY = CGRectGetMinY(*&v20);
LABEL_10:
    v12 = MaxY;
    goto LABEL_11;
  }

  if (v12 > CGRectGetMaxY(*&v20))
  {
    [(UIView *)self bounds];
    MaxY = CGRectGetMaxY(v31);
    goto LABEL_10;
  }

LABEL_11:
  v25 = v11;
  v26 = v12;
  result.y = v26;
  result.x = v25;
  return result;
}

- (id)simulateTouch:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 representedString];
  }

  else
  {
    v8 = @"<no key>";
  }

  [(UIView *)self convertPoint:0 toView:x, y];
  v10 = v9;
  v12 = v11;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = [(UIView *)self window];
  v15 = [UIKeyboardSyntheticTouch syntheticTouchWithPoint:v14 timestamp:v10 window:v12, Current];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  [(UIKeyboardLayout *)self touchesBegan:v16 withEvent:0];

  [v15 setPhase:3];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  [(UIKeyboardLayout *)self touchesEnded:v17 withEvent:0];

  return v8;
}

- (id)simulateTouchForCharacter:(id)a3 errorVector:(CGPoint)a4 shouldTypeVariants:(BOOL)a5 baseKeyForVariants:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = [(UIKeyboardLayoutStar *)self baseKeyForString:v11];
  v13 = v12;
  if (v12)
  {
    if (a5)
    {
      if (!a6)
      {
        v14 = [v12 representedString];
        v15 = [v14 isEqualToString:v11];

        if ((v15 & 1) == 0)
        {
          NSLog(&cfstr_InsertingVaria.isa, v11);
          v16 = +[UIKeyboardImpl activeInstance];
          [v16 addInputString:v11 withFlags:2];

          v17 = v11;
          goto LABEL_12;
        }
      }

LABEL_7:
      v20 = [(UIKeyboardLayoutStar *)self keyplaneForKey:v13];
      [(UIKeyboardLayoutStar *)self changeToKeyplane:v20];
      [(UIKeyboardLayoutStar *)self applyError:v13 toKey:x, y];
      v22 = v21;
      v24 = v23;
      v25 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:?];
      v26 = v25;
      if (v25)
      {
        v17 = [v25 representedString];
      }

      else
      {
        v17 = @"<no key>";
      }

      [(UIView *)self convertPoint:0 toView:v22, v24];
      v28 = v27;
      v30 = v29;
      Current = CFAbsoluteTimeGetCurrent();
      v32 = [(UIView *)self window];
      v33 = [UIKeyboardSyntheticTouch syntheticTouchWithPoint:v32 timestamp:v28 window:v30, Current];

      v34 = [MEMORY[0x1E695DFD8] setWithObject:v33];
      [(UIKeyboardLayout *)self touchesBegan:v34 withEvent:0];

      [v33 setPhase:3];
      v35 = [MEMORY[0x1E695DFD8] setWithObject:v33];
      [(UIKeyboardLayout *)self touchesEnded:v35 withEvent:0];

      goto LABEL_12;
    }

    v18 = [v12 representedString];
    v19 = [v18 isEqualToString:v11];

    if (v19)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (void)fadeWithInvocation:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__UIKeyboardLayoutStar_fadeWithInvocation___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__UIKeyboardLayoutStar_fadeWithInvocation___block_invoke_2;
  v6[3] = &unk_1E70F3C60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [UIView animateWithDuration:117571584 delay:v8 options:v6 animations:0.2 completion:0.0];
}

uint64_t __43__UIKeyboardLayoutStar_fadeWithInvocation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 start];
}

- (void)updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:(id)a3
{
  v11 = a3;
  if ([(UIView *)self isDescendantOfView:?])
  {
    v4 = [(UIKeyboardLayoutStar *)self activeKey];
    [(UIKeyboardLayoutStar *)self setState:2 forKey:v4];

    [v11 frame];
    v6 = v5;
    [(UIView *)self frame];
    if (v6 != CGRectGetMaxY(v13))
    {
      [(UIView *)self frame];
      MinX = CGRectGetMinX(v14);
      [v11 frame];
      v9 = v8;
      [(UIView *)self frame];
      v10 = v9 - CGRectGetMaxY(v15);
      [(UIView *)self frame];
      [(UIView *)self setFrame:MinX, v10];
    }
  }
}

- (BOOL)keyplaneContainsDismissKey
{
  v2 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dismiss-Key"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)keyplaneContainsEmojiKey
{
  if ([(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Emoji"];
    if (v4)
    {
      v3 = ![(UIKeyboardLayoutStar *)self shouldMergeKey:v4];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)triggerSpaceKeyplaneSwitchIfNecessary
{
  if (!self->_isContinuousPathUnderway)
  {
    v7 = [(UIKeyboardLayoutStar *)self currentKeyplane];
    v4 = [v7 firstCachedKeyWithName:@"Space-Key"];
    if ((-[UIKeyboardLayoutStar upActionFlagsForKey:](self, "upActionFlagsForKey:", v4) & 0x100) != 0 && ([v7 supportsType:{-[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")}] & 1) == 0)
    {
      v5 = [v7 alternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:v5];

      v6 = [(UIKeyboardLayoutStar *)self keyplane];
      -[UIKeyboardLayoutStar setShift:](self, "setShift:", [v6 isShiftKeyplane]);
    }
  }
}

- (void)typingStyleEstimator:(id)a3 didChangeTypingStyleEstimate:(unint64_t)a4
{
  if ([(UIKeyboardLayoutStar *)self _allowPaddle])
  {
    v10 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
    v6 = (a4 != 3) == [v10 allowsPaddles];
    v7 = v10;
    if (!v6)
    {
      [v10 setAllowsPaddles:a4 != 3];
      v8 = [(UIKeyboardLayoutStar *)self activeKey];
      v9 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v8];
      if (![v9 delayed] || objc_msgSend(v8, "interactionType") != 4)
      {
        [(UIKBKeyplaneView *)self->_keyplaneView purgeActiveKeyViews];
      }

      v7 = v10;
    }
  }
}

- (UIKeyboardKeyplaneTransitionDelegate)splitKeyplaneTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitKeyplaneTransitionDelegate);

  return WeakRetained;
}

- (id)keyWithRepresentedString:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(UIKBTree *)self->_keyplane keys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 interactionType] != 16 || (objc_msgSend(v9, "fullRepresentedString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "_containsSubstring:", v4), v10, (v11 & 1) == 0))
        {
          v12 = [v9 representedString];
          v13 = [v12 isEqualToString:v4];

          if ((v13 & 1) == 0)
          {
            continue;
          }
        }

        v6 = v9;
        goto LABEL_13;
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (CGRect)frameForKeyWithRepresentedString:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [(UIView *)self->_keyplaneView subviews];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [v11 representedString];
        if ([v12 isEqualToString:v4])
        {
          v13 = [v10 superview];

          if (v13)
          {
            [v10 bounds];
            [(UIView *)self convertRect:v10 fromView:?];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;

            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [(UIKBTree *)self->_keyplane keys];
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        v20 = [v19 representedString];
        v21 = [v20 isEqualToString:v4];

        if (v21)
        {
          [v19 frame];
          v23 = v30;
          v25 = v31;
          v27 = v32;
          v29 = v33;

          goto LABEL_22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v23 = *MEMORY[0x1E695F050];
  v25 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v29 = *(MEMORY[0x1E695F050] + 24);
LABEL_22:

  v34 = v23;
  v35 = v25;
  v36 = v27;
  v37 = v29;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)frameForLastKeyWithRepresentedString:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(UIKBTree *)self->_keyplane keys];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 representedString];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v11 frame];
          v14 = v18;
          v15 = v19;
          v16 = v20;
          v17 = v21;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = *MEMORY[0x1E695F050];
  v15 = *(MEMORY[0x1E695F050] + 8);
  v16 = *(MEMORY[0x1E695F050] + 16);
  v17 = *(MEMORY[0x1E695F050] + 24);
LABEL_11:

  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)popupKeyViews
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(UIView *)self->_keyplaneView subviews];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 superview];
        v11 = [v9 window];
        v12 = v11;
        if (v10 == v11)
        {
          v13 = [v9 window];
          v14 = [v13 _isTextEffectsWindow];

          if (v14)
          {
            [v3 addObject:v9];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)flickPopupStringForKey:(id)a3 withString:(id)a4
{
  v6 = a4;
  v7 = [a3 variantType];
  v8 = v6;
  if (v7 == 8)
  {
    v8 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v6];
  }

  return v8;
}

- (id)flickStringForInputKey:(id)a3 direction:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 state];
    if ((a4 + 3) > 1 || v8 == 16)
    {
      v9 = [v7 displayString];
      v13 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v7 withString:v9];
      v12 = getFlickString(v13, a4);
    }

    else
    {
      v9 = [v7 fullRepresentedString];
      if ([v9 length])
      {
        v10 = [v9 rangeOfComposedCharacterSequenceAtIndex:{self->_multitapCount % objc_msgSend(v9, "length")}];
        v12 = [v9 substringWithRange:{v10, v11}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)populateFlickPopupsForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v34 = v4;
    v5 = [v4 displayString];
    v6 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v34 withString:v5];
    if (v6)
    {
      v7 = UIKeyboardGetCurrentInputMode();
      v8 = TIInputModeGetNormalizedIdentifier();

      v9 = UIKeyboardRomanAccentVariants(v6, v8, 38);
      v10 = [v9 objectForKey:@"Direction"];
      v11 = [v10 isEqualToString:@"flick"];

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = [v12 objectForKey:@"Strings"];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [v12 objectForKey:@"Strings"];
        v16 = [v12 objectForKey:@"Keycaps"];
        v17 = [v12 objectForKey:@"Direction"];
        v18 = [v15 count];
        if (v18 <= [v16 count])
        {
          v19 = v15;
        }

        else
        {
          v19 = v16;
        }

        v20 = [v19 count];
        if (v15 && v16 && v17)
        {
          v21 = v20;
          v32 = v17;
          v33 = v12;
          v22 = [MEMORY[0x1E695DF70] array];
          if (v21 >= 1)
          {
            v23 = 0;
            v24 = v21 & 0x7FFFFFFF;
            do
            {
              v25 = [v16 objectAtIndex:v23];
              if ([v25 length])
              {
                v26 = [v34 copy];
                [v26 setState:2];
                v27 = [v15 objectAtIndex:v23];
                [v26 setRepresentedString:v27];

                [v26 setDisplayString:v25];
                [v26 setDisplayType:0];
                v28 = MEMORY[0x1E696AEC0];
                v29 = [v34 name];
                v30 = [v26 representedString];
                v31 = [v28 stringWithFormat:@"%@/%@", v29, v30];
                [v26 setName:v31];

                [v26 setOverrideDisplayString:0];
              }

              else
              {
                v26 = [MEMORY[0x1E695DFB0] null];
              }

              [v22 addObject:v26];

              ++v23;
            }

            while (v24 != v23);
          }

          [v34 setSubtrees:v22];

          v17 = v32;
          v12 = v33;
        }
      }
    }

    v4 = v34;
  }
}

- (BOOL)handleFlick:(id)a3
{
  v4 = a3;
  v5 = [v4 touch];
  v6 = [self->_touchInfo touch];

  if (v5 == v6 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
  {
    v9 = [v4 key];
    v10 = [v9 displayString];
    [v4 initialPoint];
    v12 = v11;
    v14 = v13;
    v15 = [v4 touch];
    [v15 locationInView:self];
    v17 = v16;
    v19 = v18;

    v20 = UIKBGetFlickDirection(v12, v14, v17, v19);
    if (v20 == -3)
    {
      self->_isOutOfBounds = 0;
      if ([v9 state] == 16)
      {
        v21 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:v10];
        v22 = getFlickPopupInfoArray(v21, @"Keycaps");

        [(UIKeyboardLayoutStar *)self showPopupView:-1 withKey:v9 popupInfo:v22 force:0];
      }

      else
      {
        if ([v9 state] != 20)
        {
          goto LABEL_35;
        }

        v32 = [v9 flickDirection] >= 0 ? -1 : -3;
        [v9 setFlickDirection:v32];
        [(UIKeyboardLayoutStar *)self setState:8 forKey:v9];
        flickPopupView = self->_flickPopupView;
        if (!flickPopupView)
        {
          goto LABEL_35;
        }

        [(UIView *)flickPopupView removeFromSuperview];
        v22 = self->_flickPopupView;
        self->_flickPopupView = 0;
      }

LABEL_34:

LABEL_35:
      v7 = 1;
      goto LABEL_4;
    }

    v23 = v20;
    flickPopuptimer = self->_flickPopuptimer;
    if (flickPopuptimer)
    {
      [(NSTimer *)flickPopuptimer invalidate];
      v25 = self->_flickPopuptimer;
      self->_flickPopuptimer = 0;
    }

    v26 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:v10];
    v22 = getFlickString(v26, v23);

    if ([v9 state] == 16)
    {
      v27 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:v10];
      v28 = getFlickPopupInfoArray(v27, @"Keycaps");

      self->_isOutOfBounds = isFlickOutOfBounds(v12, v14, v17, v19);
      if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& self->_liveKeyplaneView)
      {
        v29 = [v9 selectedVariantIndex];
        v30 = objc_opt_respondsToSelector();
        liveKeyplaneView = self->_liveKeyplaneView;
        if (v30)
        {
          [(TUIKeyplaneView *)liveKeyplaneView changingSelectedVariantForKey:v9 atPoint:1 isDragging:v17, v19];
        }

        else
        {
          [(TUIKeyplaneView *)liveKeyplaneView changingSelectedVariantForKey:v9 atPoint:v17, v19];
        }

        if ([v9 selectedVariantIndex] != v29)
        {
          self->_selectedVariantIndexChanged = 1;
        }
      }

      if (!v22 || ![v22 length])
      {
        v23 = -1;
      }

      [(UIKeyboardLayoutStar *)self showPopupView:v23 withKey:v9 popupInfo:v28 force:0];
    }

    else if (v22 && [v22 length])
    {
      v28 = [v4 key];
      [(UIKeyboardLayoutStar *)self showFlickView:v23 withKey:v28 flickString:v22];
    }

    else
    {
      [v9 setFlickDirection:-3];
      [(UIKeyboardLayoutStar *)self setState:2 forKey:v9];
      v34 = self->_flickPopupView;
      if (!v34)
      {
        goto LABEL_34;
      }

      [(UIView *)v34 removeFromSuperview];
      v28 = self->_flickPopupView;
      self->_flickPopupView = 0;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (void)showFlickView:(int64_t)a3 withKey:(id)a4 flickString:(id)a5
{
  v7 = a4;
  if ([v7 flickDirection] != a3)
  {
    [(UIKeyboardLayoutStar *)self populateFlickPopupsForKey:v7];
    [v7 setFlickDirection:a3];
    [(UIKeyboardLayoutStar *)self setState:20 forKey:v7];
  }
}

- (void)handlePopupView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (qword_1ED4932A0 != -1)
  {
    dispatch_once(&qword_1ED4932A0, &__block_literal_global_2036);
  }

  v5 = [(UIKeyboardLayout *)self taskQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handlePopupView___block_invoke_3;
  v7[3] = &unk_1E7114990;
  v6 = v4;
  v8 = v6;
  v9 = self;
  objc_copyWeak(&v10, &location);
  [v5 addTask:v7 breadcrumb:qword_1ED493298];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __75__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handlePopupView___block_invoke()
{
  v0 = [&__block_literal_global_2038_0 copy];
  v1 = qword_1ED493298;
  qword_1ED493298 = v0;
}

void __75__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handlePopupView___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1112))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained handlePopupView];
    }

    v3 = v6;
  }

  [v3 returnExecutionToParent];
}

- (void)handlePopupView
{
  [(NSTimer *)self->_flickPopuptimer invalidate];
  flickPopuptimer = self->_flickPopuptimer;
  self->_flickPopuptimer = 0;

  v7 = [self->_touchInfo key];
  v4 = [v7 displayString];
  v5 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v7 withString:v4];
  v6 = getFlickPopupInfoArray(v5, @"Keycaps");

  if (v6)
  {
    [(UIKeyboardLayoutStar *)self showPopupView:-1 withKey:v7 popupInfo:v6 force:1];
  }
}

- (void)handleDismissFlickView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inDealloc)
  {
    [(UIKeyboardLayoutStar *)self handleDismissFlickView];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handleDismissFlickView___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __82__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handleDismissFlickView___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  if (qword_1ED4932B0 != -1)
  {
    dispatch_once(&qword_1ED4932B0, &__block_literal_global_2040);
  }

  v2 = [*(a1 + 32) taskQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handleDismissFlickView___block_invoke_4;
  v5[3] = &unk_1E7114990;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  objc_copyWeak(&v8, &location);
  [v2 addTask:v5 breadcrumb:qword_1ED4932A8];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __82__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handleDismissFlickView___block_invoke_2()
{
  v0 = [&__block_literal_global_2042 copy];
  v1 = qword_1ED4932A8;
  qword_1ED4932A8 = v0;
}

void __82__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handleDismissFlickView___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1112))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained handleDismissFlickView];
    }

    v3 = v6;
  }

  [v3 returnExecutionToParent];
}

- (void)handleDismissFlickView
{
  [(NSTimer *)self->_flickPopuptimer invalidate];
  flickPopuptimer = self->_flickPopuptimer;
  self->_flickPopuptimer = 0;

  [(UIView *)self->_flickPopupView removeFromSuperview];
  flickPopupView = self->_flickPopupView;
  self->_flickPopupView = 0;
}

- (void)setKeyboardDim:(BOOL)a3 amount:(double)a4 withDuration:(double)a5
{
  v7 = a3;
  v9 = ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 && v7;
  dimKeyboardImageView = self->_dimKeyboardImageView;
  if (v9)
  {
    if (!dimKeyboardImageView)
    {
      v11 = [UIKBDimmingView alloc];
      v12 = [(UIView *)self superview];
      [v12 bounds];
      v13 = [(UIKBDimmingView *)v11 initWithFrame:?];
      v14 = self->_dimKeyboardImageView;
      self->_dimKeyboardImageView = v13;

      [(UIView *)self->_dimKeyboardImageView setAlpha:0.0];
      [(UIView *)self->_dimKeyboardImageView setHidden:1];
      v15 = [(UIView *)self superview];
      [v15 addSubview:self->_dimKeyboardImageView];

      dimKeyboardImageView = self->_dimKeyboardImageView;
    }
  }

  else if (!dimKeyboardImageView)
  {
    return;
  }

  [(UIView *)dimKeyboardImageView setScreenTraits:self->super._screenTraits];
  [(UIView *)self->_dimKeyboardImageView refreshStyleForKeyplane:self->_keyplane];
  v16 = self->_dimKeyboardImageView;
  if (v16 && self->_keyboardImageViewIsDim != v9)
  {
    v17 = [(UIView *)self superview];
    [v17 bounds];
    [(UIView *)v16 setFrame:?];

    [(UIView *)self->_dimKeyboardImageView setNeedsDisplay];
    if (v9)
    {
      if ([(UIView *)self->_dimKeyboardImageView isHidden])
      {
        [(UIView *)self->_dimKeyboardImageView setAlpha:0.0];
        [(UIView *)self->_dimKeyboardImageView setHidden:0];
      }
    }

    v18 = [(UIView *)self superview];
    [v18 bringSubviewToFront:self->_dimKeyboardImageView];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__setKeyboardDim_amount_withDuration___block_invoke;
    v21[3] = &unk_1E7101F90;
    v21[4] = self;
    v22 = v9;
    *&v21[5] = a4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__setKeyboardDim_amount_withDuration___block_invoke_2;
    v19[3] = &unk_1E70FA0F0;
    v19[4] = self;
    v20 = v9;
    [UIView animateWithDuration:117440512 delay:v21 options:v19 animations:a5 completion:0.0];
    self->_keyboardImageViewIsDim = v9;
  }
}

uint64_t __94__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__setKeyboardDim_amount_withDuration___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
  }

  return [*(*(a1 + 32) + 1128) setAlpha:v1];
}

- (void)setDisableInteraction:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 setDisableInteraction:?];
  [(UIKeyboardLayoutStar *)self setKeyboardDim:v3];
}

- (void)setKeyboardDim:(BOOL)a3
{
  v3 = a3;
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 && v3;
  if (v5)
  {
    [(UIKBScreenTraits *)self->super._screenTraits idiom];
    v6 = 0.55;
    v7 = 0.15;
    v8 = 0.55;
  }

  else
  {
    v6 = 1.0;
    if ([(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord])
    {
      v8 = 0.25;
    }

    else
    {
      v8 = 1.0;
    }

    v7 = 0.0;
  }

  v16[0] = &unk_1EFE312D0;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v17[0] = v9;
  v16[1] = &unk_1EFE312E8;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v17[1] = v10;
  v16[2] = &unk_1EFE31288;
  v11 = MEMORY[0x1E696AD98];
  v12 = [(UIKeyboardLayoutStar *)self renderConfig];
  [v12 lightKeycapOpacity];
  v13 = [v11 numberWithDouble:?];
  v17[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  liveKeyplaneView = self->_liveKeyplaneView;
  if (liveKeyplaneView)
  {
    [(TUIKeyplaneView *)liveKeyplaneView dimKeys:v14];
  }

  [(UIKBKeyplaneView *)self->_keyplaneView dimKeys:v14];
  [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator dimKeys:v14];
  if (!v5)
  {
    [(UIKeyboardLayoutStar *)self setKeyboardDim:0 amount:v6 withDuration:v7];
  }
}

- (void)showPopupView:(int64_t)a3 withKey:(id)a4 popupInfo:(id)a5 force:(BOOL)a6
{
  v15 = a4;
  v10 = a5;
  if (self->_isOutOfBounds)
  {
    a3 = -2;
  }

  if (a6 || [v15 flickDirection] != a3)
  {
    v11 = [(UIKeyboardLayoutStar *)self slideBehaviour];

    if (!v11)
    {
      v12 = objc_alloc_init(UISelectionFeedbackGenerator);
      [(UIKeyboardLayoutStar *)self setSlideBehaviour:v12];

      v13 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [v13 userInteractionStarted];
    }

    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
    {
      v14 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [v14 selectionChanged];
    }

    [(UIKeyboardLayoutStar *)self populateFlickPopupsForKey:v15];
    [v15 setFlickDirection:a3];
    [(UIKeyboardLayoutStar *)self setKeyboardDim:1];
    [(UIKeyboardLayoutStar *)self setState:16 forKey:v15];
  }
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v4 = a3;
  if ([v4 sizeDidChange])
  {
    [v4 size];
    [(UIView *)self setSize:?];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIView *)&v5 _didChangeKeyplaneWithContext:v4];
}

- (id)keyplaneView:(id)a3 containingViewForActiveKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKeyboardLayoutStar *)self delegate];
  if (v8 && (v9 = v8, [(UIKeyboardLayoutStar *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(UIKeyboardLayoutStar *)self delegate];
    v13 = [v12 keyboardLayout:self containingViewForActiveKey:v7 inKeyplaneView:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_continuousPathSpotlightEffectEnabled
{
  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:*MEMORY[0x1E69D9820]];

  return v3;
}

- (UIKeyboardPathEffectView)pathEffectView
{
  v45[8] = *MEMORY[0x1E69E9840];
  if (!self->_pathEffectView)
  {
    v3 = [(UIView *)self _rootInputWindowController];

    if (v3)
    {
      v4 = [(UIView *)self _rootInputWindowController];
      v5 = [v4 _pathEffectView];
      pathEffectView = self->_pathEffectView;
      self->_pathEffectView = v5;

      [(UIKeyboardLayoutStar *)self removePathEffectViewConstraintsIfNeeded];
      v7 = [(UIView *)self->_pathEffectView topAnchor];
      v8 = [(UIView *)self topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8 constant:-100.0];

      v10 = [(UIView *)self->_pathEffectView leftAnchor];
      v11 = [(UIView *)self leftAnchor];
      v44 = [v10 constraintEqualToAnchor:v11 constant:-100.0];

      v12 = [(UIView *)self->_pathEffectView bottomAnchor];
      v13 = [(UIView *)self bottomAnchor];
      v43 = [v12 constraintEqualToAnchor:v13 constant:100.0];

      v14 = [(UIView *)self->_pathEffectView rightAnchor];
      v15 = [(UIView *)self rightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:100.0];

      v17 = v9;
      LODWORD(v18) = 1132068864;
      [v9 setPriority:v18];
      LODWORD(v19) = 1132068864;
      [v44 setPriority:v19];
      LODWORD(v20) = 1132068864;
      [v43 setPriority:v20];
      LODWORD(v21) = 1132068864;
      [v16 setPriority:v21];
      v22 = [(UIView *)self->_pathEffectView topAnchor];
      v23 = [(UIView *)self window];
      v24 = [v23 topAnchor];
      v42 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      v25 = [(UIView *)self->_pathEffectView leftAnchor];
      v26 = [(UIView *)self window];
      v27 = [v26 leftAnchor];
      v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27];

      v29 = [(UIView *)self->_pathEffectView bottomAnchor];
      v30 = [(UIView *)self window];
      v31 = [v30 bottomAnchor];
      v32 = [v29 constraintLessThanOrEqualToAnchor:v31];

      v33 = [(UIView *)self->_pathEffectView rightAnchor];
      v34 = [(UIView *)self window];
      v35 = [v34 rightAnchor];
      v36 = [v33 constraintLessThanOrEqualToAnchor:v35];

      v45[0] = v17;
      v45[1] = v44;
      v45[2] = v43;
      v45[3] = v16;
      v45[4] = v42;
      v45[5] = v28;
      v45[6] = v32;
      v45[7] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:8];
      pathEffectViewConstraints = self->_pathEffectViewConstraints;
      self->_pathEffectViewConstraints = v37;

      [MEMORY[0x1E69977A0] activateConstraints:self->_pathEffectViewConstraints];
      v39 = [(UIView *)self window];
      [v39 layoutIfNeeded];
    }
  }

  v40 = self->_pathEffectView;

  return v40;
}

- (void)_transitionToContinuousPathState:(int64_t)a3 forTouchInfo:(id)a4
{
  v10 = a4;
  v6 = [(UIKeyboardLayoutStar *)self _allowContinuousPathUI];
  v7 = v10;
  if (v6)
  {
    [v10 setContinuousPathState:a3];
    if (a3 == 6)
    {
      v8 = self;
      v9 = 1;
    }

    else
    {
      if (a3 != 5)
      {
        v7 = v10;
        if (a3 != 4)
        {
          goto LABEL_10;
        }

        [(UIKeyboardLayoutStar *)self didBeginContinuousPath];
        goto LABEL_9;
      }

      v8 = self;
      v9 = 0;
    }

    [(UIKeyboardLayoutStar *)v8 finishContinuousPathView:v9];
LABEL_9:
    v7 = v10;
  }

LABEL_10:
}

- (void)transitionToPunctuationKeysVisible:(BOOL)a3
{
  v3 = a3;
  v33[3] = *MEMORY[0x1E69E9840];
  if (!self->_keyplaneTransformationAreaView)
  {
    v5 = [UIView alloc];
    [(UIView *)self bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    keyplaneTransformationAreaView = self->_keyplaneTransformationAreaView;
    self->_keyplaneTransformationAreaView = v6;

    [(UIView *)self->_keyplaneTransformationAreaView setUserInteractionEnabled:0];
    [(UIView *)self addSubview:self->_keyplaneTransformationAreaView];
  }

  v19 = v3;
  if ([(UIKeyboardLayoutStar *)self _continuousPathModalPunctuationPlaneEnabled]&& self->_showsPunctuationKeysOnPrimaryKeyplane != v3)
  {
    [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
    v9 = [(UIView *)self _rootInputWindowController];
    v8 = [v9 inputViewSnapshotOfView:self->_keyplaneView afterScreenUpdates:0];

    [(UIView *)self->_keyplaneTransformationAreaView addSubview:v8];
    self->_showsPunctuationKeysOnPrimaryKeyplane = v3;
    [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
    [(UIView *)self->_keyplaneView forceDisplayIfNeeded];
  }

  else
  {
    v8 = 0;
  }

  v32[0] = &unk_1EFE31378;
  v32[1] = &unk_1EFE31348;
  v33[0] = &unk_1EFE2E728;
  v33[1] = &unk_1EFE2E708;
  v32[2] = &unk_1EFE31288;
  v33[2] = &unk_1EFE2E728;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v30[0] = &unk_1EFE31378;
  v30[1] = &unk_1EFE31348;
  v31[0] = &unk_1EFE2E708;
  v31[1] = &unk_1EFE2E708;
  v30[2] = &unk_1EFE31288;
  v31[2] = &unk_1EFE2E708;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v28[0] = &unk_1EFE31378;
  v28[1] = &unk_1EFE31348;
  v29[0] = &unk_1EFE2E728;
  v29[1] = &unk_1EFE2E728;
  v28[2] = &unk_1EFE31288;
  v12 = MEMORY[0x1E696AD98];
  v13 = [(UIKeyboardLayoutStar *)self renderConfig];
  [v13 lightKeycapOpacity];
  v14 = [v12 numberWithDouble:?];
  v29[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__UIKeyboardLayoutStar_ContinuousPath__transitionToPunctuationKeysVisible___block_invoke;
  v22[3] = &unk_1E70FF800;
  v23 = v8;
  v24 = self;
  v27 = v19;
  v25 = v10;
  v26 = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__UIKeyboardLayoutStar_ContinuousPath__transitionToPunctuationKeysVisible___block_invoke_2;
  v20[3] = &unk_1E70F5AC0;
  v21 = v23;
  v16 = v23;
  v17 = v15;
  v18 = v10;
  [UIView animateWithDuration:6 delay:v22 options:v20 animations:0.23 completion:0.0];
}

uint64_t __75__UIKeyboardLayoutStar_ContinuousPath__transitionToPunctuationKeysVisible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 688);
  v3 = 56;
  if (*(a1 + 64))
  {
    v3 = 48;
  }

  v4 = *(a1 + v3);

  return [v2 dimKeys:v4];
}

uint64_t __75__UIKeyboardLayoutStar_ContinuousPath__transitionToPunctuationKeysVisible___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

- (void)didBeginContinuousPath
{
  liveKeyplaneView = self->_liveKeyplaneView;
  if (liveKeyplaneView)
  {
    [(TUIKeyplaneView *)liveKeyplaneView deactivateKeys];
  }

  if ([(UIKeyboardLayoutStar *)self supportsSupplementalDisplayString])
  {
    v4 = [(UIKBTree *)self->_keyboard name];
    if ([v4 containsString:@"Thai"])
    {
      shift = self->_shift;

      if (shift)
      {
        v6 = +[UIKeyboardImpl activeInstance];
        [v6 setShift:0];

        [(UIKeyboardLayoutStar *)self setShift:0];
      }
    }

    else
    {
    }

    [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
  }

  v7 = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews];

  if (v7)
  {
    [(UIKBKeyplaneView *)self->_keyplaneView deactivateKeys];
  }

  v8 = [(UIKeyboardLayout *)self typingStyleEstimator];
  [v8 beganContinuousPath];

  v9 = [(UIKeyboardLayoutStar *)self pathEffectView];
  self->_isContinuousPathUnderway = 1;
  [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:1];
  if (self->_pathEffectGlowView)
  {
    goto LABEL_15;
  }

  if ([(UIKeyboardLayoutStar *)self _continuousPathSpotlightEffectEnabled])
  {
    v10 = [UIImage kitImageNamed:@"UIKeyboardContinuousPathEffectGlow.png"];
    v11 = [[UIImageView alloc] initWithImage:v10];
    pathEffectGlowView = self->_pathEffectGlowView;
    self->_pathEffectGlowView = v11;

    [(UIView *)self->_pathEffectGlowView setUserInteractionEnabled:0];
  }

  if (self->_pathEffectGlowView)
  {
LABEL_15:
    v13 = [(UIKBKeyplaneView *)self->_keyplaneView keyplaneMaskView];
    [v13 addSubview:self->_pathEffectGlowView];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__UIKeyboardLayoutStar_ContinuousPath__didBeginContinuousPath__block_invoke;
  v17[3] = &unk_1E70F3590;
  v17[4] = self;
  [UIView animateWithDuration:50331648 delay:v17 options:0 animations:0.2 completion:0.0];
  v14 = self->_pathEffectGlowView;
  if (v14)
  {
    [(UIView *)v14 setAlpha:0.0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__UIKeyboardLayoutStar_ContinuousPath__didBeginContinuousPath__block_invoke_2;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    v15 = _Block_copy(v16);
    [UIView animateWithDuration:50331648 delay:v15 options:0 animations:0.45 completion:0.0];
  }
}

void __62__UIKeyboardLayoutStar_ContinuousPath__didBeginContinuousPath__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) renderConfig];
  v3 = [v2 lightKeyboard];

  v4 = [*(a1 + 32) pathEffectView];
  v6 = v4;
  v5 = 0.4;
  if (!v3)
  {
    v5 = 0.5;
  }

  [v4 setAlpha:v5];
}

uint64_t __62__UIKeyboardLayoutStar_ContinuousPath__didBeginContinuousPath__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _continuousPathSpotlightEffectEnabled];
  if (result)
  {
    v3 = *(*(a1 + 32) + 1384);

    return [v3 setAlpha:1.0];
  }

  return result;
}

- (void)addContinuousPathPoint:(CGPoint)a3 withTimestamp:(double)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_pathEffectGlowView)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__UIKeyboardLayoutStar_ContinuousPath__addContinuousPathPoint_withTimestamp___block_invoke;
    v9[3] = &unk_1E70F3B20;
    v9[4] = self;
    *&v9[5] = a3.x + -150.0;
    *&v9[6] = a3.y + -150.0;
    v10 = vdupq_n_s64(0x4072C00000000000uLL);
    [UIView animateWithDuration:v9 animations:0.1];
  }

  v7 = [(UIKeyboardLayoutStar *)self pathEffectView];
  v8 = [(UIKeyboardLayoutStar *)self pathEffectView];
  [(UIView *)self convertPoint:v8 toView:x, y];
  [v7 addPoint:? force:? timestamp:?];
}

- (void)clearContinuousPathView
{
  self->_isContinuousPathUnderway = 0;
  [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
  if (self->_pathEffectView)
  {
    v3 = [(UIKeyboardLayoutStar *)self pathEffectView];
    [v3 buildOut];

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__UIKeyboardLayoutStar_ContinuousPath__clearContinuousPathView__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView animateWithDuration:v4 animations:0.2];
  }
}

void __63__UIKeyboardLayoutStar_ContinuousPath__clearContinuousPathView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pathEffectView];
  [v1 setAlpha:0.0];
}

- (void)finishContinuousPathView:(BOOL)a3
{
  v3 = a3;
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = [(UIKeyboardLayout *)self typingStyleEstimator];
  v6 = v5;
  if (v3)
  {
    [v5 cancelContinuousPath];
  }

  else
  {
    [v5 endedContinuousPath];
  }

  if (self->_isContinuousPathUnderway)
  {
    self->_isContinuousPathUnderway = 0;
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 updateChangeTimeAndIncrementCount];

    [(UIKeyboardLayoutStar *)self touchModalDoubleConsonantKeysTimer];
    v8 = [(UIKeyboardLayoutStar *)self pathEffectView];
    [v8 buildOut];

    v16[0] = &unk_1EFE31378;
    v16[1] = &unk_1EFE31348;
    v17[0] = &unk_1EFE2E728;
    v17[1] = &unk_1EFE2E728;
    v16[2] = &unk_1EFE31288;
    v9 = MEMORY[0x1E696AD98];
    v10 = [(UIKeyboardLayoutStar *)self renderConfig];
    [v10 lightKeycapOpacity];
    v11 = [v9 numberWithDouble:?];
    v17[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__UIKeyboardLayoutStar_ContinuousPath__finishContinuousPathView___block_invoke;
    v14[3] = &unk_1E70F35B8;
    v14[4] = self;
    v15 = v12;
    v13 = v12;
    [UIView animateWithDuration:v14 animations:0.3];
  }
}

uint64_t __65__UIKeyboardLayoutStar_ContinuousPath__finishContinuousPathView___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 688) dimKeys:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1384);

  return [v2 setAlpha:0.0];
}

- (void)touchModalDoubleConsonantKeysTimer
{
  dismissModalDoubleConsonantKeys = self->_dismissModalDoubleConsonantKeys;
  if (!dismissModalDoubleConsonantKeys)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"UIContinuousPathGuideTimer"];

    if (v5)
    {
      [v5 doubleValue];
      if (v6 == 0.0)
      {
        [(UIKeyboardLayoutStar *)self handleDoubleConsonantKeysTimerFired];
LABEL_8:

        dismissModalDoubleConsonantKeys = self->_dismissModalDoubleConsonantKeys;
        goto LABEL_9;
      }

      v7 = v6;
    }

    else
    {
      v7 = 2.0;
    }

    v8 = [[UIDelayedAction alloc] initWithTarget:self action:sel_handleDoubleConsonantKeysTimerFired userInfo:0 delay:v7];
    v9 = self->_dismissModalDoubleConsonantKeys;
    self->_dismissModalDoubleConsonantKeys = v8;

    goto LABEL_8;
  }

LABEL_9:

  [(UIDelayedAction *)dismissModalDoubleConsonantKeys touch];
}

- (void)handleDoubleConsonantKeysTimerFired
{
  v3 = self->_dismissModalDoubleConsonantKeys;
  objc_initWeak(&location, self);
  if (qword_1ED4932C0 != -1)
  {
    dispatch_once(&qword_1ED4932C0, &__block_literal_global_2085);
  }

  v4 = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__UIKeyboardLayoutStar_ContinuousPath__handleDoubleConsonantKeysTimerFired__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  v8 = self;
  objc_copyWeak(&v9, &location);
  [v4 addTask:v6 breadcrumb:qword_1ED4932B8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__UIKeyboardLayoutStar_ContinuousPath__handleDoubleConsonantKeysTimerFired__block_invoke()
{
  v0 = [&__block_literal_global_2087 copy];
  v1 = qword_1ED4932B8;
  qword_1ED4932B8 = v0;
}

void __75__UIKeyboardLayoutStar_ContinuousPath__handleDoubleConsonantKeysTimerFired__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1144))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained transitionToPunctuationKeysVisible:0];
      [v5 cancelModalDoubleConsonantKeysTimer];
    }

    v3 = v6;
  }

  [v3 returnExecutionToParent];
}

@end