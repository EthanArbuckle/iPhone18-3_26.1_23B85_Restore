@interface TITypingLog
+ (id)typingLogWithDebug:(BOOL)debug;
- (BOOL)adjustForContinuousPath;
- (TITypingLog)initWithDebug:(BOOL)debug;
- (id)correctedTransliterationSequence;
- (id)getDebugObject:(id)object;
- (id)intendedTransliterationSequence;
- (void)addDebugObject:(id)object forKey:(id)key;
- (void)beginKeystrokeWithIntendedKey:(id)key touchEvent:(id)event touchError:(id)error;
- (void)beginKeystrokeWithIntendedKey:(id)key touchEvent:(id)event touchError:(id)error documentBefore:(id)before;
- (void)beginToken;
- (void)enumerateKeystrokesAndPathsForTokensWithBlock:(id)block;
- (void)finishKeystrokeWithTouchedKey:(id)key touchEvent:(id)event insertedKey:(id)insertedKey predictionBarState:(id)state inlineCompletionBarState:(id)barState;
- (void)logAcceptedCandidate:(id)candidate intendedTransliterationCandidate:(id)transliterationCandidate;
- (void)logAutocorrectionInserted;
- (void)logRejectedAutocorrection;
- (void)registerPathStringAsKeyStrokes:(id)strokes path:(id)path predictionBarState:(id)state;
- (void)revisitPreviousToken;
- (void)setTokenIndex:(unint64_t)index;
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
  touchedKey = [v4 touchedKey];

  v6 = [(NSMutableArray *)self->_currentKeystrokeSequence objectAtIndex:(v3 - 2)];
  touchedKey2 = [v6 touchedKey];

  if ([touchedKey length] == 1 && objc_msgSend(touchedKey2, "length") == 1 && (objc_msgSend(touchedKey, "characterAtIndex:", 0), TICharIsSpace()) && (objc_msgSend(touchedKey2, "characterAtIndex:", 0), TICharIsAlphaNumeric()))
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

- (id)getDebugObject:(id)object
{
  debugData = self->_debugData;
  if (debugData)
  {
    debugData = [debugData objectForKey:object];
    v3 = vars8;
  }

  return debugData;
}

- (void)addDebugObject:(id)object forKey:(id)key
{
  debugData = self->_debugData;
  if (debugData)
  {
    [(NSMutableDictionary *)debugData setObject:object forKey:key];
  }
}

- (void)enumerateKeystrokesAndPathsForTokensWithBlock:(id)block
{
  blockCopy = block;
  keystrokesForTokens = [(TITypingLog *)self keystrokesForTokens];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TITypingLog_enumerateKeystrokesAndPathsForTokensWithBlock___block_invoke;
  v7[3] = &unk_279DA0590;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [keystrokesForTokens enumerateObjectsUsingBlock:v7];
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

- (void)logAcceptedCandidate:(id)candidate intendedTransliterationCandidate:(id)transliterationCandidate
{
  candidateCopy = candidate;
  transliterationCandidateCopy = transliterationCandidate;
  candidateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", candidateCopy];
  [(TITypingLog *)self beginKeystrokeWithIntendedKey:candidateCopy touchEvent:0 touchError:0];
  [(TITypingLog *)self finishKeystrokeWithTouchedKey:candidateCopy touchEvent:0 insertedKey:&stru_287EC4808];
  if (transliterationCandidateCopy)
  {
    self->_isTransliterating = 1;
    lastObject = [(NSMutableArray *)self->_correctedTransliterationForTokens lastObject];
    [lastObject appendString:candidateCopy];

    lastObject2 = [(NSMutableArray *)self->_intendedTransliterationForTokens lastObject];
    [lastObject2 appendString:transliterationCandidateCopy];
  }
}

- (void)registerPathStringAsKeyStrokes:(id)strokes path:(id)path predictionBarState:(id)state
{
  strokesCopy = strokes;
  pathCopy = path;
  stateCopy = state;
  if ([strokesCopy length])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [strokesCopy substringWithRange:{v10, 1}];
      [(TITypingLog *)self beginKeystrokeWithIntendedKey:0 touchEvent:0 touchError:0];
      [(TITypingLog *)self finishKeystrokeWithTouchedKey:v12 touchEvent:0 insertedKey:v12 predictionBarState:stateCopy inlineCompletionBarState:0];

      v10 = v11;
    }

    while ([strokesCopy length] != v11++);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_keystrokesForTokens, "count") - 1}];
  [(NSMutableDictionary *)self->_pathsForTokens setObject:pathCopy forKeyedSubscript:v14];
}

- (void)finishKeystrokeWithTouchedKey:(id)key touchEvent:(id)event insertedKey:(id)insertedKey predictionBarState:(id)state inlineCompletionBarState:(id)barState
{
  if (key)
  {
    keyCopy = key;
  }

  else
  {
    keyCopy = @"<NoKey>";
  }

  barStateCopy = barState;
  stateCopy = state;
  insertedKeyCopy = insertedKey;
  eventCopy = event;
  keyCopy2 = key;
  currentKeystroke = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke setTouchedKey:keyCopy];

  if (insertedKeyCopy)
  {
    v19 = insertedKeyCopy;
  }

  else
  {
    v19 = &stru_287EC4808;
  }

  currentKeystroke2 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke2 setInsertedKey:v19];

  v21 = eventCopy;
  if (!eventCopy)
  {
    v21 = +[TITypingLog emptyTouchEventForLogging];
  }

  currentKeystroke3 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke3 setTouch:v21];

  if (!eventCopy)
  {
  }

  array = stateCopy;
  if (!stateCopy)
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  currentKeystroke4 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke4 setPredictionBarState:array];

  if (!stateCopy)
  {
  }

  array2 = barStateCopy;
  if (!barStateCopy)
  {
    array2 = [MEMORY[0x277CBEA60] array];
  }

  currentKeystroke5 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke5 setInlineCompletionBarState:array2];

  if (!barStateCopy)
  {
  }
}

