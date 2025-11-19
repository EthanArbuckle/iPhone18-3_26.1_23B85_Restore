@interface TITypingSession
- (BOOL)testForRapidDeleteContextChange:(id)a3;
- (NSString)description;
- (NSUUID)sessionId;
- (TITypingSession)init;
- (TITypingSession)initWithCoder:(id)a3;
- (TITypingSession)initWithLocale:(id)a3 keyboardLayout:(id)a4;
- (TIWordEntry)currentWord;
- (_NSRange)safeRangeFromRange:(_NSRange)a3 fromArray:(id)a4;
- (double)calibratedCurrentTimestamp;
- (id)committedWordDeletionWithDocumentState:(id)a3 keyboardState:(id)a4;
- (id)currentInputsInRange:(_NSRange)a3;
- (id)currentLayoutsInRange:(_NSRange)a3;
- (id)currentTouchesInRange:(_NSRange)a3;
- (id)keyStringWithCode:(int64_t)a3 fromLayoutIndex:(id)a4;
- (id)uncommittedWordDeletionFromInputsWithRange:(_NSRange)a3;
- (void)acceptingCandidateWithTrigger:(id)a3;
- (void)addDrawInputWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4;
- (void)addKeyInput:(id)a3 keyboardState:(id)a4;
- (void)addTouchEvent:(id)a3;
- (void)candidatesOffered:(id)a3 keyboardState:(id)a4;
- (void)changingContextWithTrigger:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endSessionWithTimestamp:(id)a3;
- (void)handleUncommittedWord;
- (void)insertUncommittedUserAction:(id)a3;
- (void)layoutDidChange:(id)a3 keyboardState:(id)a4;
- (void)removeInputsAndTouchesWithRange:(_NSRange)a3;
- (void)removeInputsInRange:(_NSRange)a3;
- (void)removeLayoutsInRange:(_NSRange)a3;
- (void)removeTouchesInRange:(_NSRange)a3;
- (void)resetCurrentWord;
- (void)resolveInputs:(id)a3 cancelledTextRange:(_NSRange *)a4 leadingBackspaceRange:(_NSRange *)a5 trailingTextRange:(_NSRange *)a6;
- (void)setClientID:(id)a3 keyboardState:(id)a4;
- (void)updateCachedStateAfterLastInputWithKeyboardState:(id)a3;
- (void)updateCachedStateBeforeFirstInputWithKeyboardState:(id)a3;
@end

@implementation TITypingSession

- (double)calibratedCurrentTimestamp
{
  v17 = *MEMORY[0x277D85DE8];
  timeCalibrationTouch = self->_timeCalibrationTouch;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current;
  if (timeCalibrationTouch)
  {
    calibratedTimeBase = self->_calibratedTimeBase;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v7 = v5 - calibratedTimeBase;
    if (TICanLogMessageAtLevel_logLevel)
    {
      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = MEMORY[0x277CCACA8];
        [(TIKeyboardTouchEvent *)self->_timeCalibrationTouch timestamp];
        v14 = [v12 stringWithFormat:@"%s calibrated timestamp %lf", "-[TITypingSession calibratedCurrentTimestamp]", v7 + v13];
        *buf = 138412290;
        v16 = v14;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [(TIKeyboardTouchEvent *)self->_timeCalibrationTouch timestamp];
    result = v7 + v9;
  }

  else
  {
    result = -Current;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (_NSRange)safeRangeFromRange:(_NSRange)a3 fromArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  if (location >= [v6 count])
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (location + length > [v6 count])
  {
    length = [v6 count] - location;
  }

  v7 = location;
  v8 = length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)removeLayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 touchLayoutsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(TITypingSession *)self currentWord];
    v11 = [v12 touchLayoutsM];
    [v11 removeObjectsInRange:{v8, v10}];
  }
}

- (void)removeTouchesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 allTouchesM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(TITypingSession *)self currentWord];
    v11 = [v12 allTouchesM];
    [v11 removeObjectsInRange:{v8, v10}];
  }
}

- (void)removeInputsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 allKeyboardInputsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(TITypingSession *)self currentWord];
    v11 = [v12 allKeyboardInputsM];
    [v11 removeObjectsInRange:{v8, v10}];
  }
}

- (id)currentLayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 touchLayoutsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v12 = [(TITypingSession *)self currentWord];
    v13 = [v12 touchLayoutsM];
    v14 = [v13 subarrayWithRange:{v8, v10}];
    v11 = [v14 mutableCopy];
  }

  return v11;
}

- (id)currentTouchesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 allTouchesM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v12 = [(TITypingSession *)self currentWord];
    v13 = [v12 allTouchesM];
    v14 = [v13 subarrayWithRange:{v8, v10}];
    v11 = [v14 mutableCopy];
  }

  return v11;
}

