@interface ACTKeyboardController
- (ACTKeyboardController)initWithInputMode:(id)a3;
- (BOOL)generatesCandidates;
- (BOOL)hardwareKeyboardMode;
- (BOOL)hasPrediction:(id)a3;
- (BOOL)isAutoshifted;
- (BOOL)isContinuousPathNonSpacePunctuation:(unsigned int)a3;
- (BOOL)isKeyStringAboveSpaceBar:(id)a3;
- (BOOL)isKeyplane:(id)a3 alternateOfKeyplane:(id)a4;
- (BOOL)isKeyplane:(id)a3 shiftAlternateOfKeyplane:(id)a4;
- (BOOL)isShifted;
- (BOOL)shouldAcceptCandidate:(id)a3 beforeInputString:(id)a4;
- (BOOL)shouldSkipCandidateSelection;
- (BOOL)syncToKeyboardStateByWaitingForResults:(BOOL)a3;
- (BOOL)touchPassesDragThresholdAtPoint:(CGPoint)a3 pathIndex:(unint64_t)a4;
- (NSArray)predictions;
- (TIAutocorrectionList)autocorrectionList;
- (TIKeyboardCandidate)autocorrection;
- (TIKeyboardCandidate)inlineCompletion;
- (TIKeyboardInputManager)existingInputManager;
- (TIKeyboardInputManager)inputManager;
- (TIKeyboardInputManagerWrapper)inputManagerWrapper;
- (_NSRange)selectedRange;
- (_NSRange)selectedRangeForText:(id)a3;
- (float)distanceFromKey:(id)a3 toPoint:(CGPoint)a4;
- (id)adjustContinuousPathCandidate:(id)a3;
- (id)candidateByApplyingSmartPunctuationToCandidate:(id)a3;
- (id)candidateToConfirmInputString;
- (id)candidatesForString:(id)a3;
- (id)clonedKeyboardState;
- (id)createKeyboardInputManagerWrapper;
- (id)displayStringOverrideForKey:(id)a3;
- (id)keyContainingPoint:(CGPoint)a3 inKeyplane:(id)a4;
- (id)keyToAccessKeyplane:(id)a3 fromKeyplane:(id)a4;
- (id)performSkipTapAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 forcedKeyCode:(int64_t)a8;
- (id)performTouchUpAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 secondaryString:(BOOL)a8;
- (id)trimmedCandidate:(id)a3;
- (int64_t)keyCodeWithString:(id)a3 inKeyplane:(id)a4;
- (int64_t)performTouchDownAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (int64_t)performTouchDragAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (int64_t)retestTouchAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)acceptAutocorrection;
- (void)acceptCandidate:(id)a3 predictiveCandidate:(BOOL)a4;
- (void)acceptCandidateInputEvent:(id)a3 fromCandidateBar:(BOOL)a4;
- (void)addInput:(id)a3 fromVariantKey:(BOOL)a4 fromGestureKey:(BOOL)a5;
- (void)addInput:(id)a3 fromVariantKey:(BOOL)a4 fromGestureKey:(BOOL)a5 touchEvent:(id)a6;
- (void)adjustCursorByOffset:(int64_t)a3;
- (void)adjustKeyplaneEmulatingKBStar:(id)a3;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (void)alternateKeyplane;
- (void)closeRequestToken:(id)a3;
- (void)commitText;
- (void)dealloc;
- (void)deleteBackwards;
- (void)deleteInput:(id)a3;
- (void)deleteText:(id)a3 rawText:(id)a4;
- (void)divideKeyplane:(id)a3 intoLeft:(id)a4 right:(id)a5;
- (void)enumerateKeyplaneNamesAdjacentToKeyplane:(id)a3 usingBlock:(id)a4;
- (void)generateAutocorrectionsOrCandidates;
- (void)generateAutocorrectionsWithCount:(unint64_t)a3;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3;
- (void)generateAutocorrectionsWithShiftState:(int)a3;
- (void)generateCandidates;
- (void)generateCandidatesWithKeyboardState:(id)a3;
- (void)handleKeyboardInput:(id)a3;
- (void)insertText:(id)a3;
- (void)insertTextAfterSelection:(id)a3;
- (void)mergeFrameFromKey:(id)a3 intoKey:(id)a4;
- (void)performTouchCancelAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)performTouchEndRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)performTouchRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)pushAutocorrections:(id)a3 requestToken:(id)a4;
- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4;
- (void)registerLayoutWithFavonius;
- (void)rejectCandidate:(id)a3;
- (void)reset;
- (void)setAutocorrectionList:(id)a3;
- (void)setHardwareKeyboardMode:(BOOL)a3;
- (void)setInitialKeyplane;
- (void)setIntermediateText:(id)a3;
- (void)setKeyboard:(id)a3;
- (void)setKeyboardConfiguration:(id)a3;
- (void)setKeyplane:(id)a3;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setShouldSkipCandidateSelection:(BOOL)a3;
- (void)shiftKeyplane;
- (void)syncToDocumentState:(id)a3;
- (void)syncToEmptyDocument;
- (void)tearDown;
- (void)textAccepted:(id)a3 predictiveCandidate:(BOOL)a4;
- (void)updateAutoshift;
- (void)updateDocumentState;
- (void)updateKeyboardOutput:(id)a3 withInputForSmartPunctuation:(id)a4;
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

- (void)deleteInput:(id)a3
{
  v4 = a3;
  [(ACTKeyboardController *)self setAutocorrectionList:0];
  v5 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v5 setBackspace:1];
  [(ACTKeyboardController *)self handleKeyboardInput:v5];
  [v5 setTouchEvent:v4];

  [(ACTKeyboardController *)self updateAutoshift];
}

- (void)addInput:(id)a3 fromVariantKey:(BOOL)a4 fromGestureKey:(BOOL)a5 touchEvent:(id)a6
{
  v7 = a5;
  v8 = a4;
  v40 = a3;
  v10 = a6;
  v11 = [(ACTKeyboardController *)self inputManagerState];
  v12 = [v11 stringEndsWord:v40];

  if (!v12)
  {
    goto LABEL_11;
  }

  if (-[ACTKeyboardController usesAutocorrection](self, "usesAutocorrection") && (-[ACTKeyboardController inputManagerState](self, "inputManagerState"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 usesCandidateSelection], v13, (v14 & 1) == 0))
  {
    v18 = [(ACTKeyboardController *)self inlineCompletion];
    if (!v18)
    {
      v18 = [(ACTKeyboardController *)self autocorrection];
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v15 = [(ACTKeyboardController *)self inputManagerState];
    v16 = [v15 usesCandidateSelection];

    if (!v16)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

    v17 = [(ACTKeyboardController *)self candidateResultSet];
    v18 = [v17 defaultCandidate];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  if (![(ACTKeyboardController *)self shouldAcceptCandidate:v18 beforeInputString:v40])
  {

    goto LABEL_11;
  }

LABEL_12:
  [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:0];
  if ([(ACTKeyboardController *)self lastInputWasContinuousPath])
  {
    v19 = [(NSMutableString *)self->_text length];
    v20 = [v40 length] == 1 ? objc_msgSend(v40, "_firstLongCharacter") : 0;
    if ([(ACTKeyboardController *)self isContinuousPathNonSpacePunctuation:v20]&& ((v19 - 1) & 0x80000000) == 0 && [(NSMutableString *)self->_text characterAtIndex:?]== 32)
    {
      [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:1];
    }
  }

  [(ACTKeyboardController *)self setLastInputWasContinuousPath:0];
  if (v18)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 performSelector:sel_isContinuousPathConversion])
    {
      v21 = MEMORY[0x277D6F328];
      v22 = [(ACTKeyboardController *)self autocorrectionList];
      v23 = [v22 predictions];
      v24 = [v21 listWithCorrections:0 predictions:v23];
      [(ACTKeyboardController *)self setAutocorrectionList:v24];

      [(ACTKeyboardController *)self setLastInputWasContinuousPath:1];
    }

    else
    {
      [(ACTKeyboardController *)self setAutocorrectionList:0];
    }

    v25 = [(ACTKeyboardController *)self inputManagerState];
    v26 = [v25 usesCandidateSelection];

    if (v26)
    {
      [(ACTKeyboardController *)self acceptCandidate:v18];
      goto LABEL_46;
    }
  }

  else
  {
    [(ACTKeyboardController *)self setAutocorrectionList:0];
  }

  v27 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v27 setString:v40];
  [v27 setUppercase:{-[ACTKeyboardController isShifted](self, "isShifted")}];
  [v27 setAutoshifted:{-[ACTKeyboardController isAutoshifted](self, "isAutoshifted")}];
  [v27 setPopupVariant:v8];
  if (objc_opt_respondsToSelector())
  {
    [v27 setGesture:v7];
  }

  [v27 setTouchEvent:v10];
  [v27 setAcceptedCandidate:v18];
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

  if (v10)
  {
    v28 = [(ACTKeyboardController *)self keys];
    v29 = [v28 objectAtIndex:{objc_msgSend(v10, "forcedKeyCode")}];

    v30 = [v29 stringForProperty:*MEMORY[0x277D76AB0]];
    [v27 setInputManagerHint:v30];
  }

  v31 = [v27 acceptedCandidate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = [v27 acceptedCandidate];
    v34 = [v33 isContinuousPathConversion];
  }

  else
  {
    v34 = 0;
  }

  v35 = [(ACTKeyboardController *)self inputManagerState];
  v36 = [v35 wordSeparator];
  v37 = [v40 isEqualToString:v36];

  if (v37)
  {
    v38 = [(ACTKeyboardController *)self lastInputWasSelection];
    v39 = !v10 && v38;
    if ((v39 | v34))
    {
      [v27 setSynthesizedByAcceptingCandidate:1];
    }
  }

  [(ACTKeyboardController *)self handleKeyboardInput:v27];

LABEL_46:
  [(ACTKeyboardController *)self setLastInputWasSelection:0];
}

