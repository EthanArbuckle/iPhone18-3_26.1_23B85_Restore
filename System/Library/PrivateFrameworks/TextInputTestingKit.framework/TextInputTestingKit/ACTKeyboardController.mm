@interface ACTKeyboardController
- (ACTKeyboardController)initWithInputMode:(id)mode;
- (BOOL)generatesCandidates;
- (BOOL)hardwareKeyboardMode;
- (BOOL)hasPrediction:(id)prediction;
- (BOOL)isAutoshifted;
- (BOOL)isContinuousPathNonSpacePunctuation:(unsigned int)punctuation;
- (BOOL)isKeyStringAboveSpaceBar:(id)bar;
- (BOOL)isKeyplane:(id)keyplane alternateOfKeyplane:(id)ofKeyplane;
- (BOOL)isKeyplane:(id)keyplane shiftAlternateOfKeyplane:(id)ofKeyplane;
- (BOOL)isShifted;
- (BOOL)shouldAcceptCandidate:(id)candidate beforeInputString:(id)string;
- (BOOL)shouldSkipCandidateSelection;
- (BOOL)syncToKeyboardStateByWaitingForResults:(BOOL)results;
- (BOOL)touchPassesDragThresholdAtPoint:(CGPoint)point pathIndex:(unint64_t)index;
- (NSArray)predictions;
- (TIAutocorrectionList)autocorrectionList;
- (TIKeyboardCandidate)autocorrection;
- (TIKeyboardCandidate)inlineCompletion;
- (TIKeyboardInputManager)existingInputManager;
- (TIKeyboardInputManager)inputManager;
- (TIKeyboardInputManagerWrapper)inputManagerWrapper;
- (_NSRange)selectedRange;
- (_NSRange)selectedRangeForText:(id)text;
- (float)distanceFromKey:(id)key toPoint:(CGPoint)point;
- (id)adjustContinuousPathCandidate:(id)candidate;
- (id)candidateByApplyingSmartPunctuationToCandidate:(id)candidate;
- (id)candidateToConfirmInputString;
- (id)candidatesForString:(id)string;
- (id)clonedKeyboardState;
- (id)createKeyboardInputManagerWrapper;
- (id)displayStringOverrideForKey:(id)key;
- (id)keyContainingPoint:(CGPoint)point inKeyplane:(id)keyplane;
- (id)keyToAccessKeyplane:(id)keyplane fromKeyplane:(id)fromKeyplane;
- (id)performSkipTapAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code;
- (id)performTouchUpAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d secondaryString:(BOOL)string;
- (id)trimmedCandidate:(id)candidate;
- (int64_t)keyCodeWithString:(id)string inKeyplane:(id)keyplane;
- (int64_t)performTouchDownAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (int64_t)performTouchDragAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (int64_t)retestTouchAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)acceptAutocorrection;
- (void)acceptCandidate:(id)candidate predictiveCandidate:(BOOL)predictiveCandidate;
- (void)acceptCandidateInputEvent:(id)event fromCandidateBar:(BOOL)bar;
- (void)addInput:(id)input fromVariantKey:(BOOL)key fromGestureKey:(BOOL)gestureKey;
- (void)addInput:(id)input fromVariantKey:(BOOL)key fromGestureKey:(BOOL)gestureKey touchEvent:(id)event;
- (void)adjustCursorByOffset:(int64_t)offset;
- (void)adjustKeyplaneEmulatingKBStar:(id)star;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)alternateKeyplane;
- (void)closeRequestToken:(id)token;
- (void)commitText;
- (void)dealloc;
- (void)deleteBackwards;
- (void)deleteInput:(id)input;
- (void)deleteText:(id)text rawText:(id)rawText;
- (void)divideKeyplane:(id)keyplane intoLeft:(id)left right:(id)right;
- (void)enumerateKeyplaneNamesAdjacentToKeyplane:(id)keyplane usingBlock:(id)block;
- (void)generateAutocorrectionsOrCandidates;
- (void)generateAutocorrectionsWithCount:(unint64_t)count;
- (void)generateAutocorrectionsWithKeyboardState:(id)state;
- (void)generateAutocorrectionsWithShiftState:(int)state;
- (void)generateCandidates;
- (void)generateCandidatesWithKeyboardState:(id)state;
- (void)handleKeyboardInput:(id)input;
- (void)insertText:(id)text;
- (void)insertTextAfterSelection:(id)selection;
- (void)mergeFrameFromKey:(id)key intoKey:(id)intoKey;
- (void)performTouchCancelAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)performTouchEndRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)performTouchRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token;
- (void)pushCandidateResultSet:(id)set requestToken:(id)token;
- (void)registerLayoutWithFavonius;
- (void)rejectCandidate:(id)candidate;
- (void)reset;
- (void)setAutocorrectionList:(id)list;
- (void)setHardwareKeyboardMode:(BOOL)mode;
- (void)setInitialKeyplane;
- (void)setIntermediateText:(id)text;
- (void)setKeyboard:(id)keyboard;
- (void)setKeyboardConfiguration:(id)configuration;
- (void)setKeyplane:(id)keyplane;
- (void)setSelectedRange:(_NSRange)range;
- (void)setShouldSkipCandidateSelection:(BOOL)selection;
- (void)shiftKeyplane;
- (void)syncToDocumentState:(id)state;
- (void)syncToEmptyDocument;
- (void)tearDown;
- (void)textAccepted:(id)accepted predictiveCandidate:(BOOL)candidate;
- (void)updateAutoshift;
- (void)updateDocumentState;
- (void)updateKeyboardOutput:(id)output withInputForSmartPunctuation:(id)punctuation;
@end

@implementation ACTKeyboardController

- (_NSRange)selectedRange
{
  length = self->_selectedRange.length;
  location = self->_selectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)deleteInput:(id)input
{
  inputCopy = input;
  [(ACTKeyboardController *)self setAutocorrectionList:0];
  v5 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v5 setBackspace:1];
  [(ACTKeyboardController *)self handleKeyboardInput:v5];
  [v5 setTouchEvent:inputCopy];

  [(ACTKeyboardController *)self updateAutoshift];
}

- (void)addInput:(id)input fromVariantKey:(BOOL)key fromGestureKey:(BOOL)gestureKey touchEvent:(id)event
{
  gestureKeyCopy = gestureKey;
  keyCopy = key;
  inputCopy = input;
  eventCopy = event;
  inputManagerState = [(ACTKeyboardController *)self inputManagerState];
  v12 = [inputManagerState stringEndsWord:inputCopy];

  if (!v12)
  {
    goto LABEL_11;
  }

  if (-[ACTKeyboardController usesAutocorrection](self, "usesAutocorrection") && (-[ACTKeyboardController inputManagerState](self, "inputManagerState"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 usesCandidateSelection], v13, (v14 & 1) == 0))
  {
    inlineCompletion = [(ACTKeyboardController *)self inlineCompletion];
    if (!inlineCompletion)
    {
      inlineCompletion = [(ACTKeyboardController *)self autocorrection];
      if (!inlineCompletion)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    inputManagerState2 = [(ACTKeyboardController *)self inputManagerState];
    usesCandidateSelection = [inputManagerState2 usesCandidateSelection];

    if (!usesCandidateSelection)
    {
LABEL_11:
      inlineCompletion = 0;
      goto LABEL_12;
    }

    candidateResultSet = [(ACTKeyboardController *)self candidateResultSet];
    inlineCompletion = [candidateResultSet defaultCandidate];

    if (!inlineCompletion)
    {
      goto LABEL_12;
    }
  }

  if (![(ACTKeyboardController *)self shouldAcceptCandidate:inlineCompletion beforeInputString:inputCopy])
  {

    goto LABEL_11;
  }

LABEL_12:
  [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:0];
  if ([(ACTKeyboardController *)self lastInputWasContinuousPath])
  {
    v19 = [(NSMutableString *)self->_text length];
    v20 = [inputCopy length] == 1 ? objc_msgSend(inputCopy, "_firstLongCharacter") : 0;
    if ([(ACTKeyboardController *)self isContinuousPathNonSpacePunctuation:v20]&& ((v19 - 1) & 0x80000000) == 0 && [(NSMutableString *)self->_text characterAtIndex:?]== 32)
    {
      [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:1];
    }
  }

  [(ACTKeyboardController *)self setLastInputWasContinuousPath:0];
  if (inlineCompletion)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [inlineCompletion performSelector:sel_isContinuousPathConversion])
    {
      v21 = MEMORY[0x277D6F328];
      autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
      predictions = [autocorrectionList predictions];
      v24 = [v21 listWithCorrections:0 predictions:predictions];
      [(ACTKeyboardController *)self setAutocorrectionList:v24];

      [(ACTKeyboardController *)self setLastInputWasContinuousPath:1];
    }

    else
    {
      [(ACTKeyboardController *)self setAutocorrectionList:0];
    }

    inputManagerState3 = [(ACTKeyboardController *)self inputManagerState];
    usesCandidateSelection2 = [inputManagerState3 usesCandidateSelection];

    if (usesCandidateSelection2)
    {
      [(ACTKeyboardController *)self acceptCandidate:inlineCompletion];
      goto LABEL_46;
    }
  }

  else
  {
    [(ACTKeyboardController *)self setAutocorrectionList:0];
  }

  v27 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v27 setString:inputCopy];
  [v27 setUppercase:{-[ACTKeyboardController isShifted](self, "isShifted")}];
  [v27 setAutoshifted:{-[ACTKeyboardController isAutoshifted](self, "isAutoshifted")}];
  [v27 setPopupVariant:keyCopy];
  if (objc_opt_respondsToSelector())
  {
    [v27 setGesture:gestureKeyCopy];
  }

  [v27 setTouchEvent:eventCopy];
  [v27 setAcceptedCandidate:inlineCompletion];
  if ([(ACTKeyboardController *)self nextKeyIsMultitap])
  {
    [v27 setMultitap:1];
    [(ACTKeyboardController *)self setNextKeyIsMultitap:0];
  }

  if ([(ACTKeyboardController *)self nextKeyIsFlick])
  {
    [v27 setFlick:1];
    [(ACTKeyboardController *)self setNextKeyIsFlick:0];
  }

  if (eventCopy)
  {
    keys = [(ACTKeyboardController *)self keys];
    v29 = [keys objectAtIndex:{objc_msgSend(eventCopy, "forcedKeyCode")}];

    v30 = [v29 stringForProperty:*MEMORY[0x277D76AB0]];
    [v27 setInputManagerHint:v30];
  }

  acceptedCandidate = [v27 acceptedCandidate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    acceptedCandidate2 = [v27 acceptedCandidate];
    isContinuousPathConversion = [acceptedCandidate2 isContinuousPathConversion];
  }

  else
  {
    isContinuousPathConversion = 0;
  }

  inputManagerState4 = [(ACTKeyboardController *)self inputManagerState];
  wordSeparator = [inputManagerState4 wordSeparator];
  v37 = [inputCopy isEqualToString:wordSeparator];

  if (v37)
  {
    lastInputWasSelection = [(ACTKeyboardController *)self lastInputWasSelection];
    v39 = !eventCopy && lastInputWasSelection;
    if ((v39 | isContinuousPathConversion))
    {
      [v27 setSynthesizedByAcceptingCandidate:1];
    }
  }

  [(ACTKeyboardController *)self handleKeyboardInput:v27];

LABEL_46:
  [(ACTKeyboardController *)self setLastInputWasSelection:0];
}

