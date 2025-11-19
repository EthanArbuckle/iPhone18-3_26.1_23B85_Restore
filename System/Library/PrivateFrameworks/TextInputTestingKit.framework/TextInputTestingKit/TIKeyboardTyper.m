@interface TIKeyboardTyper
- (BOOL)asyncPredictions;
- (BOOL)attemptToTapAutocorrectionWithString:(id)a3;
- (BOOL)attemptToTapPredictionBarCandidateWithString:(id)a3;
- (BOOL)attemptToTapPredictionWithString:(id)a3;
- (BOOL)changeToNearestAlphabeticPlane;
- (BOOL)changeToNearestKeyplaneWithString:(id)a3;
- (BOOL)hardwareKeyboardMode;
- (BOOL)hasPrediction:(id)a3;
- (BOOL)inPartialCandidateSelection;
- (BOOL)inlineCompletionEnabled;
- (BOOL)insertsSpaceAfterPredictiveInput;
- (BOOL)isAutoshifted;
- (BOOL)isShifted;
- (BOOL)lastInputWasSelection;
- (BOOL)longPredictionListEnabled;
- (BOOL)nextKeyIsMultitap;
- (BOOL)postTokenisString:(id)a3 i:(unint64_t)a4;
- (BOOL)priorTokenisString:(id)a3 i:(unint64_t)a4;
- (BOOL)shouldSkipCandidateSelection;
- (BOOL)usePartialCandidates;
- (BOOL)usesAutocapitalization;
- (BOOL)usesAutocorrection;
- (BOOL)usesPrediction;
- (BOOL)usesTransliteration;
- (BOOL)wordLearningEnabled;
- (CGPoint)pointForAttemptedTapOnKey:(id)a3 withError:(id)a4;
- (NSArray)inlineCompletionCandidates;
- (NSArray)predictionBarCandidates;
- (NSArray)predictions;
- (NSString)clientIdentifier;
- (NSString)inputModeIdentifier;
- (NSString)markedText;
- (NSString)recipientIdentifier;
- (NSString)text;
- (TIAutocorrectionList)autocorrectionList;
- (TIErrorGenerator)errorGenerator;
- (TIInputContextHistory)inputContextHistory;
- (TIKeyboardCandidate)autocorrection;
- (TIKeyboardCandidateResultSet)candidateResultSet;
- (TIKeyboardInputManager)inputManager;
- (TIKeyboardInputManagerFactory)keyboardInputManagerFactory;
- (TIKeyboardTyper)initWithInputMode:(id)a3;
- (TIKeyboardTyperUserModel)userModel;
- (UIKBTree)keyboard;
- (UIKBTree)keyplane;
- (_NSRange)selectedRange;
- (id)_keyplaneCloserToKeyWithString:(id)a3;
- (id)_logStringForTouchedKey:(id)a3;
- (id)_performGestureKeyInput:(id)a3 timestamp:(double)a4 typingLog:(id)a5;
- (id)_performTapAtLocation:(CGPoint)a3 timestamp:(double)a4 fingerID:(int)a5 secondaryString:(BOOL)a6;
- (id)_performTapAtLocation:(CGPoint)a3 timestamp:(double)a4 intendedKey:(id)a5 touchedKey:(id)a6 secondaryString:(BOOL)a7 touchError:(id)a8 typingLog:(id)a9;
- (id)_performTouchEvent:(id)a3 typingLog:(id)a4;
- (id)_performVariantKey:(id)a3 timestamp:(double)a4 typingLog:(id)a5;
- (id)candidateBarCandidates;
- (id)candidatesForString:(id)a3;
- (id)displayStringOverrideForKey:(id)a3;
- (id)externalStringToInternal:(id)a3;
- (id)inputSegmentsForContinuousPathString:(id)a3;
- (id)internalStringToExternal:(id)a3;
- (id)keyContainingPoint:(CGPoint)a3 inKeyplane:(id)a4;
- (id)keyToAccessKeyplaneCloserToKeyString:(id)a3;
- (id)keyWithString:(id)a3 inKeyplane:(id)a4;
- (id)keyWithString:(id)a3 inKeyplane:(id)a4 includeSecondaryStrings:(BOOL)a5;
- (id)mapShiftedKeyToUnShiftedKeyExcludeCapitalization:(id)a3;
- (id)mergeHyphenatedWord:(id)a3 string:(id)a4;
- (id)performTapAtKey:(id)a3 biasedTowards:(id)a4 biasWeight:(float)a5;
- (id)performTapAtLocation:(CGPoint)a3;
- (id)performTouchUpAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 secondaryString:(BOOL)a8;
- (id)predictationBarDebugString;
- (id)shiftKeyToAccessKeyplaneCloserToKeyString:(id)a3;
- (id)splitDigraphsInString:(id)a3;
- (id)tokensForString:(id)a3;
- (int64_t)performTouchDownAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (int64_t)performTouchDragAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (unint64_t)autocapitalizationType;
- (unint64_t)autocorrectionType;
- (unint64_t)cursorLocationInMarkedText;
- (void)_bumpTouchPathID;
- (void)_finishKeystrokeAndRecordPredictionsInTypingLog:(id)a3 touchedKey:(id)a4 insertedKey:(id)a5 typingLog:(id)a6;
- (void)_performAcceptCandidate:(id)a3 timestamp:(double)a4 typingLog:(id)a5 predictiveCandidate:(BOOL)a6 intendedTransliteration:(id)a7;
- (void)_performRejectCandidate:(id)a3 timestamp:(double)a4 typingLog:(id)a5;
- (void)_skipTapTimestamp:(double)a3 intendedKey:(id)a4 typingLog:(id)a5;
- (void)acceptAutocorrection;
- (void)acceptCandidate:(id)a3;
- (void)acceptCandidateFromPredictionBar:(id)a3;
- (void)acceptCandidateInputEvent:(id)a3 fromCandidateBar:(BOOL)a4;
- (void)acceptCandidateViaKeyboard:(id)a3;
- (void)acceptPredictiveCandidate:(id)a3;
- (void)adjustCursorByOffset:(int64_t)a3;
- (void)adjustPhraseBoundaryByOffset:(int64_t)a3 granularity:(int)a4;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (void)attemptTapOnKeyWithString:(id)a3;
- (void)attemptTapOnKeyWithString:(id)a3 withErrorGenerator:(id)a4 typingLog:(id)a5;
- (void)attemptToDeleteWithCount:(unsigned int)a3;
- (void)attemptToRapidDeleteCharacters:(unsigned int)a3;
- (void)attemptToStrokeWord:(id)a3 startTime:(double)a4 duration:(double)a5 typingLog:(id)a6 callback:(id)a7;
- (void)attemptToTapKeys:(id)a3;
- (void)attemptToTapPredictionWithLiteral:(id)a3;
- (void)attemptToTypeIntended:(id)a3 expected:(id)a4 typingLog:(id)a5;
- (void)attemptToTypeText:(id)a3 typingLog:(id)a4;
- (void)attemptToTypeWithLog:(id)a3;
- (void)candidateRejected:(id)a3;
- (void)commitText;
- (void)dealloc;
- (void)generateAutocorrectionsWithShiftState:(int)a3;
- (void)generateCandidates;
- (void)insertText:(id)a3;
- (void)learnWord:(id)a3 withCount:(unint64_t)a4;
- (void)linkWithUserActionStream:(id)a3;
- (void)performStrokeForPath:(id)a3 typingLog:(id)a4 callback:(id)a5;
- (void)performTouchCancelAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)performTouchEndRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)performTouchRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7;
- (void)registerLearning:(id)a3 fullCandidate:(id)a4 mode:(id)a5;
- (void)rejectAutocorrection;
- (void)reset;
- (void)setAsyncPredictions:(BOOL)a3;
- (void)setAutocapitalizationType:(unint64_t)a3;
- (void)setAutocorrectionList:(id)a3;
- (void)setAutocorrectionType:(unint64_t)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setErrorGenerator:(id)a3;
- (void)setHardwareKeyboardMode:(BOOL)a3;
- (void)setInlineCompletionEnabled:(BOOL)a3;
- (void)setInputContextHistory:(id)a3;
- (void)setInputModeIdentifier:(id)a3;
- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)a3;
- (void)setKeyboard:(id)a3;
- (void)setKeyboardInputManagerFactory:(id)a3;
- (void)setLastInputWasSelection:(BOOL)a3;
- (void)setLongPredictionListEnabled:(BOOL)a3;
- (void)setNextKeyIsMultitap:(BOOL)a3;
- (void)setRecipientIdentifier:(id)a3;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap;
- (void)setShouldSkipCandidateSelection:(BOOL)a3;
- (void)setUserModel:(id)a3;
- (void)setUsesAutocapitalization:(BOOL)a3;
- (void)setUsesAutocorrection:(BOOL)a3;
- (void)setUsesPrediction:(BOOL)a3;
- (void)setUsesTransliteration:(BOOL)a3;
- (void)setWordLearningEnabled:(BOOL)a3;
- (void)suspendAndResume;
- (void)syncToDocumentState:(id)a3;
- (void)syncToEmptyDocument;
- (void)tearDown;
@end

