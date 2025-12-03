@interface UITextInputSessionActionAnalytics
+ (id)allowedValuesForTextInputSource;
+ (id)sharedPunctuationCharacterSet;
+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)result;
+ (id)stringForKeyboardDockItemButtonType:(unint64_t)type;
+ (id)stringForReplaceWithCandidateType:(int64_t)type;
+ (id)stringValueForSource:(int64_t)source;
+ (void)addEndingObserver:(id)observer;
+ (void)populateActionInputMode:(id)mode withLanguage:(id)language;
+ (void)q_notifyEndingObserversWithSessionAnalytics:(id)analytics;
+ (void)q_notifyStartingObservers;
- (UITextInputSessionActionAnalytics)init;
- (UITextInputSessionActionAnalytics)initWithEventHandler:(id)handler;
- (UITextInputSessionActionAnalyticsDelegateSource)delegateSource;
- (id)_instanceOfActionClass:(Class)class;
- (id)_textInsertionActionForText:(id)text relativeRangeBefore:(_NSRange)before withLanguage:(id)language;
- (id)allAccumulatorNames;
- (id)allEfficacyAccumulatorNames;
- (id)appBundleId;
- (id)getAppBundleId;
- (id)getDynamicAccumulatorWithName:(id)name;
- (id)getEfficacyAccumulatorWithName:(id)name;
- (id)processBundleId;
- (id)q_copyAccumulatorWithName:(id)name;
- (int64_t)_getActiveTextInputSource;
- (int64_t)flagOptions;
- (int64_t)source;
- (unint64_t)_emojiCountForText:(id)text;
- (unint64_t)_normalizedTextLength:(id)length;
- (unint64_t)_optionsForText:(id)text;
- (unint64_t)_punctuationCountForText:(id)text;
- (void)_didCommitText:(id)text withSource:(int64_t)source;
- (void)_didDeleteBackwardAction:(id)action;
- (void)_didDeleteBackwardCount:(unint64_t)count shouldOverrideInputActionCountToZero:(BOOL)zero withLanguage:(id)language;
- (void)_didDeleteBackwardText:(id)text shouldOverrideInputActionCountToZero:(BOOL)zero withLanguage:(id)language;
- (void)_didInsertTextAction:(id)action numCharsDeleted:(unint64_t)deleted withLanguage:(id)language;
- (void)_performWithInputModeOverride:(id)override block:(id)block;
- (void)_performWithTextInputActionsSource:(int64_t)source block:(id)block;
- (void)addAccumulator:(id)accumulator;
- (void)addDynamicAccumulator:(id)accumulator;
- (void)addEfficacyAccumulator:(id)accumulator;
- (void)decrementAllowCursorMovementCount;
- (void)didAutocorrectReplacementForText:(id)text withText:(id)withText;
- (void)didAutocorrectTapOnCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didBegin;
- (void)didCalloutBarReplacementForText:(id)text withText:(id)withText;
- (void)didCandidateBarReplacementForText:(id)text withText:(id)withText;
- (void)didChangeToSelection:(_NSRange)selection relativeRangeBefore:(_NSRange)before;
- (void)didCompositionReplacementForText:(id)text withText:(id)withText;
- (void)didCopy;
- (void)didCut;
- (void)didDecompositionReplacementForText:(id)text withText:(id)withText;
- (void)didDeleteBackwardCount:(unint64_t)count;
- (void)didDeleteBackwardText:(id)text;
- (void)didDeleteKeyPressWithInputSource:(int64_t)source;
- (void)didDictationBegin:(BOOL)begin usesMultiModalDictation:(BOOL)dictation;
- (void)didDictationEnd;
- (void)didGlomojiTap:(unint64_t)tap originalInputMode:(id)mode newInputMode:(id)inputMode;
- (void)didInlineCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didInsertKeyPressWithInputSource:(int64_t)source;
- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before selectedTextBefore:(id)textBefore withLanguage:(id)language;
- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before withLanguage:(id)language;
- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before withNumAlternatives:(int64_t)alternatives;
- (void)didKBMenuAppear:(unint64_t)appear originalInputMode:(id)mode;
- (void)didKBMenuDismiss:(unint64_t)dismiss;
- (void)didKBMenuInteraction:(unint64_t)interaction selectedAction:(unint64_t)action newInputMode:(id)mode;
- (void)didKeyPress:(id)press inputSource:(int64_t)source;
- (void)didKeyboardDockItemButtonPress:(unint64_t)press buttonType:(unint64_t)type buttonSize:(CGSize)size touchDown:(CGPoint)down touchUp:(CGPoint)up touchDuration:(double)duration inputSource:(int64_t)source;
- (void)didOnWebSearchKeyboardPressKey:(id)key withMetadata:(id)metadata;
- (void)didOther;
- (void)didPaste;
- (void)didRedo;
- (void)didReplaceWithCandidate:(int64_t)candidate;
- (void)didReplacementForText:(id)text withText:(id)withText withSource:(int64_t)source withType:(int64_t)type withInputActionCount:(int64_t)count;
- (void)didRevisionBubbleReplacementForText:(id)text withText:(id)withText;
- (void)didRevisionBubbleTap;
- (void)didSessionEnd;
- (void)didUndo;
- (void)enumerateAnalytics:(id)analytics;
- (void)enumerateSeparateCycleAnalytics:(id)analytics;
- (void)q_addAccumulator:(id)accumulator;
- (void)q_addActionAndUpdate:(id)update;
- (void)q_flushRecentActions;
- (void)q_setupDefaultAnalytics;
- (void)q_updateAnalyticsFromAccumulators;
- (void)setSessionIdentifier:(id)identifier;
- (void)writeAnalytics;
@end

@implementation UITextInputSessionActionAnalytics

- (void)q_setupDefaultAnalytics
{
  v65[3] = *MEMORY[0x1E69E9840];
  v3 = [_UITextInputSessionAccumulator accumulatorWithName:@"Began" type:1 depth:1 block:&__block_literal_global_317];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v3];

  v4 = [_UITextInputSessionAccumulator accumulatorWithName:@"DictationBegan" type:1 depth:1 block:&__block_literal_global_319];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v4];

  v5 = [_UITextInputSessionAccumulator accumulatorWithName:@"MultiModalDictationBeganCount" type:1 depth:1 block:&__block_literal_global_321];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v5];

  v6 = [_UITextInputSessionAccumulator accumulatorWithName:@"ModelessUsedAtLeastOnce" type:1 depth:1 block:&__block_literal_global_323];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v6];

  v7 = [_UITextInputSessionAccumulator accumulatorWithName:@"Insertion" type:1 depth:1 block:&__block_literal_global_325];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v7];

  v8 = [_UITextInputSessionAccumulator accumulatorWithName:@"EmojiCount" type:1 depth:1 block:&__block_literal_global_327_0];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v8];

  v9 = [_UITextInputSessionAccumulator accumulatorWithName:@"PunctuationCount" type:1 depth:1 block:&__block_literal_global_329];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v9];

  v10 = [_UITextInputSessionAccumulator accumulatorWithName:@"Insertion with Alternative" type:1 depth:1 block:&__block_literal_global_331_0];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v10];

  v11 = [_UITextInputSessionAccumulator accumulatorWithName:@"Deletion" type:1 depth:1 block:&__block_literal_global_333_1];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v11];

  v12 = [_UITextInputSessionAccumulator accumulatorWithName:@"Selection Change" type:1 depth:1 block:&__block_literal_global_335];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v12];

  v13 = [_UITextInputSessionAccumulator accumulatorWithName:@"Undo" type:1 depth:1 block:&__block_literal_global_337];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v13];

  v14 = [_UITextInputSessionAccumulator accumulatorWithName:@"Redo" type:1 depth:1 block:&__block_literal_global_339];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v14];

  v15 = [_UITextInputSessionAccumulator accumulatorWithName:@"Replace With Candidate" type:1 depth:1 block:&__block_literal_global_341];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v15];

  v16 = [_UITextInputSessionAccumulator accumulatorWithName:@"Replace With Candidate (case)" type:1 depth:1 block:&__block_literal_global_343];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v16];

  v17 = [_UITextInputSessionAccumulator accumulatorWithName:@"Replace With Latin Candidate" type:1 depth:1 block:&__block_literal_global_345];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v17];

  v18 = [_UITextInputSessionAccumulator accumulatorWithName:@"Replace With Non-Latin Candidate" type:1 depth:1 block:&__block_literal_global_347];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v18];

  v19 = [_UITextInputSessionAccumulator accumulatorWithName:@"Undo after Insertion" type:1 depth:2 block:&__block_literal_global_349];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v19];

  v20 = [_UITextInputSessionAccumulator accumulatorWithName:@"Undo after Deletion" type:1 depth:2 block:&__block_literal_global_351];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v20];

  v21 = [_UITextInputSessionAccumulator accumulatorWithName:@"Consecutive Selection" type:1 depth:2 block:&__block_literal_global_353];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v21];

  v22 = [_UITextInputSessionAccumulator accumulatorWithName:@"Consecutive Cursor" type:1 depth:2 block:&__block_literal_global_355];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v22];

  v23 = [_UITextInputSessionAccumulator accumulatorWithName:@"Consecutive Ranged" type:1 depth:2 block:&__block_literal_global_358];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v23];

  v24 = [_UITextInputSessionAccumulator accumulatorWithName:@"Triple Selection" type:1 depth:3 block:&__block_literal_global_360];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v24];

  v25 = [_UITextInputSessionAccumulator accumulatorWithName:@"Triple Cursor" type:1 depth:3 block:&__block_literal_global_362];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v25];

  v26 = [_UITextInputSessionAccumulator accumulatorWithName:@"Triple Ranged" type:1 depth:3 block:&__block_literal_global_364];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v26];

  v27 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Insertion"];
  v65[0] = v27;
  v28 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Selection Change"];
  v65[1] = v28;
  v29 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Insertion"];
  v65[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  v31 = [_UITextInputSessionMetaAccumulator accumulatorWithName:@"Insertion-Selection-Insertion" accumulators:v30];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v31];

  v32 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Insertion"];
  v64[0] = v32;
  v33 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Consecutive Selection"];
  v64[1] = v33;
  v34 = [(UITextInputSessionActionAnalytics *)self q_copyAccumulatorWithName:@"Insertion"];
  v64[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v36 = [_UITextInputSessionMetaAccumulator accumulatorWithName:@"Insertion-2xSelection-Insertion" accumulators:v35];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v36];

  v37 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Keyboard" type:0 depth:2 block:&__block_literal_global_367];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v37];

  v38 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Emoji" type:0 depthRange:2 block:2, &__block_literal_global_369];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v38];

  v39 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Punctuation" type:0 depthRange:2 block:2, &__block_literal_global_371];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v39];

  v40 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Emoji Edit" type:0 depthRange:2 block:2, &__block_literal_global_373];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v40];

  v41 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Punctuation Edit" type:0 depthRange:2 block:2, &__block_literal_global_375];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v41];

  v42 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation-Selection-Deletion" type:0 depthRange:3 block:1, &__block_literal_global_377];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v42];

  v43 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Whitespace" type:0 depthRange:2 block:2, &__block_literal_global_379];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v43];

  v44 = [_UITextInputSessionAccumulator accumulatorWithName:@"Dictation to Deletion" type:0 depthRange:2 block:2, &__block_literal_global_381];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v44];

  v45 = [_UITextInputSessionAccumulator accumulatorWithName:@"Pencil to Keyboard" type:0 depth:2 block:&__block_literal_global_383];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v45];

  v46 = [_UITextInputSessionAccumulator accumulatorWithName:@"Pencil to Emoji" type:0 depthRange:2 block:2, &__block_literal_global_385];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v46];

  v47 = [_UITextInputSessionAccumulator accumulatorWithName:@"Pencil to Punctuation" type:0 depthRange:2 block:2, &__block_literal_global_387];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v47];

  v48 = [_UITextInputSessionAccumulator accumulatorWithName:@"Pencil to Whitespace" type:0 depthRange:2 block:2, &__block_literal_global_389];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v48];

  v49 = [_UITextInputSessionAccumulator accumulatorWithName:@"Pencil to Deletion" type:0 depth:3 block:&__block_literal_global_391];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v49];

  v50 = [_UITextInputSessionAccumulator accumulatorWithName:@"Keyboard to Pencil" type:0 depth:2 block:&__block_literal_global_393];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v50];

  v51 = [_UITextInputSessionAccumulator accumulatorWithName:@"Keyboard to Dictation" type:0 depth:2 block:&__block_literal_global_395];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v51];

  v52 = [_UITextInputSessionAccumulator accumulatorWithName:@"Camera to Other" type:0 depth:2 block:&__block_literal_global_397];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v52];

  v53 = [_UITextInputSessionAccumulator accumulatorWithName:@"Camera to Deletion" type:0 depthRange:2 block:2, &__block_literal_global_399];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v53];

  v54 = [_UITextInputSessionAccumulator accumulatorWithName:@"Edited Dictation with Keyboard" type:0 depthRange:2 block:2, &__block_literal_global_401];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v54];

  v55 = [_UITextInputSessionAccumulator accumulatorWithName:@"Edited Pencil with Keyboard" type:0 depthRange:2 block:2, &__block_literal_global_403];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v55];

  v56 = [_UITextInputSessionAccumulator accumulatorWithName:@"Edited Keyboard with Pencil" type:0 depthRange:2 block:2, &__block_literal_global_405];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v56];

  v57 = [_UITextInputSessionAccumulator accumulatorWithName:@"Edited Camera with Other" type:0 depthRange:2 block:2, &__block_literal_global_407];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v57];

  v58 = [_UITextInputSessionAccumulator accumulatorWithName:@"KB Suppression False Positive" type:0 depth:2 block:&__block_literal_global_409];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v58];

  v59 = [_UITextInputSessionAccumulator accumulatorWithName:@"KB Suppression False Negative" type:0 depth:2 block:&__block_literal_global_411];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v59];

  v60 = [_UITextInputSessionAccumulator accumulatorWithName:@"Insertion With Pencil" type:0 depth:1 block:&__block_literal_global_413];
  [(UITextInputSessionActionAnalytics *)self q_addAccumulator:v60];

  v61 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v61 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v63 = [_UITextInputSessionDynamicAccumulator accumulatorWithName:@"com.apple.inputAnalytics.accidentalDictation" depthRange:1 block:3, &__block_literal_global_418];
    [(UITextInputSessionActionAnalytics *)self q_addDynamicAccumulator:v63];
  }
}