- (BOOL)shouldAcceptCandidate:(id)candidate beforeInputString:(id)string
{
  candidateCopy = candidate;
  stringCopy = string;
  candidate = [candidateCopy candidate];
  if ([candidate length] || objc_msgSend(candidateCopy, "slotID"))
  {
  }

  else
  {
    customInfoType = [candidateCopy customInfoType];

    if (!customInfoType)
    {
      goto LABEL_5;
    }
  }

  inputManagerState = [(ACTKeyboardController *)self inputManagerState];
  v10 = [inputManagerState shouldSuppressAutocorrectionWithTerminator:stringCopy];

  if (v10)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_15;
  }

  if ([stringCopy length] && (objc_msgSend(candidateCopy, "input"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    candidate2 = [candidateCopy candidate];
    if (candidate2)
    {
      v15 = candidate2;
      input = [candidateCopy input];
      v17 = [input stringByAppendingString:stringCopy];
      candidate3 = [candidateCopy candidate];
      v11 = [candidate3 rangeOfString:v17 options:9] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_15:

  return v11;
}

- (BOOL)isContinuousPathNonSpacePunctuation:(unsigned int)punctuation
{
  punctuationCopy = punctuation;
  inputManager = [(ACTKeyboardController *)self inputManager];
  terminatorsDeletingAutospace = [inputManager terminatorsDeletingAutospace];

  characterSet = [terminatorsDeletingAutospace characterSet];
  LOBYTE(punctuationCopy) = [characterSet characterIsMember:punctuationCopy];

  return punctuationCopy;
}

- (void)addInput:(id)input fromVariantKey:(BOOL)key fromGestureKey:(BOOL)gestureKey
{
  gestureKeyCopy = gestureKey;
  keyCopy = key;
  inputCopy = input;
  [(ACTKeyboardController *)self addInput:inputCopy fromVariantKey:keyCopy fromGestureKey:gestureKeyCopy touchEvent:0];
  LOBYTE(gestureKeyCopy) = [inputCopy isEqualToString:@"Shift"];

  if ((gestureKeyCopy & 1) == 0)
  {
    [(ACTKeyboardController *)self updateAutoshift];
  }

  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
}

- (void)handleKeyboardInput:(id)input
{
  inputCopy = input;
  acceptedCandidate = [inputCopy acceptedCandidate];

  if (!acceptedCandidate)
  {
    goto LABEL_9;
  }

  acceptedCandidate2 = [inputCopy acceptedCandidate];
  v7 = [(ACTKeyboardController *)self candidateByApplyingSmartPunctuationToCandidate:acceptedCandidate2];
  [inputCopy setAcceptedCandidate:v7];

  acceptedCandidate3 = [inputCopy acceptedCandidate];
  input = [acceptedCandidate3 input];
  acceptedCandidate4 = [inputCopy acceptedCandidate];
  rawInput = [acceptedCandidate4 rawInput];
  [(ACTKeyboardController *)self deleteText:input rawText:rawInput];

  acceptedCandidate5 = [inputCopy acceptedCandidate];
  candidate = [acceptedCandidate5 candidate];

  acceptedCandidate6 = [inputCopy acceptedCandidate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  acceptedCandidate7 = [inputCopy acceptedCandidate];
  isContinuousPathConversion = [acceptedCandidate7 isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    [(ACTKeyboardController *)self adjustContinuousPathCandidate:candidate];
    candidate = acceptedCandidate6 = candidate;
LABEL_5:
  }

  [(ACTKeyboardController *)self insertText:candidate];
  acceptedCandidate8 = [inputCopy acceptedCandidate];
  isAutocorrection = [acceptedCandidate8 isAutocorrection];

  if (isAutocorrection)
  {
    [(ACTKeyboardController *)self setJustAcceptedAutocorrection:1];
  }

LABEL_9:
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__ACTKeyboardController_handleKeyboardInput___block_invoke;
  v22[3] = &unk_279DA1100;
  v22[4] = self;
  v23 = inputCopy;
  v21 = inputCopy;
  [inputManagerWrapper handleKeyboardInput:v21 keyboardState:clonedKeyboardState completionHandler:v22];
}

void __45__ACTKeyboardController_handleKeyboardInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  [*(a1 + 32) updateKeyboardOutput:v15 withInputForSmartPunctuation:*(a1 + 40)];
  if ([v15 deletionCount])
  {
    v6 = 0;
    do
    {
      [*(a1 + 32) deleteBackwards];
      ++v6;
    }

    while (v6 < [v15 deletionCount]);
  }

  v7 = [v15 insertionText];

  if (v7)
  {
    if ([*(a1 + 32) inputIsPunctuationFollowingContinuousPath])
    {
      [*(a1 + 32) deleteBackwards];
    }

    v8 = *(a1 + 32);
    v9 = [v15 insertionText];
    [v8 insertText:v9];
  }

  v10 = [v15 shortcutConversion];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D6F348]);
    v12 = [v15 shortcutConversion];
    v13 = [v11 initWithAutocorrection:v12 alternateCorrections:0];

    v14 = [MEMORY[0x277D6F328] listWithCorrections:v13 predictions:0];
    [*(a1 + 32) setAutocorrectionList:v14];
  }

  [*(a1 + 32) setKeyboardConfiguration:v5];
}

- (void)updateKeyboardOutput:(id)output withInputForSmartPunctuation:(id)punctuation
{
  outputCopy = output;
  punctuationCopy = punctuation;
  smartPunctuationController = [(ACTKeyboardController *)self smartPunctuationController];

  if (smartPunctuationController)
  {
    if ([punctuationCopy isPopupVariant])
    {
      isFlick = 1;
    }

    else
    {
      isFlick = [punctuationCopy isFlick];
    }

    smartPunctuationController2 = [(ACTKeyboardController *)self smartPunctuationController];
    string = [punctuationCopy string];
    keyboardState = [(ACTKeyboardController *)self keyboardState];
    documentState = [keyboardState documentState];
    v13 = [smartPunctuationController2 smartPunctuationOutputForInput:string isLockedInput:isFlick documentState:documentState];

    if ([v13 deletionCount])
    {
      [outputCopy setDeletionCount:{objc_msgSend(v13, "deletionCount")}];
    }

    insertionText = [v13 insertionText];
    if ([insertionText length])
    {
      insertionText2 = [outputCopy insertionText];
      v16 = [insertionText2 length];

      if (!v16)
      {
LABEL_11:

        goto LABEL_12;
      }

      insertionText = [v13 insertionText];
      [outputCopy setInsertionText:insertionText];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (id)candidatesForString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6070;
  v15 = __Block_byref_object_dispose__6071;
  v16 = 0;
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  keyLayout = [keyboardState keyLayout];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__ACTKeyboardController_candidatesForString___block_invoke;
  v10[3] = &unk_279DA10D8;
  v10[4] = &v11;
  [inputManagerWrapper generateReplacementsForString:stringCopy keyLayout:keyLayout continuation:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)generateCandidatesWithKeyboardState:(id)state
{
  stateCopy = state;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  [(ACTKeyboardController *)self setCandidateResultSet:0];
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ACTKeyboardController_generateCandidatesWithKeyboardState___block_invoke;
  v19[3] = &unk_279DA10B0;
  v19[4] = self;
  v19[5] = &v20;
  [inputManagerWrapper generateCandidatesWithKeyboardState:clonedKeyboardState candidateRange:0 completionHandler:{0x7FFFFFFFLL, v19}];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  if (v21[3])
  {
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277CBE640];
  while (1)
  {
    [v7 timeIntervalSinceNow];
    if (v9 <= 0.0)
    {
      break;
    }

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop acceptInputForMode:v8 beforeDate:v7];

    if (v21[3])
    {
      goto LABEL_7;
    }
  }

  if (v21[3])
  {
LABEL_7:
    candidateResultSet = [(ACTKeyboardController *)self candidateResultSet];
    uncommittedText = [candidateResultSet uncommittedText];

    if (uncommittedText)
    {
      candidateResultSet2 = [(ACTKeyboardController *)self candidateResultSet];
      uncommittedText2 = [candidateResultSet2 uncommittedText];
      [(ACTKeyboardController *)self setIntermediateText:uncommittedText2];
    }

    candidateResultSet3 = [(ACTKeyboardController *)self candidateResultSet];
    committedText = [candidateResultSet3 committedText];

    if (committedText)
    {
      candidateResultSet4 = [(ACTKeyboardController *)self candidateResultSet];
      committedText2 = [candidateResultSet4 committedText];
      [(ACTKeyboardController *)self insertText:committedText2];
    }
  }

  else
  {
    NSLog(&cfstr_NotCompleteS.isa, "[ACTKeyboardController generateCandidatesWithKeyboardState:]");
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __61__ACTKeyboardController_generateCandidatesWithKeyboardState___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = [*(result + 32) setCandidateResultSet:a2];
    *(*(*(v2 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)acceptCandidateInputEvent:(id)event fromCandidateBar:(BOOL)bar
{
  barCopy = bar;
  eventCopy = event;
  v7 = eventCopy;
  v12 = eventCopy;
  if (barCopy)
  {
    acceptedCandidate = [eventCopy acceptedCandidate];
    candidate = [acceptedCandidate candidate];
    if ([candidate length])
    {

      v7 = v12;
LABEL_5:
      [(ACTKeyboardController *)self handleKeyboardInput:v7];
      [(ACTKeyboardController *)self setLastInputWasSelection:1];
      goto LABEL_8;
    }

    acceptedCandidate2 = [v12 acceptedCandidate];
    isSecureContentCandidate = [acceptedCandidate2 isSecureContentCandidate];

    v7 = v12;
    if (isSecureContentCandidate)
    {
      goto LABEL_5;
    }
  }

  if (![v7 isDoubleSpace])
  {
    goto LABEL_9;
  }

  [(ACTKeyboardController *)self handleKeyboardInput:v12];
LABEL_8:
  [(ACTKeyboardController *)self updateAutoshift];
  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
LABEL_9:

  MEMORY[0x2821F9730]();
}

- (void)generateCandidates
{
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [(ACTKeyboardController *)self generateCandidatesWithKeyboardState:clonedKeyboardState];
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state
{
  stateCopy = state;
  autocorrection = [(ACTKeyboardController *)self autocorrection];
  if (!autocorrection || (v6 = autocorrection, -[ACTKeyboardController autocorrection](self, "autocorrection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isForShortcutConversion], v7, v6, (v8 & 1) == 0))
  {
    if ([(ACTKeyboardController *)self asyncPredictions]&& ([(ACTKeyboardController *)self inputManagerWrapper], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [NSClassFromString(&cfstr_Ticandidatereq.isa) tokenForKeyboardState:stateCopy];
      requestCondition = [(ACTKeyboardController *)self requestCondition];
      [requestCondition lock];

      [(ACTKeyboardController *)self setAutocorrectionList:0];
      [(ACTKeyboardController *)self setCurrentRequestToken:v11];
      requestCondition2 = [(ACTKeyboardController *)self requestCondition];
      [requestCondition2 unlock];

      inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
      clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke;
      v31[3] = &unk_279DA1088;
      v31[4] = self;
      inputManagerWrapper2 = v11;
      v32 = inputManagerWrapper2;
      [inputManagerWrapper generateAutocorrectionsWithKeyboardState:clonedKeyboardState candidateRange:0 requestToken:3 completionHandler:{inputManagerWrapper2, v31}];

      requestCondition3 = [(ACTKeyboardController *)self requestCondition];
      [requestCondition3 lock];

      currentRequestToken = [(ACTKeyboardController *)self currentRequestToken];

      if (currentRequestToken)
      {
        v19 = *MEMORY[0x277CBE640];
        do
        {
          if ([stateCopy needAutofill])
          {
            requestCondition7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
            requestCondition4 = [(ACTKeyboardController *)self requestCondition];
            v22 = [requestCondition4 waitUntilDate:requestCondition7];

            if ((v22 & 1) == 0)
            {
              requestCondition5 = [(ACTKeyboardController *)self requestCondition];
              [requestCondition5 unlock];

              v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
              currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
              [currentRunLoop acceptInputForMode:v19 beforeDate:v24];

              requestCondition6 = [(ACTKeyboardController *)self requestCondition];
              [requestCondition6 lock];
            }
          }

          else
          {
            requestCondition7 = [(ACTKeyboardController *)self requestCondition];
            [requestCondition7 wait];
          }

          currentRequestToken2 = [(ACTKeyboardController *)self currentRequestToken];
        }

        while (currentRequestToken2);
      }

      requestCondition8 = [(ACTKeyboardController *)self requestCondition];
      [requestCondition8 unlock];
    }

    else
    {
      inputManagerWrapper2 = [(ACTKeyboardController *)self inputManagerWrapper];
      clonedKeyboardState2 = [(ACTKeyboardController *)self clonedKeyboardState];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke_2;
      v30[3] = &unk_279DA1060;
      v30[4] = self;
      [inputManagerWrapper2 generateAutocorrectionsWithKeyboardState:clonedKeyboardState2 completionHandler:v30];
    }
  }
}

void __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setAutocorrectionList:v4];
  v5 = [v4 corrections];

  v6 = [v5 autocorrection];
  v7 = [v6 isContinuousPathConversion];

  if (v7)
  {
    v8 = [*(a1 + 32) cpRequestTokenLock];
    [v8 lock];

    [*(a1 + 32) setLastCPRequestToken:*(a1 + 40)];
    v9 = [*(a1 + 32) cpRequestTokenLock];
    [v9 unlock];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);

    [v10 closeRequestToken:v11];
  }
}

void __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setAutocorrectionList:v4];
  v5 = [v4 corrections];

  v6 = [v5 autocorrection];
  v7 = [v6 isContinuousPathConversion];

  if (v7)
  {
    v8 = [*(a1 + 32) cpRequestTokenLock];
    [v8 lock];

    [*(a1 + 32) setLastCPRequestToken:0];
    v9 = [*(a1 + 32) cpRequestTokenLock];
    [v9 unlock];
  }
}

- (void)closeRequestToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v10 = tokenCopy;
    currentRequestToken = [(ACTKeyboardController *)self currentRequestToken];
    v6 = [currentRequestToken isSameRequestAs:v10];

    tokenCopy = v10;
    if (v6)
    {
      requestCondition = [(ACTKeyboardController *)self requestCondition];
      [requestCondition lock];

      [(ACTKeyboardController *)self setCurrentRequestToken:0];
      requestCondition2 = [(ACTKeyboardController *)self requestCondition];
      [requestCondition2 signal];

      requestCondition3 = [(ACTKeyboardController *)self requestCondition];
      [requestCondition3 unlock];

      tokenCopy = v10;
    }
  }
}

- (void)pushCandidateResultSet:(id)set requestToken:(id)token
{
  setCopy = set;
  tokenCopy = token;
  firstCandidate = [setCopy firstCandidate];
  isContinuousPathConversion = [firstCandidate isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    cpRequestTokenLock = [(ACTKeyboardController *)self cpRequestTokenLock];
    [cpRequestTokenLock lock];

    lastCPRequestToken = [(ACTKeyboardController *)self lastCPRequestToken];
    v11 = [lastCPRequestToken isSameRequestAs:tokenCopy];

    if (v11)
    {
      [(ACTKeyboardController *)self setCandidateResultSet:setCopy];
      [(ACTKeyboardController *)self setLastCPRequestToken:0];
    }

    cpRequestTokenLock2 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [cpRequestTokenLock2 unlock];
  }

  else
  {
    [(ACTKeyboardController *)self setCandidateResultSet:setCopy];
  }
}

- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token
{
  autocorrectionsCopy = autocorrections;
  tokenCopy = token;
  corrections = [autocorrectionsCopy corrections];
  autocorrection = [corrections autocorrection];
  isContinuousPathConversion = [autocorrection isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    cpRequestTokenLock = [(ACTKeyboardController *)self cpRequestTokenLock];
    [cpRequestTokenLock lock];

    lastCPRequestToken = [(ACTKeyboardController *)self lastCPRequestToken];
    v12 = [lastCPRequestToken isSameRequestAs:tokenCopy];

    if (v12)
    {
      [(ACTKeyboardController *)self setAutocorrectionList:autocorrectionsCopy];
      [(ACTKeyboardController *)self setLastCPRequestToken:0];
    }

    cpRequestTokenLock2 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [cpRequestTokenLock2 unlock];
  }

  else
  {
    [(ACTKeyboardController *)self setAutocorrectionList:autocorrectionsCopy];
  }
}

- (void)generateAutocorrectionsWithCount:(unint64_t)count
{
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACTKeyboardController_generateAutocorrectionsWithCount___block_invoke;
  v7[3] = &unk_279DA1060;
  v7[4] = self;
  [inputManagerWrapper generateAutocorrectionsWithKeyboardState:clonedKeyboardState candidateRange:0 completionHandler:{count, v7}];
}

- (void)generateAutocorrectionsWithShiftState:(int)state
{
  v3 = *&state;
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [clonedKeyboardState setShiftState:v3];
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ACTKeyboardController_generateAutocorrectionsWithShiftState___block_invoke;
  v7[3] = &unk_279DA1060;
  v7[4] = self;
  [inputManagerWrapper generateAutocorrectionsWithKeyboardState:clonedKeyboardState completionHandler:v7];
}

- (void)generateAutocorrectionsOrCandidates
{
  generatesCandidates = [(ACTKeyboardController *)self generatesCandidates];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  if (generatesCandidates)
  {
    [(ACTKeyboardController *)self generateCandidatesWithKeyboardState:clonedKeyboardState];
  }

  else
  {
    [(ACTKeyboardController *)self generateAutocorrectionsWithKeyboardState:clonedKeyboardState];
  }
}

- (BOOL)generatesCandidates
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  if (objc_opt_respondsToSelector())
  {
    keyboardState2 = [(ACTKeyboardController *)self keyboardState];
    longPredictionListEnabled = [keyboardState2 longPredictionListEnabled];
  }

  else
  {
    longPredictionListEnabled = 0;
  }

  inputManagerState = [(ACTKeyboardController *)self inputManagerState];
  v7 = [inputManagerState usesCandidateSelection] | longPredictionListEnabled;

  return v7 & 1;
}

- (id)trimmedCandidate:(id)candidate
{
  candidateCopy = candidate;
  input = [candidateCopy input];
  rawInput = [candidateCopy rawInput];
  candidate = [candidateCopy candidate];
  v7 = [input length];
  v8 = [candidate length];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__ACTKeyboardController_trimmedCandidate___block_invoke;
  v22[3] = &unk_279DA1038;
  v11 = input;
  v23 = v11;
  v12 = whitespaceCharacterSet;
  v24 = v12;
  v25 = &v26;
  [candidate enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v22}];
  v13 = candidateCopy;
  v14 = v13;
  if (v27[3])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_alloc(MEMORY[0x277D6F568]);
      v16 = [candidate substringFromIndex:v27[3]];
      v17 = [v11 substringFromIndex:v27[3]];
      v14 = [v15 initWithCandidate:v16 forInput:v17 rawInput:rawInput wordOriginFeedbackID:objc_msgSend(v13 usageTrackingMask:"wordOriginFeedbackID") sourceMask:{objc_msgSend(v13, "usageTrackingMask"), objc_msgSend(v13, "sourceMask")}];

      [v14 setContinuousPathConversion:{objc_msgSend(v13, "isContinuousPathConversion")}];
      v18 = v13;
    }

    else
    {
      v19 = MEMORY[0x277D6F3D8];
      v18 = [candidate substringFromIndex:v27[3]];
      v20 = [v11 substringFromIndex:v27[3]];
      v14 = [v19 candidateWithCandidate:v18 forInput:v20];
    }
  }

  _Block_object_dispose(&v26, 8);

  return v14;
}