@implementation TIKeyboardTyper

- (BOOL)inPartialCandidateSelection
{
  v2 = [(TIKeyboardTyper *)self userActionStream];
  v3 = [v2 inPartialCandidateSelection];

  return v3;
}

- (BOOL)usePartialCandidates
{
  v2 = [(TIKeyboardTyper *)self userModel];
  v3 = [v2 usePartialCandidates];

  return v3;
}

- (void)learnWord:(id)a3 withCount:(unint64_t)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__TIKeyboardTyper_learnWord_withCount___block_invoke;
  v10[3] = &unk_279DA0C18;
  v10[4] = self;
  v11 = &unk_287ED4B08;
  v7 = MEMORY[0x26D6C0D70](v10);
  [(TIKeyboardTyper *)self syncToEmptyDocument];
  [(TIKeyboardTyper *)self attemptToTypeText:@"- -  - - . "];
  [(TIKeyboardTyper *)self syncToEmptyDocument];
  for (; a4; --a4)
  {
    v8 = v7[2](v7);
    [(TIKeyboardTyper *)self attemptToTypeText:v8];

    [(TIKeyboardTyper *)self attemptToTypeText:@" "];
    [(TIKeyboardTyper *)self attemptToTypeText:v6];
    [(TIKeyboardTyper *)self rejectAutocorrection];
    [(TIKeyboardTyper *)self attemptToTypeText:@" "];
    v9 = v7[2](v7);
    [(TIKeyboardTyper *)self attemptToTypeText:v9];

    [(TIKeyboardTyper *)self attemptToTypeText:@". "];
    [(TIKeyboardTyper *)self syncToEmptyDocument];
  }
}

id __39__TIKeyboardTyper_learnWord_withCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) learnWordContextIndex];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:v2];
  v4 = v2 + 1;
  if ([*(a1 + 40) count] <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [*(a1 + 32) setLearnWordContextIndex:v5];

  return v3;
}

- (id)splitDigraphsInString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self inputMode];
  v6 = [v5 languageWithRegion];
  v7 = [v6 hasPrefix:@"de_"];

  if (v7)
  {
    v8 = [v4 stringByReplacingOccurrencesOfString:@"ß" withString:@"ss"];

    v9 = [(TIKeyboardTyper *)self keyboard];
    v10 = [v9 subtrees];
    v11 = [v10 objectAtIndex:0];

    if ([v11 isShiftKeyplane])
    {
      v12 = [(TIKeyboardTyper *)self keyboard];
      v13 = [v11 shiftAlternateKeyplaneName];
      v14 = [v12 subtreeWithName:v13];

      v11 = v14;
    }

    v15 = [(TIKeyboardTyper *)self keyboardController];
    v16 = [v15 keyCodeWithString:@"ü" inKeyplane:v11];

    if (v16 == -1)
    {
      v17 = [v8 stringByReplacingOccurrencesOfString:@"Ä" withString:@"Ae"];

      v18 = [v17 stringByReplacingOccurrencesOfString:@"Ö" withString:@"Oe"];

      v19 = [v18 stringByReplacingOccurrencesOfString:@"Ü" withString:@"Ue"];

      v20 = [v19 stringByReplacingOccurrencesOfString:@"ä" withString:@"ae"];

      v21 = [v20 stringByReplacingOccurrencesOfString:@"ö" withString:@"oe"];

      v8 = [v21 stringByReplacingOccurrencesOfString:@"ü" withString:@"ue"];
    }
  }

  else
  {
    v22 = [(TIKeyboardTyper *)self inputMode];
    v23 = [v22 languageWithRegion];
    v24 = [v23 hasPrefix:@"fr_"];

    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = [v4 stringByReplacingOccurrencesOfString:@"æ" withString:@"ae"];

    v26 = [v25 stringByReplacingOccurrencesOfString:@"œ" withString:@"oe"];

    v11 = [v26 stringByReplacingOccurrencesOfString:@"Æ" withString:@"AE"];

    v8 = [v11 stringByReplacingOccurrencesOfString:@"Œ" withString:@"OE"];
  }

  v4 = v8;
LABEL_9:

  return v4;
}

- (id)internalStringToExternal:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 inputManager];
  v7 = [v6 internalStringToExternal:v4];

  return v7;
}

- (id)externalStringToInternal:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 inputManager];
  v7 = [v6 externalStringToInternal:v4];

  return v7;
}

- (id)inputSegmentsForContinuousPathString:(id)a3
{
  v4 = TITestTyperTokensForString(a3, 0);
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v4 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndex:v6];
      if (v7)
      {
        v9 = [(TIKeyboardTyper *)self mergeHyphenatedWord:v5 string:v8];

        v8 = v9;
      }

      if ([v8 isEqualToString:@"-"] && -[TIKeyboardTyper priorTokenisString:i:](self, "priorTokenisString:i:", v4, v6) && -[TIKeyboardTyper postTokenisString:i:](self, "postTokenisString:i:", v4, v6))
      {
        v10 = [(TIKeyboardTyper *)self mergeHyphenatedWord:v5 string:v8];

        v7 = 1;
        v8 = v10;
      }

      else
      {
        v7 = 0;
      }

      [v5 addObject:v8];

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  return v5;
}

- (id)mergeHyphenatedWord:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 lastObject];
    [v5 removeLastObject];
    v8 = [v7 stringByAppendingString:v6];
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (BOOL)postTokenisString:(id)a3 i:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] - 1 <= a4)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a4 + 1];
    v7 = [v6 characterAtIndex:0];
    v8 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    if ([v8 characterIsMember:v7])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v9 = (v7 != 32) & ~[v10 characterIsMember:v7];
    }
  }

  return v9;
}

- (BOOL)priorTokenisString:(id)a3 i:(unint64_t)a4
{
  if (a4)
  {
    v4 = [a3 objectAtIndex:a4 - 1];
    v5 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
    v6 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    if ([v6 characterIsMember:v5])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v7 = (v5 != 32) & ~[v8 characterIsMember:v5];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)tokensForString:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self userModel];
  v6 = [v5 prefersTransliteration];

  if (v6)
  {
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v8 = [(TIKeyboardTyper *)self userModel];
    v9 = [v8 prefersContinuousPath];

    if (v9)
    {
      [(TIKeyboardTyper *)self inputSegmentsForContinuousPathString:v4];
    }

    else
    {
      [(TIKeyboardTyper *)self inputSegmentsForString:v4];
    }
    v7 = ;
  }

  v10 = v7;

  return v10;
}

- (id)_logStringForTouchedKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 interactionType];
    if (v6 <= 0x10 && ((1 << v6) & 0x1A006) != 0)
    {
      v7 = [(TIKeyboardTyper *)self keyboardController];
      v8 = [v7 layoutUtils];
      v9 = [(TIKeyboardTyper *)self keyplane];
      v10 = [v8 representedStringForKey:v5 shifted:{objc_msgSend(v9, "isShiftKeyplane")}];
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      v7 = [v5 representedString];
      v10 = [v12 stringWithFormat:@"<%@>", v7];
    }
  }

  else
  {
    v10 = @"<NoKey>";
  }

  return v10;
}

- (id)_performTapAtLocation:(CGPoint)a3 timestamp:(double)a4 fingerID:(int)a5 secondaryString:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  y = a3.y;
  x = a3.x;
  v12 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v13) = 5.0;
  [v12 performTouchDownAtLocation:self->_touchPathID radius:v7 timestamp:x pathIndex:y fingerID:{v13, a4}];

  v14 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v15) = 5.0;
  v16 = [v14 performTouchUpAtLocation:self->_touchPathID radius:v7 timestamp:v6 pathIndex:x fingerID:y secondaryString:{v15, a4}];

  [(TIKeyboardTyper *)self _bumpTouchPathID];
  v17 = [(TIKeyboardTyper *)self userPersona];
  v18 = [(TIKeyboardTyper *)self keyboardController];
  v19 = [v18 keyplane];
  [v17 updateFromKeyplane:v19];

  return v16;
}

- (void)_bumpTouchPathID
{
  touchPathID = self->_touchPathID;
  if (touchPathID + 1 <= 0x14)
  {
    v3 = touchPathID + 1;
  }

  else
  {
    v3 = 1;
  }

  self->_touchPathID = v3;
}

