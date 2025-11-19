@interface TITypingLog
+ (id)typingLogWithDebug:(BOOL)a3;
- (BOOL)adjustForContinuousPath;
- (TITypingLog)initWithDebug:(BOOL)a3;
- (id)correctedTransliterationSequence;
- (id)getDebugObject:(id)a3;
- (id)intendedTransliterationSequence;
- (void)addDebugObject:(id)a3 forKey:(id)a4;
- (void)beginKeystrokeWithIntendedKey:(id)a3 touchEvent:(id)a4 touchError:(id)a5;
- (void)beginKeystrokeWithIntendedKey:(id)a3 touchEvent:(id)a4 touchError:(id)a5 documentBefore:(id)a6;
- (void)beginToken;
- (void)enumerateKeystrokesAndPathsForTokensWithBlock:(id)a3;
- (void)finishKeystrokeWithTouchedKey:(id)a3 touchEvent:(id)a4 insertedKey:(id)a5 predictionBarState:(id)a6 inlineCompletionBarState:(id)a7;
- (void)logAcceptedCandidate:(id)a3 intendedTransliterationCandidate:(id)a4;
- (void)logAutocorrectionInserted;
- (void)logRejectedAutocorrection;
- (void)registerPathStringAsKeyStrokes:(id)a3 path:(id)a4 predictionBarState:(id)a5;
- (void)revisitPreviousToken;
- (void)setTokenIndex:(unint64_t)a3;
@end

@implementation TITypingLog

- (id)intendedTransliterationSequence
{
  if (self->_isTransliterating)
  {
    v3 = self->_intendedTransliterationForTokens;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)correctedTransliterationSequence
{
  if (self->_isTransliterating)
  {
    v3 = self->_correctedTransliterationForTokens;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)adjustForContinuousPath
{
  v3 = [(NSMutableArray *)self->_currentKeystrokeSequence count];
  if (v3 < 2)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_currentKeystrokeSequence objectAtIndex:(v3 - 1)];
  v5 = [v4 touchedKey];

  v6 = [(NSMutableArray *)self->_currentKeystrokeSequence objectAtIndex:(v3 - 2)];
  v7 = [v6 touchedKey];

  if ([v5 length] == 1 && objc_msgSend(v7, "length") == 1 && (objc_msgSend(v5, "characterAtIndex:", 0), TICharIsSpace()) && (objc_msgSend(v7, "characterAtIndex:", 0), TICharIsAlphaNumeric()))
  {
    [(NSMutableArray *)self->_currentKeystrokeSequence removeLastObject];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getDebugObject:(id)a3
{
  debugData = self->_debugData;
  if (debugData)
  {
    debugData = [debugData objectForKey:a3];
    v3 = vars8;
  }

  return debugData;
}

- (void)addDebugObject:(id)a3 forKey:(id)a4
{
  debugData = self->_debugData;
  if (debugData)
  {
    [(NSMutableDictionary *)debugData setObject:a3 forKey:a4];
  }
}

- (void)enumerateKeystrokesAndPathsForTokensWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(TITypingLog *)self keystrokesForTokens];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TITypingLog_enumerateKeystrokesAndPathsForTokensWithBlock___block_invoke;
  v7[3] = &unk_279DA0590;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __61__TITypingLog_enumerateKeystrokesAndPathsForTokensWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v8 = [v5 numberWithUnsignedInteger:a3];
  v7 = [*(*(a1 + 32) + 16) objectForKey:v8];
  (*(*(a1 + 40) + 16))();
}

- (void)logAutocorrectionInserted
{
  [(TITypingLog *)self beginKeystrokeWithIntendedKey:@"<Autocorrect>" touchEvent:0 touchError:0];

  [(TITypingLog *)self finishKeystrokeWithTouchedKey:@"<Autocorrect>" touchEvent:0 insertedKey:&stru_287EC4808];
}

- (void)logRejectedAutocorrection
{
  [(TITypingLog *)self beginKeystrokeWithIntendedKey:@"<Reject>" touchEvent:0 touchError:0];

  [(TITypingLog *)self finishKeystrokeWithTouchedKey:@"<Reject>" touchEvent:0 insertedKey:&stru_287EC4808];
}

- (void)logAcceptedCandidate:(id)a3 intendedTransliterationCandidate:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", v10];
  [(TITypingLog *)self beginKeystrokeWithIntendedKey:v7 touchEvent:0 touchError:0];
  [(TITypingLog *)self finishKeystrokeWithTouchedKey:v7 touchEvent:0 insertedKey:&stru_287EC4808];
  if (v6)
  {
    self->_isTransliterating = 1;
    v8 = [(NSMutableArray *)self->_correctedTransliterationForTokens lastObject];
    [v8 appendString:v10];

    v9 = [(NSMutableArray *)self->_intendedTransliterationForTokens lastObject];
    [v9 appendString:v6];
  }
}