- (BOOL)shouldAcceptCandidate:(id)a3 beforeInputString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 candidate];
  if ([v8 length] || objc_msgSend(v6, "slotID"))
  {
  }

  else
  {
    v19 = [v6 customInfoType];

    if (!v19)
    {
      goto LABEL_5;
    }
  }

  v9 = [(ACTKeyboardController *)self inputManagerState];
  v10 = [v9 shouldSuppressAutocorrectionWithTerminator:v7];

  if (v10)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_15;
  }

  if ([v7 length] && (objc_msgSend(v6, "input"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [v6 candidate];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 input];
      v17 = [v16 stringByAppendingString:v7];
      v18 = [v6 candidate];
      v11 = [v18 rangeOfString:v17 options:9] == 0x7FFFFFFFFFFFFFFFLL;
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

- (BOOL)isContinuousPathNonSpacePunctuation:(unsigned int)a3
{
  v3 = a3;
  v4 = [(ACTKeyboardController *)self inputManager];
  v5 = [v4 terminatorsDeletingAutospace];

  v6 = [v5 characterSet];
  LOBYTE(v3) = [v6 characterIsMember:v3];

  return v3;
}

- (void)addInput:(id)a3 fromVariantKey:(BOOL)a4 fromGestureKey:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [(ACTKeyboardController *)self addInput:v8 fromVariantKey:v6 fromGestureKey:v5 touchEvent:0];
  LOBYTE(v5) = [v8 isEqualToString:@"Shift"];

  if ((v5 & 1) == 0)
  {
    [(ACTKeyboardController *)self updateAutoshift];
  }

  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
}

- (void)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [v4 acceptedCandidate];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 acceptedCandidate];
  v7 = [(ACTKeyboardController *)self candidateByApplyingSmartPunctuationToCandidate:v6];
  [v4 setAcceptedCandidate:v7];

  v8 = [v4 acceptedCandidate];
  v9 = [v8 input];
  v10 = [v4 acceptedCandidate];
  v11 = [v10 rawInput];
  [(ACTKeyboardController *)self deleteText:v9 rawText:v11];

  v12 = [v4 acceptedCandidate];
  v13 = [v12 candidate];

  v14 = [v4 acceptedCandidate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = [v4 acceptedCandidate];
  v16 = [v15 isContinuousPathConversion];

  if (v16)
  {
    [(ACTKeyboardController *)self adjustContinuousPathCandidate:v13];
    v13 = v14 = v13;
LABEL_5:
  }

  [(ACTKeyboardController *)self insertText:v13];
  v17 = [v4 acceptedCandidate];
  v18 = [v17 isAutocorrection];

  if (v18)
  {
    [(ACTKeyboardController *)self setJustAcceptedAutocorrection:1];
  }

LABEL_9:
  v19 = [(ACTKeyboardController *)self inputManagerWrapper];
  v20 = [(ACTKeyboardController *)self clonedKeyboardState];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__ACTKeyboardController_handleKeyboardInput___block_invoke;
  v22[3] = &unk_279DA1100;
  v22[4] = self;
  v23 = v4;
  v21 = v4;
  [v19 handleKeyboardInput:v21 keyboardState:v20 completionHandler:v22];
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

- (void)updateKeyboardOutput:(id)a3 withInputForSmartPunctuation:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(ACTKeyboardController *)self smartPunctuationController];

  if (v7)
  {
    if ([v6 isPopupVariant])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isFlick];
    }

    v9 = [(ACTKeyboardController *)self smartPunctuationController];
    v10 = [v6 string];
    v11 = [(ACTKeyboardController *)self keyboardState];
    v12 = [v11 documentState];
    v13 = [v9 smartPunctuationOutputForInput:v10 isLockedInput:v8 documentState:v12];

    if ([v13 deletionCount])
    {
      [v17 setDeletionCount:{objc_msgSend(v13, "deletionCount")}];
    }

    v14 = [v13 insertionText];
    if ([v14 length])
    {
      v15 = [v17 insertionText];
      v16 = [v15 length];

      if (!v16)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = [v13 insertionText];
      [v17 setInsertionText:v14];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (id)candidatesForString:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6070;
  v15 = __Block_byref_object_dispose__6071;
  v16 = 0;
  v5 = [(ACTKeyboardController *)self inputManagerWrapper];
  v6 = [(ACTKeyboardController *)self keyboardState];
  v7 = [v6 keyLayout];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__ACTKeyboardController_candidatesForString___block_invoke;
  v10[3] = &unk_279DA10D8;
  v10[4] = &v11;
  [v5 generateReplacementsForString:v4 keyLayout:v7 continuation:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)generateCandidatesWithKeyboardState:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  [(ACTKeyboardController *)self setCandidateResultSet:0];
  v5 = [(ACTKeyboardController *)self inputManagerWrapper];
  v6 = [(ACTKeyboardController *)self clonedKeyboardState];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ACTKeyboardController_generateCandidatesWithKeyboardState___block_invoke;
  v19[3] = &unk_279DA10B0;
  v19[4] = self;
  v19[5] = &v20;
  [v5 generateCandidatesWithKeyboardState:v6 candidateRange:0 completionHandler:{0x7FFFFFFFLL, v19}];

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

    v10 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v10 acceptInputForMode:v8 beforeDate:v7];

    if (v21[3])
    {
      goto LABEL_7;
    }
  }

  if (v21[3])
  {
LABEL_7:
    v11 = [(ACTKeyboardController *)self candidateResultSet];
    v12 = [v11 uncommittedText];

    if (v12)
    {
      v13 = [(ACTKeyboardController *)self candidateResultSet];
      v14 = [v13 uncommittedText];
      [(ACTKeyboardController *)self setIntermediateText:v14];
    }

    v15 = [(ACTKeyboardController *)self candidateResultSet];
    v16 = [v15 committedText];

    if (v16)
    {
      v17 = [(ACTKeyboardController *)self candidateResultSet];
      v18 = [v17 committedText];
      [(ACTKeyboardController *)self insertText:v18];
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

- (void)acceptCandidateInputEvent:(id)a3 fromCandidateBar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v12 = v6;
  if (v4)
  {
    v8 = [v6 acceptedCandidate];
    v9 = [v8 candidate];
    if ([v9 length])
    {

      v7 = v12;
LABEL_5:
      [(ACTKeyboardController *)self handleKeyboardInput:v7];
      [(ACTKeyboardController *)self setLastInputWasSelection:1];
      goto LABEL_8;
    }

    v10 = [v12 acceptedCandidate];
    v11 = [v10 isSecureContentCandidate];

    v7 = v12;
    if (v11)
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
  v3 = [(ACTKeyboardController *)self clonedKeyboardState];
  [(ACTKeyboardController *)self generateCandidatesWithKeyboardState:v3];
}

- (void)generateAutocorrectionsWithKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [(ACTKeyboardController *)self autocorrection];
  if (!v5 || (v6 = v5, -[ACTKeyboardController autocorrection](self, "autocorrection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isForShortcutConversion], v7, v6, (v8 & 1) == 0))
  {
    if ([(ACTKeyboardController *)self asyncPredictions]&& ([(ACTKeyboardController *)self inputManagerWrapper], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [NSClassFromString(&cfstr_Ticandidatereq.isa) tokenForKeyboardState:v4];
      v12 = [(ACTKeyboardController *)self requestCondition];
      [v12 lock];

      [(ACTKeyboardController *)self setAutocorrectionList:0];
      [(ACTKeyboardController *)self setCurrentRequestToken:v11];
      v13 = [(ACTKeyboardController *)self requestCondition];
      [v13 unlock];

      v14 = [(ACTKeyboardController *)self inputManagerWrapper];
      v15 = [(ACTKeyboardController *)self clonedKeyboardState];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke;
      v31[3] = &unk_279DA1088;
      v31[4] = self;
      v16 = v11;
      v32 = v16;
      [v14 generateAutocorrectionsWithKeyboardState:v15 candidateRange:0 requestToken:3 completionHandler:{v16, v31}];

      v17 = [(ACTKeyboardController *)self requestCondition];
      [v17 lock];

      v18 = [(ACTKeyboardController *)self currentRequestToken];

      if (v18)
      {
        v19 = *MEMORY[0x277CBE640];
        do
        {
          if ([v4 needAutofill])
          {
            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
            v21 = [(ACTKeyboardController *)self requestCondition];
            v22 = [v21 waitUntilDate:v20];

            if ((v22 & 1) == 0)
            {
              v23 = [(ACTKeyboardController *)self requestCondition];
              [v23 unlock];

              v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
              v25 = [MEMORY[0x277CBEB88] currentRunLoop];
              [v25 acceptInputForMode:v19 beforeDate:v24];

              v26 = [(ACTKeyboardController *)self requestCondition];
              [v26 lock];
            }
          }

          else
          {
            v20 = [(ACTKeyboardController *)self requestCondition];
            [v20 wait];
          }

          v27 = [(ACTKeyboardController *)self currentRequestToken];
        }

        while (v27);
      }

      v28 = [(ACTKeyboardController *)self requestCondition];
      [v28 unlock];
    }

    else
    {
      v16 = [(ACTKeyboardController *)self inputManagerWrapper];
      v29 = [(ACTKeyboardController *)self clonedKeyboardState];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__ACTKeyboardController_generateAutocorrectionsWithKeyboardState___block_invoke_2;
      v30[3] = &unk_279DA1060;
      v30[4] = self;
      [v16 generateAutocorrectionsWithKeyboardState:v29 completionHandler:v30];
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

- (void)closeRequestToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [(ACTKeyboardController *)self currentRequestToken];
    v6 = [v5 isSameRequestAs:v10];

    v4 = v10;
    if (v6)
    {
      v7 = [(ACTKeyboardController *)self requestCondition];
      [v7 lock];

      [(ACTKeyboardController *)self setCurrentRequestToken:0];
      v8 = [(ACTKeyboardController *)self requestCondition];
      [v8 signal];

      v9 = [(ACTKeyboardController *)self requestCondition];
      [v9 unlock];

      v4 = v10;
    }
  }
}

- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 firstCandidate];
  v8 = [v7 isContinuousPathConversion];

  if (v8)
  {
    v9 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [v9 lock];

    v10 = [(ACTKeyboardController *)self lastCPRequestToken];
    v11 = [v10 isSameRequestAs:v6];

    if (v11)
    {
      [(ACTKeyboardController *)self setCandidateResultSet:v13];
      [(ACTKeyboardController *)self setLastCPRequestToken:0];
    }

    v12 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [v12 unlock];
  }

  else
  {
    [(ACTKeyboardController *)self setCandidateResultSet:v13];
  }
}

- (void)pushAutocorrections:(id)a3 requestToken:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 corrections];
  v8 = [v7 autocorrection];
  v9 = [v8 isContinuousPathConversion];

  if (v9)
  {
    v10 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [v10 lock];

    v11 = [(ACTKeyboardController *)self lastCPRequestToken];
    v12 = [v11 isSameRequestAs:v6];

    if (v12)
    {
      [(ACTKeyboardController *)self setAutocorrectionList:v14];
      [(ACTKeyboardController *)self setLastCPRequestToken:0];
    }

    v13 = [(ACTKeyboardController *)self cpRequestTokenLock];
    [v13 unlock];
  }

  else
  {
    [(ACTKeyboardController *)self setAutocorrectionList:v14];
  }
}

- (void)generateAutocorrectionsWithCount:(unint64_t)a3
{
  v5 = [(ACTKeyboardController *)self inputManagerWrapper];
  v6 = [(ACTKeyboardController *)self clonedKeyboardState];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACTKeyboardController_generateAutocorrectionsWithCount___block_invoke;
  v7[3] = &unk_279DA1060;
  v7[4] = self;
  [v5 generateAutocorrectionsWithKeyboardState:v6 candidateRange:0 completionHandler:{a3, v7}];
}

- (void)generateAutocorrectionsWithShiftState:(int)a3
{
  v3 = *&a3;
  v5 = [(ACTKeyboardController *)self clonedKeyboardState];
  [v5 setShiftState:v3];
  v6 = [(ACTKeyboardController *)self inputManagerWrapper];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ACTKeyboardController_generateAutocorrectionsWithShiftState___block_invoke;
  v7[3] = &unk_279DA1060;
  v7[4] = self;
  [v6 generateAutocorrectionsWithKeyboardState:v5 completionHandler:v7];
}

- (void)generateAutocorrectionsOrCandidates
{
  v3 = [(ACTKeyboardController *)self generatesCandidates];
  v4 = [(ACTKeyboardController *)self clonedKeyboardState];
  if (v3)
  {
    [(ACTKeyboardController *)self generateCandidatesWithKeyboardState:v4];
  }

  else
  {
    [(ACTKeyboardController *)self generateAutocorrectionsWithKeyboardState:v4];
  }
}

- (BOOL)generatesCandidates
{
  v3 = [(ACTKeyboardController *)self keyboardState];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ACTKeyboardController *)self keyboardState];
    v5 = [v4 longPredictionListEnabled];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ACTKeyboardController *)self inputManagerState];
  v7 = [v6 usesCandidateSelection] | v5;

  return v7 & 1;
}