- (void)performStrokeForPath:(id)a3 typingLog:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39 = 0;
  v11 = [v8 samples];
  v12 = [v11 count];

  if (v12 < 2)
  {
    v25 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = [v8 samples];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [(TIKeyboardTyper *)self keyboardController];
      [v15 point];
      v18 = v17;
      v20 = v19;
      [v15 timeStamp];
      LODWORD(v22) = 5.0;
      if (v13)
      {
        [v16 performTouchDragAtLocation:0 radius:0 timestamp:v18 pathIndex:v20 fingerID:{v22, v21}];
      }

      else
      {
        [v16 performTouchDownAtLocation:0 radius:0 timestamp:v18 pathIndex:v20 fingerID:{v22, v21}];
      }

      if (v10)
      {
        v10[2](v10, v15, &v39);
        if (v39 == 1)
        {
          break;
        }
      }

      v23 = [v8 samples];
      v24 = [v23 count];

      v25 = v13 + 1;
      v26 = v13 + 2;
      ++v13;
      if (v26 >= v24)
      {
        goto LABEL_12;
      }
    }

    v25 = v13;
  }

LABEL_12:
  v27 = v39;
  v28 = [v8 samples];
  v29 = v28;
  if (v27)
  {
    [v28 objectAtIndexedSubscript:v25];
  }

  else
  {
    [v28 lastObject];
  }
  v30 = ;

  v31 = [(TIKeyboardTyper *)self keyboardController];
  [v30 point];
  v33 = v32;
  v35 = v34;
  [v30 timeStamp];
  LODWORD(v36) = 5.0;
  v38 = [v31 performTouchUpAtLocation:0 radius:0 timestamp:0 pathIndex:v33 fingerID:v35 secondaryString:{v36, v37}];

  [v9 registerPathStringAsKeyStrokes:v38 path:v8 predictionBarState:0];
}

- (void)_performRejectCandidate:(id)a3 timestamp:(double)a4 typingLog:(id)a5
{
  v8 = a3;
  [a5 logRejectedAutocorrection];
  v9 = [(TIKeyboardTyper *)self keyboardController];
  [v9 rejectCandidate:v8];

  [(TIKeyboardTyper *)self setLastTimestamp:a4];
}

- (void)_performAcceptCandidate:(id)a3 timestamp:(double)a4 typingLog:(id)a5 predictiveCandidate:(BOOL)a6 intendedTransliteration:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [v14 candidate];
  [v13 logAcceptedCandidate:v15 intendedTransliterationCandidate:v12];

  v16 = [(TIKeyboardTyper *)self keyboardController];
  [v16 acceptCandidate:v14 predictiveCandidate:v7];

  [(TIKeyboardTyper *)self setLastTimestamp:a4];
  v17 = [(TIKeyboardTyper *)self keyboardController];
  [v17 generateAutocorrectionsOrCandidates];
}

- (id)_performGestureKeyInput:(id)a3 timestamp:(double)a4 typingLog:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v8 beginKeystrokeWithIntendedKey:v7 touchEvent:0 touchError:0];
  v9 = [(TIKeyboardTyper *)self keyboardController];
  [v9 addStringFromGestureKeyInput:v7];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v7];
  [v8 finishKeystrokeWithTouchedKey:v10 touchEvent:0 insertedKey:v7];

  return v7;
}

- (id)_performVariantKey:(id)a3 timestamp:(double)a4 typingLog:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v8 beginKeystrokeWithIntendedKey:v7 touchEvent:0 touchError:0];
  v9 = [(TIKeyboardTyper *)self keyboardController];
  [v9 addStringFromVariantKey:v7];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v7];
  [v8 finishKeystrokeWithTouchedKey:v10 touchEvent:0 insertedKey:v7];

  return v7;
}

- (void)_skipTapTimestamp:(double)a3 intendedKey:(id)a4 typingLog:(id)a5
{
  v8 = a5;
  v9 = a4;
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v16 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:0 radius:-1 timestamp:? pathIndex:? forcedKeyCode:?];
  v14 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:0 radius:-1 timestamp:v11 pathIndex:v13 forcedKeyCode:{5.0, a3}];
  v15 = [v9 representedString];

  [v8 beginKeystrokeWithIntendedKey:v15 touchEvent:v16 touchError:0];
  [(TIKeyboardTyper *)self setLastTimestamp:a3];
  [v8 finishKeystrokeWithTouchedKey:@"<NoKey>" touchEvent:v14 insertedKey:&stru_287EC4808];
}

- (id)_performTouchEvent:(id)a3 typingLog:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stage];
  [v6 location];
  v10 = v9;
  v12 = v11;
  [v6 radius];
  v14 = v13;
  [v6 timestamp];
  v16 = v15;
  v17 = [v6 pathIndex];
  v18 = [v6 fingerID];
  switch(v8)
  {
    case 2:
      v23 = [(TIKeyboardTyper *)self keyboardController];
      *&v24 = v14;
      v22 = [v23 performTouchUpAtLocation:v17 radius:v18 timestamp:0 pathIndex:v10 fingerID:v12 secondaryString:{v24, v16}];

      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v25 = [(TIKeyboardTyper *)self predictionBarCandidates];
      if ([(TIKeyboardTyper *)self maxPredictionsReported]>= 1)
      {
        v26 = 0;
        do
        {
          if ([v25 count] <= v26)
          {
            break;
          }

          v27 = [v25 objectAtIndexedSubscript:v26];
          v28 = [v27 candidate];
          [v19 addObject:v28];

          ++v26;
        }

        while (v26 < [(TIKeyboardTyper *)self maxPredictionsReported]);
      }

      [v7 registerPathStringAsKeyStrokes:v22 path:0 predictionBarState:v19];

      goto LABEL_12;
    case 1:
      v19 = [(TIKeyboardTyper *)self keyboardController];
      *&v21 = v14;
      [v19 performTouchDragAtLocation:v17 radius:v18 timestamp:v10 pathIndex:v12 fingerID:{v21, v16}];
      goto LABEL_6;
    case 0:
      v19 = [(TIKeyboardTyper *)self keyboardController];
      *&v20 = v14;
      [v19 performTouchDownAtLocation:v17 radius:v18 timestamp:v10 pathIndex:v12 fingerID:{v20, v16}];
LABEL_6:
      v22 = &stru_287EC4808;
LABEL_12:

      goto LABEL_14;
  }

  v22 = &stru_287EC4808;
LABEL_14:
  [v6 timestamp];
  [(TIKeyboardTyper *)self setLastTimestamp:?];

  return v22;
}

- (id)_performTapAtLocation:(CGPoint)a3 timestamp:(double)a4 intendedKey:(id)a5 touchedKey:(id)a6 secondaryString:(BOOL)a7 touchError:(id)a8 typingLog:(id)a9
{
  v11 = a7;
  y = a3.y;
  x = a3.x;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (v11)
  {
    v21 = [v17 secondaryRepresentedStrings];
    v22 = [v21 firstObject];
  }

  else
  {
    v22 = [v17 representedString];
  }

  v23 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:0 radius:-1 timestamp:x pathIndex:y forcedKeyCode:{5.0, a4}];
  v47 = [v22 isEqualToString:@"Delete"];
  v24 = [(TIKeyboardTyper *)self text];
  v48 = v19;
  [v20 beginKeystrokeWithIntendedKey:v22 touchEvent:v23 touchError:v19 documentBefore:v24];

  v25 = [(TIKeyboardTyper *)self keyboardController];
  v26 = [v25 leftKeys];
  v27 = [v26 containsObject:v17];

  if (v27)
  {
    v28 = 3;
  }

  else
  {
    v29 = [(TIKeyboardTyper *)self keyboardController];
    v30 = [v29 rightKeys];
    v31 = [v30 containsObject:v17];

    if (v31)
    {
      v28 = 9;
    }

    else
    {
      v28 = 0;
    }
  }

  if ([v18 interactionType] == 11)
  {
    v32 = [(TIKeyboardTyper *)self keyboardController];
    v33 = [(TIKeyboardTyper *)self keyplane];
    v34 = [v32 keyCodeWithString:@"More" inKeyplane:v33];

    [(TIKeyboardTyper *)self lastTimestamp];
    v36 = v35;
    [(TIKeyboardTyper *)self interTouchTimestampInterval];
    v38 = v36 + v37;
    v39 = [(TIKeyboardTyper *)self keyboardController];
    LODWORD(v40) = 5.0;
    v41 = [v39 performSkipTapAtLocation:0 radius:v28 timestamp:v34 pathIndex:x fingerID:y forcedKeyCode:{v40, v38}];

    v42 = [(TIKeyboardTyper *)self userPersona];
    v43 = [(TIKeyboardTyper *)self keyboardController];
    v44 = [v43 keyplane];
    [v42 updateFromKeyplane:v44];
  }

  else
  {
    v41 = [(TIKeyboardTyper *)self _performTapAtLocation:v28 timestamp:v11 fingerID:x secondaryString:y, a4];
  }

  if (!v41)
  {
    v41 = &stru_287EC4808;
  }

  if (!(v47 & 1 | (([(__CFString *)v41 isEqualToString:@"\\b"]& 1) == 0)))
  {

    v41 = @"\\B";
  }

  [(TIKeyboardTyper *)self setLastTimestamp:a4];
  v45 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:0 radius:-1 timestamp:x pathIndex:y forcedKeyCode:{5.0, a4}];
  [(TIKeyboardTyper *)self _finishKeystrokeAndRecordPredictionsInTypingLog:v45 touchedKey:v18 insertedKey:v41 typingLog:v20];

  return v41;
}