void __42__ACTKeyboardController_trimmedCandidate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = a2;
  v11 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v12 = [v13 isEqualToString:v11];

  if (v12)
  {
    if (a4 == 1 && [*(a1 + 40) characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}])
    {
      *(*(*(a1 + 48) + 8) + 24) = a3 + 1;
    }
  }

  else
  {
    *a7 = 1;
  }
}

- (id)candidateToConfirmInputString
{
  inputManager = [(ACTKeyboardController *)self inputManager];
  defaultCandidate = [inputManager defaultCandidate];

  v5 = [(ACTKeyboardController *)self trimmedCandidate:defaultCandidate];

  return v5;
}

- (NSArray)predictions
{
  candidateResultSet = [(ACTKeyboardController *)self candidateResultSet];
  candidates = [candidateResultSet candidates];

  if (!candidates || ![candidates count])
  {
    autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
    predictions = [autocorrectionList predictions];
    v7 = predictions;
    v8 = MEMORY[0x277CBEBF8];
    if (predictions)
    {
      v8 = predictions;
    }

    v9 = v8;

    candidates = v9;
  }

  return candidates;
}

- (TIKeyboardCandidate)autocorrection
{
  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  shouldAcceptTopCandidate = [autocorrectionList shouldAcceptTopCandidate];

  if (shouldAcceptTopCandidate && (-[ACTKeyboardController autocorrectionList](self, "autocorrectionList"), v5 = objc_claimAutoreleasedReturnValue(), [v5 candidates], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v7))
  {
    candidateToConfirmInputString = [(ACTKeyboardController *)self trimmedCandidate:v7];
  }

  else
  {
    candidateToConfirmInputString = [(ACTKeyboardController *)self candidateToConfirmInputString];
  }

  text = [(ACTKeyboardController *)self text];
  selectedRange = [(ACTKeyboardController *)self selectedRange];
  v12 = [text substringToIndex:selectedRange + v11];

  input = [candidateToConfirmInputString input];
  if (![input length])
  {
    goto LABEL_13;
  }

  input2 = [candidateToConfirmInputString input];
  if ([v12 hasSuffix:input2])
  {

LABEL_13:
    goto LABEL_14;
  }

  rawInput = [candidateToConfirmInputString rawInput];
  if (![rawInput length])
  {

    goto LABEL_12;
  }

  rawInput2 = [candidateToConfirmInputString rawInput];
  v17 = [v12 hasSuffix:rawInput2];

  if ((v17 & 1) == 0)
  {
LABEL_12:
    [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:&stru_287EC4808];
    candidateToConfirmInputString = input = candidateToConfirmInputString;
    goto LABEL_13;
  }

LABEL_14:
  keyboard = [(ACTKeyboardController *)self keyboard];
  name = [keyboard name];
  if ([name containsString:@"-With-"])
  {
    lexiconLocale = [candidateToConfirmInputString lexiconLocale];

    if (lexiconLocale)
    {
      goto LABEL_19;
    }

    keyboard = candidateToConfirmInputString;
    candidateToConfirmInputString = 0;
  }

  else
  {
  }

LABEL_19:

  return candidateToConfirmInputString;
}

- (TIKeyboardCandidate)inlineCompletion
{
  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  shouldAcceptInlineCompletion = [autocorrectionList shouldAcceptInlineCompletion];

  if (!shouldAcceptInlineCompletion)
  {
    v16 = 0;
    goto LABEL_10;
  }

  autocorrectionList2 = [(ACTKeyboardController *)self autocorrectionList];
  inlineCompletions = [autocorrectionList2 inlineCompletions];
  firstObject = [inlineCompletions firstObject];

  candidate = [firstObject candidate];
  v9 = [candidate componentsSeparatedByString:@" "];

  text = [(ACTKeyboardController *)self text];
  selectedRange = [(ACTKeyboardController *)self selectedRange];
  v13 = [text substringFromIndex:v12 + selectedRange - 1];

  if ([v13 isEqualToString:@" "])
  {
    if ([v9 count] < 2)
    {
      v16 = 0;
      goto LABEL_9;
    }

    firstObject2 = [v9 objectAtIndexedSubscript:1];
    v15 = [firstObject candidateByReplacingWithCandidate:firstObject2 input:&stru_287EC4808 rawInput:&stru_287EC4808];
  }

  else
  {
    firstObject2 = [v9 firstObject];
    v15 = [firstObject candidateByReplacingWithCandidate:firstObject2];
  }

  v16 = v15;

  firstObject = firstObject2;
LABEL_9:

LABEL_10:

  return v16;
}

- (void)textAccepted:(id)accepted predictiveCandidate:(BOOL)candidate
{
  candidateCopy = candidate;
  acceptedCopy = accepted;
  candidate = [acceptedCopy candidate];
  v8 = [candidate length];

  if (!v8)
  {
    v9 = acceptedCopy;
    goto LABEL_15;
  }

  v9 = [(ACTKeyboardController *)self candidateByApplyingSmartPunctuationToCandidate:acceptedCopy];

  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  v11 = objc_opt_respondsToSelector();

  inputManagerWrapper2 = [(ACTKeyboardController *)self inputManagerWrapper];
  v13 = inputManagerWrapper2;
  if (v11)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__ACTKeyboardController_textAccepted_predictiveCandidate___block_invoke;
    v21[3] = &unk_279DA0F30;
    v21[4] = self;
    [inputManagerWrapper2 textAccepted:v9 completionHandler:v21];
  }

  else
  {
    [inputManagerWrapper2 textAccepted:v9];
  }

  if (candidateCopy)
  {
    inputManager = [(ACTKeyboardController *)self inputManager];
    [inputManager dropInput];
  }

  if (![v9 isContinuousPathConversion])
  {
    goto LABEL_12;
  }

  input = [v9 input];
  if ([input length])
  {

LABEL_12:
    input2 = [v9 input];
    rawInput = [v9 rawInput];
    [(ACTKeyboardController *)self deleteText:input2 rawText:rawInput];

    goto LABEL_13;
  }

  rawInput2 = [v9 rawInput];
  v17 = [rawInput2 length];

  if (v17)
  {
    goto LABEL_12;
  }

  [(NSMutableString *)self->_text deleteCharactersInRange:self->_selectedRange.location, self->_selectedRange.length];
  self->_selectedRange.length = 0;
  [(ACTKeyboardController *)self updateDocumentState];
LABEL_13:
  candidate2 = [v9 candidate];
  [(ACTKeyboardController *)self insertText:candidate2];

  if ([v9 shouldInsertSpaceAfterSelection])
  {
    [(ACTKeyboardController *)self insertTextAfterSelection:@" "];
  }

LABEL_15:
}

- (id)candidateByApplyingSmartPunctuationToCandidate:(id)candidate
{
  v33 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  smartPunctuationController = [(ACTKeyboardController *)self smartPunctuationController];

  v6 = candidateCopy;
  v7 = v6;
  if (smartPunctuationController)
  {
    smartPunctuationController2 = [(ACTKeyboardController *)self smartPunctuationController];
    candidate = [v6 candidate];
    v10 = [smartPunctuationController2 smartPunctuationResultsForString:candidate];

    v7 = v6;
    if ([v10 count])
    {
      v11 = MEMORY[0x277CCAB68];
      candidate2 = [v6 candidate];
      v13 = [v11 stringWithString:candidate2];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      reverseObjectEnumerator = [v10 reverseObjectEnumerator];
      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            range = [v19 range];
            v22 = v21;
            replacementString = [v19 replacementString];
            [v13 replaceCharactersInRange:range withString:{v22, replacementString}];
          }

          v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      v24 = objc_alloc(MEMORY[0x277D6F3D8]);
      input = [v6 input];
      rawInput = [v6 rawInput];
      v7 = [v24 initWithCandidate:v13 forInput:input rawInput:rawInput];
    }
  }

  return v7;
}

- (void)acceptCandidate:(id)candidate predictiveCandidate:(BOOL)predictiveCandidate
{
  predictiveCandidateCopy = predictiveCandidate;
  candidateCopy = candidate;
  inputManagerState = [(ACTKeyboardController *)self inputManagerState];
  usesCandidateSelection = [inputManagerState usesCandidateSelection];

  if (usesCandidateSelection)
  {
    inputManagerState2 = [(ACTKeyboardController *)self inputManagerState];
    commitsAcceptedCandidate = [inputManagerState2 commitsAcceptedCandidate];

    if (commitsAcceptedCandidate)
    {
      candidate = [candidateCopy candidate];
      v12 = [candidate length];

      if (v12)
      {
        inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
        [inputManagerWrapper textAccepted:candidateCopy];
      }

      [(ACTKeyboardController *)self setMarkedText:0];
      candidate2 = [candidateCopy candidate];
      [(ACTKeyboardController *)self insertText:candidate2];
    }

    inputManagerWrapper2 = [(ACTKeyboardController *)self inputManagerWrapper];
    clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__ACTKeyboardController_acceptCandidate_predictiveCandidate___block_invoke;
    v17[3] = &unk_279DA1010;
    v17[4] = self;
    [inputManagerWrapper2 handleAcceptedCandidate:candidateCopy keyboardState:clonedKeyboardState completionHandler:v17];
  }

  else
  {
    [(ACTKeyboardController *)self textAccepted:candidateCopy predictiveCandidate:predictiveCandidateCopy];
  }

  [(ACTKeyboardController *)self setLastInputWasSelection:predictiveCandidateCopy];
  [(ACTKeyboardController *)self setCandidateResultSet:0];
  [(ACTKeyboardController *)self setAutocorrectionList:0];
}

void __61__ACTKeyboardController_acceptCandidate_predictiveCandidate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = a2;
  v6 = [v5 textToCommit];
  v7 = *(a1 + 32);
  v8 = *(v7 + 208);
  *(v7 + 208) = v6;

  v9 = *(a1 + 32);
  v10 = [v5 textToCommit];

  [v9 insertText:v10];
  [*(a1 + 32) setKeyboardConfiguration:v11];
}