- (id)currentInputsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TITypingSession *)self currentWord];
  v7 = [v6 allKeyboardInputsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, v7];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v12 = [(TITypingSession *)self currentWord];
    v13 = [v12 allKeyboardInputsM];
    v14 = [v13 subarrayWithRange:{v8, v10}];
    v11 = [v14 mutableCopy];
  }

  return v11;
}

- (void)resolveInputs:(id)a3 cancelledTextRange:(_NSRange *)a4 leadingBackspaceRange:(_NSRange *)a5 trailingTextRange:(_NSRange *)a6
{
  v9 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__23396;
  v18[4] = __Block_byref_object_dispose__23397;
  v19 = [MEMORY[0x277CBEB18] array];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__23396;
  v16[4] = __Block_byref_object_dispose__23397;
  v17 = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__TITypingSession_resolveInputs_cancelledTextRange_leadingBackspaceRange_trailingTextRange___block_invoke;
  v15[3] = &unk_278733620;
  v15[4] = v18;
  v15[5] = v16;
  v15[6] = &v24;
  v15[7] = &v20;
  v15[8] = &v32;
  v15[9] = &v28;
  [v9 enumerateObjectsUsingBlock:v15];
  v11 = v21[3] + v29[3];
  if (v11 >= [v9 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 count] - v11;
    v10 = v11;
  }

  v13 = v29[3];
  a4->location = v33[3];
  a4->length = v13;
  v14 = v21[3];
  a5->location = v25[3];
  a5->length = v14;
  a6->location = v10;
  a6->length = v12;
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __92__TITypingSession_resolveInputs_cancelledTextRange_leadingBackspaceRange_trailingTextRange___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [*(*(a1[4] + 8) + 40) addObject:v11];
  v5 = [v11 isBackspace];
  v6 = *(*(a1[5] + 8) + 40);
  if (!v5)
  {
    [v6 addObject:v11];
    goto LABEL_13;
  }

  if (![v6 count])
  {
    v10 = *(a1[6] + 8);
    if (*(v10 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v10 + 24) = a3;
    }

    v8 = [*(*(a1[4] + 8) + 40) count];
    v9 = a1[7];
    goto LABEL_12;
  }

  [*(*(a1[5] + 8) + 40) removeLastObject];
  if (![*(*(a1[5] + 8) + 40) count] && *(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1[8] + 8);
    if (*(v7 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v7 + 24) = 0;
    }

    v8 = [*(*(a1[4] + 8) + 40) count];
    v9 = a1[9];
LABEL_12:
    *(*(v9 + 8) + 24) += v8;
    [*(*(a1[4] + 8) + 40) removeAllObjects];
  }

LABEL_13:
}

- (void)insertUncommittedUserAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    v5 = [(TITypingSession *)self userActionHistory];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      v7 = [(TITypingSession *)self userActionHistory];
      v8 = [v7 lastObject];

      v9 = [v8 actionType];
      if (v9 != 2 && v9 != 12)
      {
        if (v9 == 11)
        {

LABEL_7:
          v10 = [(TITypingSession *)self userActionHistory];
          v11 = [(TITypingSession *)self userActionHistory];
          [v10 insertObject:v15 atIndex:{objc_msgSend(v11, "count") - 1}];

LABEL_13:
          v4 = v15;
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      v12 = [v8 documentState];
      v13 = [v12 contextBeforeInput];
      if (v13 || ([v12 selectedText], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_11:
        goto LABEL_12;
      }

      v14 = [v12 contextAfterInput];

      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    v10 = [(TITypingSession *)self userActionHistory];
    [v10 addObject:v15];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)removeInputsAndTouchesWithRange:(_NSRange)a3
{
  v4 = 2 * a3.location;
  v5 = 2 * a3.length;
  [(TITypingSession *)self removeInputsInRange:?];
  [(TITypingSession *)self removeTouchesInRange:v4, v5];

  [(TITypingSession *)self removeLayoutsInRange:v4, v5];
}

- (id)committedWordDeletionWithDocumentState:(id)a3 keyboardState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TIDeleteWordEvent alloc] initWithTIKeyboardState:v6];

  [(TIUserAction *)v8 setDocumentState:v7];
  v9 = [(TIWordEntry *)self->_currentWord allKeyboardInputs];
  [(TIDeleteWordEvent *)v8 addKeyInputs:v9];

  v10 = [(TIWordEntry *)self->_currentWord allTouches];
  v11 = [(TIWordEntry *)self->_currentWord touchLayouts];
  [(TIDeleteWordEvent *)v8 addTouches:v10 withLayoutIDs:v11];

  v12 = [(TIWordEntry *)self->_currentWord candidatesOffered];
  [(TIDeleteWordEvent *)v8 addCandidatesOffered:v12];

  v13 = [(TIDeleteWordEvent *)v8 allTouches];
  v14 = [v13 lastObject];
  [v14 timestamp];
  [(TIUserAction *)v8 setEndTime:?];

  v15 = [(TIDeleteWordEvent *)v8 allTouches];
  v16 = [v15 firstObject];
  [v16 timestamp];
  [(TIUserAction *)v8 setStartTime:?];

  [(TITypingSession *)self calibratedCurrentTimestamp];
  [(TIUserAction *)v8 setOccurenceTime:?];

  return v8;
}