- (void)_finishKeystrokeAndRecordPredictionsInTypingLog:(id)a3 touchedKey:(id)a4 insertedKey:(id)a5 typingLog:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v10 = a4;
  v11 = a5;
  v29 = a6;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = [(TIKeyboardTyper *)self predictionBarCandidates];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v35 + 1) + 8 * v18) candidate];
        [v12 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [(TIKeyboardTyper *)self inlineCompletionCandidates];
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
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

        v25 = [*(*(&v31 + 1) + 8 * v24) candidate];
        [v13 addObject:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  if (v10)
  {
    v26 = [(TIKeyboardTyper *)self _logStringForTouchedKey:v10];
  }

  else
  {
    v26 = v11;
  }

  v27 = v26;
  v28 = v29;
  [v29 finishKeystrokeWithTouchedKey:v26 touchEvent:v30 insertedKey:v11 predictionBarState:v12 inlineCompletionBarState:{v13, v29}];
}

- (id)keyContainingPoint:(CGPoint)a3 inKeyplane:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TIKeyboardTyper *)self keyboardController];
  v9 = [v8 keyContainingPoint:v7 inKeyplane:{x, y}];

  return v9;
}

- (CGPoint)pointForAttemptedTapOnKey:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 paddedFrame];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MidY = CGRectGetMidY(v38);
  v14 = [(TIKeyboardTyper *)self userPersona];

  if (v14)
  {
    v15 = [(TIKeyboardTyper *)self userPersona];
    [v15 userPointForKey:v7];
    MidX = v16;
    MidY = v17;
  }

  else
  {
    v18 = [(TIKeyboardTyper *)self keyboardController];
    v19 = [v18 layoutUtils];
    v20 = [(TIKeyboardTyper *)self keyplane];
    v15 = [v19 representedStringForKey:v7 shifted:{objc_msgSend(v20, "isShiftKeyplane")}];

    if (v6 && ([v15 isEqualToString:@"\n"] & 1) == 0)
    {
      [v6 applyToPoint:{MidX, MidY}];
      MidX = v21;
      MidY = v22;
    }

    v23 = [(TIKeyboardTyper *)self keyboard];
    v24 = [v23 name];
    v25 = [v24 hasPrefix:@"Dynamic"];

    if ((v25 & 1) == 0)
    {
      if (MidX < 0.0)
      {
        MidX = 0.0;
      }

      if (MidY < 0.0)
      {
        MidY = 0.0;
      }

      v26 = [(TIKeyboardTyper *)self keyboard];
      [v26 frame];
      v28 = v27;

      if (MidX > v28)
      {
        v29 = [(TIKeyboardTyper *)self keyboard];
        [v29 frame];
        MidX = CGRectGetMaxX(v39);
      }

      v30 = [(TIKeyboardTyper *)self keyboard];
      [v30 frame];
      v32 = v31;

      if (MidY > v32)
      {
        v33 = [(TIKeyboardTyper *)self keyboard];
        [v33 frame];
        MidY = CGRectGetMaxY(v40);
      }
    }
  }

  v34 = MidX;
  v35 = MidY;
  result.y = v35;
  result.x = v34;
  return result;
}

- (id)_keyplaneCloserToKeyWithString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyplane];
  v6 = [v5 componentName];
  v7 = [v6 lowercaseString];

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:v7 forKey:v7];
  v9 = [MEMORY[0x277CBEB18] arrayWithObjects:{v7, 0}];
  while ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    [v9 removeObjectAtIndex:0];
    v11 = [(TIKeyboardTyper *)self keyboard];
    v12 = [v11 subtreeWithName:v10];

    v13 = [(TIKeyboardTyper *)self keyWithString:v4 inKeyplane:v12];

    if (v13)
    {
      v14 = v10;
      v15 = v14;
      do
      {
        v16 = v14;
        v14 = v15;

        v15 = [v8 valueForKey:v14];
      }

      while (![v15 isEqualToString:v7]);
      v17 = [(TIKeyboardTyper *)self keyboard];
      v18 = [v17 subtreeWithName:v14];
    }

    else
    {
      v19 = [(TIKeyboardTyper *)self keyboardController];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__TIKeyboardTyper__keyplaneCloserToKeyWithString___block_invoke;
      v21[3] = &unk_279DA0BF0;
      v22 = v8;
      v14 = v10;
      v23 = v14;
      v24 = v9;
      [v19 enumerateKeyplaneNamesAdjacentToKeyplane:v12 usingBlock:v21];

      v18 = 0;
      v15 = v22;
    }

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

void __50__TIKeyboardTyper__keyplaneCloserToKeyWithString___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForKey:?];

  if (!v3)
  {
    [*(a1 + 32) setValue:*(a1 + 40) forKey:v4];
    [*(a1 + 48) addObject:v4];
  }
}

- (BOOL)changeToNearestAlphabeticPlane
{
  v3 = [(TIKeyboardTyper *)self keyplane];
  v4 = [v3 isAlphabeticPlane];

  if ((v4 & 1) == 0)
  {
    v5 = [(TIKeyboardTyper *)self keyboard];
    v6 = [(TIKeyboardTyper *)self keyplane];
    v7 = [v6 alternateKeyplaneName];
    v8 = [v5 subtreeWithName:v7];

    if ([v8 isAlphabeticPlane])
    {
      [(TIKeyboardTyper *)self attemptToTapMoreKey];
    }
  }

  v9 = [(TIKeyboardTyper *)self keyplane];
  v10 = [v9 isAlphabeticPlane];

  return v10;
}

- (BOOL)changeToNearestKeyplaneWithString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyplane];
  v6 = [(TIKeyboardTyper *)self keyWithString:v4 inKeyplane:v5];
  if (v6)
  {
    v7 = v6;
LABEL_7:
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = v8;
      v8 = [(TIKeyboardTyper *)self keyToAccessKeyplaneCloserToKeyString:v4];

      if (!v8)
      {
        break;
      }

      v10 = [v8 representedString];
      [(TIKeyboardTyper *)self attemptTapOnKeyWithString:v10 withErrorGenerator:0 typingLog:0];

      v5 = [(TIKeyboardTyper *)self keyplane];
      v11 = [(TIKeyboardTyper *)self keyWithString:v4 inKeyplane:v5];
      if (v11)
      {
        v7 = v11;

        goto LABEL_7;
      }
    }
  }

  v12 = [(TIKeyboardTyper *)self keyplane];
  v13 = [(TIKeyboardTyper *)self keyWithString:v4 inKeyplane:v12];
  v14 = v13 != 0;

  return v14;
}

- (id)keyToAccessKeyplaneCloserToKeyString:(id)a3
{
  v4 = [(TIKeyboardTyper *)self _keyplaneCloserToKeyWithString:a3];
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [(TIKeyboardTyper *)self keyplane];
  v7 = [v5 keyToAccessKeyplane:v4 fromKeyplane:v6];

  return v7;
}

- (id)shiftKeyToAccessKeyplaneCloserToKeyString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyplane];
  if (![v5 isAlphabeticPlane])
  {
    goto LABEL_6;
  }

  v6 = [(TIKeyboardTyper *)self keyplane];
  v7 = [v6 isShiftKeyplane];

  if (v7)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v9 = [(TIKeyboardTyper *)self keyboardController];
  v10 = [v9 layoutUtils];
  v11 = [(TIKeyboardTyper *)self keyplane];
  v5 = [v10 exactKeyForString:v4 keyplane:v11 includeSecondaryStrings:1];

  if (v5)
  {
    v12 = [(TIKeyboardTyper *)self keyboardController];
    v13 = [v12 keyplane];
    v8 = [v13 firstCachedKeyWithName:@"Shift-Key"];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)keyWithString:(id)a3 inKeyplane:(id)a4 includeSecondaryStrings:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(TIKeyboardTyper *)self keyboardController];
  v11 = [v10 layoutUtils];
  v12 = [v11 exactKeyForString:v9 keyplane:v8 includeSecondaryStrings:v5];

  return v12;
}