- (BOOL)hasPrediction:(id)prediction
{
  v20 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  predictions = [autocorrectionList predictions];

  v7 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(predictions);
        }

        candidate = [*(*(&v15 + 1) + 8 * i) candidate];
        v13 = [candidate compare:predictionCopy] == 0;

        v9 |= v13;
      }

      v8 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)rejectCandidate:(id)candidate
{
  v35 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  if (candidateCopy)
  {
    inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
    [inputManagerWrapper candidateRejected:candidateCopy];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  predictions = [autocorrectionList predictions];

  obj = predictions;
  v8 = [predictions countByEnumeratingWithState:&v30 objects:v34 count:16];
  v28 = candidateCopy;
  if (v8)
  {
    v9 = v8;
    typingEngine = 0;
    v11 = *v31;
    v12 = &stru_287EC4808;
    v13 = &stru_287EC4808;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        input = [v15 input];
        input2 = input;
        if (v13)
        {
          v18 = [(__CFString *)input length];
          v19 = [(__CFString *)v13 length];

          if (v18 <= v19)
          {
            continue;
          }

          input2 = [v15 input];
        }

        rawInput = [v15 rawInput];

        typingEngine = [v15 typingEngine];
        v12 = rawInput;
        v13 = input2;
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  typingEngine = 0;
  v12 = &stru_287EC4808;
  v13 = &stru_287EC4808;
LABEL_16:

  v21 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:v13 forInput:v13 rawInput:v12];
  [v21 setTypingEngine:typingEngine];
  v22 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v21 alternateCorrections:0];
  v23 = MEMORY[0x277D6F328];
  autocorrectionList2 = [(ACTKeyboardController *)selfCopy autocorrectionList];
  predictions2 = [autocorrectionList2 predictions];
  v26 = [v23 listWithCorrections:v22 predictions:predictions2];
  [(ACTKeyboardController *)selfCopy setAutocorrectionList:v26];
}

- (void)acceptAutocorrection
{
  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  shouldAcceptTopCandidate = [autocorrectionList shouldAcceptTopCandidate];

  if (shouldAcceptTopCandidate)
  {
    autocorrectionList2 = [(ACTKeyboardController *)self autocorrectionList];
    candidates = [autocorrectionList2 candidates];
    firstObject = [candidates firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [(ACTKeyboardController *)self textAccepted:firstObject predictiveCandidate:0];
  [(ACTKeyboardController *)self setAutocorrectionList:0];
}

- (id)displayStringOverrideForKey:(id)key
{
  keyCopy = key;
  layoutUtils = [(ACTKeyboardController *)self layoutUtils];
  keyOverrides = [layoutUtils keyOverrides];
  v7 = [keyOverrides objectForKey:keyCopy];

  return v7;
}

- (id)keyToAccessKeyplane:(id)keyplane fromKeyplane:(id)fromKeyplane
{
  keyplaneCopy = keyplane;
  fromKeyplaneCopy = fromKeyplane;
  if ([(ACTKeyboardController *)self isKeyplane:keyplaneCopy shiftAlternateOfKeyplane:fromKeyplaneCopy])
  {
    v8 = @"Shift";
LABEL_5:
    v9 = [(ACTKeyboardLayoutUtils *)self->_layoutUtils exactKeyForString:v8 keyplane:fromKeyplaneCopy includeSecondaryStrings:0];
    goto LABEL_7;
  }

  if ([(ACTKeyboardController *)self isKeyplane:keyplaneCopy alternateOfKeyplane:fromKeyplaneCopy])
  {
    v8 = @"More";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)isKeyplane:(id)keyplane alternateOfKeyplane:(id)ofKeyplane
{
  ofKeyplaneCopy = ofKeyplane;
  keyplaneCopy = keyplane;
  keyboard = [(ACTKeyboardController *)self keyboard];
  alternateKeyplaneName = [ofKeyplaneCopy alternateKeyplaneName];

  v10 = [keyboard subtreeWithName:alternateKeyplaneName];

  return v10 == keyplaneCopy;
}

- (BOOL)isKeyplane:(id)keyplane shiftAlternateOfKeyplane:(id)ofKeyplane
{
  ofKeyplaneCopy = ofKeyplane;
  keyplaneCopy = keyplane;
  keyboard = [(ACTKeyboardController *)self keyboard];
  shiftAlternateKeyplaneName = [ofKeyplaneCopy shiftAlternateKeyplaneName];

  v10 = [keyboard subtreeWithName:shiftAlternateKeyplaneName];

  return v10 == keyplaneCopy;
}

- (void)enumerateKeyplaneNamesAdjacentToKeyplane:(id)keyplane usingBlock:(id)block
{
  blockCopy = block;
  shiftAlternateKeyplaneName = [keyplane shiftAlternateKeyplaneName];
  blockCopy[2](blockCopy, shiftAlternateKeyplaneName);

  alternateKeyplaneName = [keyplane alternateKeyplaneName];
  blockCopy[2](blockCopy, alternateKeyplaneName);
}

- (BOOL)isKeyStringAboveSpaceBar:(id)bar
{
  barCopy = bar;
  keyplane = [(ACTKeyboardController *)self keyplane];
  v6 = [(ACTKeyboardController *)self keyCodeWithString:@" " inKeyplane:keyplane];

  if (v6 == -1)
  {
    v19 = 0;
  }

  else
  {
    keyplane2 = [(ACTKeyboardController *)self keyplane];
    keys = [keyplane2 keys];
    v9 = [keys objectAtIndexedSubscript:v6];

    keyplane3 = [(ACTKeyboardController *)self keyplane];
    v11 = [(ACTKeyboardController *)self keyCodeWithString:barCopy inKeyplane:keyplane3];

    if (v11 == -1)
    {
      v19 = 0;
    }

    else
    {
      keyplane4 = [(ACTKeyboardController *)self keyplane];
      keys2 = [keyplane4 keys];
      v14 = [keys2 objectAtIndexedSubscript:v11];

      [v9 frame];
      v16 = v15;
      [v14 frame];
      MidX = CGRectGetMidX(v22);
      [v14 frame];
      v18 = v16 + CGRectGetMidY(v23);
      [v9 frame];
      v21.x = MidX;
      v21.y = v18;
      v19 = CGRectContainsPoint(v24, v21);
    }
  }

  return v19;
}

- (id)keyContainingPoint:(CGPoint)point inKeyplane:(id)keyplane
{
  y = point.y;
  x = point.x;
  v27 = *MEMORY[0x277D85DE8];
  keyplaneCopy = keyplane;
  [keyplaneCopy frame];
  v29.x = x;
  v29.y = y;
  if (CGRectContainsPoint(v30, v29) || ([keyplaneCopy name], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"Dynamic"), v8, v9))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    keys = [keyplaneCopy keys];
    v11 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v23;
      v15 = 1.79769313e308;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(keys);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 visible])
          {
            [(ACTKeyboardController *)self distanceFromKey:v17 toPoint:x, y];
            v19 = v18;
            if (v15 > v18)
            {
              v20 = v17;

              v13 = v20;
              v15 = v19;
            }
          }
        }

        v12 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (float)distanceFromKey:(id)key toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  [keyCopy frame];
  MinX = CGRectGetMinX(v24);
  [keyCopy frame];
  if (x >= MinX)
  {
    v13 = 0.0;
    if (x <= CGRectGetMaxX(*&v8))
    {
      goto LABEL_6;
    }

    [keyCopy frame];
    MaxX = CGRectGetMaxX(v25);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v8);
  }

  v13 = x - MaxX;
LABEL_6:
  [keyCopy frame];
  MinY = CGRectGetMinY(v26);
  [keyCopy frame];
  if (y < MinY)
  {
    v19 = CGRectGetMinY(*&v15);
LABEL_10:
    v21 = y - v19;
    goto LABEL_11;
  }

  MaxY = CGRectGetMaxY(*&v15);
  v21 = 0.0;
  if (y > MaxY)
  {
    [keyCopy frame];
    v19 = CGRectGetMaxY(v27);
    goto LABEL_10;
  }

LABEL_11:
  v22 = sqrtf((v21 * v21) + (v13 * v13));

  return v22;
}

- (int64_t)keyCodeWithString:(id)string inKeyplane:(id)keyplane
{
  stringCopy = string;
  keyplaneCopy = keyplane;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  keys = [keyplaneCopy keys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ACTKeyboardController_keyCodeWithString_inKeyplane___block_invoke;
  v13[3] = &unk_279DA0FE8;
  v13[4] = self;
  v9 = keyplaneCopy;
  v14 = v9;
  v10 = stringCopy;
  v15 = v10;
  v16 = &v17;
  [keys enumerateObjectsUsingBlock:v13];

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __54__ACTKeyboardController_keyCodeWithString_inKeyplane___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 layoutUtils];
  v10 = [v9 representedStringForKey:v8 shifted:{objc_msgSend(*(a1 + 40), "isShiftKeyplane")}];

  if ([*(a1 + 48) isEqualToString:v10])
  {
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)performSkipTapAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code
{
  v10 = [(ACTKeyboardController *)self keys:index];
  v11 = [v10 objectAtIndex:code];

  if ([v11 interactionType] == 11)
  {
    v12 = &stru_287EC4808;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (![v11 BOOLForProperty:@"more-after"])
    {
      goto LABEL_5;
    }
  }

  [(ACTKeyboardController *)self alternateKeyplane];
  v13 = v12;
LABEL_5:
  if ([v11 BOOLForProperty:@"shift-after"])
  {
    [(ACTKeyboardController *)self shiftKeyplane];
  }

  if ([v11 interactionType] != 14)
  {
    [(ACTKeyboardController *)self updateAutoshift];
  }

  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];

  return v13;
}