- (void)registerPathStringAsKeyStrokes:(id)a3 path:(id)a4 predictionBarState:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([v15 length])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v15 substringWithRange:{v10, 1}];
      [(TITypingLog *)self beginKeystrokeWithIntendedKey:0 touchEvent:0 touchError:0];
      [(TITypingLog *)self finishKeystrokeWithTouchedKey:v12 touchEvent:0 insertedKey:v12 predictionBarState:v9 inlineCompletionBarState:0];

      v10 = v11;
    }

    while ([v15 length] != v11++);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_keystrokesForTokens, "count") - 1}];
  [(NSMutableDictionary *)self->_pathsForTokens setObject:v8 forKeyedSubscript:v14];
}

- (void)finishKeystrokeWithTouchedKey:(id)a3 touchEvent:(id)a4 insertedKey:(id)a5 predictionBarState:(id)a6 inlineCompletionBarState:(id)a7
{
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = @"<NoKey>";
  }

  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(TITypingLog *)self currentKeystroke];
  [v18 setTouchedKey:v12];

  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = &stru_287EC4808;
  }

  v20 = [(TITypingLog *)self currentKeystroke];
  [v20 setInsertedKey:v19];

  v21 = v16;
  if (!v16)
  {
    v21 = +[TITypingLog emptyTouchEventForLogging];
  }

  v22 = [(TITypingLog *)self currentKeystroke];
  [v22 setTouch:v21];

  if (!v16)
  {
  }

  v23 = v14;
  if (!v14)
  {
    v23 = [MEMORY[0x277CBEA60] array];
  }

  v24 = [(TITypingLog *)self currentKeystroke];
  [v24 setPredictionBarState:v23];

  if (!v14)
  {
  }

  v26 = v13;
  if (!v13)
  {
    v26 = [MEMORY[0x277CBEA60] array];
  }

  v25 = [(TITypingLog *)self currentKeystroke];
  [v25 setInlineCompletionBarState:v26];

  if (!v13)
  {
  }
}

- (void)beginKeystrokeWithIntendedKey:(id)a3 touchEvent:(id)a4 touchError:(id)a5 documentBefore:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[TIKeystrokeRecord keystrokeRecord];
  [(TITypingLog *)self setCurrentKeystroke:v14];

  v15 = [(TITypingLog *)self currentKeystrokeSequence];
  v16 = [(TITypingLog *)self currentKeystroke];
  [v15 addObject:v16];

  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = &stru_287EC4808;
  }

  v18 = [(TITypingLog *)self currentKeystroke];
  [v18 setIntendedKey:v17];

  v19 = v11;
  if (!v11)
  {
    v19 = +[TITypingLog emptyTouchEventForLogging];
  }

  v20 = [(TITypingLog *)self currentKeystroke];
  [v20 setTouch:v19];

  if (!v11)
  {
  }

  v21 = v12;
  if (!v12)
  {
    v21 = [TIPointError errorWithErrorVector:0.0, 0.0];
  }

  v22 = [(TITypingLog *)self currentKeystroke];
  [v22 setTouchError:v21];

  if (!v12)
  {
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v23 = v13;
  v38 = v23;
  if ([v23 length] >= 0x21)
  {
    v24 = [v23 length];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __82__TITypingLog_beginKeystrokeWithIntendedKey_touchEvent_touchError_documentBefore___block_invoke;
    v30 = &unk_279DA0568;
    v31 = v23;
    v32 = &v33;
    [v31 enumerateSubstringsInRange:0 options:v24 usingBlock:{259, &v27}];
  }

  v25 = v34[5];
  v26 = [(TITypingLog *)self currentKeystroke:v27];
  [v26 setDocumentState:v25];

  _Block_object_dispose(&v33, 8);
}