- (id)keyWithString:(id)a3 inKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardTyper *)self keyboardController];
  v9 = [v8 layoutUtils];
  v10 = [v9 exactKeyForString:v6 keyplane:v7 includeSecondaryStrings:0];

  v11 = [(TIKeyboardTyper *)self keyboardController];
  v12 = [v11 keyboard];
  v13 = [v12 name];
  v14 = [v13 containsString:@"-With-"];

  if (!v10 && v14)
  {
    v15 = [(TIKeyboardTyper *)self keyboardController];
    v16 = [v15 layoutUtils];
    v10 = [v16 exactKeyForString:v6 keyplane:v7 includeSecondaryStrings:1];
  }

  return v10;
}

- (UIKBTree)keyplane
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 keyplane];

  return v3;
}

- (UIKBTree)keyboard
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 keyboard];

  return v3;
}

- (id)performTouchUpAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7 secondaryString:(BOOL)a8
{
  v8 = a8;
  v9 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v16 = [(TIKeyboardTyper *)self keyboardController];
  *&v17 = a4;
  v18 = [v16 performTouchUpAtLocation:a6 radius:v9 timestamp:v8 pathIndex:x fingerID:y secondaryString:{v17, a5}];

  return v18;
}

- (void)performTouchEndRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v15 = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = a4;
  [v15 performTouchEndRestAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:{v14, a5}];
}

- (void)performTouchRestAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v15 = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = a4;
  [v15 performTouchRestAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:{v14, a5}];
}

- (void)performTouchCancelAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v15 = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = a4;
  [v15 performTouchCancelAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:{v14, a5}];
}

- (int64_t)performTouchDragAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v14 = [(TIKeyboardTyper *)self keyboardController];
  *&v15 = a4;
  v16 = [v14 performTouchDragAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:{v15, a5}];

  return v16;
}

- (int64_t)performTouchDownAtLocation:(CGPoint)a3 radius:(float)a4 timestamp:(double)a5 pathIndex:(unint64_t)a6 fingerID:(int)a7
{
  v7 = *&a7;
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self setLastTimestamp:a5];
  v14 = [(TIKeyboardTyper *)self keyboardController];
  *&v15 = a4;
  v16 = [v14 performTouchDownAtLocation:a6 radius:v7 timestamp:x pathIndex:y fingerID:{v15, a5}];

  return v16;
}

- (TIKeyboardCandidateResultSet)candidateResultSet
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 candidateResultSet];

  return v3;
}

- (NSArray)inlineCompletionCandidates
{
  v2 = [(TIKeyboardTyper *)self autocorrectionList];
  v3 = [v2 inlineCompletions];

  return v3;
}

- (id)predictationBarDebugString
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(TIKeyboardTyper *)self predictionBarCandidates];
  if ([v3 count] && -[TIKeyboardTyper showsCandidateBar](self, "showsCandidateBar"))
  {
    v4 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      v8 = 0x277D6F000uLL;
      v9 = &stru_287EC4808;
      do
      {
        v10 = 0;
        v28 = v6;
        do
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          objc_opt_class();
          v12 = v9;
          if (objc_opt_isKindOfClass())
          {
            v13 = v11;
            v14 = [v13 lexiconLocale];

            if (v14)
            {
              v15 = MEMORY[0x277CCACA8];
              [v13 lexiconLocale];
              v16 = v7;
              v17 = v4;
              v18 = v9;
              v20 = v19 = v8;
              v21 = [v20 substringToIndex:2];
              v12 = [v15 stringWithFormat:@" (%@)", v21];

              v8 = v19;
              v9 = v18;
              v4 = v17;
              v7 = v16;
              v6 = v28;
            }

            else
            {
              v12 = v9;
            }
          }

          v22 = [v11 candidate];
          v23 = [v22 stringByAppendingString:v12];
          [v4 addObject:v23];

          ++v10;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v6);
    }

    v24 = [v4 componentsJoinedByString:@"\t"];
    v25 = [v24 stringByAppendingString:@"\n"];

    v3 = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (NSArray)predictionBarCandidates
{
  v3 = [(TIKeyboardTyper *)self candidateBarCandidates];
  if (v3)
  {
    if ([(TIKeyboardTyper *)self inPartialCandidateSelection])
    {
      v4 = [v3 count];
    }

    else
    {
      v4 = [(TIKeyboardTyper *)self maxPredictions];
    }

    v10 = v4;
    v11 = [v3 count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v5 = [v3 subarrayWithRange:{0, v12}];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TIKeyboardTyper maxPredictions](self, "maxPredictions")}];
    v6 = [(TIKeyboardTyper *)self autocorrection];
    v7 = [(TIKeyboardTyper *)self autocorrection];
    v8 = [v7 isAutocorrection];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v13 = [v6 input];
      v9 = [v13 length] != 0;
    }

    objc_opt_class();
    v62 = v6;
    if (objc_opt_isKindOfClass())
    {
      v14 = [(TIKeyboardTyper *)self locale];
      v15 = [v14 languageCode];
      if ([v15 isEqualToString:@"ko"])
      {
        v59 = 0;
      }

      else
      {
        v16 = [(TIKeyboardTyper *)self locale];
        v17 = [v16 languageCode];
        v59 = [v17 isEqualToString:@"th"] ^ 1;

        v6 = v62;
      }
    }

    else
    {
      v59 = 0;
    }

    v18 = [(TIKeyboardTyper *)self autocorrectionList];
    v19 = [v18 predictions];

    if ([v19 count])
    {
      v20 = [v19 objectAtIndex:0];
      v21 = [v20 isContinuousPathConversion];
      v9 &= v21 ^ 1;
      v8 &= v21 ^ 1;
    }

    v22 = [(TIKeyboardTyper *)self maxPredictions];
    v23 = v22;
    v24 = v9 & (v22 != 0);
    v63 = v8;
    if (v22 == v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v8;
    }

    v61 = v22 - v24;
    v26 = v22 - v24 - v25;
    v27 = [(TIKeyboardTyper *)self autocorrectionList];
    v28 = [v27 emojiList];

    v29 = [v28 count];
    if (v26 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v26;
    }

    v60 = v30;
    v31 = v30 == 0;
    v32 = v30 != 0;
    if (v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = -1;
    }

    v57 = v33;
    v58 = v29;
    v34 = v26 - v32;
    v35 = [v19 count];
    v36 = v9;
    v37 = v35;
    if (v34 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v34;
    }

    if (v36)
    {
      v39 = MEMORY[0x277D6F3D8];
      v40 = [v6 input];
      v41 = [v39 candidateWithUnchangedInput:v40];

      v6 = v62;
      [v5 addObject:v41];
    }

    if ((v63 | v59))
    {
      [v5 addObject:v6];
    }

    if (v38)
    {
      v42 = 0;
      if (v61)
      {
        v43 = v63;
      }

      else
      {
        v43 = 0;
      }

      if (v37 >= v23 + v57 + (v24 << 63 >> 63) - v43)
      {
        v44 = v23 + v57 + (v24 << 63 >> 63) - v43;
      }

      else
      {
        v44 = v37;
      }

      do
      {
        v45 = [v19 objectAtIndex:v42];
        v46 = v45;
        if (v45 && [v45 slotID])
        {
          v47 = [MEMORY[0x277D6FE30] sharedInstance];
          v48 = [v47 secureCandidateRenderer];

          if (v48)
          {
            v49 = [v48 cachedCandidateForSecureCandidate:v46];
          }

          else
          {
            v49 = v46;
          }

          v50 = v49;
          [v5 addObject:v49];
        }

        else
        {
          [v5 addObject:v46];
        }

        ++v42;
      }

      while (v44 != v42);
    }

    if (v60)
    {
      v51 = 0;
      if (v61)
      {
        v52 = v63;
      }

      else
      {
        v52 = 0;
      }

      v53 = v61 - v52;
      if (v58 >= v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = v58;
      }

      do
      {
        v55 = [v28 objectAtIndex:v51];
        [v5 addObject:v55];

        ++v51;
      }

      while (v54 != v51);
    }
  }

  return v5;
}

- (id)candidateBarCandidates
{
  v2 = [(TIKeyboardTyper *)self candidateResultSet];
  v3 = [v2 candidates];

  return v3;
}

- (TIKeyboardCandidate)autocorrection
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 autocorrection];

  return v3;
}

- (void)acceptCandidateViaKeyboard:(id)a3
{
  v4 = a3;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:v4 timestamp:0 typingLog:?];

  v9 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v9 setString:@"\n"];
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 inputManager];
  v7 = [v6 handleKeyboardInput:v9];

  v8 = [(TIKeyboardTyper *)self keyboardController];
  [v8 generateAutocorrectionsOrCandidates];
}

- (void)acceptCandidate:(id)a3
{
  v4 = a3;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:v4 timestamp:0 typingLog:?];
}

- (void)acceptPredictiveCandidate:(id)a3
{
  v4 = a3;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptPredictiveCandidate:v4 timestamp:0 typingLog:?];
}