- (id)performTouchUpAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d secondaryString:(BOOL)string
{
  stringCopy = string;
  v9 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v17 = 0x277CCA000uLL;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v19 = [activeTouchState objectForKey:v18];

  lastTouchEvent = [v19 lastTouchEvent];
  if (-[ACTKeyboardController touchPassesDragThresholdAtPoint:pathIndex:](self, "touchPassesDragThresholdAtPoint:pathIndex:", index, x, y) || [lastTouchEvent continuousPathState] == 3 || objc_msgSend(lastTouchEvent, "continuousPathState") == 4)
  {
    *&v21 = radius;
    [(ACTKeyboardController *)self retestTouchAtLocation:index radius:v9 timestamp:x pathIndex:y fingerID:v21, timestamp];
    activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v24 = [activeTouchState2 objectForKey:v23];

    lastTouchEvent2 = [v24 lastTouchEvent];

    lastTouchEvent = lastTouchEvent2;
    v19 = v24;
  }

  forcedKeyCode = [lastTouchEvent forcedKeyCode];
  if ([lastTouchEvent continuousPathState] == 4)
  {
    continuousPathState = 5;
  }

  else
  {
    continuousPathState = [lastTouchEvent continuousPathState];
  }

  v28 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:index radius:v9 timestamp:forcedKeyCode pathIndex:continuousPathState fingerID:x forcedKeyCode:y continuousPathState:{radius, timestamp}];
  if (forcedKeyCode == -2)
  {
    if (![(ACTKeyboardController *)self insertsSpaceAfterPredictiveInput]&& ![(ACTKeyboardController *)self usesTransliteration])
    {
      autocorrection = [(ACTKeyboardController *)self autocorrection];
      if (![autocorrection isAutocorrection])
      {
LABEL_40:

        goto LABEL_41;
      }

      autocorrection2 = [(ACTKeyboardController *)self autocorrection];
      candidate = [autocorrection2 candidate];
      if (![candidate length])
      {

        goto LABEL_39;
      }

      [(ACTKeyboardController *)self autocorrection];
      v33 = v32 = v28;
      isContinuousPathConversion = [v33 isContinuousPathConversion];

      v28 = v32;
      if ((isContinuousPathConversion & 1) == 0)
      {
        [(ACTKeyboardController *)self setLastInputWasSelection:1];
        autocorrection = [(ACTKeyboardController *)self inputManagerState];
        autocorrection2 = [autocorrection wordSeparator];
        [(ACTKeyboardController *)self addInput:autocorrection2 fromVariantKey:0 touchEvent:0];
LABEL_39:

        goto LABEL_40;
      }
    }

LABEL_41:
    inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
    clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
    [inputManagerWrapper skipHitTestForTouchEvent:v28 keyboardState:clonedKeyboardState];

    [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
    autocorrection3 = [(ACTKeyboardController *)self autocorrection];
    candidate2 = [autocorrection3 candidate];

    if ([(ACTKeyboardController *)self usesTransliteration]|| [(ACTKeyboardController *)self generatesCandidates])
    {
      wordSeparator = 0;
      v58 = 0x277CCA000;
LABEL_56:
      [(ACTKeyboardController *)self updateAutoshift];
      activeTouchState3 = [(ACTKeyboardController *)self activeTouchState];
      v79 = [*(v58 + 2992) numberWithUnsignedInteger:index];
      [activeTouchState3 removeObjectForKey:v79];

      goto LABEL_57;
    }

    v86 = v28;
    v59 = MEMORY[0x277D6F328];
    autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
    predictions = [autocorrectionList predictions];
    autocorrectionList2 = [(ACTKeyboardController *)self autocorrectionList];
    emojiList = [autocorrectionList2 emojiList];
    v64 = [v59 listWithCorrections:0 predictions:predictions emojiList:emojiList];

    if (![candidate2 length])
    {
      wordSeparator = 0;
      goto LABEL_48;
    }

    if ([(ACTKeyboardController *)self insertsSpaceAfterPredictiveInput])
    {
      inputManagerState = [(ACTKeyboardController *)self inputManagerState];
      wordSeparator = [inputManagerState wordSeparator];

      inputManagerState2 = [(ACTKeyboardController *)self inputManagerState];
      wordSeparator2 = [inputManagerState2 wordSeparator];
      v68 = [candidate2 stringByAppendingString:wordSeparator2];

      v69 = [(ACTKeyboardController *)self adjustContinuousPathCandidate:v68];
      [(ACTKeyboardController *)self addInput:wordSeparator fromVariantKey:0 touchEvent:0];
      candidate2 = v68;
LABEL_48:
      v58 = 0x277CCA000;
LABEL_55:
      v28 = v86;
      [(ACTKeyboardController *)self setAutocorrectionList:v64];

      goto LABEL_56;
    }

    autocorrection4 = [(ACTKeyboardController *)self autocorrection];
    candidate3 = [autocorrection4 candidate];
    if ([candidate3 hasPrefix:@" "])
    {
      text = [(ACTKeyboardController *)self text];
      v73 = [text hasSuffix:@"..."];

      if (!v73)
      {
        v58 = 0x277CCA000uLL;
        goto LABEL_54;
      }

      v81 = objc_alloc(MEMORY[0x277D6F568]);
      candidate4 = [autocorrection4 candidate];
      v74 = [candidate4 substringFromIndex:1];
      input = [autocorrection4 input];
      rawInput = [autocorrection4 rawInput];
      v82 = [v81 initWithCandidate:v74 forInput:input rawInput:rawInput wordOriginFeedbackID:objc_msgSend(autocorrection4 usageTrackingMask:"wordOriginFeedbackID") sourceMask:{objc_msgSend(autocorrection4, "usageTrackingMask"), objc_msgSend(autocorrection4, "sourceMask")}];

      [v82 setContinuousPathConversion:1];
      candidate3 = autocorrection4;
      autocorrection4 = v82;
    }

    v58 = 0x277CCA000;

LABEL_54:
    candidate5 = [autocorrection4 candidate];

    [(ACTKeyboardController *)self acceptCandidate:autocorrection4];
    wordSeparator = 0;
    candidate2 = candidate5;
    goto LABEL_55;
  }

  keys = [(ACTKeyboardController *)self keys];
  v36 = [keys objectAtIndex:forcedKeyCode];

  layoutUtils = [(ACTKeyboardController *)self layoutUtils];
  v38 = [layoutUtils representedStringForKey:v36 shifted:-[ACTKeyboardController isShifted](self includeSecondaryStrings:{"isShifted"), stringCopy}];

  interactionType = [v36 interactionType];
  v40 = 0;
  if (interactionType > 12)
  {
    if (interactionType > 14)
    {
      if (interactionType != 16)
      {
        if (interactionType == 15)
        {
          v85 = v28;
          [(ACTKeyboardController *)self addInput:v38 fromVariantKey:0 touchEvent:v28];
          v40 = v38;
          keyplane = [(ACTKeyboardController *)self keyplane];
          name = [keyplane name];
          v45 = [name containsString:@"Wildcat"];

          if (v45)
          {
            keyplane2 = [(ACTKeyboardController *)self keyplane];
            name2 = [keyplane2 name];
            uppercaseString = [name2 uppercaseString];
            v83 = [uppercaseString containsString:@"-ALTERNATE"];

            v17 = 0x277CCA000;
            v28 = v85;
            if (!v83)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v17 = 0x277CCA000;
            v28 = v85;
          }
        }

        goto LABEL_29;
      }
    }

    else if (interactionType != 13)
    {
      inputManagerWrapper2 = [(ACTKeyboardController *)self inputManagerWrapper];
      clonedKeyboardState2 = [(ACTKeyboardController *)self clonedKeyboardState];
      [inputManagerWrapper2 skipHitTestForTouchEvent:v28 keyboardState:clonedKeyboardState2];

      [(ACTKeyboardController *)self shiftKeyplane];
      v40 = &stru_287EC4808;
      goto LABEL_29;
    }

LABEL_28:
    [(ACTKeyboardController *)self addInput:v38 fromVariantKey:0 touchEvent:v28];
    v40 = v38;
    goto LABEL_29;
  }

  if ((interactionType - 1) < 2)
  {
    goto LABEL_28;
  }

  if (interactionType == 4)
  {
    inputManagerWrapper3 = [(ACTKeyboardController *)self inputManagerWrapper];
    clonedKeyboardState3 = [(ACTKeyboardController *)self clonedKeyboardState];
    [inputManagerWrapper3 skipHitTestForTouchEvent:v28 keyboardState:clonedKeyboardState3];

    [(ACTKeyboardController *)self deleteInput:v28];
    v40 = @"\\b";
  }

  else if (interactionType == 11)
  {
    v40 = &stru_287EC4808;
LABEL_30:
    [(ACTKeyboardController *)self alternateKeyplane];
    goto LABEL_31;
  }

LABEL_29:
  if ([v36 BOOLForProperty:@"more-after"])
  {
    goto LABEL_30;
  }

LABEL_31:
  if ([v36 BOOLForProperty:@"shift-after"])
  {
    [(ACTKeyboardController *)self shiftKeyplane];
  }

  if ([v36 interactionType] != 14)
  {
    [(ACTKeyboardController *)self updateAutoshift];
  }

  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];

  activeTouchState4 = [(ACTKeyboardController *)self activeTouchState];
  v50 = [*(v17 + 2992) numberWithUnsignedInteger:index];
  [activeTouchState4 removeObjectForKey:v50];

  wordSeparator = v40;
  candidate2 = wordSeparator;
LABEL_57:

  return candidate2;
}

- (id)adjustContinuousPathCandidate:(id)candidate
{
  candidateCopy = candidate;
  text = [(ACTKeyboardController *)self text];
  v6 = [text length];
  if (v6 >= 3 && [candidateCopy length] && objc_msgSend(text, "characterAtIndex:", (v6 - 1)) == 46 && objc_msgSend(text, "characterAtIndex:", (v6 - 2)) == 46 && objc_msgSend(text, "characterAtIndex:", (v6 - 3)) == 46 && objc_msgSend(candidateCopy, "characterAtIndex:", 0))
  {
    v7 = [candidateCopy substringFromIndex:1];

    candidateCopy = v7;
  }

  return candidateCopy;
}

- (void)performTouchEndRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v26 = [activeTouchState objectForKey:v15];

  lastTouchEvent = [v26 lastTouchEvent];
  continuousPathState = [lastTouchEvent continuousPathState];
  if (continuousPathState == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 6;
  }

  if (continuousPathState)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  forcedKeyCode = [lastTouchEvent forcedKeyCode];
  v21 = [MEMORY[0x277D6F440] touchEventWithStage:5 location:index radius:v7 timestamp:forcedKeyCode pathIndex:v19 fingerID:x forcedKeyCode:y continuousPathState:{radius, timestamp}];
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [inputManagerWrapper performHitTestForTouchEvent:v21 keyboardState:clonedKeyboardState continuation:&__block_literal_global_148];

  activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [activeTouchState2 removeObjectForKey:v25];
}

- (void)performTouchRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v28 = [activeTouchState objectForKey:v15];

  lastTouchEvent = [v28 lastTouchEvent];
  v17 = lastTouchEvent;
  if (lastTouchEvent)
  {
    continuousPathState = [lastTouchEvent continuousPathState];
    if (continuousPathState == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

    if (continuousPathState)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    forcedKeyCode = [v17 forcedKeyCode];
  }

  else
  {
    v20 = 0;
    forcedKeyCode = -1;
  }

  v22 = [MEMORY[0x277D6F440] touchEventWithStage:4 location:index radius:v7 timestamp:forcedKeyCode pathIndex:v20 fingerID:x forcedKeyCode:y continuousPathState:{radius, timestamp}];
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [inputManagerWrapper skipHitTestForTouchEvent:v22 keyboardState:clonedKeyboardState];

  v25 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v25 setLastTouchEvent:v22];
  -[_ACTKeyboardTouchState setDragged:](v25, "setDragged:", [v28 dragged]);
  [v28 initialDragPoint];
  [(_ACTKeyboardTouchState *)v25 setInitialDragPoint:?];
  activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [activeTouchState2 setObject:v25 forKey:v27];
}

- (void)performTouchCancelAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v26 = [activeTouchState objectForKey:v15];

  lastTouchEvent = [v26 lastTouchEvent];
  continuousPathState = [lastTouchEvent continuousPathState];
  if (continuousPathState == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 6;
  }

  if (continuousPathState)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if ([lastTouchEvent forcedKeyCode] == -2)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  v21 = [MEMORY[0x277D6F440] touchEventWithStage:3 location:index radius:v7 timestamp:v20 pathIndex:v19 fingerID:x forcedKeyCode:y continuousPathState:{radius, timestamp}];
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [inputManagerWrapper skipHitTestForTouchEvent:v21 keyboardState:clonedKeyboardState];

  activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [activeTouchState2 removeObjectForKey:v25];
}

- (int64_t)performTouchDragAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v16 = [activeTouchState objectForKey:v15];

  if ([(ACTKeyboardController *)self touchPassesDragThresholdAtPoint:index pathIndex:x, y])
  {
    *&v17 = radius;
    timestamp = [(ACTKeyboardController *)self retestTouchAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:v17, timestamp];
  }

  else
  {
    lastTouchEvent = [v16 lastTouchEvent];
    timestamp = [lastTouchEvent forcedKeyCode];
  }

  return timestamp;
}

- (int64_t)retestTouchAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v16 = [activeTouchState objectForKey:v15];

  lastTouchEvent = [v16 lastTouchEvent];
  if ([lastTouchEvent continuousPathState] == 1)
  {
    continuousPathState = 3;
  }

  else
  {
    continuousPathState = [lastTouchEvent continuousPathState];
  }

  if ([lastTouchEvent forcedKeyCode] == -2)
  {
    v19 = -2;
  }

  else
  {
    v19 = -1;
  }

  radiusCopy = radius;
  v21 = [MEMORY[0x277D6F440] touchEventWithStage:1 location:index radius:v7 timestamp:v19 pathIndex:continuousPathState fingerID:x forcedKeyCode:y continuousPathState:{radiusCopy, timestamp}];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = v19;
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__ACTKeyboardController_retestTouchAtLocation_radius_timestamp_pathIndex_fingerID___block_invoke;
  v30[3] = &unk_279DA0FA0;
  v30[4] = &v31;
  [inputManagerWrapper performHitTestForTouchEvent:v21 keyboardState:clonedKeyboardState continuation:v30];

  v24 = [MEMORY[0x277D6F440] touchEventWithStage:1 location:index radius:v7 timestamp:x pathIndex:y fingerID:radiusCopy forcedKeyCode:timestamp continuousPathState:?];
  v25 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v25 setLastTouchEvent:v24];
  [(_ACTKeyboardTouchState *)v25 setDragged:1];
  [(_ACTKeyboardTouchState *)v25 setInitialDragPoint:x, y];
  activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [activeTouchState2 setObject:v25 forKey:v27];

  v28 = v32[3];
  _Block_object_dispose(&v31, 8);

  return v28;
}

- (BOOL)touchPassesDragThresholdAtPoint:(CGPoint)point pathIndex:(unint64_t)index
{
  y = point.y;
  x = point.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v10 = [activeTouchState objectForKey:v9];

  [v10 initialDragPoint];
  v12 = v11;
  v14 = v13;
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  layoutState = [keyboardState layoutState];
  userInterfaceIdiom = [layoutState userInterfaceIdiom];

  dragged = [v10 dragged];
  v19 = 42.0;
  if (dragged)
  {
    v19 = 34.0;
  }

  v20 = 18.0;
  if (dragged)
  {
    v20 = 12.0;
  }

  if (userInterfaceIdiom != 1)
  {
    v19 = v20;
  }

  v21 = y - v14;
  v22 = x - v12;
  v23 = fmaxf(fabsf(v22), fabsf(v21)) >= v19;

  return v23;
}

- (int64_t)performTouchDownAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v16 = [activeTouchState objectForKey:v15];

  keyplane = [(ACTKeyboardController *)self keyplane];
  v18 = [(ACTKeyboardController *)self keyContainingPoint:keyplane inKeyplane:x, y];

  if ([v18 interactionType] == 14)
  {
    v19 = @"Shift";
LABEL_5:
    keyplane2 = [(ACTKeyboardController *)self keyplane];
    v21 = [(ACTKeyboardController *)self keyCodeWithString:v19 inKeyplane:keyplane2];

    goto LABEL_7;
  }

  if ([v18 interactionType] == 11)
  {
    v19 = @"More";
    goto LABEL_5;
  }

  v21 = -1;
LABEL_7:
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = v21;
  radiusCopy = radius;
  if ([v18 interactionType] != 11)
  {
    v23 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:index radius:v7 timestamp:v21 pathIndex:1 fingerID:x forcedKeyCode:y continuousPathState:{radiusCopy, timestamp}];
    inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
    clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__ACTKeyboardController_performTouchDownAtLocation_radius_timestamp_pathIndex_fingerID___block_invoke;
    v32[3] = &unk_279DA0FA0;
    v32[4] = &v33;
    [inputManagerWrapper performHitTestForTouchEvent:v23 keyboardState:clonedKeyboardState continuation:v32];
  }

  v26 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:index radius:v7 timestamp:v34[3] pathIndex:1 fingerID:x forcedKeyCode:y continuousPathState:{radiusCopy, timestamp}];
  v27 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v27 setLastTouchEvent:v26];
  [(_ACTKeyboardTouchState *)v27 setDragged:0];
  [(_ACTKeyboardTouchState *)v27 setInitialDragPoint:x, y];
  activeTouchState2 = [(ACTKeyboardController *)self activeTouchState];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [activeTouchState2 setObject:v27 forKey:v29];

  v30 = v34[3];
  _Block_object_dispose(&v33, 8);

  return v30;
}

- (void)adjustCursorByOffset:(int64_t)offset
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  documentState = [keyboardState documentState];
  v7 = [documentState documentStateAfterCursorAdjustment:offset];
  keyboardState2 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState2 setDocumentState:v7];

  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  [inputManagerWrapper syncToKeyboardState:clonedKeyboardState completionHandler:&__block_literal_global_136];
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ACTKeyboardController_adjustPhraseBoundaryInForwardDirection_granularity___block_invoke;
  v9[3] = &unk_279DA0F30;
  v9[4] = self;
  [inputManagerWrapper adjustPhraseBoundaryInForwardDirection:directionCopy granularity:v4 keyboardState:clonedKeyboardState completionHandler:v9];
}