- (void)beginKeystrokeWithIntendedKey:(id)key touchEvent:(id)event touchError:(id)error documentBefore:(id)before
{
  keyCopy = key;
  eventCopy = event;
  errorCopy = error;
  beforeCopy = before;
  v14 = +[TIKeystrokeRecord keystrokeRecord];
  [(TITypingLog *)self setCurrentKeystroke:v14];

  currentKeystrokeSequence = [(TITypingLog *)self currentKeystrokeSequence];
  currentKeystroke = [(TITypingLog *)self currentKeystroke];
  [currentKeystrokeSequence addObject:currentKeystroke];

  if (keyCopy)
  {
    v17 = keyCopy;
  }

  else
  {
    v17 = &stru_287EC4808;
  }

  currentKeystroke2 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke2 setIntendedKey:v17];

  v19 = eventCopy;
  if (!eventCopy)
  {
    v19 = +[TITypingLog emptyTouchEventForLogging];
  }

  currentKeystroke3 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke3 setTouch:v19];

  if (!eventCopy)
  {
  }

  v21 = errorCopy;
  if (!errorCopy)
  {
    v21 = [TIPointError errorWithErrorVector:0.0, 0.0];
  }

  currentKeystroke4 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke4 setTouchError:v21];

  if (!errorCopy)
  {
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v23 = beforeCopy;
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

- (void)beginKeystrokeWithIntendedKey:(id)key touchEvent:(id)event touchError:(id)error
{
  errorCopy = error;
  eventCopy = event;
  keyCopy = key;
  v11 = +[TIKeystrokeRecord keystrokeRecord];
  [(TITypingLog *)self setCurrentKeystroke:v11];

  currentKeystrokeSequence = [(TITypingLog *)self currentKeystrokeSequence];
  currentKeystroke = [(TITypingLog *)self currentKeystroke];
  [currentKeystrokeSequence addObject:currentKeystroke];

  if (keyCopy)
  {
    v14 = keyCopy;
  }

  else
  {
    v14 = &stru_287EC4808;
  }

  currentKeystroke2 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke2 setIntendedKey:v14];

  v16 = eventCopy;
  if (!eventCopy)
  {
    v16 = +[TITypingLog emptyTouchEventForLogging];
  }

  currentKeystroke3 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke3 setTouch:v16];

  if (!eventCopy)
  {
  }

  v19 = errorCopy;
  if (!errorCopy)
  {
    v19 = [TIPointError errorWithErrorVector:0.0, 0.0];
  }

  currentKeystroke4 = [(TITypingLog *)self currentKeystroke];
  [currentKeystroke4 setTouchError:v19];

  if (!errorCopy)
  {
  }
}

- (void)revisitPreviousToken
{
  lastObject = [(NSMutableArray *)self->_keystrokesForTokens lastObject];
  [(NSMutableArray *)self->_keystrokesForTokens removeLastObject];
  lastObject2 = [(NSMutableArray *)self->_keystrokesForTokens lastObject];
  [lastObject2 addObjectsFromArray:lastObject];
  [(TITypingLog *)self setCurrentKeystrokeSequence:lastObject2];
}

- (void)setTokenIndex:(unint64_t)index
{
  for (i = self->_keystrokesForTokens; [(NSMutableArray *)i count]<= index; i = self->_keystrokesForTokens)
  {
    [(TITypingLog *)self beginToken];
  }

  v6 = index + 1;
  while (v6 < [(NSMutableArray *)self->_keystrokesForTokens count])
  {
    [(TITypingLog *)self revisitPreviousToken];
  }
}

- (void)beginToken
{
  array = [MEMORY[0x277CBEB18] array];
  [(TITypingLog *)self setCurrentKeystrokeSequence:array];

  keystrokesForTokens = self->_keystrokesForTokens;
  currentKeystrokeSequence = [(TITypingLog *)self currentKeystrokeSequence];
  [(NSMutableArray *)keystrokesForTokens addObject:currentKeystrokeSequence];

  correctedTransliterationForTokens = self->_correctedTransliterationForTokens;
  v7 = [MEMORY[0x277CCAB68] stringWithString:&stru_287EC4808];
  [(NSMutableArray *)correctedTransliterationForTokens addObject:v7];

  intendedTransliterationForTokens = self->_intendedTransliterationForTokens;
  v9 = [MEMORY[0x277CCAB68] stringWithString:&stru_287EC4808];
  [(NSMutableArray *)intendedTransliterationForTokens addObject:v9];
}

- (TITypingLog)initWithDebug:(BOOL)debug
{
  debugCopy = debug;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pathsForTokens = v4->_pathsForTokens;
    v4->_pathsForTokens = dictionary;

    v4->_isTransliterating = 0;
    if (debugCopy)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      debugData = v4->_debugData;
      v4->_debugData = dictionary2;
    }
  }

  return v4;
}

+ (id)typingLogWithDebug:(BOOL)debug
{
  v3 = [[TITypingLog alloc] initWithDebug:debug];

  return v3;
}

@end