- (id)uncommittedWordDeletionFromInputsWithRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    length = a3.length;
    location = a3.location;
    v7 = LODWORD(a3.location) + LODWORD(a3.length);
    v8 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:a3.location + a3.length];
    v9 = [v8 documentState];
    v3 = [[TIDeleteWordEvent alloc] initWithTIKeyboardState:v8];
    [(TIUserAction *)v3 setDocumentState:v9];
    v10 = 2 * length;
    v11 = [(TITypingSession *)self currentInputsInRange:location, length];
    [(TIDeleteWordEvent *)v3 setAllKeyboardInputsM:v11];

    v12 = [(TITypingSession *)self currentTouchesInRange:2 * location, v10];
    [(TIDeleteWordEvent *)v3 setAllTouchesM:v12];

    v13 = [(TITypingSession *)self currentLayoutsInRange:2 * location, v10];
    [(TIDeleteWordEvent *)v3 setTouchLayoutsM:v13];

    v14 = v7 - 1;
    if (v14 < [(NSMutableArray *)self->_cachedCandidatesOffered count])
    {
      v15 = MEMORY[0x277CBEB18];
      v16 = [(NSMutableArray *)self->_cachedCandidatesOffered objectAtIndexedSubscript:v14];
      v17 = [v15 arrayWithObject:v16];
      [(TIDeleteWordEvent *)v3 setCandidatesOfferedM:v17];
    }

    v18 = [(TIDeleteWordEvent *)v3 allTouches];
    v19 = [v18 lastObject];
    [v19 timestamp];
    [(TIUserAction *)v3 setEndTime:?];

    v20 = [(TIDeleteWordEvent *)v3 allTouches];
    v21 = [v20 firstObject];
    [v21 timestamp];
    [(TIUserAction *)v3 setStartTime:?];

    [(TITypingSession *)self calibratedCurrentTimestamp];
    [(TIUserAction *)v3 setOccurenceTime:?];
  }

  return v3;
}

- (void)handleUncommittedWord
{
  if (!self->_currentWord)
  {
    return;
  }

  if (![(NSMutableArray *)self->_cachedKeyboardStates count])
  {
    if ([(TITypingSession *)self didReceiveSecureFieldEvent])
    {
      goto LABEL_6;
    }

LABEL_11:
    v5 = [(TITypingSession *)self currentWord];
    v6 = [v5 allKeyboardInputs];
    v7 = [v6 count];

    if (!v7)
    {
      goto LABEL_7;
    }

    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v8 = [(TITypingSession *)self currentWord];
    v9 = [v8 allKeyboardInputs];
    [(TITypingSession *)self resolveInputs:v9 cancelledTextRange:&v25 leadingBackspaceRange:&v23 trailingTextRange:&v21];

    v10 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(TITypingSession *)self currentWord];
      v12 = [v11 allKeyboardInputs];
      v13 = [v12 count];

      v14 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:0 documentState:v13 cancelled:0, v21 == 0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:v25 documentState:v26 cancelled:0, 1];
        [(TITypingSession *)self insertUncommittedUserAction:v15];

        v10 = v23;
      }

      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v24;
        v18 = v22;
        v19 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:?];
        v16 = [v19 documentState];

        v20 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:v10 documentState:v18 + v17 cancelled:v16, 0];
        [(TITypingSession *)self insertUncommittedUserAction:v20];

        goto LABEL_20;
      }

      v14 = [(TITypingSession *)self uncommittedWordDeletionFromInputsWithRange:v10, v24];
    }

    v16 = v14;
    [(TITypingSession *)self insertUncommittedUserAction:v14];