- (void)setSelectedRange:(_NSRange)range
{
  if (range.location != self->_selectedRange.location || range.length != self->_selectedRange.length)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_selectedRange = range;
    [(ACTKeyboardController *)self setAutocorrectionList:0];
    [(ACTKeyboardController *)self updateDocumentState];
    inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
    clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__ACTKeyboardController_setSelectedRange___block_invoke;
    v9[3] = &unk_279DA0F30;
    v9[4] = self;
    [inputManagerWrapper syncToKeyboardState:clonedKeyboardState completionHandler:v9];
  }
}

uint64_t __42__ACTKeyboardController_setSelectedRange___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setKeyboardConfiguration:a2];
  v3 = *(a1 + 32);

  return [v3 updateAutoshift];
}

- (void)deleteText:(id)text rawText:(id)rawText
{
  textCopy = text;
  rawTextCopy = rawText;
  location = [(ACTKeyboardController *)self selectedRangeForText:textCopy];
  length = v8;
  v10 = [(ACTKeyboardController *)self selectedRangeForText:rawTextCopy];
  v12 = v11;
  v13 = [(NSMutableString *)self->_text substringWithRange:location, length];
  if (rawTextCopy)
  {
    v14 = [(NSMutableString *)self->_text substringWithRange:v10, v12];
  }

  else
  {
    v14 = 0;
  }

  if ([v13 isEqualToString:textCopy])
  {
    goto LABEL_5;
  }

  if ([v14 isEqualToString:rawTextCopy])
  {
    self->_selectedRange.location = v10;
    self->_selectedRange.length = v12;
    length = v12;
    location = v10;
  }

  else
  {
    if (textCopy && !v14)
    {
LABEL_5:
      self->_selectedRange.location = location;
      self->_selectedRange.length = length;
      goto LABEL_11;
    }

    location = self->_selectedRange.location;
    length = self->_selectedRange.length;
  }

LABEL_11:
  [(NSMutableString *)self->_text deleteCharactersInRange:location, length];
  self->_selectedRange.length = 0;
  [(ACTKeyboardController *)self updateDocumentState];
}

- (_NSRange)selectedRangeForText:(id)text
{
  textCopy = text;
  v5 = self->_selectedRange.length + self->_selectedRange.location;
  if (v5 <= [textCopy length])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - [textCopy length];
  }

  v7 = v6;
  v8 = v5 - v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)deleteBackwards
{
  if (self->_selectedRange.length)
  {
    [(NSMutableString *)self->_text deleteCharactersInRange:self->_selectedRange.location];
  }

  else
  {
    location = self->_selectedRange.location;
    if (!location)
    {
      goto LABEL_6;
    }

    v4 = [(NSMutableString *)self->_text _rangeOfBackwardDeletionClusterAtIndex:location - 1];
    [(NSMutableString *)self->_text deleteCharactersInRange:v4, v5];
    self->_selectedRange.location = v4;
  }

  self->_selectedRange.length = 0;
LABEL_6:

  [(ACTKeyboardController *)self updateDocumentState];
}

- (void)insertTextAfterSelection:(id)selection
{
  if (selection)
  {
    [(NSMutableString *)self->_text replaceCharactersInRange:self->_selectedRange.location withString:self->_selectedRange.length, selection];

    [(ACTKeyboardController *)self updateDocumentState];
  }
}

- (void)insertText:(id)text
{
  if (text)
  {
    text = self->_text;
    location = self->_selectedRange.location;
    length = self->_selectedRange.length;
    textCopy = text;
    [(NSMutableString *)text replaceCharactersInRange:location withString:length, textCopy];
    v8 = [textCopy length];

    self->_selectedRange.location += v8;
    self->_selectedRange.length = 0;

    [(ACTKeyboardController *)self updateDocumentState];
  }
}

- (void)updateDocumentState
{
  text = [(ACTKeyboardController *)self text];
  location = self->_selectedRange.location;
  length = self->_selectedRange.length;
  v23 = text;
  if ([text length] <= 0x1000)
  {
    v8 = v23;
  }

  else
  {
    v6 = [v23 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(v23, "length") - 2048}];
    v7 = [v23 substringFromIndex:v6];

    location -= v6;
    v8 = v7;
  }

  v24 = v8;
  if (location)
  {
    v9 = [v8 substringToIndex:location];
    if (length)
    {
LABEL_6:
      v10 = [v24 substringWithRange:{location, length}];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = &stru_287EC4808;
    if (length)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  v11 = location + length;
  if (v11 >= [v24 length])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v24 substringFromIndex:v11];
  }

  v13 = [MEMORY[0x277D6F350] documentStateWithContextBefore:v9 selectedText:v10 contextAfter:v12];
  markedText = [(ACTKeyboardController *)self markedText];
  v15 = [markedText length];

  if (v15)
  {
    intermediateText = [(ACTKeyboardController *)self intermediateText];
    displayString = [intermediateText displayString];
    intermediateText2 = [(ACTKeyboardController *)self intermediateText];
    selectedRange = [intermediateText2 selectedRange];
    v21 = [v13 documentStateAfterSettingMarkedText:displayString selectedRange:{selectedRange, v20}];

    v13 = v21;
  }

  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setDocumentState:v13];
}

- (BOOL)syncToKeyboardStateByWaitingForResults:(BOOL)results
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = !results;
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ACTKeyboardController_syncToKeyboardStateByWaitingForResults___block_invoke;
  v12[3] = &unk_279DA0F58;
  v12[4] = self;
  v12[5] = &v13;
  [inputManagerWrapper syncToKeyboardState:clonedKeyboardState completionHandler:v12];

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
  if (v14[3])
  {
    goto LABEL_7;
  }

  v7 = *MEMORY[0x277CBE640];
  while (1)
  {
    [v6 timeIntervalSinceNow];
    if (v8 <= 0.0)
    {
      break;
    }

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop acceptInputForMode:v7 beforeDate:v6];

    if (v14[3])
    {
      goto LABEL_7;
    }
  }

  if (v14[3])
  {
LABEL_7:
    v10 = 1;
  }

  else
  {
    NSLog(&cfstr_NotCompleteS.isa, "[ACTKeyboardController syncToKeyboardStateByWaitingForResults:]");
    v10 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  return v10 & 1;
}

- (void)syncToEmptyDocument
{
  v3 = [objc_alloc(MEMORY[0x277D6F350]) initWithContextBefore:&stru_287EC4808 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
  [(ACTKeyboardController *)self syncToDocumentState:v3];
}

- (void)syncToDocumentState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(MEMORY[0x277D6F438]);
  keyboardState = self->_keyboardState;
  self->_keyboardState = v5;

  documentIdentifier = [(ACTKeyboardController *)self documentIdentifier];
  [(TIKeyboardState *)self->_keyboardState setDocumentIdentifier:documentIdentifier];

  v8 = objc_alloc_init(MEMORY[0x277D6F4A8]);
  [(TIKeyboardState *)self->_keyboardState setTextInputTraits:v8];

  text = self->_text;
  contextBeforeInput = [stateCopy contextBeforeInput];
  v11 = contextBeforeInput;
  if (contextBeforeInput)
  {
    v12 = contextBeforeInput;
  }

  else
  {
    v12 = &stru_287EC4808;
  }

  [(NSMutableString *)text setString:v12];

  v13 = [(NSMutableString *)self->_text length];
  selectedText = [stateCopy selectedText];
  v15 = [selectedText length];
  self->_selectedRange.location = v13;
  self->_selectedRange.length = v15;

  v16 = self->_text;
  selectedText2 = [stateCopy selectedText];
  v18 = selectedText2;
  if (selectedText2)
  {
    v19 = selectedText2;
  }

  else
  {
    v19 = &stru_287EC4808;
  }

  [(NSMutableString *)v16 appendString:v19];

  v20 = self->_text;
  contextAfterInput = [stateCopy contextAfterInput];
  v22 = contextAfterInput;
  if (contextAfterInput)
  {
    v23 = contextAfterInput;
  }

  else
  {
    v23 = &stru_287EC4808;
  }

  [(NSMutableString *)v20 appendString:v23];

  autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
  corrections = [autocorrectionList corrections];
  autocorrection = [corrections autocorrection];
  if (autocorrection)
  {
    v27 = autocorrection;
    v28 = TISwearWordPolicyV1Enabled();

    if (!v28)
    {
      goto LABEL_14;
    }

    autocorrectionList = [(ACTKeyboardController *)self inputManagerWrapper];
    corrections = [(ACTKeyboardController *)self autocorrectionList];
    v25Corrections = [corrections corrections];
    autocorrection2 = [v25Corrections autocorrection];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __45__ACTKeyboardController_syncToDocumentState___block_invoke;
    v110[3] = &unk_279DA0F30;
    v110[4] = self;
    [autocorrectionList textAccepted:autocorrection2 completionHandler:v110];
  }

LABEL_14:
  [(ACTKeyboardController *)self setAutocorrectionList:0];
  [(ACTKeyboardController *)self setCandidateResultSet:0];
  markedText = [stateCopy markedText];
  [(ACTKeyboardController *)self setMarkedText:markedText];

  if ([stateCopy documentIsEmpty])
  {
    [(ACTKeyboardController *)self setIntermediateText:0];
  }

  else
  {
    v32 = MEMORY[0x277D6F3F8];
    markedText2 = [stateCopy markedText];
    markedText3 = [stateCopy markedText];
    v35 = [v32 intermediateTextWithInputString:markedText2 displayString:markedText3 selectionLocation:objc_msgSend(stateCopy lastInputString:{"selectedRangeInMarkedText"), 0}];
    [(ACTKeyboardController *)self setIntermediateText:v35];
  }

  [(ACTKeyboardController *)self updateDocumentState];
  inputModeIdentifier = [(ACTKeyboardController *)self inputModeIdentifier];
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setInputMode:inputModeIdentifier];

  keyboardState2 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState2 setAutocorrectionEnabled:1];

  autocorrectionType = [(ACTKeyboardController *)self autocorrectionType];
  keyboardState3 = [(ACTKeyboardController *)self keyboardState];
  textInputTraits = [keyboardState3 textInputTraits];
  [textInputTraits setAutocorrectionType:autocorrectionType];

  usesPrediction = [(ACTKeyboardController *)self usesPrediction];
  keyboardState4 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState4 setAutocorrectionListUIDisplayed:usesPrediction];

  usesAutocapitalization = [(ACTKeyboardController *)self usesAutocapitalization];
  keyboardState5 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState5 setAutocapitalizationEnabled:usesAutocapitalization];

  autocapitalizationType = [(ACTKeyboardController *)self autocapitalizationType];
  keyboardState6 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState6 setAutocapitalizationType:autocapitalizationType];

  hardwareKeyboardMode = self->_hardwareKeyboardMode;
  keyboardState7 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState7 setHardwareKeyboardMode:hardwareKeyboardMode];

  keyboardState8 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState8 setShortcutConversionEnabled:1];

  wordLearningEnabled = [(ACTKeyboardController *)self wordLearningEnabled];
  keyboardState9 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState9 setWordLearningEnabled:wordLearningEnabled];

  inlineCompletionEnabled = [(ACTKeyboardController *)self inlineCompletionEnabled];
  keyboardState10 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState10 setInlineCompletionEnabled:inlineCompletionEnabled];

  clientIdentifier = [(ACTKeyboardController *)self clientIdentifier];
  keyboardState11 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState11 setClientIdentifier:clientIdentifier];

  recipientIdentifier = [(ACTKeyboardController *)self recipientIdentifier];
  keyboardState12 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState12 setRecipientIdentifier:recipientIdentifier];

  inputContextHistory = [(ACTKeyboardController *)self inputContextHistory];
  keyboardState13 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState13 setInputContextHistory:inputContextHistory];

  supplementalLexiconIdentifier = [(ACTKeyboardController *)self supplementalLexiconIdentifier];
  keyboardState14 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState14 setSupplementalLexiconIdentifier:supplementalLexiconIdentifier];

  canSuggestSupplementalItemsForCurrentSelection = [(ACTKeyboardController *)self canSuggestSupplementalItemsForCurrentSelection];
  keyboardState15 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState15 setCanSuggestSupplementalItemsForCurrentSelection:canSuggestSupplementalItemsForCurrentSelection];

  keyboardState16 = [(ACTKeyboardController *)self keyboardState];
  LOBYTE(keyboardState15) = objc_opt_respondsToSelector();

  if (keyboardState15)
  {
    longPredictionListEnabled = [(ACTKeyboardController *)self longPredictionListEnabled];
    keyboardState17 = [(ACTKeyboardController *)self keyboardState];
    [keyboardState17 setLongPredictionListEnabled:longPredictionListEnabled];
  }

  v68 = objc_alloc_init(MEMORY[0x277D6F408]);
  keyboardState18 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState18 setLayoutState:v68];

  inputModeIdentifier2 = [(ACTKeyboardController *)self inputModeIdentifier];
  keyboardState19 = [(ACTKeyboardController *)self keyboardState];
  layoutState = [keyboardState19 layoutState];
  [layoutState setInputMode:inputModeIdentifier2];

  keyplane = [(ACTKeyboardController *)self keyplane];
  v74 = [keyplane cachedKeysByKeyName:@"Candidate-Selection"];
  v75 = [v74 count] != 0;
  keyboardState20 = [(ACTKeyboardController *)self keyboardState];
  layoutState2 = [keyboardState20 layoutState];
  [layoutState2 setHasCandidateKey:v75];

  keyplane2 = [(ACTKeyboardController *)self keyplane];
  v79 = [keyplane2 cachedKeysByKeyName:@"Latin-Accents"];
  v80 = [v79 count] != 0;
  keyboardState21 = [(ACTKeyboardController *)self keyboardState];
  layoutState3 = [keyboardState21 layoutState];
  [layoutState3 setHasAccentKey:v80];

  keyplane3 = [(ACTKeyboardController *)self keyplane];
  v84 = [keyplane3 cachedKeysByKeyName:@"Multitap-Complete-Key"];
  v85 = [v84 count] != 0;
  keyboardState22 = [(ACTKeyboardController *)self keyboardState];
  layoutState4 = [keyboardState22 layoutState];
  [layoutState4 setCanMultitap:v85];

  keyplane4 = [(ACTKeyboardController *)self keyplane];
  isAlphabeticPlane = [keyplane4 isAlphabeticPlane];
  keyboardState23 = [(ACTKeyboardController *)self keyboardState];
  layoutState5 = [keyboardState23 layoutState];
  [layoutState5 setIsAlphabeticPlane:isAlphabeticPlane];

  keyplane5 = [(ACTKeyboardController *)self keyplane];
  isKanaPlane = [keyplane5 isKanaPlane];
  keyboardState24 = [(ACTKeyboardController *)self keyboardState];
  layoutState6 = [keyboardState24 layoutState];
  [layoutState6 setIsKanaPlane:isKanaPlane];

  keyplane6 = [(ACTKeyboardController *)self keyplane];
  name = [keyplane6 name];
  LODWORD(keyboardState24) = [name containsString:@"Wildcat"];

  keyboardState25 = [(ACTKeyboardController *)self keyboardState];
  layoutState7 = [keyboardState25 layoutState];
  [layoutState7 setUserInterfaceIdiom:keyboardState24];

  secureTextEntry = [(ACTKeyboardController *)self secureTextEntry];
  keyboardState26 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState26 setSecureTextEntry:secureTextEntry];

  isScreenLocked = [(ACTKeyboardController *)self isScreenLocked];
  keyboardState27 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState27 setIsScreenLocked:isScreenLocked];

  [(ACTKeyboardController *)self setInitialKeyplane];
  layoutUtils = [(ACTKeyboardController *)self layoutUtils];
  keyOverrides = [layoutUtils keyOverrides];
  [keyOverrides removeAllObjects];

  activeTouchState = [(ACTKeyboardController *)self activeTouchState];
  [activeTouchState removeAllObjects];

  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  clonedKeyboardState = [(ACTKeyboardController *)self clonedKeyboardState];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __45__ACTKeyboardController_syncToDocumentState___block_invoke_2;
  v109[3] = &unk_279DA0F30;
  v109[4] = self;
  [inputManagerWrapper syncToKeyboardState:clonedKeyboardState completionHandler:v109];

  [(ACTKeyboardController *)self setLastInputWasSelection:0];
  [(ACTKeyboardController *)self setLastInputWasContinuousPath:0];
  [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:0];
  [(ACTKeyboardController *)self updateAutoshift];
  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
}