- (UITextInputSessionActionAnalyticsDelegateSource)delegateSource
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateSource);

  return WeakRetained;
}

uint64_t __45__UITextInputSessionActionAnalytics_didBegin__block_invoke(uint64_t a1)
{
  [*(a1 + 32) q_addActionAndUpdate:*(a1 + 40)];
  v1 = objc_opt_class();

  return [v1 q_notifyStartingObservers];
}

+ (void)q_notifyStartingObservers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = __endingObservers;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didBeginSession];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (UITextInputSessionActionAnalytics)init
{
  v23.receiver = self;
  v23.super_class = UITextInputSessionActionAnalytics;
  v2 = [(UITextInputSessionActionAnalytics *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxDepth = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.UIKit.UITextInputSessionActionAnalytics", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:20];
    recentActions = v3->_recentActions;
    v3->_recentActions = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:100];
    accumulators = v3->_accumulators;
    v3->_accumulators = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:10];
    efficacyAccumulators = v3->_efficacyAccumulators;
    v3->_efficacyAccumulators = v11;

    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    dynamicAccumulators = v3->_dynamicAccumulators;
    v3->_dynamicAccumulators = v13;

    v3->_trackingDuration = 0;
    v3->_allowCursorMovementCounter = 0;
    v3->_overrideSource = 0;
    v3->_useOverrideSourceCounter = 0;
    if (_MergedGlobals_1147)
    {
      [_MergedGlobals_1147 setAnalyticsDelegate:v3];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__UITextInputSessionActionAnalytics_init__block_invoke;
      block[3] = &unk_1E70F3590;
      v22 = v3;
      if (qword_1ED49E6E0 != -1)
      {
        dispatch_once(&qword_1ED49E6E0, block);
      }
    }

    overrideInputModeString = v3->_overrideInputModeString;
    v3->_overrideInputModeString = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_writeAnalytics name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didBegin name:@"UIApplicationDidBecomeActiveNotification" object:0];
    if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
    {
      [defaultCenter addObserver:v3 selector:sel_didDictationEnd name:@"UIDictationControllerDictationDidFinish" object:0];
    }

    v17 = v3->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__UITextInputSessionActionAnalytics_init__block_invoke_63;
    v19[3] = &unk_1E70F3590;
    v20 = v3;
    dispatch_async(v17, v19);
  }

  return v3;
}

void __41__UITextInputSessionActionAnalytics_init__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(getIATextInputActionsAnalyticsClass()) initWithAnalyticsMetadataObserver:*(a1 + 32)];
  v2 = _MergedGlobals_1147;
  _MergedGlobals_1147 = v1;

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = UITextInputSessionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputAnalytics SPI compatible", buf, 2u);
    }
  }

  else
  {
    v4 = UITextInputSessionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputAnalytics SPI not compatible", v5, 2u);
    }

    v3 = _MergedGlobals_1147;
    _MergedGlobals_1147 = 0;
  }
}

- (void)didBegin
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sessionIdentifier = [(UITextInputSessionActionAnalytics *)self sessionIdentifier];
    *buf = 138412290;
    v14 = sessionIdentifier;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didBegin: sessionIdentifier=%@", buf, 0xCu);
  }

  delegateSource = [(UITextInputSessionActionAnalytics *)self delegateSource];
  _sessionIdentifier = [delegateSource _sessionIdentifier];
  [(UITextInputSessionActionAnalytics *)self setSessionIdentifier:_sessionIdentifier];

  v6 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asBegan = [v6 asBegan];

  [_MergedGlobals_1147 didSessionBegin];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__UITextInputSessionActionAnalytics_didBegin__block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = asBegan;
  v9 = asBegan;
  dispatch_async(queue, v11);
}

- (int64_t)_getActiveTextInputSource
{
  delegateSource = [(UITextInputSessionActionAnalytics *)self delegateSource];
  v4 = objc_opt_respondsToSelector();

  delegateSource2 = [(UITextInputSessionActionAnalytics *)self delegateSource];
  v6 = delegateSource2;
  if (v4)
  {
    _overrideTextInputSource = [delegateSource2 _overrideTextInputSource];
  }

  else
  {
    _delegateAsResponder = [delegateSource2 _delegateAsResponder];

    if (objc_opt_respondsToSelector())
    {
      _overrideTextInputSource = [_delegateAsResponder _textInputSource];
    }

    else
    {
      _overrideTextInputSource = 0;
    }

    v6 = _delegateAsResponder;
  }

  return _overrideTextInputSource;
}

- (id)getAppBundleId
{
  if (+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") && +[UIKeyboard isKeyboardProcess])
  {
    v2 = +[UIKeyboard keyboardBundleIdentifier];
  }

  else
  {
    v2 = _UIMainBundleIdentifier();
  }

  return v2;
}

- (int64_t)source
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_useOverrideSourceCounter < 1)
  {
    _getActiveTextInputSource = [(UITextInputSessionActionAnalytics *)self _getActiveTextInputSource];
    v4 = _UITextInputActionsSourceFromTextInputSource(_getActiveTextInputSource);
    v6 = UITextInputSessionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [UITextInputSessionActionAnalytics stringValueForSource:_getActiveTextInputSource];
      v10 = 138478083;
      v11 = v9;
      v12 = 2048;
      v13 = v4;
      _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] source - returning source '%{private}@' -> %lu", &v10, 0x16u);
    }
  }

  else
  {
    v3 = UITextInputSessionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = _UITextInputActionsSourceString(self->_overrideSource);
      v10 = 138477827;
      v11 = v8;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] source - returning override '%{private}@'", &v10, 0xCu);
    }

    return self->_overrideSource;
  }

  return v4;
}

- (int64_t)flagOptions
{
  v2 = +[UIKeyboard isShowingEmojiSearch];
  v3 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v3 inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  if (hasAsyncCapableInputDelegate)
  {
    return v2 | 4;
  }

  else
  {
    return v2;
  }
}

- (id)appBundleId
{
  v7 = *MEMORY[0x1E69E9840];
  getAppBundleId = [(UITextInputSessionActionAnalytics *)self getAppBundleId];
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138477827;
    v6 = getAppBundleId;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] appBundleId - returning '%{private}@'", &v5, 0xCu);
  }

  return getAppBundleId;
}

- (id)processBundleId
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIMainBundleIdentifier();
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138477827;
    v6 = v2;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] processBundleId - returning '%{private}@'", &v5, 0xCu);
  }

  return v2;
}

+ (id)stringValueForSource:(int64_t)source
{
  if ((source - 1) > 6)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E70F8798[source - 1];
  }
}

+ (id)allowedValuesForTextInputSource
{
  if (qword_1ED49CA20 != -1)
  {
    dispatch_once(&qword_1ED49CA20, &__block_literal_global_73);
  }

  v3 = _MergedGlobals_1013;

  return v3;
}