- (void)registerLearning:(id)a3 fullCandidate:(id)a4 mode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [(TIKeyboardTyper *)self inputManager];
  v11 = [(TIKeyboardTyper *)self keyboardController];
  v12 = [v11 keyboardState];
  [v13 registerLearning:v10 fullCandidate:v9 keyboardState:v12 mode:v8];
}

- (void)candidateRejected:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self inputManager];
  [v5 candidateRejected:v4];
}

- (void)rejectAutocorrection
{
  v3 = [(TIKeyboardTyper *)self autocorrection];
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performRejectCandidate:v3 timestamp:0 typingLog:?];
}

- (void)acceptAutocorrection
{
  v3 = [(TIKeyboardTyper *)self autocorrection];
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:v3 timestamp:0 typingLog:?];
}

- (void)attemptToRapidDeleteCharacters:(unsigned int)a3
{
  if (a3)
  {
    [(TIKeyboardTyper *)self attemptToDelete];
    v5 = a3 - 1;
    if (a3 != 1)
    {
      while (1)
      {
        v6 = [(TIKeyboardTyper *)self inputManager];
        v7 = [v6 keyboardState];
        v13 = [v7 documentState];

        v8 = [v13 contextBeforeInput];
        if (![v8 length])
        {
          break;
        }

        v9 = MEMORY[0x277D6F350];
        v10 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];
        v11 = [v13 contextAfterInput];
        v12 = [v9 documentStateWithContextBefore:v10 selectedText:&stru_287EC4808 contextAfter:v11];

        [(TIKeyboardTyper *)self syncToDocumentState:v12];
        if (!--v5)
        {
          return;
        }
      }
    }
  }
}

- (void)attemptToDeleteWithCount:(unsigned int)a3
{
  if (a3)
  {
    v3 = a3;
    do
    {
      [(TIKeyboardTyper *)self attemptTapOnKeyWithString:@"Delete" withErrorGenerator:0 typingLog:0];
      --v3;
    }

    while (v3);
  }
}

- (id)performTapAtKey:(id)a3 biasedTowards:(id)a4 biasWeight:(float)a5
{
  v8 = a4;
  v9 = a3;
  [(TIKeyboardTyper *)self lastTimestamp];
  v11 = v10;
  [(TIKeyboardTyper *)self interTouchTimestampInterval];
  v13 = v12;
  v14 = [(TIKeyboardTyper *)self keyboardController];
  v15 = [v14 keyplane];

  v16 = [(TIKeyboardTyper *)self keyWithString:v9 inKeyplane:v15];

  [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v16 withError:0];
  v18 = v17;
  v20 = v19;
  v21 = [(TIKeyboardTyper *)self keyWithString:v8 inKeyplane:v15];

  [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v21 withError:0];
  v23 = v22;
  v25 = v24;
  v26 = [(TIKeyboardTyper *)self keyboardController];
  v27 = [v26 leftKeys];
  v28 = [v27 containsObject:v16];

  if (v28)
  {
    v29 = 3;
  }

  else
  {
    v30 = [(TIKeyboardTyper *)self keyboardController];
    v31 = [v30 rightKeys];
    v32 = [v31 containsObject:v16];

    if (v32)
    {
      v29 = 9;
    }

    else
    {
      v29 = 0;
    }
  }

  v33 = a5;
  v34 = v20 + a5 * (v25 - v20);
  v35 = v18 + v33 * (v23 - v18);
  v36 = v11 + v13;
  v37 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v38) = 5.0;
  [v37 performTouchDownAtLocation:0 radius:v29 timestamp:v35 pathIndex:v34 fingerID:{v38, v36}];

  v39 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v40) = 5.0;
  v41 = [v39 performTouchUpAtLocation:0 radius:v29 timestamp:0 pathIndex:v35 fingerID:v34 secondaryString:{v40, v36}];

  [(TIKeyboardTyper *)self setLastTimestamp:v36];

  return v41;
}

- (id)performTapAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TIKeyboardTyper *)self lastTimestamp];
  v7 = v6;
  [(TIKeyboardTyper *)self interTouchTimestampInterval];
  v9 = v7 + v8;
  v10 = [(TIKeyboardTyper *)self _performTapAtLocation:0 timestamp:0 fingerID:x secondaryString:y, v9];
  [(TIKeyboardTyper *)self setLastTimestamp:v9];

  return v10;
}

- (void)attemptTapOnKeyWithString:(id)a3 withErrorGenerator:(id)a4 typingLog:(id)a5
{
  v24 = a5;
  v7 = a3;
  v8 = [(TIKeyboardTyper *)self keyplane];
  v9 = [(TIKeyboardTyper *)self keyWithString:v7 inKeyplane:v8];

  if (v9)
  {
    [(TIKeyboardTyper *)self lastTimestamp];
    v11 = v10;
    [(TIKeyboardTyper *)self interTouchTimestampInterval];
    v13 = v11 + v12;
    v14 = [(TIKeyboardTyper *)self errorGenerator];
    v15 = [v9 representedString];
    [v9 paddedFrame];
    v16 = [v14 errorForKeyString:v15 rect:?];

    [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v9 withError:v16];
    v18 = v17;
    v20 = v19;
    v21 = [(TIKeyboardTyper *)self keyplane];
    v22 = [(TIKeyboardTyper *)self keyContainingPoint:v21 inKeyplane:v18, v20];

    if (v22)
    {
      v23 = [(TIKeyboardTyper *)self _performTapAtLocation:v9 timestamp:v22 intendedKey:0 touchedKey:v16 secondaryString:v24 touchError:v18 typingLog:v20, v13];
    }

    else
    {
      [(TIKeyboardTyper *)self _skipTapTimestamp:v9 intendedKey:v24 typingLog:v13];
    }

    [(TIKeyboardTyper *)self setLastTimestamp:v13];
  }
}

- (void)attemptTapOnKeyWithString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self errorGenerator];
  [(TIKeyboardTyper *)self attemptTapOnKeyWithString:v4 withErrorGenerator:v5 typingLog:0];
}

- (void)attemptToStrokeWord:(id)a3 startTime:(double)a4 duration:(double)a5 typingLog:(id)a6 callback:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [v14 substringWithRange:{0, 1}];
  [(TIKeyboardTyper *)self changeToNearestKeyplaneWithString:v15];

  v21 = [TTKDefaultContinuousPathGenerator pathGeneratorWithAttributes:MEMORY[0x277CBEC10]];
  v16 = [(TIKeyboardTyper *)self keyboardController];
  v17 = [v16 layoutUtils];
  v18 = [(TIKeyboardTyper *)self keyplane];
  v19 = [v17 createTTKPlane:v18];

  v20 = [v21 generatePathFromString:v14 timestamp:v19 duration:a4 layout:a5];

  [(TIKeyboardTyper *)self performStrokeForPath:v20 typingLog:v13 callback:v12];
}

- (void)attemptToTapKeys:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(TIKeyboardTyper *)self errorGenerator];
        [(TIKeyboardTyper *)self attemptTapOnKeyWithString:v9 withErrorGenerator:v10 typingLog:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)attemptToTypeIntended:(id)a3 expected:(id)a4 typingLog:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 componentsJoinedByString:&stru_287EC4808];
  v11 = [v18 componentsJoinedByString:&stru_287EC4808];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"----->> %@ -> %@", v10, v11];
  v13 = TIPrintTypingTranscriptToStdout();
  v14 = MEMORY[0x277D85E08];
  if ((v13 & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
  {
    fprintf(*v14, "%s\n", [v12 UTF8String]);
  }

  v15 = [(TIKeyboardTyper *)self userActionStream];
  [v15 resetForIntendedSegments:v9 expectedSegments:v18];

  [(TIKeyboardTyper *)self attemptToTypeWithLog:v8];
  if ([(TIKeyboardTyper *)self printTranslitSummaries])
  {
    fprintf(*v14, "input   : %s\n", [v10 UTF8String]);
    fprintf(*v14, "expected: %s\n", [v11 UTF8String]);
    v16 = *v14;
    v17 = [(TIKeyboardTyper *)self text];
    fprintf(v16, "actual  : %s\n\n", [v17 UTF8String]);
  }
}

- (void)attemptToTypeText:(id)a3 typingLog:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(TIKeyboardTyper *)self userActionStream];
  [v7 setIntendedText:v8];

  if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
  {
    fprintf(*MEMORY[0x277D85E08], "----->> %s\n", [v8 UTF8String]);
  }

  [(TIKeyboardTyper *)self attemptToTypeWithLog:v6];
}