void __82__TITypingLog_beginKeystrokeWithIntendedKey_touchEvent_touchError_documentBefore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = [*(a1 + 32) length];
  if (a3)
  {
    if ((v10 - a3) >= 0x21)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(a1 + 32) substringFromIndex:a3];
      v13 = [v11 stringWithFormat:@"...%@", v12];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a7 = 1;
    }
  }
}

- (void)beginKeystrokeWithIntendedKey:(id)a3 touchEvent:(id)a4 touchError:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[TIKeystrokeRecord keystrokeRecord];
  [(TITypingLog *)self setCurrentKeystroke:v11];

  v12 = [(TITypingLog *)self currentKeystrokeSequence];
  v13 = [(TITypingLog *)self currentKeystroke];
  [v12 addObject:v13];

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &stru_287EC4808;
  }

  v15 = [(TITypingLog *)self currentKeystroke];
  [v15 setIntendedKey:v14];

  v16 = v9;
  if (!v9)
  {
    v16 = +[TITypingLog emptyTouchEventForLogging];
  }

  v17 = [(TITypingLog *)self currentKeystroke];
  [v17 setTouch:v16];

  if (!v9)
  {
  }

  v19 = v8;
  if (!v8)
  {
    v19 = [TIPointError errorWithErrorVector:0.0, 0.0];
  }

  v18 = [(TITypingLog *)self currentKeystroke];
  [v18 setTouchError:v19];

  if (!v8)
  {
  }
}

- (void)revisitPreviousToken
{
  v4 = [(NSMutableArray *)self->_keystrokesForTokens lastObject];
  [(NSMutableArray *)self->_keystrokesForTokens removeLastObject];
  v3 = [(NSMutableArray *)self->_keystrokesForTokens lastObject];
  [v3 addObjectsFromArray:v4];
  [(TITypingLog *)self setCurrentKeystrokeSequence:v3];
}

- (void)setTokenIndex:(unint64_t)a3
{
  for (i = self->_keystrokesForTokens; [(NSMutableArray *)i count]<= a3; i = self->_keystrokesForTokens)
  {
    [(TITypingLog *)self beginToken];
  }

  v6 = a3 + 1;
  while (v6 < [(NSMutableArray *)self->_keystrokesForTokens count])
  {
    [(TITypingLog *)self revisitPreviousToken];
  }
}

- (void)beginToken
{
  v3 = [MEMORY[0x277CBEB18] array];
  [(TITypingLog *)self setCurrentKeystrokeSequence:v3];

  keystrokesForTokens = self->_keystrokesForTokens;
  v5 = [(TITypingLog *)self currentKeystrokeSequence];
  [(NSMutableArray *)keystrokesForTokens addObject:v5];

  correctedTransliterationForTokens = self->_correctedTransliterationForTokens;
  v7 = [MEMORY[0x277CCAB68] stringWithString:&stru_287EC4808];
  [(NSMutableArray *)correctedTransliterationForTokens addObject:v7];

  intendedTransliterationForTokens = self->_intendedTransliterationForTokens;
  v9 = [MEMORY[0x277CCAB68] stringWithString:&stru_287EC4808];
  [(NSMutableArray *)intendedTransliterationForTokens addObject:v9];
}

- (TITypingLog)initWithDebug:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = TITypingLog;
  v4 = [(TITypingLog *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keystrokesForTokens = v4->_keystrokesForTokens;
    v4->_keystrokesForTokens = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    correctedTransliterationForTokens = v4->_correctedTransliterationForTokens;
    v4->_correctedTransliterationForTokens = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    intendedTransliterationForTokens = v4->_intendedTransliterationForTokens;
    v4->_intendedTransliterationForTokens = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    pathsForTokens = v4->_pathsForTokens;
    v4->_pathsForTokens = v11;

    v4->_isTransliterating = 0;
    if (v3)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
      debugData = v4->_debugData;
      v4->_debugData = v13;
    }
  }

  return v4;
}

+ (id)typingLogWithDebug:(BOOL)a3
{
  v3 = [[TITypingLog alloc] initWithDebug:a3];

  return v3;
}

@end