void __77__UITextInputSessionActionAnalytics_Default__allowedValuesForTextInputSource__block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"Unspecified";
  v2[1] = @"KeyboardTap";
  v2[2] = @"KeyboardHardware";
  v2[3] = @"KeyboardThirdParty";
  v2[4] = @"KeyboardPath";
  v2[5] = @"KeyboardCamera";
  v2[6] = @"Pencil";
  v2[7] = @"Dictation";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = _MergedGlobals_1013;
  _MergedGlobals_1013 = v0;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asBegan];

  return v3 != 0;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asDictationBegan];

  if (v3)
  {
    v4 = [v3 dictationBeganCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asDictationBegan];

  if (v3)
  {
    v4 = [v3 multiModalDictationBeganCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asDictationBegan];

  if (v3)
  {
    v4 = [v3 modelessUsedAtLeastOnceCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asInsertion];

  if (v3)
  {
    v4 = [v3 insertedTextLength];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asInsertion];

  if (v3)
  {
    v4 = [v3 insertedEmojiCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asInsertion];

  if (v3)
  {
    v4 = [v3 insertedPunctuationCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asInsertion];

  if (v3)
  {
    v4 = [v3 withAlternativesCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asDeletion];

  if (v3)
  {
    v4 = [v3 removedTextLength];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asSelection];

  [v3 relativeRangeBefore];
  v5 = v4;
  [v3 rangeAfter];
  v7 = v6;
  v8 = [v3 relativeRangeBefore];
  v10 = v9;
  v11 = [v3 rangeAfter];
  if (v5 != v7)
  {
    if (v10 <= v12)
    {
      v10 = v12;
    }

    [v3 relativeRangeBefore];
    v15 = v14;
    [v3 rangeAfter];
    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    goto LABEL_15;
  }

  if (v8 != v11)
  {
    v18 = [v3 relativeRangeBefore];
    v19 = [v3 rangeAfter];
    if (v18 <= v19)
    {
      v10 = v19;
    }

    else
    {
      v10 = v18;
    }

    v20 = [v3 relativeRangeBefore];
    v21 = [v3 rangeAfter];
    if (v20 >= v21)
    {
      v17 = v21;
    }

    else
    {
      v17 = v20;
    }

LABEL_15:
    v13 = v10 - v17;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asUndo];

  return v3 != 0;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asRedo];

  return v3 != 0;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asReplaceWithCandidate];

  return v3 != 0;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asReplaceWithCandidate];

  v4 = [v3 replaceWithCandidateType] == 1;
  return v4;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asReplaceWithCandidate];

  v4 = [v3 replaceWithCandidateType] == 2;
  return v4;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asReplaceWithCandidate];

  v4 = [v3 replaceWithCandidateType] == 3;
  return v4;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asUndo];

  if (!v4 || (v5 = 1, [v2 objectAtIndex:1], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "asInsertion"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7, !v7))
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asUndo];

  if (!v4 || (v5 = 1, [v2 objectAtIndex:1], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "asDeletion"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7, !v7))
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asSelection];

  if (!v4 || (v5 = 1, [v2 objectAtIndex:1], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "asSelection"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7, !v7))
  {
    v5 = 0;
  }

  return v5;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asSelection];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_21;
  v7[3] = &unk_1E70F8730;
  v7[4] = &v8;
  [v2 enumerateObjectsUsingBlock:v7];
  v5 = v9[3] == 1;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_21(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asSelection];
  if (!v6 || (v9 = v6, [v6 relativeRangeBefore], v6 = v9, v7) || (objc_msgSend(v9, "rangeAfter"), v6 = v9, v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asSelection];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_23;
  v7[3] = &unk_1E70F8730;
  v7[4] = &v8;
  [v2 enumerateObjectsUsingBlock:v7];
  v5 = v9[3] == 1;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_23(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asSelection];
  if (v6 && (v9 = v6, [v6 relativeRangeBefore], v6 = v9, v7) && (objc_msgSend(v9, "rangeAfter"), v6 = v9, v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 2;
    *a4 = 1;
  }
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_25;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_25(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asSelection];
  v7 = *(*(a1 + 32) + 8);
  v8 = 1;
  if (!v6)
  {
    *a4 = 1;
    v8 = 2;
  }

  *(v7 + 24) = v8;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_27;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_27(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asSelection];
  if (!v6 || (v9 = v6, [v6 relativeRangeBefore], v6 = v9, v7) || (objc_msgSend(v9, "rangeAfter"), v6 = v9, v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_29;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_29(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asSelection];
  if (v6 && (v9 = v6, [v6 relativeRangeBefore], v6 = v9, v7) && (objc_msgSend(v9, "rangeAfter"), v6 = v9, v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 2;
    *a4 = 1;
  }
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 asKeyboardDockItemButtonPress];
  v5 = [v4 buttonType];
  v6 = [v4 buttonType] == 2 && objc_msgSend(v4, "buttonPressResult") == 2;
  v7 = [v3 source];
  if ((v7 - 4) >= 5 && v7 != 1 || v5 == 1 || v6 || (v8 = 1, [v2 objectAtIndex:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "source"), v9, v10 != 2))
  {
    v8 = 0;
  }

  return v8;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_31(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_32;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_32(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v11 = *(a1 + 32);
    v9 = (a1 + 32);
    v10 = v11;
    v12 = *(*(v11 + 8) + 24);
    v13 = a3 != 0;
    if (a3)
    {
      v14 = v18;
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = [v18 changedContent];
      v10 = *v9;
      v16 = *(*v9 + 8);
      if (!v15)
      {
        *(v16 + 24) = 0;
        goto LABEL_8;
      }

      v12 = *(v16 + 24);
      v13 = 1;
    }

    v14 = v18;
LABEL_16:
    if (!v13 || v12)
    {
      goto LABEL_7;
    }

    if ([v14 source] != 2)
    {
      goto LABEL_6;
    }

    v17 = [v18 changedContent];
    v10 = *v9;
    if (!v17)
    {
      goto LABEL_7;
    }

    *(*(v10 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (([v7 options] & 1) == 0 || objc_msgSend(v18, "source") == 2)
  {
    v9 = (a1 + 32);
LABEL_6:
    v10 = *v9;
LABEL_7:
    *(*(v10 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_34;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_34(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v11 = *(a1 + 32);
    v9 = (a1 + 32);
    v10 = v11;
    v12 = *(*(v11 + 8) + 24);
    v13 = a3 != 0;
    if (a3)
    {
      v14 = v18;
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = [v18 changedContent];
      v10 = *v9;
      v16 = *(*v9 + 8);
      if (!v15)
      {
        *(v16 + 24) = 0;
        goto LABEL_8;
      }

      v12 = *(v16 + 24);
      v13 = 1;
    }

    v14 = v18;
LABEL_16:
    if (!v13 || v12)
    {
      goto LABEL_7;
    }

    if ([v14 source] != 2)
    {
      goto LABEL_6;
    }

    v17 = [v18 changedContent];
    v10 = *v9;
    if (!v17)
    {
      goto LABEL_7;
    }

    *(*(v10 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (([v7 options] & 2) == 0 || objc_msgSend(v18, "source") == 2)
  {
    v9 = (a1 + 32);
LABEL_6:
    v10 = *v9;
LABEL_7:
    *(*(v10 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_35(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_36;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_36(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 asDeletion];
  v8 = v7;
  if (a3 || !v7)
  {
    v11 = *(a1 + 32);
    v9 = (a1 + 32);
    v10 = v11;
    v12 = *(*(v11 + 8) + 24);
    v13 = a3 != 0;
    if (a3)
    {
      v14 = v18;
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = [v18 changedContent];
      v10 = *v9;
      v16 = *(*v9 + 8);
      if (!v15)
      {
        *(v16 + 24) = 0;
        goto LABEL_8;
      }

      v12 = *(v16 + 24);
      v13 = 1;
    }

    v14 = v18;
LABEL_16:
    if (!v13 || v12)
    {
      goto LABEL_7;
    }

    if ([v14 source] != 2)
    {
      goto LABEL_6;
    }

    v17 = [v18 changedContent];
    v10 = *v9;
    if (!v17)
    {
      goto LABEL_7;
    }

    *(*(v10 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (([v7 options] & 1) == 0 || objc_msgSend(v18, "source") == 2)
  {
    v9 = (a1 + 32);
LABEL_6:
    v10 = *v9;
LABEL_7:
    *(*(v10 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_37(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_38;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_38(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 asDeletion];
  v8 = v7;
  if (a3 || !v7)
  {
    v11 = *(a1 + 32);
    v9 = (a1 + 32);
    v10 = v11;
    v12 = *(*(v11 + 8) + 24);
    v13 = a3 != 0;
    if (a3)
    {
      v14 = v18;
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = [v18 changedContent];
      v10 = *v9;
      v16 = *(*v9 + 8);
      if (!v15)
      {
        *(v16 + 24) = 0;
        goto LABEL_8;
      }

      v12 = *(v16 + 24);
      v13 = 1;
    }

    v14 = v18;
LABEL_16:
    if (!v13 || v12)
    {
      goto LABEL_7;
    }

    if ([v14 source] != 2)
    {
      goto LABEL_6;
    }

    v17 = [v18 changedContent];
    v10 = *v9;
    if (!v17)
    {
      goto LABEL_7;
    }

    *(*(v10 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (([v7 options] & 2) == 0 || objc_msgSend(v18, "source") == 2)
  {
    v9 = (a1 + 32);
LABEL_6:
    v10 = *v9;
LABEL_7:
    *(*(v10 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_39(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_40;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v14 = v7;
    if ([v7 source] == 2 && objc_msgSend(v14, "changedContent"))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_8;
    }

    v9 = (a1 + 32);
    goto LABEL_10;
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v10;
  if (!*(*(v10 + 8) + 24))
  {
    v14 = v7;
    v11 = [v7 asSelection];

    v8 = *v9;
    v12 = *(*v9 + 8);
    if (v11)
    {
      *(v12 + 24) = 0;
LABEL_8:
      v7 = v14;
      goto LABEL_12;
    }

    v7 = v14;
    if (!*(v12 + 24))
    {
      if ([v14 source] == 2)
      {
        v13 = [v14 changedContent];
        v8 = *v9;
        if (v13)
        {
          *(*(v8 + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_8;
        }

        v7 = v14;
        goto LABEL_11;
      }

LABEL_10:
      v7 = v14;
      v8 = *v9;
    }
  }

LABEL_11:
  *(*(v8 + 8) + 24) = 2;
  *a4 = 1;
LABEL_12:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_42;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_42(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v11 = *(a1 + 32);
    v9 = (a1 + 32);
    v10 = v11;
    v12 = *(*(v11 + 8) + 24);
    v13 = a3 != 0;
    if (a3)
    {
      v14 = v18;
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = [v18 changedContent];
      v10 = *v9;
      v16 = *(*v9 + 8);
      if (!v15)
      {
        *(v16 + 24) = 0;
        goto LABEL_8;
      }

      v12 = *(v16 + 24);
      v13 = 1;
    }

    v14 = v18;
LABEL_16:
    if (!v13 || v12)
    {
      goto LABEL_7;
    }

    if ([v14 source] != 2)
    {
      goto LABEL_6;
    }

    v17 = [v18 changedContent];
    v10 = *v9;
    if (!v17)
    {
      goto LABEL_7;
    }

    *(*(v10 + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (([v7 options] & 4) == 0 || objc_msgSend(v18, "source") == 2)
  {
    v9 = (a1 + 32);
LABEL_6:
    v10 = *v9;
LABEL_7:
    *(*(v10 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_8;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_43(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_44;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v17 = v7;
    v14 = [v7 asDeletion];
    if (v14)
    {
      v15 = v14;
      v16 = [v17 source];

      if (v16 != 2)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        goto LABEL_15;
      }
    }

    v9 = (a1 + 32);
    goto LABEL_11;
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v10;
  if (*(*(v10 + 8) + 24))
  {
    goto LABEL_12;
  }

  v17 = v7;
  v11 = [v7 changedContent];
  v8 = *v9;
  v12 = *(*v9 + 8);
  if ((v11 & 1) == 0)
  {
    *(v12 + 24) = 0;
    goto LABEL_15;
  }

  v7 = v17;
  if (*(v12 + 24))
  {
LABEL_12:
    *(*(v8 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_16;
  }

  if ([v17 source] != 2)
  {
LABEL_11:
    v7 = v17;
    v8 = *v9;
    goto LABEL_12;
  }

  v13 = [v17 changedContent];
  v8 = *v9;
  if (!v13)
  {
    v7 = v17;
    goto LABEL_12;
  }

  *(*(v8 + 8) + 24) = 1;
  *a4 = 1;
LABEL_15:
  v7 = v17;
LABEL_16:
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 source];
  v5 = (v4 - 4) < 5 || v4 == 1;
  if (!v5 || (v6 = 1, [v2 objectAtIndex:1], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "source"), v7, v8 != 3))
  {
    v6 = 0;
  }

  return v6;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_46(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_47;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_47(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v10 = *(a1 + 32);
    v11 = *(*(v10 + 8) + 24);
    v12 = a3 != 0;
    if (a3 && !v11)
    {
      v13 = [v16 changedContent];
      v10 = *(a1 + 32);
      v14 = *(v10 + 8);
      if (!v13)
      {
        *(v14 + 24) = 0;
        goto LABEL_17;
      }

      v11 = *(v14 + 24);
      v12 = 1;
    }

    if (v12 && !v11)
    {
      if ([v16 source] == 3)
      {
        v15 = [v16 changedContent];
        v10 = *(a1 + 32);
        if (v15)
        {
          *(*(v10 + 8) + 24) = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v10 = *(a1 + 32);
      }
    }
  }

  else
  {
    v9 = [v7 options];
    v10 = *(a1 + 32);
    if (v9)
    {
      *(*(v10 + 8) + 24) = 0;
      goto LABEL_17;
    }
  }

  *(*(v10 + 8) + 24) = 2;
  *a4 = 1;
LABEL_17:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_48(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_49;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_49(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v10 = *(a1 + 32);
    v11 = *(*(v10 + 8) + 24);
    v12 = a3 != 0;
    if (a3 && !v11)
    {
      v13 = [v16 changedContent];
      v10 = *(a1 + 32);
      v14 = *(v10 + 8);
      if (!v13)
      {
        *(v14 + 24) = 0;
        goto LABEL_17;
      }

      v11 = *(v14 + 24);
      v12 = 1;
    }

    if (v12 && !v11)
    {
      if ([v16 source] == 3)
      {
        v15 = [v16 changedContent];
        v10 = *(a1 + 32);
        if (v15)
        {
          *(*(v10 + 8) + 24) = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v10 = *(a1 + 32);
      }
    }
  }

  else
  {
    v9 = [v7 options];
    v10 = *(a1 + 32);
    if ((v9 & 2) != 0)
    {
      *(*(v10 + 8) + 24) = 0;
      goto LABEL_17;
    }
  }

  *(*(v10 + 8) + 24) = 2;
  *a4 = 1;
LABEL_17:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_51;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_51(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 asInsertion];
  v8 = v7;
  if (a3 || !v7)
  {
    v10 = *(a1 + 32);
    v11 = *(*(v10 + 8) + 24);
    v12 = a3 != 0;
    if (a3 && !v11)
    {
      v13 = [v16 changedContent];
      v10 = *(a1 + 32);
      v14 = *(v10 + 8);
      if (!v13)
      {
        *(v14 + 24) = 0;
        goto LABEL_17;
      }

      v11 = *(v14 + 24);
      v12 = 1;
    }

    if (v12 && !v11)
    {
      if ([v16 source] == 3)
      {
        v15 = [v16 changedContent];
        v10 = *(a1 + 32);
        if (v15)
        {
          *(*(v10 + 8) + 24) = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v10 = *(a1 + 32);
      }
    }
  }

  else
  {
    v9 = [v7 options];
    v10 = *(a1 + 32);
    if ((v9 & 4) != 0)
    {
      *(*(v10 + 8) + 24) = 0;
      goto LABEL_17;
    }
  }

  *(*(v10 + 8) + 24) = 2;
  *a4 = 1;
LABEL_17:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_53;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_53(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v13 = v7;
    v12 = [v7 asDeletion];

    v8 = *(a1 + 32);
    if (v12)
    {
      *(*(v8 + 8) + 24) = 0;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  if (!*(*(v8 + 8) + 24))
  {
    v13 = v7;
    v9 = [v7 changedContent];
    v8 = *(a1 + 32);
    v10 = *(v8 + 8);
    if ((v9 & 1) == 0)
    {
      *(v10 + 24) = 0;
      goto LABEL_11;
    }

    v7 = v13;
    if (!*(v10 + 24))
    {
      if ([v13 source] == 3)
      {
        v11 = [v13 changedContent];
        v8 = *(a1 + 32);
        if (v11)
        {
          *(*(v8 + 8) + 24) = 1;
LABEL_11:
          v7 = v13;
          goto LABEL_15;
        }
      }

      else
      {
        v8 = *(a1 + 32);
      }

LABEL_13:
      v7 = v13;
    }
  }

  *(*(v8 + 8) + 24) = 2;
  *a4 = 1;
LABEL_15:
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_54(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  if ([v3 source] == 3)
  {
    v4 = [v2 objectAtIndex:1];
    v5 = [v4 source];
    if ((v5 - 1) > 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18A678840[v5 - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_55(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  if ([v3 source] == 2)
  {
    v4 = [v2 objectAtIndex:1];
    v5 = [v4 source];
    if ((v5 - 1) > 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_18A678840[v5 - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_56(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  if ([v3 source] != 7 || (v4 = 1, objc_msgSend(v2, "objectAtIndex:", 1), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "source"), v5, v6 == 7))
  {
    v4 = 0;
  }

  return v4;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_57(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_58;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_58(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v13 = v7;
    v12 = [v7 asDeletion];

    v8 = *(a1 + 32);
    if (v12)
    {
      *(*(v8 + 8) + 24) = 0;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  if (!*(*(v8 + 8) + 24))
  {
    v13 = v7;
    v9 = [v7 changedContent];
    v8 = *(a1 + 32);
    v10 = *(v8 + 8);
    if ((v9 & 1) == 0)
    {
      *(v10 + 24) = 0;
      goto LABEL_11;
    }

    v7 = v13;
    if (!*(v10 + 24))
    {
      if ([v13 source] == 7)
      {
        v11 = [v13 changedContent];
        v8 = *(a1 + 32);
        if (v11)
        {
          *(*(v8 + 8) + 24) = 1;
LABEL_11:
          v7 = v13;
          goto LABEL_15;
        }
      }

      else
      {
        v8 = *(a1 + 32);
      }

LABEL_13:
      v7 = v13;
    }
  }

  *(*(v8 + 8) + 24) = 2;
  *a4 = 1;
LABEL_15:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_59(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_60;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v16 = v7;
    v14 = [v7 source];
    v15 = (v14 - 4) < 5 || v14 == 1;
    if (v15 && [v16 changedContent])
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_19;
    }

    v9 = (a1 + 32);
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v10;
  if (*(*(v10 + 8) + 24))
  {
    goto LABEL_17;
  }

  v16 = v7;
  v11 = [v7 changedContent];
  v8 = *v9;
  v12 = *(*v9 + 8);
  if ((v11 & 1) == 0)
  {
    *(v12 + 24) = 0;
    goto LABEL_19;
  }

  v7 = v16;
  if (*(v12 + 24))
  {
LABEL_17:
    *(*(v8 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_20;
  }

  if ([v16 source] != 2)
  {
LABEL_16:
    v7 = v16;
    v8 = *v9;
    goto LABEL_17;
  }

  v13 = [v16 changedContent];
  v8 = *v9;
  if (!v13)
  {
    v7 = v16;
    goto LABEL_17;
  }

  *(*(v8 + 8) + 24) = 1;
LABEL_19:
  v7 = v16;
LABEL_20:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_61(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_62;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_62(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v16 = v7;
    v14 = [v7 source];
    v15 = (v14 - 4) < 5 || v14 == 1;
    if (v15 && [v16 changedContent])
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_19;
    }

    v9 = (a1 + 32);
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v10;
  if (*(*(v10 + 8) + 24))
  {
    goto LABEL_17;
  }

  v16 = v7;
  v11 = [v7 changedContent];
  v8 = *v9;
  v12 = *(*v9 + 8);
  if ((v11 & 1) == 0)
  {
    *(v12 + 24) = 0;
    goto LABEL_19;
  }

  v7 = v16;
  if (*(v12 + 24))
  {
LABEL_17:
    *(*(v8 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_20;
  }

  if ([v16 source] != 3)
  {
LABEL_16:
    v7 = v16;
    v8 = *v9;
    goto LABEL_17;
  }

  v13 = [v16 changedContent];
  v8 = *v9;
  if (!v13)
  {
    v7 = v16;
    goto LABEL_17;
  }

  *(*(v8 + 8) + 24) = 1;
LABEL_19:
  v7 = v16;
LABEL_20:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_63(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_64;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (*(*(v10 + 8) + 24))
    {
      goto LABEL_14;
    }

    v15 = v7;
    v11 = [v7 changedContent];
    v8 = *v9;
    v12 = *(*v9 + 8);
    if ((v11 & 1) == 0)
    {
      *(v12 + 24) = 0;
      goto LABEL_16;
    }

    v7 = v15;
    if (*(v12 + 24))
    {
LABEL_14:
      *(*(v8 + 8) + 24) = 2;
      *a4 = 1;
      goto LABEL_17;
    }

    v13 = [v15 source];
    if ((v13 - 4) >= 5 && v13 != 1)
    {
      goto LABEL_12;
    }

    v14 = [v15 changedContent];
    v8 = *v9;
    if (!v14)
    {
LABEL_13:
      v7 = v15;
      goto LABEL_14;
    }

    *(*(v8 + 8) + 24) = 1;
  }

  else
  {
    v15 = v7;
    if ([v7 source] != 3 || !objc_msgSend(v15, "changedContent"))
    {
      v9 = (a1 + 32);
LABEL_12:
      v8 = *v9;
      goto LABEL_13;
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

LABEL_16:
  v7 = v15;
LABEL_17:
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_65(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_66;
  v5[3] = &unk_1E70F8730;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_66(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!a3)
  {
    v14 = v7;
    if ([v7 source] == 7 && objc_msgSend(v14, "changedContent"))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_15;
    }

    v9 = (a1 + 32);
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v10;
  if (*(*(v10 + 8) + 24))
  {
    goto LABEL_13;
  }

  v14 = v7;
  v11 = [v7 changedContent];
  v8 = *v9;
  v12 = *(*v9 + 8);
  if ((v11 & 1) == 0)
  {
    *(v12 + 24) = 0;
    goto LABEL_15;
  }

  v7 = v14;
  if (*(v12 + 24))
  {
LABEL_13:
    *(*(v8 + 8) + 24) = 2;
    *a4 = 1;
    goto LABEL_16;
  }

  if ([v14 source] == 7)
  {
LABEL_12:
    v7 = v14;
    v8 = *v9;
    goto LABEL_13;
  }

  v13 = [v14 changedContent];
  v8 = *v9;
  if (!v13)
  {
    v7 = v14;
    goto LABEL_13;
  }

  *(*(v8 + 8) + 24) = 1;
LABEL_15:
  v7 = v14;
LABEL_16:
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_67(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 source];
  v5 = (v4 - 4) < 5 || v4 == 1;
  if (!v5 || ([v3 changedContent] & 1) != 0)
  {
    goto LABEL_11;
  }

  v6 = [v2 objectAtIndex:1];
  if ([v6 source] != 3)
  {

    goto LABEL_11;
  }

  v7 = [v6 asBegan];

  if (!v7)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

uint64_t __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_68(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  if ([v3 source] != 3)
  {
    goto LABEL_7;
  }

  v4 = [v2 objectAtIndex:1];
  v5 = [v4 source];
  if ((v5 - 4) >= 5 && v5 != 1)
  {

    goto LABEL_7;
  }

  v6 = [v4 asBegan];

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

BOOL __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_69(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  v3 = [v2 asInsertion];

  v5 = [v3 source] == 3 && v3 != 0 && objc_msgSend(v3, "insertedTextLength") != 0;
  return v5;
}

id __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_70(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = UITextInputSessionAccidentalDictationCheckForDictationResult(v2);
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = _UITextInputSessionAccidentalDictationOutcomeString([v4 result]);
    *buf = 138412546;
    v19 = @"com.apple.inputAnalytics.accidentalDictation";
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionDefaultAnalytics][%@] increaseWithActions received result %@ for dictation key", buf, 0x16u);
  }

  v6 = UITextInputSessionAccidentalDictationGetAnalyticsPayloadForResult(v2, v4);
  v7 = v6;
  if (v6 && [v6 count])
  {
    v17 = v7;
    AnalyticsSendEventLazy();
    [v3 addObject:v17];
  }

  v8 = UITextInputSessionAccidentalDictationCheckForGlobeResult(v2);
  v9 = UITextInputSessionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = _UITextInputSessionAccidentalDictationOutcomeString([v8 result]);
    *buf = 138412546;
    v19 = @"com.apple.inputAnalytics.accidentalDictation";
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionDefaultAnalytics][%@] increaseWithActions received result %@ for globe key", buf, 0x16u);
  }

  v10 = UITextInputSessionAccidentalDictationGetAnalyticsPayloadForResult(v2, v8);
  v11 = v10;
  if (v10 && [v10 count])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = v11;
    AnalyticsSendEventLazy();
    [v3 addObject:{v16, v15, 3221225472, __69__UITextInputSessionActionAnalytics_Default__q_setupDefaultAnalytics__block_invoke_422, &unk_1E70F8778}];
  }

  return v3;
}

+ (void)addEndingObserver:(id)observer
{
  observerCopy = observer;
  v4 = __endingObservers;
  v7 = observerCopy;
  if (!__endingObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = __endingObservers;
    __endingObservers = weakObjectsHashTable;

    observerCopy = v7;
    v4 = __endingObservers;
  }

  [v4 addObject:observerCopy];
}

+ (void)q_notifyEndingObserversWithSessionAnalytics:(id)analytics
{
  v21 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = __endingObservers;
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
        matchingAccumulatorNames = [v9 matchingAccumulatorNames];
        v11 = analyticsCopy[3];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __81__UITextInputSessionActionAnalytics_q_notifyEndingObserversWithSessionAnalytics___block_invoke;
        v13[3] = &unk_1E710C5A0;
        v14 = matchingAccumulatorNames;
        v15 = v9;
        v12 = matchingAccumulatorNames;
        [v11 enumerateObjectsUsingBlock:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void __81__UITextInputSessionActionAnalytics_q_notifyEndingObserversWithSessionAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__UITextInputSessionActionAnalytics_q_notifyEndingObserversWithSessionAnalytics___block_invoke_2;
    v6[3] = &unk_1E710C578;
    v6[4] = *(a1 + 40);
    v7 = v3;
    [v7 enumerateAnalytics:v6];
  }
}

void __81__UITextInputSessionActionAnalytics_q_notifyEndingObserversWithSessionAnalytics___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    [v3 didEndMatchingAccumulatorName:v4];
  }
}

+ (id)sharedPunctuationCharacterSet
{
  if (qword_1ED49E6D8 != -1)
  {
    dispatch_once(&qword_1ED49E6D8, &__block_literal_global_314);
  }

  v3 = qword_1ED49E6D0;

  return v3;
}

void __66__UITextInputSessionActionAnalytics_sharedPunctuationCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v1 = qword_1ED49E6D0;
  qword_1ED49E6D0 = v0;
}

void __41__UITextInputSessionActionAnalytics_init__block_invoke_63(uint64_t a1)
{
  v8[10] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) q_setupDefaultAnalytics];
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8[0] = @"DictationBegan";
  v8[1] = @"Insertion";
  v8[2] = @"EmojiCount";
  v8[3] = @"Dictation to Keyboard";
  v8[4] = @"Dictation to Emoji";
  v8[5] = @"Dictation to Punctuation";
  v8[6] = @"Dictation to Whitespace";
  v8[7] = @"Dictation to Deletion";
  v8[8] = @"ModelessUsedAtLeastOnce";
  v8[9] = @"PunctuationCount";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:10];
  v4 = [v2 initWithArray:v3];

  [*(a1 + 32) q_setSeparateCycleAccumulatorNames:v4];
  v5 = [*(a1 + 32) delegateSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegateSource];
    [v7 _didFinishInit];
  }
}

- (UITextInputSessionActionAnalytics)initWithEventHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(UITextInputSessionActionAnalytics *)self init];
  v6 = [objc_alloc(getIATextInputActionsAnalyticsClass()) initWithAnalyticsMetadataObserver:v5 withEventHandler:handlerCopy];

  v7 = _MergedGlobals_1147;
  _MergedGlobals_1147 = v6;

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputAnalytics SPI compatible", buf, 2u);
    }
  }

  else
  {
    v9 = UITextInputSessionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] inputAnalytics SPI not compatible", v11, 2u);
    }

    v8 = _MergedGlobals_1147;
    _MergedGlobals_1147 = 0;
  }

  return v5;
}

- (void)decrementAllowCursorMovementCount
{
  allowCursorMovementCounter = self->_allowCursorMovementCounter;
  if (allowCursorMovementCounter)
  {
    self->_allowCursorMovementCounter = allowCursorMovementCounter - 1;
  }
}

- (void)enumerateAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = analyticsCopy;
  if (analyticsCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__UITextInputSessionActionAnalytics_enumerateAnalytics___block_invoke;
    v7[3] = &unk_1E70F37C0;
    v7[4] = self;
    v8 = analyticsCopy;
    dispatch_async(queue, v7);
  }
}

void __56__UITextInputSessionActionAnalytics_enumerateAnalytics___block_invoke(uint64_t a1)
{
  [*(a1 + 32) q_flushRecentActions];
  v2 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UITextInputSessionActionAnalytics_enumerateAnalytics___block_invoke_2;
  v8[3] = &unk_1E710C5C8;
  v9 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v8];
  [objc_opt_class() q_notifyEndingObserversWithSessionAnalytics:*(a1 + 32)];
  v3 = [*(a1 + 32) delegateSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegateSource];
    [v5 _didEndEnumeratingAnalytics];
  }

  v6 = UITextInputSessionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] enumerateAnalytics: Completed queued publishing", v7, 2u);
  }
}

- (id)allAccumulatorNames
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_accumulators, "count")}];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__UITextInputSessionActionAnalytics_allAccumulatorNames__block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __56__UITextInputSessionActionAnalytics_allAccumulatorNames__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) name];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)enumerateSeparateCycleAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = analyticsCopy;
  if (analyticsCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__UITextInputSessionActionAnalytics_enumerateSeparateCycleAnalytics___block_invoke;
    v7[3] = &unk_1E70F37C0;
    v7[4] = self;
    v8 = analyticsCopy;
    dispatch_async(queue, v7);
  }
}

void __69__UITextInputSessionActionAnalytics_enumerateSeparateCycleAnalytics___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__UITextInputSessionActionAnalytics_enumerateSeparateCycleAnalytics___block_invoke_2;
  v6[3] = &unk_1E710C5F0;
  v6[4] = v2;
  v7 = v1;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = UITextInputSessionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] enumerateSeparateCycleAnalytics: Completed queued publishing", v5, 2u);
  }
}

void __69__UITextInputSessionActionAnalytics_enumerateSeparateCycleAnalytics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6 = v3;
  v5 = [v3 name];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [v6 enumerateAnalytics:*(a1 + 40)];
  }
}

- (id)allEfficacyAccumulatorNames
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_efficacyAccumulators, "count")}];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UITextInputSessionActionAnalytics_allEfficacyAccumulatorNames__block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __64__UITextInputSessionActionAnalytics_allEfficacyAccumulatorNames__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) name];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)writeAnalytics
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sessionIdentifier = [(UITextInputSessionActionAnalytics *)self sessionIdentifier];
    *buf = 138412290;
    v8 = sessionIdentifier;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] writeAnalytics for sessionIdentifier=%@", buf, 0xCu);
  }

  [(UITextInputSessionActionAnalytics *)self didSessionEnd];
  [UIKBAnalyticsDispatcher sessionAnalyticsEnded:self];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UITextInputSessionActionAnalytics_writeAnalytics__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __51__UITextInputSessionActionAnalytics_writeAnalytics__block_invoke(uint64_t a1)
{
  v2 = UITextInputSessionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] writeAnalytics: queued accumulator reset starting", v4, 2u);
  }

  [*(*(a1 + 32) + 24) enumerateObjectsUsingBlock:&__block_literal_global_74_1];
  [*(*(a1 + 32) + 32) enumerateObjectsUsingBlock:&__block_literal_global_77_2];
  return [*(*(a1 + 32) + 40) enumerateObjectsUsingBlock:&__block_literal_global_80];
}

- (void)addAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__UITextInputSessionActionAnalytics_addAccumulator___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = accumulatorCopy;
  v6 = accumulatorCopy;
  dispatch_async(queue, v7);
}

- (void)q_addAccumulator:(id)accumulator
{
  maxDepth = self->_maxDepth;
  accumulatorCopy = accumulator;
  depthRange = [accumulatorCopy depthRange];
  v7 = depthRange + v6;
  if (maxDepth > depthRange + v6)
  {
    v7 = maxDepth;
  }

  self->_maxDepth = v7;
  [(NSMutableSet *)self->_accumulators addObject:accumulatorCopy];
}

- (id)q_copyAccumulatorWithName:(id)name
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__114;
  v19 = __Block_byref_object_dispose__114;
  v20 = 0;
  accumulators = self->_accumulators;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __63__UITextInputSessionActionAnalytics_q_copyAccumulatorWithName___block_invoke;
  v12 = &unk_1E710C678;
  v6 = nameCopy;
  v13 = v6;
  v14 = &v15;
  [(NSMutableSet *)accumulators enumerateObjectsWithOptions:2 usingBlock:&v9];
  v7 = [v16[5] copy];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __63__UITextInputSessionActionAnalytics_q_copyAccumulatorWithName___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 name];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)addEfficacyAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__UITextInputSessionActionAnalytics_addEfficacyAccumulator___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = accumulatorCopy;
  v6 = accumulatorCopy;
  dispatch_async(queue, v7);
}

- (void)addDynamicAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__UITextInputSessionActionAnalytics_addDynamicAccumulator___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = accumulatorCopy;
  v6 = accumulatorCopy;
  dispatch_async(queue, v7);
}

- (id)getDynamicAccumulatorWithName:(id)name
{
  name = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.name == %@", name];
  v5 = [(NSMutableSet *)self->_dynamicAccumulators filteredSetUsingPredicate:name];
  if ([v5 count])
  {
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)getEfficacyAccumulatorWithName:(id)name
{
  name = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.name == %@", name];
  v5 = [(NSMutableSet *)self->_efficacyAccumulators filteredSetUsingPredicate:name];
  if ([v5 count])
  {
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (void)q_addActionAndUpdate:(id)update
{
  v14 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (updateCopy)
  {
    firstObject = [(NSMutableOrderedSet *)self->_recentActions firstObject];
    v6 = [firstObject mergeActionIfPossible:updateCopy];
    v7 = UITextInputSessionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218498;
      v9 = v6;
      v10 = 2112;
      v11 = firstObject;
      v12 = 2112;
      v13 = updateCopy;
      _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] q_addActionAndUpdate: Merge result %lu lastAction:%@ newAction:%@", &v8, 0x20u);
    }

    if (firstObject)
    {
      if (v6)
      {
LABEL_9:

        goto LABEL_10;
      }

      [(UITextInputSessionActionAnalytics *)self q_updateAnalyticsFromAccumulators];
      if ([(NSMutableOrderedSet *)self->_recentActions count]> self->_maxDepth)
      {
        [(NSMutableOrderedSet *)self->_recentActions removeObjectsInRange:?];
      }
    }

    [(NSMutableOrderedSet *)self->_recentActions insertObject:updateCopy atIndex:0];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)q_updateAnalyticsFromAccumulators
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableOrderedSet *)self->_recentActions count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = self->_accumulators;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if ([v9 depthRange] <= v3)
        {
          [v9 increaseWithActions:self->_recentActions];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    firstObject = [(NSMutableOrderedSet *)self->_recentActions firstObject];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = self->_efficacyAccumulators;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v26 + 1) + 8 * j) increaseWithAction:firstObject];
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v13);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = self->_dynamicAccumulators;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * k);
        if ([v21 depthRange] <= v3)
        {
          [v21 increaseWithActions:self->_recentActions];
        }
      }

      v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }
}

- (void)q_flushRecentActions
{
  [(UITextInputSessionActionAnalytics *)self q_updateAnalyticsFromAccumulators];
  recentActions = self->_recentActions;

  [(NSMutableOrderedSet *)recentActions removeAllObjects];
}

- (id)_instanceOfActionClass:(Class)class
{
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v5 = objc_alloc_init(class);
    [v5 setSource:{-[UITextInputSessionActionAnalytics _getActiveTextInputSource](self, "_getActiveTextInputSource")}];
    if (+[UIKeyboard isShowingEmojiSearch])
    {
      [v5 setFlagOptions:{objc_msgSend(v5, "flagOptions") | 1}];
    }

    getAppBundleId = [(UITextInputSessionActionAnalytics *)self getAppBundleId];
    [v5 setAppBundleId:getAppBundleId];

    [UITextInputSessionActionAnalytics populateActionInputMode:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSessionIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v9) = 0;
    _os_log_fault_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "UITextInputSessionActionAnalytics is nil", &v9, 2u);
  }

  if (([(NSUUID *)self->_sessionIdentifier isEqual:identifierCopy]& 1) == 0)
  {
    v5 = UITextInputSessionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sessionIdentifier = self->_sessionIdentifier;
      v9 = 138412546;
      v10 = sessionIdentifier;
      v11 = 2112;
      v12 = identifierCopy;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] setSessionIdentifier:%@ -> %@", &v9, 0x16u);
    }
  }

  v6 = [identifierCopy copy];
  v7 = self->_sessionIdentifier;
  self->_sessionIdentifier = v6;
}

- (void)_performWithTextInputActionsSource:(int64_t)source block:(id)block
{
  overrideSource = self->_overrideSource;
  v6 = self->_useOverrideSourceCounter + 1;
  self->_overrideSource = source;
  self->_useOverrideSourceCounter = v6;
  (*(block + 2))(block, a2);
  v7 = self->_useOverrideSourceCounter - 1;
  self->_overrideSource = overrideSource;
  self->_useOverrideSourceCounter = v7;
}

- (void)_performWithInputModeOverride:(id)override block:(id)block
{
  overrideCopy = override;
  v7 = self->_overrideInputModeString;
  overrideInputModeString = self->_overrideInputModeString;
  self->_overrideInputModeString = overrideCopy;
  v11 = overrideCopy;
  blockCopy = block;

  blockCopy[2](blockCopy);
  v10 = self->_overrideInputModeString;
  self->_overrideInputModeString = v7;
}

- (void)didKeyboardDockItemButtonPress:(unint64_t)press buttonType:(unint64_t)type buttonSize:(CGSize)size touchDown:(CGPoint)down touchUp:(CGPoint)up touchDuration:(double)duration inputSource:(int64_t)source
{
  y = up.y;
  x = up.x;
  v13 = down.y;
  v14 = down.x;
  height = size.height;
  width = size.width;
  v61 = *MEMORY[0x1E69E9840];
  v20 = UITextInputSessionLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v27 = [UITextInputSessionActionAnalytics stringForKeyboardDockItemButtonPressResult:press];
    v28 = [UITextInputSessionActionAnalytics stringForKeyboardDockItemButtonType:type];
    *buf = 138414338;
    v44 = v27;
    v45 = 2112;
    v46 = v28;
    v47 = 2048;
    v48 = width;
    v49 = 2048;
    v50 = height;
    v51 = 2048;
    v52 = v14;
    v53 = 2048;
    v54 = v13;
    v55 = 2048;
    v56 = x;
    v57 = 2048;
    v58 = y;
    v59 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didKeyboardDockItemButtonPress:%@ buttonType:%@ buttonSize:(%fw %fh) touchDown:(%f,%f) touchUp:(%f,%f) touchDuration:%f", buf, 0x5Cu);
  }

  v21 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asKeyboardDockItemButtonPress = [v21 asKeyboardDockItemButtonPress];

  [asKeyboardDockItemButtonPress setSource:source];
  [UITextInputSessionActionAnalytics populateActionInputMode:asKeyboardDockItemButtonPress];
  [asKeyboardDockItemButtonPress setButtonPressResult:press];
  [asKeyboardDockItemButtonPress setButtonType:type];
  [asKeyboardDockItemButtonPress setUiOrientation:{objc_msgSend(UIApp, "activeInterfaceOrientation")}];
  [asKeyboardDockItemButtonPress setButtonSize:{width, height}];
  [asKeyboardDockItemButtonPress setTouchDownPoint:{v14, v13}];
  [asKeyboardDockItemButtonPress setTouchUpPoint:{x, y}];
  [asKeyboardDockItemButtonPress setTouchDuration:duration];
  v23 = +[UIInputAnalyticsTranslator iaTextInputActionsSourceFor:](UIInputAnalyticsTranslator, "iaTextInputActionsSourceFor:", [asKeyboardDockItemButtonPress textInputActionsSource]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __134__UITextInputSessionActionAnalytics_didKeyboardDockItemButtonPress_buttonType_buttonSize_touchDown_touchUp_touchDuration_inputSource___block_invoke;
  v31[3] = &unk_1E710C6A0;
  pressCopy = press;
  typeCopy = type;
  v35 = width;
  v36 = height;
  v37 = v14;
  v38 = v13;
  v39 = x;
  v40 = y;
  durationCopy2 = duration;
  v42 = v23;
  v24 = asKeyboardDockItemButtonPress;
  v32 = v24;
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:v23 block:v31];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __134__UITextInputSessionActionAnalytics_didKeyboardDockItemButtonPress_buttonType_buttonSize_touchDown_touchUp_touchDuration_inputSource___block_invoke_2;
  block[3] = &unk_1E70F35B8;
  block[4] = self;
  v30 = v24;
  v26 = v24;
  dispatch_async(queue, block);
}

uint64_t __134__UITextInputSessionActionAnalytics_didKeyboardDockItemButtonPress_buttonType_buttonSize_touchDown_touchUp_touchDuration_inputSource___block_invoke(uint64_t a1)
{
  v2 = _MergedGlobals_1147;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = +[UIInputAnalyticsTranslator iaTextInputActionsTypeFor:](UIInputAnalyticsTranslator, "iaTextInputActionsTypeFor:", [*(a1 + 32) textInputActionsType]);
  v8 = +[UIInputAnalyticsTranslator iaInterfaceOrientationFor:](UIInputAnalyticsTranslator, "iaInterfaceOrientationFor:", [*(a1 + 32) uiOrientation]);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);

  return [v2 didKeyboardDockItemButtonPress:v4 buttonType:v3 buttonSize:v6 touchDown:v7 touchUp:v8 touchDuration:v9 inputSource:v10 inputType:v11 uiInterfaceOrientation:{v12, v13, v14, v5}];
}

uint64_t __134__UITextInputSessionActionAnalytics_didKeyboardDockItemButtonPress_buttonType_buttonSize_touchDown_touchUp_touchDuration_inputSource___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) q_addActionAndUpdate:*(a1 + 40)];
  v1 = objc_opt_class();

  return [v1 q_notifyStartingObservers];
}

- (void)didGlomojiTap:(unint64_t)tap originalInputMode:(id)mode newInputMode:(id)inputMode
{
  modeCopy = mode;
  inputModeCopy = inputMode;
  v8 = [UIInputAnalyticsTranslator iaGlomojiButtonTypeFor:tap];
  if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didGlomojiTap:v8 originalInputMode:modeCopy newInputMode:inputModeCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didGlomojiTap:modeCopy newInputMode:inputModeCopy];
  }
}