LABEL_20:

    [(TITypingSession *)self resetCurrentWord];
    return;
  }

  v3 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:0];
  if (![v3 secureTextEntry])
  {
    v4 = [(TITypingSession *)self didReceiveSecureFieldEvent];

    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_6:
  [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
LABEL_7:

  [(TITypingSession *)self resetCurrentWord];
}

- (void)setClientID:(id)a3 keyboardState:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CI clientID: '%@'", "-[TITypingSession setClientID:keyboardState:]", v6];
      *buf = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([v7 secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    [(TITypingSession *)self setApplicationID:v6];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)changingContextWithTrigger:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IXACanLogMessageAtLevel())
  {
    v5 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TC trigger: %@", "-[TITypingSession changingContextWithTrigger:]", v4];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  contextChangeTrigger = self->_contextChangeTrigger;
  self->_contextChangeTrigger = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)keyStringWithCode:(int64_t)a3 fromLayoutIndex:(id)a4
{
  v6 = a4;
  v7 = [(TITypingSession *)self layouts];
  v8 = [v6 integerValue];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__TITypingSession_keyStringWithCode_fromLayoutIndex___block_invoke;
  v12[3] = &unk_2787335F8;
  v12[4] = &v13;
  v12[5] = a3;
  [v9 enumerateKeysUsingBlock:v12];
  if (v14[3])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __53__TITypingSession_keyStringWithCode_fromLayoutIndex___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

void __152__TITypingSession_candidateAccepted_withInput_documentState_inputContext_inputStem_predictionBarHit_useCandidateSelection_candidateIndex_keyboardState___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if ([*(a1 + 56) count] - 1 <= a3)
    {
      v60 = [*(a1 + 32) candidateByReplacingWithCandidate:v5 input:&stru_283FDFAF8 rawInput:&stru_283FDFAF8];
      v61 = [*(a1 + 48) currentWord];
      [v61 setAcceptedCandidate:v60];

      v62 = [*(a1 + 48) currentWord];
      [v62 setAcceptedString:v5];

      v63 = [*(*(*(a1 + 72) + 8) + 40) copy];
      v64 = [*(a1 + 48) currentWord];
      [v64 setDocumentState:v63];

      v65 = [*(a1 + 40) copy];
      v66 = [*(a1 + 48) currentWord];
      [v66 setKeyboardState:v65];

      v67 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
      v68 = [*(a1 + 48) currentWord];
      v69 = [v68 keyboardState];
      [v69 setDocumentState:v67];

      v70 = [*(a1 + 48) currentWord];
      [v70 setInputStem:&stru_283FDFAF8];

      v71 = [*(a1 + 48) currentWord];
      v72 = [v71 documentState];
      v73 = [v72 contextBeforeInput];
      v74 = [*(a1 + 48) currentWord];
      [v74 setInputContext:v73];

      v75 = [MEMORY[0x277CBEB18] array];
      v76 = [*(a1 + 48) currentWord];
      [v76 setCandidatesOfferedM:v75];

      v77 = [MEMORY[0x277CBEB18] array];
      v78 = [*(a1 + 48) currentWord];
      [v78 setAllKeyboardInputsM:v77];

      v79 = [MEMORY[0x277CBEB18] array];
      v80 = [*(a1 + 48) currentWord];
      [v80 setAllTouchesM:v79];

      v81 = [MEMORY[0x277CBEB18] array];
      v82 = [*(a1 + 48) currentWord];
      [v82 setTouchLayoutsM:v81];

      v83 = *(a1 + 80);
      v84 = [*(a1 + 48) currentWord];
      [v84 setOccurenceTime:v83];

      v85 = *(a1 + 80);
      v86 = [*(a1 + 48) currentWord];
      [v86 setStartTime:v85];

      v87 = *(a1 + 80);
      v88 = [*(a1 + 48) currentWord];
      [v88 setEndTime:v87];

      goto LABEL_11;
    }

    v6 = objc_alloc_init(TIWordEntry);
    v7 = [*(a1 + 32) candidateByReplacingWithCandidate:v5 input:&stru_283FDFAF8 rawInput:&stru_283FDFAF8];
    [(TIWordEntry *)v6 setAcceptedCandidate:v7];

    v8 = [(TIWordEntry *)v6 acceptedCandidate];
    v9 = [v8 candidate];
    [(TIWordEntry *)v6 setAcceptedString:v9];

    v10 = [*(*(*(a1 + 72) + 8) + 40) copy];
    [(TIUserAction *)v6 setDocumentState:v10];

    v11 = [*(a1 + 64) copy];
    [(TIUserAction *)v6 setKeyboardState:v11];

    v12 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
    v13 = [(TIUserAction *)v6 keyboardState];
    [v13 setDocumentState:v12];

    v14 = [(TIUserAction *)v6 keyboardState];
    v15 = [v14 documentState];
    v16 = [v15 documentStateAfterInsertingText:@" "];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(a1 + 48) currentWord];
    -[TIWordEntry setWordEntryType:](v6, "setWordEntryType:", [v19 wordEntryType]);

    [(TIWordEntry *)v6 setInputStem:&stru_283FDFAF8];
    v20 = [(TIUserAction *)v6 documentState];
    v21 = [v20 contextBeforeInput];
    [(TIWordEntry *)v6 setInputContext:v21];

    v22 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setCandidatesOfferedM:v22];

    v23 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setAllKeyboardInputsM:v23];

    v24 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setAllTouchesM:v24];

    v25 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setTouchLayoutsM:v25];

    [(TIUserAction *)v6 setOccurenceTime:*(a1 + 80)];
    [(TIUserAction *)v6 setStartTime:*(a1 + 80)];
    [(TIUserAction *)v6 setEndTime:*(a1 + 80)];
    [(TIWordEntry *)v6 setOrigin:4];
    [*(a1 + 48) setCandidatesAccepted:{objc_msgSend(*(a1 + 48), "candidatesAccepted") + 1}];
    [*(a1 + 48) setCandidatesAcceptedWithText:{objc_msgSend(*(a1 + 48), "candidatesAcceptedWithText") + 1}];
    v26 = [*(a1 + 48) userActionHistory];
    [v26 addObject:v6];

    if (IXACanLogMessageAtLevel())
    {
      v27 = IXASessionDetailsLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = wordEntryDetailForLog(v6, 2);
        v30 = [v28 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]_block_invoke", v29];
        *buf = 138412290;
        v92 = v30;
LABEL_13:
        _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        goto LABEL_8;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = objc_alloc_init(TIWordEntry);
    v31 = [*(a1 + 32) candidateByReplacingWithCandidate:v5];
    [(TIWordEntry *)v6 setAcceptedCandidate:v31];

    v32 = [(TIWordEntry *)v6 acceptedCandidate];
    v33 = [v32 candidate];
    [(TIWordEntry *)v6 setAcceptedString:v33];

    v34 = [*(*(*(a1 + 72) + 8) + 40) copy];
    [(TIUserAction *)v6 setDocumentState:v34];

    v35 = [*(a1 + 40) copy];
    [(TIUserAction *)v6 setKeyboardState:v35];

    v36 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
    v37 = [(TIUserAction *)v6 keyboardState];
    [v37 setDocumentState:v36];

    v38 = [(TIUserAction *)v6 keyboardState];
    v39 = [v38 documentState];
    v40 = [v39 documentStateAfterInsertingText:@" "];
    v41 = *(*(a1 + 72) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    v43 = [*(a1 + 48) currentWord];
    -[TIWordEntry setWordEntryType:](v6, "setWordEntryType:", [v43 wordEntryType]);

    v44 = [*(a1 + 48) currentWord];
    v45 = [v44 inputStem];
    [(TIWordEntry *)v6 setInputStem:v45];

    v46 = [*(a1 + 48) currentWord];
    v47 = [v46 inputContext];
    [(TIWordEntry *)v6 setInputContext:v47];

    v48 = [*(a1 + 48) currentWord];
    v49 = [v48 candidatesOfferedM];
    [(TIWordEntry *)v6 setCandidatesOfferedM:v49];

    v50 = [*(a1 + 48) currentWord];
    v51 = [v50 allKeyboardInputsM];
    [(TIWordEntry *)v6 setAllKeyboardInputsM:v51];

    v52 = [*(a1 + 48) currentWord];
    v53 = [v52 allTouchesM];
    [(TIWordEntry *)v6 setAllTouchesM:v53];

    v54 = [*(a1 + 48) currentWord];
    v55 = [v54 touchLayoutsM];
    [(TIWordEntry *)v6 setTouchLayoutsM:v55];

    v56 = [*(a1 + 48) currentWord];
    [v56 occurenceTime];
    [(TIUserAction *)v6 setOccurenceTime:?];

    v57 = [*(a1 + 48) currentWord];
    [v57 startTime];
    [(TIUserAction *)v6 setStartTime:?];

    v58 = [*(a1 + 48) currentWord];
    [v58 endTime];
    [(TIUserAction *)v6 setEndTime:?];

    [(TIWordEntry *)v6 setOrigin:4];
    [*(a1 + 48) setCandidatesAccepted:{objc_msgSend(*(a1 + 48), "candidatesAccepted") + 1}];
    [*(a1 + 48) setCandidatesAcceptedWithText:{objc_msgSend(*(a1 + 48), "candidatesAcceptedWithText") + 1}];
    v59 = [*(a1 + 48) userActionHistory];
    [v59 addObject:v6];

    if (IXACanLogMessageAtLevel())
    {
      v27 = IXASessionDetailsLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v90 = MEMORY[0x277CCACA8];
        v29 = wordEntryDetailForLog(v6, 1);
        v30 = [v90 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]_block_invoke", v29];
        *buf = 138412290;
        v92 = v30;
        goto LABEL_13;
      }

LABEL_8:
    }
  }