- (void)commitText
{
  inputManagerState = [(ACTKeyboardController *)self inputManagerState];
  usesCandidateSelection = [inputManagerState usesCandidateSelection];

  if (!usesCandidateSelection)
  {
    if (![(ACTKeyboardController *)self usesAutocorrection])
    {
      return;
    }

    autocorrectionList = [(ACTKeyboardController *)self autocorrectionList];
    candidates = [autocorrectionList candidates];
    firstObject = [candidates firstObject];

    rawInput = [firstObject rawInput];
    if (!rawInput)
    {
      goto LABEL_8;
    }

    v10 = rawInput;
    rawInput2 = [firstObject rawInput];
    input = [firstObject input];
    if ([rawInput2 isEqualToString:input])
    {

LABEL_8:
      [(ACTKeyboardController *)self acceptAutocorrection];
      goto LABEL_16;
    }

    input2 = [firstObject input];
    candidate = [firstObject candidate];
    if ([input2 isEqualToString:candidate])
    {
    }

    else
    {
      rawInput3 = [firstObject rawInput];
      candidate2 = [firstObject candidate];
      v17 = [rawInput3 isEqualToString:candidate2];

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    input3 = [firstObject input];
    v19 = [(ACTKeyboardController *)self selectedRangeForText:input3];
    v21 = v20;

    v22 = [(NSMutableString *)self->_text substringWithRange:v19, v21];
    input4 = [firstObject input];
    LOBYTE(v21) = [v22 isEqualToString:input4];

    if ((v21 & 1) == 0)
    {
      rawInput4 = [firstObject rawInput];
      v25 = [(ACTKeyboardController *)self selectedRangeForText:rawInput4];
      v27 = v26;

      v28 = [(NSMutableString *)self->_text substringWithRange:v25, v27];

      v22 = v28;
    }

    v29 = objc_alloc(MEMORY[0x277D6F3D8]);
    input5 = [firstObject input];
    rawInput5 = [firstObject rawInput];
    v32 = [v29 initWithCandidate:v22 forInput:input5 rawInput:rawInput5];

    [(ACTKeyboardController *)self textAccepted:v32 predictiveCandidate:0];
    [(ACTKeyboardController *)self setAutocorrectionList:0];

    goto LABEL_16;
  }

  candidateResultSet = [(ACTKeyboardController *)self candidateResultSet];
  firstObject = [candidateResultSet firstCandidate];

  v6 = firstObject;
  if (firstObject)
  {
    [(ACTKeyboardController *)self acceptCandidate:firstObject];
LABEL_16:
    v6 = firstObject;
  }
}

- (void)setShouldSkipCandidateSelection:(BOOL)selection
{
  selectionCopy = selection;
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setShouldSkipCandidateSelection:selectionCopy];
}

- (BOOL)shouldSkipCandidateSelection
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  shouldSkipCandidateSelection = [keyboardState shouldSkipCandidateSelection];

  return shouldSkipCandidateSelection;
}

- (void)setHardwareKeyboardMode:(BOOL)mode
{
  modeCopy = mode;
  self->_hardwareKeyboardMode = mode;
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setHardwareKeyboardMode:modeCopy];
}

- (BOOL)hardwareKeyboardMode
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];

  if (!keyboardState)
  {
    return self->_hardwareKeyboardMode;
  }

  keyboardState2 = [(ACTKeyboardController *)self keyboardState];
  hardwareKeyboardMode = [keyboardState2 hardwareKeyboardMode];

  return hardwareKeyboardMode;
}

- (TIKeyboardInputManagerWrapper)inputManagerWrapper
{
  inputManagerWrapper = self->_inputManagerWrapper;
  if (!inputManagerWrapper)
  {
    createKeyboardInputManagerWrapper = [(ACTKeyboardController *)self createKeyboardInputManagerWrapper];
    if (objc_opt_respondsToSelector())
    {
      v5 = [[ACTClientProxy alloc] initWithClient:self];
      [createKeyboardInputManagerWrapper setClientProxy:v5];
    }

    [(ACTKeyboardController *)self setInputManagerWrapper:createKeyboardInputManagerWrapper];

    inputManagerWrapper = self->_inputManagerWrapper;
  }

  return inputManagerWrapper;
}

- (id)createKeyboardInputManagerWrapper
{
  v3 = objc_alloc_init(MEMORY[0x277D6FE80]);
  keyboardInputManagerFactory = [(ACTKeyboardController *)self keyboardInputManagerFactory];

  if (keyboardInputManagerFactory)
  {
    keyboardInputManagerFactory2 = [(ACTKeyboardController *)self keyboardInputManagerFactory];
    newKeyboardInputManager = [keyboardInputManagerFactory2 newKeyboardInputManager];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D6FE60]);
    keyboardInputManagerFactory2 = [(ACTKeyboardController *)self inputMode];
    newKeyboardInputManager = [v7 initWithInputMode:keyboardInputManagerFactory2 keyboardState:0];
  }

  v8 = newKeyboardInputManager;

  [v3 setInputManager:v8];
  [v3 changingContextWithTrigger:*MEMORY[0x277D6F5D0]];

  return v3;
}

- (TIKeyboardInputManager)existingInputManager
{
  inputManager = [(TIKeyboardInputManagerWrapper *)self->_inputManagerWrapper inputManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = inputManager;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TIKeyboardInputManager)inputManager
{
  inputManagerWrapper = [(ACTKeyboardController *)self inputManagerWrapper];
  inputManager = [inputManagerWrapper inputManager];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = inputManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tearDown
{
  inputManager = [(ACTKeyboardController *)self inputManager];
  [inputManager tearDown];
}

- (void)reset
{
  [MEMORY[0x277D6FE90] clearDynamicLearningCaches];
  if (self->_inputManagerWrapper)
  {
    inputManager = [(ACTKeyboardController *)self inputManager];
    [inputManager clearSoftLearning];

    inputManager2 = [(ACTKeyboardController *)self inputManager];
    [inputManager2 suspend];

    inputManagerWrapper = self->_inputManagerWrapper;
    self->_inputManagerWrapper = 0;
  }

  inputManager3 = [(ACTKeyboardController *)self inputManager];
  [inputManager3 resume];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [(ACTKeyboardController *)self setDocumentIdentifier:uUID];

  [(ACTKeyboardController *)self syncToEmptyDocument];
}

- (id)clonedKeyboardState
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  v3 = [keyboardState copy];

  return v3;
}

- (void)registerLayoutWithFavonius
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D6F400]);
  keys = [(ACTKeyboardController *)self keys];
  v26 = [v3 initWithCapacity:{objc_msgSend(keys, "count")}];

  if (self->_leftKeys && self->_rightKeys)
  {
    [v26 setUsesTwoHands:1];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(ACTKeyboardController *)self keys];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([v13 visible])
        {
          layoutUtils = [(ACTKeyboardController *)self layoutUtils];
          v15 = [layoutUtils representedStringForKey:v13 shifted:{-[ACTKeyboardController isShifted](self, "isShifted")}];

          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = &stru_287EC4808;
          }

          v17 = MEMORY[0x277CBEAF8];
          inputModeIdentifier = [(ACTKeyboardController *)self inputModeIdentifier];
          v19 = TIInputModeGetLanguageWithRegion();
          v20 = [v17 localeWithLocaleIdentifier:v19];

          v21 = [(__CFString *)v16 lowercaseStringWithLocale:v20];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = v16;
          }

          [v13 paddedFrame];
          [v26 addKeyWithExactString:v23 frame:?];
        }

        else
        {
          [v26 addKeyWithExactString:&stru_287EC4808 frame:{v8, v9, v10, v11}];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setKeyLayout:v26];
}

- (void)setIntermediateText:(id)text
{
  objc_storeStrong(&self->_intermediateText, text);
  textCopy = text;
  displayString = [textCopy displayString];
  [(ACTKeyboardController *)self setMarkedText:displayString];

  inputString = [textCopy inputString];
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setInputForMarkedText:inputString];

  searchString = [textCopy searchString];

  keyboardState2 = [(ACTKeyboardController *)self keyboardState];
  [keyboardState2 setSearchStringForMarkedText:searchString];
}

- (void)setKeyboardConfiguration:(id)configuration
{
  configurationCopy = configuration;
  inputManagerState = [configurationCopy inputManagerState];
  [(ACTKeyboardController *)self setInputManagerState:inputManagerState];

  intermediateText = [configurationCopy intermediateText];

  if (intermediateText)
  {
    intermediateText2 = [configurationCopy intermediateText];
    [(ACTKeyboardController *)self setIntermediateText:intermediateText2];
  }

  layoutUtils = self->_layoutUtils;
  accentKeyString = [configurationCopy accentKeyString];
  [(ACTKeyboardLayoutUtils *)layoutUtils setLayoutKeyOverride:accentKeyString forKey:*MEMORY[0x277D76BE0] uiKeyboardStringNothing:*MEMORY[0x277D76C28]];

  [(ACTKeyboardController *)self registerLayoutWithFavonius];
  [(ACTKeyboardController *)self updateDocumentState];
}

- (void)setInitialKeyplane
{
  keyboard = [(ACTKeyboardController *)self keyboard];
  subtrees = [keyboard subtrees];

  v4 = [subtrees objectAtIndex:0];
  if ([v4 isShiftKeyplane])
  {
    keyboard2 = [(ACTKeyboardController *)self keyboard];
    shiftAlternateKeyplaneName = [v4 shiftAlternateKeyplaneName];
    v7 = [keyboard2 subtreeWithName:shiftAlternateKeyplaneName];

    v4 = v7;
  }

  [(ACTKeyboardController *)self setKeyplane:v4];
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setShiftState:0];
}

- (void)updateAutoshift
{
  if ([(ACTKeyboardController *)self isShifted])
  {
    keyplane = [(ACTKeyboardController *)self keyplane];
    v4 = [keyplane BOOLForProperty:@"shift-is-plane-chooser"];

    if ((v4 & 1) == 0)
    {
      [(ACTKeyboardController *)self shiftKeyplane];
    }
  }

  if (![(ACTKeyboardController *)self isShifted])
  {
    keyplane2 = [(ACTKeyboardController *)self keyplane];
    if (![keyplane2 usesAutoShift])
    {
      goto LABEL_16;
    }

    usesAutocapitalization = [(ACTKeyboardController *)self usesAutocapitalization];

    if (!usesAutocapitalization)
    {
      return;
    }

    keyplane2 = [(ACTKeyboardController *)self text];
    autocapitalizationType = [(ACTKeyboardController *)self autocapitalizationType];
    if (autocapitalizationType == 1)
    {
      if ([keyplane2 length])
      {
        inputManagerState = [(ACTKeyboardController *)self inputManagerState];
        v10 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(keyplane2, "_lastLongCharacter")}];
        v11 = [inputManagerState stringEndsWord:v10];

        if (!v11)
        {
LABEL_16:

          return;
        }
      }
    }

    else if (autocapitalizationType != 3)
    {
      if (autocapitalizationType != 2)
      {
        goto LABEL_16;
      }

      inputManagerState2 = [(ACTKeyboardController *)self inputManagerState];
      nextInputWouldStartSentence = [inputManagerState2 nextInputWouldStartSentence];

      if ((nextInputWouldStartSentence & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(ACTKeyboardController *)self shiftKeyplane];
    keyboardState = [(ACTKeyboardController *)self keyboardState];
    [keyboardState setShiftState:2];

    goto LABEL_16;
  }
}