- (void)didKBMenuAppear:(unint64_t)appear originalInputMode:(id)mode
{
  modeCopy = mode;
  v5 = [UIInputAnalyticsTranslator iaGlomojiButtonTypeFor:appear];
  if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didKBMenuAppear:v5 originalInputMode:modeCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didKBMenuAppear:modeCopy];
  }
}

- (void)didKBMenuInteraction:(unint64_t)interaction selectedAction:(unint64_t)action newInputMode:(id)mode
{
  modeCopy = mode;
  v7 = [UIInputAnalyticsTranslator iaGlomojiSourceTypeFor:interaction];
  v8 = [UIInputAnalyticsTranslator iaGlomojiSelectedActionTypeFor:action];
  if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didKBMenuInteraction:v7 selectedAction:v8 newInputMode:modeCopy];
  }
}

- (void)didKBMenuDismiss:(unint64_t)dismiss
{
  v3 = [UIInputAnalyticsTranslator iaGlomojiSourceTypeFor:dismiss];
  if (objc_opt_respondsToSelector())
  {
    v4 = _MergedGlobals_1147;

    [v4 didKBMenuDismiss:v3];
  }
}

- (void)didDictationBegin:(BOOL)begin usesMultiModalDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  beginCopy = begin;
  v7 = UITextInputSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDictationBegin", buf, 2u);
  }

  v8 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asDictationBegan = [v8 asDictationBegan];

  [asDictationBegan setSource:2];
  [_MergedGlobals_1147 didDictationBegin:beginCopy usesMultiModalDictation:dictationCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__UITextInputSessionActionAnalytics_didDictationBegin_usesMultiModalDictation___block_invoke;
  block[3] = &unk_1E70F67F8;
  v15 = beginCopy;
  v16 = dictationCopy;
  v13 = asDictationBegan;
  selfCopy = self;
  v11 = asDictationBegan;
  dispatch_async(queue, block);
}