- (void)attemptToTypeWithLog:(id)a3
{
  v34 = a3;
  if ((TILogProblemSentencesToStdout() & 1) != 0 || ([(TIKeyboardTyper *)self badSentenceLogFilePath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [TIProgressTracker alloc];
    v6 = [(TIKeyboardTyper *)self userActionStream];
    v7 = [v6 intendedText];
    v8 = [(TIKeyboardTyper *)self badSentenceLogFilePath];
    v4 = [(TIProgressTracker *)v5 initWithIntendedString:v7 repeatLimit:4 timeout:v8 badSentencePath:1500.0];
  }

  v9 = 0;
  v10 = MEMORY[0x277D85E08];
  do
  {
    v11 = v9;
    v12 = [(TIKeyboardTyper *)self userActionStream];
    v9 = [v12 nextUserAction];

    if (!v9)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    [v34 setTokenIndex:{objc_msgSend(v9, "inputSegment")}];
    if ([(TIKeyboardTyper *)self warnIfSelectingPopupVariant])
    {
      NSClassFromString(&cfstr_Actselectpopup.isa);
      if (objc_opt_isKindOfClass())
      {
        v14 = *MEMORY[0x277D85DF8];
        v15 = [v9 description];
        fprintf(v14, "WARNING! Typer is selecting a pop-up key variant: %s. This may indicate a keyboard layout mis-configuration.\n", [v15 UTF8String]);
      }
    }

    v16 = [(TIKeyboardTyper *)self predictationBarDebugString];
    if (v16 && ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript]))
    {
      fputs([v16 UTF8String], *v10);
    }

    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      v17 = *v10;
      v18 = [v9 shortDescription];
      v19 = [v9 shortDescription];
      v20 = [v19 length] - 1;

      if (v20 >= 0x2D)
      {
        v21 = 45;
      }

      else
      {
        v21 = v20;
      }

      v22 = [v18 substringToIndex:v21];
      fprintf(v17, "%-45s\t", [v22 UTF8String]);
    }

    [v9 applyWithTyper:self log:v34];
    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      v23 = *v10;
      v24 = [(TIKeyboardTyper *)self text];
      fprintf(v23, ">>> %s", [v24 UTF8String]);
    }

    v25 = [(TIKeyboardTyper *)self keyboardController];
    v26 = [v25 justAcceptedAutocorrection];

    if (v26)
    {
      if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
      {
        fwrite("\t\t\t<autocorrect>", 0x10uLL, 1uLL, *v10);
      }

      v27 = [(TIKeyboardTyper *)self keyboardController];
      [v27 setJustAcceptedAutocorrection:0];

      [v34 logAutocorrectionInserted];
    }

    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      fputc(10, *v10);
    }

    v28 = MEMORY[0x277CCACA8];
    v29 = [(TIKeyboardTyper *)self text];
    v30 = [v28 stringWithString:v29];
    v31 = [(TIProgressTracker *)v4 shouldStopAfterAddingStateString:v30];

    objc_autoreleasePoolPop(v13);
  }

  while (!v31);
  if ([(TIProgressTracker *)v4 stoppageReason]== 3)
  {
    [(TIProgressTracker *)v4 saveBadSentenceAndTranscript:[(TIProgressTracker *)v4 stoppageReason]];
  }

  if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
  {
    v32 = *v10;
    v33 = [(TIKeyboardTyper *)self text];
    fprintf(v32, "%-45s\t>>> %s。\t\t END\n\n", " ", [v33 UTF8String]);
  }
}

- (void)suspendAndResume
{
  v3 = [(TIKeyboardTyper *)self inputManager];
  [v3 suspend];

  v4 = [(TIKeyboardTyper *)self inputManager];
  [v4 resume];
}

- (void)syncToEmptyDocument
{
  v3 = [objc_alloc(MEMORY[0x277D6F350]) initWithContextBefore:&stru_287EC4808 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
  [(TIKeyboardTyper *)self syncToDocumentState:v3];
}

- (void)syncToDocumentState:(id)a3
{
  v4 = a3;
  [(TIKeyboardTyper *)self setLastTimestamp:0.0];
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 syncToDocumentState:v4];
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  [(TIKeyboardTyper *)self setLastTimestamp:0.0];
  v4 = [(TIKeyboardTyper *)self userActionStream];
  [v4 setIntendedText:&stru_287EC4808];

  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 reset];

  v6 = [(TIKeyboardTyper *)self userPersona];
  v7 = [(TIKeyboardTyper *)self keyboardController];
  v8 = [v7 keyplane];
  [v6 updateFromKeyplane:v8];

  objc_autoreleasePoolPop(v3);
}

- (void)setLastInputWasSelection:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setLastInputWasSelection:v3];
}

- (BOOL)lastInputWasSelection
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 lastInputWasSelection];

  return v3;
}

- (void)setErrorGenerator:(id)a3
{
  v5 = a3;
  v4 = [(TIKeyboardTyper *)self userActionStream];
  [v4 setErrorGenerator:v5];

  [v5 setKeyboardInfoDelgate:self->_keyboardController];
}

- (TIErrorGenerator)errorGenerator
{
  v2 = [(TIKeyboardTyper *)self userActionStream];
  v3 = [v2 errorGenerator];

  return v3;
}

- (void)setUserModel:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self userActionStream];
  [v5 setUserModel:v4];
}

- (TIKeyboardTyperUserModel)userModel
{
  v2 = [(TIKeyboardTyper *)self userActionStream];
  v3 = [v2 userModel];

  return v3;
}

- (void)linkWithUserActionStream:(id)a3
{
  v5 = a3;
  userActionStream = self->_userActionStream;
  if (userActionStream != v5)
  {
    [(ACTUserActionStreaming *)userActionStream setDelegate:0];
    objc_storeStrong(&self->_userActionStream, a3);
    [(ACTUserActionStreaming *)self->_userActionStream setDelegate:self];
    keyboardController = self->_keyboardController;
    v8 = [(ACTUserActionStreaming *)self->_userActionStream errorGenerator];
    [v8 setKeyboardInfoDelgate:keyboardController];
  }

  MEMORY[0x2821F96F8]();
}

- (void)tearDown
{
  v3 = [(TIKeyboardTyper *)self keyboardController];
  [v3 tearDown];

  keyboardController = self->_keyboardController;
  self->_keyboardController = 0;
}

- (void)dealloc
{
  v3 = [(TIKeyboardTyper *)self inputManager];
  [v3 suspend];

  v4.receiver = self;
  v4.super_class = TIKeyboardTyper;
  [(TIKeyboardTyper *)&v4 dealloc];
}

- (TIKeyboardTyper)initWithInputMode:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = TIKeyboardTyper;
  v6 = [(TIKeyboardTyper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputMode, a3);
    v8 = [[ACTKeyboardController alloc] initWithInputMode:v5];
    keyboardController = v7->_keyboardController;
    v7->_keyboardController = v8;

    v10 = [v5 locale];
    v11 = [v10 copy];
    locale = v7->_locale;
    v7->_locale = v11;

    v7->_maxPredictions = 3;
    v7->_touchPathID = 1;
    v13 = [ACTUserActionStreamFactory userActionStreamWithParameters:&unk_287ED4BD8 delegate:v7];
    userActionStream = v7->_userActionStream;
    v7->_userActionStream = v13;

    [(ACTUserActionStreaming *)v7->_userActionStream setDelegate:v7];
    [(TIKeyboardTyper *)v7 setClientIdentifier:@"testTyper"];
  }

  return v7;
}

- (void)attemptToTapPredictionWithLiteral:(id)a3
{
  v4 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:a3];
  [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v4];
}

- (BOOL)attemptToTapAutocorrectionWithString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self autocorrection];
  v6 = [(TIKeyboardTyper *)self autocorrection];
  v7 = [v6 isAutocorrection];

  if (v7 && ([v5 candidate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v4), v8, v9))
  {
    [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v5];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)attemptToTapPredictionBarCandidateWithString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(TIKeyboardTyper *)self predictionBarCandidates];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 candidate];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v10];
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)attemptToTapPredictionWithString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(TIKeyboardTyper *)self predictions];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 candidate];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v10];
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)acceptCandidateFromPredictionBar:(id)a3
{
  v4 = MEMORY[0x277D6F3E8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setString:@" "];
  [v6 setAcceptedCandidate:v5];

  [v6 setSynthesizedByAcceptingCandidate:1];
  [(TIKeyboardTyper *)self acceptCandidateInputEvent:v6 fromCandidateBar:1];
}

- (void)acceptCandidateInputEvent:(id)a3 fromCandidateBar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TIKeyboardTyper *)self keyboardController];
  [v7 acceptCandidateInputEvent:v6 fromCandidateBar:v4];
}

- (BOOL)hasPrediction:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 hasPrediction:v4];

  return v6;
}

- (id)candidatesForString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 candidatesForString:v4];

  return v6;
}

- (void)generateAutocorrectionsWithShiftState:(int)a3
{
  v3 = *&a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 generateAutocorrectionsWithShiftState:v3];
}

- (void)generateCandidates
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  [v2 generateAutocorrectionsOrCandidates];
}

- (void)setAutocorrectionList:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setAutocorrectionList:v4];
}

- (TIAutocorrectionList)autocorrectionList
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 autocorrectionList];

  return v3;
}