- (void)alternateKeyplane
{
  keyboard = [(ACTKeyboardController *)self keyboard];
  keyplane = [(ACTKeyboardController *)self keyplane];
  alternateKeyplaneName = [keyplane alternateKeyplaneName];
  v6 = [keyboard subtreeWithName:alternateKeyplaneName];
  [(ACTKeyboardController *)self setKeyplane:v6];

  keyplane2 = [(ACTKeyboardController *)self keyplane];
  isShiftKeyplane = [keyplane2 isShiftKeyplane];

  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setShiftState:isShiftKeyplane];

  [(ACTKeyboardController *)self updateAutoshift];
}

- (void)shiftKeyplane
{
  keyboard = [(ACTKeyboardController *)self keyboard];
  keyplane = [(ACTKeyboardController *)self keyplane];
  shiftAlternateKeyplaneName = [keyplane shiftAlternateKeyplaneName];
  v6 = [keyboard subtreeWithName:shiftAlternateKeyplaneName];
  [(ACTKeyboardController *)self setKeyplane:v6];

  keyplane2 = [(ACTKeyboardController *)self keyplane];
  isShiftKeyplane = [keyplane2 isShiftKeyplane];

  keyboardState = [(ACTKeyboardController *)self keyboardState];
  [keyboardState setShiftState:isShiftKeyplane];
}

- (BOOL)isAutoshifted
{
  keyboardState = [(ACTKeyboardController *)self keyboardState];
  v3 = [keyboardState shiftState] == 2;

  return v3;
}

- (BOOL)isShifted
{
  keyplane = [(ACTKeyboardController *)self keyplane];
  isShiftKeyplane = [keyplane isShiftKeyplane];

  return isShiftKeyplane;
}

- (void)adjustKeyplaneEmulatingKBStar:(id)star
{
  v61 = *MEMORY[0x277D85DE8];
  starCopy = star;
  keys = [starCopy keys];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(keys, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = keys;
  v6 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        selfCopy = self;
        layoutUtils = [(ACTKeyboardController *)self layoutUtils];
        v13 = [layoutUtils representedStringForKey:v10 shifted:{objc_msgSend(starCopy, "isShiftKeyplane")}];
        lowercaseString = [v13 lowercaseString];

        if (lowercaseString)
        {
          v15 = [v5 objectForKey:lowercaseString];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v5 setObject:v15 forKey:lowercaseString];
          }

          [v15 addObject:v10];
        }

        [v10 setVisible:1];

        self = selfCopy;
      }

      v7 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v7);
  }

  if (self->_ttkLayout)
  {
    v16 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    selfCopy2 = self;
    keys2 = [(TTKSimpleKeyboardPlane *)self->_ttkLayout keys];
    v17 = [keys2 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(keys2);
          }

          v21 = *(*(&v50 + 1) + 8 * j);
          string = [v21 string];
          string2 = @" ";
          if (([string isEqualToString:@"space"] & 1) == 0)
          {
            string2 = [v21 string];
          }

          v24 = [v5 valueForKey:string2];

          if (v24)
          {
            v25 = [v5 objectForKeyedSubscript:string2];
            firstObject = [v25 firstObject];

            name = [firstObject name];
            [v16 setObject:v21 forKey:name];
          }
        }

        v18 = [keys2 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v18);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    allValues = [v5 allValues];
    v29 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v47;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(allValues);
          }

          firstObject2 = [*(*(&v46 + 1) + 8 * k) firstObject];
          name2 = [firstObject2 name];
          v35 = [v16 objectForKey:name2];

          if (v35)
          {
            name3 = [firstObject2 name];
            v37 = [v16 objectForKey:name3];

            [v37 frame];
            [firstObject2 setFrame:?];
            [v37 frame];
            [firstObject2 setPaddedFrame:?];
          }
        }

        v30 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v30);
    }

    self = selfCopy2;
  }

  v38 = [v5 objectForKey:@"dictation"];
  v39 = [v5 objectForKey:@" "];
  [(ACTKeyboardController *)self mergeFrameFromKey:v38 intoKey:v39];

  v40 = [v5 objectForKey:@"international"];
  v41 = [v5 objectForKey:@"more"];
  [(ACTKeyboardController *)self mergeFrameFromKey:v40 intoKey:v41];
}

- (void)mergeFrameFromKey:(id)key intoKey:(id)intoKey
{
  keyCopy = key;
  intoKeyCopy = intoKey;
  v7 = intoKeyCopy;
  if (keyCopy && intoKeyCopy && [keyCopy count] == 1)
  {
    lastObject = [keyCopy lastObject];
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__6070;
    v53 = __Block_byref_object_dispose__6071;
    firstObject = [v7 firstObject];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0x7FEFFFFFFFFFFFFFLL;
    if ([v7 count])
    {
      [lastObject frame];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __51__ACTKeyboardController_mergeFrameFromKey_intoKey___block_invoke;
      v37[3] = &unk_279DA0F08;
      v41 = v9;
      v42 = v10;
      v43 = v11;
      v44 = v12;
      v38 = lastObject;
      v39 = &v45;
      v40 = &v49;
      [v7 enumerateObjectsUsingBlock:v37];
    }

    if (v46[3] < 2.0)
    {
      [lastObject frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v50[5] frame];
      v59.origin.x = v21;
      v59.origin.y = v22;
      v59.size.width = v23;
      v59.size.height = v24;
      v55.origin.x = v14;
      v55.origin.y = v16;
      v55.size.width = v18;
      v55.size.height = v20;
      v56 = CGRectUnion(v55, v59);
      [v50[5] setFrame:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
      [lastObject paddedFrame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [v50[5] paddedFrame];
      v60.origin.x = v33;
      v60.origin.y = v34;
      v60.size.width = v35;
      v60.size.height = v36;
      v57.origin.x = v26;
      v57.origin.y = v28;
      v57.size.width = v30;
      v57.size.height = v32;
      v58 = CGRectUnion(v57, v60);
      [v50[5] setPaddedFrame:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
    }

    [lastObject setVisible:0];
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
  }
}

void __51__ACTKeyboardController_mergeFrameFromKey_intoKey___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  [v16 frame];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MinX = CGRectGetMinX(v18);
  MaxX = CGRectGetMaxX(*(a1 + 56));
  [v16 frame];
  v11 = v10;
  [*(a1 + 32) frame];
  if (v11 >= v12)
  {
    v14 = MinX - MaxX;
  }

  else
  {
    v13 = CGRectGetMinX(*(a1 + 56));
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v14 = v13 - CGRectGetMaxX(v19);
  }

  v15 = *(*(a1 + 40) + 8);
  if (v14 < *(v15 + 24))
  {
    *(v15 + 24) = v14;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (void)divideKeyplane:(id)keyplane intoLeft:(id)left right:(id)right
{
  keyplaneCopy = keyplane;
  leftCopy = left;
  rightCopy = right;
  v10 = rightCopy;
  if (leftCopy && rightCopy)
  {
    [leftCopy removeAllObjects];
    [v10 removeAllObjects];
    subtrees = [keyplaneCopy subtrees];
    firstObject = [subtrees firstObject];

    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x4010000000;
    v48[3] = &unk_26D4F599A;
    v13 = *(MEMORY[0x277CBF398] + 16);
    v49 = *MEMORY[0x277CBF398];
    v50 = v13;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x4010000000;
    v45[3] = &unk_26D4F599A;
    v46 = v49;
    v47 = v13;
    keys = [firstObject keys];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke;
    v44[3] = &unk_279DA0EB8;
    v44[4] = v48;
    v44[5] = v45;
    [keys enumerateObjectsUsingBlock:v44];

    UIRectInset();
    v31 = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    UIRectInset();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    keys2 = [keyplaneCopy keys];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke_2;
    v32[3] = &unk_279DA0EE0;
    v36 = v31;
    v37 = v17;
    v38 = v19;
    v39 = v21;
    v35 = v48;
    v33 = leftCopy;
    v40 = v23;
    v41 = v25;
    v42 = v27;
    v43 = v29;
    v34 = v10;
    [keys2 enumerateObjectsUsingBlock:v32];

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v48, 8);
  }
}

void __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke(uint64_t a1, void *a2)
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

void __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke_2(uint64_t a1, void *a2)
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

- (void)setKeyplane:(id)keyplane
{
  p_keyplane = &self->_keyplane;
  keyplaneCopy = keyplane;
  if (*p_keyplane != keyplaneCopy)
  {
    objc_storeStrong(&self->_keyplane, keyplane);
    v6 = objc_opt_respondsToSelector();
    v7 = *p_keyplane;
    if (v6)
    {
      [(UIKBTree *)v7 zipGeometry];
    }

    else
    {
      [(UIKBTree *)v7 zipGeometrySet];
    }

    [(ACTKeyboardController *)self adjustKeyplaneEmulatingKBStar:self->_keyplane];
    keyplane = [(ACTKeyboardController *)self keyplane];
    keys = [keyplane keys];
    [(ACTKeyboardController *)self setKeys:keys];

    keyplane2 = [(ACTKeyboardController *)self keyplane];
    v11 = [keyplane2 cachedKeysByKeyName:@"Latin-Accents"];
    keyboardState = [(ACTKeyboardController *)self keyboardState];
    layoutState = [keyboardState layoutState];
    [layoutState setHasAccentKey:v11 != 0];

    keyplane3 = [(ACTKeyboardController *)self keyplane];
    isAlphabeticPlane = [keyplane3 isAlphabeticPlane];
    keyboardState2 = [(ACTKeyboardController *)self keyboardState];
    layoutState2 = [keyboardState2 layoutState];
    [layoutState2 setIsAlphabeticPlane:isAlphabeticPlane];

    leftKeys = self->_leftKeys;
    self->_leftKeys = 0;

    rightKeys = self->_rightKeys;
    self->_rightKeys = 0;

    name = [(UIKBTree *)self->_keyplane name];
    LODWORD(isAlphabeticPlane) = [name containsString:@"Wildcat"];

    if (isAlphabeticPlane)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v22 = self->_leftKeys;
      self->_leftKeys = v21;

      v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v24 = self->_rightKeys;
      self->_rightKeys = v23;

      [(ACTKeyboardController *)self divideKeyplane:self->_keyplane intoLeft:self->_leftKeys right:self->_rightKeys];
    }
  }

  [(ACTKeyboardController *)self registerLayoutWithFavonius];
}

- (void)setKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  p_keyboard = &self->_keyboard;
  if (self->_keyboard != keyboardCopy)
  {
    v9 = keyboardCopy;
    objc_storeStrong(p_keyboard, keyboard);
    subtrees = [(UIKBTree *)self->_keyboard subtrees];
    v8 = [subtrees objectAtIndex:0];
    [(ACTKeyboardController *)self setKeyplane:v8];

    [(ACTKeyboardController *)self setInitialKeyplane];
    p_keyboard = [(ACTKeyboardController *)self updateAutoshift];
    keyboardCopy = v9;
  }

  MEMORY[0x2821F96F8](p_keyboard, keyboardCopy);
}

- (TIAutocorrectionList)autocorrectionList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_autocorrectionList;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAutocorrectionList:(id)list
{
  listCopy = list;
  obj = self;
  objc_sync_enter(obj);
  autocorrectionList = obj->_autocorrectionList;
  obj->_autocorrectionList = listCopy;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  inputManager = [(ACTKeyboardController *)self inputManager];
  [inputManager suspend];

  v4.receiver = self;
  v4.super_class = ACTKeyboardController;
  [(ACTKeyboardController *)&v4 dealloc];
}

- (ACTKeyboardController)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v31.receiver = self;
  v31.super_class = ACTKeyboardController;
  v6 = [(ACTKeyboardController *)&v31 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = *(v6 + 31);
    *(v6 + 31) = v7;

    objc_storeStrong(v6 + 12, mode);
    normalizedIdentifier = [modeCopy normalizedIdentifier];
    v10 = [normalizedIdentifier copy];
    v11 = *(v6 + 11);
    *(v6 + 11) = v10;

    v6[49] = 1;
    v6[60] = 1;
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = *(v6 + 4);
    *(v6 + 4) = v12;

    v14 = [ACTKeyboardLayoutUtils alloc];
    locale = [modeCopy locale];
    v16 = [(ACTKeyboardLayoutUtils *)v14 initWithLocale:locale];
    v17 = *(v6 + 9);
    *(v6 + 9) = v16;

    *(v6 + 168) = xmmword_26D4EC020;
    v6[56] = 1;
    v18 = NSClassFromString(&cfstr_Tismartpunctua.isa);
    if (v18)
    {
      v19 = objc_alloc_init(v18);
      v20 = *(v6 + 23);
      *(v6 + 23) = v19;

      v21 = NSClassFromString(&cfstr_Tismartpunctua_0.isa);
      locale2 = [modeCopy locale];
      v23 = [(objc_class *)v21 smartPunctuationOptionsForLocale:locale2];
      [*(v6 + 23) setSmartPunctuationOptions:v23];

      [*(v6 + 23) setSmartQuotesEnabled:0];
      [*(v6 + 23) setSmartDashesEnabled:0];
    }

    v24 = objc_alloc_init(MEMORY[0x277CCA928]);
    v25 = *(v6 + 32);
    *(v6 + 32) = v24;

    v26 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v27 = *(v6 + 34);
    *(v6 + 34) = v26;

    uUID = [MEMORY[0x277CCAD78] UUID];
    v29 = *(v6 + 36);
    *(v6 + 36) = uUID;

    [MEMORY[0x277D6FE60] swizzleTestingParameters];
  }

  return v6;
}

@end