uint64_t __79__UITextInputSessionActionAnalytics_didDictationBegin_usesMultiModalDictation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setDictationBeganCount:1];
    if (*(a1 + 49) == 1)
    {
      [*(a1 + 32) setMultiModalDictationBeganCount:1];
    }
  }

  else
  {
    [v3 setModelessUsedAtLeastOnceCount:1];
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 q_addActionAndUpdate:v5];
}

- (void)didDictationEnd
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDictationEnd", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asDictationEnded = [v4 asDictationEnded];

  [_MergedGlobals_1147 didDictationEnd];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__UITextInputSessionActionAnalytics_didDictationEnd__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asDictationEnded;
  v7 = asDictationEnded;
  dispatch_async(queue, v8);
}

uint64_t __52__UITextInputSessionActionAnalytics_didDictationEnd__block_invoke(uint64_t a1)
{
  [*(a1 + 32) q_addActionAndUpdate:*(a1 + 40)];
  v1 = objc_opt_class();

  return [v1 q_notifyStartingObservers];
}

- (unint64_t)_optionsForText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4)
  {
    v5 = v4;
    if (qword_1ED49E6F0 != -1)
    {
      dispatch_once(&qword_1ED49E6F0, &__block_literal_global_109);
    }

    v6 = [textCopy rangeOfCharacterFromSet:qword_1ED49E6E8];
    v7 = 4 * (v6 != 0x7FFFFFFFFFFFFFFFLL);
    if (v5 != 1 || v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sharedPunctuationCharacterSet = [objc_opt_class() sharedPunctuationCharacterSet];
      v9 = [textCopy rangeOfCharacterFromSet:sharedPunctuationCharacterSet];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v7 |= 2uLL, v5 != 1))
      {
        v7 |= [textCopy _containsEmoji];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__UITextInputSessionActionAnalytics__optionsForText___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v1 = qword_1ED49E6E8;
  qword_1ED49E6E8 = v0;
}