LABEL_11:
  v89 = *MEMORY[0x277D85DE8];
}

- (void)acceptingCandidateWithTrigger:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IXACanLogMessageAtLevel())
  {
    v5 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TA trigger: %@", "-[TITypingSession acceptingCandidateWithTrigger:]", v4];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  candidateAcceptedTrigger = self->_candidateAcceptedTrigger;
  self->_candidateAcceptedTrigger = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)candidatesOffered:(id)a3 keyboardState:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v6 corrections];
      v16 = [v15 autocorrection];
      v17 = [v6 predictions];
      v18 = [v14 stringWithFormat:@"%s CO autocorrection: %@ predictions: %@", "-[TITypingSession candidatesOffered:keyboardState:]", v16, v17];
      *buf = 138412290;
      v20 = v18;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([v7 secureTextEntry] & 1) == 0 && !-[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    v9 = [v6 corrections];
    v10 = [v9 autocorrection];
    if (v10)
    {
    }

    else
    {
      v11 = [v6 predictions];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    v12 = [(TITypingSession *)self currentWord];
    [v12 addCandidateOffered:v6];

    [(NSMutableArray *)self->_cachedCandidatesOffered addObject:v6];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:v7];
    goto LABEL_12;
  }

  [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)layoutDidChange:(id)a3 keyboardState:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LC firstKeyString: '%s'", "-[TITypingSession layoutDidChange:keyboardState:]", objc_msgSend(v6, "firstKeyString")];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }
  }

  if (([v7 secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x2020000000;
    v25 = 1;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = -1;
    v10 = [(TITypingSession *)self layouts];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__TITypingSession_layoutDidChange_keyboardState___block_invoke;
    v15[3] = &unk_2787335A8;
    v11 = v6;
    v16 = v11;
    p_buf = &buf;
    v18 = &v19;
    [v10 enumerateObjectsUsingBlock:v15];

    if (*(*(&buf + 1) + 24) == 1)
    {
      [(NSMutableArray *)self->_layouts addObject:v11];
      v12 = [(TITypingSession *)self layouts];
      v13 = [v12 count];
      v20[3] = v13 - 1;
    }

    [(TITypingSession *)self setCurrentLayoutID:v20[3]];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:v7];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&buf, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__TITypingSession_layoutDidChange_keyboardState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqual:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)addTouchEvent:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IXACanLogMessageAtLevel())
  {
    v6 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TO touch: %@", "-[TITypingSession addTouchEvent:]", v5];
      *buf = 138412290;
      v49 = v33;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (![(TITypingSession *)self didReceiveSecureFieldEvent])
  {
    if (!self->_timeCalibrationTouch)
    {
      objc_storeStrong(&self->_timeCalibrationTouch, a3);
      self->_calibratedTimeBase = CFAbsoluteTimeGetCurrent();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v7 = self->_userActionHistory;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v43;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v43 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v42 + 1) + 8 * i);
            [v5 timestamp];
            v14 = v13;
            calibratedTimeBase = self->_calibratedTimeBase;
            [v12 occurenceTime];
            [v12 setOccurenceTime:v14 - (calibratedTimeBase + v16)];
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v9);
      }
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v34 = MEMORY[0x277CCACA8];
        [v5 timestamp];
        v36 = [v34 stringWithFormat:@"%s touch %lf", "-[TITypingSession addTouchEvent:]", v35];
        *buf = 138412290;
        v49 = v36;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v18 = objc_alloc_init(TIKBSessionTouchInfo);
    [(TIKBSessionTouchInfo *)v18 setTouch:v5];
    [(TIKBSessionTouchInfo *)v18 setLayoutId:self->_currentLayoutID];
    v19 = [(TITypingSession *)self touchesHistory];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "pathIndex")}];
    v21 = [v19 objectForKey:v20];

    if (![v5 stage])
    {
      v22 = [MEMORY[0x277CBEB18] array];

      v21 = v22;
    }

    [v21 addObject:v18];
    if ([v5 stage] == 2)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v37 = v18;
        v26 = *v39;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v38 + 1) + 8 * j);
            v29 = [(TITypingSession *)self currentWord];
            v30 = [v28 touch];
            [v29 addTouchEvent:v30 withLayoutId:{objc_msgSend(v28, "layoutId")}];
          }

          v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v25);
        v18 = v37;
      }
    }

    else
    {
      if (!v21)
      {
LABEL_35:

        goto LABEL_36;
      }

      v23 = [(TITypingSession *)self touchesHistory];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "pathIndex")}];
      [v23 setObject:v21 forKey:v31];
    }

    goto LABEL_35;
  }