- (NSArray)predictions
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 predictions];

  return v3;
}

- (id)displayStringOverrideForKey:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  v6 = [v5 displayStringOverrideForKey:v4];

  return v6;
}

- (unint64_t)cursorLocationInMarkedText
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 selectedRangeInMarkedText];

  return v5;
}

- (void)adjustPhraseBoundaryByOffset:(int64_t)a3 granularity:(int)a4
{
  if (a3)
  {
    v4 = *&a4;
    if (a3 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = -a3;
    }

    v7 = a3 >> 63;
    do
    {
      [(TIKeyboardTyper *)self adjustPhraseBoundaryInForwardDirection:v7 ^ 1 granularity:v4];
      --v6;
    }

    while (v6);
  }
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = [(TIKeyboardTyper *)self keyboardController];
  [v7 adjustPhraseBoundaryInForwardDirection:v5 granularity:v4];

  v8 = [(TIKeyboardTyper *)self keyboardController];
  [v8 generateAutocorrectionsOrCandidates];
}

- (void)adjustCursorByOffset:(int64_t)a3
{
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 adjustCursorByOffset:a3];

  v6 = [(TIKeyboardTyper *)self keyboardController];
  [v6 generateAutocorrectionsOrCandidates];
}

- (void)commitText
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  [v2 commitText];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 insertText:v4];
}

- (NSString)markedText
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 markedText];

  return v3;
}

- (void)setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TIKeyboardTyper *)self keyboardController];
  [v6 setSelectedRange:{location, length}];

  v7 = [(TIKeyboardTyper *)self keyboardController];
  [v7 generateAutocorrectionsOrCandidates];
}

- (_NSRange)selectedRange
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 selectedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)text
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 text];

  return v3;
}

- (id)mapShiftedKeyToUnShiftedKeyExcludeCapitalization:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self shiftedKeyToUnShiftedKeyExcludeCapitalizationMap];

  if (v5)
  {
    v6 = [(TIKeyboardTyper *)self shiftedKeyToUnShiftedKeyExcludeCapitalizationMap];
    v7 = [v6 objectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setInsertsSpaceAfterPredictiveInput:v3];
}

- (BOOL)insertsSpaceAfterPredictiveInput
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 insertsSpaceAfterPredictiveInput];

  return v3;
}

- (void)setUsesTransliteration:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setUsesTransliteration:v3];
}

- (BOOL)usesTransliteration
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 usesTransliteration];

  return v3;
}

- (void)setLongPredictionListEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setLongPredictionListEnabled:v3];
}

- (BOOL)longPredictionListEnabled
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 longPredictionListEnabled];

  return v3;
}

- (void)setShouldSkipCandidateSelection:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(TIKeyboardTyper *)self acceptAutocorrection];
  }

  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setShouldSkipCandidateSelection:v3];
}

- (BOOL)shouldSkipCandidateSelection
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 shouldSkipCandidateSelection];

  return v3;
}

- (void)setHardwareKeyboardMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setHardwareKeyboardMode:v3];
}

- (BOOL)hardwareKeyboardMode
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 hardwareKeyboardMode];

  return v3;
}

- (void)setInlineCompletionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setInlineCompletionEnabled:v3];
}

- (BOOL)inlineCompletionEnabled
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 inlineCompletionEnabled];

  return v3;
}

- (void)setWordLearningEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setWordLearningEnabled:v3];
}

- (BOOL)wordLearningEnabled
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 wordLearningEnabled];

  return v3;
}

- (void)setAutocapitalizationType:(unint64_t)a3
{
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setAutocapitalizationType:a3];
}

- (unint64_t)autocapitalizationType
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 autocapitalizationType];

  return v3;
}

- (void)setUsesAutocapitalization:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setUsesAutocapitalization:v3];
}

- (BOOL)usesAutocapitalization
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 usesAutocapitalization];

  return v3;
}

- (void)setUsesPrediction:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setUsesPrediction:v3];
}

- (BOOL)usesPrediction
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 usesPrediction];

  return v3;
}

- (void)setAutocorrectionType:(unint64_t)a3
{
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setAutocorrectionType:a3];
}

- (unint64_t)autocorrectionType
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 autocorrectionType];

  return v3;
}

- (void)setUsesAutocorrection:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setUsesAutocorrection:v3];
}

- (BOOL)usesAutocorrection
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 usesAutocorrection];

  return v3;
}

- (TIKeyboardInputManager)inputManager
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 inputManager];

  return v3;
}

- (void)setNextKeyIsMultitap:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setNextKeyIsMultitap:v3];
}

- (BOOL)nextKeyIsMultitap
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 nextKeyIsMultitap];

  return v3;
}

- (void)setInputContextHistory:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setInputContextHistory:v4];
}

- (TIInputContextHistory)inputContextHistory
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 inputContextHistory];

  return v3;
}

- (void)setRecipientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setRecipientIdentifier:v4];
}

- (NSString)recipientIdentifier
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 recipientIdentifier];

  return v3;
}

- (void)setClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setClientIdentifier:v4];
}

- (NSString)clientIdentifier
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 clientIdentifier];

  return v3;
}

- (BOOL)isAutoshifted
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 isAutoshifted];

  return v3;
}

- (BOOL)isShifted
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 isShifted];

  return v3;
}

- (void)setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap
{
  v3 = [(TIKeyboardTyper *)self inputMode];
  v4 = [v3 languageWithRegion];
  v5 = [v4 isEqualToString:@"th_TH"];

  if ((v5 & 1) == 0)
  {
    v6 = [(TIKeyboardTyper *)self keyboard];
    v7 = [(TIKeyboardTyper *)self keyplane];
    v8 = [v7 shiftAlternateKeyplaneName];
    v40 = [v6 subtreeWithName:v8];

    v9 = [v40 name];
    v10 = [(TIKeyboardTyper *)self keyplane];
    v11 = [v10 name];
    v12 = [v9 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = [v40 keys];
      if ([v13 count])
      {
        v14 = 0;
        while (1)
        {
          v15 = [v13 objectAtIndex:v14];
          [v15 paddedFrame];
          x = v42.origin.x;
          y = v42.origin.y;
          width = v42.size.width;
          height = v42.size.height;
          MidX = CGRectGetMidX(v42);
          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          MidY = CGRectGetMidY(v43);
          v22 = [(TIKeyboardTyper *)self keyplane];
          v23 = [(TIKeyboardTyper *)self keyContainingPoint:v22 inKeyplane:MidX, MidY];

          if (!v23)
          {
            goto LABEL_16;
          }

          [v23 paddedFrame];
          v24 = v44.origin.x;
          v25 = v44.origin.y;
          v26 = v44.size.width;
          v27 = v44.size.height;
          v28 = CGRectGetMidX(v44);
          v45.origin.x = v24;
          v45.origin.y = v25;
          v45.size.width = v26;
          v45.size.height = v27;
          v29 = CGRectGetMidY(v45);
          if (v28 != MidX || v29 != MidY)
          {
            goto LABEL_16;
          }

          v31 = [v23 representedString];
          v32 = [v15 representedString];
          if ([v31 isEqualToString:v32])
          {
            break;
          }

          v38 = [v23 representedString];
          v39 = [(TIKeyboardTyper *)self inputMode];
          v33 = [v39 locale];
          v34 = [v38 uppercaseStringWithLocale:v33];
          v35 = [v15 representedString];
          v37 = [v34 isEqualToString:v35];

          if ((v37 & 1) == 0)
          {
            v31 = [v15 representedString];
            [v36 setValue:v23 forKey:v31];
            goto LABEL_15;
          }

LABEL_16:

          if (++v14 >= [v13 count])
          {
            goto LABEL_17;
          }
        }

LABEL_15:
        goto LABEL_16;
      }

LABEL_17:
      if ([v36 count])
      {
        [(TIKeyboardTyper *)self setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap:v36];
      }
    }
  }
}

- (void)setKeyboard:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setKeyboard:v4];

  [(TIKeyboardTyper *)self setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap];
}

- (void)setAsyncPredictions:(BOOL)a3
{
  v3 = a3;
  v4 = [(TIKeyboardTyper *)self keyboardController];
  [v4 setAsyncPredictions:v3];
}

- (BOOL)asyncPredictions
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 asyncPredictions];

  return v3;
}

- (void)setInputModeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setInputModeIdentifier:v4];
}

- (NSString)inputModeIdentifier
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 inputModeIdentifier];

  return v3;
}

- (void)setKeyboardInputManagerFactory:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardTyper *)self keyboardController];
  [v5 setKeyboardInputManagerFactory:v4];
}

- (TIKeyboardInputManagerFactory)keyboardInputManagerFactory
{
  v2 = [(TIKeyboardTyper *)self keyboardController];
  v3 = [v2 keyboardInputManagerFactory];

  return v3;
}

@end