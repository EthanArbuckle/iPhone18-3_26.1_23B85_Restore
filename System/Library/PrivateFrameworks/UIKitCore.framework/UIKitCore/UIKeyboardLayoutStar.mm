@interface UIKeyboardLayoutStar
+ (CGSize)keyboardSizeForInputMode:(id)mode screenTraits:(id)traits keyboardType:(int64_t)type;
+ (Class)_subclassForScreenTraits:(id)traits;
+ (id)keyboardFromFactoryWithName:(id)name screenTraits:(id)traits;
+ (id)keyboardWithName:(id)name screenTraits:(id)traits;
+ (id)sharedPunctuationCharacterSet;
+ (id)sharedRivenKeyplaneGenerator;
+ (void)accessibilitySensitivityChanged;
- (BOOL)_allowContinuousPathUI;
- (BOOL)_allowPaddle;
- (BOOL)_allowStartingContinuousPathForTouchInfo:(id)info alreadyActiveKeyExisting:(BOOL)existing;
- (BOOL)_continuousPathModalPunctuationPlaneEnabled;
- (BOOL)_continuousPathSpotlightEffectEnabled;
- (BOOL)_handleTouchForEmojiInputView;
- (BOOL)_pointAllowedInStaticHitBuffer:(CGPoint)buffer;
- (BOOL)_shouldAttemptToAddSupplementaryControlKeys;
- (BOOL)_shouldSwapGlobeAndMore;
- (BOOL)_stringContainsCurrencyCharacters:(id)characters;
- (BOOL)allKeyplanesHaveSameHeight;
- (BOOL)canAddRomanSwitchKey;
- (BOOL)canForceTouchUUIDCommit:(id)commit inWindow:(id)window;
- (BOOL)canMultitap;
- (BOOL)canProduceString:(id)string;
- (BOOL)canReuseKeyplaneView;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)globeKeyDisplaysAsEmojiKey;
- (BOOL)handRestRecognizerShouldNeverIgnoreTouchState:(id)state fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint forRestingState:(unint64_t)restingState otherRestedTouchLocations:(id)locations;
- (BOOL)handleFlick:(id)flick;
- (BOOL)hasAccentKey;
- (BOOL)hasActiveContinuousPathInput;
- (BOOL)hasActiveKeys;
- (BOOL)hasCandidateKeys;
- (BOOL)ignoreWriteboard;
- (BOOL)isDeadkeyInput:(id)input;
- (BOOL)isEmojiKeyplane;
- (BOOL)isGeometricShiftOrMoreKeyForTouch:(id)touch;
- (BOOL)isHandwritingPlane;
- (BOOL)isKeyScriptSwitchKey:(id)key;
- (BOOL)isLongPressedKey:(id)key;
- (BOOL)isMultitapKey:(id)key;
- (BOOL)isResized;
- (BOOL)isShiftKeyPlaneChooser;
- (BOOL)keyHasAccentedVariants:(id)variants;
- (BOOL)keyplaneContainsDismissKey;
- (BOOL)keyplaneContainsEmojiKey;
- (BOOL)keyplaneIsSplit;
- (BOOL)keyplaneSupportsResizingGesture;
- (BOOL)keyplaneUsesResizingOffset;
- (BOOL)performReturnAction;
- (BOOL)performSpaceAction;
- (BOOL)pinchCanBeginWithTouches:(id)touches andScale:(double)scale;
- (BOOL)pinchSplitGestureEnabled;
- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin;
- (BOOL)shouldCommitPrecedingTouchesForTouchDownWithActions:(unint64_t)actions;
- (BOOL)shouldHideKeyName:(id)name;
- (BOOL)shouldHitTestKey:(id)key;
- (BOOL)shouldIgnoreContinuousPathRequirements;
- (BOOL)shouldIgnoreDistantKey;
- (BOOL)shouldMergeAssistantBarWithKeyboardLayout;
- (BOOL)shouldMergeKey:(id)key;
- (BOOL)shouldRetestKey:(id)key slidOffKey:(id)offKey withKeyplane:(id)keyplane;
- (BOOL)shouldRetestTouchUp:(id)up;
- (BOOL)shouldSendStringForFlick:(id)flick;
- (BOOL)shouldSendTouchUpToInputManager:(id)manager;
- (BOOL)shouldShowDictationKey;
- (BOOL)shouldShowGestureKeyboardIntroduction;
- (BOOL)shouldShowIndicator;
- (BOOL)shouldShowInternationalMenuForKey:(id)key;
- (BOOL)shouldSkipResponseToDotKey:(id)key atPoint:(CGPoint)point;
- (BOOL)shouldSkipResponseToGlobeKey:(id)key atPoint:(CGPoint)point;
- (BOOL)shouldYieldToControlCenterForFlickWithInitialPoint:(CGPoint)point finalPoint:(CGPoint)finalPoint;
- (BOOL)showGestureKeyboardIntroductionIfNeeded;
- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton;
- (BOOL)stretchKeyboardToFitKeyplane:(id)keyplane;
- (BOOL)supportStylingWithKey:(id)key;
- (BOOL)supportsSupplementalDisplayString;
- (BOOL)touchPassesDragThreshold:(id)threshold;
- (BOOL)useDismissForMessagesWriteboard;
- (BOOL)useUndoForMessagesWriteboard;
- (CGImage)cachedCompositeImageWithCacheKey:(id)key;
- (CGImage)renderedImageWithStateFallbacksForToken:(id)token;
- (CGImage)renderedImageWithToken:(id)token;
- (CGImage)renderedKeyplaneWithToken:(id)token split:(BOOL)split;
- (CGPoint)applyError:(CGPoint)error toKey:(id)key;
- (CGPoint)getCenterForKeyUnderLeftIndexFinger;
- (CGPoint)getCenterForKeyUnderRightIndexFinger;
- (CGRect)_paddedKeyUnionFrame;
- (CGRect)dragGestureRectInView:(id)view;
- (CGRect)frameForKeyWithRepresentedString:(id)string;
- (CGRect)frameForKeylayoutName:(id)name;
- (CGRect)frameForKeylayoutName:(id)name onKeyplaneName:(id)keyplaneName;
- (CGRect)frameForLastKeyWithRepresentedString:(id)string;
- (CGSize)handRestRecognizerStandardKeyPixelSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForKeyplane:(id)keyplane;
- (CGSize)stretchFactor;
- (NSString)localizedInputMode;
- (UIEdgeInsets)keyplanePadding;
- (UIKeyboardEmojiKeyDisplayController)emojiKeyManager;
- (UIKeyboardKeyplaneTransitionDelegate)splitKeyplaneTransitionDelegate;
- (UIKeyboardLayoutStar)initWithFrame:(CGRect)frame;
- (UIKeyboardLayoutStarDelegate)delegate;
- (UIKeyboardPathEffectView)pathEffectView;
- (double)biasedKeyboardWidthRatio;
- (double)hitBuffer;
- (double)stretchFactorHeight;
- (id)_analyticsMetadataForTouch:(id)touch keyPressed:(id)pressed;
- (id)_currentKeyplaneTransformationContext;
- (id)_currentLayoutInfo;
- (id)_keyboardLongPressInteractionRegions;
- (id)_keyplaneVariantsKeyForString:(id)string;
- (id)_uniquelyInsertVariantString:(id)string beforeVariants:(id)variants direction:(id)direction;
- (id)_variantsByAppendingDualStringKey:(id)key toVariants:(id)variants;
- (id)_variantsOfCurrencyKey:(id)key language:(id)language;
- (id)activationIndicatorView;
- (id)activeMultitapCompleteKey;
- (id)activeTouchInfoForShift;
- (id)animatableLayout;
- (id)baseKeyForString:(id)string;
- (id)cacheIdentifierForKeyplaneNamed:(id)named;
- (id)cacheTokenForKeyplane:(id)keyplane caseAlternates:(BOOL)alternates;
- (id)candidateList;
- (id)createKeyEventForStringAction:(id)action forKey:(id)key inputFlags:(int)flags;
- (id)createKeyEventForStringAction:(id)action forKey:(id)key touchInfo:(id)info inputFlags:(int)flags;
- (id)currentRepresentedStringForDualDisplayKey:(id)key;
- (id)defaultKeyplaneForKeyplane:(id)keyplane;
- (id)flickPopupStringForKey:(id)key withString:(id)string;
- (id)flickStringForInputKey:(id)key direction:(int64_t)direction;
- (id)generateInfoForTouch:(id)touch;
- (id)getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:(int64_t)row;
- (id)getSortedKeysForDisplayRowHint:(int)hint;
- (id)handRestRecognizerGetHomeRowHint;
- (id)highlightedVariantListForStylingKey:(id)key;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)infoForTouch:(id)touch;
- (id)infoForTouchUUID:(id)d;
- (id)initialKeyplaneNameWithKBStarName:(id)name;
- (id)inputModeToMergeCapsLockKey;
- (id)internationalKeyDisplayStringOnEmojiKeyboard;
- (id)keyForKeyboardName:(id)name screenTraits:(id)traits;
- (id)keyHitTest:(CGPoint)test;
- (id)keyHitTestClosestToPoint:(CGPoint)point;
- (id)keyHitTestClosestToPoint:(CGPoint)point inKeys:(id)keys;
- (id)keyHitTestContainingPoint:(CGPoint)point;
- (id)keyHitTestWithoutCharging:(CGPoint)charging;
- (id)keyViewAnimator;
- (id)keyViewHitTestForPoint:(CGPoint)point;
- (id)keyWithRepresentedString:(id)string;
- (id)keylistContainingKey:(id)key;
- (id)keyplaneFactory;
- (id)keyplaneForKey:(id)key;
- (id)keyplaneNameForRevertAfterTouch;
- (id)keyplaneNamed:(id)named;
- (id)keyplaneView:(id)view containingViewForActiveKey:(id)key;
- (id)popupKeyViews;
- (id)simulateTouch:(CGPoint)touch;
- (id)simulateTouchForCharacter:(id)character errorVector:(CGPoint)vector shouldTypeVariants:(BOOL)variants baseKeyForVariants:(BOOL)forVariants;
- (id)splitNameForKeyplane:(id)keyplane;
- (id)splitNameForKeyplaneName:(id)name;
- (id)splitTransitionDelegate;
- (id)synthesizeTouchUpEventForKey:(id)key;
- (id)touchInfoForKey:(id)key;
- (id)unprocessedTouchEventsForTouchInfo:(id)info touchStage:(int)stage forcedKeyCode:(int)code;
- (id)viewForKey:(id)key;
- (int)displayTypeHintForMoreKey;
- (int)displayTypeHintForShiftKey;
- (int)keycodeForKey:(id)key;
- (int)stateForDictationKey:(id)key;
- (int)stateForKey:(id)key;
- (int)stateForKeyplaneSwitchKey:(id)key;
- (int)stateForManipulationKey:(id)key;
- (int)stateForMultitapReverseKey:(id)key;
- (int)stateForShiftKey:(id)key;
- (int)stateForStylingKey:(id)key;
- (int)visualStyleForKeyboardIfSplit:(BOOL)split;
- (int64_t)currentHandBias;
- (int64_t)defaultSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions;
- (unint64_t)downActionFlagsForKey:(id)key;
- (unint64_t)keyplaneShiftState;
- (unint64_t)textEditingKeyMask;
- (unint64_t)upActionFlagsForKey:(id)key;
- (unsigned)getHandRestRecognizerState;
- (void)_addExtraControlKeysIfNecessary;
- (void)_addResizeTransformationsIfNecessary;
- (void)_autoSplit:(id)split;
- (void)_cleanUpBlinkAssertionIfNecessary;
- (void)_didChangeKeyplaneWithContext:(id)context;
- (void)_didTapBiasEscapeButton:(id)button;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_recordKeystrokeStatisticForKeyPress;
- (void)_setBiasEscapeButtonVisible:(BOOL)visible;
- (void)_setReturnKeyEnabled:(BOOL)enabled withDisplayName:(id)name withType:(int)type;
- (void)_swapGlobeAndMoreKeysIfNecessary;
- (void)_transformCarPlayIfNecessary;
- (void)_transformFloatingKeyboardIfNecessary;
- (void)_transitionToContinuousPathState:(int64_t)state forTouchInfo:(id)info;
- (void)_updateSupplementaryKeys;
- (void)addContinuousPathPoint:(CGPoint)point withTimestamp:(double)timestamp;
- (void)annotateKeysWithDeveloperPunctuation;
- (void)annotateWriteboardDisplayTypeHintForKeyIfNeeded;
- (void)calculateReachabilityScoreWithKey:(id)key keyError:(CGPoint)error;
- (void)cancelDelayedCentroidUpdate;
- (void)cancelModalDoubleConsonantKeysTimer;
- (void)cancelMultitapTimer;
- (void)cancelTouchIfNecessaryForInfo:(id)info forResting:(BOOL)resting;
- (void)cancelTouchesForTwoFingerTapGesture:(id)gesture;
- (void)changeToKeyplane:(id)keyplane;
- (void)cleanupPreviousKeyboardWithNewInputTraits:(id)traits;
- (void)clearAllTouchInfo;
- (void)clearContinuousPathView;
- (void)clearHandwritingStrokesIfNeededAndNotify:(BOOL)notify;
- (void)clearInfoForTouch:(id)touch forResting:(BOOL)resting;
- (void)clearKeyAnnotationsIfNecessary;
- (void)clearTransientState;
- (void)clearUnusedObjects:(BOOL)objects;
- (void)completeCommitTouchesPrecedingTouchDownWithKey:(id)key withActions:(unint64_t)actions executionContext:(id)context;
- (void)completeDeleteActionForTouchDownWithActions:(unint64_t)actions executionContext:(id)context;
- (void)completeHitTestForTouchDown:(id)down executionContext:(id)context;
- (void)completeHitTestForTouchDragged:(id)dragged hitKey:(id)key;
- (void)completeRetestForTouchUp:(id)up timestamp:(double)timestamp interval:(double)interval executionContext:(id)context;
- (void)completeSendStringActionForTouchDownWithKey:(id)key withActions:(unint64_t)actions executionContext:(id)context;
- (void)completeSendStringActionForTouchUp:(id)up withActions:(unint64_t)actions timestamp:(double)timestamp interval:(double)interval didLongPress:(BOOL)press prevActions:(unint64_t)prevActions executionContext:(id)context;
- (void)continueFromInternationalActionForTouchUp:(id)up withActions:(unint64_t)actions timestamp:(double)timestamp interval:(double)interval didLongPress:(BOOL)press prevActions:(unint64_t)prevActions executionContext:(id)context;
- (void)createLayoutFromName:(id)name;
- (void)deactivateActiveKey;
- (void)deactivateActiveKeys;
- (void)deactivateActiveKeysClearingTouchInfo:(BOOL)info clearingDimming:(BOOL)dimming;
- (void)dealloc;
- (void)deleteHandwritingStrokesAtIndexes:(id)indexes;
- (void)didBeginContinuousPath;
- (void)didClearInput;
- (void)didDetectPinchWithSeparation:(double)separation;
- (void)didEndIndirectSelectionGesture:(BOOL)gesture;
- (void)didMoveToWindow;
- (void)didRotate;
- (void)didTriggerDestructiveRenderConfigChange;
- (void)dismissGestureKeyboardIntroduction;
- (void)divideKeysIntoLeft:(id)left right:(id)right;
- (void)downActionShiftWithKey:(id)key;
- (void)endMultitapForKey:(id)key;
- (void)fadeWithInvocation:(id)invocation;
- (void)finishContinuousPathView:(BOOL)view;
- (void)finishSliderBehaviorFeedback;
- (void)finishSplitTransitionWithCompletion:(id)completion;
- (void)finishSplitWithCompletion:(id)completion;
- (void)flushKeyCache:(id)cache;
- (void)handRestRecognizerNotifyRestForBegin:(BOOL)begin location:(CGPoint)location timestamp:(double)timestamp pathIndex:(int)index touchUUID:(id)d context:(id)context;
- (void)handleDelayedCentroidUpdate;
- (void)handleDismissFlickView;
- (void)handleDismissFlickView:(id)view;
- (void)handleDoubleConsonantKeysTimerFired;
- (void)handleKeyboardMenusForTouch:(id)touch;
- (void)handleMultitapTimerFired;
- (void)handlePopupView;
- (void)handlePopupView:(id)view;
- (void)incrementPunctuationIfNeeded:(id)needed;
- (void)installGestureRecognizers;
- (void)layoutSubviews;
- (void)logHandwritingData;
- (void)longPressAction;
- (void)mergeKeysIfNeeded;
- (void)multitapExpired;
- (void)multitapInterrupted;
- (void)nextToUseInputModeDidChange:(id)change;
- (void)performHitTestForTouchInfo:(id)info touchStage:(int)stage executionContextPassingUIKBTree:(id)tree;
- (void)pinchDidConsumeTouch:(id)touch;
- (void)pinchHandler:(id)handler;
- (void)playKeyClickSoundForKey:(id)key;
- (void)playKeyClickSoundOnDownForKey:(id)key;
- (void)playKeyFeedbackIfNecessaryForTouchDownOnKey:(id)key touchInfo:(id)info;
- (void)playKeyReleaseSoundForKey:(id)key;
- (void)populateFlickPopupsForKey:(id)key;
- (void)prepareForFloatingTransition:(BOOL)transition;
- (void)prepareForSplitTransition;
- (void)preparePopupVariantsForKey:(id)key onKeyplane:(id)keyplane;
- (void)prepareSliderBehaviorFeedback;
- (void)presentModalDisplayForKey:(id)key;
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
- (void)resetPanAlternativesForEndedTouch:(id)touch;
- (void)resizeKeyplaneAndRedraw:(BOOL)redraw;
- (void)restoreDefaultsForAllKeys;
- (void)restoreDefaultsForKey:(id)key;
- (void)rollbackKeyplaneTransformations;
- (void)setAction:(SEL)action forKey:(id)key;
- (void)setAutoshift:(BOOL)autoshift;
- (void)setCurrencyKeysForCurrentLocaleOnKeyplane:(id)keyplane;
- (void)setDisableInteraction:(BOOL)interaction;
- (void)setHideKeysUnderIndicator:(BOOL)indicator;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setKeyboardBias:(int64_t)bias;
- (void)setKeyboardDim:(BOOL)dim;
- (void)setKeyboardDim:(BOOL)dim amount:(double)amount withDuration:(double)duration;
- (void)setKeyboardName:(id)name appearance:(int64_t)appearance;
- (void)setKeyplaneName:(id)name;
- (void)setLabel:(id)label forKey:(id)key;
- (void)setLayoutTag:(id)tag;
- (void)setLongPressAction:(SEL)action forKey:(id)key;
- (void)setMultitapReverseKeyState;
- (void)setNeedsVirtualDriftUpdate;
- (void)setPasscodeOutlineAlpha:(double)alpha;
- (void)setPercentSignKeysForCurrentLocaleOnKeyplane:(id)keyplane;
- (void)setRenderConfig:(id)config updateKeyplane:(BOOL)keyplane;
- (void)setReturnKeyEnabled:(BOOL)enabled withDisplayName:(id)name withType:(int)type;
- (void)setShift:(BOOL)shift;
- (void)setSplit:(BOOL)split animated:(BOOL)animated;
- (void)setSplitProgress:(double)progress;
- (void)setState:(int)state forKey:(id)key;
- (void)setTarget:(id)target forKey:(id)key;
- (void)setTextEditingTraits:(id)traits;
- (void)setToInitialKeyplane;
- (void)setTrackpadMode:(BOOL)mode animated:(BOOL)animated;
- (void)showFlickView:(int64_t)view withKey:(id)key flickString:(id)string;
- (void)showKeyboardWithInputMode:(id)mode renderConfig:(id)config inputTraits:(id)traits screenTraits:(id)screenTraits splitTraits:(id)splitTraits reload:(BOOL)reload;
- (void)showMenu:(id)menu forKey:(id)key;
- (void)showPopupVariantsForKey:(id)key;
- (void)showPopupView:(int64_t)view withKey:(id)key popupInfo:(id)info force:(BOOL)force;
- (void)showSplitTransitionView:(BOOL)view;
- (void)swipeDetected:(id)detected;
- (void)switchKeyplane:(id)keyplane;
- (void)tearDownSplitTransitionView;
- (void)touchCancelled:(id)cancelled forResting:(BOOL)resting executionContext:(id)context;
- (void)touchChanged:(id)changed executionContext:(id)context;
- (void)touchDown:(id)down executionContext:(id)context;
- (void)touchDownWithKey:(id)key withTouchInfo:(id)info atPoint:(CGPoint)point executionContext:(id)context;
- (void)touchDragged:(id)dragged;
- (void)touchDragged:(id)dragged executionContext:(id)context;
- (void)touchModalDoubleConsonantKeysTimer;
- (void)touchMultitapTimer;
- (void)touchUp:(id)up executionContext:(id)context;
- (void)traitCollectionDidChange;
- (void)transitionToModalContinuousPathKeyplane;
- (void)transitionToPunctuationKeysVisible:(BOOL)visible;
- (void)triggerSpaceKeyplaneSwitchIfNecessary;
- (void)typingStyleEstimator:(id)estimator didChangeTypingStyleEstimate:(unint64_t)estimate;
- (void)uninstallGestureRecognizers;
- (void)upActionShift;
- (void)updateAllKeyStates;
- (void)updateAutolocalizedKeysForKeyplane:(id)keyplane;
- (void)updateBackgroundCorners;
- (void)updateBackgroundIfNeeded;
- (void)updateCachedKeyplaneKeycaps;
- (void)updateCurrencySymbolForKey:(id)key withCurrencyString:(id)string;
- (void)updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:(id)view;
- (void)updateGlobeKeyDisplayString;
- (void)updateInputModeLocalizedKeysForKeyplane:(id)keyplane;
- (void)updateKeyCentroids;
- (void)updateKeyboardForKeyplane:(id)keyplane;
- (void)updateLayoutTags;
- (void)updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:(id)keyplane withInputMode:(id)mode;
- (void)updateLocalizedDisplayStringsForKeys:(id)keys;
- (void)updateLocalizedKeys:(BOOL)keys;
- (void)updateLocalizedKeysForKeyplane:(id)keyplane updateAllKeyplanes:(BOOL)keyplanes;
- (void)updateLocalizedKeysOnKeyplane:(id)keyplane;
- (void)updateMoreAndInternationalKeys;
- (void)updatePanAlternativesForTouchInfo:(id)info;
- (void)updatePhysicalKeyboardEvent:(id)event withMarkedInput:(id)input;
- (void)updateReturnKeysIfNeeded;
- (void)updateSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions withPoint:(CGPoint)point;
- (void)updateShiftKeyState;
- (void)updateState:(int)state forKey:(id)key;
- (void)updateStateForKey:(id)key;
- (void)updateTransitionWithFlags:(unint64_t)flags;
- (void)updateUndoKeyState;
- (void)willBeginIndirectSelectionGesture:(BOOL)gesture;
- (void)willMoveToWindow:(id)window;
- (void)willRotate:(int64_t)rotate;
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
    keys = [obj keys];
    v4 = [keys countByEnumeratingWithState:&v37 objects:v44 count:16];
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
            objc_enumerationMutation(keys);
          }

          [(UIKeyboardLayoutStar *)self updateStateForKey:*(*(&v37 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [keys countByEnumeratingWithState:&v37 objects:v44 count:16];
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
          keySet = [v9 keySet];
          subtrees = [keySet subtrees];

          v12 = [subtrees countByEnumeratingWithState:&v29 objects:v42 count:16];
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
                  objc_enumerationMutation(subtrees);
                }

                v16 = *(*(&v29 + 1) + 8 * v15);
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                subtrees2 = [v16 subtrees];
                v18 = [subtrees2 countByEnumeratingWithState:&v25 objects:v41 count:16];
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
                        objc_enumerationMutation(subtrees2);
                      }

                      [(UIKeyboardLayoutStar *)self updateStateForKey:*(*(&v25 + 1) + 8 * v21++)];
                    }

                    while (v19 != v21);
                    v19 = [subtrees2 countByEnumeratingWithState:&v25 objects:v41 count:16];
                  }

                  while (v19);
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [subtrees countByEnumeratingWithState:&v29 objects:v42 count:16];
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
  allKeys = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
    v3 = v6;
    if (keyboardType != 122)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = v6;
  if (v6)
  {
    globeKeyDisplaysAsEmojiKey = [(UIKeyboardLayoutStar *)self globeKeyDisplaysAsEmojiKey];
    v3 = v6;
    if (globeKeyDisplaysAsEmojiKey)
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
    isDeveloperGestureKeybaord = [(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord];
    v5 = off_1E70E9C68;
    if (!isDeveloperGestureKeybaord)
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
      supportsSplit = 0;
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
          cache = [(UIKBTree *)self->_keyplane cache];
          v11 = [cache objectForKey:v9];

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

                      supportsSplit = [(UIKBScreenTraits *)self->super._screenTraits supportsSplit];
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

      if (supportsSplit)
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
    selfCopy = self;
    v8 = v4;
    [UIView performWithoutAnimation:v5];
  }
}

- (BOOL)supportsSupplementalDisplayString
{
  name = [(UIKBTree *)self->_keyboard name];
  if ([name containsString:@"Korean"])
  {
    v4 = 1;
  }

  else
  {
    name2 = [(UIKBTree *)self->_keyboard name];
    v4 = [name2 containsString:@"Thai"];
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
  allKeys = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:*(*(&v12 + 1) + 8 * i)];
        continuousPathState = [v8 continuousPathState];

        if (continuousPathState == 4)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    hasCandidateKeys = [(UIKeyboardLayoutStar *)self hasCandidateKeys];
    if (hasCandidateKeys)
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
      if (!hasCandidateKeys)
      {
        return v5;
      }

      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    if (hasCandidateKeys)
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
      allowsReachableKeyboard = [v6 allowsReachableKeyboard];
      if (liveKeyplaneView)
      {
        if (allowsReachableKeyboard)
        {
          currentHandBias = [(TUIKeyplaneView *)self->_liveKeyplaneView currentHandBias];
LABEL_11:

          return currentHandBias;
        }
      }

      else if (allowsReachableKeyboard)
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

  keys = [(UIKBTree *)self->_keyplane keys];
  if (![keys containsObject:self->_multitapKey] || !-[UIDelayedAction scheduled](self->_multitapAction, "scheduled"))
  {

    goto LABEL_9;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  isShiftLocked = [v5 isShiftLocked];

  if ((isShiftLocked & 1) == 0)
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
    layoutTag = [(UIKeyboardLayoutStar *)self layoutTag];
    adaptiveKeys = [(UIKBTree *)self->_keyplane adaptiveKeys];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = [adaptiveKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(adaptiveKeys);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          if ([v9 hasLayoutTag:layoutTag])
          {
            layoutTag2 = [v9 layoutTag];
            if ([layoutTag2 isEqualToString:layoutTag])
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
                [v9 setLayoutTag:layoutTag passingKeyTest:v41];
                [v9 setVisible:1];
                [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:adaptiveKeys];
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

            useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
            v13 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
            if (useCrescendoLayout)
            {
              v13 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
            }

            [*(&self->super.super.super.super.isa + *v13) deactivateAdaptiveKey:v9];
            v35 = 1;
            goto LABEL_15;
          }
        }

        v6 = [adaptiveKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    v35 = 0;
LABEL_23:
    gestureKeyplaneName = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
    if (gestureKeyplaneName)
    {
      v17 = gestureKeyplaneName;
      v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v18 preferencesActions];
      v20 = [preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"];

      if (v20)
      {
        keyboard = self->_keyboard;
        gestureKeyplaneName2 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
        v23 = [(UIKBTree *)keyboard subtreeWithName:gestureKeyplaneName2];

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
              if ([v29 hasLayoutTag:layoutTag])
              {
                layoutTag3 = [v29 layoutTag];
                v31 = [layoutTag3 isEqualToString:layoutTag];

                if ((v31 & 1) == 0)
                {
                  v36[0] = MEMORY[0x1E69E9820];
                  v36[1] = 3221225472;
                  v36[2] = __40__UIKeyboardLayoutStar_updateLayoutTags__block_invoke_2;
                  v36[3] = &unk_1E7114858;
                  v36[4] = self;
                  [v29 setLayoutTag:layoutTag passingKeyTest:v36];
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
      _currentLayoutInfo = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)keyplane updateFlickKeycapOnKeysWithLayoutInfo:_currentLayoutInfo];
    }
  }
}

- (void)updateCachedKeyplaneKeycaps
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_allKeyplaneKeycaps removeAllObjects];
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keys = [(UIKBTree *)self->_keyplane keys];
  v4 = [keys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(keys);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        displayString = [v8 displayString];
        if (displayString)
        {
          v10 = displayString;
          interactionType = [v8 interactionType];

          if (interactionType != 10)
          {
            v12 = +[UIKeyboardLayout _showSmallDisplayKeyplane];
            displayString2 = [v8 displayString];
            v14 = displayString2;
            if (!v12)
            {
              v15 = [displayString2 uppercaseStringWithLocale:preferredLocale];

              v14 = v15;
            }

            [(NSMutableSet *)self->_allKeyplaneKeycaps addObject:v14];
          }
        }
      }

      v5 = [keys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  modalDisplayView = [(UIKeyboardLayoutStar *)self modalDisplayView];

  if (modalDisplayView)
  {
    modalDisplayView2 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    [modalDisplayView2 removeFromSuperview];

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
    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v4 = [mEMORY[0x1E69D9680] BOOLForPreferenceKey:*MEMORY[0x1E69D9818]];
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
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  name = [(UIKBTree *)self->_keyplane name];
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  v11 = [v5 stringWithFormat:@"%@^%@^%@^%d", v6, localeIdentifier, name, v10];

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

  name = [(UIKBTree *)self->_keyboard name];
  if ([name _containsSubstring:@"HWR"])
  {
    name2 = [(UIKBTree *)self->_keyplane name];
    v3 = [name2 containsString:@"Portrait"];
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
  slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [slideBehaviour deactivate];

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
  keyplaneUsesResizingOffset = [(UIKeyboardLayoutStar *)self keyplaneUsesResizingOffset];
  if (keyplaneUsesResizingOffset)
  {

    LOBYTE(keyplaneUsesResizingOffset) = [(UIKeyboardLayoutStar *)self isHandwritingPlane];
  }

  return keyplaneUsesResizingOffset;
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
  allValues = [(NSMutableDictionary *)self->_extendedTouchInfoMap allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(UIKeyboardLayoutStar *)self cancelTouchIfNecessaryForInfo:*(*(&v8 + 1) + 8 * v7++) forResting:0];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  name = [(UIKBTree *)self->_keyboard name];
  v3 = [(UIKeyboardLayoutStar *)self initialKeyplaneNameWithKBStarName:name];
  [(UIKeyboardLayoutStar *)self setKeyplaneName:v3];
}

- (BOOL)showsDedicatedEmojiKeyAlongsideGlobeButton
{
  keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  if (keyboardType == 122)
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

  return v9 != 0x7FFFFFFFFFFFFFFFLL || keyboardType == 122;
}

- (unint64_t)keyplaneShiftState
{
  name = [(UIKBTree *)self->_keyplane name];
  v4 = [name containsString:@"Uncased"];

  if (v4)
  {
    return 4;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  isAutoShifted = [v6 isAutoShifted];

  if (isAutoShifted)
  {
    return 2;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  isShiftLocked = [v8 isShiftLocked];

  if (isShiftLocked)
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
      sizeDelegate = [(UIKeyboardLayout *)self sizeDelegate];
      orientation = [(UIKeyboardLayout *)self orientation];
      v6 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v6 currentInputMode];
      [sizeDelegate deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:currentInputMode];
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

  isEmojiKeyplane = [(UIKeyboardLayoutStar *)self isEmojiKeyplane];
  isKanaKeyboard = [(UIKBTree *)self->_keyplane isKanaKeyboard];
  numberOfRows = [(UIKBTree *)self->_keyplane numberOfRows];
  isHandwritingPlane = [(UIKeyboardLayoutStar *)self isHandwritingPlane];
  if ([(UIKBTree *)self->_keyboard isFloating]|| isKanaKeyboard || isEmojiKeyplane || !isHandwritingPlane && (numberOfRows & 0xFFFFFFFFFFFFFFFELL) != 4)
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
  preferencesActions = [v3 preferencesActions];
  v5 = ([preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D97F0]] & 1) != 0 || -[UITextInputTraits isSecureTextEntry](self->super._inputTraits, "isSecureTextEntry");

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
          _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
          v12 = [UIKBContinuousPathModalKeysTransformation rollbackKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
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
      _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
      v7 = [UIKBContinuousPathModalKeysTransformation transformKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
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
    preferencesActions = [v4 preferencesActions];
    [preferencesActions rivenSizeFactor:1.0];
    v7 = v6;

    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v8 preferencesActions];
    [preferencesActions2 rivenSizeFactor:1.0];
    if (v10 > 1.0)
    {

      goto LABEL_21;
    }

    if (v7 <= 1.0)
    {
      goto LABEL_27;
    }

    isFloating = [(UIKeyboardLayout *)self isFloating];

    if (!isFloating)
    {
      return 0;
    }

LABEL_21:
    v8 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"More-Key"];
    v15 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
    preferencesActions2 = v15;
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
      visible = [preferencesActions2 visible];
LABEL_28:

      return visible;
    }

LABEL_27:
    visible = 0;
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

  visible = 0;
  if (!self->_externalDictationAndInternationalKeys && (v3 - 23) >= 0xFFFFFFFFFFFFFFFELL)
  {
    name = [(UIKBTree *)self->_keyboard name];
    v14 = [name _containsSubstring:@"HWR"];

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return visible;
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
  currentInputMode = [v3 currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];
  v6 = [normalizedIdentifier isEqualToString:@"emoji"];

  if ((v6 & 1) == 0)
  {
    normalizedEnabledInputModeIdentifiers = [v3 normalizedEnabledInputModeIdentifiers];
    activeUserSelectableInputModeIdentifiers = [v3 activeUserSelectableInputModeIdentifiers];
    if ([normalizedEnabledInputModeIdentifiers containsObject:@"emoji"])
    {
      if ([activeUserSelectableInputModeIdentifiers count] == 2)
      {
        if (UIKeyboardHas10KeyChineseKeyboard())
        {
          currentInputMode2 = [v3 currentInputMode];
          identifier = [currentInputMode2 identifier];
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

      if ([activeUserSelectableInputModeIdentifiers count] == 3 && ((-[UIKBTree visualStyling](self->_keyplane, "visualStyling") & 0x3F) == 0x18 || (-[UIKBTree visualStyling](self->_keyplane, "visualStyling") & 0x3F) == 0x17))
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

            normalizedIdentifier2 = [v17 normalizedIdentifier];
            v19 = [normalizedIdentifier2 isEqualToString:@"emoji"];

            if ((v19 & 1) == 0)
            {
              normalizedIdentifier3 = [v17 normalizedIdentifier];
              IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(normalizedIdentifier3);

              if (IsASCIICapable)
              {
                LODWORD(v25) = 1;
              }

              else
              {
                normalizedIdentifier4 = [v17 normalizedIdentifier];
                v23 = UIKeyboardLayoutSupportsASCIIToggleKey(normalizedIdentifier4);

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
  name = [(UIKBTree *)self->_keyboard name];
  if ([name _containsSubstring:@"HWR"])
  {
    name2 = [(UIKBTree *)self->_keyplane name];
    v5 = [name2 _containsSubstring:@"Letters"];
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
  multitapCompleteKeys = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  if ([multitapCompleteKeys count])
  {
    supportsMultitap = 1;
  }

  else
  {
    multitapForwardKeys = [(UIKeyboardLayoutStar *)self multitapForwardKeys];
    if ([multitapForwardKeys count])
    {
      supportsMultitap = 1;
    }

    else
    {
      supportsMultitap = [(UIKBTree *)self->_keyplane supportsMultitap];
    }
  }

  return supportsMultitap;
}

- (id)candidateList
{
  v2 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Candidate-Selection"];
  v3 = [v2 objectAtIndex:0];

  if (v3)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    candidateController = [v4 candidateController];
  }

  else
  {
    candidateController = 0;
  }

  return candidateController;
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
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];

  if (_rootInputWindowController)
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
      inputDelegate = [v3 inputDelegate];

      if (!inputDelegate)
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

+ (Class)_subclassForScreenTraits:(id)traits
{
  traitsCopy = traits;
  UIKeyboardComputeKeyboardIdiomFromScreenTraits(traitsCopy, [traitsCopy idiom], objc_msgSend(traitsCopy, "isSplit"));
  if ([traitsCopy idiom] == 3 && ((objc_msgSend(traitsCopy, "knobInput") & 1) != 0 || objc_msgSend(traitsCopy, "touchpadInput")))
  {
    selfCopy = objc_opt_class();
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (UIKeyboardLayoutStar)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = UIKeyboardLayoutStar;
  v3 = [(UIKeyboardLayout *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_refreshForDictationAvailablityDidChange name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_refreshForDictationAvailablityDidChange name:@"UIDictationControllerDictationDidFinish" object:0];
    [defaultCenter addObserver:v3 selector:sel_nextToUseInputModeDidChange_ name:@"UITextInputNextInputModeInputModeDidChangeNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didTriggerDestructiveRenderConfigChange name:@"UIAccessibilityBoldTextStatusDidChangeNotification" object:0];
    v24 = objc_alloc_init(_UIKeyboardTypingSpeedLogger);
    typingSpeedLogger = v3->_typingSpeedLogger;
    v3->_typingSpeedLogger = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    keyplaneTransformations = v3->_keyplaneTransformations;
    v3->_keyplaneTransformations = v26;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    prevProgressiveCandidateRequestTime = v3->_prevProgressiveCandidateRequestTime;
    v3->_prevProgressiveCandidateRequestTime = distantPast;

    progressiveCandidateUpdateTimer = v3->_progressiveCandidateUpdateTimer;
    v3->_progressiveCandidateUpdateTimer = 0;

    typingStyleEstimator = [(UIKeyboardLayout *)v3 typingStyleEstimator];
    [typingStyleEstimator setDelegate:v3];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v15[0] = @"UIKeyboardDictationAvailabilityDidChangeNotification";
  v15[1] = @"UITextInputNextInputModeInputModeDidChangeNotification";
  v15[2] = @"UIAccessibilityBoldTextStatusDidChangeNotification";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v6 names:?];

  if (self->_transitionView)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_transitionView];

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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
  candidateController = [v9 candidateController];

  candidateList = [(UIKeyboardLayoutStar *)self candidateList];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = candidateList;
LABEL_13:
    v13 = view;
    if (view)
    {
      if (([view isHidden] & 1) == 0)
      {
        candidateResultSet = [candidateController candidateResultSet];
        hasCandidates = [candidateResultSet hasCandidates];

        if (hasCandidates)
        {
          [(UIView *)self convertPoint:v13 toView:x, y];
          v17 = v16;
          v19 = v18;
          if ([v13 pointInside:eventCopy withEvent:?])
          {
            v8 = [v13 hitTest:eventCopy withEvent:{v17, v19}];

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
    view = [candidateList view];
    goto LABEL_13;
  }

  if ([candidateController activeCandidateViewType])
  {
    view = [candidateController candidateKey];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_18:

LABEL_19:
  v21.receiver = self;
  v21.super_class = UIKeyboardLayoutStar;
  v8 = [(UIView *)&v21 hitTest:eventCopy withEvent:x, y];
LABEL_20:

  return v8;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy && [(UIKeyboardLayoutStar *)self shouldDeactivateWithoutWindow]&& !+[UIKeyboard resizable])
  {
    [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 willMoveToWindow:windowCopy];
}

- (void)clearUnusedObjects:(BOOL)objects
{
  objectsCopy = objects;
  v31 = *MEMORY[0x1E69E9840];
  [(UIKeyboardLayoutStar *)self clearTransientState];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeys];
  if (self->_transitionView)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_transitionView];

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
  keyEnumerator = [(NSMutableDictionary *)self->_keyboards keyEnumerator];
  v10 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        if ([*(*(&v25 + 1) + 8 * i) _containsSubstring:@"Emoji"])
        {
          +[UIKeyboardEmojiKeyDisplayController writeEmojiDefaultsAndReleaseActiveInputView];
          goto LABEL_14;
        }
      }

      v11 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (objectsCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_allKeyplaneViews objectEnumerator];
    v15 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 purgeSubviews];
          [v19 purgeKeyViews];
          [v19 purgeLayerContents];
        }

        v16 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (void)flushKeyCache:(id)cache
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    if (+[UIView _isInAnimationBlock])
    {
      goto LABEL_9;
    }

    userInfo = [cacheCopy userInfo];
    v5 = [userInfo objectForKey:@"UIKeyboardChangedAccessoryOnly"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
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

+ (id)keyboardFromFactoryWithName:(id)name screenTraits:(id)traits
{
  nameCopy = name;
  traitsCopy = traits;
  v7 = traitsCopy;
  if (nameCopy)
  {
    screen = [traitsCopy screen];
    v9 = [UIKBGraphCache graphCacheForScreen:screen];
    graphCache = [v9 graphCache];

    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "idiom")}];
    v13 = [v11 stringWithFormat:@"%@", v12];

    if ([nameCopy hasPrefix:@"Dynamic"])
    {
      v14 = [v13 stringByAppendingString:@"_Dynamic"];

      v13 = v14;
    }

    v15 = [graphCache objectForKey:v13];
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [graphCache setObject:v15 forKey:v13];
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
    sharedKeyboardFactory = [v16 sharedKeyboardFactory];
    v19 = [sharedKeyboardFactory keyboardWithName:nameCopy inCache:v15];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)keyboardWithName:(id)name screenTraits:(id)traits
{
  nameCopy = name;
  traitsCopy = traits;
  if (nameCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [self keyboardFromFactoryWithName:nameCopy screenTraits:traitsCopy];
    if ([nameCopy hasSuffix:@"PasscodePad"] && objc_msgSend(nameCopy, "hasPrefix:", @"Wildcat-"))
    {
      v10 = [self keyboardFromFactoryWithName:@"iPhone-Portrait-NumberPad" screenTraits:traitsCopy];

      v9 = v10;
    }

    if (v9 || ![nameCopy hasSuffix:@"Small"] || (v11 = objc_msgSend(nameCopy, "rangeOfString:options:", @"-", 4), v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v12 = 0;
    }

    else
    {
      v12 = [nameCopy substringFromIndex:v11];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__UIKeyboardLayoutStar_keyboardWithName_screenTraits___block_invoke;
    aBlock[3] = &unk_1E7114830;
    v18 = v12;
    selfCopy = self;
    v19 = traitsCopy;
    v13 = v12;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (!v9)
    {
      v9 = (*(v14 + 2))(v14, nameCopy);
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

+ (CGSize)keyboardSizeForInputMode:(id)mode screenTraits:(id)traits keyboardType:(int64_t)type
{
  modeCopy = mode;
  traitsCopy = traits;
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v10 preferencesActions];
  if ([preferencesActions crescendoEnabled])
  {
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v12 preferencesActions];
    v14 = [preferencesActions2 inputModeSupportsCrescendo:modeCopy screenTraits:traitsCopy];

    if (v14)
    {
      [getTUIKeyplaneViewClass() keyplaneSizeForLayout:modeCopy screenTraits:traitsCopy keyboardType:type];
      v16 = v15;
      v18 = v17;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = UIKeyboardGetKBStarName(modeCopy, traitsCopy, type, 0);
  v20 = [self keyboardWithName:v19 screenTraits:traitsCopy];
  [v20 setIsFloating:{objc_msgSend(traitsCopy, "isFloating")}];
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

  v24 = UIKeyboardGetDerivedKeyboard(modeCopy, traitsCopy, type);
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

- (id)splitNameForKeyplaneName:(id)name
{
  v3 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:name];
  v4 = [v3 stringByAppendingString:@"-split"];

  return v4;
}

- (id)splitNameForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  v5 = [keyplaneCopy stringForProperty:@"split-alternate"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    name = [keyplaneCopy name];
    v7 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:name];
  }

  return v7;
}

- (id)defaultKeyplaneForKeyplane:(id)keyplane
{
  keyboard = self->_keyboard;
  name = [keyplane name];
  v6 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:name];
  v7 = [(UIKBTree *)keyboard subtreeWithName:v6];

  return v7;
}

- (CGRect)dragGestureRectInView:(id)view
{
  v36.receiver = self;
  v36.super_class = UIKeyboardLayoutStar;
  viewCopy = view;
  [(UIKeyboardLayout *)&v36 dragGestureRectInView:viewCopy];
  v6 = v5;
  v8 = v7;
  v9 = [(UIKBTree *)self->_keyplane keysWithString:@"Dismiss", v36.receiver, v36.super_class];
  lastObject = [v9 lastObject];
  [lastObject frame];
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

  [(UIView *)self convertRect:viewCopy toView:width * 0.5 + x - v23 * 0.5, height * 0.5 + y - v8 * 0.5];
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

- (CGRect)frameForKeylayoutName:(id)name onKeyplaneName:(id)keyplaneName
{
  keyboard = self->_keyboard;
  nameCopy = name;
  v7 = [(UIKBTree *)keyboard subtreeWithName:keyplaneName];
  [v7 frameForKeylayoutName:nameCopy];
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

- (CGRect)frameForKeylayoutName:(id)name
{
  nameCopy = name;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    v5 = [nameCopy hasSuffix:@"right"];
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
    name = [(UIKBTree *)self->_keyplane name];
    [(UIKeyboardLayoutStar *)self frameForKeylayoutName:nameCopy onKeyplaneName:name];
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
      name2 = [(UIKBTree *)self->_keyplane name];
      v22 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:name2];

      [(UIKeyboardLayoutStar *)self frameForKeylayoutName:nameCopy onKeyplaneName:v22];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_transitionView];

    v5 = self->_transitionView;
    self->_transitionView = 0;
  }

  objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, 0);
}

- (void)refreshForRivenPreferences
{
  if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
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
    [defaultCenter removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];
  }
}

- (int)visualStyleForKeyboardIfSplit:(BOOL)split
{
  splitCopy = split;
  visualStyle = [(UIKBTree *)self->_keyboard visualStyle];
  visualStyle2 = [(UIKBTree *)self->_keyboard visualStyle];
  if (splitCopy)
  {
    if (visualStyle2 == 102)
    {
      return 106;
    }

    v8 = 109;
    v9 = 108;
  }

  else
  {
    if (visualStyle2 == 106 || [(UIKBTree *)self->_keyboard visualStyle]== 107)
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
    return visualStyle;
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
    visualStyle = [(UIKBTree *)self->_keyboard visualStyle];
    keyplane = self->_keyplane;

    [(UIKBTree *)keyplane setVisualStyle:visualStyle];
  }
}

- (BOOL)allKeyplanesHaveSameHeight
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subtrees = [(UIKBTree *)self->_keyboard subtrees];
  v3 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subtrees);
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

      v4 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (CGSize)sizeForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (liveKeyplaneView = self->_liveKeyplaneView) != 0)
  {
    [(TUIKeyplaneView *)liveKeyplaneView bounds];
    v7 = v6;
    v9 = v8;
  }

  else if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService](UIKeyboard, "canShowEmojiKeyboardInsideStickerPickerService") && (-[UIView superview](self, "superview"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v12 = objc_claimAutoreleasedReturnValue(), [v12 inputDelegateManager], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "keyInputDelegate"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v11, !v14))
  {
    superview = [(UIView *)self superview];
    [superview bounds];
    v7 = v32;
    v9 = v33;
  }

  else
  {
    v15 = UIKeyboardGetCurrentInputMode();
    v16 = UIKeyboardGetDerivedKeyboard(v15, self->super._screenTraits, [(UITextInputTraits *)self->super._inputTraits keyboardType]);

    subtrees = [keyplaneCopy subtrees];
    v18 = [subtrees count];

    if (v18)
    {
      [keyplaneCopy frame];
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
      sizeDelegate = [(UIKeyboardLayout *)self sizeDelegate];
      [sizeDelegate defaultSizeForInterfaceOrientation:{-[UIKeyboardLayout orientation](self, "orientation")}];
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

- (void)updateKeyboardForKeyplane:(id)keyplane
{
  [(UIKeyboardLayoutStar *)self sizeForKeyplane:keyplane];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];

  sizeDelegate = [(UIKeyboardLayout *)self sizeDelegate];
  [sizeDelegate deviceSpecificStaticHitBufferForInterfaceOrientation:-[UIKeyboardLayout orientation](self inputMode:{"orientation"), currentInputMode}];

  [(UIView *)self frame];
  [(UIView *)self setFrame:?];
  homeRowHint = self->_homeRowHint;
  self->_homeRowHint = 0;
}

- (id)keyForKeyboardName:(id)name screenTraits:(id)traits
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v7 = [v5 stringWithFormat:@"%@_%ld", nameCopy, objc_msgSend(traits, "idiom")];

  return v7;
}

- (void)setKeyboardName:(id)name appearance:(int64_t)appearance
{
  nameCopy = name;
  v23 = nameCopy;
  if (!nameCopy)
  {
    NSLog(&cfstr_AttemptToSetKe.isa);
    goto LABEL_24;
  }

  v7 = [(UIKeyboardLayoutStar *)self keyForKeyboardName:nameCopy screenTraits:self->super._screenTraits];
  v8 = [(NSMutableDictionary *)self->_keyboards objectForKey:v7];
  if (v8 || ([objc_opt_class() keyboardWithName:v23 screenTraits:self->super._screenTraits], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = UIKeyboardGetCurrentInputMode();
    localizedInputMode = [(UIKeyboardLayoutStar *)self localizedInputMode];
    if (v10 == localizedInputMode)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 isEqual:localizedInputMode] ^ 1;
    }

    appearanceCopy = appearance;
    if ([v23 isEqualToString:self->_keyboardName] && self->_appearance == appearance && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") != 126 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 3)
    {
      visualStyling = [(UIKBTree *)self->_keyplane visualStyling];
      v13 = (visualStyling & 0x3F) == 3;
      if ((visualStyling & 0x3F) == 3)
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
        [(UIKeyboardLayoutStar *)self setKeyboardAppearance:appearanceCopy];
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
    allValues = [(NSMutableDictionary *)self->_allKeyplaneViews allValues];
    [allValues makeObjectsPerformSelector:sel_purgeSubviews];

    allValues2 = [(NSMutableDictionary *)self->_allKeyplaneViews allValues];
    [allValues2 makeObjectsPerformSelector:sel_purgeFactory];

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
  currentKeyplaneView = [(UIKeyboardLayoutStar *)self currentKeyplaneView];
  activeKeyViews = [currentKeyplaneView activeKeyViews];
  v4 = [activeKeyViews count] != 0;

  return v4;
}

- (BOOL)canProduceString:(id)string
{
  v50 = *MEMORY[0x1E69E9840];
  stringCopy = string;
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
    v33 = stringCopy;
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
          keys = [v9 keys];
          v10 = [keys countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                  objc_enumerationMutation(keys);
                }

                v14 = *(*(&v40 + 1) + 8 * i);
                representedString = [v14 representedString];

                if (representedString)
                {
                  v16 = self->_validInputStrings;
                  fullRepresentedString = [v14 fullRepresentedString];
                  [(NSMutableSet *)v16 addObject:fullRepresentedString];

                  representedString2 = [v14 representedString];
                  if ([v14 displayType] == 7)
                  {
                    secondaryRepresentedStrings = [v14 secondaryRepresentedStrings];
                    v20 = [secondaryRepresentedStrings count];

                    if (v20)
                    {
                      secondaryRepresentedStrings2 = [v14 secondaryRepresentedStrings];
                      firstObject = [secondaryRepresentedStrings2 firstObject];

                      [(NSMutableSet *)self->_validInputStrings addObject:firstObject];
                      v23 = [representedString2 stringByAppendingString:firstObject];

                      representedString2 = v23;
                    }
                  }

                  if ([v14 variantType] == 3)
                  {
                    v24 = [(UIKeyboardLayoutStar *)self _variantsOfCurrencyKey:v14 language:v39];
                    v25 = self->_validInputStrings;
                    v26 = [v24 objectForKeyedSubscript:@"Strings"];
                    [(NSMutableSet *)v25 addObjectsFromArray:v26];
                  }

                  v27 = UIKeyboardRomanAccentVariants(representedString2, v39, 7);
                  v28 = [v27 objectForKey:@"Strings"];

                  [(NSMutableSet *)self->_validInputStrings addObjectsFromArray:v28];
                }
              }

              v11 = [keys countByEnumeratingWithState:&v40 objects:v48 count:16];
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

    stringCopy = v33;
  }

  v29 = stringCopy;
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

- (void)updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:(id)keyplane withInputMode:(id)mode
{
  v38 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  modeCopy = mode;
  keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  v9 = keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0;
  if (v9 && keyboardType != 127)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [keyplaneCopy cachedKeysByKeyName:@"Emoji-International-Key"];
    v18 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v27 = keyplaneCopy;
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
        normalizedIdentifier = [modeCopy normalizedIdentifier];
        v24 = [normalizedIdentifier rangeOfString:@"HWR"];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [modeCopy identifier];
          v26 = UIKeyboardLocalizedString(@"UI-ABC", identifier, 0, @"ABC");
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
  v10 = [keyplaneCopy cachedKeysByKeyName:@"NumberPad-International"];
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = keyplaneCopy;
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
        identifier2 = [modeCopy identifier];
        v17 = UIKeyboardLocalizedString(@"UI-Numbers", identifier2, 0, @"123");
        [v15 setDisplayString:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
LABEL_12:
    keyplaneCopy = v27;
  }

LABEL_13:
}

- (id)internationalKeyDisplayStringOnEmojiKeyboard
{
  if ([(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
  {
    displayString = 0;
  }

  else
  {
    v4 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Emoji-International-Key"];
    displayString = [v4 displayString];
  }

  return displayString;
}

- (void)nextToUseInputModeDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo objectForKey:@"UITextInputNextInputModeInputModeDidChangeKey"];

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:self->_keyplane withInputMode:v6];
  v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Emoji-International-Key"];
  [v5 setRendering:38];
  [(UIKeyboardLayoutStar *)self setState:2 forKey:v5];
}

- (void)updateLocalizedKeysOnKeyplane:(id)keyplane
{
  v72 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = [keyplaneCopy cachedKeysByKeyName:@"Shift-Key"];
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
  v14 = [keyplaneCopy cachedKeysByKeyName:@"More-Key"];
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
  v21 = [keyplaneCopy cachedKeysByKeyName:@"Return-Key"];
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
  v28 = [keyplaneCopy cachedKeysByKeyName:@"Dictation-Key"];
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
  v33 = [keyplaneCopy cachedKeysByKeyName:{@"NumberPad-More", 0}];
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
  inputModeThatInvokeEmoji = [v40 inputModeThatInvokeEmoji];
  v42 = inputModeThatInvokeEmoji;
  if (inputModeThatInvokeEmoji)
  {
    v43 = inputModeThatInvokeEmoji;
  }

  else
  {
    v44 = +[UIKeyboardInputModeController sharedInputModeController];
    v45 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v45 textInputTraits];
    v43 = [v44 nextInputModeInPreferenceListForTraits:textInputTraits updatePreference:0];
  }

  [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringOnEmojiInternationalWithKeyplane:keyplaneCopy withInputMode:v43];
  [(UIKeyboardLayoutStar *)self updateInputModeLocalizedKeysForKeyplane:keyplaneCopy];
}

- (void)updateAutolocalizedKeysForKeyplane:(id)keyplane
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  autolocalizedKeyCacheIterator = [keyplane autolocalizedKeyCacheIterator];
  v5 = [autolocalizedKeyCacheIterator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(autolocalizedKeyCacheIterator);
        }

        [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [autolocalizedKeyCacheIterator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateLocalizedDisplayStringsForKeys:(id)keys
{
  v57 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v47 = UIKeyboardGetCurrentInputMode();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = keysCopy;
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
          localizationKey = [v8 localizationKey];
          if ([localizationKey hasPrefix:@"Localized-Number-"])
          {
            representedString = [localizationKey substringFromIndex:{objc_msgSend(@"Localized-Number-", "length")}];
            keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
            if (keyboardType == 127 || ([MEMORY[0x1E695DF58] preferredLocale], v14 = objc_claimAutoreleasedReturnValue(), v15 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, v14), v14, v15))
            {
              v16 = UIKeyboardGetNumberFormatterForPreferredLocale();
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(representedString, "integerValue")}];
              v18 = [v16 stringFromNumber:v17];

              [v8 setDisplayString:v18];
              if (keyboardType == 127)
              {
                v19 = representedString;
              }

              else
              {
                v19 = v18;
              }

              [v8 setRepresentedString:v19];
            }

            else
            {
              currentLocale = [MEMORY[0x1E695DF58] currentLocale];
              v38 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, currentLocale);

              if (v38)
              {
                v39 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", objc_msgSend(representedString, "integerValue")];
                [v8 setDisplayString:v39];
                [v8 setRepresentedString:v39];
              }

              else
              {
                [v8 setDisplayString:representedString];
                [v8 setRepresentedString:representedString];
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
                v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UI-NumberPad-%u", objc_msgSend(representedString, "integerValue")];
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
            representedString = [v8 representedString];
            if (([representedString isEqualToString:@"NonASCII"] & 1) != 0 || objc_msgSend(representedString, "isEqualToString:", @"ASCIICapable"))
            {
              inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
              identifier = [inputModeToMergeCapsLockKey identifier];

              if (identifier)
              {
                v24 = identifier;

                representedString = v24;
              }
            }

            v25 = UIKeyboardLocalizedString(localizationKey, representedString, 0, 0);
            [v8 setDisplayString:v25];

            goto LABEL_36;
          }

          if (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 2 && [localizationKey hasSuffix:@"TV"])
          {
            v26 = UIKeyboardLocalizedString(localizationKey, 0, 0, 0);
            [v8 setDisplayString:v26];

            displayString = [v8 displayString];

            v28 = 0;
            if (!displayString)
            {
              v28 = [localizationKey substringToIndex:{objc_msgSend(localizationKey, "length") - objc_msgSend(@"TV", "length")}];
            }

            localizationKey = v28;
          }

          if ([localizationKey hasSuffix:@"Caps"])
          {
            v29 = [localizationKey substringToIndex:{objc_msgSend(localizationKey, "length") - objc_msgSend(@"Caps", "length")}];

            v30 = UIKeyboardLocalizedString(v29, 0, 0, 0);
            preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
            v32 = [v30 uppercaseStringWithLocale:preferredLocale];
            [v8 setDisplayString:v32];

            localizationKey = v29;
LABEL_37:

            goto LABEL_38;
          }

          if ([v8 displayType] == 20 && objc_msgSend(v8, "interactionType") == 14)
          {
            if ([localizationKey isEqualToString:@"UI-Numbers"])
            {
              preferredLocale2 = [MEMORY[0x1E695DF58] preferredLocale];
              v41 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v47, preferredLocale2);

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

          if (localizationKey)
          {
            if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:localizationKey])
            {
LABEL_53:
              [v8 setDisplayString:@" "];
              goto LABEL_37;
            }

            v42 = UIKeyboardLocalizedString(localizationKey, 0, 0, 0);
            goto LABEL_50;
          }

          displayString2 = [v8 displayString];
          v45 = [(UIKeyboardLayoutStar *)self shouldHideKeyName:displayString2];

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

- (BOOL)shouldHideKeyName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && ([nameCopy isEqualToString:@"Unlabeled-Space-Key"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @" ") & 1) == 0)
  {
    if ([v5 isEqualToString:@"UI-Space"])
    {
      renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
      colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

      if (colorAdaptiveBackground)
      {
        keyplane = [(UIKeyboardLayoutStar *)self keyplane];
        if (([keyplane gridLayout] & 1) != 0 || -[UIKeyboardLayoutStar isHandwritingPlane](self, "isHandwritingPlane") || -[UIKeyboardLayoutStar is10KeyRendering](self, "is10KeyRendering"))
        {
        }

        else
        {
          keyboard = [(UIKeyboardLayoutStar *)self keyboard];
          isKanaKeyboard = [keyboard isKanaKeyboard];

          if ((isKanaKeyboard & 1) == 0)
          {
            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
            {
              keyboardName = [(UIKeyboardLayoutStar *)self keyboardName];
              v14 = [keyboardName containsString:@"Linear-Keyboard"];

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

- (void)updateInputModeLocalizedKeysForKeyplane:(id)keyplane
{
  v112 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  [(UIKeyboardLayoutStar *)self updateAutolocalizedKeysForKeyplane:keyplaneCopy];
  v79 = UIKeyboardGetCurrentInputMode();
  v5 = UIKeyboardInputModeGetDecimalSeparator(v79);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v75 = keyplaneCopy;
  v6 = [keyplaneCopy cachedKeysByKeyName:@"NumberPad-Dot"];
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
    preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
    localeIdentifier = [preferredLocale localeIdentifier];

    v28 = UIKeyboardTopLevelDomainVariants(localeIdentifier, 3);
    v29 = [v28 objectForKey:@"Strings"];
    lastObject = [v29 lastObject];

    if (lastObject || (UIKeyboardTopLevelDomainVariants(0, 3), v31 = objc_claimAutoreleasedReturnValue(), v28, [v31 objectForKey:@"Strings"], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "lastObject"), lastObject = objc_claimAutoreleasedReturnValue(), v32, v28 = v31, lastObject))
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
            [v38 setDisplayString:lastObject];
            [v38 setRepresentedString:lastObject];
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
  displayString = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
  if (displayString)
  {
    v39 = *v86;
    while (2)
    {
      for (n = 0; n != displayString; n = n + 1)
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
          preferredLocale2 = [MEMORY[0x1E695DF58] preferredLocale];
          [v46 uppercaseStringWithLocale:preferredLocale2];
          v49 = v48 = v39;

          v46 = v49;
          v39 = v48;
        }

        [v41 setDisplayString:v46];
        [v41 setRepresentedString:v46];
      }

      displayString = [obj countByEnumeratingWithState:&v85 objects:v107 count:16];
      if (displayString)
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
        currentInputMode = [v62 currentInputMode];

        if (!_os_feature_enabled_impl() || ([currentInputMode _iconLabelForMultilingualSet], (v64 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
          colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

          if (colorAdaptiveBackground && ([v61 localizationKey], v67 = objc_claimAutoreleasedReturnValue(), v68 = -[UIKeyboardLayoutStar shouldHideKeyName:](self, "shouldHideKeyName:", v67), v67, v68))
          {
            v80 = 0;
            [currentInputMode _getIconLabel:&v80 secondaryIconLabel:0 artwork:0];
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
          localizationKey = v69;
          goto LABEL_68;
        }

        localizationKey = [v61 localizationKey];
        if (localizationKey)
        {
          if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:localizationKey])
          {
            [v61 setDisplayString:@" "];
            v69 = 0;
            goto LABEL_68;
          }

          displayString2 = localizationKey;
        }

        else
        {
          displayString = [v61 displayString];
          if ([(UIKeyboardLayoutStar *)self shouldHideKeyName:?])
          {
            [v61 setDisplayString:@" "];
            goto LABEL_80;
          }

          displayString2 = [v61 displayString];
          obj = displayString2;
        }

        v72 = UIKeyboardLocalizedString(displayString2, 0, 0, 0);
        [v61 setDisplayString:v72];

        if (localizationKey)
        {
          v69 = 0;
          v56 = v77;
          goto LABEL_68;
        }

        v56 = v77;
LABEL_80:

        v69 = 0;
        localizationKey = 0;
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

- (void)updateLocalizedKeys:(BOOL)keys
{
  if (self->_keyplaneName)
  {
    keysCopy = keys;
    keyplane = self->_keyplane;
    if (keyplane)
    {
      [(UIKeyboardLayoutStar *)self updateLocalizedKeysForKeyplane:keyplane updateAllKeyplanes:keysCopy];
    }
  }
}

- (void)updateLocalizedKeysForKeyplane:(id)keyplane updateAllKeyplanes:(BOOL)keyplanes
{
  keyplanesCopy = keyplanes;
  v25 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v7 = UIKeyboardGetCurrentInputMode();
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];

  v10 = MEMORY[0x1E696AEC0];
  name = [keyplaneCopy name];
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  v13 = [v10 stringWithFormat:@"%@^%@^%@^%d", v7, localeIdentifier, name, v12];

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

  if (!keyplanesCopy)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (!keyplanesCopy)
  {
    [(UIKeyboardLayoutStar *)self updateLocalizedKeysOnKeyplane:keyplaneCopy];
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
  subtrees = [(UIKBTree *)self->_keyboard subtrees];
  v16 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        [(UIKeyboardLayoutStar *)self updateLocalizedKeysOnKeyplane:*(*(&v20 + 1) + 8 * i)];
      }

      v17 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
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
    name = [(UIKBTree *)self->_keyplane name];
    v4 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:name];
    v15 = [(UIKeyboardLayoutStar *)self keyplaneNamed:v4];

    name2 = [(UIKBTree *)self->_keyplane name];
    v6 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:name2];
    v7 = [(UIKeyboardLayoutStar *)self keyplaneNamed:v6];

    if (v15 | v7 && ![(UIKeyboardLayoutStar *)self isRotating]&& self->_transitionView)
    {
      orientation = [(UIKeyboardLayout *)self orientation];
      v9 = v15;
      v10 = v9;
      if ([v9 looksLikeShiftAlternate])
      {
        v10 = v9;
        if ([v9 isShiftKeyplane])
        {
          keyboard = self->_keyboard;
          shiftAlternateKeyplaneName = [v9 shiftAlternateKeyplaneName];
          v10 = [(UIKBTree *)keyboard subtreeWithName:shiftAlternateKeyplaneName];
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
        [(UIKeyboardSplitTransitionView *)self->_transitionView rebuildFromKeyplane:v10 toKeyplane:v7 startToken:v13 endToken:v14 keyboardType:[(UITextInputTraits *)self->super._inputTraits keyboardType] orientation:orientation];
        self->_isRebuilding = 0;
      }
    }
  }
}

- (CGImage)cachedCompositeImageWithCacheKey:(id)key
{
  v25[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  keyCopy = key;
  v6 = [v4 arrayWithCapacity:5];
  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  v8 = [UIKBRenderFactory cacheKeyForString:keyCopy withRenderFlags:2 renderConfig:renderConfig];
  [v6 addObject:v8];

  renderConfig2 = [(UIKeyboardLayoutStar *)self renderConfig];
  v10 = [UIKBRenderFactory cacheKeyForString:keyCopy withRenderFlags:1 renderConfig:renderConfig2];
  [v6 addObject:v10];

  renderConfig3 = [(UIKeyboardLayoutStar *)self renderConfig];
  v12 = [UIKBRenderFactory cacheKeyForString:keyCopy withRenderFlags:3 renderConfig:renderConfig3];
  [v6 addObject:v12];

  renderConfig4 = [(UIKeyboardLayoutStar *)self renderConfig];
  v14 = [UIKBRenderFactory cacheKeyForString:keyCopy withRenderFlags:6 renderConfig:renderConfig4];
  [v6 addObject:v14];

  renderConfig5 = [(UIKeyboardLayoutStar *)self renderConfig];
  v16 = [UIKBRenderFactory cacheKeyForString:keyCopy withRenderFlags:4 renderConfig:renderConfig5];

  [v6 addObject:v16];
  v17 = MEMORY[0x1E696AD98];
  renderConfig6 = [(UIKeyboardLayoutStar *)self renderConfig];
  [renderConfig6 keycapOpacity];
  v19 = [v17 numberWithDouble:?];
  v25[1] = v19;
  v25[2] = &unk_1EFE312A0;
  v25[3] = &unk_1EFE312A0;
  v25[4] = &unk_1EFE312A0;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];

  v21 = +[UIKeyboardCache sharedInstance];
  layoutName = [(UIKBTree *)self->_keyplane layoutName];
  v23 = [v21 cachedCompositeImageForCacheKeys:v6 fromLayout:layoutName opacities:v20];

  if (v23)
  {
    CFAutorelease(v23);
  }

  return v23;
}

- (CGImage)renderedImageWithStateFallbacksForToken:(id)token
{
  tokenCopy = token;
  v5 = [tokenCopy stringForState:2];
  v6 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v5];
  if (!v6)
  {
    v8 = [tokenCopy stringForState:1];

    v9 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v8];
    if (v9)
    {
      v7 = v9;
      v5 = v8;
      goto LABEL_5;
    }

    v5 = [tokenCopy stringForState:4];

    v6 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v5];
  }

  v7 = v6;
LABEL_5:

  return v7;
}

- (CGImage)renderedImageWithToken:(id)token
{
  tokenCopy = token;
  [tokenCopy setStyling:{objc_msgSend(tokenCopy, "styling") & 0xFFFFFFFFFFFF00FFLL | ((-[UIKBTree visualStyling](self->_keyplane, "visualStyling") >> 8) << 8)}];
  keyplane = self->_keyplane;
  name = [tokenCopy name];
  v7 = [(UIKBTree *)keyplane keysByKeyName:name];

  if ([tokenCopy emptyFields] >= 2 && (objc_msgSend(tokenCopy, "hasKey") & 1) != 0 || objc_msgSend(tokenCopy, "emptyFields") == 1 && !objc_msgSend(v7, "count"))
  {
    v10 = [(UIKeyboardLayoutStar *)self renderedImageWithStateFallbacksForToken:tokenCopy];
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
  [tokenCopy setSize:{v12, v13}];
  [tokenCopy resetAnnotations];
  if ([v8 isRightToLeftSensitive])
  {
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    currentLinguisticInputMode = [v14 currentLinguisticInputMode];
    [tokenCopy annotateWithBool:{objc_msgSend(currentLinguisticInputMode, "isDefaultRightToLeft")}];
  }

  if ([v8 displayTypeHint] == 10 && objc_msgSend(v8, "displayType") == 7)
  {
    [tokenCopy annotateWithBool:{-[UIKBTree isShiftKeyplane](self->_keyplane, "isShiftKeyplane")}];
  }

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    [tokenCopy annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
  }

  v16 = [tokenCopy stringForKey:v8 state:v11];
  v10 = [(UIKeyboardLayoutStar *)self cachedCompositeImageWithCacheKey:v16];

LABEL_22:
  return v10;
}

- (CGImage)renderedKeyplaneWithToken:(id)token split:(BOOL)split
{
  splitCopy = split;
  tokenCopy = token;
  v7 = [tokenCopy stringForSplitState:splitCopy handBias:{-[UIKeyboardLayoutStar currentHandBias](self, "currentHandBias")}];

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
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if (_inheritedRenderConfig)
  {
    [(UIKeyboardLayoutStar *)self setRenderConfig:_inheritedRenderConfig];
    v4 = +[UIKeyboardImpl activeInstance];
    candidateController = [v4 candidateController];
    [candidateController _setRenderConfig:_inheritedRenderConfig];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_allKeyplaneViews objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 purgeFactory];
        if (_inheritedRenderConfig)
        {
          [v11 setRenderConfig:_inheritedRenderConfig];
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
}

- (void)setRenderConfig:(id)config updateKeyplane:(BOOL)keyplane
{
  keyplaneCopy = keyplane;
  configCopy = config;
  delegate = [(UIKeyboardLayoutStar *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(UIKeyboardLayoutStar *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(UIKeyboardLayoutStar *)self delegate];
      v12 = [delegate3 keyboardLayout:self willChangeRenderConfig:configCopy];

      configCopy = v12;
    }
  }

  if (![(UIKBRenderConfig *)self->_renderConfig isEqual:configCopy])
  {
    if (keyplaneCopy)
    {
      lightKeyboard = [(UIKBRenderConfig *)self->_renderConfig lightKeyboard];
      v14 = lightKeyboard ^ [(UIKBRenderConfig *)configCopy lightKeyboard];
    }

    else
    {
      v14 = 0;
    }

    if ([(UIKBRenderConfig *)configCopy usesCompactKeycapsFont]&& [(UIKBTree *)self->_keyplane isKanaKeyboard])
    {
      [(UIKBRenderConfig *)configCopy setUsesCompactKeycapsFont:0];
      usesCompactKeycapsFont = [(UIKBRenderConfig *)self->_renderConfig usesCompactKeycapsFont];
      v14 = usesCompactKeycapsFont ^ [(UIKBRenderConfig *)configCopy usesCompactKeycapsFont];
    }

    if (([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 || (passcodeRenderConfig = self->_passcodeRenderConfig) == 0)
    {
      passcodeRenderConfig = configCopy;
    }

    v17 = passcodeRenderConfig;
    renderConfig = self->_renderConfig;
    self->_renderConfig = v17;

    v19 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder = [v19 delegateAsResponder];
    inputAssistantItem = [delegateAsResponder inputAssistantItem];
    _dictationReplacementAction = [inputAssistantItem _dictationReplacementAction];

    if (((_dictationReplacementAction != 0) & v14) != 0 || (v23 = self->_dictationReplacementKeycap, [_dictationReplacementAction title], v24 = objc_claimAutoreleasedReturnValue(), LOBYTE(v23) = -[NSString isEqualToString:](v23, "isEqualToString:", v24), v24, (v23 & 1) == 0))
    {
      title = [_dictationReplacementAction title];
      dictationReplacementKeycap = self->_dictationReplacementKeycap;
      self->_dictationReplacementKeycap = title;

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
    isVisible = [v28 isVisible];

    if (isVisible)
    {
      v30 = +[UIInputSwitcherView activeInstance];
      [v30 setRenderConfig:configCopy];
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

- (void)setPasscodeOutlineAlpha:(double)alpha
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

  [(UIKBRenderConfig *)passcodeRenderConfig setKeycapOpacity:alpha * 0.5];
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

- (void)willBeginIndirectSelectionGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 willBeginIndirectSelectionGesture];
  [(UIKeyboardLayoutStar *)self setTrackpadMode:1 animated:gestureCopy];
}

- (void)cancelTouchesForTwoFingerTapGesture:(id)gesture
{
  v4.receiver = self;
  v4.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v4 cancelTouchesForTwoFingerTapGesture:gesture];
  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:1 clearingDimming:1];
}

- (void)didEndIndirectSelectionGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 didEndIndirectSelectionGesture];
  [(UIKeyboardLayoutStar *)self setTrackpadMode:0 animated:gestureCopy];
}

- (void)setTrackpadMode:(BOOL)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v32[2] = *MEMORY[0x1E69E9840];
  if (!mode)
  {
    self->_isTrackpadMode = 0;
    v14 = +[UIKeyboard activeKeyboard];
    [v14 setTypingEnabled:1];

    LOBYTE(v14) = [(UIKeyboardLayoutStar *)self isDeveloperGestureKeybaord];
    v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v15 preferencesActions];
    if (([preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"] | v14))
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
    renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
    [renderConfig lightKeycapOpacity];
    v20 = [v18 numberWithDouble:?];
    v28[2] = v20;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

    goto LABEL_11;
  }

  [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
  self->_isTrackpadMode = mode;
  v7 = +[UIKeyboard activeKeyboard];
  [v7 setTypingEnabled:0];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 clearLanguageIndicator];

  [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:1 clearingDimming:0];
  [(UIKeyboardLayoutStar *)self clearHandwritingStrokesIfNeededAndNotify:1];
  renderConfig2 = [(UIKeyboardLayoutStar *)self renderConfig];
  if ([renderConfig2 lightKeyboard])
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
  if (animatedCopy)
  {
    [UIView animateWithDuration:50331648 delay:v22 options:0 animations:0.2 completion:0.0];
    if (mode)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(v22 + 2))(v22);
  if (!mode)
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
  superview = [(UIView *)self->_keyplaneView superview];
  if (superview && (v4 = superview, v5 = [(UIKBScreenTraits *)self->super._screenTraits idiom], v4, v5 != 2))
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
    renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
    [(UIKBBackgroundView *)self->_backgroundView setRenderConfig:renderConfig];

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

- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin
{
  beginCopy = begin;
  y = point.y;
  x = point.x;
  gesturesCopy = gestures;
  v10 = +[UIKeyboardImpl keyboardScreen];
  _userInterfaceIdiom = [v10 _userInterfaceIdiom];

  if (_userInterfaceIdiom != 3)
  {
    v31.receiver = self;
    v31.super_class = UIKeyboardLayoutStar;
    if ([(UIKeyboardLayout *)&v31 shouldAllowSelectionGestures:gesturesCopy atPoint:beginCopy toBegin:x, y])
    {
      if ([(UIView *)self isUserInteractionEnabled])
      {
        if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
        {
          v12 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
          v13 = [v12 objectAtIndex:0];

          v14 = [(UIKeyboardLayoutStar *)self viewForKey:v13];
          if ((gesturesCopy || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) && ([v14 numberOfStrokes] > beginCopy || !objc_msgSend(v14, "shouldAllowSelectionGestures:", gesturesCopy)))
          {

LABEL_42:
            v27 = 0;
LABEL_43:

            return v27;
          }
        }

        v15 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:x, y];
        v13 = v15;
        if (!gesturesCopy)
        {
          if ([v15 interactionType] == 14 || objc_msgSend(v13, "interactionType") == 11 || objc_msgSend(v13, "interactionType") == 4 || objc_msgSend(v13, "interactionType") == 10 || objc_msgSend(v13, "interactionType") == 9 || objc_msgSend(v13, "interactionType") == 5 || objc_msgSend(v13, "interactionType") == 44 || objc_msgSend(v13, "displayType") == 27)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        activeKey = [(UIKeyboardLayoutStar *)self activeKey];
        if (activeKey)
        {
          v17 = activeKey;
          activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
          if ([activeKey2 interactionType] == 1)
          {
LABEL_15:

            goto LABEL_16;
          }

          activeKey3 = [(UIKeyboardLayoutStar *)self activeKey];
          if ([activeKey3 interactionType] == 2)
          {

            goto LABEL_15;
          }

          activeKey4 = [(UIKeyboardLayoutStar *)self activeKey];
          interactionType = [activeKey4 interactionType];

          if (interactionType == 16)
          {
LABEL_16:
            activeKey5 = [(UIKeyboardLayoutStar *)self activeKey];
            v21 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:activeKey5];

            activeKey6 = [(UIKeyboardLayoutStar *)self activeKey];
            if ([activeKey6 state] == 16)
            {
              activeKey7 = [(UIKeyboardLayoutStar *)self activeKey];
              selectedVariantIndex = [activeKey7 selectedVariantIndex];
              activeKey8 = [(UIKeyboardLayoutStar *)self activeKey];
              v26 = [(UIKeyboardLayoutStar *)self defaultSelectedVariantIndexForKey:activeKey8 withActions:v21];

              if (selectedVariantIndex != v26)
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

- (BOOL)stretchKeyboardToFitKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  [(UIKBTree *)self->_keyboard frame];
  v6 = v5;
  [(UIKBScreenTraits *)self->super._screenTraits keyboardWidth];
  if (v6 == v7 || -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 1 && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") == 127 || -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") == 2 || [keyplaneCopy isSplit] && (objc_msgSend(keyplaneCopy, "isGenerated") & 1) != 0)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = ![(UIKeyboardLayoutStar *)self _shouldAttemptToAddSupplementaryControlKeys];
  }

  return v8;
}

- (BOOL)_allowStartingContinuousPathForTouchInfo:(id)info alreadyActiveKeyExisting:(BOOL)existing
{
  infoCopy = info;
  [infoCopy initialDragPoint];
  v8 = v7;
  v10 = v9;
  v11 = [infoCopy key];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (([v11 allowsStartingContinuousPath] & 1) != 0 || (v20 = 0, objc_msgSend(v11, "allowsDelayedTapForContinuousPathDisambiguation")) && !existing)
  {
    if ([v11 allowsDelayedTapForContinuousPathDisambiguation])
    {
      [infoCopy setDelayed:1];
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
  inputManagerState = [v2 inputManagerState];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = +[UIKeyboardImpl activeInstance];
  inputManagerState2 = [v5 inputManagerState];
  v7 = [inputManagerState2 performSelector:sel_ignoreContinuousPathRequirements] != 0;

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
      isAlphabeticPlane = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([(UIKeyboardLayoutStar *)self shouldIgnoreContinuousPathRequirements])
  {
    isAlphabeticPlane = [(UIKeyboardLayoutStar *)self isAlphabeticPlane];
  }

  else
  {
    isAlphabeticPlane = 0;
  }

LABEL_16:
  v7 = +[UIKeyboardImpl activeInstance];
  [v7 setLayoutAllowsContinuousPath:isAlphabeticPlane];

  return isAlphabeticPlane;
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

- (void)createLayoutFromName:(id)name
{
  v190 = *MEMORY[0x1E69E9840];
  nameCopy = name;
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
    _allowPaddle = [(UIKeyboardLayoutStar *)self _allowPaddle];
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
      v10 = [(NSString *)nameCopy hasSuffix:@"split"];
    }

    isFloating = [(UIKBTree *)self->_keyplane isFloating];
    if (isFloating == [(UIKeyboardLayout *)self isFloating])
    {
      keyplaneName = self->_keyplaneName;
      if (keyplaneName == nameCopy || nameCopy && keyplaneName && [(NSString *)keyplaneName caseInsensitiveCompare:nameCopy]== NSOrderedSame)
      {
        inputTraits = self->super._inputTraits;
        textInputTraits = [v9 textInputTraits];
        if ([(UITextInputTraits *)inputTraits publicTraitsMatchTraits:textInputTraits]&& [(UIKeyboardLayoutStar *)self canReuseKeyplaneView]&& [(UIKeyboardLayoutStar *)self shouldAllowCurrentKeyplaneReload])
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
            factory = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            [factory setAllowsPaddles:_allowPaddle];

            keyplaneShiftState = [(UIKeyboardLayoutStar *)self keyplaneShiftState];
            factory2 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            renderingContext = [factory2 renderingContext];
            [renderingContext setShiftState:keyplaneShiftState];

            v27 = UIKeyboardGetCurrentInputMode();
            v28 = UIKeyboardUIPreferStringOverImageForInputMode(v27);
            factory3 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
            [factory3 setPreferStringKeycapOverImage:v28];

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

            superview = [(UIView *)self superview];

            if (!superview)
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
    isShiftKeyPlaneChooser = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
    self->_inputTraitsPreventInitialReuse = 0;
    [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:0 clearingDimming:1];
    v33 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:nameCopy];
    v36 = [(UIKBTree *)self->_keyboard subtreeWithName:v33];
    v37 = v36;
    if (!v36)
    {
      keyViewAnimator = [(UIKeyboardLayoutStar *)self keyViewAnimator];
      [keyViewAnimator setDisabled:0];

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
    gestureKeyplaneName = [v36 gestureKeyplaneName];
    v177 = v37;
    v169 = nameCopy;
    v175 = v9;
    if (gestureKeyplaneName)
    {
      v39 = gestureKeyplaneName;
      if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
      {

        goto LABEL_35;
      }

      idiom = [(UIKBScreenTraits *)self->super._screenTraits idiom];

      if (idiom == 23)
      {
LABEL_35:
        keyboard = self->_keyboard;
        gestureKeyplaneName2 = [v37 gestureKeyplaneName];
        v42 = [(UIKBTree *)keyboard subtreeWithName:gestureKeyplaneName2];

        [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v42];
        [(UIKeyboardLayoutStar *)self setPercentSignKeysForCurrentLocaleOnKeyplane:v42];
        layoutTag = [(UIKeyboardLayoutStar *)self layoutTag];
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
              [v49 setLayoutTag:layoutTag passingKeyTest:v180];
            }

            v46 = [v44 countByEnumeratingWithState:&v181 objects:v189 count:16];
          }

          while (v46);
        }

        [(UIKeyboardLayoutStar *)self updateAutolocalizedKeysForKeyplane:v42];
        subtrees = [v42 subtrees];
        firstObject = [subtrees firstObject];

        subtrees2 = [v177 subtrees];
        firstObject2 = [subtrees2 firstObject];

        [firstObject2 setCachedGestureLayout:firstObject];
        if ([v177 intForProperty:@"shift-rendering"] == 31)
        {
          nameCopy = v169;
LABEL_50:
          v61 = self->_keyplane;
          _currentLayoutInfo = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
          [(UIKBTree *)v61 applyDynamicAttributes:1 layoutInfo:_currentLayoutInfo];

          v37 = v177;
          goto LABEL_51;
        }

        subtrees3 = [v177 subtrees];
        nameCopy = v169;
        if ([subtrees3 count] <= 1)
        {
        }

        else
        {
          subtrees4 = [v177 subtrees];
          v60 = [subtrees4 objectAtIndexedSubscript:1];

          if (v60)
          {
            [v60 setCachedGestureLayout:firstObject];
            firstObject2 = v60;
            goto LABEL_50;
          }
        }

        firstObject2 = 0;
        goto LABEL_50;
      }
    }

LABEL_51:
    v63 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Shift-Key"];
    [v63 behavesAsShiftKey];

    v64 = self->_keyboard;
    shiftAlternateKeyplaneName = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
    [(UIKBTree *)v64 subtreeWithName:shiftAlternateKeyplaneName];

    v66 = [v37 firstCachedKeyWithName:@"Shift-Key"];
    [v66 behavesAsShiftKey];

    v67 = [(NSString *)nameCopy copy];
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
    layoutName = [(UIKBTree *)self->_keyboard layoutName];
    [v37 precacheLayoutName:layoutName];

    v70 = self->_keyplane;
    _currentLayoutInfo2 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
    [(UIKBTree *)v70 applyDynamicAttributes:0 layoutInfo:_currentLayoutInfo2];

    keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
    if ([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 && ([(UIKeyboardLayout *)self orientation]- 3) >= 2 && ![(UIKBScreenTraits *)self->super._screenTraits idiom])
    {
      keyboardType = 0;
    }

    [(UIKBTree *)self->_keyplane updateKeysForType:keyboardType];
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

        scriptSwitchKey = [(UIKBTree *)self->_keyplane scriptSwitchKey];
        v84 = scriptSwitchKey;
        if (scriptSwitchKey)
        {
          v85 = scriptSwitchKey;
          if ([(UIKeyboardLayout *)self isFloating])
          {
            v86 = 0;
          }

          else
          {
            inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
            v86 = inputModeToMergeCapsLockKey != 0;
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
        renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
        v92 = [UIKBRenderingContext renderingContextForRenderConfig:renderConfig];

        [v92 setKeyboardType:keyboardType];
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
        delegate = [(UIKeyboardLayoutStar *)self delegate];
        if (delegate)
        {
          v97 = delegate;
          delegate2 = [(UIKeyboardLayoutStar *)self delegate];
          v99 = objc_opt_respondsToSelector();

          if (v99)
          {
            delegate3 = [(UIKeyboardLayoutStar *)self delegate];
            [delegate3 keyboardLayout:self didSwitchToKeyplane:self->_keyplane];
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
        superview2 = [(TUIKeyplaneView *)self->_liveKeyplaneView superview];

        v105 = 0x1E6997000uLL;
        if (superview2 != self)
        {
          [(UIView *)self insertSubview:self->_liveKeyplaneView atIndex:0];
          v150 = MEMORY[0x1E69977A0];
          topAnchor = [(TUIKeyplaneView *)self->_liveKeyplaneView topAnchor];
          topAnchor2 = [(UIView *)self topAnchor];
          v156 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v187[0] = v156;
          leadingAnchor = [(TUIKeyplaneView *)self->_liveKeyplaneView leadingAnchor];
          leadingAnchor2 = [(UIView *)self leadingAnchor];
          v106 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v187[1] = v106;
          bottomAnchor = [(UIView *)self bottomAnchor];
          bottomAnchor2 = [(TUIKeyplaneView *)self->_liveKeyplaneView bottomAnchor];
          v109 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v187[2] = v109;
          trailingAnchor = [(UIView *)self trailingAnchor];
          trailingAnchor2 = [(TUIKeyplaneView *)self->_liveKeyplaneView trailingAnchor];
          v112 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v187[3] = v112;
          v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:4];
          [v150 activateConstraints:v113];

          nameCopy = v169;
          v105 = 0x1E6997000;

          v9 = v175;
        }

        if (!self->_liveKeyplaneConstraints)
        {
          topAnchor3 = [(UIView *)self topAnchor];
          superview3 = [(UIView *)self superview];
          topAnchor4 = [superview3 topAnchor];
          v155 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
          v186[0] = v155;
          leadingAnchor3 = [(UIView *)self leadingAnchor];
          superview4 = [(UIView *)self superview];
          leadingAnchor4 = [superview4 leadingAnchor];
          v148 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
          v186[1] = v148;
          superview5 = [(UIView *)self superview];
          bottomAnchor3 = [superview5 bottomAnchor];
          bottomAnchor4 = [(UIView *)self bottomAnchor];
          v115 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
          v186[2] = v115;
          superview6 = [(UIView *)self superview];
          trailingAnchor3 = [superview6 trailingAnchor];
          trailingAnchor4 = [(UIView *)self trailingAnchor];
          [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          v120 = v119 = nameCopy;
          v186[3] = v120;
          v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];
          v122 = self->_liveKeyplaneConstraints;
          self->_liveKeyplaneConstraints = v121;

          nameCopy = v119;
          v9 = v175;

          v105 = 0x1E6997000uLL;
        }

        [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
        [*(v105 + 1952) activateConstraints:self->_liveKeyplaneConstraints];
        isSplit = [(TUIKeyplaneView *)self->_liveKeyplaneView isSplit];
        isSplit2 = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
        [(TUIKeyplaneView *)self->_liveKeyplaneView setRenderingContext:v178];
        v125 = self->_liveKeyplaneView;
        renderConfig2 = [(UIKeyboardLayoutStar *)self renderConfig];
        [(TUIKeyplaneView *)v125 setRenderConfig:renderConfig2];

        [(TUIKeyplaneView *)self->_liveKeyplaneView setOverrideScreenTraits:self->super._screenTraits];
        screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
        [screen scale];
        v129 = v128;
        factory4 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [factory4 setScale:v129];

        factory5 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [factory5 setAllowsPaddles:_allowPaddle];

        v132 = UIKeyboardGetCurrentInputMode();
        v133 = UIKeyboardUIPreferStringOverImageForInputMode(v132);
        factory6 = [(TUIKeyplaneView *)self->_liveKeyplaneView factory];
        [factory6 setPreferStringKeycapOverImage:v133];

        [(TUIKeyplaneView *)self->_liveKeyplaneView setKeyplane:self->_keyplane];
        [(TUIKeyplaneView *)self->_liveKeyplaneView setNeedsDisplay];
        if (UIKeyboardDeviceSupportsSplit() && v171 | isSplit ^ isSplit2)
        {
          isSplit3 = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
          v136 = 0.0;
          if (isSplit3)
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
        v138 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v137, v138];
        [v138 setSplitWidthsChanged:1];
        [v138 setUpdateAssistantView:1];
        [v138 setIsDynamicLayout:1];
        v140 = (self->_setKeyplaneViewCount + 1) % 100;
        self->_setKeyplaneViewCount = v140;
        [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v138];
        if (v140 == self->_setKeyplaneViewCount)
        {
          [(UIKeyboardLayoutStar *)self setKeyboardAppearance:self->_appearance];
          [(UIKeyboardLayoutStar *)self _setBiasEscapeButtonVisible:0];
          [(UIKeyboardLayoutStar *)self updateAllKeyStates];
          [(UIKeyboardLayoutStar *)self updateLayoutTags];
          [(UIKeyboardLayoutStar *)self updateCachedKeyplaneKeycaps];
          [(UIKeyboardLayoutStar *)self updateGlobeKeyDisplayString];
          [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator updateGestureRecognizers];
          keyViewAnimator2 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [keyViewAnimator2 reset];

          adaptiveKeys = [(UIKBTree *)self->_keyplane adaptiveKeys];
          [(UIKeyboardLayoutStar *)self updateLocalizedDisplayStringsForKeys:adaptiveKeys];
          isShiftKeyPlaneChooser2 = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
          v144 = v74;
          v33 = v167;
          if (isShiftKeyPlaneChooser != isShiftKeyPlaneChooser2)
          {
            [v9 clearShiftState];
          }
        }

        else
        {
          adaptiveKeys = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [adaptiveKeys setDisabled:0];
          v144 = v74;
          v33 = v167;
        }

        goto LABEL_110;
      }
    }

    name = [(UIKBTree *)self->_keyplane name];
    v76 = [name hasPrefix:@"Dynamic-Pinyin10"];

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

- (void)setKeyplaneName:(id)name
{
  v279 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!self->_isTrackpadMode)
  {
    if (!self->_isContinuousPathUnderway)
    {
      [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    }

    if ([(UIKBTree *)self->_keyboard dynamicLayout])
    {
      v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v5 preferencesActions];
      crescendoEnabled = [preferencesActions crescendoEnabled];

      if (crescendoEnabled)
      {
        self->_layoutSupportsCrescendo = 1;
        [(UIKeyboardLayoutStar *)self createLayoutFromName:nameCopy];
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
    _allowPaddle = [(UIKeyboardLayoutStar *)self _allowPaddle];
    [_UIKeyboardUsageTracking showCharacterPreviewPreference:_allowPaddle];
    if (self->_lastInputIsGestureKey)
    {
      +[_UIKeyboardUsageTracking panAlternateKeyFlickDownCount];
      self->_lastInputIsGestureKey = 0;
    }

    self->_dictationUsingServerManualEndpointing = 0;
    isFloating = [(UIKBTree *)self->_keyplane isFloating];
    if (isFloating == [(UIKeyboardLayout *)self isFloating])
    {
      keyplaneName = self->_keyplaneName;
      if (keyplaneName == nameCopy || nameCopy && keyplaneName && [(NSString *)keyplaneName caseInsensitiveCompare:nameCopy]== NSOrderedSame)
      {
        inputTraits = self->super._inputTraits;
        textInputTraits = [v243 textInputTraits];
        if ([(UITextInputTraits *)inputTraits publicTraitsMatchTraits:textInputTraits]&& [(UIKeyboardLayoutStar *)self canReuseKeyplaneView]&& [(UIKeyboardLayoutStar *)self shouldAllowCurrentKeyplaneReload])
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
            factory = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            [factory setAllowsPaddles:_allowPaddle];

            keyplaneShiftState = [(UIKeyboardLayoutStar *)self keyplaneShiftState];
            factory2 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            renderingContext = [factory2 renderingContext];
            [renderingContext setShiftState:keyplaneShiftState];

            v27 = UIKeyboardGetCurrentInputMode();
            v28 = UIKeyboardUIPreferStringOverImageForInputMode(v27);
            factory3 = [(UIKBKeyplaneView *)self->_keyplaneView factory];
            [factory3 setPreferStringKeycapOverImage:v28];

            superview = [(UIView *)self superview];

            if (superview)
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

    v238 = _allowPaddle;
    [(UIKBResizingKeyplaneCoordinator *)self->_resizingKeyplaneCoordinator stopResizing];
    self->_externalDictationAndInternationalKeys = [(UIKeyboardLayoutStar *)self showsGlobeAndDictationKeysInDockView];
    candidateList = [(UIKeyboardLayoutStar *)self candidateList];

    isShiftKeyPlaneChooser = [(UIKeyboardLayoutStar *)self isShiftKeyPlaneChooser];
    keyplaneIsSplit = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
    isSplit = [(UIKBScreenTraits *)self->super._screenTraits isSplit];
    self->_inputTraitsPreventInitialReuse = 0;
    keyViewAnimator = [(UIKeyboardLayoutStar *)self keyViewAnimator];
    [keyViewAnimator setDisabled:1];

    [(UIKeyboardLayoutStar *)self deactivateActiveKeysClearingTouchInfo:0 clearingDimming:1];
    [(UIKBKeyplaneView *)self->_keyplaneView purgeKeyViews];
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    keys = [(UIKBTree *)self->_keyplane keys];
    v36 = [keys countByEnumeratingWithState:&v270 objects:v278 count:16];
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
            objc_enumerationMutation(keys);
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

        v37 = [keys countByEnumeratingWithState:&v270 objects:v278 count:16];
      }

      while (v37);
    }

    v240 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:nameCopy];
    v41 = [(UIKBTree *)self->_keyboard subtreeWithName:?];
    gestureKeyplaneName = [v41 gestureKeyplaneName];

    if (!gestureKeyplaneName)
    {
LABEL_54:
      v61 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Shift-Key"];
      behavesAsShiftKey = [v61 behavesAsShiftKey];

      keyboard = self->_keyboard;
      shiftAlternateKeyplaneName = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
      v65 = [(UIKBTree *)keyboard subtreeWithName:shiftAlternateKeyplaneName];

      v66 = [v41 firstCachedKeyWithName:@"Shift-Key"];
      LODWORD(shiftAlternateKeyplaneName) = [v66 behavesAsShiftKey];

      v22 = v243;
      if (shiftAlternateKeyplaneName)
      {
        if (v65 == v41)
        {
          v67 = behavesAsShiftKey;
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

      _currentLayoutInfo = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)self->_keyplane clearManualAddedKey];
      self->_splitTransitionNeedsRebuild = 0;
      if (!nameCopy || ![(UIKBScreenTraits *)self->super._screenTraits supportsSplit]|| [(UIKBTree *)self->_keyboard visualStyle]- 101 > 8)
      {
        if (!v41)
        {
LABEL_210:
          keyViewAnimator2 = [(UIKeyboardLayoutStar *)self keyViewAnimator];
          [keyViewAnimator2 setDisabled:0];

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
        v76 = [(NSString *)nameCopy copy];
        v77 = self->_keyplaneName;
        self->_keyplaneName = v76;

        objc_storeStrong(&self->_keyplane, v41);
        [v41 setVisualStyle:{-[UIKBTree visualStyle](self->_keyboard, "visualStyle")}];
        [v41 cacheNativeIdiomIfNecessaryForScreenTraits:self->super._screenTraits];
        layoutName = [(UIKBTree *)self->_keyboard layoutName];
        [v41 precacheLayoutName:layoutName];

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
        _currentLayoutInfo2 = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];

        if ([(UIKBScreenTraits *)self->super._screenTraits isInPopover])
        {
          v80 = [(UIKBScreenTraits *)self->super._screenTraits idiom]== 0;
        }

        else
        {
          v80 = 0;
        }

        v245 = v41;
        v242 = nameCopy;
        v235 = _currentLayoutInfo2;
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
            orientation = [(UIKeyboardLayout *)self orientation];
            v118 = +[UIKeyboardInputModeController sharedInputModeController];
            currentInputMode = [v118 currentInputMode];
            [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:currentInputMode];
            v121 = v120;
            v123 = v122;

            v124 = v116 - (v121 + v123);
            if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
            {
              goto LABEL_100;
            }

            window = [(UIView *)self window];
            if (window)
            {
              window2 = window;
            }

            else
            {
              v133 = +[UIKeyboard activeKeyboard];
              window2 = [v133 window];

              if (!window2)
              {
                goto LABEL_100;
              }
            }

            safeAreaLayoutGuide = [window2 safeAreaLayoutGuide];
            [safeAreaLayoutGuide layoutFrame];
            v124 = v135;

LABEL_100:
            v136 = MEMORY[0x1E695EFF8];
            v137 = *MEMORY[0x1E695EFF8];
            if ([(UIKeyboardLayoutStar *)self currentHandBias])
            {
              containsKeyThatIgnoresHandBias = [(UIKBTree *)self->_keyplane containsKeyThatIgnoresHandBias];
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

              if (!containsKeyThatIgnoresHandBias)
              {
                v124 = v140;
              }
            }

            else
            {
              containsKeyThatIgnoresHandBias = 0;
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
            if (containsKeyThatIgnoresHandBias)
            {
              [(UIKBTree *)v81 elaborateLayoutWithSize:_currentLayoutInfo2 origin:v147 layoutInfo:v148, v137, *(v136 + 8)];
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
          [(UIKBTree *)self->_keyplane zipGeometrySetWithLayoutInfo:_currentLayoutInfo2];
          if ([(UIKeyboardLayoutStar *)self currentHandBias])
          {
            v86 = *(MEMORY[0x1E695EFF8] + 8);
            [(UIKeyboardLayoutStar *)self biasedKeyboardWidthRatio];
            v88 = v87;
            currentHandBias = [(UIKeyboardLayoutStar *)self currentHandBias];
            v90 = 0.0;
            if (currentHandBias == 1)
            {
              [v41 frame];
              v90 = (1.0 - v88) * v91;
            }

            [v41 elaborateLayoutWithSize:_currentLayoutInfo2 origin:v88 layoutInfo:{1.0, v90, v86}];
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
            [v41 elaborateLayoutWithSize:_currentLayoutInfo2 origin:v97 layoutInfo:{v95 / v98, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
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
            screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
            [screen bounds];
            v109 = v108;
            screen2 = [(UIKBScreenTraits *)self->super._screenTraits screen];
            [screen2 bounds];
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

            [v41 elaborateLayoutWithSize:_currentLayoutInfo2 origin:v104 layoutInfo:{v114, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          [(UIKBTree *)self->_keyplane clearManualAddedKey];
LABEL_123:
          [(UIKeyboardLayoutStar *)self _setBiasEscapeButtonVisible:[(UIKeyboardLayoutStar *)self currentHandBias]!= 0];
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          selfCopy = self;
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
                keySet = [v153 keySet];
                subtrees = [keySet subtrees];

                v251 = subtrees;
                v156 = [subtrees countByEnumeratingWithState:&v257 objects:v275 count:16];
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
                        subtrees2 = [v160 subtrees];
                        v163 = [subtrees2 countByEnumeratingWithState:&v253 objects:v274 count:16];
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
                                objc_enumerationMutation(subtrees2);
                              }

                              [*(*(&v253 + 1) + 8 * k) setDisplayRowHint:{objc_msgSend(v161, "intValue")}];
                            }

                            v164 = [subtrees2 countByEnumeratingWithState:&v253 objects:v274 count:16];
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

          [(UIKBTree *)selfCopy->_keyplane frameForKeylayoutName:@"split-left"];
          v168 = v167;
          [(UIKBTree *)selfCopy->_keyplane frameForKeylayoutName:@"split-right"];
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

          [(UIKeyboardLayoutStar *)selfCopy _addResizeTransformationsIfNecessary];
          [(UIKeyboardLayoutStar *)selfCopy updateKeyboardForKeyplane:v171];
          [(UIView *)selfCopy bounds];
          v173 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v172, v173];
          [v173 setSplitWidthsChanged:v170];
          [v173 setUpdateAssistantView:1];
          v175 = (selfCopy->_setKeyplaneViewCount + 1) % 100;
          selfCopy->_setKeyplaneViewCount = v175;
          [(UIKeyboardLayoutStar *)selfCopy _didChangeKeyplaneWithContext:v173];
          if (v175 != selfCopy->_setKeyplaneViewCount)
          {
            keyViewAnimator3 = [(UIKeyboardLayoutStar *)selfCopy keyViewAnimator];
            [keyViewAnimator3 setDisabled:0];
            v22 = v243;
LABEL_198:
            v216 = v240;
            _currentLayoutInfo = v235;

            nameCopy = v242;
            v41 = v245;
LABEL_211:

LABEL_212:
            goto LABEL_213;
          }

          [(UIKeyboardLayoutStar *)selfCopy setKeyboardAppearance:selfCopy->_appearance];
          keyViewAnimator3 = [(UIKeyboardLayoutStar *)selfCopy cacheTokenForKeyplane:selfCopy->_keyplane caseAlternates:0];
          [keyViewAnimator3 setTransformationIdentifiers:selfCopy->_keyplaneTransformations];
          v177 = [(UIKeyboardLayoutStar *)selfCopy defaultKeyplaneForKeyplane:selfCopy->_keyplane];
          v252 = [(UIKeyboardLayoutStar *)selfCopy cacheTokenForKeyplane:v177 caseAlternates:v234];
          renderConfig = [(UIKeyboardLayoutStar *)selfCopy renderConfig];
          v179 = [UIKBRenderingContext renderingContextForRenderConfig:renderConfig];

          [v179 setShiftState:{-[UIKeyboardLayoutStar keyplaneShiftState](selfCopy, "keyplaneShiftState")}];
          [v179 setKeyboardType:{-[UITextInputTraits keyboardType](selfCopy->super._inputTraits, "keyboardType")}];
          [v179 setHandBias:{-[UIKeyboardLayoutStar currentHandBias](selfCopy, "currentHandBias")}];
          if ([(UIKeyboardLayout *)selfCopy isFloating])
          {
            [v179 setIsFloating:1];
          }

          if ([(UIKeyboardLayoutStar *)selfCopy isDeveloperGestureKeybaord]&& _UIIsPrivateMainBundle())
          {
            v180 = [UIKBRenderFactory lightweightFactoryForVisualStyle:[(UIKBTree *)selfCopy->_keyplane visualStyling] renderingContext:v179];
            [(UIKeyboardLayoutStar *)selfCopy clearKeyAnnotationsIfNecessary];
            if ([v180 supportsInputTraits:selfCopy->super._inputTraits forKeyplane:selfCopy->_keyplane])
            {
              [keyViewAnimator3 annotateWithInt:{-[UITextInputTraits keyboardType](selfCopy->super._inputTraits, "keyboardType")}];
              [v252 annotateWithInt:{-[UITextInputTraits keyboardType](selfCopy->super._inputTraits, "keyboardType")}];
              [(UIKeyboardLayoutStar *)selfCopy annotateKeysWithDeveloperPunctuation];
            }
          }

          if ([(UIKBScreenTraits *)selfCopy->super._screenTraits idiom]== 3)
          {
            [keyViewAnimator3 annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
          }

          if (!v230)
          {
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView purgeKeyViews];
          }

          v181 = objc_autoreleasePoolPush();
          [(UIKeyboardLayoutStar *)selfCopy mergeKeysIfNeeded];
          [(UIKeyboardLayoutStar *)selfCopy updateLocalizedKeys:0];
          delegate = [(UIKeyboardLayoutStar *)selfCopy delegate];
          if (delegate)
          {
            v183 = delegate;
            delegate2 = [(UIKeyboardLayoutStar *)selfCopy delegate];
            v185 = objc_opt_respondsToSelector();

            if (v185)
            {
              delegate3 = [(UIKeyboardLayoutStar *)selfCopy delegate];
              [delegate3 keyboardLayout:selfCopy didSwitchToKeyplane:selfCopy->_keyplane];
            }
          }

          objc_autoreleasePoolPop(v181);
          [(UIKBKeyplaneView *)selfCopy->_keyplaneView removeFromSuperview];
          v187 = [keyViewAnimator3 stringForSplitState:-[UIKBTree isSplit](selfCopy->_keyplane handBias:{"isSplit"), -[UIKeyboardLayoutStar currentHandBias](selfCopy, "currentHandBias")}];
          v188 = [(UIKeyboardLayoutStar *)selfCopy cacheIdentifierForKeyplaneNamed:v187];

          if (v188)
          {
            v189 = [(NSMutableDictionary *)selfCopy->_allKeyplaneViews objectForKey:v188];
            objc_storeStrong(&selfCopy->_keyplaneView, v189);
          }

          else
          {
            v189 = selfCopy->_keyplaneView;
            selfCopy->_keyplaneView = 0;
          }

          v190 = selfCopy->_keyplaneView;
          [(UIView *)selfCopy bounds];
          v195 = v193;
          if (v190)
          {
            [(UIView *)selfCopy->_keyplaneView setFrame:v191, v192, v193, v194];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setKeyplane:selfCopy->_keyplane];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setDefaultKeyplane:v177];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setDefaultKeyplaneCacheToken:v252];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setOverrideScreenTraits:selfCopy->super._screenTraits];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView purgeSubviews];
          }

          else
          {
            v194 = [[UIKBKeyplaneView alloc] initWithFrame:selfCopy->_keyplane keyplane:v191, v192, v193, v194];
            v218 = selfCopy->_keyplaneView;
            selfCopy->_keyplaneView = v194;

            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setDelegate:selfCopy];
            keyViewAnimator4 = [(UIKeyboardLayoutStar *)selfCopy keyViewAnimator];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setKeyViewAnimator:keyViewAnimator4];

            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setCacheToken:keyViewAnimator3];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setDefaultKeyplane:v177];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setDefaultKeyplaneCacheToken:v252];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setOverrideScreenTraits:selfCopy->super._screenTraits];
            if (v188)
            {
              [(UIKBScreenTraits *)selfCopy->super._screenTraits keyboardWidth];
              if (v220 == v195)
              {
                [(NSMutableDictionary *)selfCopy->_allKeyplaneViews setObject:selfCopy->_keyplaneView forKey:v188];
              }
            }
          }

          keyViewAnimator5 = [(UIKBKeyplaneView *)selfCopy->_keyplaneView keyViewAnimator];
          [keyViewAnimator5 reset];

          emojiKeyManager = [(UIKBKeyplaneView *)selfCopy->_keyplaneView emojiKeyManager];
          if (!emojiKeyManager)
          {
            if (![(UIKeyboardLayoutStar *)selfCopy isEmojiKeyplane])
            {
LABEL_177:
              [(UIKBKeyplaneView *)selfCopy->_keyplaneView setRenderingContext:v179];
              renderConfig2 = [(UIKeyboardLayoutStar *)selfCopy renderConfig];
              [(UIKBKeyplaneView *)selfCopy->_keyplaneView setRenderConfig:renderConfig2];

              if (![(UIKeyboardPinchGestureRecognizer *)selfCopy->_pinchGestureRecognizer pinchDetected])
              {
                [(UIView *)selfCopy->_keyplaneView setHidden:0];
              }

              v199 = selfCopy->_backgroundView;
              if (v199 && ([(UIView *)v199 superview], v200 = objc_claimAutoreleasedReturnValue(), v200, v200))
              {
                [(UIView *)selfCopy insertSubview:selfCopy->_keyplaneView aboveSubview:selfCopy->_backgroundView];
              }

              else
              {
                [(UIView *)selfCopy insertSubview:selfCopy->_keyplaneView atIndex:0];
              }

              v22 = v243;
              [(UIKeyboardLayoutStar *)selfCopy updateBackgroundIfNeeded];
              [(UIKBKeyplaneView *)selfCopy->_keyplaneView prepareForDisplay];
              [(UIView *)selfCopy->_keyplaneView setNeedsDisplay];
              screen3 = [(UIKBScreenTraits *)selfCopy->super._screenTraits screen];
              [screen3 scale];
              v203 = v202;
              factory4 = [(UIKBKeyplaneView *)selfCopy->_keyplaneView factory];
              [factory4 setScale:v203];

              factory5 = [(UIKBKeyplaneView *)selfCopy->_keyplaneView factory];
              [factory5 setAllowsPaddles:v238];

              v206 = UIKeyboardGetCurrentInputMode();
              v207 = UIKeyboardUIPreferStringOverImageForInputMode(v206);
              factory6 = [(UIKBKeyplaneView *)selfCopy->_keyplaneView factory];
              [factory6 setPreferStringKeycapOverImage:v207];

              [(UIKeyboardLayoutStar *)selfCopy updateAllKeyStates];
              [(UIKeyboardLayoutStar *)selfCopy _updateSupplementaryKeys];
              [(UIKeyboardLayoutStar *)selfCopy updateLayoutTags];
              [(UIKeyboardLayoutStar *)selfCopy updateCachedKeyplaneKeycaps];
              [(UIKeyboardLayoutStar *)selfCopy updateGlobeKeyDisplayString];
              [(UIKBResizingKeyplaneCoordinator *)selfCopy->_resizingKeyplaneCoordinator reloadResizingOffset];
              [(UIKBResizingKeyplaneCoordinator *)selfCopy->_resizingKeyplaneCoordinator updateGestureRecognizers];
              resizingKeyplaneCoordinator = selfCopy->_resizingKeyplaneCoordinator;
              renderConfig3 = [(UIKeyboardLayoutStar *)selfCopy renderConfig];
              [(UIKBResizingKeyplaneCoordinator *)resizingKeyplaneCoordinator setRenderConfig:renderConfig3];

              [(UIKBResizingKeyplaneCoordinator *)selfCopy->_resizingKeyplaneCoordinator updateGrabber];
              if ([(UIKBTree *)selfCopy->_keyplane shouldSkipCandidateSelection])
              {
                [v243 setShouldSkipCandidateSelection:1];
                v211 = isShiftKeyPlaneChooser;
                v212 = keyplaneIsSplit;
              }

              else
              {
                v212 = keyplaneIsSplit;
                [v243 setShouldSkipCandidateSelection:0];
                v211 = isShiftKeyPlaneChooser;
                if ((([(UIKeyboardLayoutStar *)selfCopy isRotating]| keyplaneIsSplit ^ isSplit) & 1) == 0)
                {
                  v213 = +[UIKBAnalyticsDispatcher sharedInstance];
                  [v213 setNextCommitTextSource:6];

                  [v243 acceptCurrentCandidateIfSelected];
                }
              }

              [v243 setUsesCandidateSelection:{-[UIKBTree notUseCandidateSelection](selfCopy->_keyplane, "notUseCandidateSelection") ^ 1}];
              candidateList2 = [(UIKeyboardLayoutStar *)selfCopy candidateList];

              if (v212 != [(NSString *)selfCopy->_keyplaneName hasSuffix:@"split"]|| (candidateList == 0) == (candidateList2 != 0))
              {
                [v243 removeAutocorrectPromptAndCandidateList];
                [v243 updateCandidateDisplay];
              }

              [(UIKeyboardLayoutStar *)selfCopy refreshForDictationAvailablityDidChange];
              [v243 updateReturnKey:1];
              [(UIKeyboardLayoutStar *)selfCopy updateKeyCentroids];
              if (v211 != [(UIKeyboardLayoutStar *)selfCopy isShiftKeyPlaneChooser])
              {
                [v243 clearShiftState];
              }

              if ([(UIKeyboardLayout *)selfCopy disableInteraction])
              {
                [(UIKeyboardLayoutStar *)selfCopy setKeyboardDim:1];
              }

              else
              {
                [(UIView *)selfCopy setUserInteractionEnabled:1];
              }

              keyViewAnimator6 = [(UIKeyboardLayoutStar *)selfCopy keyViewAnimator];
              [keyViewAnimator6 setDisabled:0];

              if (!selfCopy->_settingShift)
              {
                [(UIKeyboardLayout *)selfCopy updateTouchProcessingForKeyplaneChange];
              }

              goto LABEL_198;
            }

            emojiKeyManager = [(UIKeyboardLayoutStar *)selfCopy emojiKeyManager];
            [(UIKBKeyplaneView *)selfCopy->_keyplaneView setEmojiKeyManager:emojiKeyManager];
          }

          goto LABEL_177;
        }

        v81 = self->_keyplane;
        v82 = *MEMORY[0x1E695EFF8];
        v83 = *(MEMORY[0x1E695EFF8] + 8);
        v84 = 1.0;
        v85 = 1.0;
LABEL_122:
        [(UIKBTree *)v81 elaborateLayoutWithSize:_currentLayoutInfo2 origin:v84 layoutInfo:v85, v82, v83];
        goto LABEL_123;
      }

      v249 = _currentLayoutInfo;
      v233 = v67;
      v69 = self->_keyboard;
      v70 = [(UIKeyboardLayoutStar *)self splitNameForKeyplaneName:nameCopy];
      v71 = [(UIKBTree *)v69 subtreeWithName:v70];

      if (v71)
      {
        _currentLayoutInfo = v249;
      }

      else
      {
        v127 = [(UIKeyboardLayoutStar *)self splitNameForKeyplane:v41];
        v71 = [(UIKBTree *)self->_keyboard subtreeWithName:v127];

        _currentLayoutInfo = v249;
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

          sharedRivenKeyplaneGenerator = [objc_opt_class() sharedRivenKeyplaneGenerator];
          v222 = [sharedRivenKeyplaneGenerator generateRivenKeyplaneFromKeyplane:v41 forKeyboard:self->_keyboard];
          v71 = v222;
          if (!v222)
          {
            goto LABEL_208;
          }

          [v222 setIsGenerated:1];
          layoutName2 = [v41 layoutName];
          [v71 precacheLayoutName:layoutName2];

          subtrees3 = [(UIKBTree *)self->_keyboard subtrees];
          [subtrees3 addObject:v71];
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
      sharedRivenKeyplaneGenerator = nameCopy;
      nameCopy = v41 = v71;
LABEL_208:

      goto LABEL_209;
    }

    v241 = nameCopy;
    v43 = self->_keyboard;
    v244 = v41;
    gestureKeyplaneName2 = [v41 gestureKeyplaneName];
    v45 = [(UIKBTree *)v43 subtreeWithName:gestureKeyplaneName2];

    [(UIKeyboardLayoutStar *)self setCurrencyKeysForCurrentLocaleOnKeyplane:v45];
    [(UIKeyboardLayoutStar *)self setPercentSignKeysForCurrentLocaleOnKeyplane:v45];
    selfCopy2 = self;
    layoutTag = [(UIKeyboardLayoutStar *)self layoutTag];
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
          v265[4] = selfCopy2;
          [v53 setLayoutTag:layoutTag passingKeyTest:v265];
        }

        v50 = [v48 countByEnumeratingWithState:&v266 objects:v277 count:16];
      }

      while (v50);
    }

    self = selfCopy2;
    [(UIKeyboardLayoutStar *)selfCopy2 updateAutolocalizedKeysForKeyplane:v45];
    subtrees4 = [v45 subtrees];
    firstObject = [subtrees4 firstObject];

    subtrees5 = [v41 subtrees];
    firstObject2 = [subtrees5 firstObject];

    [firstObject2 setCachedGestureLayout:firstObject];
    if ([v41 intForProperty:@"shift-rendering"] != 31)
    {
      subtrees6 = [v41 subtrees];
      if ([subtrees6 count] > 1)
      {
        subtrees7 = [v41 subtrees];
        v60 = [subtrees7 objectAtIndexedSubscript:1];

        if (v60)
        {
          [v60 setCachedGestureLayout:firstObject];
          firstObject2 = v60;
        }

        else
        {
          firstObject2 = 0;
        }

        nameCopy = v241;
        v41 = v244;
        goto LABEL_53;
      }

      firstObject2 = 0;
    }

    nameCopy = v241;
LABEL_53:

    goto LABEL_54;
  }

LABEL_213:
}

- (void)updateStateForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "displayType") == 51)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForShiftKey:keyCopy];
LABEL_4:
    v6 = v5;
    selfCopy5 = self;
LABEL_5:
    [(UIKeyboardLayoutStar *)selfCopy5 setState:v6 forKey:keyCopy];
    goto LABEL_6;
  }

  if ([keyCopy displayType] == 14)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForKeyplaneSwitchKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy displayType] == 11)
  {
    selfCopy5 = self;
    v6 = 4;
    goto LABEL_5;
  }

  if ([keyCopy interactionType] == 21)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForMultitapReverseKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy interactionType] == 41)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForMultitapForwardKey:keyCopy];
    goto LABEL_4;
  }

  if (([keyCopy disabled] & 1) != 0 || objc_msgSend(keyCopy, "interactionType") == 20 && !-[UIDelayedAction scheduled](self->_multitapAction, "scheduled"))
  {
    goto LABEL_20;
  }

  if ([keyCopy displayType] == 1)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForCandidateListKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy interactionType] == 44)
  {
LABEL_26:
    selfCopy5 = self;
    v6 = 2;
    goto LABEL_5;
  }

  if ([keyCopy displayType] == 4)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForDictationKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy displayType] == 39 || objc_msgSend(keyCopy, "displayType") == 40 || objc_msgSend(keyCopy, "displayType") == 41 || objc_msgSend(keyCopy, "displayType") == 49)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForStylingKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy displayType] == 42 || objc_msgSend(keyCopy, "displayType") == 43 || objc_msgSend(keyCopy, "displayType") == 44 || objc_msgSend(keyCopy, "displayType") == 45 || objc_msgSend(keyCopy, "displayType") == 46 || objc_msgSend(keyCopy, "interactionType") == 17 || objc_msgSend(keyCopy, "interactionType") == 12)
  {
    v5 = [(UIKeyboardLayoutStar *)self stateForManipulationKey:keyCopy];
    goto LABEL_4;
  }

  if ([keyCopy displayType] != 36 && objc_msgSend(keyCopy, "displayType") != 37)
  {
    if ([keyCopy interactionType] != 9)
    {
      goto LABEL_56;
    }

    representedString = [keyCopy representedString];
    v10 = [representedString isEqualToString:@"NonASCII"];
    if ((v10 & 1) == 0)
    {
      representedString2 = [keyCopy representedString];
      if (([representedString2 isEqualToString:@"ASCIICapable"] & 1) == 0)
      {

        goto LABEL_56;
      }
    }

    v11 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v11 textInputTraits];
    loadKeyboardsForSiriLanguage = [textInputTraits loadKeyboardsForSiriLanguage];

    if (v10)
    {

      if (!loadKeyboardsForSiriLanguage)
      {
        goto LABEL_56;
      }
    }

    else
    {

      if ((loadKeyboardsForSiriLanguage & 1) == 0)
      {
LABEL_56:
        if ([keyCopy displayType] == 50)
        {
          selfCopy5 = self;
          v6 = 0;
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

LABEL_20:
    selfCopy5 = self;
    v6 = 1;
    goto LABEL_5;
  }

  [(UIKeyboardLayoutStar *)self setState:2 forKey:keyCopy];
  v8 = [(UIKeyboardLayoutStar *)self viewForKey:keyCopy];
  if (objc_opt_respondsToSelector())
  {
    [v8 setHitTestResponder:self];
  }

LABEL_6:
  if ([keyCopy displayType] != 8)
  {
    [keyCopy setOverrideDisplayString:0];
  }

  [keyCopy setFlickDirection:-3];
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
        name = [v9 name];
        v11 = [name rangeOfString:@"Letters"];
        v31 = v8;
        if (((v11 == 0x7FFFFFFFFFFFFFFFLL) & v6) == 1)
        {
          name2 = [v9 name];
          v13 = [name2 rangeOfString:@"Punctuation"];

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
        keys = [v9 keys];
        v16 = [keys countByEnumeratingWithState:&v32 objects:v43 count:16];
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
              objc_enumerationMutation(keys);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "displayRowHint")}];
            v22 = [v3 objectForKeyedSubscript:v21];

            displayRowHint = [v20 displayRowHint];
            switch(displayRowHint)
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

          v17 = [keys countByEnumeratingWithState:&v32 objects:v43 count:16];
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

  rightSpaceKey = [(UIKBTree *)self->_keyplane rightSpaceKey];
  v4 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"More-Key"];
  if ([v4 count] < 2)
  {
    if ([v4 count] <= 1)
    {
      firstKeyplaneSwitchKey = [(UIKBTree *)self->_keyplane firstKeyplaneSwitchKey];
      if (firstKeyplaneSwitchKey)
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

  keyplaneIsSplit = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
  v10 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Modify-For-Writeboard-Key"];
  if (v10)
  {

LABEL_23:
    v12 = 0;
    goto LABEL_26;
  }

  if (keyplaneIsSplit)
  {
    v13 = 4.0;
  }

  else
  {
    v13 = 3.0;
  }

  [v8 frame];
  MinX = CGRectGetMinX(v23);
  [rightSpaceKey frame];
  v15 = vabdd_f64(MinX, CGRectGetMaxX(v24));
  v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v16 preferencesActions];
  [preferencesActions rivenSizeFactor:v13];
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
  is10KeyRendering = [(UIKeyboardLayoutStar *)self is10KeyRendering];
  if ([(UIKBScreenTraits *)self->super._screenTraits idiom])
  {
    v4 = 1;
  }

  else
  {
    v4 = !is10KeyRendering;
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
        subtrees = [v3 subtrees];
        v5 = [subtrees countByEnumeratingWithState:&v23 objects:v32 count:16];
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
                objc_enumerationMutation(subtrees);
              }

              v9 = *(*(&v23 + 1) + 8 * j);
              v19 = 0u;
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              keys = [v9 keys];
              v11 = [keys countByEnumeratingWithState:&v19 objects:v31 count:16];
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
                      objc_enumerationMutation(keys);
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

                  v12 = [keys countByEnumeratingWithState:&v19 objects:v31 count:16];
                }

                while (v12);
              }
            }

            v6 = [subtrees countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v6);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)updateTransitionWithFlags:(unint64_t)flags
{
  if ([(UIKBScreenTraits *)self->super._screenTraits supportsSplit]&& ![(UIKBScreenTraits *)self->super._screenTraits isFloating]&& ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    transitionView = self->_transitionView;

    [(UIKeyboardSplitTransitionView *)transitionView rebuildControlKeys:flags];
  }
}

- (void)setReturnKeyEnabled:(BOOL)enabled withDisplayName:(id)name withType:(int)type
{
  nameCopy = name;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__UIKeyboardLayoutStar_setReturnKeyEnabled_withDisplayName_withType___block_invoke;
  v10[3] = &unk_1E7114880;
  enabledCopy = enabled;
  v10[4] = self;
  v11 = nameCopy;
  typeCopy = type;
  v9 = nameCopy;
  [UIView performWithoutAnimation:v10];
}

- (void)_setReturnKeyEnabled:(BOOL)enabled withDisplayName:(id)name withType:(int)type
{
  v5 = *&type;
  enabledCopy = enabled;
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  cache = [(UIKBTree *)self->_keyplane cache];
  v10 = [cache objectForKey:@"Return-Key"];

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
    selfCopy = self;
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
            v21 = v20 = enabledCopy;
            v22 = [nameCopy isEqualToString:v21];

            enabledCopy = v20;
            v12 = v19;
            v5 = v18;
            v11 = v17;
            v13 = v16;
            self = selfCopy;
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
        [v15 setDisplayString:nameCopy];
        [v15 setDisplayTypeHint:v5];
        v24 = [(UIKeyboardLayoutStar *)self stateForKey:v15];
        if (enabledCopy)
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

- (BOOL)_stringContainsCurrencyCharacters:(id)characters
{
  charactersCopy = characters;
  if (_stringContainsCurrencyCharacters__onceToken != -1)
  {
    dispatch_once(&_stringContainsCurrencyCharacters__onceToken, &__block_literal_global_902_1);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [charactersCopy length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UIKeyboardLayoutStar__stringContainsCurrencyCharacters___block_invoke_2;
  v7[3] = &unk_1E71148A8;
  v7[4] = &v8;
  [charactersCopy _enumerateLongCharactersInRange:0 usingBlock:{v4, v7}];
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

- (void)updateCurrencySymbolForKey:(id)key withCurrencyString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  representedString = [keyCopy representedString];
  v9 = [(UIKeyboardLayoutStar *)self _stringContainsCurrencyCharacters:representedString];

  if (v9)
  {
    [keyCopy setDisplayString:stringCopy];
    [keyCopy setRepresentedString:stringCopy];
  }

  secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
  v11 = [secondaryRepresentedStrings mutableCopy];

  secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
  v13 = [secondaryDisplayStrings mutableCopy];

  secondaryRepresentedStrings2 = [keyCopy secondaryRepresentedStrings];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__UIKeyboardLayoutStar_updateCurrencySymbolForKey_withCurrencyString___block_invoke;
  v21 = &unk_1E71148D0;
  selfCopy = self;
  v23 = v11;
  v24 = stringCopy;
  v25 = v13;
  v15 = v13;
  v16 = stringCopy;
  v17 = v11;
  [secondaryRepresentedStrings2 enumerateObjectsUsingBlock:&v18];

  [keyCopy setSecondaryRepresentedStrings:{v17, v18, v19, v20, v21, selfCopy}];
  [keyCopy setSecondaryDisplayStrings:v15];
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

- (void)setCurrencyKeysForCurrentLocaleOnKeyplane:(id)keyplane
{
  v43 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v31 = UIKeyboardGetCurrentInputMode();
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];

  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"$", @"€", @"£", @"¥", @"₩", 0}];
  cache = [keyplaneCopy cache];
  v7 = [cache objectForKey:@"Primary-Currency-Sign"];

  if (v7)
  {
    v8 = UIKeyboardLocalizedObject(@"UI-PrimaryCurrencySign", localeIdentifier, 0, 0, 0);
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
    cache2 = [keyplaneCopy cache];
    v17 = v15 + 1;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternate-Currency-Sign-%d", v15 + 1];
    v19 = [cache2 objectForKey:v18];

    if (v19)
    {
      v20 = UIKeyboardStringAlternateCurrencySign[v15];
      v21 = UIKeyboardLocalizedObject(v20, localeIdentifier, 0, 0, 0);
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

- (void)setPercentSignKeysForCurrentLocaleOnKeyplane:(id)keyplane
{
  v44 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v4 = UIKeyboardGetCurrentInputMode();
  v5 = UIKeyboardInputModeGetNumericLocale(v4);
  localeIdentifier = [v5 localeIdentifier];

  cache = [keyplaneCopy cache];
  v8 = [cache objectForKey:@"Localized-Percent-Sign"];

  if ([v8 count])
  {
    v34 = keyplaneCopy;
    if (qword_1ED493218 != -1)
    {
      dispatch_once(&qword_1ED493218, &__block_literal_global_933);
    }

    v9 = localeIdentifier;
    if (qword_1ED4932D0 && [qword_1ED4932C8 isEqualToString:v9])
    {
      v10 = qword_1ED4932D0;
    }

    else
    {
      v11 = objc_opt_new();
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];
      [v11 setLocale:v12];

      percentSymbol = [v11 percentSymbol];
      v14 = percentSymbol;
      if (percentSymbol)
      {
        v15 = percentSymbol;
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
            representedString = [v23 representedString];
            LODWORD(v24) = [v24 containsObject:representedString];

            if (v24)
            {
              [v23 setDisplayString:v10];
              [v23 setRepresentedString:v10];
            }

            secondaryRepresentedStrings = [v23 secondaryRepresentedStrings];
            v27 = [secondaryRepresentedStrings mutableCopy];

            secondaryDisplayStrings = [v23 secondaryDisplayStrings];
            v29 = [secondaryDisplayStrings mutableCopy];

            secondaryRepresentedStrings2 = [v23 secondaryRepresentedStrings];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __69__UIKeyboardLayoutStar_setPercentSignKeysForCurrentLocaleOnKeyplane___block_invoke_2;
            v35[3] = &unk_1E71148F8;
            v36 = v27;
            v37 = v10;
            v38 = v29;
            v31 = v29;
            v32 = v27;
            [secondaryRepresentedStrings2 enumerateObjectsUsingBlock:v35];

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

    keyplaneCopy = v34;
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

- (int)stateForMultitapReverseKey:(id)key
{
  keyCopy = key;
  v5 = +[UIKeyboardImpl activeInstance];
  markedText = [v5 markedText];
  _lastGrapheme = [markedText _lastGrapheme];

  if (self->_multitapKey || [_lastGrapheme length] && (-[UIKeyboardLayoutStar keyWithRepresentedString:](self, "keyWithRepresentedString:", _lastGrapheme), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int)stateForDictationKey:(id)key
{
  v3 = +[UIDictationController activeInstance];

  if (!v3)
  {
    return 1;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledDictationLanguages = [v4 enabledDictationLanguages];
  if (![enabledDictationLanguages count] || !+[UIDictationController dictationIsFunctional](UIDictationController, "dictationIsFunctional"))
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

- (BOOL)supportStylingWithKey:(id)key
{
  keyCopy = key;
  if (-[UIKBTextEditingTraits supportStyling](self->super._textEditingTraits, "supportStyling") && ([keyCopy interactionType] != 28 || -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface")) && (objc_msgSend(keyCopy, "interactionType") != 29 || -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics")) && (objc_msgSend(keyCopy, "interactionType") != 30 || -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline")))
  {
    v5 = [keyCopy displayType] != 49 || -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface") || -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics") || -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)stateForStylingKey:(id)key
{
  keyCopy = key;
  if ([(UIKeyboardLayoutStar *)self supportStylingWithKey:keyCopy])
  {
    if ([keyCopy interactionType] == 28 && -[UIKBTextEditingTraits isBold](self->super._textEditingTraits, "isBold") || objc_msgSend(keyCopy, "interactionType") == 29 && -[UIKBTextEditingTraits isItalicized](self->super._textEditingTraits, "isItalicized") || objc_msgSend(keyCopy, "interactionType") == 30 && -[UIKBTextEditingTraits isUnderlined](self->super._textEditingTraits, "isUnderlined"))
    {
      v5 = 4;
    }

    else if ([keyCopy state] == 16)
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

- (id)highlightedVariantListForStylingKey:(id)key
{
  if ([key variantType] == 9)
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

- (int)stateForManipulationKey:(id)key
{
  keyCopy = key;
  if (([keyCopy interactionType] != 31 || !-[UIKBTextEditingTraits canCut](self->super._textEditingTraits, "canCut")) && (objc_msgSend(keyCopy, "interactionType") != 32 || !-[UIKBTextEditingTraits canCopy](self->super._textEditingTraits, "canCopy")) && (objc_msgSend(keyCopy, "interactionType") != 33 || !-[UIKBTextEditingTraits canPaste](self->super._textEditingTraits, "canPaste")) && (objc_msgSend(keyCopy, "interactionType") != 34 || !-[UIKBTextEditingTraits canMoveCursorLeft](self->super._textEditingTraits, "canMoveCursorLeft")) && (objc_msgSend(keyCopy, "interactionType") != 35 || !-[UIKBTextEditingTraits canMoveCursorRight](self->super._textEditingTraits, "canMoveCursorRight")))
  {
    if ([keyCopy interactionType] != 17 && objc_msgSend(keyCopy, "interactionType") != 12)
    {
      v5 = 1;
      goto LABEL_12;
    }

    v7 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder = [v7 delegateAsResponder];
    _responderForEditing = [delegateAsResponder _responderForEditing];
    undoManager = [_responderForEditing undoManager];

    if ([keyCopy interactionType] == 17)
    {
      if ([undoManager canUndo])
      {
        goto LABEL_20;
      }
    }

    else if ([undoManager canRedo])
    {
      goto LABEL_20;
    }

    if ([keyCopy displayTypeHint] != 11)
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

- (void)setTextEditingTraits:(id)traits
{
  v47 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v43 setTextEditingTraits:traits];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  subtrees = [(UIKBTree *)self->_keyplane subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v39 objects:v46 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name _containsSubstring:@"Assist"];

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subtrees countByEnumeratingWithState:&v39 objects:v46 count:16];
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
  keySet = [v12 keySet];
  subtrees2 = [keySet subtrees];

  obj = subtrees2;
  v15 = [subtrees2 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
        subtrees3 = [v19 subtrees];
        v21 = [subtrees3 countByEnumeratingWithState:&v31 objects:v44 count:16];
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
                objc_enumerationMutation(subtrees3);
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
            v28 = [subtrees3 countByEnumeratingWithState:&v31 objects:v44 count:16];
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

- (int)stateForKeyplaneSwitchKey:(id)key
{
  keyCopy = key;
  name = [(UIKBTree *)self->_keyboard name];
  v6 = [name rangeOfString:@"QWERTY-Japanese"];

  v7 = 2;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lowercaseString = [(NSString *)self->_keyplaneName lowercaseString];
    representedString = [keyCopy representedString];
    lowercaseString2 = [representedString lowercaseString];

    if ([lowercaseString rangeOfString:lowercaseString2] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    if ([(UIKBTree *)self->_keyboard visualStyle]== 101 || [(UIKeyboardLayoutStar *)self is10KeyRendering])
    {
      v11 = [lowercaseString componentsSeparatedByString:@"-"];
      v12 = [lowercaseString2 componentsSeparatedByString:@"-"];
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

- (id)keylistContainingKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  subtrees = [(UIKBTree *)self->_keyplane subtrees];
  v21 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        keySet = [v8 keySet];
        subtrees2 = [keySet subtrees];

        v11 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(subtrees2);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              subtrees3 = [v15 subtrees];
              v17 = [subtrees3 containsObject:keyCopy];

              if (v17)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
      v21 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardNeedsUpdatingKeyboardDockViewVisibilityNotification" object:0 userInfo:0];

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
      shape = [v3 shape];
      v9 = [shape copy];

      shape2 = [v4 shape];
      firstObject2 = [shape2 copy];

      if ([(UIKBScreenTraits *)self->super._screenTraits isSplit])
      {
        screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
        [screen scale];
        v13 = [UIKBShapeOperator operatorWithScale:?];

        [firstObject2 frame];
        v15 = v14;
        v16 = v14 * 0.5;
        v28[0] = firstObject2;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        v18 = -(v15 * 0.5);
        v19 = [v13 shapesByRepositioningShapes:v17 withOffset:{v18, 0.0}];
        firstObject = [v19 firstObject];

        v27 = firstObject;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        v22 = [v13 shapesByResizingShapes:v21 withOffset:{v16, 0.0}];
        firstObject2 = [v22 firstObject];

        v26 = v9;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        v24 = [v13 shapesByResizingShapes:v23 withOffset:{v18, 0.0}];
        firstObject3 = [v24 firstObject];

        v9 = firstObject3;
      }

      [v3 setShape:firstObject2];
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

    _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v16 = [UIKBPhoneToCarPlayTransformation cachedKeysForTransformationContext:_currentKeyplaneTransformationContext];

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

  _currentKeyplaneTransformationContext2 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
  v4 = [UIKeyboardSupplementaryControlKeyTransformation cachedControlKeySetsForTransformationContext:_currentKeyplaneTransformationContext2];

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
          subtrees = [v9 subtrees];
          v11 = [subtrees countByEnumeratingWithState:&v25 objects:v34 count:16];
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
                  objc_enumerationMutation(subtrees);
                }

                [(UIKeyboardLayoutStar *)self setState:2 forKey:*(*(&v25 + 1) + 8 * k)];
              }

              v12 = [subtrees countByEnumeratingWithState:&v25 objects:v34 count:16];
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
  keyplaneName = [(UIKeyboardLayoutStar *)self keyplaneName];
  [(UIKBKeyplaneTransformationContext *)v3 setCurrentKeyplaneName:keyplaneName];

  [(UIKBKeyplaneTransformationContext *)v3 setScreenTraits:self->super._screenTraits];
  inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
  [(UIKBKeyplaneTransformationContext *)v3 setUsesScriptSwitch:inputModeToMergeCapsLockKey != 0];

  [(UIKBKeyplaneTransformationContext *)v3 setActiveKeyboard:self->_keyboard];
  [(UIKBKeyplaneTransformationContext *)v3 setActiveKeyplane:self->_keyplane];
  if (+[UIKeyboard resizable])
  {
    superview = [(UIView *)self superview];
    [superview bounds];
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
    _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v5 = [UIKeyboardSupplementaryControlKeyTransformation transformKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
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
  _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
  v7 = [(__objc2_class *)v4 transformKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
  v8 = self->_keyplane;
  self->_keyplane = v7;

  keyplaneTransformations = self->_keyplaneTransformations;
  transformationIdentifier = [(__objc2_class *)*v3 transformationIdentifier];
  [(NSMutableSet *)keyplaneTransformations addObject:transformationIdentifier];

LABEL_6:
  if ([(UIKeyboardLayoutStar *)self isEmojiKeyplane]&& ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23) && ![(UIKeyboardLayout *)self isFloating]&& +[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    v11 = self->_keyplane;
    _currentKeyplaneTransformationContext2 = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v13 = [UIKBRemoteEmojiKeyplaneTransformation transformKeyplane:v11 withTransformationContext:_currentKeyplaneTransformationContext2];
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
    _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v5 = [UIKBFloatingKeyplaneTransformation transformKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
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
    _currentKeyplaneTransformationContext = [(UIKeyboardLayoutStar *)self _currentKeyplaneTransformationContext];
    v9 = [(__objc2_class *)v6 transformKeyplane:keyplane withTransformationContext:_currentKeyplaneTransformationContext];
    v10 = self->_keyplane;
    self->_keyplane = v9;

    keyplaneTransformations = self->_keyplaneTransformations;
    transformationIdentifier = [(__objc2_class *)*v5 transformationIdentifier];
    [(NSMutableSet *)keyplaneTransformations addObject:transformationIdentifier];
  }
}

- (void)recenterMonolithKeyplaneSwitchKeys
{
  v3 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Monolith-International-Key"];
  v4 = [(UIKeyboardLayoutStar *)self keylistContainingKey:v3];
  subtrees = [v4 subtrees];

  v5 = [subtrees sortedArrayUsingComparator:&__block_literal_global_994];
  keyplane = self->_keyplane;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
  [screen scale];
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
  keysForMergeConditions = [(UIKBTree *)self->_keyplane keysForMergeConditions];
  if (keysForMergeConditions)
  {
    name2 = [MEMORY[0x1E695DFA8] set];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = keysForMergeConditions;
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
            name = [v11 name];
            [name2 addObject:name];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    v13 = [(UIKBTree *)self->_keyplane mergeKeyNames:name2 inRightToLeft:0];
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

    v19 = [name2 objectsPassingTest:&__block_literal_global_997];
    if ([v19 count] == 2)
    {
      v32 = keysForMergeConditions;
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

      keysForMergeConditions = v32;
    }

    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 2)
    {
      isLinear = [(UIKBScreenTraits *)self->super._screenTraits isLinear];
      [(UIKeyboardLayoutStar *)self recenterMonolithKeyplaneSwitchKeys];
      if (isLinear)
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

  name2 = [(UIKBTree *)self->_keyboard name];
  if ([name2 _containsSubstring:@"LandscapeChoco"])
  {
LABEL_45:

    goto LABEL_46;
  }

  name3 = [(UIKBTree *)self->_keyboard name];
  v31 = [name3 _containsSubstring:@"LandscapeTruffle"];

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
  canAddRomanSwitchKey = [(UIKeyboardLayoutStar *)self canAddRomanSwitchKey];
  if (([(UITextInputTraits *)self->super._inputTraits keyboardType]== 126 || canAddRomanSwitchKey) && !v3 && ![(UIKBTree *)self->_keyplane addMessagesWriteboardKeyOrRomanSwitch:!canAddRomanSwitchKey])
  {
    name = [(UIKBTree *)self->_keyboard name];
    name2 = [(UIKBTree *)self->_keyplane name];
    NSLog(&cfstr_CanNotAddWrite.isa, name, name2);
  }
}

- (BOOL)canAddRomanSwitchKey
{
  if ([(UIKBTree *)self->_keyplane isKanaKeyboard]|| ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) != 0x18 && ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) != 0x17 || [(UIKeyboardLayout *)self isFloating])
  {
    return 0;
  }

  inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
  if (inputModeToMergeCapsLockKey)
  {
    scriptSwitchKey = [(UIKBTree *)self->_keyplane scriptSwitchKey];
    if (scriptSwitchKey)
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

- (BOOL)shouldMergeKey:(id)key
{
  keyCopy = key;
  interactionType = [keyCopy interactionType];
  LOBYTE(v6) = 0;
  if (interactionType > 37)
  {
    if (interactionType == 38)
    {
      inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
      LOBYTE(v6) = inputModeToMergeCapsLockKey != 0;

      goto LABEL_19;
    }

    if (interactionType == 42)
    {
      LOBYTE(v6) = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
      goto LABEL_19;
    }

    if (interactionType != 44)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (interactionType == 5)
  {
LABEL_10:
    if (self->_externalDictationAndInternationalKeys)
    {
      LOBYTE(v6) = 1;
      goto LABEL_19;
    }

    shouldShowDictationKey = [(UIKeyboardLayoutStar *)self shouldShowDictationKey];
LABEL_18:
    LOBYTE(v6) = !shouldShowDictationKey;
    goto LABEL_19;
  }

  if (interactionType == 9)
  {
    representedString = [keyCopy representedString];
    if ([representedString isEqualToString:@"ASCIICapable"])
    {
      v8 = 1;
    }

    else
    {
      representedString2 = [keyCopy representedString];
      v8 = [representedString2 isEqualToString:@"NonASCII"];
    }

    if (self->_externalDictationAndInternationalKeys)
    {
      shouldShowDictationKey = [(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton];
      goto LABEL_18;
    }

    if (([(UITextInputTraits *)self->super._inputTraits keyboardType]!= 122) | v8 & 1)
    {
      v13 = +[UIKeyboardInputModeController sharedInputModeController];
      normalizedEnabledInputModeIdentifiers = [v13 normalizedEnabledInputModeIdentifiers];

      v15 = [normalizedEnabledInputModeIdentifiers containsObject:@"emoji"];
      v16 = ([normalizedEnabledInputModeIdentifiers count] == 2) & v15;
      keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
      if (v16 == 1 && keyboardType == 122 || (v29 = keyboardType, v18 = [(UITextInputTraits *)self->super._inputTraits keyboardType], (v8 & 1) == 0) && (v25 = v18, [(UIKeyboardLayoutStar *)self globeKeyDisplaysAsEmojiKey]) && v25 == 13)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        v19 = +[UIKeyboardInputModeController sharedInputModeController];
        representedString3 = [keyCopy representedString];
        v21 = [v19 identifierIsValidSystemInputMode:representedString3];

        if (v21)
        {
          representedString4 = [keyCopy representedString];
          inputModeToMergeCapsLockKey2 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:representedString4];

          representedString5 = [keyCopy representedString];
          LODWORD(representedString4) = [representedString5 containsString:@"emoji"];

          if (representedString4)
          {
            if (v16 & 1 | ((v15 & 1) == 0))
            {
              LOBYTE(v6) = 1;
            }

            else
            {
              isSecureTextEntry = [(UITextInputTraits *)self->super._inputTraits isSecureTextEntry];
              LOBYTE(v6) = v29 == 122 || isSecureTextEntry;
            }
          }

          else
          {
            v26 = +[UIKeyboardInputModeController sharedInputModeController];
            activeInputModes = [v26 activeInputModes];
            LOBYTE(v6) = [activeInputModes containsObject:inputModeToMergeCapsLockKey2];
          }
        }

        else if (v8)
        {
          inputModeToMergeCapsLockKey2 = [(UIKeyboardLayoutStar *)self inputModeToMergeCapsLockKey];
          LOBYTE(v6) = inputModeToMergeCapsLockKey2 == 0;
        }

        else
        {
          inputModeToMergeCapsLockKey2 = +[UIKeyboardImpl activeInstance];
          v6 = [inputModeToMergeCapsLockKey2 shouldShowInternationalKey] ^ 1;
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
  useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v4 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (useCrescendoLayout)
  {
    v4 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  factory = [*(&self->super.super.super.super.isa + *v4) factory];

  return factory;
}

- (id)viewForKey:(id)key
{
  keyCopy = key;
  useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v6 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (useCrescendoLayout)
  {
    v6 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v7 = [*(&self->super.super.super.super.isa + *v6) viewForKey:keyCopy];

  return v7;
}

- (int)stateForKey:(id)key
{
  keyCopy = key;
  useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v6 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
  if (useCrescendoLayout)
  {
    v6 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
  }

  v7 = [*(&self->super.super.super.super.isa + *v6) stateForKey:keyCopy];

  return v7;
}

- (void)setState:(int)state forKey:(id)key
{
  v4 = *&state;
  keyCopy = key;
  if (keyCopy)
  {
    v10 = keyCopy;
    if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
    {
      state = [v10 state];
      [(TUIKeyplaneView *)self->_liveKeyplaneView setState:v4 forKey:v10];
      v8 = [(UIKeyboardLayoutStar *)self viewForKey:v10];
      if ([v10 displayTypeHint] == 10)
      {
        keyViewAnimator = [(UIKeyboardLayoutStar *)self keyViewAnimator];
        [keyViewAnimator transitionKeyView:v8 fromState:state toState:v4 completion:0];
      }
    }

    else
    {
      [(UIKBKeyplaneView *)self->_keyplaneView setState:v4 forKey:v10];
    }

    keyCopy = v10;
  }
}

- (void)updateState:(int)state forKey:(id)key
{
  v4 = *&state;
  keyCopy = key;
  [(UIKeyboardLayoutStar *)self setActiveKey:keyCopy];
  [(UIKeyboardLayoutStar *)self setState:v4 forKey:keyCopy];
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

- (id)cacheIdentifierForKeyplaneNamed:(id)named
{
  namedCopy = named;
  showsInternationalKey = [(UIKeyboardLayoutStar *)self showsInternationalKey];
  showsDictationKey = [(UIKeyboardLayoutStar *)self showsDictationKey];
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v9 = [namedCopy stringByAppendingFormat:@"-%d-%d-%@", showsInternationalKey, showsDictationKey, localeIdentifier];

  return v9;
}

- (id)cacheTokenForKeyplane:(id)keyplane caseAlternates:(BOOL)alternates
{
  alternatesCopy = alternates;
  keyplaneCopy = keyplane;
  v7 = keyplaneCopy;
  if (!keyplaneCopy)
  {
    v17 = 0;
    goto LABEL_16;
  }

  keyboard = self->_keyboard;
  name = [keyplaneCopy name];
  v10 = [(UIKeyboardLayoutStar *)self defaultNameForKeyplaneName:name];
  v11 = [(UIKBTree *)keyboard subtreeWithName:v10];

  if (v11)
  {
    name2 = [v7 name];
    name3 = [v11 name];
    v14 = [name2 hasPrefix:name3];

    if (v14)
    {
      if (alternatesCopy)
      {
        if (([v11 looksLikeShiftAlternate] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (![v11 looksExactlyLikeShiftAlternate])
      {
LABEL_12:
        _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
        v16 = v11;
        goto LABEL_13;
      }

      if ([v11 isShiftKeyplane])
      {
        visualStyle = [v11 visualStyle];
        v19 = self->_keyboard;
        shiftAlternateKeyplaneName = [v11 shiftAlternateKeyplaneName];
        v21 = [(UIKBTree *)v19 subtreeWithName:shiftAlternateKeyplaneName];

        [v21 setVisualStyle:visualStyle];
        v11 = v21;
      }

      goto LABEL_12;
    }
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v16 = v7;
LABEL_13:
  v17 = [UIKBCacheToken tokenForKeyplane:v16 renderConfig:_inheritedRenderConfig];

  if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
  {
    [(UIView *)self contentScaleFactor];
    [v17 setScale:?];
  }

LABEL_16:

  return v17;
}

- (void)showKeyboardWithInputMode:(id)mode renderConfig:(id)config inputTraits:(id)traits screenTraits:(id)screenTraits splitTraits:(id)splitTraits reload:(BOOL)reload
{
  reloadCopy = reload;
  modeCopy = mode;
  configCopy = config;
  traitsCopy = traits;
  screenTraitsCopy = screenTraits;
  splitTraitsCopy = splitTraits;
  if (self->_isTrackpadMode)
  {
    [(UIKeyboardLayoutStar *)self didEndIndirectSelectionGesture:0];
  }

  [(UIKeyboardLayoutStar *)self cleanupPreviousKeyboardWithNewInputTraits:traitsCopy];
  inputTraits = self->super._inputTraits;
  if (inputTraits)
  {
    v20 = ![(UITextInputTraits *)inputTraits publicTraitsMatchTraits:traitsCopy];
  }

  else
  {
    v20 = 0;
  }

  self->_inputTraitsPreventInitialReuse = v20;
  v33.receiver = self;
  v33.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v33 showKeyboardWithInputTraits:traitsCopy screenTraits:screenTraitsCopy splitTraits:splitTraitsCopy];
  if (!modeCopy)
  {
    modeCopy = UIKeyboardGetCurrentInputMode();
  }

  v21 = +[UIKeyboardImpl activeInstance];
  allowsReachableKeyboard = [v21 allowsReachableKeyboard];

  if (allowsReachableKeyboard)
  {
    [screenTraitsCopy idiom];
    [screenTraitsCopy orientation];
    v23 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v23 preferencesActions];
    self->_currentHandBias = [preferencesActions handBias];
  }

  v25 = UIKeyboardGetKBStarName(modeCopy, screenTraitsCopy, [traitsCopy keyboardType], 0);
  -[UIKeyboardLayoutStar setKeyboardName:appearance:](self, "setKeyboardName:appearance:", v25, [traitsCopy keyboardAppearance]);
  if (self->_keyboard)
  {
    [(UIKeyboardLayoutStar *)self stretchFactor];
    [(UIKBScreenTraits *)self->super._screenTraits setStretchFactor:?];
    if (!configCopy)
    {
      _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
      v27 = _inheritedRenderConfig;
      if (_inheritedRenderConfig)
      {
        v28 = _inheritedRenderConfig;
      }

      else
      {
        v28 = +[UIKBRenderConfig defaultConfig];
      }

      configCopy = v28;
    }

    [(UIKeyboardLayoutStar *)self setRenderConfig:configCopy updateKeyplane:0, configCopy];
    v29 = +[UIKeyboardImpl activeInstance];
    self->_shift = [v29 isShifted];

    v30 = +[UIKeyboardImpl activeInstance];
    self->_autoshift = [v30 isAutoShifted];

    [(UIKeyboardLayoutStar *)self setLayoutTag:@"Default"];
    if (reloadCopy)
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
    configCopy = v32;
    if (+[UIKeyboardImpl rivenPreference])
    {
      pinchSplitGestureEnabled = [(UIKeyboardLayoutStar *)self pinchSplitGestureEnabled];
    }

    else
    {
      pinchSplitGestureEnabled = 0;
    }

    [(UIGestureRecognizer *)self->_pinchGestureRecognizer setEnabled:pinchSplitGestureEnabled];
  }
}

- (id)initialKeyplaneNameWithKBStarName:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  nameCopy = name;
  subtrees = [(UIKBTree *)self->_keyboard subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v5)
  {
    name = 0;
    goto LABEL_18;
  }

  v6 = v5;
  name = 0;
  v8 = *v26;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(subtrees);
      }

      if (!name)
      {
        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 supportsType:{-[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")}])
        {
          name = [v10 name];
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

            shiftAlternateKeyplaneName = [v10 shiftAlternateKeyplaneName];
            v13 = name;
            name = shiftAlternateKeyplaneName;
          }
        }

        else
        {
          name = 0;
        }
      }
    }

    v6 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        name = v19;
        goto LABEL_25;
      }
    }

    else
    {
LABEL_25:

      v16 = v19;
    }

    v20 = nameCopy;

    if (!name)
    {
LABEL_27:
      subtrees2 = [(UIKBTree *)self->_keyboard subtrees];
      v22 = [subtrees2 objectAtIndex:0];
      name = [v22 name];

      NSLog(&cfstr_CanTFindKeypla.isa, [(UITextInputTraits *)self->super._inputTraits keyboardType], v20, name);
    }
  }

  else
  {
    v20 = nameCopy;
    if (!name)
    {
      goto LABEL_27;
    }
  }

  return name;
}

- (void)cleanupPreviousKeyboardWithNewInputTraits:(id)traits
{
  traitsCopy = traits;
  keyViewAnimator = self->_keyViewAnimator;
  self->_keyViewAnimator = 0;

  if ([(UIKeyboardLayoutStar *)self isEmojiKeyplane])
  {
    +[UIKeyboardEmojiKeyDisplayController writeEmojiDefaultsAndReleaseActiveInputView];
  }

  if (-[UIKeyboardLayoutStar isDeveloperGestureKeybaord](self, "isDeveloperGestureKeybaord") && [traitsCopy keyboardType] != 12)
  {
    [(UIKeyboardLayoutStar *)self clearKeyAnnotationsIfNecessary];
  }
}

- (void)deactivateActiveKeysClearingTouchInfo:(BOOL)info clearingDimming:(BOOL)dimming
{
  if (!self->_suppressDeactivateKeys)
  {
    dimmingCopy = dimming;
    infoCopy = info;
    if (self->_liveKeyplaneView)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 clearLongPressTimer];

      [(TUIKeyplaneView *)self->_liveKeyplaneView deactivateKeys];
    }

    [(UIKBKeyplaneView *)self->_keyplaneView deactivateKeys];
    if (infoCopy)
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
    if (dimmingCopy)
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
  activeKey = [(UIKeyboardLayoutStar *)self activeKey];

  if (activeKey)
  {
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    [(UIKeyboardLayoutStar *)self setState:2 forKey:activeKey2];

    [(UIKeyboardLayoutStar *)self setActiveKey:0];
  }
}

- (void)prepareSliderBehaviorFeedback
{
  slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];

  if (!slideBehaviour)
  {
    v4 = objc_alloc_init(UISelectionFeedbackGenerator);
    [(UIKeyboardLayoutStar *)self setSlideBehaviour:v4];

    slideBehaviour2 = [(UIKeyboardLayoutStar *)self slideBehaviour];
    [slideBehaviour2 userInteractionStarted];
  }
}

- (void)provideSliderBehaviorFeedback
{
  slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [slideBehaviour selectionChanged];
}

- (void)finishSliderBehaviorFeedback
{
  slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];
  [slideBehaviour userInteractionEnded];

  [(UIKeyboardLayoutStar *)self setSlideBehaviour:0];
}

- (BOOL)shouldHitTestKey:(id)key
{
  keyCopy = key;
  v5 = [keyCopy visible] && (!objc_msgSend(keyCopy, "ghost") || self->_ghostKeysEnabled) && objc_msgSend(keyCopy, "displayType") != 12;

  return v5;
}

- (id)keyViewHitTestForPoint:(CGPoint)point
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_liveKeyplaneView)
  {
    v3 = 0;
  }

  else
  {
    y = point.y;
    x = point.x;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    activeKeyViews = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews];
    v3 = [activeKeyViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(activeKeyViews);
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

        v3 = [activeKeyViews countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v3);
    }

LABEL_14:
  }

  return v3;
}

- (id)keyHitTestContainingPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keys = [(UIKBTree *)self->_keyplane keys];
  v7 = [keys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(keys);
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

      v8 = [keys countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)keyHitTestClosestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keys = [(UIKBTree *)self->_keyplane keys];
  v7 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:keys inKeys:x, y];

  return v7;
}

- (id)keyHitTestClosestToPoint:(CGPoint)point inKeys:(id)keys
{
  y = point.y;
  x = point.x;
  v30 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (_os_feature_enabled_impl())
  {
    v8 = 0;
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = keysCopy;
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

- (id)keyHitTestWithoutCharging:(CGPoint)charging
{
  y = charging.y;
  x = charging.x;
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

- (id)keyHitTest:(CGPoint)test
{
  if (self->_keyboard)
  {
    if (self->_keyplane && (y = test.y, x = test.x, [(UIKeyboardLayoutStar *)self pointInside:0 withEvent:?]))
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

- (BOOL)isGeometricShiftOrMoreKeyForTouch:(id)touch
{
  touchCopy = touch;
  v5 = +[UIKeyboardImpl activeInstance];

  if (v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [touchCopy locationInView:v6];
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

  name = [(UIKBTree *)self->_keyplane name];
  v6 = [name containsString:@"Korean10KeySplit-Keyboard"];

  return v6;
}

- (int)keycodeForKey:(id)key
{
  keyplane = self->_keyplane;
  keyCopy = key;
  keys = [(UIKBTree *)keyplane keys];
  v6 = [keys indexOfObject:keyCopy];

  return v6;
}

- (id)unprocessedTouchEventsForTouchInfo:(id)info touchStage:(int)stage forcedKeyCode:(int)code
{
  infoCopy = info;
  array = [MEMORY[0x1E695DF70] array];
  processedTouchCount = [infoCopy processedTouchCount];
  touchHistory = [infoCopy touchHistory];
  v11 = [touchHistory count];

  if (processedTouchCount < v11)
  {
    do
    {
      touchHistory2 = [infoCopy touchHistory];
      v13 = [touchHistory2 objectAtIndexedSubscript:processedTouchCount];

      if (processedTouchCount)
      {
        if (stage == 1 || ([infoCopy touchHistory], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, processedTouchCount + 1 < v15))
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
      v25 = [v17 touchEventWithStage:v16 location:objc_msgSend(v13 radius:"pathIndex") timestamp:objc_msgSend(infoCopy pathIndex:"fingerID") fingerID:code forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(infoCopy continuousPathState:{"continuousPathState")), v19, v21, v23, v24}];
      [array addObject:v25];

      ++processedTouchCount;
      touchHistory3 = [infoCopy touchHistory];
      v27 = [touchHistory3 count];
    }

    while (processedTouchCount < v27);
  }

  touchHistory4 = [infoCopy touchHistory];
  [infoCopy setProcessedTouchCount:{objc_msgSend(touchHistory4, "count")}];

  return array;
}

- (void)playKeyFeedbackIfNecessaryForTouchDownOnKey:(id)key touchInfo:(id)info
{
  keyCopy = key;
  infoCopy = info;
  v7 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:keyCopy];
  if (([infoCopy didPlayKeyFeedback] & 1) == 0 && (v7 & 0x40000004) == 4)
  {
    if (!_AXSZoomTouchEnabled())
    {
      if (+[UIKeyboardImpl rivenPreference]&& [(UIKeyboardLayoutStar *)self playKeyClickSoundOn])
      {
        [(UIKeyboardLayoutStar *)self performSelector:sel_playKeyClickSoundOnDownForKey_ withObject:keyCopy afterDelay:0.05];
      }

      else
      {
        [(UIKeyboardLayoutStar *)self playKeyClickSoundOnDownForKey:keyCopy];
      }
    }

    [infoCopy setDidPlayKeyFeedback:1];
  }
}

- (void)performHitTestForTouchInfo:(id)info touchStage:(int)stage executionContextPassingUIKBTree:(id)tree
{
  v6 = *&stage;
  infoCopy = info;
  treeCopy = tree;
  v11 = treeCopy;
  if (infoCopy)
  {
    touch = [infoCopy touch];
    [touch locationInView:self];
    v14 = v13;
    v16 = v15;
    [touch timestamp];
    v18 = v17;
    v19 = +[UIKeyboardImpl activeInstance];
    v20 = [(UIKeyboardLayoutStar *)self pointInside:0 withEvent:v14, v16];
    v21 = [(UIKeyboardLayoutStar *)self keyHitTest:v14, v16];
    if (!v6)
    {
      [(UIKeyboardLayoutStar *)self playKeyFeedbackIfNecessaryForTouchDownOnKey:v21 touchInfo:infoCopy];
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

      continuousPathState = [infoCopy continuousPathState];
      if (continuousPathState == 4 || v20)
      {
        if (continuousPathState == 4)
        {
          v31 = 4294967294;
        }

        else
        {
          v31 = 0xFFFFFFFFLL;
        }

        v32 = [(UIKeyboardLayoutStar *)self unprocessedTouchEventsForTouchInfo:infoCopy touchStage:v6 forcedKeyCode:v31];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __94__UIKeyboardLayoutStar_performHitTestForTouchInfo_touchStage_executionContextPassingUIKBTree___block_invoke;
        v46[3] = &unk_1E7114940;
        v49 = a2;
        v46[4] = self;
        v47 = infoCopy;
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
        [infoCopy setStage:3];
        [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:6 forTouchInfo:infoCopy];
        v37 = MEMORY[0x1E69D9668];
        [touch pathMajorRadius];
        v39 = [v37 touchEventWithStage:3 location:objc_msgSend(touch radius:"pathIndex") timestamp:objc_msgSend(infoCopy pathIndex:"fingerID") fingerID:-1 forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(infoCopy continuousPathState:{"continuousPathState")), v14, v16, v38, v18}];
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
          [infoCopy setStage:v6];
          v24 = [(UIKeyboardLayoutStar *)self unprocessedTouchEventsForTouchInfo:infoCopy touchStage:v6 forcedKeyCode:[(UIKeyboardLayoutStar *)self keycodeForKey:v21]];
          [v19 skipHitTestForTouchEvents:v24];
          goto LABEL_42;
        }

LABEL_43:
        [v11 returnExecutionToParentWithInfo:v21];
        goto LABEL_44;
      }

      if ([v21 interactionType] != 18)
      {
        parentKey = [v21 parentKey];
        v41 = touch;
        v42 = v22;
        v43 = v19;
        v44 = [parentKey interactionType] != 18;

        v45 = v44 & v42;
        touch = v41;
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

  [treeCopy returnExecutionToParent];
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

- (BOOL)isDeadkeyInput:(id)input
{
  inputCopy = input;
  if (-[UIKeyboardLayoutStar diacriticForwardCompose](self, "diacriticForwardCompose") && [inputCopy length] == 1)
  {
    v5 = MEMORY[0x18CFE7A80]([inputCopy _firstLongCharacter]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatePhysicalKeyboardEvent:(id)event withMarkedInput:(id)input
{
  eventCopy = event;
  inputCopy = input;
  if ([inputCopy length])
  {
    [eventCopy set_inputFlags:{objc_msgSend(eventCopy, "_inputFlags") | 2}];
    v8 = UIKeyboardGetCurrentInputMode();
    v9 = UIKeyboardLocalizedObject(@"CustomDeadkeyComposition", v8, 0, 0, 0);
    _modifiedInput = [eventCopy _modifiedInput];
    v11 = [inputCopy stringByAppendingString:_modifiedInput];

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
      v13 = [v9 objectForKey:inputCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = inputCopy;
      }

      v16 = v15;

      _modifiedInput2 = [eventCopy _modifiedInput];
      v18 = [v16 stringByAppendingString:_modifiedInput2];

      [eventCopy set_modifiedInput:v18];
    }

    else
    {
      [eventCopy set_modifiedInput:v12];
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

- (id)currentRepresentedStringForDualDisplayKey:(id)key
{
  keyCopy = key;
  v5 = +[UIKeyboardImpl activeInstance];
  secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
  firstObject = [secondaryRepresentedStrings firstObject];

  if (!-[UIKeyboardLayoutStar isShiftKeyBeingHeld](self, "isShiftKeyBeingHeld") && (!self->_shift || ([v5 isAutoShifted] & 1) != 0 || (objc_msgSend(v5, "isShiftLocked") & 1) != 0) || (UIKeyboardCurrentInputModeIsMultiscript() & 1) != 0)
  {
    representedString = [keyCopy representedString];
    v8 = representedString;
    if (!firstObject)
    {
      v10 = [representedString substringToIndex:1];

      v8 = v10;
    }
  }

  else if (firstObject)
  {
    v8 = firstObject;
  }

  else
  {
    representedString2 = [keyCopy representedString];
    v8 = [representedString2 substringFromIndex:1];
  }

  return v8;
}

- (id)createKeyEventForStringAction:(id)action forKey:(id)key touchInfo:(id)info inputFlags:(int)flags
{
  v6 = *&flags;
  infoCopy = info;
  actionCopy = action;
  v11 = [infoCopy key];
  v12 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:actionCopy forKey:v11 inputFlags:v6];

  continuousPathState = [infoCopy continuousPathState];
  if (continuousPathState >= 4)
  {
    [v12 setSource:6];
  }

  return v12;
}

- (id)createKeyEventForStringAction:(id)action forKey:(id)key inputFlags:(int)flags
{
  actionCopy = action;
  keyCopy = key;
  if (!keyCopy)
  {
    keyCopy = [(UIKeyboardLayoutStar *)self activeKey];
  }

  if ((flags & 2) != 0)
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

  v11 = keyCopy;
  v12 = self->_keyplane;
  gestureKey = [(UIKBTree *)v11 gestureKey];
  if (!gestureKey)
  {
    gestureKey3 = v11;
    goto LABEL_18;
  }

  gestureKeyplaneName2 = gestureKey;
  gestureKeyplaneName = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
  if (!gestureKeyplaneName)
  {
    gestureKey3 = v11;
LABEL_17:

    goto LABEL_18;
  }

  v16 = gestureKeyplaneName;
  representedString = [(UIKBTree *)v11 representedString];
  if ([(__CFString *)actionCopy isEqualToString:representedString])
  {

    gestureKey3 = v11;
LABEL_16:

    goto LABEL_17;
  }

  HIDWORD(v40) = v10;
  v41 = v12;
  gestureKey2 = [(UIKBTree *)v11 gestureKey];
  representedString2 = [gestureKey2 representedString];
  LODWORD(v40) = [(__CFString *)actionCopy isEqualToString:representedString2];

  if (v40)
  {
    gestureKey3 = [(UIKBTree *)v11 gestureKey];

    keyboard = self->_keyboard;
    gestureKeyplaneName2 = [(UIKBTree *)self->_keyplane gestureKeyplaneName];
    v12 = [(UIKBTree *)keyboard subtreeWithName:gestureKeyplaneName2];
    v16 = v41;
    v10 = HIDWORD(v40);
    goto LABEL_16;
  }

  gestureKey3 = v11;
  v12 = v41;
  v10 = HIDWORD(v40);
LABEL_18:
  v22 = [(UIKBTree *)gestureKey3 objectForProperty:@"shouldskipcandidateselection", v40];

  if (v22)
  {
    v23 = gestureKey3;
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

  v25 = v24 | flags;
  if ([(__CFString *)actionCopy _containsEmoji])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  if ([(UIKeyboardLayoutStar *)self isLongPressedKey:v11])
  {
    name = [(UIKBTree *)v11 name];
    if (![name hasPrefix:@"NumberPad-"])
    {
LABEL_31:

      goto LABEL_32;
    }

    name2 = [(UIKBTree *)v11 name];
    v29 = [name2 hasSuffix:@"-0-Plus"];

    if (v29)
    {
      name = actionCopy;
      actionCopy = @"+";
      goto LABEL_31;
    }
  }

LABEL_32:
  if ((flags & 0x102) == 0 && [(UIKBTree *)v11 displayType]== 7)
  {
    v30 = [(UIKeyboardLayoutStar *)self currentRepresentedStringForDualDisplayKey:v11];

    actionCopy = v30;
  }

  preferredLocale = +[UIKeyboardImpl activeInstance];
  if ([preferredLocale isShiftLocked])
  {
    displayType = [(UIKBTree *)v11 displayType];

    if (displayType != 7)
    {
      goto LABEL_39;
    }

    preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
    v33 = [(__CFString *)actionCopy uppercaseStringWithLocale:preferredLocale];

    actionCopy = v33;
  }

LABEL_39:
  v34 = [UIPhysicalKeyboardEvent _eventWithInput:actionCopy inputFlags:v26];
  [v34 setSource:1];
  v35 = [(UIKBTree *)v11 stringForProperty:@"KBhint"];
  [v34 set_hint:v35];

  v36 = +[UIKeyboardImpl activeInstance];
  if (([v36 usesCandidateSelection] & 1) == 0)
  {
    if ([(UIKeyboardLayoutStar *)self isDeadkeyInput:actionCopy])
    {
      [v34 set_inputFlags:{objc_msgSend(v34, "_inputFlags") | 0x10}];
      _modifiedInput = [v34 _modifiedInput];
      [v34 set_markedInput:_modifiedInput];

      [v34 set_modifiedInput:&stru_1EFB14550];
    }

    inputForMarkedText = [v36 inputForMarkedText];
    if ([inputForMarkedText length])
    {
      [(UIKeyboardLayoutStar *)self updatePhysicalKeyboardEvent:v34 withMarkedInput:inputForMarkedText];
    }
  }

  return v34;
}

- (void)clearHandwritingStrokesIfNeededAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
  {
    v5 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v7 = [v5 objectAtIndex:0];

    v6 = [(UIKeyboardLayoutStar *)self viewForKey:v7];
    [v6 clearAndNotify:notifyCopy];
    [v6 clearTouches];
  }
}

- (void)deleteHandwritingStrokesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([(UIKeyboardLayoutStar *)self isHandwritingPlane])
  {
    v4 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Handwriting-Input"];
    v5 = [v4 objectAtIndex:0];

    v6 = [(UIKeyboardLayoutStar *)self viewForKey:v5];
    [v6 deleteStrokesAtIndexes:indexesCopy];
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
  multitapCompleteKeys = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  v4 = [multitapCompleteKeys count];
  multitapKey = self->_multitapKey;
  if (v4 == 1)
  {
    if ([(UIKBTree *)multitapKey forceMultitap])
    {
      firstObject = 0;
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
    v11 = multitapCompleteKeys;
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

      firstObject = v17;

      if (firstObject)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_13:
    }
  }

  firstObject = [multitapCompleteKeys firstObject];
LABEL_16:

  return firstObject;
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
  multitapCompleteKeys = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
  v4 = [multitapCompleteKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(multitapCompleteKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 state] != 1)
        {
          [(UIKeyboardLayoutStar *)self setState:1 forKey:v8];
        }
      }

      v5 = [multitapCompleteKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)endMultitapForKey:(id)key
{
  if (key)
  {
    [(UIKeyboardLayoutStar *)self setState:2 forKey:key];
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

  taskQueue = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__UIKeyboardLayoutStar_handleMultitapTimerFired__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  selfCopy = self;
  objc_copyWeak(&v9, &location);
  [taskQueue addTask:v6 breadcrumb:qword_1ED493220];

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

- (BOOL)isMultitapKey:(id)key
{
  keyCopy = key;
  if ([(UIKeyboardLayoutStar *)self canMultitap])
  {
    fullRepresentedString = [keyCopy fullRepresentedString];
    v6 = [fullRepresentedString length];
    representedString = [keyCopy representedString];
    if (v6 <= [representedString length])
    {
      forceMultitap = [keyCopy forceMultitap];
    }

    else
    {
      forceMultitap = 1;
    }
  }

  else
  {
    forceMultitap = [keyCopy forceMultitap];
  }

  return forceMultitap;
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

  activeMultitapCompleteKey = [(UIKeyboardLayoutStar *)self activeMultitapCompleteKey];
  v8 = activeMultitapCompleteKey;
  if (activeMultitapCompleteKey)
  {
    v7 = [(UIKeyboardLayoutStar *)self stateForKey:activeMultitapCompleteKey];
    activeMultitapCompleteKey = v8;
    if (v7 != 2)
    {
      self->_multitapCount = 0;
      self->_unshiftAfterMultitap = 0;
    }
  }

  [(UIKeyboardLayoutStar *)self setState:2 forKey:activeMultitapCompleteKey];
}

- (void)setLayoutTag:(id)tag
{
  objc_storeStrong(&self->_layoutTag, tag);
  [(UIKeyboardLayoutStar *)self updateLayoutTags];

  [(UIKeyboardLayoutStar *)self updateCachedKeyplaneKeycaps];
}

- (void)setLabel:(id)label forKey:(id)key
{
  labelCopy = label;
  keyCopy = key;
  v7 = keyCopy;
  if (!self->_isTrackpadMode)
  {
    if (@"_keyid_space_" != keyCopy)
    {
      if (@"_keyid_return_" == keyCopy)
      {
        cache = [(UIKBTree *)self->_keyplane cache];
        v16 = cache;
        v17 = @"Return-Key";
      }

      else
      {
        if (@"_keyid_accent_" != keyCopy)
        {
          if (@"_keyid_facemark_" == keyCopy)
          {
            v8 = @"Facemark";
          }

          else
          {
            v8 = keyCopy;
          }

          v10 = [(UIKBTree *)self->_keyplane keysWithString:v8];
          goto LABEL_19;
        }

        cache = [(UIKBTree *)self->_keyplane cache];
        v16 = cache;
        v17 = @"Latin-Accents";
      }

      v10 = [cache objectForKey:v17];

      goto LABEL_19;
    }

    cache2 = [(UIKBTree *)self->_keyplane cache];
    v10 = [cache2 objectForKey:@"Space-Key"];

    v11 = [v10 count];
    cache3 = [(UIKBTree *)self->_keyplane cache];
    v13 = [cache3 objectForKey:@"Unlabeled-Space-Key"];
    if (v11)
    {

      if (![v13 count])
      {
        goto LABEL_11;
      }

      [v10 arrayByAddingObjectsFromArray:v13];
      v13 = cache3 = v13;
    }

    v14 = v13;

    v13 = cache3;
    v10 = v14;
LABEL_11:

    if (![v10 count])
    {
      cache4 = [(UIKBTree *)self->_keyplane cache];
      v19 = [cache4 objectForKey:@"Ideographic-Space-Key"];

      v10 = v19;
    }

LABEL_19:
    if (![v10 count])
    {
LABEL_62:

      goto LABEL_63;
    }

    v20 = @"_keyid_space_" == v7 && @"UI-Space" == labelCopy;
    if (v20 && (([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 1 && ([(UIKBTree *)self->_keyplane visualStyling]& 0x80) == 0 && ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF0000) != 0xB0000 && ![(UIKeyboardLayoutStar *)self isHandwritingPlane]|| ([(UIKBTree *)self->_keyplane visualStyling]& 0x80) != 0 && ![(UIKeyboardLayoutStar *)self hasCandidateKeys]|| [(UIKeyboardLayoutStar *)self useCrescendoLayout]&& ([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 1))
    {
      v21 = &stru_1EFB14550;
    }

    else
    {
      v22 = UIKeyboardLocalizedString(labelCopy, 0, 0, 0);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = labelCopy;
      }

      v21 = v23;
    }

    firstObject = [v10 firstObject];
    if (@"_keyid_space_" == v7 && [v10 count] >= 2 && -[UIKeyboardLayoutStar keyplaneIsSplit](self, "keyplaneIsSplit"))
    {
      lastObject = [v10 objectAtIndex:1];

      firstObject2 = 0;
    }

    else
    {
      if (@"_keyid_return_" != v7 || [v10 count] < 2 || (objc_msgSend(firstObject, "shape"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "concaveCorner"), v27, !v28))
      {
        firstObject2 = 0;
LABEL_48:
        overrideDisplayString = [firstObject overrideDisplayString];
        v30 = overrideDisplayString;
        if (overrideDisplayString == v21)
        {
        }

        else
        {
          overrideDisplayString2 = [firstObject overrideDisplayString];
          v32 = [overrideDisplayString2 isEqualToString:v21];

          if ((v32 & 1) == 0)
          {
            [firstObject setOverrideDisplayString:v21];
            v33 = [(UIKeyboardLayoutStar *)self viewForKey:firstObject];
            if (v33)
            {
              [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForKey:firstObject] forKey:firstObject];
              if (!firstObject2)
              {
                goto LABEL_59;
              }
            }

            else
            {
              [firstObject frame];
              [(UIView *)self setNeedsDisplayInRect:?];
              if (!firstObject2)
              {
                goto LABEL_59;
              }
            }

            [firstObject2 setOverrideDisplayString:v21];
            v34 = [(UIKeyboardLayoutStar *)self viewForKey:firstObject2];
            if (v34)
            {
              [(UIKeyboardLayoutStar *)self setState:[(UIKeyboardLayoutStar *)self stateForKey:firstObject2] forKey:firstObject2];
            }

            else
            {
              [firstObject2 frame];
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

      lastObject = [v10 lastObject];

      firstObject2 = [v10 firstObject];
    }

    firstObject = lastObject;
    goto LABEL_48;
  }

LABEL_63:
}

- (void)setTarget:(id)target forKey:(id)key
{
  targetCopy = target;
  keyCopy = key;
  v8 = keyCopy;
  if (@"_keyid_space_" == keyCopy)
  {
    v9 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
  }

  else
  {
    if (@"_keyid_return_" != keyCopy)
    {
      goto LABEL_6;
    }

    v9 = &OBJC_IVAR___UIKeyboardLayoutStar__returnTarget;
  }

  objc_storeStrong((&self->super.super.super.super.isa + *v9), target);
LABEL_6:
}

- (void)setAction:(SEL)action forKey:(id)key
{
  if (@"_keyid_space_" == key)
  {
    v4 = 824;
  }

  else
  {
    if (@"_keyid_return_" != key)
    {
      return;
    }

    v4 = 848;
  }

  v5 = (self + v4);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  *v5 = actionCopy;
}

- (void)setLongPressAction:(SEL)action forKey:(id)key
{
  if (@"_keyid_space_" == key)
  {
    v4 = 832;
  }

  else
  {
    if (@"_keyid_return_" != key)
    {
      return;
    }

    v4 = 856;
  }

  v5 = (self + v4);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  *v5 = actionCopy;
}

- (void)restoreDefaultsForKey:(id)key
{
  keyCopy = key;
  v8 = keyCopy;
  if (@"_keyid_space_" == keyCopy)
  {
    [(UIKeyboardLayoutStar *)self setLabel:0 forKey:?];
    v5 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
  }

  else
  {
    if (@"_keyid_return_" != keyCopy)
    {
      [(UIKeyboardLayoutStar *)self setLabel:0 forKey:keyCopy];
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

- (BOOL)isLongPressedKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    interactionType = [keyCopy interactionType];
    if (self->_showDictationKey && interactionType == 5)
    {
      isLongPress = 1;
      goto LABEL_10;
    }

    if (([(UIKeyboardLayoutStar *)self downActionFlagsForKey:v5]& 0x80) != 0)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      isLongPress = [v9 isLongPress];

      goto LABEL_10;
    }
  }

  isLongPress = 0;
LABEL_10:

  return isLongPress;
}

- (BOOL)shouldShowInternationalMenuForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy interactionType] == 9 && objc_msgSend(keyCopy, "displayType") == 13)
  {
    v5 = ![(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)showMenu:(id)menu forKey:(id)key
{
  keyCopy = key;
  menuCopy = menu;
  v7 = [(UIKeyboardLayoutStar *)self viewForKey:keyCopy];
  [v7 setPopupMenu:menuCopy];

  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  [menuCopy setRenderConfig:renderConfig];

  [menuCopy showAsPopupForKey:keyCopy inLayout:self];
}

- (void)longPressAction
{
  activeKey = [(UIKeyboardLayoutStar *)self activeKey];
  if (activeKey)
  {
    v4 = [(UIKeyboardLayoutStar *)self touchInfoForKey:activeKey];
    touch = [v4 touch];
    v6 = [(UIKeyboardLayout *)self _hasRelatedTouchesForTouchState:touch];

    if (v6 || [v4 continuousPathState] == 4 || objc_msgSend(v4, "continuousPathState") == 3)
    {
      [(UIKeyboardLayoutStar *)self deactivateActiveKey];
LABEL_6:

      goto LABEL_7;
    }

    if ([activeKey interactionType] == 4 && -[UIKeyboardLayoutStar isHandwritingPlane](self, "isHandwritingPlane"))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    if (!-[UIKeyboardLayoutStar isLongPressedKey:](self, "isLongPressedKey:", activeKey) && ![v4 delayed])
    {
      goto LABEL_6;
    }

    self->_didLongPress = 1;
    v7 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:activeKey];
    if ([v4 delayed] && (objc_msgSend(activeKey, "interactionType") == 4 || objc_msgSend(activeKey, "interactionType") == 14))
    {
      objc_initWeak(&location, self);
      if (qword_1ED493238 != -1)
      {
        dispatch_once(&qword_1ED493238, &__block_literal_global_1089);
      }

      taskQueue = [(UIKeyboardLayout *)self taskQueue];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke_4;
      v63[3] = &unk_1E71149B8;
      objc_copyWeak(v66, &location);
      v64 = v4;
      v65 = activeKey;
      v66[1] = v7;
      [taskQueue addTask:v63 breadcrumb:qword_1ED493230];

      v9 = v66;
LABEL_19:
      objc_destroyWeak(v9);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    interactionType = [activeKey interactionType];
    if ((v7 & 0x1000F8000) != 0)
    {
      [(UIKeyboardLayoutStar *)self showPopupVariantsForKey:activeKey];
      if (self->_swipeDetected && ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23))
      {
        if ([activeKey displayType] == 7)
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

    v11 = interactionType;
    if ((v7 & 0x100000) != 0)
    {
      if (interactionType == 4)
      {
        v25 = 880;
        deleteTarget = self->_deleteTarget;
      }

      else
      {
        if (interactionType == 15)
        {
          v14 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
        }

        else
        {
          if (interactionType != 13)
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
        isDictationPopoverPresented = [v16 isDictationPopoverPresented];

        if (isDictationPopoverPresented)
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
      enabledDictationLanguages = [v19 enabledDictationLanguages];
      v21 = [enabledDictationLanguages count];

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
      [(UIKeyboardLayoutStar *)self showMenu:v12 forKey:activeKey];
      goto LABEL_74;
    }

    if (interactionType == 38)
    {
      objc_initWeak(&location, self);
      if (qword_1ED493248 != -1)
      {
        dispatch_once(&qword_1ED493248, &__block_literal_global_1096);
      }

      taskQueue2 = [(UIKeyboardLayout *)self taskQueue];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __39__UIKeyboardLayoutStar_longPressAction__block_invoke_7;
      v60[3] = &unk_1E70FDBD0;
      objc_copyWeak(&v62, &location);
      v61 = activeKey;
      [taskQueue2 addTask:v60 breadcrumb:qword_1ED493240];

      v9 = &v62;
      goto LABEL_19;
    }

    if (interactionType == 9 && [activeKey displayType] == 13)
    {
      if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3 || ![(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:activeKey])
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

      v58 = [(UIKeyboardLayoutStar *)self stateForKey:activeKey];

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
        window = [(UIView *)self window];
        v28 = [window _isTextEffectsWindow] ^ 1;
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
      [(UIKeyboardLayoutStar *)self setState:4 forKey:activeKey];
      goto LABEL_74;
    }

    if (v11 == 6)
    {
      [activeKey paddedFrame];
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
        v48 = [(UIKeyboardLayoutStar *)self touchInfoForKey:activeKey];
        touch2 = [v48 touch];
        [touch2 locationInView:self];
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
              v59 = [(UIKeyboardLayoutStar *)self stateForKey:activeKey];

              if (v59 != 4)
              {
                goto LABEL_95;
              }
            }

            [(UIKeyboardLayoutStar *)self showMenu:v47 forKey:activeKey];
            goto LABEL_95;
          }
        }

LABEL_95:

        goto LABEL_6;
      }

      [activeKey paddedFrame];
      MaxX = CGRectGetMaxX(v69);
      [activeKey paddedFrame];
      v40 = MaxX - v39 * 0.25;
      [activeKey paddedFrame];
      MaxY = CGRectGetMaxY(v70);
      [activeKey paddedFrame];
      v43 = MaxY + v42 * -0.15;
      [activeKey paddedFrame];
      v45 = v44 * 0.25;
      [activeKey paddedFrame];
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
  cache = [(UIKBTree *)self->_keyplane cache];
  v3 = [cache objectForKey:@"Space-Key"];

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

- (id)_keyplaneVariantsKeyForString:(id)string
{
  keyplane = self->_keyplane;
  stringCopy = string;
  componentName = [(UIKBTree *)keyplane componentName];
  v6 = [stringCopy stringByAppendingFormat:@"-%@", componentName];

  return v6;
}

- (id)_uniquelyInsertVariantString:(id)string beforeVariants:(id)variants direction:(id)direction
{
  stringCopy = string;
  directionCopy = direction;
  v9 = [variants mutableCopy];
  v10 = [v9 indexOfObject:stringCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v10];
  }

  if ([directionCopy isEqualToString:@"left"])
  {
    [v9 addObject:stringCopy];
  }

  else
  {
    [v9 insertObject:stringCopy atIndex:0];
  }

  return v9;
}

- (id)_variantsByAppendingDualStringKey:(id)key toVariants:(id)variants
{
  v32[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  variantsCopy = variants;
  if ([keyCopy displayType] == 7)
  {
    secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
    v9 = [secondaryDisplayStrings objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v30 = v9;
    }

    else
    {
      displayString = [keyCopy displayString];
      v30 = [displayString substringFromIndex:1];
    }

    secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
    v13 = [secondaryRepresentedStrings objectAtIndex:0];
    v14 = v13;
    selfCopy = self;
    if (v13)
    {
      v29 = v13;
    }

    else
    {
      representedString = [keyCopy representedString];
      v29 = [representedString substringFromIndex:1];
    }

    v17 = [variantsCopy objectForKey:?];
    v18 = [variantsCopy objectForKey:@"Strings"];
    v19 = [variantsCopy objectForKey:@"Direction"];
    v20 = selfCopy;
    v21 = [(UIKeyboardLayoutStar *)selfCopy _uniquelyInsertVariantString:v30 beforeVariants:v17 direction:v19];

    v22 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:v29 beforeVariants:v18 direction:v19];

    representedString2 = [keyCopy representedString];
    v24 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:representedString2 beforeVariants:v21 direction:v19];

    displayString2 = [keyCopy displayString];
    v26 = [(UIKeyboardLayoutStar *)v20 _uniquelyInsertVariantString:displayString2 beforeVariants:v22 direction:v19];

    v31[0] = @"Direction";
    v31[1] = @"Keycaps";
    v32[0] = v19;
    v32[1] = v24;
    v31[2] = @"Strings";
    v32[2] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

    variantsCopy = v27;
  }

  return variantsCopy;
}

- (id)_variantsOfCurrencyKey:(id)key language:(id)language
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  languageCopy = language;
  representedString = [keyCopy representedString];
  v9 = [(UIKBTree *)self->_keyplane visualStyling]& 0x3F;
  v10 = UIKeyboardCurrencyVariants(representedString, languageCopy);
  if (!v10 && v9 == 23)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
    v12 = [secondaryRepresentedStrings countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(secondaryRepresentedStrings);
          }

          v16 = UIKeyboardCurrencyVariants(*(*(&v20 + 1) + 8 * i), languageCopy);
          if (v16)
          {
            v10 = v16;
            goto LABEL_13;
          }
        }

        v13 = [secondaryRepresentedStrings countByEnumeratingWithState:&v20 objects:v24 count:16];
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

    v10 = UIKeyboardCurrencyVariants(representedString, v17);
    languageCopy = v17;
  }

  if (v9 == 23)
  {
    v18 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:keyCopy toVariants:v10];

    v10 = v18;
  }

  return v10;
}

- (void)preparePopupVariantsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& os_variant_has_internal_diagnostics())
  {
    if (objc_opt_respondsToSelector())
    {
      [(TUIKeyplaneView *)self->_liveKeyplaneView updateVariantSelectorFramesForKey:keyCopy];
    }
  }

  else
  {
    factory = [(UIKBKeyplaneView *)self->_keyplaneView factory];
    v8 = [factory traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  }
}

- (void)showPopupVariantsForKey:(id)key
{
  v129[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy && [(UIKeyboardLayoutStar *)self stateForKey:keyCopy]!= 16)
  {
    representedString = [keyCopy representedString];
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = UIKeyboardGetCurrentUILanguage();
    [MEMORY[0x1E695DF58] preferredLocale];
    v118 = v117 = keyCopy;
    v13 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:keyCopy];
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
    selfCopy = self;
    v115 = v13;
    if ((v13 & 0x8000) == 0)
    {
      if ((v13 & 0x20000) != 0)
      {
        preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
        localeIdentifier = [preferredLocale localeIdentifier];

        v22 = UIKeyboardTopLevelDomainVariants(localeIdentifier, 15);

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
              v22 = [(UIKeyboardLayoutStar *)self _variantsOfCurrencyKey:keyCopy language:v12];
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
              v18 = representedString;
              if ([keyCopy variantType] == 9)
              {
                v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"#BOLD", @"#ITALIC", @"#UNDERLINE", 0}];
                v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"popup_bold.png", @"popup_italic.png", @"popup_underline.png", 0}];
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v19, @"Strings", v20, @"Keycaps", @"right", @"Direction", 0}];
                [v14 updateStylingTraitsIfNeeded];

                keyCopy = v117;
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
                _stringByConvertingFromFullWidthToHalfWidth = 0;
              }

              else
              {
                if ([v18 _containsFullwidthLettersAndSymbolsOnly])
                {
                  _stringByConvertingFromFullWidthToHalfWidth = [v18 _stringByConvertingFromFullWidthToHalfWidth];
                  v47 = @"UI-Halfwidth";
LABEL_63:
                  v106 = v47;
                  v98 = v39;
                  autocorrectPrompt = [v14 autocorrectPrompt];

                  if (autocorrectPrompt)
                  {
                    [v14 removeAutocorrectPromptAndCandidateList];
                  }

                  array = [MEMORY[0x1E695DF70] array];
                  array2 = [MEMORY[0x1E695DF70] array];
                  v101 = v14;
                  smartPunctuationController = [v14 smartPunctuationController];
                  smartQuotesEnabled = [smartPunctuationController smartQuotesEnabled];

                  v109 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'"];
                  if ([keyCopy displayType] == 27 || (objc_msgSend(v117, "name"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "_containsSubstring:", @"Email-Dot-"), v51, v52))
                  {
                    v113 = 28;
                  }

                  else
                  {
                    v113 = 0;
                  }

                  v53 = v117;
                  representedString2 = [v117 representedString];
                  if ([v117 displayType] == 7 && objc_msgSend(v18, "length") >= 2)
                  {
                    v127 = [v18 characterAtIndex:0];
                    v54 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v127 length:1];

                    representedString2 = v54;
                  }

                  if (v46 >= 1)
                  {
                    v55 = 0;
                    v116 = v46 & 0x7FFFFFFF;
                    v108 = 1;
                    while (1)
                    {
                      v56 = [v122 objectAtIndex:v55];
                      v57 = [v56 isEqualToString:representedString2];

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
                      displayString = [v53 displayString];
                      v121 = v62;
                      if (([displayString isEqual:v62] & 1) == 0)
                      {
                        v64 = [(NSMutableSet *)self->_allKeyplaneKeycaps containsObject:v60]&& (v13 & 0x10000) == 0;
                        if (v64 && [v53 variantType] != 9)
                        {
                          break;
                        }
                      }

                      displayString = [v122 objectAtIndex:v55];
                      if (!v57)
                      {
                        if ([_stringByConvertingFromFullWidthToHalfWidth isEqualToString:displayString])
                        {
                          displayString2 = UIKeyboardLocalizedString(v106, 0, 0, 0);

                          _stringByConvertingFromFullWidthToHalfWidth = 0;
                        }

                        else
                        {
LABEL_94:
                          displayString2 = 0;
                        }

LABEL_96:
                        v66 = [v53 copy];
                        [v66 setRepresentedString:displayString];
                        [v66 setDisplayString:v58];
                        if (displayString2)
                        {
                          v129[0] = displayString2;
                          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:1];
                          [v66 setSecondaryDisplayStrings:v67];
                        }

                        else
                        {
                          [v66 setSecondaryDisplayStrings:0];
                        }

                        [v66 setDisplayType:v113];
                        v68 = MEMORY[0x1E696AEC0];
                        name = [v53 name];
                        representedString3 = [v66 representedString];
                        v71 = [v68 stringWithFormat:@"%@/%@", name, representedString3];
                        [v66 setName:v71];

                        [v66 setOverrideDisplayString:0];
                        if ([v58 length] != 1 || (v72 = objc_msgSend(v58, "characterAtIndex:", 0), v73 = array2, v72 != 170) && (v74 = objc_msgSend(v58, "characterAtIndex:", 0), v73 = array2, v74 != 186))
                        {
                          v73 = array;
                        }

                        [v73 addObject:v66];

                        v53 = v117;
                        self = selfCopy;
                        v13 = v115;
LABEL_104:

                        goto LABEL_105;
                      }

                      if (!v110)
                      {
                        displayString2 = 0;
                        v108 = 2;
                        goto LABEL_96;
                      }

                      if ([v109 longCharacterIsMember:{objc_msgSend(representedString2, "_firstLongCharacter")}] & smartQuotesEnabled)
                      {
                        goto LABEL_94;
                      }

LABEL_105:

                      if (v116 == ++v55)
                      {
                        goto LABEL_109;
                      }
                    }

                    displayString2 = [v53 displayString];
                    [displayString2 isEqualToString:v58];
                    goto LABEL_104;
                  }

                  v108 = 1;
LABEL_109:
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v75 = array2;
                  v76 = [v75 countByEnumeratingWithState:&v123 objects:v128 count:16];
                  v18 = representedString;
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

                        [array addObject:*(*(&v123 + 1) + 8 * i)];
                      }

                      v77 = [v75 countByEnumeratingWithState:&v123 objects:v128 count:16];
                    }

                    while (v77);
                  }

                  if ((v102 & 1) != 0 || [array count] >= v108)
                  {
                    keyCopy = v117;
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
                      [v117 setSubtrees:array];
                    }

                    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
                    {
                      slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];

                      if (!slideBehaviour)
                      {
                        v88 = objc_alloc_init(UISelectionFeedbackGenerator);
                        [(UIKeyboardLayoutStar *)self setSlideBehaviour:v88];

                        slideBehaviour2 = [(UIKeyboardLayoutStar *)self slideBehaviour];
                        [slideBehaviour2 userInteractionStarted];
                      }

                      slideBehaviour3 = [(UIKeyboardLayoutStar *)self slideBehaviour];
                      [slideBehaviour3 selectionChanged];
                    }

                    [v117 setSelectedVariantIndex:{-[UIKeyboardLayoutStar defaultSelectedVariantIndexForKey:withActions:](self, "defaultSelectedVariantIndexForKey:withActions:", v117, v13)}];
                    v91 = [(UIKeyboardLayoutStar *)self highlightedVariantListForStylingKey:v117];
                    [v117 setHighlightedVariantsList:v91];

                    [(UIKeyboardLayoutStar *)self setState:16 forKey:v117];
                  }

                  else
                  {
                    keyCopy = v117;
                    v22 = v100;
                  }

                  v40 = v101;
                  v39 = v98;
                  v38 = v99;
                  v43 = v103;
                  goto LABEL_134;
                }

                _stringByConvertingFromFullWidthToHalfWidth = [v18 _stringByConvertingFromHalfWidthToFullWidth];
              }

              v47 = @"UI-Fullwidth";
              goto LABEL_63;
            }

            v22 = 0;
            v23 = 1;
          }

          v104 = v12;
LABEL_40:
          v18 = representedString;
          goto LABEL_41;
        }

        preferredLocale2 = [MEMORY[0x1E695DF58] preferredLocale];
        localeIdentifier2 = [preferredLocale2 localeIdentifier];

        v22 = UIKeyboardTopLevelDomainVariants(localeIdentifier2, 15);

        v23 = 0;
      }

      v104 = v12;
      keyCopy = v117;
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

    v26 = representedString;
    v27 = v26;
    if ((v13 & 0x80000) != 0)
    {
      v27 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v26];
    }

    if ([v117 displayType] == 7)
    {
      secondaryRepresentedStrings = [v117 secondaryRepresentedStrings];
      v29 = [secondaryRepresentedStrings count];

      if (v29 && (!v24 || ![(UIKeyboardLayoutStar *)self isDynamicLayout]))
      {
        secondaryRepresentedStrings2 = [v117 secondaryRepresentedStrings];
        firstObject = [secondaryRepresentedStrings2 firstObject];
        v32 = [v27 stringByAppendingString:firstObject];

        v27 = v32;
        self = selfCopy;
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
          keyCopy = v117;
          v22 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:v117 toVariants:v33];
          v18 = representedString;
        }

        else
        {
          if (v16 != 23)
          {
            keyCopy = v117;
            v18 = representedString;
            v22 = v33;
            goto LABEL_36;
          }

          v18 = representedString;
          if (self->_shift && !self->_autoshift)
          {
            secondaryRepresentedStrings3 = [v117 secondaryRepresentedStrings];
            v93 = [secondaryRepresentedStrings3 objectAtIndex:0];
            v94 = v93;
            if (v93)
            {
              v95 = v93;
            }

            else
            {
              representedString4 = [v117 representedString];
              v95 = [representedString4 substringFromIndex:1];

              self = selfCopy;
            }

            v13 = v115;
            if ((v115 & 0x80000) != 0)
            {
              v97 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:v26];

              v95 = v97;
            }

            v22 = UIKeyboardRomanAccentVariants(v95, v104, v25);

            v33 = v95;
            keyCopy = v117;
          }

          else
          {
            keyCopy = v117;
            v22 = [(UIKeyboardLayoutStar *)self _variantsByAppendingDualStringKey:v117 toVariants:v33];
          }
        }

        goto LABEL_36;
      }

      keyCopy = v117;
    }

    else
    {
      keyCopy = v117;
    }

    v18 = representedString;
    v22 = v33;
LABEL_36:

    v23 = 0;
    goto LABEL_41;
  }

  name2 = [keyCopy name];
  v6 = [name2 isEqualToString:@"EmojiPopupKey"];

  if (v6)
  {
    slideBehaviour4 = [(UIKeyboardLayoutStar *)self slideBehaviour];

    if (!slideBehaviour4)
    {
      v8 = objc_alloc_init(UISelectionFeedbackGenerator);
      [(UIKeyboardLayoutStar *)self setSlideBehaviour:v8];

      slideBehaviour5 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [slideBehaviour5 userInteractionStarted];
    }

    slideBehaviour6 = [(UIKeyboardLayoutStar *)self slideBehaviour];
    [slideBehaviour6 selectionChanged];
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

- (void)setHideKeysUnderIndicator:(BOOL)indicator
{
  keysUnderIndicator = self->_keysUnderIndicator;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIKeyboardLayoutStar_setHideKeysUnderIndicator___block_invoke;
  v6[3] = &__block_descriptor_33_e12_v24__0_8_B16l;
  indicatorCopy = indicator;
  [(NSMutableSet *)keysUnderIndicator enumerateObjectsUsingBlock:v6];
  if (!indicator)
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
  keys = [(UIKBTree *)self->_keyplane keys];
  v4 = [keys count];

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

  keyplaneIsSplit = [(UIKeyboardLayoutStar *)self keyplaneIsSplit];
  v7 = UIKeyboardGetCurrentInputMode();
  v8 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v7];
  displayName = [v8 displayName];

  [(UIView *)self center];
  v191 = v9;
  v10 = +[UIApplication _classicMode];
  v11 = [(UIKeyboardLayout *)self orientation]- 3;
  idiom = [(UIKBScreenTraits *)self->super._screenTraits idiom];
  if (v11 > 1)
  {
    if (idiom != 1 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 26 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 23)
    {
      v14 = 140.0;
      goto LABEL_29;
    }

    v13 = 320.0;
LABEL_24:
    v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v15 preferencesActions];
    v17 = preferencesActions;
    v18 = 40.0;
    if (!v10)
    {
      v18 = 0.0;
    }

    v19 = v13 - v18;
    if (keyplaneIsSplit)
    {
      v19 = 150.0;
    }

    [preferencesActions rivenSizeFactor:v19];
    v21 = v20;

    v14 = v21;
    goto LABEL_29;
  }

  v13 = 440.0;
  if (idiom == 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23)
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
    keysOrderedByPositionWithoutZip = [(UIKBTree *)self->_keyplane keysOrderedByPositionWithoutZip];
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keysOrderedByPositionWithoutZip, "count")}];
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v27 = keysOrderedByPositionWithoutZip;
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
    lastObject = [v26 lastObject];
    [lastObject frame];
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
    if (keyplaneIsSplit)
    {
      [lastObject frame];
      v45 = (CGRectGetMaxX(v211) - v39) * 0.5;
      [lastObject frame];
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

      firstObject = [v26 objectAtIndex:v38 + 1];
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

      firstObject = [v51 firstObject];
    }

LABEL_54:
    localizationKey2 = 640;
  }

  else
  {
    keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
    renderingContext = [keyplaneFactory renderingContext];
    keyboardType = [renderingContext keyboardType];

    v27 = [(UIKBTree *)self->_keyplane subtreeWithType:3];
    v26 = [v27 orderedRowsForType:keyboardType];
    lastObject = [v26 objectAtIndexedSubscript:{objc_msgSend(v26, "count") - 1}];
    flattenedSubtrees = [lastObject flattenedSubtrees];
    v179 = __47__UIKeyboardLayoutStar_activationIndicatorView__block_invoke(flattenedSubtrees, v191);

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
          if (!keyplaneIsSplit)
          {
            break;
          }

          localizationKey = [v184 localizationKey];

          if (localizationKey)
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

      firstObject = v184;

      if (firstObject)
      {
        goto LABEL_54;
      }
    }

    else
    {
LABEL_159:
    }

    localizationKey2 = 640;
    if ([v51 count])
    {
      firstObject = [v51 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  v55 = [firstObject copy];
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
  shape = [firstObject shape];

  if (shape)
  {
    shape2 = [firstObject shape];
    v59 = [shape2 copy];
    [v55 setShape:v59];
  }

  [v55 setDisplayRowHint:{objc_msgSend(firstObject, "displayRowHint")}];
  [v55 setDisplayType:25];
  [v55 setInteractionType:15];
  [v55 setGroupNeighbor:{objc_msgSend(firstObject, "groupNeighbor")}];
  [v55 setRepresentedString:&stru_1EFB14550];
  [v55 setOverrideDisplayString:&stru_1EFB14550];
  [v55 setObject:0 forProperty:@"variant-type"];
  if ([firstObject rendering])
  {
    [v55 setRendering:{objc_msgSend(firstObject, "rendering")}];
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

  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  [renderConfig keycapOpacity];
  v64 = v63;

  v65 = [(UIKeyboardLayoutStar *)self viewForKey:firstObject];
  [(NSMutableSet *)self->_keysUnderIndicator removeAllObjects];
  if (v64 < 0.5 && v65)
  {
    [(NSMutableSet *)self->_keysUnderIndicator addObject:v65];
  }

  v187 = v65;
  v188 = firstObject;
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
        if (keyplaneIsSplit && [v73 displayType] == 25)
        {
          localizationKey2 = [v73 localizationKey];
          if (!localizationKey2)
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
      renderConfig2 = [(UIKeyboardLayoutStar *)self renderConfig];
      [renderConfig2 colorAdaptiveBackground];
      v119 = objc_opt_class();
    }

    else
    {
      v119 = objc_opt_class();
    }

    v22 = [[v119 alloc] initWithFrame:self->_keyplane keyplane:v55 key:self->super._screenTraits screenTraits:{v114, v115, v116, v117}];
    [(UIImageView *)v22 setScreenTraits:self->super._screenTraits];
    [(UIImageView *)v22 setDrawFrame:v114, v115, v116, v117];
    renderConfig3 = [(UIKeyboardLayoutStar *)self renderConfig];
    [(UIImageView *)v22 setRenderConfig:renderConfig3];

    [(UIImageView *)v22 prepareForDisplay];
    free(v113);
    layer = [(UIView *)v22 layer];
    [layer setAllowsGroupOpacity:0];
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
  keyplaneFactory2 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
  v125 = [keyplaneFactory2 traitsForKey:v123 onKeyplane:self->_keyplane];
  symbolStyle = [v125 symbolStyle];

  if (v123)
  {
    [symbolStyle fontSize];
    v128 = v127;
    fontName = [symbolStyle fontName];
  }

  else
  {
    renderConfig4 = [(UIKeyboardLayoutStar *)self renderConfig];
    usesCompactKeycapsFont = [renderConfig4 usesCompactKeycapsFont];
    v132 = @"UIKBRenderFactorySystemFontName";
    if (usesCompactKeycapsFont)
    {
      v132 = @"UIKBRenderFactoryWordsSystemCompactFontName";
    }

    fontName = v132;

    v128 = 16.0;
  }

  if (fontName == @"UIKBRenderFactoryWordsSystemCompactFontName")
  {
    [symbolStyle fontSize];
    v134 = v133;
    [symbolStyle fontWeight];
    [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v134 design:v135];
  }

  else
  {
    [off_1E70ECC18 systemFontOfSize:v128];
  }
  v136 = ;

  [displayName _legacy_sizeWithFont:v136];
  v138 = v137;
  v140 = ceil(v139);
  v193 = symbolStyle;
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
    if (fontName == @"UIKBRenderFactoryWordsSystemCompactFontName")
    {
      [v193 fontWeight];
      [off_1E70ECC18 systemFontOfSize:v142 weight:v128 design:v143];
    }

    else
    {
      [off_1E70ECC18 systemFontOfSize:v128];
    }
    v144 = ;

    [displayName _legacy_sizeWithFont:v144];
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

  orientation = [(UIKeyboardLayout *)self orientation];
  v149 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v149 currentInputMode];
  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:currentInputMode];
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
  v138 = [UIKBRenderGeometry geometryWithFrame:0.0 paddedFrame:0.0, v140, v138, 0.0, 0.0, v140, v138];
  v160 = [UIKBRenderTraits traitsWithGeometry:v138];
  fontName2 = [v144 fontName];
  v162 = [UIKBTextStyle styleWithFontName:fontName2 withFontSize:v128];
  [v160 setSymbolStyle:v162];

  renderConfig5 = [(UIKeyboardLayoutStar *)self renderConfig];
  whiteText = [renderConfig5 whiteText];
  v165 = UIKBColorWhite;
  if (!whiteText)
  {
    v165 = UIKBColorBlack;
  }

  v166 = *v165;
  symbolStyle2 = [v160 symbolStyle];
  [symbolStyle2 setTextColor:v166];

  v168 = +[UIKBKeyDisplayContents displayContents];
  [v168 setDisplayString:displayName];
  v169 = UIKBScale();
  v169 = [UIKBRenderer rendererWithContext:0 withSize:0 withScale:255 opaque:UIKeyboardGetCurrentIdiom() renderFlags:v140 assetIdiom:v138, v169];
  [v169 renderKeyContents:v168 withTraits:v160];
  v171 = [UIImageView alloc];
  renderedImage = [v169 renderedImage];
  v173 = [(UIImageView *)v171 initWithImage:renderedImage];

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
  isUndocked = [v3 isUndocked];

  if (isUndocked)
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

- (BOOL)handRestRecognizerShouldNeverIgnoreTouchState:(id)state fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint forRestingState:(unint64_t)restingState otherRestedTouchLocations:(id)locations
{
  y = toPoint.y;
  x = toPoint.x;
  v11 = point.y;
  v12 = point.x;
  stateCopy = state;
  locationsCopy = locations;
  if (stateCopy)
  {
    v16 = [stateCopy phase] == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(UIKeyboardLayoutStar *)self keyHitTestClosestToPoint:v12, v11];
  if (v17)
  {
    v18 = 0x21E00FA0F2;
    if ([locationsCopy count])
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
      v22 = [locationsCopy indexesOfObjectsPassingTest:{v32, v33}];
      v23 = [locationsCopy objectsAtIndexes:v22];

      v24 = [v23 count];
      if (v24 > 1)
      {
        v18 = 0x21C00FA052;
      }

      if (stateCopy && v24 >= 2)
      {
        v16 = [stateCopy phase] != 0;
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
        name = [v17 name];
        v27 = [name hasPrefix:@"Assist"];

        if ((v27 & 1) == 0)
        {
          v25 |= 0x8080uLL;
        }
      }
    }

    v28 = v25 & v18;
    if (restingState != 1 && !v28)
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

    if (!stateCopy || restingState == 1 || (v16 & 1) != 0 || ![stateCopy phase])
    {
      if (restingState == 2 || (v16 & 1) == 0)
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

- (id)getSortedKeysForDisplayRowHint:(int)hint
{
  keys = [(UIKBTree *)self->_keyplane keys];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__UIKeyboardLayoutStar_getSortedKeysForDisplayRowHint___block_invoke;
  v11[3] = &__block_descriptor_36_e25_B32__0__UIKBTree_8Q16_B24l;
  hintCopy = hint;
  v5 = [keys indexesOfObjectsPassingTest:v11];
  v6 = [keys objectsAtIndexes:v5];

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
  handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = handRestRecognizerGetHomeRowHint;
  if (!handRestRecognizerGetHomeRowHint)
  {
    goto LABEL_6;
  }

  intValue = [handRestRecognizerGetHomeRowHint intValue];
  v6 = intValue;
  v7 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:intValue];
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

- (void)handRestRecognizerNotifyRestForBegin:(BOOL)begin location:(CGPoint)location timestamp:(double)timestamp pathIndex:(int)index touchUUID:(id)d context:(id)context
{
  y = location.y;
  x = location.x;
  beginCopy = begin;
  contextCopy = context;
  dCopy = d;
  v16 = +[UIKeyboardImpl activeInstance];
  v17 = [(UIKeyboardLayout *)self fingerIDForTouchUUID:dCopy];

  if (beginCopy)
  {
    v18 = 4;
  }

  else
  {
    v18 = 5;
  }

  v19 = [MEMORY[0x1E69D9668] touchEventWithStage:v18 location:index radius:v17 timestamp:-1 pathIndex:x fingerID:y forcedKeyCode:{1.0, timestamp}];
  if (beginCopy)
  {
    [v16 performHitTestForTouchEvent:v19 executionContextPassingNSNumber:contextCopy];
  }

  else
  {
    [v16 skipHitTestForTouchEvent:v19];
    [contextCopy returnExecutionToParent];
  }
}

- (CGPoint)getCenterForKeyUnderLeftIndexFinger
{
  handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = handRestRecognizerGetHomeRowHint;
  if (handRestRecognizerGetHomeRowHint)
  {
    v5 = -[UIKeyboardLayoutStar getSortedKeysForDisplayRowHint:](self, "getSortedKeysForDisplayRowHint:", [handRestRecognizerGetHomeRowHint intValue]);
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
  handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v4 = handRestRecognizerGetHomeRowHint;
  if (handRestRecognizerGetHomeRowHint)
  {
    v5 = -[UIKeyboardLayoutStar getSortedKeysForDisplayRowHint:](self, "getSortedKeysForDisplayRowHint:", [handRestRecognizerGetHomeRowHint intValue]);
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

- (id)getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow:(int64_t)row
{
  handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
  v6 = handRestRecognizerGetHomeRowHint;
  if (handRestRecognizerGetHomeRowHint)
  {
    intValue = [handRestRecognizerGetHomeRowHint intValue];
    v8 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:intValue];
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
      v26 = [(UIKeyboardLayoutStar *)self getSortedKeysForDisplayRowHint:(intValue + row)];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __78__UIKeyboardLayoutStar_getHorizontalOffsetFromHomeRowForRowRelativeToHomeRow___block_invoke;
      v34[3] = &__block_descriptor_72_e25_B32__0__UIKBTree_8Q16_B24l;
      v34[4] = row;
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

- (void)calculateReachabilityScoreWithKey:(id)key keyError:(CGPoint)error
{
  x = error.x;
  v48 = *MEMORY[0x1E69E9840];
  keyCopy = key;
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

  v13 = [(NSMutableSet *)self->_leftKeySet containsObject:keyCopy];
  v14 = &self->_leftSideReachability;
  if ((v13 & 1) != 0 || (v15 = [(NSMutableSet *)self->_rightKeySet containsObject:keyCopy], v14 = &self->_rightSideReachability, v15))
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

- (void)setKeyboardBias:(int64_t)bias
{
  screenTraits = self->super._screenTraits;
  if (!screenTraits || !screenTraits->_isStickerPickerServiceCollectionView)
  {
    if (self->_currentHandBias != bias || [(UIKeyboardLayoutStar *)self useCrescendoLayout]&& (v6 = self->_liveKeyplaneView) != 0 && (currentHandBias = self->_currentHandBias, currentHandBias != [(TUIKeyplaneView *)v6 currentHandBias]))
    {
      self->_currentHandBias = bias;
      if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        liveKeyplaneView = self->_liveKeyplaneView;
        if (liveKeyplaneView)
        {
          [(TUIKeyplaneView *)liveKeyplaneView setKeyboardBias:bias];
        }
      }

      [(UIKeyboardLayoutStar *)self reloadCurrentKeyplane];
      [_UIKeyboardUsageTracking countReachableKeyboardHandBiasChangeToBias:bias];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIKeyboardHandBiasDidChangeNotification" object:0 userInfo:0];
    }
  }
}

- (void)_setBiasEscapeButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  currentHandBias = [(UIKeyboardLayoutStar *)self currentHandBias];
  biasEscapeButton = self->_biasEscapeButton;
  if (visibleCopy && currentHandBias)
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
      centerYAnchor = [(UIView *)self->_biasEscapeButton centerYAnchor];
      centerYAnchor2 = [(UIView *)self centerYAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
    renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
    lightKeyboard = [renderConfig lightKeyboard];

    if (lightKeyboard)
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

        if (currentHandBias == 1)
        {
          [(UIButton *)self->_biasEscapeButton setImage:v23 forState:0];
          [(UIButton *)self->_biasEscapeButton setContentEdgeInsets:v27, 15.0, v27, v30];
          biasEscapeButtonLeftConstraint = self->_biasEscapeButtonLeftConstraint;
          if (!biasEscapeButtonLeftConstraint)
          {
            leftAnchor = [(UIView *)self->_biasEscapeButton leftAnchor];
            leftAnchor2 = [(UIView *)self leftAnchor];
            v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v17];
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
          imageWithHorizontallyFlippedOrientation = [v23 imageWithHorizontallyFlippedOrientation];
          [(UIButton *)self->_biasEscapeButton setImage:imageWithHorizontallyFlippedOrientation forState:0];
          [(UIButton *)self->_biasEscapeButton setContentEdgeInsets:v27, v30, v27, 15.0];
          biasEscapeButtonRightConstraint = self->_biasEscapeButtonRightConstraint;
          if (biasEscapeButtonRightConstraint)
          {
            v38 = -v17;
          }

          else
          {
            rightAnchor = [(UIView *)self->_biasEscapeButton rightAnchor];
            rightAnchor2 = [(UIView *)self rightAnchor];
            v38 = -v17;
            v41 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v38];
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

- (void)_didTapBiasEscapeButton:(id)button
{
  [(UIKeyboardLayoutStar *)self setKeyboardBias:0];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  [preferencesActions setHandBias:0];

  v5 = +[UIKeyboardImpl activeInstance];
  [v5 updateForHandBiasChange];
}

- (void)resizeKeyplaneAndRedraw:(BOOL)redraw
{
  redrawCopy = redraw;
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
        v33 = redrawCopy;
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
              keySet = [v16 keySet];
              subtrees = [keySet subtrees];

              v19 = [subtrees countByEnumeratingWithState:&v42 objects:v51 count:16];
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
                      objc_enumerationMutation(subtrees);
                    }

                    v23 = *(*(&v42 + 1) + 8 * v22);
                    v38 = 0u;
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    subtrees2 = [v23 subtrees];
                    v25 = [subtrees2 countByEnumeratingWithState:&v38 objects:v50 count:16];
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
                            objc_enumerationMutation(subtrees2);
                          }

                          [(UIKBKeyplaneView *)self->_keyplaneView updateFrameForKey:*(*(&v38 + 1) + 8 * v28++)];
                        }

                        while (v26 != v28);
                        v26 = [subtrees2 countByEnumeratingWithState:&v38 objects:v50 count:16];
                      }

                      while (v26);
                    }

                    ++v22;
                  }

                  while (v22 != v20);
                  v20 = [subtrees countByEnumeratingWithState:&v42 objects:v51 count:16];
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

        redrawCopy = v33;
      }

      [(UIView *)self bounds];
      v31 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v29, v30];
      if (![(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        [(UIKBKeyplaneView *)self->_keyplaneView setSuppressDrawing:!redrawCopy];
        [v31 size];
        [(UIView *)self->_keyplaneView setSize:?];
        [(UIKBKeyplaneView *)self->_keyplaneView setSuppressDrawing:0];
      }

      [(UIKeyboardLayoutStar *)self _didChangeKeyplaneWithContext:v31];
      if (redrawCopy)
      {
        v32 = +[UIKeyboardImpl activeInstance];
        [v32 layoutDidResize];
      }
    }
  }
}

- (BOOL)keyplaneIsSplit
{
  useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  v4 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplane;
  if (useCrescendoLayout)
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
      window = [(UIView *)self window];
      screen = [window screen];
      v6 = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:screen];
      objc_storeWeak(&self->_splitKeyplaneTransitionDelegate, v6);
    }

    splitTransitionDelegate = objc_loadWeakRetained(&self->_splitKeyplaneTransitionDelegate);
  }

  else
  {
    splitTransitionDelegate = [(UIKeyboardSplitTransitionView *)self->_transitionView splitTransitionDelegate];
  }

  return splitTransitionDelegate;
}

- (void)prepareForSplitTransition
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& !+[UIInputWindowController supportsStateBasedAnimations])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView prepareForSplitTransition];
  }

  splitTransitionDelegate = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
  [splitTransitionDelegate prepareForTransition];

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

- (void)showSplitTransitionView:(BOOL)view
{
  viewCopy = view;
  if (view && ([(UIView *)self->_transitionView isHidden]|| [(UIKeyboardLayoutStar *)self useCrescendoLayout]))
  {
    [(UIKeyboardLayoutStar *)self prepareForSplitTransition];
  }

  if ([(UIKeyboardLayoutStar *)self pinchSplitGestureEnabled])
  {
    if (self->_isRebuilding && viewCopy)
    {
      if (![(UIKeyboardSplitTransitionView *)self->_transitionView canDisplayTransition]&& ![(UIKeyboardLayoutStar *)self useCrescendoLayout])
      {
        [(UIKeyboardLayoutStar *)self rebuildSplitTransitionView];
      }
    }

    else
    {
      [(UIView *)self->_keyplaneView setHidden:viewCopy];
      [(UIView *)self->_backgroundView setHidden:viewCopy];
      layer = [(UIView *)self->_dimKeyboardImageView layer];
      [layer removeAllAnimations];

      [(UIView *)self->_dimKeyboardImageView setHidden:viewCopy];
      v6 = !viewCopy || [(UIKeyboardLayoutStar *)self useCrescendoLayout];
      [(UIView *)self->_transitionView setHidden:v6];
    }
  }

  [(UIView *)self setUserInteractionEnabled:viewCopy ^ 1];
}

- (void)finishSplitWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__UIKeyboardLayoutStar_finishSplitWithCompletion___block_invoke;
  v11 = &unk_1E70F37C0;
  selfCopy = self;
  v5 = completionCopy;
  v13 = v5;
  v6 = _Block_copy(&v8);
  [(UIKeyboardLayoutStar *)self setPlayKeyClickSoundOn:0, v8, v9, v10, v11, selfCopy];
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& !+[UIInputWindowController supportsStateBasedAnimations])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView finishSplitTransition];
  }

  splitTransitionDelegate = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
  [splitTransitionDelegate finishTransitionWithCompletion:v6];
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

- (void)finishSplitTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
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

  useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
  finalSplitProgress = self->_finalSplitProgress;
  if (useCrescendoLayout)
  {
    liveKeyplaneView = self->_liveKeyplaneView;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__UIKeyboardLayoutStar_finishSplitTransitionWithCompletion___block_invoke;
    v16[3] = &unk_1E70FE248;
    v10 = &v17;
    v16[4] = self;
    v17 = completionCopy;
    v11 = completionCopy;
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
    v15 = completionCopy;
    v13 = completionCopy;
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
  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  animatedBackground = [renderConfig animatedBackground];

  if (animatedBackground)
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

- (BOOL)pinchCanBeginWithTouches:(id)touches andScale:(double)scale
{
  v25 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if (self->_isTrackpadMode || [(UIKeyboardLayout *)self isFloating]|| ![(UIView *)self isUserInteractionEnabled]|| (v7 = [(UIKBScreenTraits *)self->super._screenTraits isSplit], scale >= 1.0) && v7 || (v8 = [(UIKBScreenTraits *)self->super._screenTraits isSplit], scale <= 1.0) && !v8)
  {
    v9 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = touchesCopy;
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
          interactionType = [v17 interactionType];

          if (interactionType == 11)
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

- (void)didDetectPinchWithSeparation:(double)separation
{
  self->_finalSplitProgress = self->_initialSplitProgress;
  [(UIView *)self frame];
  v6 = v5 * -0.3;
  initialSplitProgress = self->_initialSplitProgress;
  [(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer initialPinchSeparation];
  v9 = initialSplitProgress + (v8 - separation) / v6;

  [(UIKeyboardLayoutStar *)self setSplitProgress:v9];
}

- (void)pinchDidConsumeTouch:(id)touch
{
  v6 = [UIKBTouchState touchUUIDForTouch:touch];
  v4 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v6];
  touch = [v4 touch];

  [(UIKeyboardLayoutStar *)self clearInfoForTouch:touch];
}

- (void)pinchHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy state] == 5)
  {
    pinchDetected = [handlerCopy pinchDetected];

    if ((pinchDetected & 1) == 0)
    {
      return;
    }
  }

  else
  {
    state = [handlerCopy state];

    if (state != 3)
    {
      return;
    }
  }

  [(UIKeyboardLayoutStar *)self finishSplitTransition];
}

- (void)setSplitProgress:(double)progress
{
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    progressCopy = 1.0;
    if (progress <= 1.0)
    {
      progressCopy = progress;
    }

    if (progress >= 0.0)
    {
      v6 = progressCopy;
    }

    else
    {
      v6 = 0.0;
    }

    [(UIKeyboardLayoutStar *)self showSplitTransitionView:1, progressCopy];
    if (!+[UIInputWindowController supportsStateBasedAnimations])
    {
      [(TUIKeyplaneView *)self->_liveKeyplaneView updateSplitProgress:v6];
    }

    splitTransitionDelegate = [(UIKeyboardLayoutStar *)self splitTransitionDelegate];
    [(TUIKeyplaneView *)self->_liveKeyplaneView fullHeightForDockedKeyboard];
    v8 = v7;
    [(TUIKeyplaneView *)self->_liveKeyplaneView leftSplitSize];
    [splitTransitionDelegate updateProgress:v6 startHeight:v8 endHeight:v9 + 10.0];
  }

  else
  {
    if (self->_splitTransitionNeedsRebuild)
    {
      [(UIKeyboardLayoutStar *)self rebuildSplitTransitionView];
    }

    [(UIKeyboardSplitTransitionView *)self->_transitionView updateWithProgress:progress];
    if ([(UIView *)self->_transitionView isHidden])
    {

      [(UIKeyboardLayoutStar *)self showSplitTransitionView:1];
    }
  }
}

- (void)_autoSplit:(id)split
{
  [split timestamp];
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

- (void)setSplit:(BOOL)split animated:(BOOL)animated
{
  animatedCopy = animated;
  splitCopy = split;
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
    if (splitCopy)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    self->_finalSplitProgress = v10;
    if (!splitCopy)
    {
      v9 = 1.0;
    }

    self->_initialSplitProgress = v9;
    if (animatedCopy)
    {
      screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
      v12 = [screen displayLinkWithTarget:self selector:sel__autoSplit_];
      v13 = self->_displayLink;
      self->_displayLink = v12;

      v14 = self->_displayLink;
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v14 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

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

- (void)prepareForFloatingTransition:(BOOL)transition
{
  if (transition)
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
  currentInputMode = [v3 currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];
  if ([normalizedIdentifier isEqualToString:@"emoji"])
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

  activeKey = [(UIKeyboardLayoutStar *)self activeKey];
  state = [activeKey state];

  if (state == 16)
  {
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    v26 = [(UIKeyboardLayoutStar *)self viewForKey:activeKey2];

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

- (BOOL)_pointAllowedInStaticHitBuffer:(CGPoint)buffer
{
  y = buffer.y;
  x = buffer.x;
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v6 currentInputMode];

  sizeDelegate = [(UIKeyboardLayout *)self sizeDelegate];
  [sizeDelegate deviceSpecificStaticHitBufferForInterfaceOrientation:-[UIKeyboardLayout orientation](self inputMode:{"orientation"), currentInputMode}];
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  _gsEvent = [event _gsEvent];

  return [(UIKeyboardLayoutStar *)self pointInside:_gsEvent forEvent:x, y];
}

- (BOOL)pointInside:(CGPoint)inside forEvent:(__GSEvent *)event
{
  y = inside.y;
  x = inside.x;
  if ([(UIKeyboardLayoutStar *)self _pointAllowedInStaticHitBuffer:event]&& ([(UIView *)self bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(UIKeyboardLayoutStar *)self hitBuffer], v16 = -v15, v65.origin.x = v8, v65.origin.y = v10, v65.size.width = v12, v65.size.height = v14, v66 = CGRectInset(v65, 0.0, v16), v63.x = x, v63.y = y, CGRectContainsPoint(v66, v63)))
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
      preferencesActions = [v55 preferencesActions];
      [preferencesActions rivenSizeFactor:1.0];
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

- (void)touchDown:(id)down executionContext:(id)context
{
  downCopy = down;
  contextCopy = context;
  activeKey = [(UIKeyboardLayoutStar *)self activeKey];

  if (activeKey)
  {
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    v11 = [(UIKeyboardLayoutStar *)self touchInfoForKey:activeKey2];

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
      v42 = downCopy;
      v15 = [contextCopy childWithContinuation:v41];
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:v14 withActions:v13 executionContext:v15];

LABEL_34:
      goto LABEL_35;
    }
  }

  [downCopy locationInView:self];
  v17 = v16;
  v19 = v18;
  v20 = [(UIKeyboardLayoutStar *)self pointInside:0 forEvent:?];
  [(UIKeyboardLayoutStar *)self _paddedKeyUnionFrame];
  v43.x = v17;
  v43.y = v19;
  v21 = CGRectContainsPoint(v44, v43);
  modalDisplayView = [(UIKeyboardLayoutStar *)self modalDisplayView];

  hasActiveContinuousPathInput = [(UIKeyboardLayoutStar *)self hasActiveContinuousPathInput];
  if (v20 && v21 && !modalDisplayView && !hasActiveContinuousPathInput)
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
      v30 = [(UIKeyboardLayoutStar *)self generateInfoForTouch:downCopy];
      [v30 setKeyplane:self->_keyplane];
      [v30 setInitialPoint:{v17, v19}];
      touchUUID = [downCopy touchUUID];
      [v30 setFingerID:{-[UIKeyboardLayout fingerIDForTouchUUID:](self, "fingerIDForTouchUUID:", touchUUID)}];

      [v30 setContinuousPathState:0];
      if (([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 23) && [(UIKeyboardLayout *)self isFloating])
      {
        currentTouchDownEvent = [(UIKeyboardLayout *)self currentTouchDownEvent];
        allTouches = [currentTouchDownEvent allTouches];
        v34 = [allTouches count] > 1;
      }

      else
      {
        v34 = 0;
      }

      if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI]&& !v34)
      {
        [downCopy timestamp];
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
      v37 = [contextCopy childWithContinuation:v38];
      [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v36 touchStage:0 executionContextPassingUIKBTree:v37];

      goto LABEL_34;
    }
  }

  [contextCopy returnExecutionToParent];
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

- (void)completeHitTestForTouchDown:(id)down executionContext:(id)context
{
  downCopy = down;
  contextCopy = context;
  touch = [downCopy touch];
  [downCopy initialPoint];
  v10 = v9;
  v12 = v11;
  v13 = [downCopy key];
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
    handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
    if (handRestRecognizerGetHomeRowHint && ([v13 interactionType] == 1 || objc_msgSend(v13, "interactionType") == 2))
    {
      -[UIKeyboardLayout _updateTouchState:errorVector:rowOffsetFromHomeRow:](self, "_updateTouchState:errorVector:rowOffsetFromHomeRow:", touch, [v13 displayRowHint] - objc_msgSend(handRestRecognizerGetHomeRowHint, "integerValue"), v26, v27);
    }

    else
    {
      [(UIKeyboardLayout *)self _ignoreTouchState:touch];
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

  activeKey = [(UIKeyboardLayoutStar *)self activeKey];
  parentKey = [activeKey parentKey];
  if (parentKey)
  {
    v31 = parentKey;
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];

    if (activeKey2 != v13)
    {
      [(UIKeyboardLayoutStar *)self deactivateActiveKey];
      parentKey2 = [v13 parentKey];

      if (parentKey2)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
  }

  activeKey3 = [(UIKeyboardLayoutStar *)self activeKey];

  [(UIKeyboardLayoutStar *)self setActiveKey:v13];
  self->_didLongPress = 0;
  if (!v13)
  {
LABEL_28:
    [(UIKeyboardLayoutStar *)self clearInfoForTouch:touch];
    [contextCopy returnExecutionToParent];
    goto LABEL_42;
  }

  [downCopy setInitialDragPoint:{v10, v12}];
  if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI]&& [(UIKeyboardLayoutStar *)self _allowStartingContinuousPathForTouchInfo:downCopy alreadyActiveKeyExisting:activeKey3 != 0])
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:v35 forTouchInfo:downCopy];
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

    displayString = [v13 displayString];
    v42 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v13 withString:displayString];
    v43 = getFlickPopupInfoArray(v42, @"Keycaps");

    if (v43)
    {
      objc_storeStrong(&self->_touchInfo, down);
      v44 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_handlePopupView_ selector:0 userInfo:0 repeats:0.375];
      v45 = self->_flickPopuptimer;
      self->_flickPopuptimer = v44;
    }
  }

  [(UIKeyboardLayoutStar *)self touchDownWithKey:v13 withTouchInfo:downCopy atPoint:contextCopy executionContext:v10, v12];
LABEL_42:
}

- (void)playKeyReleaseSoundForKey:(id)key
{
  keyCopy = key;
  v25 = +[UIKeyboardImpl activeInstance];
  [keyCopy frame];
  MidX = CGRectGetMidX(v27);
  [keyCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  MidY = CGRectGetMidY(v28);
  hasActiveContinuousPathInput = [(UIKeyboardLayoutStar *)self hasActiveContinuousPathInput];
  feedbackGenerator = [v25 feedbackGenerator];
  v17 = feedbackGenerator;
  if (hasActiveContinuousPathInput)
  {
    if (objc_opt_respondsToSelector())
    {
      autocorrectionController = [v25 autocorrectionController];
      autocorrection = [autocorrectionController autocorrection];
      candidate = [autocorrection candidate];
      v21 = candidate;
      if (candidate)
      {
        markedText = candidate;
      }

      else
      {
        markedText = [v25 markedText];
      }

      feedbackGenerator3 = markedText;

      feedbackGenerator2 = [v25 feedbackGenerator];
      [feedbackGenerator2 actionOccurred:9 textLength:objc_msgSend(feedbackGenerator3 atLocation:{"length"), MidX, MidY}];
    }

    else
    {
      feedbackGenerator3 = [v25 feedbackGenerator];
      [feedbackGenerator3 actionOccurred:9 atLocation:{MidX, MidY}];
    }
  }

  else
  {
    [feedbackGenerator actionOccurred:8 atLocation:{MidX, MidY}];
  }
}

- (void)playKeyClickSoundForKey:(id)key
{
  keyCopy = key;
  screenTraits = self->super._screenTraits;
  if (!screenTraits || !screenTraits->_isFirstPartyStickers)
  {
    v11 = keyCopy;
    if ([(UIKeyboardLayoutStar *)self muteNextKeyClickSound])
    {
      [(UIKeyboardLayoutStar *)self setMuteNextKeyClickSound:0];
LABEL_24:
      keyCopy = v11;
      goto LABEL_25;
    }

    v6 = +[UIKeyboardImpl activeInstance];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
    {
      feedbackGenerator = +[UIDevice currentDevice];
      [feedbackGenerator _playSystemSound:1123];
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    if ([v11 interactionType] == 4 && !+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled]())
    {
      goto LABEL_23;
    }

    interactionType = [v11 interactionType];
    v9 = 1;
    if (interactionType > 8)
    {
      if (interactionType == 9)
      {
        v9 = 6;
        goto LABEL_19;
      }

      if (interactionType == 15)
      {
        v9 = 2;
        goto LABEL_19;
      }

      if (interactionType != 16)
      {
        goto LABEL_16;
      }
    }

    else if ((interactionType - 1) >= 2)
    {
      if (interactionType == 4)
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

    feedbackGenerator = [v6 feedbackGenerator];
    [v11 frame];
    MidX = CGRectGetMidX(v13);
    [v11 frame];
    [feedbackGenerator actionOccurred:v9 atLocation:{MidX, CGRectGetMidY(v14)}];
    goto LABEL_22;
  }

LABEL_25:
}

- (void)playKeyClickSoundOnDownForKey:(id)key
{
  keyCopy = key;
  if ([(UIKeyboardLayoutStar *)self playKeyClickSoundOn]!= 2)
  {
    [(UIKeyboardLayoutStar *)self playKeyClickSoundForKey:keyCopy];
  }
}

- (BOOL)shouldSkipResponseToGlobeKey:(id)key atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(UIKeyboardLayoutStar *)self viewForKey:key];
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

- (BOOL)isKeyScriptSwitchKey:(id)key
{
  keyCopy = key;
  if ([keyCopy interactionType] == 9)
  {
    name = [keyCopy name];
    v5 = [name hasSuffix:@"Switch-Key"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSkipResponseToDotKey:(id)key atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  if (+[UIKBKeyView shouldUseOvalHitArea]&& [UIKBKeyView isDotKey:keyCopy])
  {
    v8 = [(UIKeyboardLayoutStar *)self viewForKey:keyCopy];
    contentsKeyView = [v8 contentsKeyView];

    [contentsKeyView tapActionRegion];
    v11 = v10;
    v13 = v12;
    v14 = [UIBezierPath bezierPathWithOvalInRect:?];
    if ([v14 containsPoint:{x, y}])
    {
      v15 = 1;
    }

    else
    {
      [(UIView *)self convertPoint:contentsKeyView toView:x, y];
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
  blinkAssertion = [(UIKeyboardLayoutStar *)self blinkAssertion];
  [blinkAssertion invalidate];

  [(UIKeyboardLayoutStar *)self setBlinkAssertion:0];
}

- (void)touchDownWithKey:(id)key withTouchInfo:(id)info atPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  v121 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  infoCopy = info;
  contextCopy = context;
  Current = CFAbsoluteTimeGetCurrent();
  prevTouchUpTime = self->_prevTouchUpTime;
  v16 = +[UIKeyboardImpl activeInstance];
  [v16 forceShiftUpdateIfKeyboardStateChanged];
  v105 = contextCopy;
  if ([UIKBKeyView isDotKey:keyCopy]&& [(UIKeyboardLayoutStar *)self shouldSkipResponseToDotKey:keyCopy atPoint:x, y])
  {
    v17 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Space-Key"];
    v18 = [(UIKeyboardLayoutStar *)self keycodeForKey:v17];
    v19 = [(UIKeyboardLayoutStar *)self keycodeForKey:keyCopy]- 1;
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

      [contextCopy setInfo:v21];
      [infoCopy setKey:v21];
      keyCopy = v21;
    }
  }

  v22 = Current - prevTouchUpTime;
  representedString = [keyCopy representedString];
  interactionType = [keyCopy interactionType];
  v25 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:keyCopy];
  if (interactionType == 5)
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
      v118 = keyCopy;
      dispatch_after(v27, v28, block);
    }

    [v16 touchLongPressTimerWithDelay:0.25];
  }

  else
  {
    [v16 touchLongPressTimer];
    interactionType2 = [keyCopy interactionType];
    v31 = +[UIKeyboardImpl activeInstance];
    v32 = v31;
    if (interactionType2 == 4)
    {
      v33 = 6;
    }

    else
    {
      v33 = 0;
    }

    [v31 updateIdleDetection:v33];
  }

  if (v22 < 0.5 && interactionType <= 0x11 && ((1 << interactionType) & 0x21040) != 0)
  {
    goto LABEL_36;
  }

  v36 = [(UIKeyboardLayoutStar *)self isKeyScriptSwitchKey:keyCopy];
  v37 = v36;
  if (interactionType != 9 || v36)
  {
    if (interactionType == 38)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v22 < 0.325 && [(UIKeyboardLayoutStar *)self shouldSkipResponseToGlobeKey:keyCopy atPoint:x, y])
    {
      goto LABEL_36;
    }

    [v16 clearLongPressTimer];
    [v16 touchLongPressTimerWithDelay:0.3];
  }

  if (!v37 || [(UIKeyboardLayoutStar *)self is10KeyRendering])
  {
LABEL_38:
    if ([infoCopy delayed])
    {
      [v16 clearLongPressTimer];
      [v16 touchLongPressTimerWithDelay:0.08];
    }

    if (interactionType == 15)
    {
      [v16 clearLanguageIndicator];
    }

    v39 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"International-Key"];
    if (v39)
    {
      v40 = +[UIInputSwitcherView activeInstance];
      [v40 hide];

      if (keyCopy != v39)
      {
        v41 = [(UIKeyboardLayoutStar *)self touchInfoForKey:v39];
        [v41 setMaySuppressUpAction:1];
      }
    }

    v104 = v39;
    if ([keyCopy interactionType] == 28 || objc_msgSend(keyCopy, "interactionType") == 29 || objc_msgSend(keyCopy, "interactionType") == 30)
    {
      if ([keyCopy interactionType] == 28 && -[UIKBTextEditingTraits canToggleBoldface](self->super._textEditingTraits, "canToggleBoldface"))
      {
        v42 = representedString;
        delegateAsResponder = [v16 delegateAsResponder];
        _responderForEditing = [delegateAsResponder _responderForEditing];
        [_responderForEditing toggleBoldface:0];
LABEL_57:

        representedString = v42;
        goto LABEL_58;
      }

      if ([keyCopy interactionType] == 29 && -[UIKBTextEditingTraits canToggleItalics](self->super._textEditingTraits, "canToggleItalics"))
      {
        v42 = representedString;
        delegateAsResponder = [v16 delegateAsResponder];
        _responderForEditing = [delegateAsResponder _responderForEditing];
        [_responderForEditing toggleItalics:0];
        goto LABEL_57;
      }

      if ([keyCopy interactionType] == 30 && -[UIKBTextEditingTraits canToggleUnderline](self->super._textEditingTraits, "canToggleUnderline"))
      {
        v42 = representedString;
        delegateAsResponder = [v16 delegateAsResponder];
        _responderForEditing = [delegateAsResponder _responderForEditing];
        [_responderForEditing toggleUnderline:0];
        goto LABEL_57;
      }
    }

LABEL_58:
    if ((v25 & 1) != 0 && ([keyCopy interactionType] == 31 || objc_msgSend(keyCopy, "interactionType") == 32 || objc_msgSend(keyCopy, "interactionType") == 33 || objc_msgSend(keyCopy, "interactionType") == 34 || objc_msgSend(keyCopy, "interactionType") == 35))
    {
      if ([keyCopy interactionType] == 31)
      {
        [v16 cutOperation];
        if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canCut])
        {
          goto LABEL_73;
        }

LABEL_72:
        [(UIKeyboardLayoutStar *)self setState:4 forKey:keyCopy];
        goto LABEL_73;
      }

      if ([keyCopy interactionType] == 32)
      {
        [v16 copyOperation];
        if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canCopy])
        {
          goto LABEL_72;
        }
      }

      else
      {
        if ([keyCopy interactionType] == 33)
        {
          [v16 pasteOperation];
          if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canPaste])
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if ([keyCopy interactionType] == 34 && -[UIKBTextEditingTraits canMoveCursorLeft](self->super._textEditingTraits, "canMoveCursorLeft"))
        {
          [v16 moveCursorLeftShifted:{objc_msgSend(v16, "isShiftLocked")}];
          if ([(UIKBTextEditingTraits *)self->super._textEditingTraits canMoveCursorLeft])
          {
            goto LABEL_72;
          }
        }

        else if ([keyCopy interactionType] == 35)
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
    if (([v16 acceptInputString:representedString] & 1) == 0)
    {
      v101 = v25;
      v45 = infoCopy;
      v46 = representedString;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v113 = 0u;
      secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
      v48 = [secondaryRepresentedStrings countByEnumeratingWithState:&v113 objects:v120 count:16];
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
              objc_enumerationMutation(secondaryRepresentedStrings);
            }

            if ([v51 acceptInputString:*(*(&v113 + 1) + 8 * i)])
            {

              v16 = v51;
              representedString = v46;
              infoCopy = v45;
              v25 = v101;
              goto LABEL_84;
            }
          }

          v49 = [secondaryRepresentedStrings countByEnumeratingWithState:&v113 objects:v120 count:16];
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
      representedString = v46;
      infoCopy = v45;
      goto LABEL_141;
    }

LABEL_84:
    if (interactionType == 13 && ([v16 returnKeyEnabled] & 1) == 0)
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
      _activeAssertionController = [v16 _activeAssertionController];
      v55 = [_activeAssertionController nonBlinkingAssertionWithReason:@"Keyboard Key Press"];
      [(UIKeyboardLayoutStar *)self setBlinkAssertion:v55];
    }

    v103 = v16;
    [v16 setInputPoint:{x, y}];
    if ((v25 & 1) != 0 && [keyCopy state] != 1)
    {
      if ([(UIKeyboardLayoutStar *)self preventPaddlesForPointerTouches])
      {
        keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
        allowsPaddles = [keyplaneFactory allowsPaddles];

        if (allowsPaddles)
        {
          v58 = representedString;
          touch = [infoCopy touch];
          touchUUID = [touch touchUUID];
          v61 = [UIKBTouchState touchForTouchUUID:touchUUID];

          if ([v61 _isPointerTouch])
          {
            [keyCopy setPreventPaddle:1];
          }

          representedString = v58;
        }
      }

      if ([keyCopy state] == 16 || objc_msgSend(keyCopy, "state") == 4 && objc_msgSend(keyCopy, "hasSemiStickyVariant"))
      {
        [v16 clearLongPressTimer];
        keyplaneFactory2 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
        v63 = [keyplaneFactory2 popupKeyUsesCustomKeyContentView:keyCopy];

        if (v63)
        {
          v64 = [(UIKBKeyplaneView *)self->_keyplaneView retestSelectedVariantIndexForKey:keyCopy atPoint:0 phase:x, y]|| self->_selectedVariantIndexChanged;
          self->_selectedVariantIndexChanged = v64;
        }

        else
        {
          [(UIKeyboardLayoutStar *)self updateSelectedVariantIndexForKey:keyCopy withActions:v25 withPoint:x, y];
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
        v65 = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews:representedString];
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
              name = [v71 name];
              v73 = [name isEqual:@"EmojiPopupKey"];

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
        keyCopy = v99;
        infoCopy = v100;
        v38 = v105;
        representedString = v98;
        v25 = v102;
      }

      [(UIKeyboardLayoutStar *)self setState:v78 forKey:keyCopy];
      [(UIKeyboardLayoutStar *)self setActiveKey:keyCopy];
      if (self->_multitapKey)
      {
        activeKey = [(UIKeyboardLayoutStar *)self activeKey];
        v80 = activeKey;
        if (activeKey == self->_multitapKey)
        {
        }

        else
        {
          activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
          [(UIKeyboardLayoutStar *)self activeMultitapCompleteKey];
          v82 = v38;
          v84 = v83 = v25;

          v20 = activeKey2 == v84;
          v25 = v83;
          v38 = v82;
          if (!v20)
          {
            [(UIKeyboardLayoutStar *)self setState:2 forKey:self->_multitapKey];
            multitapKey = self->_multitapKey;
            self->_multitapKey = 0;

            activeKey3 = [(UIKeyboardLayoutStar *)self activeKey];
            if ([(UIKeyboardLayoutStar *)self isMultitapKey:activeKey3])
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
    [(UIKeyboardLayoutStar *)self playKeyFeedbackIfNecessaryForTouchDownOnKey:keyCopy touchInfo:infoCopy];
    if ([(UIKeyboardLayoutStar *)self shouldCommitPrecedingTouchesForTouchDownWithActions:v25])
    {
      v88 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
      [v88 touch];
      v89 = v38;
      v91 = v90 = v25;
      touchUUID2 = [v91 touchUUID];
      [(UIKeyboardLayout *)self touchUUIDsToCommitBeforeTouchUUID:touchUUID2];
      v93 = infoCopy;
      v95 = v94 = representedString;

      v96 = [UIKBTouchState touchesForTouchUUIDs:v95];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __80__UIKeyboardLayoutStar_touchDownWithKey_withTouchInfo_atPoint_executionContext___block_invoke_2;
      v106[3] = &unk_1E70FD8B0;
      v106[4] = self;
      v107 = keyCopy;
      v108 = v90;
      v97 = [v89 childWithContinuation:v106];
      [(UIKeyboardLayout *)self commitTouches:v96 executionContext:v97];

      v38 = v89;
      representedString = v94;
      infoCopy = v93;
    }

    else
    {
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:keyCopy withActions:v25 executionContext:v38];
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

- (BOOL)shouldCommitPrecedingTouchesForTouchDownWithActions:(unint64_t)actions
{
  if ((actions & 0x20000012) != 0 || (actions & 0x800000) != 0 && (actions & 0x78000) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else if ((actions & 0x20) == 0 || (v5 = [(NSMutableDictionary *)self->_extendedTouchInfoMap count:v3], v5 != 1))
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

- (void)incrementPunctuationIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy length])
  {
    sharedPunctuationCharacterSet = [objc_opt_class() sharedPunctuationCharacterSet];
    if (qword_1ED493270 != -1)
    {
      dispatch_once(&qword_1ED493270, &__block_literal_global_1242);
    }

    v4 = [neededCopy characterAtIndex:0];
    if (([sharedPunctuationCharacterSet characterIsMember:v4] & 1) != 0 || objc_msgSend(qword_1ED493268, "characterIsMember:", v4))
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

- (void)completeCommitTouchesPrecedingTouchDownWithKey:(id)key withActions:(unint64_t)actions executionContext:(id)context
{
  keyCopy = key;
  contextCopy = context;
  v10 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
  if ([v10 delayed])
  {
    [contextCopy returnExecutionToParent];
  }

  else if ((actions & 2) != 0)
  {
    representedString = [keyCopy representedString];
    v12 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:representedString forKey:keyCopy touchInfo:v10 inputFlags:0];
    _modifiedInput = [v12 _modifiedInput];
    [(UIKeyboardLayoutStar *)self incrementPunctuationIfNeeded:_modifiedInput];

    v14 = +[UIKeyboardImpl activeInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __100__UIKeyboardLayoutStar_completeCommitTouchesPrecedingTouchDownWithKey_withActions_executionContext___block_invoke;
    v16[3] = &unk_1E70FD8B0;
    v16[4] = self;
    v17 = keyCopy;
    actionsCopy = actions;
    v15 = [contextCopy childWithContinuation:v16];
    [v14 _handleKeyEvent:v12 executionContext:v15];
  }

  else
  {
    [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchDownWithKey:keyCopy withActions:actions executionContext:contextCopy];
  }
}

- (id)keyplaneNameForRevertAfterTouch
{
  if ([(UIKBTree *)self->_keyplane isShiftKeyplane]&& [(UIKBTree *)self->_keyplane looksLikeShiftAlternate])
  {
    shiftAlternateKeyplaneName = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
  }

  else
  {
    shiftAlternateKeyplaneName = self->_keyplaneName;
  }

  return shiftAlternateKeyplaneName;
}

- (id)synthesizeTouchUpEventForKey:(id)key
{
  selfCopy = self;
  v4 = [(UIKeyboardLayoutStar *)self touchInfoForKey:key];
  touch = [v4 touch];
  [v4 initialPoint];
  v7 = v6;
  v9 = v8;
  [touch timestamp];
  v11 = v10;
  v12 = [v4 key];
  LODWORD(selfCopy) = [(UIKeyboardLayoutStar *)selfCopy keycodeForKey:v12];

  v13 = MEMORY[0x1E69D9668];
  [touch pathMajorRadius];
  v15 = [v13 touchEventWithStage:2 location:objc_msgSend(touch radius:"pathIndex") timestamp:selfCopy pathIndex:v7 forcedKeyCode:{v9, v14, v11}];

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
  preferencesActions = [v3 preferencesActions];
  if ([preferencesActions oneTimeActionCompleted:@"DidShowGestureKeyboardIntroduction"])
  {

    return 0;
  }

  shouldShowGestureKeyboardIntroduction = [(UIKeyboardLayoutStar *)self shouldShowGestureKeyboardIntroduction];

  if (!shouldShowGestureKeyboardIntroduction)
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

- (void)completeSendStringActionForTouchDownWithKey:(id)key withActions:(unint64_t)actions executionContext:(id)context
{
  keyCopy = key;
  contextCopy = context;
  v10 = +[UIKeyboardImpl activeInstance];
  if ((actions & 0x800000) != 0)
  {
    [(UIKeyboardLayoutStar *)self showPopupVariantsForKey:keyCopy];
  }

  preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

  if (preTouchKeyplaneName)
  {
    self->_revertKeyplaneAfterTouch = 1;
  }

  if ((actions & 0x10) != 0)
  {
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    keyplaneNameForRevertAfterTouch = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:keyplaneNameForRevertAfterTouch];

    self->_revertKeyplaneAfterTouch = 0;
    [(UIKeyboardLayoutStar *)self downActionShiftWithKey:keyCopy];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1)
    {
      if ([(UIKBTree *)self->_keyplane isShiftKeyplane])
      {
        v13 = UIKeyboardGetCurrentInputMode();
        TIStatisticScalarIncrementInputStringCount();
      }
    }
  }

  if ((actions & 0x400000000) != 0)
  {
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    v14 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
    v15 = +[UIKeyboardImpl activeInstance];
    isShiftLocked = [v15 isShiftLocked];

    keyplane = self->_keyplane;
    if (isShiftLocked)
    {
      shiftAlternateKeyplaneName = [(UIKBTree *)keyplane shiftAlternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:shiftAlternateKeyplaneName];

      keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
      renderingContext = [keyplaneFactory renderingContext];
      [renderingContext setShiftState:0];

      [v10 setShift:0];
      [v10 setShiftPreventAutoshift:1];
      [v10 forceShiftUpdate];
      v21 = 2;
    }

    else
    {
      name = [(UIKBTree *)keyplane name];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:name];

      keyplaneFactory2 = [(UIKeyboardLayoutStar *)self keyplaneFactory];
      renderingContext2 = [keyplaneFactory2 renderingContext];
      [renderingContext2 setShiftState:3];

      [v10 setShiftLockedForced:1];
      v25 = self->_keyplane;
      _currentLayoutInfo = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
      [(UIKBTree *)v25 updateFlickKeycapOnKeysWithLayoutInfo:_currentLayoutInfo];

      [(UIKeyboardLayoutStar *)self refreshDualStringKeys];
      v21 = 8;
    }

    [(UIKeyboardLayoutStar *)self setState:v21 forKey:v14];
  }

  if ((actions & 0x20) != 0 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
  {
    [(UIView *)self bounds];
    v28 = v27;
    keyplaneNameForRevertAfterTouch2 = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:keyplaneNameForRevertAfterTouch2];

    self->_revertKeyplaneAfterTouch = 0;
    [v10 keyActivated];
    self->_suppressShiftKeyplaneAnimation = 1;
    [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
    isShiftKeyPlaneChooser = [(UIKBTree *)self->_keyplane isShiftKeyPlaneChooser];
    keyboard = self->_keyboard;
    alternateKeyplaneName = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    v33 = [(UIKBTree *)keyboard subtreeWithName:alternateKeyplaneName];

    if ([v33 intForProperty:@"shift-rendering"] != 31 || (TIStatisticGetKey(), v34 = objc_claimAutoreleasedReturnValue(), TIStatisticScalarIncrement(), v34, !-[UIKeyboardLayoutStar showGestureKeyboardIntroductionIfNeeded](self, "showGestureKeyboardIntroductionIfNeeded")))
    {
      alternateKeyplaneName2 = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:alternateKeyplaneName2];
    }

    if (isShiftKeyPlaneChooser)
    {
      autoshift = self->_autoshift;
      v36 = v33;
      shift = self->_shift;
      [v10 forceShiftUpdate];
      v38 = shift == self->_shift;
      v33 = v36;
      if (v38 && autoshift != self->_autoshift)
      {
        shiftAlternateKeyplaneName2 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:shiftAlternateKeyplaneName2];
      }
    }

    self->_suppressShiftKeyplaneAnimation = 0;
    [(UIKeyboardLayoutStar *)self setActiveKey:0];
    [(UIView *)self bounds];
    v41 = v40 - v28;
    v42 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
    [v42 initialDragPoint];
    v44 = v43;
    [v42 initialDragPoint];
    [v42 setInitialDragPoint:{v44, v41 + v45}];
    if (v41 != 0.0)
    {
      window = [(UIView *)self window];
      [window layoutIfNeeded];
    }

    self->_preferredTrackingChangeCount = [v10 changeCount];
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 && ![(UIKBTree *)self->_keyplane looksLikeShiftAlternate])
    {
      v47 = UIKeyboardGetCurrentInputMode();
      TIStatisticScalarIncrementInputStringCount();
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:self->_prevTouchMoreKeyTime];
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

    date2 = [MEMORY[0x1E695DF00] date];
    v55 = self->_prevTouchMoreKeyTime;
    self->_prevTouchMoreKeyTime = date2;
  }

  if ((actions & 0x20000000) != 0)
  {
    [(UIView *)self bounds];
    v57 = v56;
    representedString = [keyCopy representedString];
    [(UIKeyboardLayoutStar *)self switchKeyplane:representedString];

    [(UIView *)self bounds];
    v60 = v59 - v57;
    v61 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
    [v61 initialDragPoint];
    v63 = v62;
    [v61 initialDragPoint];
    [v61 setInitialDragPoint:{v63, v60 + v64}];
    if (v60 != 0.0)
    {
      window2 = [(UIView *)self window];
      [window2 layoutIfNeeded];
    }

    self->_preferredTrackingChangeCount = [v10 changeCount];
  }

  if ((actions & 0x40) != 0)
  {
    v66 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v66 setAnalyticsShouldCallDidKeyPressForDeleteKey:1];

    v67 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
    touch = [v67 touch];

    if ([touch inputSource] == 8)
    {
      v69 = 8;
    }

    else
    {
      v69 = 1;
    }

    touchUUID = [touch touchUUID];
    v71 = [(UIKeyboardLayout *)self touchUUIDsToCommitBeforeTouchUUID:touchUUID];

    v72 = [UIKBTouchState touchesForTouchUUIDs:v71];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __97__UIKeyboardLayoutStar_completeSendStringActionForTouchDownWithKey_withActions_executionContext___block_invoke;
    v75[3] = &unk_1E70FD900;
    v75[4] = self;
    v76 = keyCopy;
    v77 = v10;
    actionsCopy = actions;
    v79 = v69;
    v73 = [contextCopy childWithContinuation:v75];
    [(UIKeyboardLayout *)self commitTouches:v72 executionContext:v73];
  }

  else
  {
    [(UIKeyboardLayoutStar *)self completeDeleteActionForTouchDownWithActions:actions executionContext:contextCopy];
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

- (void)completeDeleteActionForTouchDownWithActions:(unint64_t)actions executionContext:(id)context
{
  actionsCopy = actions;
  contextCopy = context;
  v6 = +[UIKeyboardImpl activeInstance];
  if ((actionsCopy & 0x40000000) != 0)
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

  [contextCopy returnExecutionToParent];
}

- (BOOL)canForceTouchUUIDCommit:(id)commit inWindow:(id)window
{
  commitCopy = commit;
  windowCopy = window;
  v8 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:commitCopy];
  v9 = v8;
  if (windowCopy && v8 && ([v8 key], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "modifiesKeyplane"), v10, (v11 & 1) != 0) || objc_msgSend(v9, "continuousPathState") == 4)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIKeyboardLayoutStar;
    v12 = [(UIKeyboardLayout *)&v14 canForceTouchUUIDCommit:commitCopy inWindow:windowCopy];
  }

  return v12;
}

- (BOOL)touchPassesDragThreshold:(id)threshold
{
  thresholdCopy = threshold;
  if ([thresholdCopy dragged])
  {
    v5 = 12.0;
  }

  else
  {
    v5 = 18.0;
  }

  v6 = [thresholdCopy key];
  v7 = [(UIKeyboardLayoutStar *)self stateForKey:v6];

  dragThreshold = [(UIKBTree *)self->_keyplane dragThreshold];
  if (v7 != 16 && dragThreshold == 41)
  {
    if ([thresholdCopy dragged])
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
      if ([thresholdCopy dragged])
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

  v10 = [thresholdCopy key];

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

  v12 = [thresholdCopy key];
  if (v12)
  {
    v13 = v12;
    v14 = [thresholdCopy key];
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
  isVisible = [v15 isVisible];

  if (isVisible)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v5;
  }

  touch = [thresholdCopy touch];
  [touch locationInView:self];
  v20 = v19;
  v22 = v21;

  [thresholdCopy initialDragPoint];
  *&v23 = v20 - v23;
  *&v20 = fabsf(*&v23);
  [thresholdCopy initialDragPoint];
  v25 = v22 - v24;
  v26 = fmaxf(*&v20, fabsf(v25)) >= v17;

  return v26;
}

- (void)touchDragged:(id)dragged
{
  draggedCopy = dragged;
  v12.receiver = self;
  v12.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v12 touchDragged:draggedCopy];
  v5 = [UIKBTouchState touchUUIDForTouch:draggedCopy];
  v6 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:v5];
  if (-[UIKeyboardLayoutStar _allowContinuousPathUI](self, "_allowContinuousPathUI") && [v6 continuousPathState] == 4)
  {
    [draggedCopy locationInView:self];
    v8 = v7;
    v10 = v9;
    [draggedCopy timestamp];
    [(UIKeyboardLayoutStar *)self addContinuousPathPoint:v8 withTimestamp:v10, v11];
  }
}

- (void)touchDragged:(id)dragged executionContext:(id)context
{
  v170 = *MEMORY[0x1E69E9840];
  draggedCopy = dragged;
  contextCopy = context;
  v9 = [(UIKeyboardLayoutStar *)self infoForTouch:draggedCopy];
  v10 = v9;
  if (v9)
  {
    [v9 addTouch:draggedCopy];
    v11 = off_1E70EA000;
    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [(UIKeyboardLayoutStar *)self touchPassesDragThreshold:v10];
    touch = [v10 touch];
    [touch locationInView:self];
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
        selfCopy = self;
        v24 = draggedCopy;
        v25 = contextCopy;
        v26 = v12;
        v27 = [v10 key];
        if ([v27 state] != 2)
        {
          slidOffKey = [v10 slidOffKey];

          v12 = v26;
          contextCopy = v25;
          draggedCopy = v24;
          self = selfCopy;
          v11 = off_1E70EA000;
          if (!slidOffKey)
          {
            [v10 initialPoint];
            v45 = v44;
            v46 = [v10 key];
            [v46 paddedFrame];
            v48 = v47;

            v49 = [v10 key];
            state = [v49 state];

            if (state != 16 || (v18 - v45) / v48 > 0.25)
            {
              v51 = [v10 key];
              state2 = [v51 state];

              if (state2 == 16)
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
          interactionType = [v28 interactionType];

          if (interactionType == 4)
          {
            activeInstance = [(__objc2_class *)v11[11] activeInstance];
            [draggedCopy touchUUID];
            selfCopy2 = self;
            v32 = draggedCopy;
            v33 = contextCopy;
            v35 = v34 = v12;
            v36 = [UIKBTouchState touchForTouchUUID:v35];
            [v36 force];
            [activeInstance adjustAutoDeleteTimerForForce:?];

            v12 = v34;
            contextCopy = v33;
            draggedCopy = v32;
            self = selfCopy2;
          }

          if (![(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected]&& v13)
          {
            [v10 setInitialDragPoint:{v16, v18}];
            [v10 setDragged:1];
            [v12 touchLongPressTimer];
            if (interactionType != 16 || ([(UIKeyboardLayoutStar *)self multitapInterrupted], multitapKey = self->_multitapKey, self->_multitapKey = 0, multitapKey, ![(UIKeyboardLayoutStar *)self handleFlick:v10]) && self->_preTouchKeyplaneName && ![(NSString *)self->_keyplaneName isEqualToString:?])
            {
              v38 = [v10 key];
              v39 = [(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:v38];

              if (v39)
              {
                sharedInstance = +[UIInputSwitcherView sharedInstance];
                goto LABEL_41;
              }

              if (interactionType == 5)
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
                  sharedInstance = 0;
                  goto LABEL_35;
                }

                v54 = +[UIDictationConnectionPreferences sharedInstance];
                if ([v54 dictationIsEnabled])
                {
                  v55 = v12;
                  v56 = +[UIKeyboardInputModeController sharedInputModeController];
                  enabledDictationLanguages = [v56 enabledDictationLanguages];
                  v58 = [enabledDictationLanguages count];

                  if (v58 < 2)
                  {
                    sharedInstance = 0;
                  }

                  else
                  {
                    sharedInstance = +[UIInputSwitcherView sharedInstance];
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
                    if (v63 && !sharedInstance)
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
                      subtrees = [v73 subtrees];

                      v75 = [subtrees countByEnumeratingWithState:&v163 objects:v169 count:16];
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
                              objc_enumerationMutation(subtrees);
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

                          v76 = [subtrees countByEnumeratingWithState:&v163 objects:v169 count:16];
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
                      subtrees2 = [v93 subtrees];
                      v95 = [subtrees2 count];

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
                        subtrees3 = [v108 subtrees];
                        v110 = [subtrees3 count];

                        if (v110 < 2)
                        {
                          goto LABEL_97;
                        }

                        v111 = [v10 key];
                        name = [v111 name];
                        v113 = [name isEqual:@"EmojiPopupKey"];

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
                            superview = [v115 superview];
                            [(UIView *)self convertRect:superview fromView:v123, v125, v127, v129];
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
                            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
                            v167[0] = @"key";
                            v167[1] = @"touch";
                            v168[0] = v114;
                            uiTouch = [draggedCopy uiTouch];
                            v168[1] = uiTouch;
                            v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:2];
                            [defaultCenter postNotificationName:@"UIKeyboardWillCancelEmojiVariants" object:self userInfo:v141];

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
                          keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
                          v147 = [v10 key];
                          v148 = [keyplaneFactory popupKeyUsesCustomKeyContentView:v147];

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

                  if (sharedInstance && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
                  {
                    superview2 = [sharedInstance superview];

                    if (superview2)
                    {
                      [draggedCopy locationInView:self];
                      [(UIView *)self convertPoint:sharedInstance toView:?];
                      v104 = v103;
                      v106 = v105;
                      [sharedInstance frame];
                      if (v106 < v107)
                      {
                        self->_dictationUsingServerManualEndpointing = 0;
                      }

                      [sharedInstance updateSelectionWithPoint:{v104, v106}];
                      goto LABEL_103;
                    }

                    v142 = v18 - v20;
                    v143 = fabsf(v142);
                    [(UIKeyboardLayout *)self flickDistance];
                    if (v144 < v143 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
                    {
                      if (![(UIKeyboardLayoutStar *)self isHandwritingPlane]|| interactionType != 3)
                      {
                        v145 = [v10 key];
                        if ([(UIKeyboardLayoutStar *)self stateForKey:v145]== 4)
                        {
                        }

                        else
                        {
                          v153 = [v10 key];
                          interactionType2 = [v153 interactionType];

                          if (interactionType2 != 5)
                          {
                            goto LABEL_103;
                          }
                        }
                      }

                      v155 = [v10 key];
                      [(UIKeyboardLayoutStar *)self showMenu:sharedInstance forKey:v155];

                      [draggedCopy locationInView:sharedInstance];
                      [sharedInstance updateSelectionWithPoint:?];
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
                    shouldSuppressDragRetest = [(UIKBTree *)self->_keyplane shouldSuppressDragRetest];
                    if (!shouldSuppressDragRetest && !v96)
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
                      selfCopy3 = self;
                      v100 = v10;
                      v161 = v100;
                      v101 = [contextCopy childWithContinuation:&v158.origin.y];
                      [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v100 touchStage:1 executionContextPassingUIKBTree:v101];

LABEL_104:
                      goto LABEL_105;
                    }

                    if (!shouldSuppressDragRetest)
                    {
                      goto LABEL_69;
                    }
                  }

LABEL_103:
                  [contextCopy returnExecutionToParent];
                  goto LABEL_104;
                }
              }

              else if (interactionType == 6)
              {
                v41 = +[UIKeyboardSplitControlMenu sharedInstance];
                if ([v41 isVisible])
                {
                  v42 = UIKeyboardSplitControlMenu;
LABEL_33:
                  sharedInstance = [(__objc2_class *)v42 sharedInstance];
LABEL_35:

                  goto LABEL_41;
                }

                goto LABEL_34;
              }

              sharedInstance = 0;
              goto LABEL_41;
            }
          }

LABEL_29:
          [contextCopy returnExecutionToParent];
LABEL_105:

          goto LABEL_106;
        }

        v12 = v26;
        contextCopy = v25;
        draggedCopy = v24;
        self = selfCopy;
        v11 = off_1E70EA000;
      }
    }

    goto LABEL_8;
  }

  [contextCopy returnExecutionToParent];
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

- (void)completeHitTestForTouchDragged:(id)dragged hitKey:(id)key
{
  v120 = *MEMORY[0x1E69E9840];
  draggedCopy = dragged;
  keyCopy = key;
  [draggedCopy initialDragPoint];
  v9 = v8;
  v11 = v10;
  v12 = +[UIKeyboardImpl activeInstance];
  if ([(UIKeyboardLayout *)self supportsVirtualDrift])
  {
    [keyCopy frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = &OBJC_IVAR___UIKeyboardLayoutStar__leftDriftOffset;
    if (([(NSMutableSet *)self->_leftKeySet containsObject:keyCopy]& 1) != 0 || (v21 = &OBJC_IVAR___UIKeyboardLayoutStar__rightDriftOffset, [(NSMutableSet *)self->_rightKeySet containsObject:keyCopy]))
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
    handRestRecognizerGetHomeRowHint = [(UIKeyboardLayoutStar *)self handRestRecognizerGetHomeRowHint];
    touch = [draggedCopy touch];
    -[UIKeyboardLayout _updateTouchState:errorVector:rowOffsetFromHomeRow:](self, "_updateTouchState:errorVector:rowOffsetFromHomeRow:", touch, [keyCopy displayRowHint] - objc_msgSend(handRestRecognizerGetHomeRowHint, "integerValue"), v25, v26);
  }

  v29 = [draggedCopy key];

  if (v29 == keyCopy)
  {
    goto LABEL_81;
  }

  if (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 23 || ([v12 usesContinuousPath] & 1) != 0)
  {
    v30 = [draggedCopy key];
    if ([v30 state] != 1)
    {
      v31 = [draggedCopy key];
      if ([v31 interactionType] == 11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v32 = [draggedCopy key];
      if ([v32 interactionType] == 14)
      {

        goto LABEL_18;
      }

      v98 = [draggedCopy key];
      if ([v98 state] == 4)
      {
        v99 = [draggedCopy key];
        interactionType = [v99 interactionType];

        if (interactionType == 10)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v30 = [draggedCopy key];
      [(UIKeyboardLayoutStar *)self setState:2 forKey:v30];
    }

LABEL_19:

LABEL_20:
    v33 = [draggedCopy key];
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
    if (keyCopy)
    {
      if ([keyCopy interactionType] == 13)
      {
        goto LABEL_81;
      }

      if ([keyCopy interactionType] == 4)
      {
        goto LABEL_81;
      }

      if ([keyCopy displayType] == 49)
      {
        goto LABEL_81;
      }

      if (([(UIKeyboardLayoutStar *)self upActionFlagsForKey:keyCopy]& 2) == 0)
      {
        goto LABEL_81;
      }

      self->_revertKeyplaneAfterTouch = 1;
      [v12 setInputPoint:{v9, v11}];
      [(UIKeyboardLayoutStar *)self setActiveKey:keyCopy];
      v37 = [draggedCopy key];
      [draggedCopy setSlidOffKey:v37];

      [draggedCopy setKey:keyCopy];
      [draggedCopy setKeyplane:self->_keyplane];
      if ([(UIKeyboardLayoutStar *)self _allowContinuousPathUI])
      {
        if ([draggedCopy continuousPathState] != 2)
        {
          goto LABEL_81;
        }
      }

LABEL_70:
      [(UIKeyboardLayoutStar *)self setState:4 forKey:keyCopy];
      goto LABEL_81;
    }

    [(UIKeyboardLayoutStar *)self setActiveKey:0];
    v70 = [draggedCopy key];
    [draggedCopy setSlidOffKey:v70];

LABEL_80:
    [draggedCopy setKey:0];
    [draggedCopy setKeyplane:self->_keyplane];
    goto LABEL_81;
  }

  [v12 stopAutoDelete];
  v34 = [draggedCopy key];
  [draggedCopy setSlidOffKey:v34];

  slidOffKey = [draggedCopy slidOffKey];
  if (([(UIKeyboardLayoutStar *)self downActionFlagsForKey:slidOffKey]& 0x10) != 0)
  {
    v38 = [(UIKeyboardLayoutStar *)self downActionFlagsForKey:keyCopy];

    if ((v38 & 0x10) == 0)
    {
      [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
      keyplane = self->_keyplane;
      slidOffKey2 = [draggedCopy slidOffKey];
      name = [slidOffKey2 name];
      v42 = [(UIKBTree *)keyplane keysByKeyName:name];

      slidOffKey3 = [draggedCopy slidOffKey];
      v44 = [(UIKeyboardLayoutStar *)self stateForShiftKey:slidOffKey3];

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

  v50 = [draggedCopy key];
  if (v50)
  {
    v51 = v50;
    preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (preTouchKeyplaneName || ([draggedCopy keyplane], preTouchKeyplaneName = objc_claimAutoreleasedReturnValue(), preTouchKeyplaneName == self->_keyplane))
    {
    }

    else
    {
      keyplane = [draggedCopy keyplane];
      looksLikeShiftAlternate = [keyplane looksLikeShiftAlternate];

      if (looksLikeShiftAlternate)
      {
        [(UIKeyboardLayoutStar *)self setActiveKey:keyCopy];
        [draggedCopy setKey:keyCopy];
        [draggedCopy setKeyplane:self->_keyplane];
        goto LABEL_70;
      }
    }
  }

  v53 = [draggedCopy key];
  if (v53)
  {
    v54 = v53;
    preTouchKeyplaneName2 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (preTouchKeyplaneName2)
    {
      v56 = preTouchKeyplaneName2;
      isShiftKeyBeingHeld = [(UIKeyboardLayoutStar *)self isShiftKeyBeingHeld];

      if (!isShiftKeyBeingHeld)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v73 = [draggedCopy key];
    if ([v73 state] == 1)
    {
      goto LABEL_77;
    }

    v74 = [draggedCopy key];
    if ([v74 interactionType] != 14)
    {
      v75 = [draggedCopy key];
      if ([v75 interactionType] != 38)
      {
        v101 = [draggedCopy key];
        if ([v101 state] == 4)
        {
          v102 = [draggedCopy key];
          interactionType2 = [v102 interactionType];

          if (interactionType2 == 10)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        v73 = [draggedCopy key];
        [(UIKeyboardLayoutStar *)self setState:2 forKey:v73];
LABEL_77:

LABEL_78:
        [draggedCopy initialPoint];
        v77 = v9 - v76;
        [draggedCopy initialPoint];
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
  preTouchKeyplaneName3 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

  if (preTouchKeyplaneName3)
  {
    self->_revertKeyplaneAfterTouch = 1;
    if ([keyCopy interactionType] != 13 && objc_msgSend(keyCopy, "interactionType") != 4 && (-[UIKeyboardLayoutStar upActionFlagsForKey:](self, "upActionFlagsForKey:", keyCopy) & 2) != 0)
    {
      [v12 setInputPoint:{v9, v11}];
      [(UIKeyboardLayoutStar *)self setActiveKey:keyCopy];
      [draggedCopy setKey:keyCopy];
      [draggedCopy setKeyplane:self->_keyplane];
      slidOffKey4 = [draggedCopy slidOffKey];
      if ([slidOffKey4 interactionType] != 11)
      {
        slidOffKey5 = [draggedCopy slidOffKey];
        interactionType3 = [slidOffKey5 interactionType];

        if (interactionType3 == 14)
        {
          goto LABEL_64;
        }

        v62 = self->_keyplane;
        slidOffKey6 = [draggedCopy slidOffKey];
        name2 = [slidOffKey6 name];
        v65 = [(UIKBTree *)v62 keysByKeyName:name2];

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        slidOffKey4 = v65;
        v66 = [slidOffKey4 countByEnumeratingWithState:&v110 objects:v118 count:16];
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
                objc_enumerationMutation(slidOffKey4);
              }

              [(UIKeyboardLayoutStar *)self setState:2 forKey:*(*(&v110 + 1) + 8 * j)];
            }

            v67 = [slidOffKey4 countByEnumeratingWithState:&v110 objects:v118 count:16];
          }

          while (v67);
        }
      }

LABEL_64:
      if ([draggedCopy continuousPathState] == 4)
      {
        goto LABEL_81;
      }

      goto LABEL_70;
    }
  }

LABEL_81:
  if ([v12 usesContinuousPathProgressiveCandidates] && objc_msgSend(draggedCopy, "continuousPathState") == 4)
  {
    if (self->_prevProgressiveCandidateRequestTime)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:self->_prevProgressiveCandidateRequestTime];
      v82 = v81;

      if (v82 > 0.2)
      {
        [v12 generateCandidatesWithOptions:12];
        progressiveCandidateUpdateTimer = self->_progressiveCandidateUpdateTimer;
        if (progressiveCandidateUpdateTimer)
        {
          [(NSTimer *)progressiveCandidateUpdateTimer invalidate];
        }

        date2 = [MEMORY[0x1E695DF00] date];
        prevProgressiveCandidateRequestTime = self->_prevProgressiveCandidateRequestTime;
        self->_prevProgressiveCandidateRequestTime = date2;
      }
    }

    if (![(NSTimer *)self->_progressiveCandidateUpdateTimer isValid])
    {
      v86 = MEMORY[0x1E695DFF0];
      v104 = MEMORY[0x1E69E9820];
      v105 = 3221225472;
      v106 = __62__UIKeyboardLayoutStar_completeHitTestForTouchDragged_hitKey___block_invoke;
      v107 = &unk_1E70F4050;
      selfCopy = self;
      v109 = v12;
      v87 = [v86 scheduledTimerWithTimeInterval:0 repeats:&v104 block:0.2];
      v88 = self->_progressiveCandidateUpdateTimer;
      self->_progressiveCandidateUpdateTimer = v87;
    }
  }

  v89 = [draggedCopy key];
  if (v89)
  {
    v90 = v89;
    v91 = [draggedCopy key];
    if ([v91 interactionType] == 9)
    {
    }

    else
    {
      v92 = [draggedCopy key];
      interactionType4 = [v92 interactionType];

      if (interactionType4 != 5)
      {
        activeKey = [(UIKeyboardLayoutStar *)self activeKey];
        if ([activeKey interactionType] == 13)
        {
          returnKeyEnabled = [v12 returnKeyEnabled];

          if ((returnKeyEnabled & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
        }

        v96 = [draggedCopy key];
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

- (int64_t)defaultSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions
{
  actionsCopy = actions;
  keyCopy = key;
  if ([keyCopy variantType] != 10)
  {
    if ([keyCopy variantType] == 11 || objc_msgSend(keyCopy, "variantType") == 13)
    {
      selectedVariantIndex = [keyCopy selectedVariantIndex];
      goto LABEL_6;
    }

    if ((actionsCopy & 0x80000000) == 0 && (-[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->super._screenTraits, "idiom") != 23 || -[UIKeyboardLayout isFloating](self, "isFloating") || [keyCopy displayType] == 7))
    {
      selectedVariantIndex = 0;
      goto LABEL_6;
    }
  }

  selectedVariantIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return selectedVariantIndex;
}

- (void)updateSelectedVariantIndexForKey:(id)key withActions:(unint64_t)actions withPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  selectedVariantIndex = [keyCopy selectedVariantIndex];
  [keyCopy setSelectedVariantIndex:{-[UIKeyboardLayoutStar defaultSelectedVariantIndexForKey:withActions:](self, "defaultSelectedVariantIndexForKey:withActions:", keyCopy, actions)}];
  if ([(UIKeyboardLayoutStar *)self useCrescendoLayout])
  {
    [(TUIKeyplaneView *)self->_liveKeyplaneView changingSelectedVariantForKey:keyCopy atPoint:actions == 0 isDragging:x, y];
  }

  else
  {
    if ((actions & 0x80000000) != 0 || [keyCopy variantType] == 10 || objc_msgSend(keyCopy, "variantType") == 12)
    {
      [keyCopy frame];
      v34.x = x;
      v34.y = y;
      if (CGRectContainsPoint(v35, v34))
      {
        [keyCopy setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
        goto LABEL_25;
      }
    }

    v27 = selectedVariantIndex;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    subtrees = [keyCopy subtrees];
    v12 = [subtrees countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if ([v18 state] != 1)
        {
          [v18 frame];
          UIDistanceBetweenPointAndRect(x, y, v19, v20, v21, v22);
          v24 = v23;
          if (v16 > v24)
          {
            displayString = [v18 displayString];

            if (!displayString)
            {
              NSLog(&cfstr_NilKey.isa);
            }

            [keyCopy setSelectedVariantIndex:v14];
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
          v13 = [subtrees countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    selectedVariantIndex = v27;
  }

  if (selectedVariantIndex != [keyCopy selectedVariantIndex] && objc_msgSend(keyCopy, "selectedVariantIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_selectedVariantIndexChanged = 1;
    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
    {
      slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [slideBehaviour selectionChanged];
    }
  }

LABEL_25:
}

- (void)updatePanAlternativesForTouchInfo:(id)info
{
  infoCopy = info;
  v30 = [infoCopy key];
  [v30 paddedFrame];
  v6 = v5;
  v8 = v7;
  [infoCopy initialDragPoint];
  v10 = v9;
  [infoCopy initialPoint];
  v12 = v10 - v11;
  [infoCopy initialDragPoint];
  v14 = v13;
  [infoCopy initialPoint];
  v16 = v15;

  v17 = v14 - v16;
  v18 = v12 / v6;
  v19 = v17 / v8;
  v20 = 45.0 / v8;
  if ([v30 displayType] == 7)
  {
    v20 = 0.6;
  }

  secondaryDisplayStrings = [v30 secondaryDisplayStrings];
  v22 = [secondaryDisplayStrings count];

  if (v22 != 1)
  {
    secondaryDisplayStrings2 = [v30 secondaryDisplayStrings];
    v24 = [secondaryDisplayStrings2 count];

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
  keyViewAnimator = [(UIKeyboardLayoutStar *)self keyViewAnimator];
  [keyViewAnimator updateTransitionForKeyView:v28 normalizedDragSize:{-v18, v19}];
}

- (void)resetPanAlternativesForEndedTouch:(id)touch
{
  v6 = [touch key];
  v4 = [(UIKeyboardLayoutStar *)self viewForKey:v6];
  keyViewAnimator = [(UIKeyboardLayoutStar *)self keyViewAnimator];
  [keyViewAnimator endTransitionForKeyView:v4];
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

  taskQueue = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__UIKeyboardLayoutStar_handleDelayedCentroidUpdate__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  selfCopy = self;
  objc_copyWeak(&v9, &location);
  [taskQueue addTask:v6 breadcrumb:qword_1ED493278];

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

- (BOOL)shouldRetestTouchUp:(id)up
{
  upCopy = up;
  v5 = [upCopy key];
  v6 = v5;
  v7 = 0;
  if (!upCopy || !v5)
  {
    goto LABEL_35;
  }

  if (![v5 allowRetestAfterCommittingDownActions])
  {
LABEL_34:
    v7 = 0;
    goto LABEL_35;
  }

  v8 = [upCopy key];
  if ([v8 displayTypeHint] != 10)
  {
    goto LABEL_9;
  }

  v9 = [upCopy key];
  if ([v9 state] == 20)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v10 = [upCopy key];
  if ([v10 state] == 2)
  {

    goto LABEL_8;
  }

  slidOffKey = [upCopy slidOffKey];

  if (!slidOffKey)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ([(UIKeyboardPinchGestureRecognizer *)self->_pinchGestureRecognizer pinchDetected])
  {
    goto LABEL_34;
  }

  v11 = [upCopy key];
  interactionType = [v11 interactionType];

  if (interactionType != 5)
  {
    if (interactionType != 6)
    {
      if (interactionType == 9)
      {
        v13 = [upCopy key];
        displayType = [v13 displayType];

        if (displayType == 13)
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
      sharedInstance = [(__objc2_class *)v18 sharedInstance];

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
    sharedInstance = 0;
    goto LABEL_28;
  }

  v15 = +[UIDictationConnectionPreferences sharedInstance];
  if (![v15 dictationIsEnabled])
  {
    goto LABEL_27;
  }

  v19 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledDictationLanguages = [v19 enabledDictationLanguages];
  v21 = [enabledDictationLanguages count];

  if (v21 >= 2)
  {
LABEL_15:
    v15 = +[UIInputSwitcherView sharedInstance];
    sharedInstance = v15;
LABEL_28:

    v22 = sharedInstance == 0;
    goto LABEL_29;
  }

LABEL_26:
  v22 = 1;
LABEL_29:
  v23 = [upCopy key];
  if (v23)
  {
    v24 = v23;
    v25 = [upCopy key];
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

  v28 = [upCopy key];
  slidOffKey2 = [upCopy slidOffKey];
  keyplane = [upCopy keyplane];
  v31 = [(UIKeyboardLayoutStar *)self shouldRetestKey:v28 slidOffKey:slidOffKey2 withKeyplane:keyplane];

  v7 = v31 || [upCopy continuousPathState] == 4;
LABEL_35:

  return v7;
}

- (void)touchUp:(id)up executionContext:(id)context
{
  upCopy = up;
  contextCopy = context;
  if (upCopy)
  {
    v9 = [(UIKeyboardLayoutStar *)self infoForTouch:upCopy];
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
      v52 = upCopy;
      v15 = [contextCopy childWithContinuation:v51];
      [(UIKeyboardLayoutStar *)self completeCommitTouchesPrecedingTouchDownWithKey:v14 withActions:v12 executionContext:v15];

LABEL_51:
      goto LABEL_52;
    }

    [v9 addTouch:upCopy];
    if (v9)
    {
      goto LABEL_10;
    }
  }

  [upCopy locationInView:self];
  v9 = 0;
  if ([(UIKeyboardLayoutStar *)self pointInside:0 forEvent:?])
  {
LABEL_10:
    Current = CFAbsoluteTimeGetCurrent();
    v17 = Current - self->_prevTouchUpTime;
    [(_UIKeyboardTypingSpeedLogger *)self->_typingSpeedLogger recordTypingDelay:v17];
    if (!-[UIKeyboardLayoutStar hasActiveContinuousPathInput](self, "hasActiveContinuousPathInput") && [v9 continuousPathState] != 4)
    {
      typingStyleEstimator = [(UIKeyboardLayout *)self typingStyleEstimator];
      [typingStyleEstimator tapTypedKey];

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
          interactionType = [v36 interactionType];

          if (interactionType != 9)
          {
            self->_prevTouchUpTime = Current;
          }

LABEL_19:
          v22 = +[UIKeyboardImpl activeInstance];
          [(UIKeyboardLayoutStar *)self refreshGhostKeyState];
          if (_AXSZoomTouchEnabled() || [(UIKeyboardLayoutStar *)self playKeyClickSoundOn]== 2)
          {
            v23 = [v9 key];
            interactionType2 = [v23 interactionType];

            if (interactionType2 == 13)
            {
              if (([v22 returnKeyEnabled] & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else if (!upCopy)
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

          if (upCopy)
          {
LABEL_31:
            [v22 setShiftNeedsUpdate];
            slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];
            [slideBehaviour userInteractionEnded];

            [(UIKeyboardLayoutStar *)self setSlideBehaviour:0];
            v30 = [v9 key];
            interactionType3 = [v30 interactionType];

            if (interactionType3 == 16)
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
              displayTypeHint = [v34 displayTypeHint];

              if (displayTypeHint == 10)
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
              v41 = [contextCopy childWithContinuation:v46];
              [(UIKeyboardLayoutStar *)self performHitTestForTouchInfo:v40 touchStage:1 executionContextPassingUIKBTree:v41];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                liveKeyplaneView = self->_liveKeyplaneView;
                v43 = [v9 key];
                touch = [v9 touch];
                [touch locationInView:self];
                [(TUIKeyplaneView *)liveKeyplaneView finishedSelectingVariantForKey:v43 atPoint:?];
              }

              [(UIKeyboardLayoutStar *)self completeRetestForTouchUp:v9 timestamp:contextCopy interval:Current executionContext:v17];
            }

            goto LABEL_51;
          }

LABEL_30:
          activeKey = [(UIKeyboardLayoutStar *)self activeKey];
          [(UIKeyboardLayoutStar *)self setState:2 forKey:activeKey];

          [(UIKeyboardLayoutStar *)self setActiveKey:0];
          goto LABEL_31;
        }
      }
    }

    goto LABEL_19;
  }

  [contextCopy returnExecutionToParent];
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

- (void)handleKeyboardMenusForTouch:(id)touch
{
  touchCopy = touch;
  v4 = [touchCopy key];
  interactionType = [v4 interactionType];

  v6 = [touchCopy key];
  if ([v6 interactionType] == 9)
  {
    v7 = [touchCopy key];
    if ([v7 displayType] == 13 && objc_msgSend(touchCopy, "dragged"))
    {

      goto LABEL_7;
    }
  }

  if (interactionType != 5)
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
    superview = [v8 superview];

    if (superview)
    {
      touch = [touchCopy touch];
      v12 = [touchCopy key];
      v13 = [(UIKeyboardLayoutStar *)self viewForKey:v12];

      [touch locationInView:v13];
      v15 = v14;
      v17 = v16;
      [touch locationInView:v9];
      v19 = v18;
      v21 = v20;
      if (interactionType == 5 && ([v9 bounds], v28.x = v19, v28.y = v21, !CGRectContainsPoint(v30, v28)))
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

      v22 = [touchCopy key];
      [(UIKeyboardLayoutStar *)self setState:2 forKey:v22];
    }
  }

LABEL_14:
}

- (BOOL)shouldSendTouchUpToInputManager:(id)manager
{
  managerCopy = manager;
  v4 = +[UIKeyboardImpl activeInstance];
  v9 = [v4 canHandleKeyHitTest] && (objc_msgSend(managerCopy, "key"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isExemptFromInputManagerLayout"), v5, (v6 & 1) == 0) && (objc_msgSend(managerCopy, "key"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interactionType"), v7, v8 != 4) && (!objc_msgSend(v4, "canHandleKeyHitTest") || !objc_msgSend(managerCopy, "stage") || objc_msgSend(managerCopy, "stage") == 1);

  return v9;
}

- (void)_recordKeystrokeStatisticForKeyPress
{
  if ([(UIKeyboardLayoutStar *)self currentHandBias])
  {
    currentHandBias = [(UIKeyboardLayoutStar *)self currentHandBias];

    [_UIKeyboardUsageTracking countKeystrokeForReachableKeyboardWithBias:currentHandBias];
  }
}

- (void)completeRetestForTouchUp:(id)up timestamp:(double)timestamp interval:(double)interval executionContext:(id)context
{
  upCopy = up;
  contextCopy = context;
  v11 = +[UIKeyboardImpl activeInstance];
  touch = [upCopy touch];
  didLongPress = self->_didLongPress;
  self->_didLongPress = 0;
  [v11 stopAutoDelete];
  [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
  v14 = [upCopy key];

  if ([upCopy continuousPathState] == 4)
  {
    [(UIKeyboardLayoutStar *)self _transitionToContinuousPathState:5 forTouchInfo:upCopy];
    goto LABEL_4;
  }

  if (v14)
  {
LABEL_4:
    if ([(UIKeyboardLayoutStar *)self shouldSendTouchUpToInputManager:upCopy])
    {
      [touch locationInView:self];
      v16 = v15;
      v18 = v17;
      [touch timestamp];
      v20 = v19;
      if ([upCopy continuousPathState] == 5)
      {
        v21 = didLongPress;
        v22 = -2;
      }

      else
      {
        v24 = [upCopy key];
        if (v24 && (v25 = v24, [upCopy key], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "interactionType"), v26, v25, v27 != 11))
        {
          v21 = didLongPress;
          v28 = [upCopy key];
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
      [touch pathMajorRadius];
      v23 = [v30 touchEventWithStage:2 location:objc_msgSend(touch radius:"pathIndex") timestamp:objc_msgSend(upCopy pathIndex:"fingerID") fingerID:v22 forcedKeyCode:_translateToTIContinuousPathState(objc_msgSend(upCopy continuousPathState:{"continuousPathState")), v16, v18, v31, v20}];
      [upCopy setStage:2];
      didLongPress = v21;
    }

    else
    {
      v23 = 0;
    }

    if ([upCopy continuousPathState] == 5)
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

      [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchUp:upCopy withActions:v32 timestamp:didLongPress interval:0 didLongPress:contextCopy prevActions:timestamp executionContext:interval];
      goto LABEL_227;
    }

    v33 = [upCopy key];
    v34 = [(UIKeyboardLayoutStar *)self stateForKey:v33];

    v35 = [upCopy key];
    subtrees = [v35 subtrees];

    v36 = [upCopy key];
    v37 = [(UIKeyboardLayoutStar *)self upActionFlagsForKey:v36];

    prevUpActions = self->_prevUpActions;
    self->_prevUpActions = v37;
    v263 = v34;
    v270 = v11;
    v271 = touch;
    v273 = v23;
    if (v34 != 16 || (v37 & 0x2080000000) == 0)
    {
      goto LABEL_55;
    }

    v38 = v37;
    initialKeyState = [upCopy initialKeyState];
    v40 = [upCopy key];
    selectedVariantIndex = [v40 selectedVariantIndex];

    v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
    if (initialKeyState != 16)
    {
      if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 &= 0xFFFFFFFFFFFFFFF5;
      }

      else if ((v37 & 0x2000000000) != 0 && !self->_selectedVariantIndexChanged)
      {
        v37 &= 0xFFFFFFFFFFFFFFF5;
      }

      goto LABEL_54;
    }

    if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 &= ~2uLL;
    }

    touch2 = [upCopy touch];
    [touch2 locationInView:self];
    v45 = v44;
    v47 = v46;

    v48 = [upCopy key];
    [v48 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [upCopy key];
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
          keyplane = [upCopy keyplane];
          keyplane = self->_keyplane;

          if (keyplane == keyplane)
          {
            v80 = [upCopy key];
            interactionType = [v80 interactionType];

            if (interactionType == 44)
            {
              v82 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              responder = [v82 responder];
              inputAssistantItem = [responder inputAssistantItem];
              [inputAssistantItem _dictationReplacementAction];
              didLongPress = v267 = didLongPress;

              sender = [didLongPress sender];
              [didLongPress performWithSender:sender target:0];

              LODWORD(didLongPress) = v267;
            }

            if (!didLongPress)
            {
              goto LABEL_78;
            }

            v86 = [upCopy key];
            if ([(UIKeyboardLayoutStar *)self shouldShowInternationalMenuForKey:v86])
            {

              goto LABEL_57;
            }

            v89 = [upCopy key];
            interactionType2 = [v89 interactionType];

            if (interactionType2 != 5)
            {
LABEL_78:
              useCrescendoLayout = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
              v92 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
              if (useCrescendoLayout)
              {
                v92 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
              }

              v93 = *(&self->super.super.super.super.isa + *v92);
              v94 = [upCopy key];
              [v93 addKeyToDelayedDeactivationSet:v94];

              if ([(UIKBScreenTraits *)self->super._screenTraits idiom]== 1 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 24 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 25 || [(UIKBScreenTraits *)self->super._screenTraits idiom]== 26)
              {
                if (v263 != 16)
                {
                  goto LABEL_57;
                }

                goto LABEL_85;
              }

              idiom = [(UIKBScreenTraits *)self->super._screenTraits idiom];
              if (v263 == 16 && idiom == 23)
              {
LABEL_85:
                [(UIKeyboardLayoutStar *)self setKeyboardDim:0 amount:0.0 withDuration:0.3];
              }
            }
          }
        }

LABEL_57:
        v74 = [upCopy key];
        if ([v74 interactionType] == 13)
        {
          returnKeyEnabled = [v11 returnKeyEnabled];

          if ((returnKeyEnabled & 1) == 0)
          {
            v23 = v273;
            [v11 skipHitTestForTouchEvent:v273];
            [v11 clearLongPressTimer];
            [upCopy setDragged:0];
            [(UIKeyboardLayoutStar *)self setActiveKey:0];
            [(UIKeyboardLayoutStar *)self clearInfoForTouch:touch];
            [contextCopy returnExecutionToParent];
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
          if (([upCopy maySuppressUpAction] & 1) == 0)
          {
            [v11 skipHitTestForTouchEvent:v273];

            v77 = [upCopy key];
            interactionType3 = [v77 interactionType];

            v76 = 0;
            if (interactionType3 > 14)
            {
              if (interactionType3 == 15)
              {
                v79 = &OBJC_IVAR___UIKeyboardLayoutStar__spaceTarget;
                goto LABEL_88;
              }

              if (interactionType3 == 42)
              {
                v87 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                systemInputAssistantViewController = [v87 systemInputAssistantViewController];
                [systemInputAssistantViewController showEmojiSearch:1];

LABEL_95:
                v76 = 0;
              }
            }

            else
            {
              if (interactionType3 == 4)
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

              if (interactionType3 == 13)
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
        v98 = [upCopy key];
        interactionType4 = [v98 interactionType];

        if (interactionType4 != 16)
        {
          goto LABEL_126;
        }

        flickDirection = 1096;
        if (self->_flickPopupView)
        {
          v101 = [upCopy key];
          state = [v101 state];

          if (state == 16)
          {
            [(UIView *)self->_flickPopupView removeFromSuperview];
            flickPopupView = self->_flickPopupView;
            self->_flickPopupView = 0;
          }
        }

        v104 = [upCopy key];
        if (([v104 state] & 0x10) != 0)
        {
        }

        else
        {
          v105 = [upCopy key];
          flickDirection = [v105 flickDirection];

          if (flickDirection != -1)
          {
            v106 = [upCopy key];
            v107 = [(UIKeyboardLayoutStar *)self isMultitapKey:v106];

            if (v107)
            {
              v108 = didLongPress;
              multitapCompleteKeys = [(UIKeyboardLayoutStar *)self multitapCompleteKeys];
              if (![multitapCompleteKeys count])
              {
                v110 = [upCopy key];
                if (![v110 forceMultitap])
                {
                  supportsMultitap = [(UIKBTree *)self->_keyplane supportsMultitap];

                  if (!supportsMultitap)
                  {
                    v114 = 0;
                    v113 = 0;
                    self->_multitapCount = 0;
LABEL_232:
                    v221 = [upCopy key];
                    multitapKey = self->_multitapKey;
                    self->_multitapKey = v221;

                    if (v114)
                    {
                      v223 = [upCopy key];
                      [(UIKeyboardLayoutStar *)self setState:8 forKey:v223];

                      [(UIKeyboardLayoutStar *)self touchMultitapTimer];
                    }

                    goto LABEL_234;
                  }

LABEL_110:
                  v111 = self->_multitapKey;
                  v112 = [upCopy key];

                  if (v111 == v112)
                  {
                    fullRepresentedString = [(UIKBTree *)self->_multitapKey fullRepresentedString];
                    [fullRepresentedString rangeOfComposedCharacterSequenceAtIndex:self->_multitapCount];
                    v192 = v191;

                    v193 = v192 + self->_multitapCount;
                    fullRepresentedString2 = [(UIKBTree *)self->_multitapKey fullRepresentedString];
                    self->_multitapCount = v193 % [fullRepresentedString2 length];

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
        v115 = [upCopy key];
        interactionType5 = [v115 interactionType];
        if (interactionType5 == 9)
        {
          flickDirection = [upCopy key];
          if ([flickDirection displayType] == 13)
          {

            v113 = 0;
LABEL_234:
            LODWORD(didLongPress) = v108;
LABEL_127:
            v122 = [upCopy key];
            v268 = didLongPress;
            if ([v122 interactionType] == 41)
            {
            }

            else
            {
              v123 = [upCopy key];
              interactionType6 = [v123 interactionType];

              if (interactionType6 != 21)
              {
                v269 = 0;
                goto LABEL_147;
              }
            }

            v125 = +[UIKeyboardImpl activeInstance];
            inputDelegate = [v125 inputDelegate];
            _selectedRangeWithinMarkedText = [inputDelegate _selectedRangeWithinMarkedText];

            v128 = +[UIKeyboardImpl activeInstance];
            markedText = [v128 markedText];

            if (_selectedRangeWithinMarkedText && _selectedRangeWithinMarkedText != 0x7FFFFFFFFFFFFFFFLL && _selectedRangeWithinMarkedText <= [markedText length])
            {
              v146 = [markedText substringToIndex:_selectedRangeWithinMarkedText];
              _lastGrapheme = [v146 _lastGrapheme];
            }

            else
            {
              _lastGrapheme = [markedText _lastGrapheme];
            }

            if ([_lastGrapheme length] && (-[UIKeyboardLayoutStar keyWithRepresentedString:](self, "keyWithRepresentedString:", _lastGrapheme), v131 = objc_claimAutoreleasedReturnValue(), v131, v131))
            {
              fullRepresentedString3 = [v131 fullRepresentedString];
              v133 = [fullRepresentedString3 rangeOfString:_lastGrapheme];
              v135 = v134;
              if ([fullRepresentedString3 length])
              {
                [upCopy key];
                v136 = v261 = v113;
                interactionType7 = [v136 interactionType];

                v138 = [fullRepresentedString3 length];
                v139 = [fullRepresentedString3 length];
                if (interactionType7 == 41)
                {
                  v140 = v135;
                }

                else
                {
                  v140 = -v135;
                }

                v141 = v133 + v138;
                v113 = v261;
                v139 = [fullRepresentedString3 rangeOfComposedCharacterSequenceAtIndex:(v140 + v141) % v139];
                v144 = [fullRepresentedString3 substringWithRange:{v139, v143}];
                v145 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v144 forKey:v131 touchInfo:upCopy inputFlags:6];
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
            if (v264 & 2) == 0 || ([upCopy maySuppressUpAction])
            {
LABEL_211:
              if ((v147 & 0x20000000) != 0)
              {
                v202 = [upCopy key];
                representedString = [v202 representedString];
                [(UIKeyboardLayoutStar *)self switchKeyplane:representedString];
              }

              v204 = +[UIKBAnalyticsDispatcher sharedInstance];
              [v204 setAnalyticsShouldCallDidKeyPress:1];

              v205 = [upCopy key];
              if ([v205 interactionType] == 4)
              {
                v206 = +[UIKBAnalyticsDispatcher sharedInstance];
                analyticsShouldCallDidKeyPressForDeleteKey = [v206 analyticsShouldCallDidKeyPressForDeleteKey];

                if (analyticsShouldCallDidKeyPressForDeleteKey)
                {
LABEL_217:
                  inputSource = [v271 inputSource];
                  v209 = v269;
                  if (v269)
                  {
                    [v269 setSource:inputSource];
                    _modifiedInput = [v269 _modifiedInput];
                    [(UIKeyboardLayoutStar *)self incrementPunctuationIfNeeded:_modifiedInput];

                    [v11 skipHitTestForTouchEvent:v274 delayed:1];
                    v276[0] = MEMORY[0x1E69E9820];
                    v276[1] = 3221225472;
                    v276[2] = __85__UIKeyboardLayoutStar_completeRetestForTouchUp_timestamp_interval_executionContext___block_invoke;
                    v276[3] = &unk_1E7114A88;
                    v280 = inputSource;
                    v277 = upCopy;
                    selfCopy = self;
                    v279 = v271;
                    v281 = v147;
                    timestampCopy = timestamp;
                    intervalCopy = interval;
                    v285 = v268;
                    v284 = prevUpActions;
                    v211 = [contextCopy childWithContinuation:v276];
                    [v11 _handleKeyEvent:v269 executionContext:v211];

                    delegate = [(UIKeyboardLayoutStar *)self delegate];
                    v213 = objc_opt_respondsToSelector();

                    touch = v271;
                    if (v213)
                    {
                      delegate2 = [(UIKeyboardLayoutStar *)self delegate];
                      [delegate2 handleKeyUIEvent:v269 dismiss:1];
                    }

                    v23 = v274;
                  }

                  else
                  {
                    if ([upCopy continuousPathState] != 5)
                    {
                      v215 = +[UIKBAnalyticsDispatcher sharedInstance];
                      analyticsShouldCallDidKeyPress = [v215 analyticsShouldCallDidKeyPress];

                      if (analyticsShouldCallDidKeyPress)
                      {
                        v217 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
                        _textInputSessionAnalytics = [v217 _textInputSessionAnalytics];
                        v219 = [upCopy key];
                        [_textInputSessionAnalytics didKeyPress:v219 inputSource:inputSource];
                      }
                    }

                    v23 = v274;
                    [v11 skipHitTestForTouchEvent:v274];
                    [(UIKeyboardLayoutStar *)self completeSendStringActionForTouchUp:upCopy withActions:v147 timestamp:v268 interval:prevUpActions didLongPress:contextCopy prevActions:timestamp executionContext:interval];
                    touch = v271;
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
            v148 = [upCopy key];
            representedString2 = [v148 representedString];

            if (v263 != 16)
            {
              v150 = [upCopy key];
              displayTypeHint = [v150 displayTypeHint];

              if (displayTypeHint != 10)
              {
                v160 = 0;
                v161 = 0;
                goto LABEL_173;
              }
            }

            v152 = [upCopy key];
            selectedVariantIndex2 = [v152 selectedVariantIndex];

            if ((selectedVariantIndex2 & 0x8000000000000000) != 0)
            {
              v155 = v11;
              representedString3 = 0;
              v159 = 0;
              v158 = 0;
            }

            else
            {
              v154 = [subtrees count];
              if (v263 == 16 && selectedVariantIndex2 < v154)
              {
                v155 = v11;
                v156 = [subtrees objectAtIndex:selectedVariantIndex2];
                representedString3 = [(__CFString *)v156 representedString];
                v158 = 0;
                v159 = 1;
              }

              else
              {
                v162 = [upCopy key];
                secondaryRepresentedStrings = [v162 secondaryRepresentedStrings];
                v164 = [secondaryRepresentedStrings count];

                if (selectedVariantIndex2 >= v164)
                {
                  v159 = 0;
                  if (!self->_hasPeekedGestureKey)
                  {
                    v158 = 0;
                    goto LABEL_163;
                  }

                  v155 = v11;
                  representedString3 = 0;
                  v158 = 0;
                  goto LABEL_161;
                }

                v155 = v11;
                v165 = [upCopy key];
                displayTypeHint2 = [v165 displayTypeHint];
                v158 = displayTypeHint2 == 10;
                v159 = displayTypeHint2 != 10;

                v167 = [upCopy key];
                secondaryRepresentedStrings2 = [v167 secondaryRepresentedStrings];
                representedString3 = [secondaryRepresentedStrings2 objectAtIndex:selectedVariantIndex2];

                v169 = [upCopy key];
                gestureKey = [v169 gestureKey];

                if (!gestureKey)
                {
LABEL_162:
                  representedString2 = representedString3;
                  v11 = v155;
LABEL_163:
                  v171 = [upCopy key];
                  displayTypeHint3 = [v171 displayTypeHint];

                  if (displayTypeHint3 == 10)
                  {
                    if (selectedVariantIndex2 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      self->_lastInputIsGestureKey = 1;
                    }
                  }

                  else
                  {
                    v173 = [upCopy key];
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
                  preferencesActions = [v174 preferencesActions];
                  if ([preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"] && representedString2 && !self->_lastInputIsGestureKey)
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

                  v176 = [upCopy key];
                  displayTypeHint4 = [v176 displayTypeHint];

                  v147 = v264;
                  if (displayTypeHint4 == 10)
                  {
                    v178 = [upCopy key];
                    [v178 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
                  }

                  v179 = [upCopy key];
                  variantType = [v179 variantType];

                  if (variantType == 9)
                  {

                    v181 = [upCopy key];
                    selectedVariantIndex3 = [v181 selectedVariantIndex];

                    if (selectedVariantIndex3 == 2)
                    {
                      if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleUnderline])
                      {
                        goto LABEL_207;
                      }

                      delegateAsResponder = [v11 delegateAsResponder];
                      _responderForEditing = [delegateAsResponder _responderForEditing];
                      [_responderForEditing toggleUnderline:0];
                      goto LABEL_200;
                    }

                    if (selectedVariantIndex3 == 1)
                    {
                      if (![(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleItalics])
                      {
                        goto LABEL_207;
                      }

                      delegateAsResponder = [v11 delegateAsResponder];
                      _responderForEditing = [delegateAsResponder _responderForEditing];
                      [_responderForEditing toggleItalics:0];
                      goto LABEL_200;
                    }

                    if (!selectedVariantIndex3 && [(UIKBTextEditingTraits *)self->super._textEditingTraits canToggleBoldface])
                    {
                      delegateAsResponder = [v11 delegateAsResponder];
                      _responderForEditing = [delegateAsResponder _responderForEditing];
                      [_responderForEditing toggleBoldface:0];
LABEL_200:

LABEL_201:
                      goto LABEL_207;
                    }

                    goto LABEL_207;
                  }

                  if (representedString2 == @"UIButtonBarKeyboardCut.png")
                  {

                    [v11 cutOperation];
                    goto LABEL_207;
                  }

                  if (representedString2 == @"UIButtonBarKeyboardCopy.png")
                  {

                    [v11 copyOperation];
                    goto LABEL_207;
                  }

                  if (representedString2 == @"UIButtonBarKeyboardPaste.png")
                  {

                    [v11 pasteOperation];
                    goto LABEL_207;
                  }

                  if (representedString2 == @"UIButtonBarKeyboardUndo.png" || -[__CFString isEqualToString:](representedString2, "isEqualToString:", @"undo") && ([upCopy key], v185 = objc_claimAutoreleasedReturnValue(), v186 = objc_msgSend(v185, "displayTypeHint"), v185, v186 == 10))
                  {

                    delegateAsResponder2 = [v11 delegateAsResponder];
                    _responderForEditing2 = [delegateAsResponder2 _responderForEditing];
                    delegateAsResponder = [_responderForEditing2 undoManager];

                    if ([delegateAsResponder canUndo])
                    {
                      [delegateAsResponder undo];
                    }

                    goto LABEL_201;
                  }

                  if ([(__CFString *)representedString2 isEqualToString:@"redo"])
                  {
                    v224 = [upCopy key];
                    displayTypeHint5 = [v224 displayTypeHint];

                    if (displayTypeHint5 == 10)
                    {

                      delegateAsResponder3 = [v11 delegateAsResponder];
                      _responderForEditing3 = [delegateAsResponder3 _responderForEditing];
                      delegateAsResponder = [_responderForEditing3 undoManager];

                      if ([delegateAsResponder canRedo])
                      {
                        [delegateAsResponder redo];
                      }

                      goto LABEL_201;
                    }
                  }

                  if (!representedString2)
                  {
LABEL_207:
                    representedString2 = [upCopy key];
                    displayImage = [(__CFString *)representedString2 displayImage];
                    if (displayImage)
                    {
                      v196 = displayImage;
                      v197 = [upCopy key];
                      parentKey = [v197 parentKey];

                      if (!parentKey)
                      {
                        goto LABEL_211;
                      }

                      v199 = [upCopy key];
                      parentKey2 = [v199 parentKey];
                      representedString2 = [(UIKeyboardLayoutStar *)self viewForKey:parentKey2];

                      v201 = [upCopy key];
                      [(__CFString *)representedString2 didInputSubTree:v201];
                    }

                    goto LABEL_210;
                  }

                  v228 = [upCopy key];
                  interactionType8 = [v228 interactionType];

                  if (interactionType8 == 16)
                  {
                    if (![(UIKeyboardLayoutStar *)self shouldSendStringForFlick:upCopy])
                    {
                      goto LABEL_252;
                    }

                    v230 = [upCopy key];
                    v231 = [upCopy key];
                    v232 = -[UIKeyboardLayoutStar flickStringForInputKey:direction:](self, "flickStringForInputKey:direction:", v230, [v231 flickDirection]);

                    if (![v232 length])
                    {
LABEL_251:

                      v147 = v264;
LABEL_252:
                      if (v269)
                      {
                        v237 = [upCopy key];
                        parentKey3 = [v237 parentKey];

                        if (parentKey3)
                        {
                          v239 = [upCopy key];
                          parentKey4 = [v239 parentKey];
                          v241 = [(UIKeyboardLayoutStar *)self viewForKey:parentKey4];

                          v242 = [upCopy key];
                          v243 = [v241 didInputSubTree:v242];

                          if (v243 == 1)
                          {
                            useCrescendoLayout2 = [(UIKeyboardLayoutStar *)self useCrescendoLayout];
                            v245 = &OBJC_IVAR___UIKeyboardLayoutStar__keyplaneView;
                            if (useCrescendoLayout2)
                            {
                              v245 = &OBJC_IVAR___UIKeyboardLayoutStar__liveKeyplaneView;
                            }

                            v246 = *(&self->super.super.super.super.isa + *v245);
                            v247 = [upCopy key];
                            [v246 addKeyToDelayedDeactivationSet:v247];

                            v248 = [upCopy key];
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
                      v249 = [upCopy key];
                      if ([v249 flickDirection] <= -2)
                      {
                        v233 = 2;
                      }

                      else
                      {
                        v233 = 66;
                      }
                    }

                    v250 = [upCopy key];
                    v160 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:v232 forKey:v250 touchInfo:upCopy inputFlags:v233];

                    if (!TIStatisticShouldSample() || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
                    {
LABEL_250:
                      v269 = v160;
                      goto LABEL_251;
                    }

                    v251 = UIKeyboardGetCurrentInputMode();
                    v236 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v251);

                    v252 = [upCopy key];
                    flickDirection2 = [v252 flickDirection];

                    if ((flickDirection2 & 0x8000000000000000) == 0)
                    {
                      sharedPunctuationCharacterSet = [objc_opt_class() sharedPunctuationCharacterSet];
                      [v232 rangeOfCharacterFromSet:sharedPunctuationCharacterSet];
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
                      componentName = [(UIKBTree *)self->_keyplane componentName];
                      v260 = TIStatisticGetKeyForTenKeyKeyTappedInKeyplane();
                      TIStatisticScalarIncrement();
                    }
                  }

                  else
                  {
                    v232 = [upCopy key];
                    v160 = [(UIKeyboardLayoutStar *)self createKeyEventForStringAction:representedString2 forKey:v232 touchInfo:upCopy inputFlags:v161 | v160];
                    v236 = v269;
                  }

                  goto LABEL_250;
                }

                v156 = [upCopy key];
                representedString2 = [(__CFString *)v156 gestureKey];
                v264 = [(UIKeyboardLayoutStar *)self upActionFlagsForKey:representedString2];
              }

              representedString2 = v156;
            }

LABEL_161:

            goto LABEL_162;
          }
        }

        v117 = [upCopy key];
        interactionType9 = [v117 interactionType];

        if (interactionType5 == 9)
        {
        }

        LODWORD(didLongPress) = v108;
        if (interactionType9 != 5)
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
          v121 = [upCopy key];
          [v120 addKeyToDelayedDeactivationSet:v121];
        }

        goto LABEL_126;
      }
    }

    else
    {
    }

    v59 = [upCopy key];
    if ([v59 variantType] != 10)
    {
      v60 = [upCopy key];
      if ([v60 variantType] != 12)
      {
        v266 = didLongPress;
        v70 = [upCopy key];
        variantType2 = [v70 variantType];

        if (variantType2 != 13)
        {
          touch = v271;
          LODWORD(didLongPress) = v266;
          goto LABEL_50;
        }

        v61 = selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL;
        touch = v271;
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
          keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
          v63 = [upCopy key];
          if (![keyplaneFactory popupKeyUsesCustomKeyContentView:v63])
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
          v67 = [upCopy key];
          v68 = [(UIKBKeyplaneView *)keyplaneView retestSelectedVariantIndexForKey:v67 atPoint:3 phase:v45, v47];
          v42 = &OBJC_IVAR___UIKeyboardLayoutStar__flickPopupView;
          v69 = v68 || self->_selectedVariantIndexChanged;
          self->_selectedVariantIndexChanged = v69;
        }

        else
        {
          v67 = [upCopy key];
          [(UIKeyboardLayoutStar *)self presentModalDisplayForKey:v67];
        }

        goto LABEL_54;
      }
    }

    v37 = v38;
    v61 = selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_34;
  }

  [v11 clearLongPressTimer];
  [upCopy setDragged:0];
  [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
  [(UIKeyboardLayoutStar *)self clearInfoForTouch:touch];
  [contextCopy returnExecutionToParent];
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

- (id)_analyticsMetadataForTouch:(id)touch keyPressed:(id)pressed
{
  v37[9] = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  [touch locationInView:self];
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
  [pressedCopy frame];
  v18 = [v16 numberWithDouble:v17];
  v37[2] = v18;
  v36[3] = @"KeyWidth";
  v19 = MEMORY[0x1E696AD98];
  [pressedCopy frame];
  v21 = [v19 numberWithDouble:v20];
  v37[3] = v21;
  v36[4] = @"KeyCoordsX";
  v22 = MEMORY[0x1E696AD98];
  [pressedCopy frame];
  v23 = [v22 numberWithDouble:?];
  v37[4] = v23;
  v36[5] = @"KeyCoordsY";
  v24 = MEMORY[0x1E696AD98];
  [pressedCopy frame];
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
  screen = [(UIKBScreenTraits *)self->super._screenTraits screen];
  [screen scale];
  v32 = [v30 numberWithDouble:?];
  v37[8] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:9];

  return v33;
}

- (void)presentModalDisplayForKey:(id)key
{
  keyCopy = key;
  parentKey = [keyCopy parentKey];
  v6 = [(UIKeyboardLayoutStar *)self viewForKey:parentKey];

  v7 = [UIView alloc];
  [(UIView *)self bounds];
  v8 = [(UIView *)v7 initWithFrame:?];
  [(UIKeyboardLayoutStar *)self setModalDisplayView:v8];

  modalDisplayView = [(UIKeyboardLayoutStar *)self modalDisplayView];
  [(UIView *)self addSubview:modalDisplayView];

  [(TUIKeyplaneView *)self->_liveKeyplaneView setHidden:1];
  [(UIView *)self->_keyplaneView setHidden:1];
  v10 = [(UIKeyboardLayoutStar *)self viewForKey:keyCopy];

  if (v10)
  {
    modalDisplayView2 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__UIKeyboardLayoutStar_presentModalDisplayForKey___block_invoke;
    v16 = &unk_1E70F35B8;
    selfCopy = self;
    v12 = v10;
    v18 = v12;
    [v6 willDisplayModalActionView:modalDisplayView2 withSubTreeKeyView:v12 completion:&v13];

    [v12 setHidden:{1, v13, v14, v15, v16, selfCopy}];
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

- (BOOL)shouldYieldToControlCenterForFlickWithInitialPoint:(CGPoint)point finalPoint:(CGPoint)finalPoint
{
  y = finalPoint.y;
  v5 = point.y;
  v7 = [UIPeripheralHost sharedInstance:point.x];
  _isCoordinatingWithSystemGestures = [v7 _isCoordinatingWithSystemGestures];

  if (!_isCoordinatingWithSystemGestures)
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

- (BOOL)shouldSendStringForFlick:(id)flick
{
  flickCopy = flick;
  [flickCopy initialPoint];
  v6 = v5;
  v8 = v7;
  touch = [flickCopy touch];
  [touch locationInView:self];
  v11 = v10;
  v13 = v12;

  v14 = [flickCopy key];

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

- (void)completeSendStringActionForTouchUp:(id)up withActions:(unint64_t)actions timestamp:(double)timestamp interval:(double)interval didLongPress:(BOOL)press prevActions:(unint64_t)prevActions executionContext:(id)context
{
  upCopy = up;
  contextCopy = context;
  v18 = +[UIKeyboardImpl activeInstance];
  v19 = "_UIMonochromaticTreatment";
  if ([upCopy dragged])
  {
    preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (preTouchKeyplaneName)
    {
      goto LABEL_6;
    }
  }

  if ((actions & 0x20) != 0)
  {
    alternateKeyplaneName = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    [(UIKeyboardLayoutStar *)self setKeyplaneName:alternateKeyplaneName];

    self->_preferredTrackingChangeCount = [v18 changeCount];
  }

  if ((actions & 0x1000) == 0)
  {
LABEL_6:
    v22 = 0;
    v23 = 0;
    goto LABEL_20;
  }

  v24 = +[UIInputSwitcherView sharedInstance];
  v25 = [upCopy key];
  v26 = [v25 displayType] == 21 && -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType") == 122 && -[UITextInputTraits returnKeyType](self->super._inputTraits, "returnKeyType") == 9;
  v57 = v25;
  v59 = v24;
  if ([(UIKeyboardLayoutStar *)self stateForKey:v25]!= 4 || [(NSMutableDictionary *)self->_extendedTouchInfoMap count]!= 1)
  {
    v23 = 0;
    self->_prevTouchUpTime = timestamp - interval;
    goto LABEL_17;
  }

  if ([v24 mode] != 1)
  {
    v39 = [upCopy key];
    selfCopy = self;
    if ([(UIKeyboardLayoutStar *)self isKeyScriptSwitchKey:v39]|| [(UIKeyboardLayoutStar *)self showsDedicatedEmojiKeyAlongsideGlobeButton])
    {
    }

    else
    {
      v45 = [upCopy key];
      selfCopy2 = self;
      v47 = v45;
      v54 = [(UIKeyboardLayoutStar *)selfCopy2 isLongPressedKey:v45];

      if (v54)
      {
        v23 = 0;
        self = selfCopy;
        goto LABEL_17;
      }
    }

    HIDWORD(v52) = v26;
    v40 = +[UIKeyboardInputModeController sharedInputModeController];
    v41 = [upCopy key];
    representedString = [v41 representedString];
    v53 = [v40 identifierIsValidSystemInputMode:representedString];

    if (v53)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_2;
      v80[3] = &unk_1E70FD1B8;
      v81 = upCopy;
      v82 = v18;
      v23 = _Block_copy(v80);

      self = selfCopy;
      goto LABEL_17;
    }

    v43 = [upCopy key];
    representedString2 = [v43 representedString];
    if ([representedString2 isEqualToString:@"ASCIICapable"])
    {
    }

    else
    {
      v48 = [upCopy key];
      [v48 representedString];
      v49 = v55 = v43;
      LODWORD(v52) = [v49 isEqualToString:@"NonASCII"];

      if (!v52)
      {
        self = selfCopy;
        if (__PAIR64__(HIDWORD(v52), 0) == [(UIKeyboardLayoutStar *)selfCopy globeKeyDisplaysAsEmojiKey])
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_6;
          v69[3] = &unk_1E70FD1B8;
          v70 = upCopy;
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
          v73 = upCopy;
          v75 = BYTE4(v52);
          v74 = v18;
          v23 = _Block_copy(v72);

          v27 = v73;
        }

        goto LABEL_15;
      }
    }

    self = selfCopy;
    inputModeToMergeCapsLockKey = [(UIKeyboardLayoutStar *)selfCopy inputModeToMergeCapsLockKey];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke_3;
    v76[3] = &unk_1E70FD208;
    v77 = upCopy;
    v78 = v18;
    v79 = inputModeToMergeCapsLockKey;
    v51 = inputModeToMergeCapsLockKey;
    v23 = _Block_copy(v76);

    goto LABEL_17;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__UIKeyboardLayoutStar_completeSendStringActionForTouchUp_withActions_timestamp_interval_didLongPress_prevActions_executionContext___block_invoke;
  aBlock[3] = &unk_1E70FD208;
  v84 = upCopy;
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
  v61 = upCopy;
  v62 = v34;
  actionsCopy = actions;
  timestampCopy = timestamp;
  intervalCopy = interval;
  pressCopy = press;
  prevActionsCopy = prevActions;
  v35 = upCopy;
  v36 = _Block_copy(v60);
  v37 = v36;
  if (v23)
  {
    v38 = [contextCopy childWithContinuation:v36];
    v23[2](v23, v38);
  }

  else
  {
    (*(v36 + 2))(v36, contextCopy);
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

- (void)continueFromInternationalActionForTouchUp:(id)up withActions:(unint64_t)actions timestamp:(double)timestamp interval:(double)interval didLongPress:(BOOL)press prevActions:(unint64_t)prevActions executionContext:(id)context
{
  prevActionsCopy = prevActions;
  pressCopy = press;
  upCopy = up;
  contextCopy = context;
  v18 = +[UIKeyboardImpl activeInstance];
  touch = [upCopy touch];
  if ([upCopy dragged])
  {
    preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (preTouchKeyplaneName)
    {
      goto LABEL_25;
    }
  }

  if ((actions & 0x2000000) != 0 || (v21 = [(UIKeyboardLayoutStar *)self isHandwritingPlane], (actions & 0x80) != 0) && v21)
  {
    v22 = +[UIKeyboardSplitControlMenu activeInstance];
    preTouchKeyplaneName2 = v22;
    if (interval > 0.5 || (prevActionsCopy & 0x2000000) != 0)
    {
      if (pressCopy && [v22 isVisible])
      {
        [touch locationInView:preTouchKeyplaneName2];
        [preTouchKeyplaneName2 selectItemAtPoint:?];
      }

      else
      {
        isVisible = [preTouchKeyplaneName2 isVisible];
        if ((actions & 0x2000000) != 0 && (isVisible & 1) == 0 && [(NSMutableDictionary *)self->_extendedTouchInfoMap count]== 1)
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
      self->_prevTouchUpTime = timestamp - interval;
    }

    [preTouchKeyplaneName2 hide];
    goto LABEL_10;
  }

  preTouchKeyplaneName2 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
  if (preTouchKeyplaneName2)
  {
    preTouchKeyplaneName3 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    v35 = [preTouchKeyplaneName3 isEqualToString:self->_keyplaneName];
    if ((actions & 0x800000000) == 0 || (v35 & 1) == 0)
    {

LABEL_10:
      goto LABEL_11;
    }
  }

  else if ((actions & 0x800000000) == 0)
  {
    goto LABEL_11;
  }

  keyboardType = [(UITextInputTraits *)self->super._inputTraits keyboardType];
  if (preTouchKeyplaneName2)
  {
  }

  if (keyboardType == 126)
  {
    [v18 lookUpResponderChainForCustomInputView];
  }

LABEL_11:
  if ((actions & 0x8000000) == 0 || interval <= 0.5 && (prevActionsCopy & 0x8000000) == 0 || ([upCopy key], v24 = objc_claimAutoreleasedReturnValue(), v25 = -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", v24), v24, v25 != 4))
  {
LABEL_18:
    if ((actions & 0x10000000) == 0)
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
  firstResponder = [v51 firstResponder];
  preTouchKeyplaneName3 = [firstResponder undoManager];
  [preTouchKeyplaneName3 undo];

  +[_UIKeyboardUsageTracking undoKeyCount];
  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"SWKeyboard"];
  [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
  if ((actions & 0x10000000) == 0)
  {
LABEL_19:
    if ((actions & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_79;
  }

LABEL_78:
  v53 = +[UIWindow _applicationKeyWindow];
  firstResponder2 = [v53 firstResponder];
  preTouchKeyplaneName3 = [firstResponder2 undoManager];
  [preTouchKeyplaneName3 redo];

  +[_UIKeyboardUsageTracking redoKeyCount];
  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Redo" trigger:@"SWKeyboard"];
  [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
  if ((actions & 0x2000) == 0)
  {
LABEL_20:
    if ((actions & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v18 revealHiddenCandidates];
  if ((actions & 0x4000) == 0)
  {
LABEL_21:
    if ((actions & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v18 showNextCandidates];
  if ((actions & 0x200000) == 0)
  {
LABEL_22:
    if ((actions & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_82:
    [v18 acceptAutocorrectionAndEndComposition];
    if ((actions & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_81:
  [v18 showPreviousCandidate];
  if ((actions & 0x1000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_23:
  if ((actions & 0x4000000) != 0)
  {
LABEL_24:
    v26 = [upCopy key];
    representedString = [v26 representedString];
    [(UIKeyboardLayoutStar *)self setLayoutTag:representedString];

    [(UIKeyboardLayoutStar *)self updateKeyCentroids];
  }

LABEL_25:
  if (actions & 0x100) == 0 || -[UIKBTree supportsType:](self->_keyplane, "supportsType:", -[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")) || ([upCopy key], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "representedString"), v29 = objc_claimAutoreleasedReturnValue(), preTouchKeyplaneName3 = objc_msgSend(v29, "isEqualToString:", @"-"), v29, v28, (preTouchKeyplaneName3))
  {
    v30 = 1;
    if ((actions & 0x400) == 0)
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

  v48 = [upCopy key];
  representedString2 = [v48 representedString];
  preTouchKeyplaneName3 = [representedString2 _isSpaceOrReturn];

  if (preTouchKeyplaneName3)
  {
    ++self->_preferredTrackingChangeCount;
  }

  if ([v18 changeCount] > self->_preferredTrackingChangeCount)
  {
    alternateKeyplaneName = [(UIKBTree *)self->_keyplane alternateKeyplaneName];
    [(UIKeyboardLayoutStar *)self setKeyplaneName:alternateKeyplaneName];

    [(UIKeyboardLayoutStar *)self setShift:[(UIKBTree *)self->_keyplane isShiftKeyplane]];
  }

  v30 = 0;
  if ((actions & 0x400) != 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  if ((actions & 0x400000) != 0)
  {
    [v18 toggleShift];
    [v18 setShiftPreventAutoshift:1];
    -[UIKeyboardLayoutStar setShift:](self, "setShift:", [v18 isShifted]);
    [(UIKeyboardLayoutStar *)self setAutoshift:0];
  }

  else if ((actions & 0x10) != 0)
  {
    [(UIKeyboardLayoutStar *)self upActionShift];
  }

  if (self->_revertKeyplaneAfterTouch)
  {
    preTouchKeyplaneName4 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if (preTouchKeyplaneName4)
    {
      v32 = preTouchKeyplaneName4;
      v33 = [upCopy key];
      if ([v33 modifiesKeyplane])
      {
      }

      else
      {
        preTouchKeyplaneName3 = [upCopy slidOffKey];

        if (!preTouchKeyplaneName3)
        {
          goto LABEL_62;
        }
      }

      preTouchKeyplaneName5 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:preTouchKeyplaneName5];

      isShiftKeyplane = [(UIKBTree *)self->_keyplane isShiftKeyplane];
      if (isShiftKeyplane != [v18 isShifted] || self->_shift != isShiftKeyplane)
      {
        [v18 setShift:isShiftKeyplane];
        [v18 setShiftPreventAutoshift:1];
        [(UIKeyboardLayoutStar *)self setShift:isShiftKeyplane];
      }

      v38 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];

      if (v38)
      {
        name = [(UIKBTree *)self->_keyplane name];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:name];
      }

      self->_revertKeyplaneAfterTouch = 0;
    }
  }

LABEL_62:
  v40 = [upCopy key];
  if ((actions & 0x40000000) != 0)
  {
    preTouchKeyplaneName3 = 0x1E70E9000uLL;
    if (+[UIDictationController viewMode]== 1)
    {
      if (interval > 3.0 && pressCopy)
      {
        v41 = +[UIKeyboardDictationMenu activeInstance];
        [v41 hide];
LABEL_90:
      }
    }

    else
    {
      v42 = +[UIInputSwitcherView activeInstance];
      isVisible2 = [v42 isVisible];

      if ((isVisible2 & 1) == 0)
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
        isDictationPopoverPresented = [v46 isDictationPopoverPresented];

        if (isDictationPopoverPresented)
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

  if ((actions & 0x200) != 0)
  {
    [(UIKeyboardLayoutStar *)self multitapExpired];
  }

  [(UIKeyboardLayoutStar *)self handleKeyboardMenusForTouch:upCopy];
  if ((actions & 0x1000000000) != 0)
  {
    [v18 generateCandidatesWithOptions:4];
  }

  [v18 clearLongPressTimer];
  [upCopy setInitialDragPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [upCopy setDragged:0];
  if (!self->_revertKeyplaneAfterTouch)
  {
    [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:0];
  }

  activeKey = [(UIKeyboardLayoutStar *)self activeKey];
  parentKey = [activeKey parentKey];
  if (parentKey || (-[UIKeyboardLayoutStar activeKey](self, "activeKey"), preTouchKeyplaneName3 = objc_claimAutoreleasedReturnValue(), ([preTouchKeyplaneName3 hasSemiStickyVariant] & 1) != 0))
  {
    activeKey2 = [(UIKeyboardLayoutStar *)self activeKey];
    parentKey2 = [activeKey2 parentKey];
    v62 = (parentKey2 != 0) & (actions >> 3);

    if (parentKey)
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
  [(UIKeyboardLayoutStar *)self clearInfoForTouch:touch];
  [v18 deleteWordLastDelete];
  if (v63 > 0.0 && ([upCopy key], v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "interactionType"), v64, v65 == 4))
  {
    [v18 setDeleteWordLastDelete:0.0];
    [v18 handleDeleteWithExecutionContext:contextCopy];
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)touchCancelled:(id)cancelled forResting:(BOOL)resting executionContext:(id)context
{
  restingCopy = resting;
  cancelledCopy = cancelled;
  contextCopy = context;
  v9 = [(UIKeyboardLayoutStar *)self infoForTouch:cancelledCopy];
  [v9 addTouch:cancelledCopy];
  v10 = +[UIKeyboardImpl activeInstance];
  if ([v9 initialKeyState] != 16 || !_os_feature_enabled_impl() || (objc_msgSend(v9, "key"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "variantType"), v11, (v12 - 10) >= 4))
  {
    v13 = [v9 key];
    if (v13)
    {
      v14 = v13;
      v15 = [v9 key];
      interactionType = [v15 interactionType];

      if (interactionType != 18)
      {
        v17 = [v9 key];
        [(UIKeyboardLayoutStar *)self setState:2 forKey:v17];
      }
    }

    v18 = [v9 key];
    interactionType2 = [v18 interactionType];

    if (interactionType2 == 9)
    {
      v20 = +[UIInputSwitcherView activeInstance];
      [v20 hide];
    }

    v21 = [v9 key];
    interactionType3 = [v21 interactionType];

    if (interactionType3 == 4)
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
      interactionType4 = [v24 interactionType];

      if (interactionType4 != 3)
      {
        [(UIKeyboardLayoutStar *)self clearHandwritingStrokesIfNeededAndNotify:0];
      }
    }

    [(UIKeyboardLayoutStar *)self clearInfoForTouch:cancelledCopy forResting:restingCopy];
    preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];

    if (preTouchKeyplaneName)
    {
      if ([cancelledCopy tapCount] == 1 && self->_prevTouchMoreKeyTime && (objc_msgSend(MEMORY[0x1E695DF00], "date"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "timeIntervalSinceDate:", self->_prevTouchMoreKeyTime), v29 = v28, v27, v29 <= 0.25))
      {
        preTouchKeyplaneName2 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
        [(UIKeyboardLayoutStar *)self setKeyplaneName:preTouchKeyplaneName2];
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
      usingTypeAndTalk = [v30 usingTypeAndTalk];

      if ((usingTypeAndTalk & 1) == 0)
      {
        v32 = +[UIDictationController sharedInstance];
        [v32 cancelDictation];

        v33 = +[UIKeyboardImpl activeInstance];
        isDictationPopoverPresented = [v33 isDictationPopoverPresented];

        if (isDictationPopoverPresented)
        {
          v35 = +[UIKeyboardImpl activeInstance];
          [v35 dismissDictationPopover];
        }
      }
    }

    [(UIKeyboardLayoutStar *)self _cleanUpBlinkAssertionIfNecessary];
  }

  [contextCopy returnExecutionToParent];
}

- (void)touchChanged:(id)changed executionContext:(id)context
{
  changedCopy = changed;
  contextCopy = context;
  v7 = [(UIKeyboardLayoutStar *)self infoForTouch:changedCopy];
  v8 = [v7 key];
  interactionType = [v8 interactionType];

  if (interactionType == 4)
  {
    v10 = +[UIKeyboardImpl activeInstance];
    touchUUID = [changedCopy touchUUID];
    v12 = [UIKBTouchState touchForTouchUUID:touchUUID];
    [v12 force];
    [v10 adjustAutoDeleteTimerForForce:?];
  }

  [contextCopy returnExecutionToParent];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_rightSwipeRecognizer == beginCopy || self->_leftSwipeRecognizer == beginCopy)
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

  if (self->_upSwipeRecognizer == beginCopy)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_upSwipeRecognizer == recognizer)
  {
    touchCopy = touch;
    view = [touchCopy view];
    [touchCopy locationInView:view];
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

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_pinchGestureRecognizer == failed)
  {
    [(UIKeyboardLayoutStar *)self pinchHandler:?];
  }
}

- (void)uninstallGestureRecognizers
{
  upSwipeRecognizer = self->_upSwipeRecognizer;
  if (upSwipeRecognizer)
  {
    view = [(UIGestureRecognizer *)upSwipeRecognizer view];

    if (view)
    {
      [(UIView *)self removeGestureRecognizer:self->_upSwipeRecognizer];
    }

    v5 = self->_upSwipeRecognizer;
    self->_upSwipeRecognizer = 0;
  }

  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    view2 = [(UIGestureRecognizer *)pinchGestureRecognizer view];

    if (view2)
    {
      [(UIView *)self removeGestureRecognizer:self->_pinchGestureRecognizer];
    }

    v8 = self->_pinchGestureRecognizer;
    self->_pinchGestureRecognizer = 0;
  }

  rightSwipeRecognizer = self->_rightSwipeRecognizer;
  if (rightSwipeRecognizer)
  {
    view3 = [(UIGestureRecognizer *)rightSwipeRecognizer view];

    if (view3)
    {
      [(UIView *)self removeGestureRecognizer:self->_rightSwipeRecognizer];
    }

    v11 = self->_rightSwipeRecognizer;
    self->_rightSwipeRecognizer = 0;
  }

  leftSwipeRecognizer = self->_leftSwipeRecognizer;
  if (leftSwipeRecognizer)
  {
    view4 = [(UIGestureRecognizer *)leftSwipeRecognizer view];

    if (view4)
    {
      [(UIView *)self removeGestureRecognizer:self->_leftSwipeRecognizer];
    }

    v14 = self->_leftSwipeRecognizer;
    self->_leftSwipeRecognizer = 0;
  }

  resizingKeyplaneCoordinator = self->_resizingKeyplaneCoordinator;

  [(UIKBResizingKeyplaneCoordinator *)resizingKeyplaneCoordinator uninstallGestureRecognizers];
}

- (void)swipeDetected:(id)detected
{
  if (([detected direction] & 4) != 0)
  {
    activeKey = [(UIKeyboardLayoutStar *)self activeKey];
    interactionType = [activeKey interactionType];

    if (interactionType != 6)
    {
      self->_swipeDetected = 1;
      v6 = +[UIKeyboardImpl activeInstance];
      [v6 longPressAction];

      self->_swipeDetected = 0;
    }
  }
}

- (id)infoForTouchUUID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)infoForTouch:(id)touch
{
  touchUUID = [touch touchUUID];
  v5 = [(UIKeyboardLayoutStar *)self infoForTouchUUID:touchUUID];

  return v5;
}

- (id)generateInfoForTouch:(id)touch
{
  touchCopy = touch;
  v5 = objc_alloc_init(UIKeyboardTouchInfo);
  [(UIKeyboardTouchInfo *)v5 addTouch:touchCopy];
  [(UIKeyboardTouchInfo *)v5 setStage:3];
  touchUUID = [touchCopy touchUUID];

  if (touchUUID)
  {
    extendedTouchInfoMap = self->_extendedTouchInfoMap;
    touchUUID2 = [touchCopy touchUUID];
    [(NSMutableDictionary *)extendedTouchInfoMap setObject:v5 forKey:touchUUID2];
  }

  return v5;
}

- (void)cancelTouchIfNecessaryForInfo:(id)info forResting:(BOOL)resting
{
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy)
  {
    v8 = [infoCopy key];
    interactionType = [v8 interactionType];

    if (interactionType != 4)
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
          displayTypeHint = [v12 displayTypeHint];

          if (displayTypeHint == 10 && v11)
          {
            [(UIKeyboardLayoutStar *)self resetPanAlternativesForEndedTouch:v7];
          }
        }

        if (qword_1ED493290 != -1)
        {
          dispatch_once(&qword_1ED493290, &__block_literal_global_1295);
        }

        taskQueue = [v10 taskQueue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65__UIKeyboardLayoutStar_cancelTouchIfNecessaryForInfo_forResting___block_invoke_3;
        v15[3] = &unk_1E70FD140;
        v19 = v11;
        v16 = v7;
        selfCopy = self;
        restingCopy = resting;
        v18 = v10;
        [taskQueue addTask:v15 breadcrumb:qword_1ED493288];
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

- (void)clearInfoForTouch:(id)touch forResting:(BOOL)resting
{
  restingCopy = resting;
  touchCopy = touch;
  v6 = [(UIKeyboardLayoutStar *)self infoForTouch:?];
  [(UIKeyboardLayoutStar *)self cancelTouchIfNecessaryForInfo:v6 forResting:restingCopy];
  if (!restingCopy)
  {
    touchUUID = [touchCopy touchUUID];

    if (touchUUID)
    {
      extendedTouchInfoMap = self->_extendedTouchInfoMap;
      touchUUID2 = [touchCopy touchUUID];
      [(NSMutableDictionary *)extendedTouchInfoMap removeObjectForKey:touchUUID2];
    }
  }
}

- (id)touchInfoForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_extendedTouchInfoMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v10 = [(NSMutableDictionary *)self->_extendedTouchInfoMap objectForKey:*(*(&v13 + 1) + 8 * v9)];
      v11 = [v10 key];

      if (v11 == keyCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)keyHasAccentedVariants:(id)variants
{
  variantsCopy = variants;
  if (-[UIKBTree visualStyle](self->_keyboard, "visualStyle") == 301 || ([variantsCopy name], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"NumberPad"), v5, (v6 & 1) != 0) || -[UIKBTree visualStyle](self->_keyboard, "visualStyle") == 101)
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

    representedString = [variantsCopy representedString];
    if ([variantsCopy variantType] == 8)
    {
      v14 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:representedString];

      representedString = v14;
    }

    if ([variantsCopy displayType] == 7)
    {
      secondaryRepresentedStrings = [variantsCopy secondaryRepresentedStrings];
      v16 = [secondaryRepresentedStrings count];

      if (v16)
      {
        secondaryRepresentedStrings2 = [variantsCopy secondaryRepresentedStrings];
        firstObject = [secondaryRepresentedStrings2 firstObject];
        v19 = [representedString stringByAppendingString:firstObject];

        representedString = v19;
      }
    }

    if (representedString && ([(NSMutableSet *)self->_accentInfo containsObject:representedString]& 1) == 0)
    {
      [(NSMutableSet *)self->_accentInfo addObject:representedString];
      v20 = UIKeyboardGetCurrentInputMode();
      v21 = [(UIKeyboardLayout *)self getRomanAccentVariantsForString:representedString inputMode:v20 keyboardVariantIndludes:7];

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
        [(NSMutableSet *)self->_hasAccents addObject:representedString];
      }
    }

    v7 = [(NSMutableSet *)self->_hasAccents containsObject:representedString];
  }

  return v7;
}

- (unint64_t)downActionFlagsForKey:(id)key
{
  keyCopy = key;
  if (![keyCopy visible] || -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", keyCopy) == 1)
  {
    v5 = 0;
    goto LABEL_4;
  }

  interactionType = [keyCopy interactionType];
  variantType = [keyCopy variantType];
  if (interactionType == 4)
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

  if (interactionType == 13)
  {
    if (!self->_returnTarget)
    {
      goto LABEL_14;
    }

    v9 = 856;
    goto LABEL_12;
  }

  if (interactionType != 15)
  {
    if ((interactionType - 1) > 1)
    {
      v13 = interactionType - 3;
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

    v10 = variantType;
    if (([(UIKBTree *)self->_keyplane visualStyling]& 0x3F) == 0x17 || UIKeyboardCurrentInputModeIsMultiscript())
    {
      displayType = [keyCopy displayType];
      if (v10 != 3 && displayType == 7)
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
          name = [keyCopy name];
          if ([name hasPrefix:@"NumberPad-"])
          {
            name2 = [keyCopy name];
            v17 = [name2 hasSuffix:@"-0-Plus"];

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
        if ([v22 isLongPress] && -[UIKeyboardLayoutStar keyHasAccentedVariants:](self, "keyHasAccentedVariants:", keyCopy))
        {
          name3 = [keyCopy name];
          v24 = [name3 hasPrefix:@"Assist"];

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
    representedString = [keyCopy representedString];
    v19 = [representedString isEqualToString:@"@"];

    if (v19)
    {
      v5 &= 0x1FFFF7F7FuLL;
    }
  }

  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
  }

  else
  {
    isDynamicLayout = [(UIKeyboardLayoutStar *)self isDynamicLayout];

    if (!isDynamicLayout && [(UIKBScreenTraits *)self->super._screenTraits idiom]== 3)
    {
      v5 &= ~0x80uLL;
    }
  }

LABEL_4:

  return v5;
}

- (unint64_t)upActionFlagsForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy visible] && -[UIKeyboardLayoutStar stateForKey:](self, "stateForKey:", keyCopy) != 1)
  {
    if ([keyCopy BOOLForProperty:@"more-after"])
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    if ([keyCopy BOOLForProperty:@"shift-after"])
    {
      v8 = v7 | 0x400000;
    }

    else
    {
      v8 = v7;
    }

    v5 = v8;
    switch([keyCopy interactionType])
    {
      case 1u:
      case 2u:
      case 0x10u:
        if ([keyCopy variantType] == 9 || objc_msgSend(keyCopy, "variantType") == 10 || objc_msgSend(keyCopy, "variantType") == 12 || objc_msgSend(keyCopy, "variantType") == 13)
        {
          v9 = 2147483658;
          goto LABEL_50;
        }

        v5 = v8 | 0xA;
        if ([keyCopy variantType] == 11 && _os_feature_enabled_impl())
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
  keys = [(UIKBTree *)self->_keyplane keys];
  v4 = [keys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keys);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 displayType] == 7)
        {
          -[UIKeyboardLayoutStar setState:forKey:](self, "setState:forKey:", [v8 state], v8);
        }
      }

      v5 = [keys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)downActionShiftWithKey:(id)key
{
  keyCopy = key;
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
      looksLikeShiftAlternate = [(UIKBTree *)self->_keyplane looksLikeShiftAlternate];
      [v4 setShiftLocked:0];
      if (!looksLikeShiftAlternate)
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
        v10 = [(UIKeyboardLayoutStar *)self touchInfoForKey:keyCopy];
        touch = [v10 touch];
        touchUUID = [touch touchUUID];
        [(UIKeyboardLayout *)self setShiftKeyTouchUUID:touchUUID];

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
  _currentLayoutInfo = [(UIKeyboardLayoutStar *)self _currentLayoutInfo];
  [(UIKBTree *)keyplane updateFlickKeycapOnKeysWithLayoutInfo:_currentLayoutInfo];

  [(UIKeyboardLayoutStar *)self refreshDualStringKeys];
  [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
  [(UIKeyboardLayoutStar *)self setShift:1];
  if (![(UIKBTree *)self->_keyplane isShiftKeyPlaneChooser])
  {
    [(UIKeyboardLayoutStar *)self setState:8 forKey:keyCopy];
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
      isShiftLocked = [v7 isShiftLocked];
      v5 = v7;
    }

    else
    {
      isShiftLocked = 1;
    }

    [v5 setShift:isShiftLocked];
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

- (int)stateForShiftKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Caps-Lock-Key"];
  v6 = v5;
  if (v5)
  {
    visible = [v5 visible];
    if (([keyCopy behavesAsShiftKey] & 1) == 0)
    {
      v8 = 2;
      if (visible)
      {
        v9 = +[UIKeyboardImpl activeInstance];
        isShiftLocked = [v9 isShiftLocked];

        if (isShiftLocked)
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
    if (![keyCopy behavesAsShiftKey])
    {
      v8 = 2;
      goto LABEL_18;
    }

    visible = 0;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  isShiftLocked2 = [v11 isShiftLocked];

  if (isShiftLocked2)
  {
    v13 = visible == 0;
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
  shiftAlternateKeyplaneName = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
  activeTouchInfoForShift = [(UIKeyboardLayoutStar *)self activeTouchInfoForShift];
  if (activeTouchInfoForShift && [keyCopy behavesAsShiftKey])
  {
    preTouchKeyplaneName = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    if ([preTouchKeyplaneName isEqualToString:self->_keyplaneName])
    {

LABEL_24:
      v8 |= 4u;
      goto LABEL_25;
    }

    preTouchKeyplaneName2 = [(UIKeyboardLayoutStar *)self preTouchKeyplaneName];
    v20 = [preTouchKeyplaneName2 isEqualToString:shiftAlternateKeyplaneName];

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

- (void)setShift:(BOOL)shift
{
  if (!self->_gestureKeyboardIntroduction)
  {
    shiftCopy = shift;
    if (![(UIKeyboardLayoutStar *)self isEmojiKeyplane])
    {
      ignoringKeyplaneChange = [(UIKeyboardLayout *)self ignoringKeyplaneChange];
      if (!self->_settingShift && !ignoringKeyplaneChange)
      {
        self->_settingShift = 1;
        if ((shiftCopy & 1) == 0)
        {
          [(UIKeyboardLayout *)self setShiftKeyTouchUUID:0];
        }

        shift = self->_shift;
        self->_shift = shiftCopy;
        isShiftKeyplane = [(UIKBTree *)self->_keyplane isShiftKeyplane];
        keyplane = self->_keyplane;
        if (isShiftKeyplane != shiftCopy)
        {
          shiftAlternateKeyplaneName = [(UIKBTree *)keyplane shiftAlternateKeyplaneName];
LABEL_20:
          name = shiftAlternateKeyplaneName;
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
        isShiftLocked = [v14 isShiftLocked];

        if (v12)
        {
        }

        if (v11)
        {

          if (isShiftLocked)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if (isShiftLocked)
          {
LABEL_19:
            shiftAlternateKeyplaneName = [(UIKBTree *)self->_keyplane name];
            goto LABEL_20;
          }
        }

LABEL_26:
        if (self->_shift == shift)
        {
          name = 0;
        }

        else
        {
          name = [(UIKBTree *)self->_keyplane name];

          if (name)
          {
            keyboard = self->_keyboard;
            shiftAlternateKeyplaneName2 = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
            v20 = [(UIKBTree *)keyboard subtreeWithName:shiftAlternateKeyplaneName2];
            name2 = [v20 name];

            name3 = [(UIKBTree *)self->_keyplane name];
            LODWORD(shiftAlternateKeyplaneName2) = [name2 isEqualToString:name3];

            if (shiftAlternateKeyplaneName2)
            {
              name = [(UIKBTree *)self->_keyplane shiftAlternateKeyplaneName];
            }

            else
            {
              name = 0;
            }

LABEL_21:
            if (!self->_isContinuousPathUnderway && name)
            {
              [(UIKeyboardLayoutStar *)self setKeyplaneName:name];
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

- (void)setAutoshift:(BOOL)autoshift
{
  if (!self->_settingShift)
  {
    self->_settingShift = 1;
    self->_autoshift = autoshift;
    [(UIKeyboardLayoutStar *)self updateShiftKeyState];
    self->_settingShift = 0;
  }
}

- (void)divideKeysIntoLeft:(id)left right:(id)right
{
  leftCopy = left;
  rightCopy = right;
  v8 = rightCopy;
  if (leftCopy && rightCopy)
  {
    subtrees = [(UIKBTree *)self->_keyplane subtrees];
    firstObject = [subtrees firstObject];

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
    keys = [firstObject keys];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke;
    v31[3] = &unk_1E7114AD8;
    v31[4] = &v38;
    v31[5] = &v32;
    [keys enumerateObjectsUsingBlock:v31];

    v13 = v39[4];
    v14 = v39[5];
    v16 = v39[6];
    v15 = *(v39 + 7);
    v17 = v33[6];
    keys2 = [(UIKBTree *)self->_keyplane keys];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__UIKeyboardLayoutStar_divideKeysIntoLeft_right___block_invoke_2;
    v19[3] = &unk_1E7114B00;
    v23 = v13 + v17 * -0.5;
    v24 = v14 + 0.0;
    v25 = v16 * 0.5 - (v17 * -0.5 + 0.0);
    v26 = v15;
    v22 = &v38;
    v20 = leftCopy;
    v27 = v16 * 0.5 + 0.0;
    v28 = v14 + 0.0;
    v29 = v25;
    v30 = v15;
    v21 = v8;
    [keys2 enumerateObjectsUsingBlock:v19];

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

  keys = [(UIKBTree *)self->_keyplane keys];
  v15 = [keys count];
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
      v22 = [keys objectAtIndex:v17];
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
      representedString = [v22 representedString];
      if ([v22 displayType] == 7 && (objc_msgSend(v22, "supportsSupplementalDisplayString") & 1) == 0)
      {
        v44 = [(UIKeyboardLayoutStar *)self currentRepresentedStringForDualDisplayKey:v22];

        representedString = v44;
      }

      v45 = @"undo";
      if ([v22 interactionType] == 12 || (v45 = @"international", objc_msgSend(v22, "interactionType") == 9) || (v45 = @"delete", objc_msgSend(v22, "interactionType") == 4))
      {

        representedString = v45;
      }

      v46 = [(NSMutableSet *)self->_leftKeySet containsObject:v22];
      v47 = 1216;
      if ((v46 & 1) != 0 || (v48 = [(NSMutableSet *)self->_rightKeySet containsObject:v22], v47 = v9, v48))
      {
        v49 = (self + v47);
        v24 = v24 + *v49;
        v26 = v26 + v49[1];
      }

      [v16 addKeyWithString:representedString frame:{v24, v26, v28, v30}];

      goto LABEL_33;
    }

    v31 = v9;
    v32 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"More-Key"];
    interactionType = [v32 interactionType];

    if (interactionType == 10)
    {
      v9 = v31;
      goto LABEL_22;
    }

    v34 = [(UIKBTree *)self->_keyplane firstCachedKeyWithName:@"Dictation-Key"];
    shape = [v34 shape];

    [v22 paddedFrame];
    MinY = CGRectGetMinY(v57);
    [shape paddedFrame];
    if (MinY == CGRectGetMinY(v58))
    {
      [v22 paddedFrame];
      MinX = CGRectGetMinX(v59);
      [shape paddedFrame];
      v9 = v31;
      if (MinX <= CGRectGetMaxX(v60))
      {
        goto LABEL_21;
      }

      [v22 paddedFrame];
      v53 = CGRectGetMinX(v61);
      [shape paddedFrame];
      v54 = v53 - CGRectGetMaxX(v62);
      [shape paddedFrame];
      if (v54 >= v36)
      {
        goto LABEL_21;
      }

      shape2 = [v22 shape];
      v38 = [UIKBShape shapeByCombining:shape2 withShape:shape];

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

- (void)willRotate:(int64_t)rotate
{
  self->_preRotateShift = self->_shift;
  name = [(UIKBTree *)self->_keyplane name];
  v6 = [name copy];
  preRotateKeyplaneName = self->_preRotateKeyplaneName;
  self->_preRotateKeyplaneName = v6;

  modalDisplayView = [(UIKeyboardLayoutStar *)self modalDisplayView];

  if (modalDisplayView)
  {
    modalDisplayView2 = [(UIKeyboardLayoutStar *)self modalDisplayView];
    [modalDisplayView2 removeFromSuperview];

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
    v11 = [UIKBScreenTraits traitsWithScreen:v10 orientation:rotate ignoreRemoteKeyboard:1];

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

    keyplaneName = [(UIKeyboardLayoutStar *)self keyplaneName];
    v10 = [keyplaneName isEqualToString:v4];

    if (![(UIKeyboardLayout *)self isFloating]|| (v10 & 1) == 0)
    {
      if ((v10 & 1) == 0)
      {
        v11 = self->super._screenTraits;
        orientation = [(UIKBScreenTraits *)self->super._screenTraits orientation];
        v13 = +[UIKeyboard activeKeyboard];
        interfaceOrientation = [v13 interfaceOrientation];

        if (orientation != interfaceOrientation)
        {
          v15 = +[UIKeyboardImpl keyboardScreen];
          v16 = +[UIKeyboard activeKeyboard];
          v17 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v15, [v16 interfaceOrientation]);

          v11 = v17;
        }

        v18 = UIKeyboardGetCurrentInputMode();
        v19 = UIKeyboardGetKBStarName(v18, v11, [(UITextInputTraits *)self->super._inputTraits keyboardType], 0);

        name = [(UIKBTree *)self->_keyboard name];

        if (v19 != name)
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

- (BOOL)shouldRetestKey:(id)key slidOffKey:(id)offKey withKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  v10 = 0;
  if ([keyCopy interactionType] != 4 && self->_keyplane != keyplaneCopy)
  {
    if (![keyCopy modifiesKeyplane] || objc_msgSend(keyCopy, "interactionType") != 10 && (-[UIKeyboardLayoutStar preTouchKeyplaneName](self, "preTouchKeyplaneName"), v12 = objc_claimAutoreleasedReturnValue(), v12, offKey) && v12)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (id)baseKeyForString:(id)string
{
  v80 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keyboard = [(UIKeyboardLayoutStar *)self keyboard];
  subtrees = [keyboard subtrees];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = subtrees;
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
        keys = [v11 keys];
        v13 = [keys countByEnumeratingWithState:&v67 objects:v78 count:16];
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
                objc_enumerationMutation(keys);
              }

              v17 = *(*(&v67 + 1) + 8 * j);
              representedString = [v17 representedString];
              v19 = [representedString isEqualToString:stringCopy];

              if (v19)
              {
                v44 = v17;

                v7 = v10;
                v23 = v10;
                goto LABEL_46;
              }
            }

            v14 = [keys countByEnumeratingWithState:&v67 objects:v78 count:16];
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
        keys2 = [v26 keys];
        v51 = [keys2 countByEnumeratingWithState:&v59 objects:v76 count:16];
        if (v51)
        {
          v28 = *v60;
          v47 = v22;
          v48 = *v60;
          v54 = keys2;
          do
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v60 != v28)
              {
                objc_enumerationMutation(keys2);
              }

              v30 = *(*(&v59 + 1) + 8 * m);
              representedString2 = [v30 representedString];
              if ([v30 displayType] == 7)
              {
                secondaryRepresentedStrings = [v30 secondaryRepresentedStrings];
                v33 = [secondaryRepresentedStrings count];

                if (v33)
                {
                  secondaryRepresentedStrings2 = [v30 secondaryRepresentedStrings];
                  firstObject = [secondaryRepresentedStrings2 firstObject];
                  v36 = [representedString2 stringByAppendingString:firstObject];

                  representedString2 = v36;
                }
              }

              v37 = UIKeyboardGetCurrentInputMode();
              v38 = UIKeyboardRomanAccentVariants(representedString2, v37, 7);
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

                    if ([*(*(&v55 + 1) + 8 * n) isEqualToString:stringCopy])
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

              keys2 = v54;
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

  NSLog(&cfstr_CouldnTFindKey.isa, stringCopy);
  v44 = 0;
LABEL_46:

  return v44;
}

- (id)keyplaneForKey:(id)key
{
  keyCopy = key;
  keyboard = [(UIKeyboardLayoutStar *)self keyboard];
  v6 = [keyboard keyplaneForKey:keyCopy];

  return v6;
}

- (id)keyplaneNamed:(id)named
{
  namedCopy = named;
  keyboard = [(UIKeyboardLayoutStar *)self keyboard];
  v6 = [keyboard subtreeWithName:namedCopy];

  return v6;
}

- (void)changeToKeyplane:(id)keyplane
{
  name = [keyplane name];
  [(UIKeyboardLayoutStar *)self setKeyplaneName:name];

  isShiftKeyplane = [(UIKBTree *)self->_keyplane isShiftKeyplane];
  v6 = +[UIKeyboardImpl activeInstance];
  if (isShiftKeyplane != [v6 isShifted])
  {
    [v6 setShift:isShiftKeyplane];
    [v6 setShiftPreventAutoshift:1];
    [v6 forceShiftUpdate];
  }
}

- (void)switchKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  keyplaneNameForRevertAfterTouch = [(UIKeyboardLayoutStar *)self keyplaneNameForRevertAfterTouch];
  [(UIKeyboardLayoutStar *)self setPreTouchKeyplaneName:keyplaneNameForRevertAfterTouch];

  self->_revertKeyplaneAfterTouch = 0;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 keyActivated];

  [(UIKeyboardLayoutStar *)self setKeyplaneName:keyplaneCopy];

  [(UIKeyboardLayoutStar *)self setActiveKey:0];
}

- (CGPoint)applyError:(CGPoint)error toKey:(id)key
{
  y = error.y;
  x = error.x;
  [key frame];
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

- (id)simulateTouch:(CGPoint)touch
{
  y = touch.y;
  x = touch.x;
  v6 = [(UIKeyboardLayoutStar *)self keyHitTestContainingPoint:?];
  v7 = v6;
  if (v6)
  {
    representedString = [v6 representedString];
  }

  else
  {
    representedString = @"<no key>";
  }

  [(UIView *)self convertPoint:0 toView:x, y];
  v10 = v9;
  v12 = v11;
  Current = CFAbsoluteTimeGetCurrent();
  window = [(UIView *)self window];
  current = [UIKeyboardSyntheticTouch syntheticTouchWithPoint:window timestamp:v10 window:v12, Current];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:current];
  [(UIKeyboardLayout *)self touchesBegan:v16 withEvent:0];

  [current setPhase:3];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:current];
  [(UIKeyboardLayout *)self touchesEnded:v17 withEvent:0];

  return representedString;
}

- (id)simulateTouchForCharacter:(id)character errorVector:(CGPoint)vector shouldTypeVariants:(BOOL)variants baseKeyForVariants:(BOOL)forVariants
{
  y = vector.y;
  x = vector.x;
  characterCopy = character;
  v12 = [(UIKeyboardLayoutStar *)self baseKeyForString:characterCopy];
  v13 = v12;
  if (v12)
  {
    if (variants)
    {
      if (!forVariants)
      {
        representedString = [v12 representedString];
        v15 = [representedString isEqualToString:characterCopy];

        if ((v15 & 1) == 0)
        {
          NSLog(&cfstr_InsertingVaria.isa, characterCopy);
          v16 = +[UIKeyboardImpl activeInstance];
          [v16 addInputString:characterCopy withFlags:2];

          representedString2 = characterCopy;
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
        representedString2 = [v25 representedString];
      }

      else
      {
        representedString2 = @"<no key>";
      }

      [(UIView *)self convertPoint:0 toView:v22, v24];
      v28 = v27;
      v30 = v29;
      Current = CFAbsoluteTimeGetCurrent();
      window = [(UIView *)self window];
      current = [UIKeyboardSyntheticTouch syntheticTouchWithPoint:window timestamp:v28 window:v30, Current];

      v34 = [MEMORY[0x1E695DFD8] setWithObject:current];
      [(UIKeyboardLayout *)self touchesBegan:v34 withEvent:0];

      [current setPhase:3];
      v35 = [MEMORY[0x1E695DFD8] setWithObject:current];
      [(UIKeyboardLayout *)self touchesEnded:v35 withEvent:0];

      goto LABEL_12;
    }

    representedString3 = [v12 representedString];
    v19 = [representedString3 isEqualToString:characterCopy];

    if (v19)
    {
      goto LABEL_7;
    }
  }

  representedString2 = 0;
LABEL_12:

  return representedString2;
}

- (void)fadeWithInvocation:(id)invocation
{
  invocationCopy = invocation;
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
  v7 = invocationCopy;
  v5 = invocationCopy;
  [UIView animateWithDuration:117571584 delay:v8 options:v6 animations:0.2 completion:0.0];
}

uint64_t __43__UIKeyboardLayoutStar_fadeWithInvocation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 start];
}

- (void)updateGlobeKeyAndLayoutOriginBeforeSnapshotForInputView:(id)view
{
  viewCopy = view;
  if ([(UIView *)self isDescendantOfView:?])
  {
    activeKey = [(UIKeyboardLayoutStar *)self activeKey];
    [(UIKeyboardLayoutStar *)self setState:2 forKey:activeKey];

    [viewCopy frame];
    v6 = v5;
    [(UIView *)self frame];
    if (v6 != CGRectGetMaxY(v13))
    {
      [(UIView *)self frame];
      MinX = CGRectGetMinX(v14);
      [viewCopy frame];
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
    currentKeyplane = [(UIKeyboardLayoutStar *)self currentKeyplane];
    v4 = [currentKeyplane firstCachedKeyWithName:@"Space-Key"];
    if ((-[UIKeyboardLayoutStar upActionFlagsForKey:](self, "upActionFlagsForKey:", v4) & 0x100) != 0 && ([currentKeyplane supportsType:{-[UITextInputTraits keyboardType](self->super._inputTraits, "keyboardType")}] & 1) == 0)
    {
      alternateKeyplaneName = [currentKeyplane alternateKeyplaneName];
      [(UIKeyboardLayoutStar *)self setKeyplaneName:alternateKeyplaneName];

      keyplane = [(UIKeyboardLayoutStar *)self keyplane];
      -[UIKeyboardLayoutStar setShift:](self, "setShift:", [keyplane isShiftKeyplane]);
    }
  }
}

- (void)typingStyleEstimator:(id)estimator didChangeTypingStyleEstimate:(unint64_t)estimate
{
  if ([(UIKeyboardLayoutStar *)self _allowPaddle])
  {
    keyplaneFactory = [(UIKeyboardLayoutStar *)self keyplaneFactory];
    v6 = (estimate != 3) == [keyplaneFactory allowsPaddles];
    v7 = keyplaneFactory;
    if (!v6)
    {
      [keyplaneFactory setAllowsPaddles:estimate != 3];
      activeKey = [(UIKeyboardLayoutStar *)self activeKey];
      v9 = [(UIKeyboardLayoutStar *)self touchInfoForKey:activeKey];
      if (![v9 delayed] || objc_msgSend(activeKey, "interactionType") != 4)
      {
        [(UIKBKeyplaneView *)self->_keyplaneView purgeActiveKeyViews];
      }

      v7 = keyplaneFactory;
    }
  }
}

- (UIKeyboardKeyplaneTransitionDelegate)splitKeyplaneTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitKeyplaneTransitionDelegate);

  return WeakRetained;
}

- (id)keyWithRepresentedString:(id)string
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keys = [(UIKBTree *)self->_keyplane keys];
  v6 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(keys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 interactionType] != 16 || (objc_msgSend(v9, "fullRepresentedString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "_containsSubstring:", stringCopy), v10, (v11 & 1) == 0))
        {
          representedString = [v9 representedString];
          v13 = [representedString isEqualToString:stringCopy];

          if ((v13 & 1) == 0)
          {
            continue;
          }
        }

        v6 = v9;
        goto LABEL_13;
      }

      v6 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (CGRect)frameForKeyWithRepresentedString:(id)string
{
  v48 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  subviews = [(UIView *)self->_keyplaneView subviews];
  v6 = [subviews countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v10 key];
        representedString = [v11 representedString];
        if ([representedString isEqualToString:stringCopy])
        {
          superview = [v10 superview];

          if (superview)
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

      v7 = [subviews countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  keys = [(UIKBTree *)self->_keyplane keys];
  v15 = [keys countByEnumeratingWithState:&v38 objects:v46 count:16];
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
          objc_enumerationMutation(keys);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        representedString2 = [v19 representedString];
        v21 = [representedString2 isEqualToString:stringCopy];

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

      v16 = [keys countByEnumeratingWithState:&v38 objects:v46 count:16];
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

- (CGRect)frameForLastKeyWithRepresentedString:(id)string
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  keys = [(UIKBTree *)self->_keyplane keys];
  reverseObjectEnumerator = [keys reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        representedString = [v11 representedString];
        v13 = [representedString isEqualToString:stringCopy];

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

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(UIView *)self->_keyplaneView subviews];
  v5 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        superview = [v9 superview];
        window = [v9 window];
        v12 = window;
        if (superview == window)
        {
          window2 = [v9 window];
          _isTextEffectsWindow = [window2 _isTextEffectsWindow];

          if (_isTextEffectsWindow)
          {
            [array addObject:v9];
          }
        }

        else
        {
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)flickPopupStringForKey:(id)key withString:(id)string
{
  stringCopy = string;
  variantType = [key variantType];
  v8 = stringCopy;
  if (variantType == 8)
  {
    v8 = [(UIKeyboardLayoutStar *)self _keyplaneVariantsKeyForString:stringCopy];
  }

  return v8;
}

- (id)flickStringForInputKey:(id)key direction:(int64_t)direction
{
  keyCopy = key;
  v7 = keyCopy;
  if (keyCopy)
  {
    state = [keyCopy state];
    if ((direction + 3) > 1 || state == 16)
    {
      displayString = [v7 displayString];
      v13 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v7 withString:displayString];
      v12 = getFlickString(v13, direction);
    }

    else
    {
      displayString = [v7 fullRepresentedString];
      if ([displayString length])
      {
        v10 = [displayString rangeOfComposedCharacterSequenceAtIndex:{self->_multitapCount % objc_msgSend(displayString, "length")}];
        v12 = [displayString substringWithRange:{v10, v11}];
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

- (void)populateFlickPopupsForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v34 = keyCopy;
    displayString = [keyCopy displayString];
    v6 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v34 withString:displayString];
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
          array = [MEMORY[0x1E695DF70] array];
          if (v21 >= 1)
          {
            v23 = 0;
            v24 = v21 & 0x7FFFFFFF;
            do
            {
              v25 = [v16 objectAtIndex:v23];
              if ([v25 length])
              {
                null = [v34 copy];
                [null setState:2];
                v27 = [v15 objectAtIndex:v23];
                [null setRepresentedString:v27];

                [null setDisplayString:v25];
                [null setDisplayType:0];
                v28 = MEMORY[0x1E696AEC0];
                name = [v34 name];
                representedString = [null representedString];
                v31 = [v28 stringWithFormat:@"%@/%@", name, representedString];
                [null setName:v31];

                [null setOverrideDisplayString:0];
              }

              else
              {
                null = [MEMORY[0x1E695DFB0] null];
              }

              [array addObject:null];

              ++v23;
            }

            while (v24 != v23);
          }

          [v34 setSubtrees:array];

          v17 = v32;
          v12 = v33;
        }
      }
    }

    keyCopy = v34;
  }
}

- (BOOL)handleFlick:(id)flick
{
  flickCopy = flick;
  touch = [flickCopy touch];
  touch2 = [self->_touchInfo touch];

  if (touch == touch2 && [(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
  {
    v9 = [flickCopy key];
    displayString = [v9 displayString];
    [flickCopy initialPoint];
    v12 = v11;
    v14 = v13;
    touch3 = [flickCopy touch];
    [touch3 locationInView:self];
    v17 = v16;
    v19 = v18;

    v20 = UIKBGetFlickDirection(v12, v14, v17, v19);
    if (v20 == -3)
    {
      self->_isOutOfBounds = 0;
      if ([v9 state] == 16)
      {
        v21 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:displayString];
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

    v26 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:displayString];
    v22 = getFlickString(v26, v23);

    if ([v9 state] == 16)
    {
      v27 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v9 withString:displayString];
      v28 = getFlickPopupInfoArray(v27, @"Keycaps");

      self->_isOutOfBounds = isFlickOutOfBounds(v12, v14, v17, v19);
      if ([(UIKeyboardLayoutStar *)self useCrescendoLayout]&& self->_liveKeyplaneView)
      {
        selectedVariantIndex = [v9 selectedVariantIndex];
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

        if ([v9 selectedVariantIndex] != selectedVariantIndex)
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
      v28 = [flickCopy key];
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

- (void)showFlickView:(int64_t)view withKey:(id)key flickString:(id)string
{
  keyCopy = key;
  if ([keyCopy flickDirection] != view)
  {
    [(UIKeyboardLayoutStar *)self populateFlickPopupsForKey:keyCopy];
    [keyCopy setFlickDirection:view];
    [(UIKeyboardLayoutStar *)self setState:20 forKey:keyCopy];
  }
}

- (void)handlePopupView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  if (qword_1ED4932A0 != -1)
  {
    dispatch_once(&qword_1ED4932A0, &__block_literal_global_2036);
  }

  taskQueue = [(UIKeyboardLayout *)self taskQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__handlePopupView___block_invoke_3;
  v7[3] = &unk_1E7114990;
  v6 = viewCopy;
  v8 = v6;
  selfCopy = self;
  objc_copyWeak(&v10, &location);
  [taskQueue addTask:v7 breadcrumb:qword_1ED493298];

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
  displayString = [v7 displayString];
  v5 = [(UIKeyboardLayoutStar *)self flickPopupStringForKey:v7 withString:displayString];
  v6 = getFlickPopupInfoArray(v5, @"Keycaps");

  if (v6)
  {
    [(UIKeyboardLayoutStar *)self showPopupView:-1 withKey:v7 popupInfo:v6 force:1];
  }
}

- (void)handleDismissFlickView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
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
    v7 = viewCopy;
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

- (void)setKeyboardDim:(BOOL)dim amount:(double)amount withDuration:(double)duration
{
  dimCopy = dim;
  v9 = ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 && dimCopy;
  dimKeyboardImageView = self->_dimKeyboardImageView;
  if (v9)
  {
    if (!dimKeyboardImageView)
    {
      v11 = [UIKBDimmingView alloc];
      superview = [(UIView *)self superview];
      [superview bounds];
      v13 = [(UIKBDimmingView *)v11 initWithFrame:?];
      v14 = self->_dimKeyboardImageView;
      self->_dimKeyboardImageView = v13;

      [(UIView *)self->_dimKeyboardImageView setAlpha:0.0];
      [(UIView *)self->_dimKeyboardImageView setHidden:1];
      superview2 = [(UIView *)self superview];
      [superview2 addSubview:self->_dimKeyboardImageView];

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
    superview3 = [(UIView *)self superview];
    [superview3 bounds];
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

    superview4 = [(UIView *)self superview];
    [superview4 bringSubviewToFront:self->_dimKeyboardImageView];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__setKeyboardDim_amount_withDuration___block_invoke;
    v21[3] = &unk_1E7101F90;
    v21[4] = self;
    v22 = v9;
    *&v21[5] = amount;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__UIKeyboardLayoutStar_UIKeyboardLayoutJapanese50OnFlick__setKeyboardDim_amount_withDuration___block_invoke_2;
    v19[3] = &unk_1E70FA0F0;
    v19[4] = self;
    v20 = v9;
    [UIView animateWithDuration:117440512 delay:v21 options:v19 animations:duration completion:0.0];
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

- (void)setDisableInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIKeyboardLayout *)&v5 setDisableInteraction:?];
  [(UIKeyboardLayoutStar *)self setKeyboardDim:interactionCopy];
}

- (void)setKeyboardDim:(BOOL)dim
{
  dimCopy = dim;
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = ([(UIKBTree *)self->_keyplane visualStyling]& 0xFF00) != 0x7F00 && dimCopy;
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
  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  [renderConfig lightKeycapOpacity];
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

- (void)showPopupView:(int64_t)view withKey:(id)key popupInfo:(id)info force:(BOOL)force
{
  keyCopy = key;
  infoCopy = info;
  if (self->_isOutOfBounds)
  {
    view = -2;
  }

  if (force || [keyCopy flickDirection] != view)
  {
    slideBehaviour = [(UIKeyboardLayoutStar *)self slideBehaviour];

    if (!slideBehaviour)
    {
      v12 = objc_alloc_init(UISelectionFeedbackGenerator);
      [(UIKeyboardLayoutStar *)self setSlideBehaviour:v12];

      slideBehaviour2 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [slideBehaviour2 userInteractionStarted];
    }

    if ([(UIKBScreenTraits *)self->super._screenTraits idiom]!= 3)
    {
      slideBehaviour3 = [(UIKeyboardLayoutStar *)self slideBehaviour];
      [slideBehaviour3 selectionChanged];
    }

    [(UIKeyboardLayoutStar *)self populateFlickPopupsForKey:keyCopy];
    [keyCopy setFlickDirection:view];
    [(UIKeyboardLayoutStar *)self setKeyboardDim:1];
    [(UIKeyboardLayoutStar *)self setState:16 forKey:keyCopy];
  }
}

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy sizeDidChange])
  {
    [contextCopy size];
    [(UIView *)self setSize:?];
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutStar;
  [(UIView *)&v5 _didChangeKeyplaneWithContext:contextCopy];
}

- (id)keyplaneView:(id)view containingViewForActiveKey:(id)key
{
  viewCopy = view;
  keyCopy = key;
  delegate = [(UIKeyboardLayoutStar *)self delegate];
  if (delegate && (v9 = delegate, [(UIKeyboardLayoutStar *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate2 = [(UIKeyboardLayoutStar *)self delegate];
    v13 = [delegate2 keyboardLayout:self containingViewForActiveKey:keyCopy inKeyplaneView:viewCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_continuousPathSpotlightEffectEnabled
{
  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [mEMORY[0x1E69D9680] BOOLForPreferenceKey:*MEMORY[0x1E69D9820]];

  return v3;
}

- (UIKeyboardPathEffectView)pathEffectView
{
  v45[8] = *MEMORY[0x1E69E9840];
  if (!self->_pathEffectView)
  {
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];

    if (_rootInputWindowController)
    {
      _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
      _pathEffectView = [_rootInputWindowController2 _pathEffectView];
      pathEffectView = self->_pathEffectView;
      self->_pathEffectView = _pathEffectView;

      [(UIKeyboardLayoutStar *)self removePathEffectViewConstraintsIfNeeded];
      topAnchor = [(UIView *)self->_pathEffectView topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-100.0];

      leftAnchor = [(UIView *)self->_pathEffectView leftAnchor];
      leftAnchor2 = [(UIView *)self leftAnchor];
      v44 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-100.0];

      bottomAnchor = [(UIView *)self->_pathEffectView bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:100.0];

      rightAnchor = [(UIView *)self->_pathEffectView rightAnchor];
      rightAnchor2 = [(UIView *)self rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:100.0];

      v17 = v9;
      LODWORD(v18) = 1132068864;
      [v9 setPriority:v18];
      LODWORD(v19) = 1132068864;
      [v44 setPriority:v19];
      LODWORD(v20) = 1132068864;
      [v43 setPriority:v20];
      LODWORD(v21) = 1132068864;
      [v16 setPriority:v21];
      topAnchor3 = [(UIView *)self->_pathEffectView topAnchor];
      window = [(UIView *)self window];
      topAnchor4 = [window topAnchor];
      v42 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];

      leftAnchor3 = [(UIView *)self->_pathEffectView leftAnchor];
      window2 = [(UIView *)self window];
      leftAnchor4 = [window2 leftAnchor];
      v28 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4];

      bottomAnchor3 = [(UIView *)self->_pathEffectView bottomAnchor];
      window3 = [(UIView *)self window];
      bottomAnchor4 = [window3 bottomAnchor];
      v32 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];

      rightAnchor3 = [(UIView *)self->_pathEffectView rightAnchor];
      window4 = [(UIView *)self window];
      rightAnchor4 = [window4 rightAnchor];
      v36 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4];

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
      window5 = [(UIView *)self window];
      [window5 layoutIfNeeded];
    }
  }

  v40 = self->_pathEffectView;

  return v40;
}

- (void)_transitionToContinuousPathState:(int64_t)state forTouchInfo:(id)info
{
  infoCopy = info;
  _allowContinuousPathUI = [(UIKeyboardLayoutStar *)self _allowContinuousPathUI];
  v7 = infoCopy;
  if (_allowContinuousPathUI)
  {
    [infoCopy setContinuousPathState:state];
    if (state == 6)
    {
      selfCopy2 = self;
      v9 = 1;
    }

    else
    {
      if (state != 5)
      {
        v7 = infoCopy;
        if (state != 4)
        {
          goto LABEL_10;
        }

        [(UIKeyboardLayoutStar *)self didBeginContinuousPath];
        goto LABEL_9;
      }

      selfCopy2 = self;
      v9 = 0;
    }

    [(UIKeyboardLayoutStar *)selfCopy2 finishContinuousPathView:v9];
LABEL_9:
    v7 = infoCopy;
  }

LABEL_10:
}

- (void)transitionToPunctuationKeysVisible:(BOOL)visible
{
  visibleCopy = visible;
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

  v19 = visibleCopy;
  if ([(UIKeyboardLayoutStar *)self _continuousPathModalPunctuationPlaneEnabled]&& self->_showsPunctuationKeysOnPrimaryKeyplane != visibleCopy)
  {
    [(UIKeyboardLayoutStar *)self cancelModalDoubleConsonantKeysTimer];
    _rootInputWindowController = [(UIView *)self _rootInputWindowController];
    v8 = [_rootInputWindowController inputViewSnapshotOfView:self->_keyplaneView afterScreenUpdates:0];

    [(UIView *)self->_keyplaneTransformationAreaView addSubview:v8];
    self->_showsPunctuationKeysOnPrimaryKeyplane = visibleCopy;
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
  renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
  [renderConfig lightKeycapOpacity];
  v14 = [v12 numberWithDouble:?];
  v29[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__UIKeyboardLayoutStar_ContinuousPath__transitionToPunctuationKeysVisible___block_invoke;
  v22[3] = &unk_1E70FF800;
  v23 = v8;
  selfCopy = self;
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
    name = [(UIKBTree *)self->_keyboard name];
    if ([name containsString:@"Thai"])
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

  activeKeyViews = [(UIKBKeyplaneView *)self->_keyplaneView activeKeyViews];

  if (activeKeyViews)
  {
    [(UIKBKeyplaneView *)self->_keyplaneView deactivateKeys];
  }

  typingStyleEstimator = [(UIKeyboardLayout *)self typingStyleEstimator];
  [typingStyleEstimator beganContinuousPath];

  pathEffectView = [(UIKeyboardLayoutStar *)self pathEffectView];
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
    keyplaneMaskView = [(UIKBKeyplaneView *)self->_keyplaneView keyplaneMaskView];
    [keyplaneMaskView addSubview:self->_pathEffectGlowView];
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

- (void)addContinuousPathPoint:(CGPoint)point withTimestamp:(double)timestamp
{
  y = point.y;
  x = point.x;
  if (self->_pathEffectGlowView)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__UIKeyboardLayoutStar_ContinuousPath__addContinuousPathPoint_withTimestamp___block_invoke;
    v9[3] = &unk_1E70F3B20;
    v9[4] = self;
    *&v9[5] = point.x + -150.0;
    *&v9[6] = point.y + -150.0;
    v10 = vdupq_n_s64(0x4072C00000000000uLL);
    [UIView animateWithDuration:v9 animations:0.1];
  }

  pathEffectView = [(UIKeyboardLayoutStar *)self pathEffectView];
  pathEffectView2 = [(UIKeyboardLayoutStar *)self pathEffectView];
  [(UIView *)self convertPoint:pathEffectView2 toView:x, y];
  [pathEffectView addPoint:? force:? timestamp:?];
}

- (void)clearContinuousPathView
{
  self->_isContinuousPathUnderway = 0;
  [(UIKeyboardLayoutStar *)self transitionToPunctuationKeysVisible:0];
  if (self->_pathEffectView)
  {
    pathEffectView = [(UIKeyboardLayoutStar *)self pathEffectView];
    [pathEffectView buildOut];

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

- (void)finishContinuousPathView:(BOOL)view
{
  viewCopy = view;
  v17[3] = *MEMORY[0x1E69E9840];
  typingStyleEstimator = [(UIKeyboardLayout *)self typingStyleEstimator];
  v6 = typingStyleEstimator;
  if (viewCopy)
  {
    [typingStyleEstimator cancelContinuousPath];
  }

  else
  {
    [typingStyleEstimator endedContinuousPath];
  }

  if (self->_isContinuousPathUnderway)
  {
    self->_isContinuousPathUnderway = 0;
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 updateChangeTimeAndIncrementCount];

    [(UIKeyboardLayoutStar *)self touchModalDoubleConsonantKeysTimer];
    pathEffectView = [(UIKeyboardLayoutStar *)self pathEffectView];
    [pathEffectView buildOut];

    v16[0] = &unk_1EFE31378;
    v16[1] = &unk_1EFE31348;
    v17[0] = &unk_1EFE2E728;
    v17[1] = &unk_1EFE2E728;
    v16[2] = &unk_1EFE31288;
    v9 = MEMORY[0x1E696AD98];
    renderConfig = [(UIKeyboardLayoutStar *)self renderConfig];
    [renderConfig lightKeycapOpacity];
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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"UIContinuousPathGuideTimer"];

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

  taskQueue = [(UIKeyboardLayout *)self taskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__UIKeyboardLayoutStar_ContinuousPath__handleDoubleConsonantKeysTimerFired__block_invoke_3;
  v6[3] = &unk_1E7114990;
  v5 = v3;
  v7 = v5;
  selfCopy = self;
  objc_copyWeak(&v9, &location);
  [taskQueue addTask:v6 breadcrumb:qword_1ED4932B8];

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