- (unint64_t)_emojiCountForText:(id)text
{
  textCopy = text;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([textCopy length] && objc_msgSend(textCopy, "_containsEmoji"))
  {
    v4 = [textCopy length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__UITextInputSessionActionAnalytics__emojiCountForText___block_invoke;
    v7[3] = &unk_1E710C6C8;
    v7[4] = &v8;
    [textCopy _enumerateEmojiTokensInRange:0 block:{v4, v7}];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)_normalizedTextLength:(id)length
{
  lengthCopy = length;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([lengthCopy length] && objc_msgSend(lengthCopy, "_containsEmoji"))
  {
    v4 = [lengthCopy length];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__UITextInputSessionActionAnalytics__normalizedTextLength___block_invoke;
    v8[3] = &unk_1E710C6F0;
    v8[4] = &v13;
    v8[5] = &v9;
    [lengthCopy _enumerateEmojiTokensInRange:0 block:{v4, v8}];
    v5 = [lengthCopy length];
    v6 = v5 - v10[3] + v14[3];
  }

  else
  {
    v6 = [lengthCopy length];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

uint64_t __59__UITextInputSessionActionAnalytics__normalizedTextLength___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ++*(*(*(result + 32) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) += a4;
  return result;
}

- (unint64_t)_punctuationCountForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = [textCopy length];
    v5 = [MEMORY[0x1E696AD60] stringWithString:textCopy];
    [v5 _removeCharactersFromSet:{objc_msgSend(objc_opt_class(), "sharedPunctuationCharacterSet")}];
    v6 = v4 - [v5 length];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)populateActionInputMode:(id)mode withLanguage:(id)language
{
  modeCopy = mode;
  languageCopy = language;
  v6 = languageCopy;
  if (languageCopy)
  {
    identifierWithLayouts = languageCopy;
  }

  else
  {
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v8 currentInputMode];
    identifierWithLayouts = [currentInputMode identifierWithLayouts];

    if (!identifierWithLayouts)
    {
      goto LABEL_8;
    }
  }

  v10 = TIInputModeGetLanguage();
  [modeCopy setLanguage:v10];

  v11 = TIInputModeGetRegion();
  [modeCopy setRegion:v11];

  v12 = TIInputModeGetVariant();
  [modeCopy setKeyboardVariant:v12];

  if ([modeCopy source] == 4)
  {
    v13 = TIInputModeGetComponentsFromIdentifier();
    v14 = [v13 objectForKey:@"hw"];
    [modeCopy setKeyboardLayout:v14];
  }

  else
  {
    v13 = TIInputModeGetSWLayout();
    [modeCopy setKeyboardLayout:v13];
  }

LABEL_8:
  v15 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v15 inputDelegateManager];
  hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

  if (hasAsyncCapableInputDelegate)
  {
    [modeCopy setKeyboardType:@"Web"];
  }
}

- (id)_textInsertionActionForText:(id)text relativeRangeBefore:(_NSRange)before withLanguage:(id)language
{
  length = before.length;
  location = before.location;
  textCopy = text;
  languageCopy = language;
  v11 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asInsertion = [v11 asInsertion];

  [asInsertion setRelativeRangeBefore:{location, length}];
  if (textCopy)
  {
    [asInsertion setInsertedTextLength:{-[UITextInputSessionActionAnalytics _normalizedTextLength:](self, "_normalizedTextLength:", textCopy)}];
    [asInsertion setOptions:{-[UITextInputSessionActionAnalytics _optionsForText:](self, "_optionsForText:", textCopy)}];
    [asInsertion setInsertedEmojiCount:{-[UITextInputSessionActionAnalytics _emojiCountForText:](self, "_emojiCountForText:", textCopy)}];
    [asInsertion setInsertedPunctuationCount:{-[UITextInputSessionActionAnalytics _punctuationCountForText:](self, "_punctuationCountForText:", textCopy)}];
  }

  if (languageCopy)
  {
    [UITextInputSessionActionAnalytics populateActionInputMode:asInsertion withLanguage:languageCopy];
  }

  return asInsertion;
}

- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before withLanguage:(id)language
{
  length = before.length;
  location = before.location;
  v30 = *MEMORY[0x1E69E9840];
  textCopy = text;
  languageCopy = language;
  v11 = UITextInputSessionLog();
  v12 = v11;
  if (textCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740739;
      v23 = textCopy;
      v24 = 2048;
      v25 = location;
      v26 = 2048;
      v27 = length;
      v28 = 2112;
      v29 = languageCopy;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInsertText:'%{sensitive}@' relativeRangeBefore:(%lu, %lu) withLanguage:%@", buf, 0x2Au);
    }

    languageCopy = [(UITextInputSessionActionAnalytics *)self _textInsertionActionForText:textCopy relativeRangeBefore:location withLanguage:length, languageCopy];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __84__UITextInputSessionActionAnalytics_didInsertText_relativeRangeBefore_withLanguage___block_invoke;
    v17 = &unk_1E70F9780;
    v18 = textCopy;
    v19 = languageCopy;
    v20 = location;
    v21 = length;
    v12 = languageCopy;
    [(UITextInputSessionActionAnalytics *)self _performWithInputModeOverride:languageCopy block:&v14];
    [(UITextInputSessionActionAnalytics *)self _didInsertTextAction:v12 numCharsDeleted:length withLanguage:languageCopy, v14, v15, v16, v17];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v23 = location;
    v24 = 2048;
    v25 = length;
    v26 = 2112;
    v27 = languageCopy;
    _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] didInsertText: relativeRangeBefore:(%lu, %lu) withLanguage:%@ called with nil text", buf, 0x20u);
  }
}

- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before selectedTextBefore:(id)textBefore withLanguage:(id)language
{
  length = before.length;
  location = before.location;
  v37 = *MEMORY[0x1E69E9840];
  textCopy = text;
  textBeforeCopy = textBefore;
  languageCopy = language;
  v14 = UITextInputSessionLog();
  v15 = v14;
  if (textCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740995;
      v28 = textCopy;
      v29 = 2048;
      v30 = location;
      v31 = 2048;
      v32 = length;
      v33 = 2117;
      v34 = textBeforeCopy;
      v35 = 2112;
      v36 = languageCopy;
      _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInsertText:'%{sensitive}@' relativeRangeBefore:(%lu, %lu) selectedTextBefore:'%{sensitive}@' withLanguage:%@", buf, 0x34u);
    }

    if ([textBeforeCopy length])
    {
      [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardText:textBeforeCopy shouldOverrideInputActionCountToZero:1 withLanguage:languageCopy];
    }

    languageCopy = [(UITextInputSessionActionAnalytics *)self _textInsertionActionForText:textCopy relativeRangeBefore:location withLanguage:length, languageCopy];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __103__UITextInputSessionActionAnalytics_didInsertText_relativeRangeBefore_selectedTextBefore_withLanguage___block_invoke;
    v20 = &unk_1E710C718;
    v21 = languageCopy;
    selfCopy = self;
    v23 = textCopy;
    v25 = location;
    v26 = length;
    v24 = textBeforeCopy;
    v15 = languageCopy;
    [(UITextInputSessionActionAnalytics *)self _performWithInputModeOverride:languageCopy block:&v17];
    [(UITextInputSessionActionAnalytics *)self _didInsertTextAction:v15 numCharsDeleted:0 withLanguage:languageCopy, v17, v18, v19, v20];
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218755;
    v28 = location;
    v29 = 2048;
    v30 = length;
    v31 = 2117;
    v32 = textBeforeCopy;
    v33 = 2112;
    v34 = languageCopy;
    _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] didInsertText: relativeRangeBefore:(%lu, %lu) selectedTextBefore:'%{sensitive}@' withLanguage:%@ called with nil text", buf, 0x2Au);
  }
}

void __103__UITextInputSessionActionAnalytics_didInsertText_relativeRangeBefore_selectedTextBefore_withLanguage___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) flagOptions] & 1) != 0 && objc_msgSend(*(a1 + 32), "source") == 5)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __103__UITextInputSessionActionAnalytics_didInsertText_relativeRangeBefore_selectedTextBefore_withLanguage___block_invoke_2;
    v3[3] = &unk_1E70F9780;
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 64);
    v5 = *(a1 + 56);
    [v2 _performWithTextInputActionsSource:4 block:v3];
  }

  else
  {
    [_MergedGlobals_1147 didInsertText:*(a1 + 48) withType:objc_msgSend(*(a1 + 32) relativeRangeBefore:"textInputActionsType") withNumAlternatives:*(a1 + 64) selectedTextBefore:*(a1 + 72) withInputMode:{0, *(a1 + 56), 0}];
  }
}

uint64_t __103__UITextInputSessionActionAnalytics_didInsertText_relativeRangeBefore_selectedTextBefore_withLanguage___block_invoke_2(void *a1)
{
  [_MergedGlobals_1147 didInsertText:a1[4] withType:1 relativeRangeBefore:a1[6] withNumAlternatives:a1[7] selectedTextBefore:0 withInputMode:{a1[5], 0}];
  v1 = _MergedGlobals_1147;

  return [v1 didInsertionKeyPressOfKey:0 withType:1];
}

- (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before withNumAlternatives:(int64_t)alternatives
{
  length = before.length;
  location = before.location;
  v20 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v10 = UITextInputSessionLog();
  v11 = v10;
  if (textCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740739;
      v13 = textCopy;
      v14 = 2048;
      v15 = location;
      v16 = 2048;
      alternativesCopy2 = length;
      v18 = 2048;
      alternativesCopy = alternatives;
      _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInsertText:'%{sensitive}@' relativeRangeBefore:(%lu, %lu) withNumAlternatives:%ld", buf, 0x2Au);
    }

    v11 = [(UITextInputSessionActionAnalytics *)self _textInsertionActionForText:textCopy relativeRangeBefore:location withLanguage:length, 0];
    [v11 setWithAlternativesCount:alternatives > 0];
    [_MergedGlobals_1147 didInsertText:textCopy withType:-[NSObject textInputActionsType](v11 relativeRangeBefore:"textInputActionsType") withNumAlternatives:location selectedTextBefore:length withInputMode:{0, 0, 0}];
    [(UITextInputSessionActionAnalytics *)self _didInsertTextAction:v11 numCharsDeleted:length withLanguage:0];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218496;
    v13 = location;
    v14 = 2048;
    v15 = length;
    v16 = 2048;
    alternativesCopy2 = alternatives;
    _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] didInsertText: relativeRangeBefore:(%lu, %lu) withNumAlternatives:%ld called with nil text", buf, 0x20u);
  }
}

- (void)_didInsertTextAction:(id)action numCharsDeleted:(unint64_t)deleted withLanguage:(id)language
{
  actionCopy = action;
  languageCopy = language;
  if (deleted)
  {
    [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardCount:deleted shouldOverrideInputActionCountToZero:1 withLanguage:languageCopy];
  }

  if (([actionCopy flagOptions] & 1) != 0 && objc_msgSend(actionCopy, "source") == 5)
  {
    [actionCopy setSource:1];
    [UITextInputSessionActionAnalytics populateActionInputMode:actionCopy];
    if ([actionCopy insertedEmojiCount] == 1 && objc_msgSend(actionCopy, "insertedTextLength") == 1)
    {
      [actionCopy setInputActionCountFromMergedActions:1];
    }
  }

  queue = self->_queue;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __87__UITextInputSessionActionAnalytics__didInsertTextAction_numCharsDeleted_withLanguage___block_invoke;
  v15 = &unk_1E70F35B8;
  selfCopy = self;
  v17 = actionCopy;
  v11 = actionCopy;
  dispatch_async(queue, &v12);
  [(UITextInputSessionActionAnalytics *)self beginTrackingSessionDurationIfNecessary:v12];
}

- (void)_didDeleteBackwardCount:(unint64_t)count shouldOverrideInputActionCountToZero:(BOOL)zero withLanguage:(id)language
{
  zeroCopy = zero;
  v14 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v9 = UITextInputSessionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    countCopy = count;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDeleteBackwardCount:%lu", &v12, 0xCu);
  }

  v10 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asDeletion = [v10 asDeletion];

  [asDeletion setRemovedTextLength:count];
  if (zeroCopy)
  {
    [asDeletion setInputActionCountFromMergedActions:{-objc_msgSend(asDeletion, "inputActionCount")}];
  }

  if (languageCopy)
  {
    [UITextInputSessionActionAnalytics populateActionInputMode:asDeletion withLanguage:languageCopy];
  }

  [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardAction:asDeletion];
}

- (void)didDeleteBackwardCount:(unint64_t)count
{
  [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardCount:count shouldOverrideInputActionCountToZero:0 withLanguage:0];
  v5 = _MergedGlobals_1147;
  v6 = [UIInputAnalyticsTranslator iaTextInputActionsTypeFor:_UITextInputActionsTypeFromTextInputSource([(UITextInputSessionActionAnalytics *)self _getActiveTextInputSource])];

  [v5 didDeleteBackwardCount:count withType:v6];
}

- (void)_didDeleteBackwardText:(id)text shouldOverrideInputActionCountToZero:(BOOL)zero withLanguage:(id)language
{
  zeroCopy = zero;
  v15 = *MEMORY[0x1E69E9840];
  textCopy = text;
  languageCopy = language;
  v10 = UITextInputSessionLog();
  asDeletion = v10;
  if (textCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138739971;
      v14 = textCopy;
      _os_log_debug_impl(&dword_188A29000, asDeletion, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDeleteBackwardText:'%{sensitive}@'", &v13, 0xCu);
    }

    v12 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
    asDeletion = [v12 asDeletion];

    [asDeletion setRemovedTextLength:[(UITextInputSessionActionAnalytics *)self _normalizedTextLength:textCopy]];
    [asDeletion setRemovedEmojiCount:[(UITextInputSessionActionAnalytics *)self _emojiCountForText:textCopy]];
    [asDeletion setOptions:[(UITextInputSessionActionAnalytics *)self _optionsForText:textCopy]];
    if (languageCopy)
    {
      [UITextInputSessionActionAnalytics populateActionInputMode:asDeletion withLanguage:languageCopy];
    }

    if (zeroCopy)
    {
      [asDeletion setInputActionCountFromMergedActions:[asDeletion]];
    }

    [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardAction:asDeletion];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_188A29000, asDeletion, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] didDeleteBackwardText: called with nil text", &v13, 2u);
  }
}

- (void)didDeleteBackwardText:(id)text
{
  textCopy = text;
  [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardText:textCopy shouldOverrideInputActionCountToZero:0 withLanguage:0];
  [_MergedGlobals_1147 didDeleteBackwardText:textCopy withType:{+[UIInputAnalyticsTranslator iaTextInputActionsTypeFor:](UIInputAnalyticsTranslator, "iaTextInputActionsTypeFor:", _UITextInputActionsTypeFromTextInputSource(-[UITextInputSessionActionAnalytics _getActiveTextInputSource](self, "_getActiveTextInputSource")))}];
}

- (void)_didDeleteBackwardAction:(id)action
{
  actionCopy = action;
  queue = self->_queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62__UITextInputSessionActionAnalytics__didDeleteBackwardAction___block_invoke;
  v10 = &unk_1E70F35B8;
  selfCopy = self;
  v12 = actionCopy;
  v6 = actionCopy;
  dispatch_async(queue, &v7);
  [(UITextInputSessionActionAnalytics *)self beginTrackingSessionDurationIfNecessary:v7];
}

- (void)didChangeToSelection:(_NSRange)selection relativeRangeBefore:(_NSRange)before
{
  length = before.length;
  location = before.location;
  v6 = selection.length;
  v7 = selection.location;
  v30 = *MEMORY[0x1E69E9840];
  if (selection.length != before.length || selection.location != before.location)
  {
    allowCursorMovementCounter = [(UITextInputSessionActionAnalytics *)self allowCursorMovementCounter];
    v10 = UITextInputSessionLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (allowCursorMovementCounter)
    {
      if (v11)
      {
        *buf = 134218752;
        v23 = v7;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = location;
        v28 = 2048;
        v29 = length;
        _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didChangeToSelection:(%lu, %lu) rangeBefore:(%lu, %lu)", buf, 0x2Au);
      }

      v12 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
      asSelection = [v12 asSelection];

      [asSelection setSource:0];
      [asSelection setRelativeRangeBefore:{location, length}];
      [asSelection setRangeAfter:{v7, v6}];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__UITextInputSessionActionAnalytics_didChangeToSelection_relativeRangeBefore___block_invoke;
      v21[3] = &__block_descriptor_64_e5_v8__0l;
      v21[4] = v7;
      v21[5] = v6;
      v21[6] = location;
      v21[7] = length;
      [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:v21];
      queue = self->_queue;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __78__UITextInputSessionActionAnalytics_didChangeToSelection_relativeRangeBefore___block_invoke_2;
      v18 = &unk_1E70F35B8;
      selfCopy = self;
      v20 = asSelection;
      v10 = asSelection;
      dispatch_async(queue, &v15);
      [(UITextInputSessionActionAnalytics *)self beginTrackingSessionDurationIfNecessary:v15];
    }

    else if (v11)
    {
      *buf = 134218752;
      v23 = v7;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = location;
      v28 = 2048;
      v29 = length;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics][Skipped - ignoreCursorMovements] didChangeToSelection:(%lu, %lu) rangeBefore:(%lu, %lu)", buf, 0x2Au);
    }
  }
}

- (void)didCopy
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCopy", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asCopy = [v4 asCopy];

  [asCopy setSource:0];
  [asCopy setTextInputActionsType:11];
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:&__block_literal_global_125_0];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UITextInputSessionActionAnalytics_didCopy__block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asCopy;
  v7 = asCopy;
  dispatch_async(queue, v8);
}

- (void)didCut
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCut", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asCut = [v4 asCut];

  [asCut setSource:0];
  [asCut setTextInputActionsType:10];
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:&__block_literal_global_128];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__UITextInputSessionActionAnalytics_didCut__block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asCut;
  v7 = asCut;
  dispatch_async(queue, v8);
}

- (void)didPaste
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didPaste", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asPaste = [v4 asPaste];

  [asPaste setSource:0];
  [asPaste setTextInputActionsType:12];
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:&__block_literal_global_131_0];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__UITextInputSessionActionAnalytics_didPaste__block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asPaste;
  v7 = asPaste;
  dispatch_async(queue, v8);
}

- (void)didUndo
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didUndo", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asUndo = [v4 asUndo];

  [asUndo setSource:0];
  [asUndo setTextInputActionsType:13];
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:&__block_literal_global_134];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UITextInputSessionActionAnalytics_didUndo__block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asUndo;
  v7 = asUndo;
  dispatch_async(queue, v8);
}

- (void)didRedo
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didRedo", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asRedo = [v4 asRedo];

  [asRedo setSource:0];
  [asRedo setTextInputActionsType:14];
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:0 block:&__block_literal_global_137_0];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__UITextInputSessionActionAnalytics_didRedo__block_invoke_2;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asRedo;
  v7 = asRedo;
  dispatch_async(queue, v8);
}