LABEL_36:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)addDrawInputWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4
{
  v8 = a4;
  if (([v8 secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    v6 = [[TIPathAction alloc] initWithSyllableCount:a3 keyboardState:v8];
    [(TITypingSession *)self calibratedCurrentTimestamp];
    [(TIUserAction *)v6 setOccurenceTime:?];
    v7 = [(TITypingSession *)self userActionHistory];
    [v7 addObject:v6];
  }
}

- (void)addKeyInput:(id)a3 keyboardState:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s KI input: %@", "-[TITypingSession addKeyInput:keyboardState:]", v6];
      *buf = 138412290;
      v18 = v16;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([v7 secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    if ([(TITypingSession *)self includeInputToLastWord])
    {
      v9 = [(TITypingSession *)self lastWord];
      [v9 addKeyInput:v6];

      [(TITypingSession *)self setLastWord:0];
    }

    else if ([(TITypingSession *)self includeInputToLastDeletion])
    {
      v10 = [(TITypingSession *)self lastDeletion];
      [v10 addKeyInput:v6];

      [(TITypingSession *)self setLastDeletion:0];
    }

    else
    {
      v11 = [(TITypingSession *)self currentWord];
      [v11 addKeyInput:v6];

      v12 = [(TITypingSession *)self currentWord];
      [v12 setKeyboardState:v7];

      [(TITypingSession *)self updateCachedStateAfterLastInputWithKeyboardState:v7];
    }

    [(TITypingSession *)self setIncludeInputToLastWord:0];
    [(TITypingSession *)self setIncludeInputToLastDeletion:0];
    [(TITypingSession *)self setLastInput:v6];
    if ([v6 isBackspace])
    {
      v13 = self;
      v14 = v7;
    }

    else
    {
      v13 = self;
      v14 = 0;
    }

    [(TITypingSession *)v13 setSavedDeleteInputKeyboardState:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)testForRapidDeleteContextChange:(id)a3
{
  v5 = a3;
  v6 = [(TITypingSession *)self savedDeleteInputKeyboardState];

  if (v6)
  {
    v7 = [v5 documentState];
    v8 = [(TITypingSession *)self savedDeleteInputKeyboardState];
    v9 = [v8 documentState];

    v10 = [v7 contextAfterInput];
    if (!v10)
    {
      v14 = [v9 contextAfterInput];
      if (v14)
      {
        v15 = v14;
        v13 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v11 = [v7 contextAfterInput];
    if (!v11 || ([v9 contextAfterInput], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [v7 contextAfterInput];
      if (v16)
      {
        v17 = v16;
        v18 = [v9 contextAfterInput];
        v19 = [v7 contextAfterInput];
        v12 = [v18 isEqualToString:v19] ^ 1;

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = 0;
        if (!v11)
        {
LABEL_12:

          if ((v12 & 1) == 0)
          {
            v20 = [v7 contextBeforeInput];
            if (!v20 || (v21 = v20, [v7 contextBeforeInput], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", &stru_283FDFAF8), v22, v21, v23))
            {
              v15 = [v9 contextBeforeInput];
              v13 = [v15 length] > 1;
              goto LABEL_17;
            }

            v25 = [v9 contextBeforeInput];
            v26 = [v7 contextBeforeInput];
            v27 = [v25 hasPrefix:v26];

            if (v27)
            {
              v15 = [v9 contextBeforeInput];
              v28 = [v15 length];
              v29 = [v7 contextBeforeInput];
              v13 = (v28 - [v29 length]) > 1;

              goto LABEL_17;
            }
          }

          v13 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (void)updateCachedStateAfterLastInputWithKeyboardState:(id)a3
{
  v7 = a3;
  [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:v7];
  v4 = v7;
  if (v7)
  {
    cachedKeyboardStates = self->_cachedKeyboardStates;
    v6 = [v7 copy];
    [(NSMutableArray *)cachedKeyboardStates addObject:v6];

    v4 = v7;
  }
}

- (void)updateCachedStateBeforeFirstInputWithKeyboardState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [(NSMutableArray *)self->_cachedKeyboardStates count];
    v5 = v8;
    if (!v4)
    {
      cachedKeyboardStates = self->_cachedKeyboardStates;
      v7 = [v8 copy];
      [(NSMutableArray *)cachedKeyboardStates addObject:v7];

      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)resetCurrentWord
{
  currentWord = self->_currentWord;
  self->_currentWord = 0;

  [(NSMutableArray *)self->_cachedKeyboardStates removeAllObjects];
  cachedCandidatesOffered = self->_cachedCandidatesOffered;

  [(NSMutableArray *)cachedCandidatesOffered removeAllObjects];
}

- (TIWordEntry)currentWord
{
  currentWord = self->_currentWord;
  if (!currentWord)
  {
    v4 = objc_alloc_init(TIWordEntry);
    v5 = self->_currentWord;
    self->_currentWord = v4;

    currentWord = self->_currentWord;
  }

  return currentWord;
}

- (void)endSessionWithTimestamp:(id)a3
{
  v4 = a3;
  [(TITypingSession *)self handleUncommittedWord];
  [(TITypingSession *)self setEndTime:v4];
}

- (NSUUID)sessionId
{
  sessionId = self->_sessionId;
  if (!sessionId)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = self->_sessionId;
    self->_sessionId = v4;

    sessionId = self->_sessionId;
  }

  v6 = sessionId;

  return v6;
}

- (NSString)description
{
  v2 = [(TITypingSession *)self userActionHistory];
  v3 = [v2 componentsJoinedByString:@" "];;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  userActionHistory = self->_userActionHistory;
  v5 = a3;
  [v5 encodeObject:userActionHistory forKey:@"userActionHistory"];
  [v5 encodeObject:self->_layoutName forKey:@"layoutName"];
  [v5 encodeObject:self->_startContext forKey:@"startContext"];
  [v5 encodeObject:self->_layouts forKey:@"layouts"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
  [v5 encodeObject:self->_startTime forKey:@"startTime"];
  [v5 encodeObject:self->_endTime forKey:@"endTime"];
  [v5 encodeObject:self->_sessionId forKey:@"sessionId"];
  [v5 encodeObject:self->_applicationID forKey:@"applicationID"];
  [v5 encodeBool:self->_didReceiveSecureFieldEvent forKey:@"didReceiveSecureFieldEvent"];
  [v5 encodeBool:self->_candidatesAccepted != 0 forKey:@"candidatesAccepted"];
  [v5 encodeBool:self->_candidatesAcceptedWithText != 0 forKey:@"candidatesAcceptedWithText"];
}

- (TITypingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = TITypingSession;
  v5 = [(TITypingSession *)&v36 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"userActionHistory"];
    userActionHistory = v5->_userActionHistory;
    v5->_userActionHistory = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startContext"];
    startContext = v5->_startContext;
    v5->_startContext = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"layouts"];
    layouts = v5->_layouts;
    v5->_layouts = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionId"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationID"];
    applicationID = v5->_applicationID;
    v5->_applicationID = v31;

    v5->_didReceiveSecureFieldEvent = [v4 decodeBoolForKey:@"didReceiveSecureFieldEvent"];
    v33 = [MEMORY[0x277CBEB38] dictionary];
    touchesHistory = v5->_touchesHistory;
    v5->_touchesHistory = v33;

    v5->_candidatesAccepted = [v4 decodeIntForKey:@"candidatesAccepted"];
    v5->_candidatesAcceptedWithText = [v4 decodeIntForKey:@"candidatesAcceptedWithText"];
  }

  return v5;
}

- (TITypingSession)initWithLocale:(id)a3 keyboardLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = TITypingSession;
  v9 = [(TITypingSession *)&v27 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    userActionHistory = v9->_userActionHistory;
    v9->_userActionHistory = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    layouts = v9->_layouts;
    v9->_layouts = v12;

    objc_storeStrong(&v9->_locale, a3);
    v14 = [MEMORY[0x277CBEAA8] date];
    startTime = v9->_startTime;
    v9->_startTime = v14;

    v16 = [MEMORY[0x277CCAD78] UUID];
    sessionId = v9->_sessionId;
    v9->_sessionId = v16;

    timeCalibrationTouch = v9->_timeCalibrationTouch;
    v9->_timeCalibrationTouch = 0;
    v9->_calibratedTimeBase = 0.0;

    savedDeleteInputKeyboardState = v9->_savedDeleteInputKeyboardState;
    v9->_savedDeleteInputKeyboardState = 0;

    v20 = [MEMORY[0x277CBEB38] dictionary];
    touchesHistory = v9->_touchesHistory;
    v9->_touchesHistory = v20;

    if (v8)
    {
      [(NSMutableArray *)v9->_layouts addObject:v8];
      v9->_currentLayoutID = 0;
    }

    objc_storeStrong(&v9->_contextChangeTrigger, *MEMORY[0x277D6F5F8]);
    objc_storeStrong(&v9->_candidateAcceptedTrigger, *MEMORY[0x277D6F5A8]);
    v9->_candidatesAccepted = 0;
    v9->_candidatesAcceptedWithText = 0;
    v22 = [MEMORY[0x277CBEB18] array];
    cachedKeyboardStates = v9->_cachedKeyboardStates;
    v9->_cachedKeyboardStates = v22;

    v24 = [MEMORY[0x277CBEB18] array];
    cachedCandidatesOffered = v9->_cachedCandidatesOffered;
    v9->_cachedCandidatesOffered = v24;
  }

  return v9;
}

- (TITypingSession)init
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(TITypingSession *)self initWithLocale:v3 keyboardLayout:0];

  return v4;
}

@end