- (id)trimmedCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 input];
  v5 = [v3 rawInput];
  v6 = [v3 candidate];
  v7 = [v4 length];
  v8 = [v6 length];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__ACTKeyboardController_trimmedCandidate___block_invoke;
  v22[3] = &unk_279DA1038;
  v11 = v4;
  v23 = v11;
  v12 = v10;
  v24 = v12;
  v25 = &v26;
  [v6 enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v22}];
  v13 = v3;
  v14 = v13;
  if (v27[3])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_alloc(MEMORY[0x277D6F568]);
      v16 = [v6 substringFromIndex:v27[3]];
      v17 = [v11 substringFromIndex:v27[3]];
      v14 = [v15 initWithCandidate:v16 forInput:v17 rawInput:v5 wordOriginFeedbackID:objc_msgSend(v13 usageTrackingMask:"wordOriginFeedbackID") sourceMask:{objc_msgSend(v13, "usageTrackingMask"), objc_msgSend(v13, "sourceMask")}];

      [v14 setContinuousPathConversion:{objc_msgSend(v13, "isContinuousPathConversion")}];
      v18 = v13;
    }

    else
    {
      v19 = MEMORY[0x277D6F3D8];
      v18 = [v6 substringFromIndex:v27[3]];
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
  v3 = [(ACTKeyboardController *)self inputManager];
  v4 = [v3 defaultCandidate];

  v5 = [(ACTKeyboardController *)self trimmedCandidate:v4];

  return v5;
}

- (NSArray)predictions
{
  v3 = [(ACTKeyboardController *)self candidateResultSet];
  v4 = [v3 candidates];

  if (!v4 || ![v4 count])
  {
    v5 = [(ACTKeyboardController *)self autocorrectionList];
    v6 = [v5 predictions];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v4 = v9;
  }

  return v4;
}

- (TIKeyboardCandidate)autocorrection
{
  v3 = [(ACTKeyboardController *)self autocorrectionList];
  v4 = [v3 shouldAcceptTopCandidate];

  if (v4 && (-[ACTKeyboardController autocorrectionList](self, "autocorrectionList"), v5 = objc_claimAutoreleasedReturnValue(), [v5 candidates], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v7))
  {
    v8 = [(ACTKeyboardController *)self trimmedCandidate:v7];
  }

  else
  {
    v8 = [(ACTKeyboardController *)self candidateToConfirmInputString];
  }

  v9 = [(ACTKeyboardController *)self text];
  v10 = [(ACTKeyboardController *)self selectedRange];
  v12 = [v9 substringToIndex:v10 + v11];

  v13 = [v8 input];
  if (![v13 length])
  {
    goto LABEL_13;
  }

  v14 = [v8 input];
  if ([v12 hasSuffix:v14])
  {

LABEL_13:
    goto LABEL_14;
  }

  v15 = [v8 rawInput];
  if (![v15 length])
  {

    goto LABEL_12;
  }

  v16 = [v8 rawInput];
  v17 = [v12 hasSuffix:v16];

  if ((v17 & 1) == 0)
  {
LABEL_12:
    [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:&stru_287EC4808];
    v8 = v13 = v8;
    goto LABEL_13;
  }

LABEL_14:
  v18 = [(ACTKeyboardController *)self keyboard];
  v19 = [v18 name];
  if ([v19 containsString:@"-With-"])
  {
    v20 = [v8 lexiconLocale];

    if (v20)
    {
      goto LABEL_19;
    }

    v18 = v8;
    v8 = 0;
  }

  else
  {
  }

LABEL_19:

  return v8;
}

- (TIKeyboardCandidate)inlineCompletion
{
  v3 = [(ACTKeyboardController *)self autocorrectionList];
  v4 = [v3 shouldAcceptInlineCompletion];

  if (!v4)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v5 = [(ACTKeyboardController *)self autocorrectionList];
  v6 = [v5 inlineCompletions];
  v7 = [v6 firstObject];

  v8 = [v7 candidate];
  v9 = [v8 componentsSeparatedByString:@" "];

  v10 = [(ACTKeyboardController *)self text];
  v11 = [(ACTKeyboardController *)self selectedRange];
  v13 = [v10 substringFromIndex:v12 + v11 - 1];

  if ([v13 isEqualToString:@" "])
  {
    if ([v9 count] < 2)
    {
      v16 = 0;
      goto LABEL_9;
    }

    v14 = [v9 objectAtIndexedSubscript:1];
    v15 = [v7 candidateByReplacingWithCandidate:v14 input:&stru_287EC4808 rawInput:&stru_287EC4808];
  }

  else
  {
    v14 = [v9 firstObject];
    v15 = [v7 candidateByReplacingWithCandidate:v14];
  }

  v16 = v15;

  v7 = v14;
LABEL_9:

LABEL_10:

  return v16;
}

- (void)textAccepted:(id)a3 predictiveCandidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 candidate];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = v6;
    goto LABEL_15;
  }

  v9 = [(ACTKeyboardController *)self candidateByApplyingSmartPunctuationToCandidate:v6];

  v10 = [(ACTKeyboardController *)self inputManagerWrapper];
  v11 = objc_opt_respondsToSelector();

  v12 = [(ACTKeyboardController *)self inputManagerWrapper];
  v13 = v12;
  if (v11)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__ACTKeyboardController_textAccepted_predictiveCandidate___block_invoke;
    v21[3] = &unk_279DA0F30;
    v21[4] = self;
    [v12 textAccepted:v9 completionHandler:v21];
  }

  else
  {
    [v12 textAccepted:v9];
  }

  if (v4)
  {
    v14 = [(ACTKeyboardController *)self inputManager];
    [v14 dropInput];
  }

  if (![v9 isContinuousPathConversion])
  {
    goto LABEL_12;
  }

  v15 = [v9 input];
  if ([v15 length])
  {

LABEL_12:
    v18 = [v9 input];
    v19 = [v9 rawInput];
    [(ACTKeyboardController *)self deleteText:v18 rawText:v19];

    goto LABEL_13;
  }

  v16 = [v9 rawInput];
  v17 = [v16 length];

  if (v17)
  {
    goto LABEL_12;
  }

  [(NSMutableString *)self->_text deleteCharactersInRange:self->_selectedRange.location, self->_selectedRange.length];
  self->_selectedRange.length = 0;
  [(ACTKeyboardController *)self updateDocumentState];
LABEL_13:
  v20 = [v9 candidate];
  [(ACTKeyboardController *)self insertText:v20];

  if ([v9 shouldInsertSpaceAfterSelection])
  {
    [(ACTKeyboardController *)self insertTextAfterSelection:@" "];
  }

LABEL_15:
}

- (id)candidateByApplyingSmartPunctuationToCandidate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACTKeyboardController *)self smartPunctuationController];

  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = [(ACTKeyboardController *)self smartPunctuationController];
    v9 = [v6 candidate];
    v10 = [v8 smartPunctuationResultsForString:v9];

    v7 = v6;
    if ([v10 count])
    {
      v11 = MEMORY[0x277CCAB68];
      v12 = [v6 candidate];
      v13 = [v11 stringWithString:v12];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [v10 reverseObjectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v20 = [v19 range];
            v22 = v21;
            v23 = [v19 replacementString];
            [v13 replaceCharactersInRange:v20 withString:{v22, v23}];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      v24 = objc_alloc(MEMORY[0x277D6F3D8]);
      v25 = [v6 input];
      v26 = [v6 rawInput];
      v7 = [v24 initWithCandidate:v13 forInput:v25 rawInput:v26];
    }
  }

  return v7;
}

- (void)acceptCandidate:(id)a3 predictiveCandidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ACTKeyboardController *)self inputManagerState];
  v8 = [v7 usesCandidateSelection];

  if (v8)
  {
    v9 = [(ACTKeyboardController *)self inputManagerState];
    v10 = [v9 commitsAcceptedCandidate];

    if (v10)
    {
      v11 = [v6 candidate];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [(ACTKeyboardController *)self inputManagerWrapper];
        [v13 textAccepted:v6];
      }

      [(ACTKeyboardController *)self setMarkedText:0];
      v14 = [v6 candidate];
      [(ACTKeyboardController *)self insertText:v14];
    }

    v15 = [(ACTKeyboardController *)self inputManagerWrapper];
    v16 = [(ACTKeyboardController *)self clonedKeyboardState];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__ACTKeyboardController_acceptCandidate_predictiveCandidate___block_invoke;
    v17[3] = &unk_279DA1010;
    v17[4] = self;
    [v15 handleAcceptedCandidate:v6 keyboardState:v16 completionHandler:v17];
  }

  else
  {
    [(ACTKeyboardController *)self textAccepted:v6 predictiveCandidate:v4];
  }

  [(ACTKeyboardController *)self setLastInputWasSelection:v4];
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

- (BOOL)hasPrediction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(ACTKeyboardController *)self autocorrectionList];
  v6 = [v5 predictions];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) candidate];
        v13 = [v12 compare:v4] == 0;

        v9 |= v13;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)rejectCandidate:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(ACTKeyboardController *)self inputManagerWrapper];
    [v5 candidateRejected:v4];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = self;
  v6 = [(ACTKeyboardController *)self autocorrectionList];
  v7 = [v6 predictions];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v28 = v4;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
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
        v16 = [v15 input];
        v17 = v16;
        if (v13)
        {
          v18 = [(__CFString *)v16 length];
          v19 = [(__CFString *)v13 length];

          if (v18 <= v19)
          {
            continue;
          }

          v17 = [v15 input];
        }

        v20 = [v15 rawInput];

        v10 = [v15 typingEngine];
        v12 = v20;
        v13 = v17;
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
  v12 = &stru_287EC4808;
  v13 = &stru_287EC4808;