- (void)didReplaceWithCandidate:(int64_t)candidate
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = [UITextInputSessionActionAnalytics stringForReplaceWithCandidateType:candidate];
    *buf = 138739971;
    v14 = v10;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didReplaceWithCandidate:'%{sensitive}@'", buf, 0xCu);
  }

  v6 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asReplaceWithCandidate = [v6 asReplaceWithCandidate];

  [asReplaceWithCandidate setReplaceWithCandidateType:candidate];
  [asReplaceWithCandidate setInputActionCountFromMergedActions:{-objc_msgSend(asReplaceWithCandidate, "inputActionCount")}];
  [_MergedGlobals_1147 didReplaceWithCandidate:candidate];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__UITextInputSessionActionAnalytics_didReplaceWithCandidate___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = asReplaceWithCandidate;
  v9 = asReplaceWithCandidate;
  dispatch_async(queue, v11);
}

- (void)didCandidateBarReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138740227;
    v10 = textCopy;
    v11 = 2117;
    v12 = withTextCopy;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCandidateBarReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
  }

  [_MergedGlobals_1147 didCandidateBarReplacementForText:textCopy withText:withTextCopy];
  [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:7 withType:1 withInputActionCount:1];
}

- (void)didCalloutBarReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138740227;
    v10 = textCopy;
    v11 = 2117;
    v12 = withTextCopy;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCalloutBarReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
  }

  [_MergedGlobals_1147 didCalloutBarReplacementForText:textCopy withText:withTextCopy];
  [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:8 withType:1 withInputActionCount:1];
}

- (void)didAutocorrectReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  [_MergedGlobals_1147 didAutocorrectReplacementForText:textCopy withText:withTextCopy];
  if (textCopy && [textCopy length])
  {
    if (!withTextCopy)
    {
      withTextCopy = &stru_1EFB14550;
    }

    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138740227;
      v10 = textCopy;
      v11 = 2117;
      v12 = withTextCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didAutocorrectReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
    }

    [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:0 withType:6 withInputActionCount:1];
  }
}

- (void)didAutocorrectTapOnCompletionReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  [_MergedGlobals_1147 didAutocorrectTapOnCompletionReplacementForText:textCopy withText:withTextCopy];
  if (textCopy && [textCopy length])
  {
    if (!withTextCopy)
    {
      withTextCopy = &stru_1EFB14550;
    }

    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138740227;
      v10 = textCopy;
      v11 = 2117;
      v12 = withTextCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didAutocorrectTapOnCompletionReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
    }

    [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:12 withType:6 withInputActionCount:1];
  }
}

- (void)didInlineCompletionReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  [_MergedGlobals_1147 didInlineCompletionReplacementForText:textCopy withText:withTextCopy];
  if (textCopy | withTextCopy)
  {
    if (!withTextCopy)
    {
      withTextCopy = &stru_1EFB14550;
    }

    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138740227;
      v10 = textCopy;
      v11 = 2117;
      v12 = withTextCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInlineCompletionReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
    }

    [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:0 withType:15 withInputActionCount:1];
  }
}

- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  [_MergedGlobals_1147 didInlineCompletionTapOnCompletionReplacementForText:textCopy withText:withTextCopy];
  if (textCopy | withTextCopy)
  {
    if (!withTextCopy)
    {
      withTextCopy = &stru_1EFB14550;
    }

    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138740227;
      v10 = textCopy;
      v11 = 2117;
      v12 = withTextCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInlineCompletionTapOnCompletionReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
    }

    [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:12 withType:15 withInputActionCount:1];
  }
}

- (void)didRevisionBubbleTap
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didRevisionBubbleTap", v4, 2u);
  }

  [_MergedGlobals_1147 didRevisionBubbleTap];
  [(UITextInputSessionActionAnalytics *)self didReplacementForText:&stru_1EFB14550 withText:&stru_1EFB14550 withSource:11 withType:1 withInputActionCount:1];
}

- (void)didRevisionBubbleReplacementForText:(id)text withText:(id)withText
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  [_MergedGlobals_1147 didRevisionBubbleReplacementForText:textCopy withText:withTextCopy];
  if (textCopy)
  {
    v8 = UITextInputSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138740227;
      v10 = textCopy;
      v11 = 2117;
      v12 = withTextCopy;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didRevisionBubbleReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v9, 0x16u);
    }

    [(UITextInputSessionActionAnalytics *)self didReplacementForText:textCopy withText:withTextCopy withSource:11 withType:1 withInputActionCount:0];
  }
}

- (void)didCompositionReplacementForText:(id)text withText:(id)withText
{
  v12 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  v7 = UITextInputSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138740227;
    v9 = textCopy;
    v10 = 2117;
    v11 = withTextCopy;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCompositionReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didCompositionReplacementForText:textCopy withText:withTextCopy];
  }
}

- (void)didDecompositionReplacementForText:(id)text withText:(id)withText
{
  v12 = *MEMORY[0x1E69E9840];
  textCopy = text;
  withTextCopy = withText;
  v7 = UITextInputSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138740227;
    v9 = textCopy;
    v10 = 2117;
    v11 = withTextCopy;
    _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDecompositionReplacementForText:'%{sensitive}@' withText:'%{sensitive}@'", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [_MergedGlobals_1147 didDecompositionReplacementForText:textCopy withText:withTextCopy];
  }
}

- (void)_didCommitText:(id)text withSource:(int64_t)source
{
  v16 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v7 = objc_opt_respondsToSelector();
  v8 = UITextInputSessionLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      *buf = 138740227;
      v13 = textCopy;
      v14 = 2048;
      sourceCopy = source;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] _didCommitText:'%{sensitive}@' withSource:'%lu'", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__UITextInputSessionActionAnalytics__didCommitText_withSource___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = textCopy;
    [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:source block:v10];
    v8 = v11;
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didCommitText: SPI not available; please update OS.", buf, 2u);
  }
}

- (void)didReplacementForText:(id)text withText:(id)withText withSource:(int64_t)source withType:(int64_t)type withInputActionCount:(int64_t)count
{
  textCopy = text;
  v13 = textCopy;
  if (withText)
  {
    if (!textCopy)
    {
      v13 = &stru_1EFB14550;
    }

    withTextCopy = withText;
    v15 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
    asReplaceText = [v15 asReplaceText];

    if (source)
    {
      [asReplaceText setTextInputActionsSource:source];
    }

    [asReplaceText setTextInputActionsType:type];
    [asReplaceText setRemovedTextLength:{-[__CFString length](v13, "length")}];
    [asReplaceText setInsertedTextLength:{objc_msgSend(withTextCopy, "length")}];
    [asReplaceText setOptions:{-[UITextInputSessionActionAnalytics _optionsForText:](self, "_optionsForText:", v13)}];
    [asReplaceText setRemovedEmojiCount:{-[UITextInputSessionActionAnalytics _emojiCountForText:](self, "_emojiCountForText:", v13)}];
    [asReplaceText setInsertedEmojiCount:{-[UITextInputSessionActionAnalytics _emojiCountForText:](self, "_emojiCountForText:", withTextCopy)}];
    [asReplaceText setRemovedPunctuationCount:{-[UITextInputSessionActionAnalytics _punctuationCountForText:](self, "_punctuationCountForText:", v13)}];
    v17 = [(UITextInputSessionActionAnalytics *)self _punctuationCountForText:withTextCopy];

    [asReplaceText setInsertedPunctuationCount:v17];
    [asReplaceText setInputActionCountFromMergedActions:{count - objc_msgSend(asReplaceText, "inputActionCount")}];
    queue = self->_queue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __109__UITextInputSessionActionAnalytics_didReplacementForText_withText_withSource_withType_withInputActionCount___block_invoke;
    v20[3] = &unk_1E70F35B8;
    v20[4] = self;
    v21 = asReplaceText;
    v19 = asReplaceText;
    dispatch_async(queue, v20);
  }
}

- (void)didSessionEnd
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didSessionEnd - flushing recent actions", buf, 2u);
  }

  v4 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asEnd = [v4 asEnd];

  [_MergedGlobals_1147 didSessionEnd];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UITextInputSessionActionAnalytics_didSessionEnd__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = asEnd;
  v7 = asEnd;
  dispatch_async(queue, v8);
}

uint64_t __50__UITextInputSessionActionAnalytics_didSessionEnd__block_invoke(uint64_t a1)
{
  [*(a1 + 32) q_addActionAndUpdate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 q_flushRecentActions];
}

- (void)didOther
{
  v3 = UITextInputSessionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didOther - flushing recent actions", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UITextInputSessionActionAnalytics_didOther__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didInsertKeyPressWithInputSource:(int64_t)source
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    sourceCopy = source;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didInsertKeyPressWithInputSource:%lu", buf, 0xCu);
  }

  v6 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asInsertion = [v6 asInsertion];

  [asInsertion setInsertedTextLength:0];
  [asInsertion setSource:source];
  [UITextInputSessionActionAnalytics populateActionInputMode:asInsertion];
  [asInsertion setInputActionCountFromMergedActions:1];
  v8 = [UIInputAnalyticsTranslator iaTextInputActionsSourceFor:_UITextInputActionsSourceFromTextInputSource(source)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__UITextInputSessionActionAnalytics_didInsertKeyPressWithInputSource___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = source;
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:v8 block:v9];
  [(UITextInputSessionActionAnalytics *)self _didInsertTextAction:asInsertion numCharsDeleted:0 withLanguage:0];
}

uint64_t __70__UITextInputSessionActionAnalytics_didInsertKeyPressWithInputSource___block_invoke(uint64_t a1)
{
  v1 = _MergedGlobals_1147;
  v2 = _UITextInputActionsTypeFromTextInputSource(*(a1 + 32));

  return [v1 didInsertionKeyPressOfKey:0 withType:v2];
}

- (void)didDeleteKeyPressWithInputSource:(int64_t)source
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    sourceCopy = source;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionActionAnalytics] didDeleteKeyPressWithInputSource:%lu", buf, 0xCu);
  }

  v6 = [(UITextInputSessionActionAnalytics *)self _instanceOfActionClass:objc_opt_class()];
  asDeletion = [v6 asDeletion];

  [asDeletion setRemovedTextLength:0];
  [asDeletion setSource:source];
  [UITextInputSessionActionAnalytics populateActionInputMode:asDeletion];
  [asDeletion setInputActionCountFromMergedActions:1];
  v8 = [UIInputAnalyticsTranslator iaTextInputActionsSourceFor:_UITextInputActionsSourceFromTextInputSource(source)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__UITextInputSessionActionAnalytics_didDeleteKeyPressWithInputSource___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = source;
  [(UITextInputSessionActionAnalytics *)self _performWithTextInputActionsSource:v8 block:v9];
  [(UITextInputSessionActionAnalytics *)self _didDeleteBackwardAction:asDeletion];
}

uint64_t __70__UITextInputSessionActionAnalytics_didDeleteKeyPressWithInputSource___block_invoke(uint64_t a1)
{
  v1 = _MergedGlobals_1147;
  v2 = _UITextInputActionsTypeFromTextInputSource(*(a1 + 32));

  return [v1 didDeletionKeyPressOfKey:0 withType:v2];
}

- (void)didKeyPress:(id)press inputSource:(int64_t)source
{
  pressCopy = press;
  v7 = pressCopy;
  if (pressCopy)
  {
    name = [pressCopy name];
    v9 = [name isEqual:@"Delete-Key"];

    if (v9)
    {
      [(UITextInputSessionActionAnalytics *)self didDeleteKeyPressWithInputSource:source];
    }

    else
    {
      [(UITextInputSessionActionAnalytics *)self didInsertKeyPressWithInputSource:source];
    }
  }

  else
  {
    v10 = UITextInputSessionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "[UITextInputSessionActionAnalytics] didKeyPress: called with nil key!", v11, 2u);
    }
  }
}

- (void)didOnWebSearchKeyboardPressKey:(id)key withMetadata:(id)metadata
{
  if (key)
  {
    keyCopy = key;
    v6 = [metadata mutableCopy];
    [v6 setObject:keyCopy forKeyedSubscript:@"KeyName"];

    [_UISignalAnalytics asyncSendSafariSignal:@"KeyPressed" payload:v6];
  }
}

+ (id)stringForReplaceWithCandidateType:(int64_t)type
{
  if (type > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E710C788[type];
  }
}

+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)result
{
  if (result > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E710C7A8[result];
  }
}

+ (id)stringForKeyboardDockItemButtonType:(unint64_t)type
{
  if (type > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E710C7C8[type];
  }
}

@end