LABEL_16:

  v21 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:v13 forInput:v13 rawInput:v12];
  [v21 setTypingEngine:v10];
  v22 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v21 alternateCorrections:0];
  v23 = MEMORY[0x277D6F328];
  v24 = [(ACTKeyboardController *)v27 autocorrectionList];
  v25 = [v24 predictions];
  v26 = [v23 listWithCorrections:v22 predictions:v25];
  [(ACTKeyboardController *)v27 setAutocorrectionList:v26];
}

- (void)acceptAutocorrection
{
  v3 = [(ACTKeyboardController *)self autocorrectionList];
  v4 = [v3 shouldAcceptTopCandidate];

  if (v4)
  {
    v5 = [(ACTKeyboardController *)self autocorrectionList];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  [(ACTKeyboardController *)self textAccepted:v7 predictiveCandidate:0];
  [(ACTKeyboardController *)self setAutocorrectionList:0];
}

- (id)displayStringOverrideForKey:(id)a3
{
  v4 = a3;
  v5 = [(ACTKeyboardController *)self layoutUtils];
  v6 = [v5 keyOverrides];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)keyToAccessKeyplane:(id)a3 fromKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ACTKeyboardController *)self isKeyplane:v6 shiftAlternateOfKeyplane:v7])
  {
    v8 = @"Shift";
LABEL_5:
    v9 = [(ACTKeyboardLayoutUtils *)self->_layoutUtils exactKeyForString:v8 keyplane:v7 includeSecondaryStrings:0];
    goto LABEL_7;
  }

  if ([(ACTKeyboardController *)self isKeyplane:v6 alternateOfKeyplane:v7])
  {
    v8 = @"More";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)isKeyplane:(id)a3 alternateOfKeyplane:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACTKeyboardController *)self keyboard];
  v9 = [v6 alternateKeyplaneName];

  v10 = [v8 subtreeWithName:v9];

  return v10 == v7;
}

- (BOOL)isKeyplane:(id)a3 shiftAlternateOfKeyplane:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACTKeyboardController *)self keyboard];
  v9 = [v6 shiftAlternateKeyplaneName];

  v10 = [v8 subtreeWithName:v9];

  return v10 == v7;
}

- (void)enumerateKeyplaneNamesAdjacentToKeyplane:(id)a3 usingBlock:(id)a4
{
  v7 = a4;
  v5 = [a3 shiftAlternateKeyplaneName];
  v7[2](v7, v5);

  v6 = [a3 alternateKeyplaneName];
  v7[2](v7, v6);
}

- (BOOL)isKeyStringAboveSpaceBar:(id)a3
{
  v4 = a3;
  v5 = [(ACTKeyboardController *)self keyplane];
  v6 = [(ACTKeyboardController *)self keyCodeWithString:@" " inKeyplane:v5];

  if (v6 == -1)
  {
    v19 = 0;
  }

  else
  {
    v7 = [(ACTKeyboardController *)self keyplane];
    v8 = [v7 keys];
    v9 = [v8 objectAtIndexedSubscript:v6];

    v10 = [(ACTKeyboardController *)self keyplane];
    v11 = [(ACTKeyboardController *)self keyCodeWithString:v4 inKeyplane:v10];

    if (v11 == -1)
    {
      v19 = 0;
    }

    else
    {
      v12 = [(ACTKeyboardController *)self keyplane];
      v13 = [v12 keys];
      v14 = [v13 objectAtIndexedSubscript:v11];

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

- (id)keyContainingPoint:(CGPoint)a3 inKeyplane:(id)a4
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  [v7 frame];
  v29.x = x;
  v29.y = y;
  if (CGRectContainsPoint(v30, v29) || ([v7 name], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"Dynamic"), v8, v9))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v7 keys];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v10);
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

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (float)distanceFromKey:(id)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  [v6 frame];
  MinX = CGRectGetMinX(v24);
  [v6 frame];
  if (x >= MinX)
  {
    v13 = 0.0;
    if (x <= CGRectGetMaxX(*&v8))
    {
      goto LABEL_6;
    }

    [v6 frame];
    MaxX = CGRectGetMaxX(v25);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v8);
  }

  v13 = x - MaxX;
LABEL_6:
  [v6 frame];
  MinY = CGRectGetMinY(v26);
  [v6 frame];
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
    [v6 frame];
    v19 = CGRectGetMaxY(v27);
    goto LABEL_10;
  }

LABEL_11:
  v22 = sqrtf((v21 * v21) + (v13 * v13));

  return v22;
}

- (int64_t)keyCodeWithString:(id)a3 inKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  v8 = [v7 keys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__ACTKeyboardController_keyCodeWithString_inKeyplane___block_invoke;
  v13[3] = &unk_279DA0FE8;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];

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

- (id)performSkipTapAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 forcedKeyCode:(int64_t)a8
{
  v10 = [(ACTKeyboardController *)self keys:a6];
  v11 = [v10 objectAtIndex:a8];

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

- (id)performTouchUpAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 secondaryString:(BOOL)a8
{
  v8 = a8;
  v9 = *&a7;
  y = a3.y;
  x = a3.x;
  v16 = [(ACTKeyboardController *)self activeTouchState];
  v17 = 0x277CCA000uLL;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v19 = [v16 objectForKey:v18];

  v20 = [v19 lastTouchEvent];
  if (-[ACTKeyboardController touchPassesDragThresholdAtPoint:pathIndex:](self, "touchPassesDragThresholdAtPoint:pathIndex:", a6, x, y) || [v20 continuousPathState] == 3 || objc_msgSend(v20, "continuousPathState") == 4)
  {
    *&v21 = a4;
    [(ACTKeyboardController *)self retestTouchAtLocation:a6 radius:v9 timestamp:x pathIndex:y fingerID:v21, a5];
    v22 = [(ACTKeyboardController *)self activeTouchState];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v24 = [v22 objectForKey:v23];

    v25 = [v24 lastTouchEvent];

    v20 = v25;
    v19 = v24;
  }

  v26 = [v20 forcedKeyCode];
  if ([v20 continuousPathState] == 4)
  {
    v27 = 5;
  }

  else
  {
    v27 = [v20 continuousPathState];
  }

  v28 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:a6 radius:v9 timestamp:v26 pathIndex:v27 fingerID:x forcedKeyCode:y continuousPathState:{a4, a5}];
  if (v26 == -2)
  {
    if (![(ACTKeyboardController *)self insertsSpaceAfterPredictiveInput]&& ![(ACTKeyboardController *)self usesTransliteration])
    {
      v29 = [(ACTKeyboardController *)self autocorrection];
      if (![v29 isAutocorrection])
      {
LABEL_40:

        goto LABEL_41;
      }

      v30 = [(ACTKeyboardController *)self autocorrection];
      v31 = [v30 candidate];
      if (![v31 length])
      {

        goto LABEL_39;
      }

      [(ACTKeyboardController *)self autocorrection];
      v33 = v32 = v28;
      v34 = [v33 isContinuousPathConversion];

      v28 = v32;
      if ((v34 & 1) == 0)
      {
        [(ACTKeyboardController *)self setLastInputWasSelection:1];
        v29 = [(ACTKeyboardController *)self inputManagerState];
        v30 = [v29 wordSeparator];
        [(ACTKeyboardController *)self addInput:v30 fromVariantKey:0 touchEvent:0];
LABEL_39:

        goto LABEL_40;
      }
    }

LABEL_41:
    v55 = [(ACTKeyboardController *)self inputManagerWrapper];
    v56 = [(ACTKeyboardController *)self clonedKeyboardState];
    [v55 skipHitTestForTouchEvent:v28 keyboardState:v56];

    [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
    v57 = [(ACTKeyboardController *)self autocorrection];
    v52 = [v57 candidate];

    if ([(ACTKeyboardController *)self usesTransliteration]|| [(ACTKeyboardController *)self generatesCandidates])
    {
      v51 = 0;
      v58 = 0x277CCA000;
LABEL_56:
      [(ACTKeyboardController *)self updateAutoshift];
      v78 = [(ACTKeyboardController *)self activeTouchState];
      v79 = [*(v58 + 2992) numberWithUnsignedInteger:a6];
      [v78 removeObjectForKey:v79];

      goto LABEL_57;
    }

    v86 = v28;
    v59 = MEMORY[0x277D6F328];
    v60 = [(ACTKeyboardController *)self autocorrectionList];
    v61 = [v60 predictions];
    v62 = [(ACTKeyboardController *)self autocorrectionList];
    v63 = [v62 emojiList];
    v64 = [v59 listWithCorrections:0 predictions:v61 emojiList:v63];

    if (![v52 length])
    {
      v51 = 0;
      goto LABEL_48;
    }

    if ([(ACTKeyboardController *)self insertsSpaceAfterPredictiveInput])
    {
      v65 = [(ACTKeyboardController *)self inputManagerState];
      v51 = [v65 wordSeparator];

      v66 = [(ACTKeyboardController *)self inputManagerState];
      v67 = [v66 wordSeparator];
      v68 = [v52 stringByAppendingString:v67];

      v69 = [(ACTKeyboardController *)self adjustContinuousPathCandidate:v68];
      [(ACTKeyboardController *)self addInput:v51 fromVariantKey:0 touchEvent:0];
      v52 = v68;
LABEL_48:
      v58 = 0x277CCA000;
LABEL_55:
      v28 = v86;
      [(ACTKeyboardController *)self setAutocorrectionList:v64];

      goto LABEL_56;
    }

    v70 = [(ACTKeyboardController *)self autocorrection];
    v71 = [v70 candidate];
    if ([v71 hasPrefix:@" "])
    {
      v72 = [(ACTKeyboardController *)self text];
      v73 = [v72 hasSuffix:@"..."];

      if (!v73)
      {
        v58 = 0x277CCA000uLL;
        goto LABEL_54;
      }

      v81 = objc_alloc(MEMORY[0x277D6F568]);
      v84 = [v70 candidate];
      v74 = [v84 substringFromIndex:1];
      v75 = [v70 input];
      v76 = [v70 rawInput];
      v82 = [v81 initWithCandidate:v74 forInput:v75 rawInput:v76 wordOriginFeedbackID:objc_msgSend(v70 usageTrackingMask:"wordOriginFeedbackID") sourceMask:{objc_msgSend(v70, "usageTrackingMask"), objc_msgSend(v70, "sourceMask")}];

      [v82 setContinuousPathConversion:1];
      v71 = v70;
      v70 = v82;
    }

    v58 = 0x277CCA000;

LABEL_54:
    v77 = [v70 candidate];

    [(ACTKeyboardController *)self acceptCandidate:v70];
    v51 = 0;
    v52 = v77;
    goto LABEL_55;
  }

  v35 = [(ACTKeyboardController *)self keys];
  v36 = [v35 objectAtIndex:v26];

  v37 = [(ACTKeyboardController *)self layoutUtils];
  v38 = [v37 representedStringForKey:v36 shifted:-[ACTKeyboardController isShifted](self includeSecondaryStrings:{"isShifted"), v8}];

  v39 = [v36 interactionType];
  v40 = 0;
  if (v39 > 12)
  {
    if (v39 > 14)
    {
      if (v39 != 16)
      {
        if (v39 == 15)
        {
          v85 = v28;
          [(ACTKeyboardController *)self addInput:v38 fromVariantKey:0 touchEvent:v28];
          v40 = v38;
          v43 = [(ACTKeyboardController *)self keyplane];
          v44 = [v43 name];
          v45 = [v44 containsString:@"Wildcat"];

          if (v45)
          {
            v46 = [(ACTKeyboardController *)self keyplane];
            v47 = [v46 name];
            v48 = [v47 uppercaseString];
            v83 = [v48 containsString:@"-ALTERNATE"];

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

    else if (v39 != 13)
    {
      v41 = [(ACTKeyboardController *)self inputManagerWrapper];
      v42 = [(ACTKeyboardController *)self clonedKeyboardState];
      [v41 skipHitTestForTouchEvent:v28 keyboardState:v42];

      [(ACTKeyboardController *)self shiftKeyplane];
      v40 = &stru_287EC4808;
      goto LABEL_29;
    }

LABEL_28:
    [(ACTKeyboardController *)self addInput:v38 fromVariantKey:0 touchEvent:v28];
    v40 = v38;
    goto LABEL_29;
  }

  if ((v39 - 1) < 2)
  {
    goto LABEL_28;
  }

  if (v39 == 4)
  {
    v53 = [(ACTKeyboardController *)self inputManagerWrapper];
    v54 = [(ACTKeyboardController *)self clonedKeyboardState];
    [v53 skipHitTestForTouchEvent:v28 keyboardState:v54];

    [(ACTKeyboardController *)self deleteInput:v28];
    v40 = @"\\b";
  }

  else if (v39 == 11)
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

  v49 = [(ACTKeyboardController *)self activeTouchState];
  v50 = [*(v17 + 2992) numberWithUnsignedInteger:a6];
  [v49 removeObjectForKey:v50];

  v51 = v40;
  v52 = v51;
LABEL_57:

  return v52;
}

- (id)adjustContinuousPathCandidate:(id)a3
{
  v4 = a3;
  v5 = [(ACTKeyboardController *)self text];
  v6 = [v5 length];
  if (v6 >= 3 && [v4 length] && objc_msgSend(v5, "characterAtIndex:", (v6 - 1)) == 46 && objc_msgSend(v5, "characterAtIndex:", (v6 - 2)) == 46 && objc_msgSend(v5, "characterAtIndex:", (v6 - 3)) == 46 && objc_msgSend(v4, "characterAtIndex:", 0))
  {
    v7 = [v4 substringFromIndex:1];

    v4 = v7;
  }

  return v4;
}

- (void)performTouchEndRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v26 = [v14 objectForKey:v15];

  v16 = [v26 lastTouchEvent];
  v17 = [v16 continuousPathState];
  if (v17 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 6;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v16 forcedKeyCode];
  v21 = [MEMORY[0x277D6F440] touchEventWithStage:5 location:a6 radius:v7 timestamp:v20 pathIndex:v19 fingerID:x forcedKeyCode:y continuousPathState:{a4, a5}];
  v22 = [(ACTKeyboardController *)self inputManagerWrapper];
  v23 = [(ACTKeyboardController *)self clonedKeyboardState];
  [v22 performHitTestForTouchEvent:v21 keyboardState:v23 continuation:&__block_literal_global_148];

  v24 = [(ACTKeyboardController *)self activeTouchState];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v24 removeObjectForKey:v25];
}

- (void)performTouchRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v28 = [v14 objectForKey:v15];

  v16 = [v28 lastTouchEvent];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 continuousPathState];
    if (v18 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v17 forcedKeyCode];
  }

  else
  {
    v20 = 0;
    v21 = -1;
  }

  v22 = [MEMORY[0x277D6F440] touchEventWithStage:4 location:a6 radius:v7 timestamp:v21 pathIndex:v20 fingerID:x forcedKeyCode:y continuousPathState:{a4, a5}];
  v23 = [(ACTKeyboardController *)self inputManagerWrapper];
  v24 = [(ACTKeyboardController *)self clonedKeyboardState];
  [v23 skipHitTestForTouchEvent:v22 keyboardState:v24];

  v25 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v25 setLastTouchEvent:v22];
  -[_ACTKeyboardTouchState setDragged:](v25, "setDragged:", [v28 dragged]);
  [v28 initialDragPoint];
  [(_ACTKeyboardTouchState *)v25 setInitialDragPoint:?];
  v26 = [(ACTKeyboardController *)self activeTouchState];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v26 setObject:v25 forKey:v27];
}

- (void)performTouchCancelAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v26 = [v14 objectForKey:v15];

  v16 = [v26 lastTouchEvent];
  v17 = [v16 continuousPathState];
  if (v17 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 6;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if ([v16 forcedKeyCode] == -2)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  v21 = [MEMORY[0x277D6F440] touchEventWithStage:3 location:a6 radius:v7 timestamp:v20 pathIndex:v19 fingerID:x forcedKeyCode:y continuousPathState:{a4, a5}];
  v22 = [(ACTKeyboardController *)self inputManagerWrapper];
  v23 = [(ACTKeyboardController *)self clonedKeyboardState];
  [v22 skipHitTestForTouchEvent:v21 keyboardState:v23];

  v24 = [(ACTKeyboardController *)self activeTouchState];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v24 removeObjectForKey:v25];
}

- (int64_t)performTouchDragAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v16 = [v14 objectForKey:v15];

  if ([(ACTKeyboardController *)self touchPassesDragThresholdAtPoint:a6 pathIndex:x, y])
  {
    *&v17 = a4;
    v18 = [(ACTKeyboardController *)self retestTouchAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:v17, a5];
  }

  else
  {
    v19 = [v16 lastTouchEvent];
    v18 = [v19 forcedKeyCode];
  }

  return v18;
}

- (int64_t)retestTouchAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v16 = [v14 objectForKey:v15];

  v17 = [v16 lastTouchEvent];
  if ([v17 continuousPathState] == 1)
  {
    v18 = 3;
  }

  else
  {
    v18 = [v17 continuousPathState];
  }

  if ([v17 forcedKeyCode] == -2)
  {
    v19 = -2;
  }

  else
  {
    v19 = -1;
  }

  v20 = a4;
  v21 = [MEMORY[0x277D6F440] touchEventWithStage:1 location:a6 radius:v7 timestamp:v19 pathIndex:v18 fingerID:x forcedKeyCode:y continuousPathState:{v20, a5}];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = v19;
  v22 = [(ACTKeyboardController *)self inputManagerWrapper];
  v23 = [(ACTKeyboardController *)self clonedKeyboardState];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __83__ACTKeyboardController_retestTouchAtLocation_radius_timestamp_pathIndex_fingerID___block_invoke;
  v30[3] = &unk_279DA0FA0;
  v30[4] = &v31;
  [v22 performHitTestForTouchEvent:v21 keyboardState:v23 continuation:v30];

  v24 = [MEMORY[0x277D6F440] touchEventWithStage:1 location:a6 radius:v7 timestamp:x pathIndex:y fingerID:v20 forcedKeyCode:a5 continuousPathState:?];
  v25 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v25 setLastTouchEvent:v24];
  [(_ACTKeyboardTouchState *)v25 setDragged:1];
  [(_ACTKeyboardTouchState *)v25 setInitialDragPoint:x, y];
  v26 = [(ACTKeyboardController *)self activeTouchState];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v26 setObject:v25 forKey:v27];

  v28 = v32[3];
  _Block_object_dispose(&v31, 8);

  return v28;
}

- (BOOL)touchPassesDragThresholdAtPoint:(CGPoint)a3 pathIndex:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(ACTKeyboardController *)self activeTouchState];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [v8 objectForKey:v9];

  [v10 initialDragPoint];
  v12 = v11;
  v14 = v13;
  v15 = [(ACTKeyboardController *)self keyboardState];
  v16 = [v15 layoutState];
  v17 = [v16 userInterfaceIdiom];

  v18 = [v10 dragged];
  v19 = 42.0;
  if (v18)
  {
    v19 = 34.0;
  }

  v20 = 18.0;
  if (v18)
  {
    v20 = 12.0;
  }

  if (v17 != 1)
  {
    v19 = v20;
  }

  v21 = y - v14;
  v22 = x - v12;
  v23 = fmaxf(fabsf(v22), fabsf(v21)) >= v19;

  return v23;
}

- (int64_t)performTouchDownAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  v14 = [(ACTKeyboardController *)self activeTouchState];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v16 = [v14 objectForKey:v15];

  v17 = [(ACTKeyboardController *)self keyplane];
  v18 = [(ACTKeyboardController *)self keyContainingPoint:v17 inKeyplane:x, y];

  if ([v18 interactionType] == 14)
  {
    v19 = @"Shift";
LABEL_5:
    v20 = [(ACTKeyboardController *)self keyplane];
    v21 = [(ACTKeyboardController *)self keyCodeWithString:v19 inKeyplane:v20];

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
  v22 = a4;
  if ([v18 interactionType] != 11)
  {
    v23 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:a6 radius:v7 timestamp:v21 pathIndex:1 fingerID:x forcedKeyCode:y continuousPathState:{v22, a5}];
    v24 = [(ACTKeyboardController *)self inputManagerWrapper];
    v25 = [(ACTKeyboardController *)self clonedKeyboardState];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__ACTKeyboardController_performTouchDownAtLocation_radius_timestamp_pathIndex_fingerID___block_invoke;
    v32[3] = &unk_279DA0FA0;
    v32[4] = &v33;
    [v24 performHitTestForTouchEvent:v23 keyboardState:v25 continuation:v32];
  }

  v26 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:a6 radius:v7 timestamp:v34[3] pathIndex:1 fingerID:x forcedKeyCode:y continuousPathState:{v22, a5}];
  v27 = objc_alloc_init(_ACTKeyboardTouchState);
  [(_ACTKeyboardTouchState *)v27 setLastTouchEvent:v26];
  [(_ACTKeyboardTouchState *)v27 setDragged:0];
  [(_ACTKeyboardTouchState *)v27 setInitialDragPoint:x, y];
  v28 = [(ACTKeyboardController *)self activeTouchState];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v28 setObject:v27 forKey:v29];

  v30 = v34[3];
  _Block_object_dispose(&v33, 8);

  return v30;
}

- (void)adjustCursorByOffset:(int64_t)a3
{
  v5 = [(ACTKeyboardController *)self keyboardState];
  v6 = [v5 documentState];
  v7 = [v6 documentStateAfterCursorAdjustment:a3];
  v8 = [(ACTKeyboardController *)self keyboardState];
  [v8 setDocumentState:v7];

  v10 = [(ACTKeyboardController *)self inputManagerWrapper];
  v9 = [(ACTKeyboardController *)self clonedKeyboardState];
  [v10 syncToKeyboardState:v9 completionHandler:&__block_literal_global_136];
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = [(ACTKeyboardController *)self inputManagerWrapper];
  v8 = [(ACTKeyboardController *)self clonedKeyboardState];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__ACTKeyboardController_adjustPhraseBoundaryInForwardDirection_granularity___block_invoke;
  v9[3] = &unk_279DA0F30;
  v9[4] = self;
  [v7 adjustPhraseBoundaryInForwardDirection:v5 granularity:v4 keyboardState:v8 completionHandler:v9];
}

- (void)setSelectedRange:(_NSRange)a3
{
  if (a3.location != self->_selectedRange.location || a3.length != self->_selectedRange.length)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_selectedRange = a3;
    [(ACTKeyboardController *)self setAutocorrectionList:0];
    [(ACTKeyboardController *)self updateDocumentState];
    v7 = [(ACTKeyboardController *)self inputManagerWrapper];
    v8 = [(ACTKeyboardController *)self clonedKeyboardState];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__ACTKeyboardController_setSelectedRange___block_invoke;
    v9[3] = &unk_279DA0F30;
    v9[4] = self;
    [v7 syncToKeyboardState:v8 completionHandler:v9];
  }
}

uint64_t __42__ACTKeyboardController_setSelectedRange___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setKeyboardConfiguration:a2];
  v3 = *(a1 + 32);

  return [v3 updateAutoshift];
}

- (void)deleteText:(id)a3 rawText:(id)a4
{
  v15 = a3;
  v6 = a4;
  location = [(ACTKeyboardController *)self selectedRangeForText:v15];
  length = v8;
  v10 = [(ACTKeyboardController *)self selectedRangeForText:v6];
  v12 = v11;
  v13 = [(NSMutableString *)self->_text substringWithRange:location, length];
  if (v6)
  {
    v14 = [(NSMutableString *)self->_text substringWithRange:v10, v12];
  }

  else
  {
    v14 = 0;
  }

  if ([v13 isEqualToString:v15])
  {
    goto LABEL_5;
  }

  if ([v14 isEqualToString:v6])
  {
    self->_selectedRange.location = v10;
    self->_selectedRange.length = v12;
    length = v12;
    location = v10;
  }

  else
  {
    if (v15 && !v14)
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

- (_NSRange)selectedRangeForText:(id)a3
{
  v4 = a3;
  v5 = self->_selectedRange.length + self->_selectedRange.location;
  if (v5 <= [v4 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - [v4 length];
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

- (void)insertTextAfterSelection:(id)a3
{
  if (a3)
  {
    [(NSMutableString *)self->_text replaceCharactersInRange:self->_selectedRange.location withString:self->_selectedRange.length, a3];

    [(ACTKeyboardController *)self updateDocumentState];
  }
}

- (void)insertText:(id)a3
{
  if (a3)
  {
    text = self->_text;
    location = self->_selectedRange.location;
    length = self->_selectedRange.length;
    v7 = a3;
    [(NSMutableString *)text replaceCharactersInRange:location withString:length, v7];
    v8 = [v7 length];

    self->_selectedRange.location += v8;
    self->_selectedRange.length = 0;

    [(ACTKeyboardController *)self updateDocumentState];
  }
}

- (void)updateDocumentState
{
  v3 = [(ACTKeyboardController *)self text];
  location = self->_selectedRange.location;
  length = self->_selectedRange.length;
  v23 = v3;
  if ([v3 length] <= 0x1000)
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
  v14 = [(ACTKeyboardController *)self markedText];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(ACTKeyboardController *)self intermediateText];
    v17 = [v16 displayString];
    v18 = [(ACTKeyboardController *)self intermediateText];
    v19 = [v18 selectedRange];
    v21 = [v13 documentStateAfterSettingMarkedText:v17 selectedRange:{v19, v20}];

    v13 = v21;
  }

  v22 = [(ACTKeyboardController *)self keyboardState];
  [v22 setDocumentState:v13];
}

- (BOOL)syncToKeyboardStateByWaitingForResults:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = !a3;
  v4 = [(ACTKeyboardController *)self inputManagerWrapper];
  v5 = [(ACTKeyboardController *)self clonedKeyboardState];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ACTKeyboardController_syncToKeyboardStateByWaitingForResults___block_invoke;
  v12[3] = &unk_279DA0F58;
  v12[4] = self;
  v12[5] = &v13;
  [v4 syncToKeyboardState:v5 completionHandler:v12];

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

    v9 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v9 acceptInputForMode:v7 beforeDate:v6];

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

- (void)syncToDocumentState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D6F438]);
  keyboardState = self->_keyboardState;
  self->_keyboardState = v5;

  v7 = [(ACTKeyboardController *)self documentIdentifier];
  [(TIKeyboardState *)self->_keyboardState setDocumentIdentifier:v7];

  v8 = objc_alloc_init(MEMORY[0x277D6F4A8]);
  [(TIKeyboardState *)self->_keyboardState setTextInputTraits:v8];

  text = self->_text;
  v10 = [v4 contextBeforeInput];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_287EC4808;
  }

  [(NSMutableString *)text setString:v12];

  v13 = [(NSMutableString *)self->_text length];
  v14 = [v4 selectedText];
  v15 = [v14 length];
  self->_selectedRange.location = v13;
  self->_selectedRange.length = v15;

  v16 = self->_text;
  v17 = [v4 selectedText];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_287EC4808;
  }

  [(NSMutableString *)v16 appendString:v19];

  v20 = self->_text;
  v21 = [v4 contextAfterInput];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_287EC4808;
  }

  [(NSMutableString *)v20 appendString:v23];

  v24 = [(ACTKeyboardController *)self autocorrectionList];
  v25 = [v24 corrections];
  v26 = [v25 autocorrection];
  if (v26)
  {
    v27 = v26;
    v28 = TISwearWordPolicyV1Enabled();

    if (!v28)
    {
      goto LABEL_14;
    }

    v24 = [(ACTKeyboardController *)self inputManagerWrapper];
    v25 = [(ACTKeyboardController *)self autocorrectionList];
    v29 = [v25 corrections];
    v30 = [v29 autocorrection];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __45__ACTKeyboardController_syncToDocumentState___block_invoke;
    v110[3] = &unk_279DA0F30;
    v110[4] = self;
    [v24 textAccepted:v30 completionHandler:v110];
  }

LABEL_14:
  [(ACTKeyboardController *)self setAutocorrectionList:0];
  [(ACTKeyboardController *)self setCandidateResultSet:0];
  v31 = [v4 markedText];
  [(ACTKeyboardController *)self setMarkedText:v31];

  if ([v4 documentIsEmpty])
  {
    [(ACTKeyboardController *)self setIntermediateText:0];
  }

  else
  {
    v32 = MEMORY[0x277D6F3F8];
    v33 = [v4 markedText];
    v34 = [v4 markedText];
    v35 = [v32 intermediateTextWithInputString:v33 displayString:v34 selectionLocation:objc_msgSend(v4 lastInputString:{"selectedRangeInMarkedText"), 0}];
    [(ACTKeyboardController *)self setIntermediateText:v35];
  }

  [(ACTKeyboardController *)self updateDocumentState];
  v36 = [(ACTKeyboardController *)self inputModeIdentifier];
  v37 = [(ACTKeyboardController *)self keyboardState];
  [v37 setInputMode:v36];

  v38 = [(ACTKeyboardController *)self keyboardState];
  [v38 setAutocorrectionEnabled:1];

  v39 = [(ACTKeyboardController *)self autocorrectionType];
  v40 = [(ACTKeyboardController *)self keyboardState];
  v41 = [v40 textInputTraits];
  [v41 setAutocorrectionType:v39];

  v42 = [(ACTKeyboardController *)self usesPrediction];
  v43 = [(ACTKeyboardController *)self keyboardState];
  [v43 setAutocorrectionListUIDisplayed:v42];

  v44 = [(ACTKeyboardController *)self usesAutocapitalization];
  v45 = [(ACTKeyboardController *)self keyboardState];
  [v45 setAutocapitalizationEnabled:v44];

  v46 = [(ACTKeyboardController *)self autocapitalizationType];
  v47 = [(ACTKeyboardController *)self keyboardState];
  [v47 setAutocapitalizationType:v46];

  hardwareKeyboardMode = self->_hardwareKeyboardMode;
  v49 = [(ACTKeyboardController *)self keyboardState];
  [v49 setHardwareKeyboardMode:hardwareKeyboardMode];

  v50 = [(ACTKeyboardController *)self keyboardState];
  [v50 setShortcutConversionEnabled:1];

  v51 = [(ACTKeyboardController *)self wordLearningEnabled];
  v52 = [(ACTKeyboardController *)self keyboardState];
  [v52 setWordLearningEnabled:v51];

  v53 = [(ACTKeyboardController *)self inlineCompletionEnabled];
  v54 = [(ACTKeyboardController *)self keyboardState];
  [v54 setInlineCompletionEnabled:v53];

  v55 = [(ACTKeyboardController *)self clientIdentifier];
  v56 = [(ACTKeyboardController *)self keyboardState];
  [v56 setClientIdentifier:v55];

  v57 = [(ACTKeyboardController *)self recipientIdentifier];
  v58 = [(ACTKeyboardController *)self keyboardState];
  [v58 setRecipientIdentifier:v57];

  v59 = [(ACTKeyboardController *)self inputContextHistory];
  v60 = [(ACTKeyboardController *)self keyboardState];
  [v60 setInputContextHistory:v59];

  v61 = [(ACTKeyboardController *)self supplementalLexiconIdentifier];
  v62 = [(ACTKeyboardController *)self keyboardState];
  [v62 setSupplementalLexiconIdentifier:v61];

  v63 = [(ACTKeyboardController *)self canSuggestSupplementalItemsForCurrentSelection];
  v64 = [(ACTKeyboardController *)self keyboardState];
  [v64 setCanSuggestSupplementalItemsForCurrentSelection:v63];

  v65 = [(ACTKeyboardController *)self keyboardState];
  LOBYTE(v64) = objc_opt_respondsToSelector();

  if (v64)
  {
    v66 = [(ACTKeyboardController *)self longPredictionListEnabled];
    v67 = [(ACTKeyboardController *)self keyboardState];
    [v67 setLongPredictionListEnabled:v66];
  }

  v68 = objc_alloc_init(MEMORY[0x277D6F408]);
  v69 = [(ACTKeyboardController *)self keyboardState];
  [v69 setLayoutState:v68];

  v70 = [(ACTKeyboardController *)self inputModeIdentifier];
  v71 = [(ACTKeyboardController *)self keyboardState];
  v72 = [v71 layoutState];
  [v72 setInputMode:v70];

  v73 = [(ACTKeyboardController *)self keyplane];
  v74 = [v73 cachedKeysByKeyName:@"Candidate-Selection"];
  v75 = [v74 count] != 0;
  v76 = [(ACTKeyboardController *)self keyboardState];
  v77 = [v76 layoutState];
  [v77 setHasCandidateKey:v75];

  v78 = [(ACTKeyboardController *)self keyplane];
  v79 = [v78 cachedKeysByKeyName:@"Latin-Accents"];
  v80 = [v79 count] != 0;
  v81 = [(ACTKeyboardController *)self keyboardState];
  v82 = [v81 layoutState];
  [v82 setHasAccentKey:v80];

  v83 = [(ACTKeyboardController *)self keyplane];
  v84 = [v83 cachedKeysByKeyName:@"Multitap-Complete-Key"];
  v85 = [v84 count] != 0;
  v86 = [(ACTKeyboardController *)self keyboardState];
  v87 = [v86 layoutState];
  [v87 setCanMultitap:v85];

  v88 = [(ACTKeyboardController *)self keyplane];
  v89 = [v88 isAlphabeticPlane];
  v90 = [(ACTKeyboardController *)self keyboardState];
  v91 = [v90 layoutState];
  [v91 setIsAlphabeticPlane:v89];

  v92 = [(ACTKeyboardController *)self keyplane];
  v93 = [v92 isKanaPlane];
  v94 = [(ACTKeyboardController *)self keyboardState];
  v95 = [v94 layoutState];
  [v95 setIsKanaPlane:v93];

  v96 = [(ACTKeyboardController *)self keyplane];
  v97 = [v96 name];
  LODWORD(v94) = [v97 containsString:@"Wildcat"];

  v98 = [(ACTKeyboardController *)self keyboardState];
  v99 = [v98 layoutState];
  [v99 setUserInterfaceIdiom:v94];

  v100 = [(ACTKeyboardController *)self secureTextEntry];
  v101 = [(ACTKeyboardController *)self keyboardState];
  [v101 setSecureTextEntry:v100];

  v102 = [(ACTKeyboardController *)self isScreenLocked];
  v103 = [(ACTKeyboardController *)self keyboardState];
  [v103 setIsScreenLocked:v102];

  [(ACTKeyboardController *)self setInitialKeyplane];
  v104 = [(ACTKeyboardController *)self layoutUtils];
  v105 = [v104 keyOverrides];
  [v105 removeAllObjects];

  v106 = [(ACTKeyboardController *)self activeTouchState];
  [v106 removeAllObjects];

  v107 = [(ACTKeyboardController *)self inputManagerWrapper];
  v108 = [(ACTKeyboardController *)self clonedKeyboardState];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __45__ACTKeyboardController_syncToDocumentState___block_invoke_2;
  v109[3] = &unk_279DA0F30;
  v109[4] = self;
  [v107 syncToKeyboardState:v108 completionHandler:v109];

  [(ACTKeyboardController *)self setLastInputWasSelection:0];
  [(ACTKeyboardController *)self setLastInputWasContinuousPath:0];
  [(ACTKeyboardController *)self setInputIsPunctuationFollowingContinuousPath:0];
  [(ACTKeyboardController *)self updateAutoshift];
  [(ACTKeyboardController *)self generateAutocorrectionsOrCandidates];
}

- (void)commitText
{
  v3 = [(ACTKeyboardController *)self inputManagerState];
  v4 = [v3 usesCandidateSelection];

  if (!v4)
  {
    if (![(ACTKeyboardController *)self usesAutocorrection])
    {
      return;
    }

    v7 = [(ACTKeyboardController *)self autocorrectionList];
    v8 = [v7 candidates];
    v33 = [v8 firstObject];

    v9 = [v33 rawInput];
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    v11 = [v33 rawInput];
    v12 = [v33 input];
    if ([v11 isEqualToString:v12])
    {

LABEL_8:
      [(ACTKeyboardController *)self acceptAutocorrection];
      goto LABEL_16;
    }

    v13 = [v33 input];
    v14 = [v33 candidate];
    if ([v13 isEqualToString:v14])
    {
    }

    else
    {
      v15 = [v33 rawInput];
      v16 = [v33 candidate];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v18 = [v33 input];
    v19 = [(ACTKeyboardController *)self selectedRangeForText:v18];
    v21 = v20;

    v22 = [(NSMutableString *)self->_text substringWithRange:v19, v21];
    v23 = [v33 input];
    LOBYTE(v21) = [v22 isEqualToString:v23];

    if ((v21 & 1) == 0)
    {
      v24 = [v33 rawInput];
      v25 = [(ACTKeyboardController *)self selectedRangeForText:v24];
      v27 = v26;

      v28 = [(NSMutableString *)self->_text substringWithRange:v25, v27];

      v22 = v28;
    }

    v29 = objc_alloc(MEMORY[0x277D6F3D8]);
    v30 = [v33 input];
    v31 = [v33 rawInput];
    v32 = [v29 initWithCandidate:v22 forInput:v30 rawInput:v31];

    [(ACTKeyboardController *)self textAccepted:v32 predictiveCandidate:0];
    [(ACTKeyboardController *)self setAutocorrectionList:0];

    goto LABEL_16;
  }

  v5 = [(ACTKeyboardController *)self candidateResultSet];
  v33 = [v5 firstCandidate];

  v6 = v33;
  if (v33)
  {
    [(ACTKeyboardController *)self acceptCandidate:v33];
LABEL_16:
    v6 = v33;
  }
}

- (void)setShouldSkipCandidateSelection:(BOOL)a3
{
  v3 = a3;
  v4 = [(ACTKeyboardController *)self keyboardState];
  [v4 setShouldSkipCandidateSelection:v3];
}

- (BOOL)shouldSkipCandidateSelection
{
  v2 = [(ACTKeyboardController *)self keyboardState];
  v3 = [v2 shouldSkipCandidateSelection];

  return v3;
}

- (void)setHardwareKeyboardMode:(BOOL)a3
{
  v3 = a3;
  self->_hardwareKeyboardMode = a3;
  v4 = [(ACTKeyboardController *)self keyboardState];
  [v4 setHardwareKeyboardMode:v3];
}

- (BOOL)hardwareKeyboardMode
{
  v3 = [(ACTKeyboardController *)self keyboardState];

  if (!v3)
  {
    return self->_hardwareKeyboardMode;
  }

  v4 = [(ACTKeyboardController *)self keyboardState];
  v5 = [v4 hardwareKeyboardMode];

  return v5;
}

- (TIKeyboardInputManagerWrapper)inputManagerWrapper
{
  inputManagerWrapper = self->_inputManagerWrapper;
  if (!inputManagerWrapper)
  {
    v4 = [(ACTKeyboardController *)self createKeyboardInputManagerWrapper];
    if (objc_opt_respondsToSelector())
    {
      v5 = [[ACTClientProxy alloc] initWithClient:self];
      [v4 setClientProxy:v5];
    }

    [(ACTKeyboardController *)self setInputManagerWrapper:v4];

    inputManagerWrapper = self->_inputManagerWrapper;
  }

  return inputManagerWrapper;
}

- (id)createKeyboardInputManagerWrapper
{
  v3 = objc_alloc_init(MEMORY[0x277D6FE80]);
  v4 = [(ACTKeyboardController *)self keyboardInputManagerFactory];

  if (v4)
  {
    v5 = [(ACTKeyboardController *)self keyboardInputManagerFactory];
    v6 = [v5 newKeyboardInputManager];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D6FE60]);
    v5 = [(ACTKeyboardController *)self inputMode];
    v6 = [v7 initWithInputMode:v5 keyboardState:0];
  }

  v8 = v6;

  [v3 setInputManager:v8];
  [v3 changingContextWithTrigger:*MEMORY[0x277D6F5D0]];

  return v3;
}

- (TIKeyboardInputManager)existingInputManager
{
  v2 = [(TIKeyboardInputManagerWrapper *)self->_inputManagerWrapper inputManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TIKeyboardInputManager)inputManager
{
  v2 = [(ACTKeyboardController *)self inputManagerWrapper];
  v3 = [v2 inputManager];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tearDown
{
  v2 = [(ACTKeyboardController *)self inputManager];
  [v2 tearDown];
}

- (void)reset
{
  [MEMORY[0x277D6FE90] clearDynamicLearningCaches];
  if (self->_inputManagerWrapper)
  {
    v3 = [(ACTKeyboardController *)self inputManager];
    [v3 clearSoftLearning];

    v4 = [(ACTKeyboardController *)self inputManager];
    [v4 suspend];

    inputManagerWrapper = self->_inputManagerWrapper;
    self->_inputManagerWrapper = 0;
  }

  v6 = [(ACTKeyboardController *)self inputManager];
  [v6 resume];

  v7 = [MEMORY[0x277CCAD78] UUID];
  [(ACTKeyboardController *)self setDocumentIdentifier:v7];

  [(ACTKeyboardController *)self syncToEmptyDocument];
}

- (id)clonedKeyboardState
{
  v2 = [(ACTKeyboardController *)self keyboardState];
  v3 = [v2 copy];

  return v3;
}

- (void)registerLayoutWithFavonius
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D6F400]);
  v4 = [(ACTKeyboardController *)self keys];
  v26 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

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
          v14 = [(ACTKeyboardController *)self layoutUtils];
          v15 = [v14 representedStringForKey:v13 shifted:{-[ACTKeyboardController isShifted](self, "isShifted")}];

          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = &stru_287EC4808;
          }

          v17 = MEMORY[0x277CBEAF8];
          v18 = [(ACTKeyboardController *)self inputModeIdentifier];
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

  v24 = [(ACTKeyboardController *)self keyboardState];
  [v24 setKeyLayout:v26];
}

- (void)setIntermediateText:(id)a3
{
  objc_storeStrong(&self->_intermediateText, a3);
  v5 = a3;
  v6 = [v5 displayString];
  [(ACTKeyboardController *)self setMarkedText:v6];

  v7 = [v5 inputString];
  v8 = [(ACTKeyboardController *)self keyboardState];
  [v8 setInputForMarkedText:v7];

  v10 = [v5 searchString];

  v9 = [(ACTKeyboardController *)self keyboardState];
  [v9 setSearchStringForMarkedText:v10];
}

- (void)setKeyboardConfiguration:(id)a3
{
  v9 = a3;
  v4 = [v9 inputManagerState];
  [(ACTKeyboardController *)self setInputManagerState:v4];

  v5 = [v9 intermediateText];

  if (v5)
  {
    v6 = [v9 intermediateText];
    [(ACTKeyboardController *)self setIntermediateText:v6];
  }

  layoutUtils = self->_layoutUtils;
  v8 = [v9 accentKeyString];
  [(ACTKeyboardLayoutUtils *)layoutUtils setLayoutKeyOverride:v8 forKey:*MEMORY[0x277D76BE0] uiKeyboardStringNothing:*MEMORY[0x277D76C28]];

  [(ACTKeyboardController *)self registerLayoutWithFavonius];
  [(ACTKeyboardController *)self updateDocumentState];
}

- (void)setInitialKeyplane
{
  v3 = [(ACTKeyboardController *)self keyboard];
  v9 = [v3 subtrees];

  v4 = [v9 objectAtIndex:0];
  if ([v4 isShiftKeyplane])
  {
    v5 = [(ACTKeyboardController *)self keyboard];
    v6 = [v4 shiftAlternateKeyplaneName];
    v7 = [v5 subtreeWithName:v6];

    v4 = v7;
  }

  [(ACTKeyboardController *)self setKeyplane:v4];
  v8 = [(ACTKeyboardController *)self keyboardState];
  [v8 setShiftState:0];
}

- (void)updateAutoshift
{
  if ([(ACTKeyboardController *)self isShifted])
  {
    v3 = [(ACTKeyboardController *)self keyplane];
    v4 = [v3 BOOLForProperty:@"shift-is-plane-chooser"];

    if ((v4 & 1) == 0)
    {
      [(ACTKeyboardController *)self shiftKeyplane];
    }
  }

  if (![(ACTKeyboardController *)self isShifted])
  {
    v13 = [(ACTKeyboardController *)self keyplane];
    if (![v13 usesAutoShift])
    {
      goto LABEL_16;
    }

    v5 = [(ACTKeyboardController *)self usesAutocapitalization];

    if (!v5)
    {
      return;
    }

    v13 = [(ACTKeyboardController *)self text];
    v6 = [(ACTKeyboardController *)self autocapitalizationType];
    if (v6 == 1)
    {
      if ([v13 length])
      {
        v9 = [(ACTKeyboardController *)self inputManagerState];
        v10 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(v13, "_lastLongCharacter")}];
        v11 = [v9 stringEndsWord:v10];

        if (!v11)
        {
LABEL_16:

          return;
        }
      }
    }

    else if (v6 != 3)
    {
      if (v6 != 2)
      {
        goto LABEL_16;
      }

      v7 = [(ACTKeyboardController *)self inputManagerState];
      v8 = [v7 nextInputWouldStartSentence];

      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(ACTKeyboardController *)self shiftKeyplane];
    v12 = [(ACTKeyboardController *)self keyboardState];
    [v12 setShiftState:2];

    goto LABEL_16;
  }
}

- (void)alternateKeyplane
{
  v3 = [(ACTKeyboardController *)self keyboard];
  v4 = [(ACTKeyboardController *)self keyplane];
  v5 = [v4 alternateKeyplaneName];
  v6 = [v3 subtreeWithName:v5];
  [(ACTKeyboardController *)self setKeyplane:v6];

  v7 = [(ACTKeyboardController *)self keyplane];
  v8 = [v7 isShiftKeyplane];

  v9 = [(ACTKeyboardController *)self keyboardState];
  [v9 setShiftState:v8];

  [(ACTKeyboardController *)self updateAutoshift];
}

- (void)shiftKeyplane
{
  v3 = [(ACTKeyboardController *)self keyboard];
  v4 = [(ACTKeyboardController *)self keyplane];
  v5 = [v4 shiftAlternateKeyplaneName];
  v6 = [v3 subtreeWithName:v5];
  [(ACTKeyboardController *)self setKeyplane:v6];

  v7 = [(ACTKeyboardController *)self keyplane];
  v8 = [v7 isShiftKeyplane];

  v9 = [(ACTKeyboardController *)self keyboardState];
  [v9 setShiftState:v8];
}

- (BOOL)isAutoshifted
{
  v2 = [(ACTKeyboardController *)self keyboardState];
  v3 = [v2 shiftState] == 2;

  return v3;
}

- (BOOL)isShifted
{
  v2 = [(ACTKeyboardController *)self keyplane];
  v3 = [v2 isShiftKeyplane];

  return v3;
}

- (void)adjustKeyplaneEmulatingKBStar:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v4 = [v45 keys];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v4;
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
        v11 = self;
        v12 = [(ACTKeyboardController *)self layoutUtils];
        v13 = [v12 representedStringForKey:v10 shifted:{objc_msgSend(v45, "isShiftKeyplane")}];
        v14 = [v13 lowercaseString];

        if (v14)
        {
          v15 = [v5 objectForKey:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v5 setObject:v15 forKey:v14];
          }

          [v15 addObject:v10];
        }

        [v10 setVisible:1];

        self = v11;
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
    v42 = self;
    v43 = [(TTKSimpleKeyboardPlane *)self->_ttkLayout keys];
    v17 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
            objc_enumerationMutation(v43);
          }

          v21 = *(*(&v50 + 1) + 8 * j);
          v22 = [v21 string];
          v23 = @" ";
          if (([v22 isEqualToString:@"space"] & 1) == 0)
          {
            v23 = [v21 string];
          }

          v24 = [v5 valueForKey:v23];

          if (v24)
          {
            v25 = [v5 objectForKeyedSubscript:v23];
            v26 = [v25 firstObject];

            v27 = [v26 name];
            [v16 setObject:v21 forKey:v27];
          }
        }

        v18 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v18);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = [v5 allValues];
    v29 = [v28 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v46 + 1) + 8 * k) firstObject];
          v34 = [v33 name];
          v35 = [v16 objectForKey:v34];

          if (v35)
          {
            v36 = [v33 name];
            v37 = [v16 objectForKey:v36];

            [v37 frame];
            [v33 setFrame:?];
            [v37 frame];
            [v33 setPaddedFrame:?];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v30);
    }

    self = v42;
  }

  v38 = [v5 objectForKey:@"dictation"];
  v39 = [v5 objectForKey:@" "];
  [(ACTKeyboardController *)self mergeFrameFromKey:v38 intoKey:v39];

  v40 = [v5 objectForKey:@"international"];
  v41 = [v5 objectForKey:@"more"];
  [(ACTKeyboardController *)self mergeFrameFromKey:v40 intoKey:v41];
}

- (void)mergeFrameFromKey:(id)a3 intoKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6 && [v5 count] == 1)
  {
    v8 = [v5 lastObject];
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__6070;
    v53 = __Block_byref_object_dispose__6071;
    v54 = [v7 firstObject];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0x7FEFFFFFFFFFFFFFLL;
    if ([v7 count])
    {
      [v8 frame];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __51__ACTKeyboardController_mergeFrameFromKey_intoKey___block_invoke;
      v37[3] = &unk_279DA0F08;
      v41 = v9;
      v42 = v10;
      v43 = v11;
      v44 = v12;
      v38 = v8;
      v39 = &v45;
      v40 = &v49;
      [v7 enumerateObjectsUsingBlock:v37];
    }

    if (v46[3] < 2.0)
    {
      [v8 frame];
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
      [v8 paddedFrame];
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

    [v8 setVisible:0];
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

- (void)divideKeyplane:(id)a3 intoLeft:(id)a4 right:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    [v8 removeAllObjects];
    [v10 removeAllObjects];
    v11 = [v7 subtrees];
    v12 = [v11 firstObject];

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
    v14 = [v12 keys];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke;
    v44[3] = &unk_279DA0EB8;
    v44[4] = v48;
    v44[5] = v45;
    [v14 enumerateObjectsUsingBlock:v44];

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
    v30 = [v7 keys];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__ACTKeyboardController_divideKeyplane_intoLeft_right___block_invoke_2;
    v32[3] = &unk_279DA0EE0;
    v36 = v31;
    v37 = v17;
    v38 = v19;
    v39 = v21;
    v35 = v48;
    v33 = v8;
    v40 = v23;
    v41 = v25;
    v42 = v27;
    v43 = v29;
    v34 = v10;
    [v30 enumerateObjectsUsingBlock:v32];

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

- (void)setKeyplane:(id)a3
{
  p_keyplane = &self->_keyplane;
  v25 = a3;
  if (*p_keyplane != v25)
  {
    objc_storeStrong(&self->_keyplane, a3);
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
    v8 = [(ACTKeyboardController *)self keyplane];
    v9 = [v8 keys];
    [(ACTKeyboardController *)self setKeys:v9];

    v10 = [(ACTKeyboardController *)self keyplane];
    v11 = [v10 cachedKeysByKeyName:@"Latin-Accents"];
    v12 = [(ACTKeyboardController *)self keyboardState];
    v13 = [v12 layoutState];
    [v13 setHasAccentKey:v11 != 0];

    v14 = [(ACTKeyboardController *)self keyplane];
    v15 = [v14 isAlphabeticPlane];
    v16 = [(ACTKeyboardController *)self keyboardState];
    v17 = [v16 layoutState];
    [v17 setIsAlphabeticPlane:v15];

    leftKeys = self->_leftKeys;
    self->_leftKeys = 0;

    rightKeys = self->_rightKeys;
    self->_rightKeys = 0;

    v20 = [(UIKBTree *)self->_keyplane name];
    LODWORD(v15) = [v20 containsString:@"Wildcat"];

    if (v15)
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

- (void)setKeyboard:(id)a3
{
  v5 = a3;
  p_keyboard = &self->_keyboard;
  if (self->_keyboard != v5)
  {
    v9 = v5;
    objc_storeStrong(p_keyboard, a3);
    v7 = [(UIKBTree *)self->_keyboard subtrees];
    v8 = [v7 objectAtIndex:0];
    [(ACTKeyboardController *)self setKeyplane:v8];

    [(ACTKeyboardController *)self setInitialKeyplane];
    p_keyboard = [(ACTKeyboardController *)self updateAutoshift];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](p_keyboard, v5);
}

- (TIAutocorrectionList)autocorrectionList
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_autocorrectionList;
  objc_sync_exit(v2);

  return v3;
}

- (void)setAutocorrectionList:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  autocorrectionList = obj->_autocorrectionList;
  obj->_autocorrectionList = v4;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  v3 = [(ACTKeyboardController *)self inputManager];
  [v3 suspend];

  v4.receiver = self;
  v4.super_class = ACTKeyboardController;
  [(ACTKeyboardController *)&v4 dealloc];
}

- (ACTKeyboardController)initWithInputMode:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = ACTKeyboardController;
  v6 = [(ACTKeyboardController *)&v31 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = *(v6 + 31);
    *(v6 + 31) = v7;

    objc_storeStrong(v6 + 12, a3);
    v9 = [v5 normalizedIdentifier];
    v10 = [v9 copy];
    v11 = *(v6 + 11);
    *(v6 + 11) = v10;

    v6[49] = 1;
    v6[60] = 1;
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = *(v6 + 4);
    *(v6 + 4) = v12;

    v14 = [ACTKeyboardLayoutUtils alloc];
    v15 = [v5 locale];
    v16 = [(ACTKeyboardLayoutUtils *)v14 initWithLocale:v15];
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
      v22 = [v5 locale];
      v23 = [(objc_class *)v21 smartPunctuationOptionsForLocale:v22];
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

    v28 = [MEMORY[0x277CCAD78] UUID];
    v29 = *(v6 + 36);
    *(v6 + 36) = v28;

    [MEMORY[0x277D6FE60] swizzleTestingParameters];
  }

  return v6;
}

@end