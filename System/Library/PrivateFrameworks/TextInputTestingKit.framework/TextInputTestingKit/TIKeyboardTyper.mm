@interface TIKeyboardTyper
- (BOOL)asyncPredictions;
- (BOOL)attemptToTapAutocorrectionWithString:(id)string;
- (BOOL)attemptToTapPredictionBarCandidateWithString:(id)string;
- (BOOL)attemptToTapPredictionWithString:(id)string;
- (BOOL)changeToNearestAlphabeticPlane;
- (BOOL)changeToNearestKeyplaneWithString:(id)string;
- (BOOL)hardwareKeyboardMode;
- (BOOL)hasPrediction:(id)prediction;
- (BOOL)inPartialCandidateSelection;
- (BOOL)inlineCompletionEnabled;
- (BOOL)insertsSpaceAfterPredictiveInput;
- (BOOL)isAutoshifted;
- (BOOL)isShifted;
- (BOOL)lastInputWasSelection;
- (BOOL)longPredictionListEnabled;
- (BOOL)nextKeyIsMultitap;
- (BOOL)postTokenisString:(id)string i:(unint64_t)i;
- (BOOL)priorTokenisString:(id)string i:(unint64_t)i;
- (BOOL)shouldSkipCandidateSelection;
- (BOOL)usePartialCandidates;
- (BOOL)usesAutocapitalization;
- (BOOL)usesAutocorrection;
- (BOOL)usesPrediction;
- (BOOL)usesTransliteration;
- (BOOL)wordLearningEnabled;
- (CGPoint)pointForAttemptedTapOnKey:(id)key withError:(id)error;
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
- (TIKeyboardTyper)initWithInputMode:(id)mode;
- (TIKeyboardTyperUserModel)userModel;
- (UIKBTree)keyboard;
- (UIKBTree)keyplane;
- (_NSRange)selectedRange;
- (id)_keyplaneCloserToKeyWithString:(id)string;
- (id)_logStringForTouchedKey:(id)key;
- (id)_performGestureKeyInput:(id)input timestamp:(double)timestamp typingLog:(id)log;
- (id)_performTapAtLocation:(CGPoint)location timestamp:(double)timestamp fingerID:(int)d secondaryString:(BOOL)string;
- (id)_performTapAtLocation:(CGPoint)location timestamp:(double)timestamp intendedKey:(id)key touchedKey:(id)touchedKey secondaryString:(BOOL)string touchError:(id)error typingLog:(id)log;
- (id)_performTouchEvent:(id)event typingLog:(id)log;
- (id)_performVariantKey:(id)key timestamp:(double)timestamp typingLog:(id)log;
- (id)candidateBarCandidates;
- (id)candidatesForString:(id)string;
- (id)displayStringOverrideForKey:(id)key;
- (id)externalStringToInternal:(id)internal;
- (id)inputSegmentsForContinuousPathString:(id)string;
- (id)internalStringToExternal:(id)external;
- (id)keyContainingPoint:(CGPoint)point inKeyplane:(id)keyplane;
- (id)keyToAccessKeyplaneCloserToKeyString:(id)string;
- (id)keyWithString:(id)string inKeyplane:(id)keyplane;
- (id)keyWithString:(id)string inKeyplane:(id)keyplane includeSecondaryStrings:(BOOL)strings;
- (id)mapShiftedKeyToUnShiftedKeyExcludeCapitalization:(id)capitalization;
- (id)mergeHyphenatedWord:(id)word string:(id)string;
- (id)performTapAtKey:(id)key biasedTowards:(id)towards biasWeight:(float)weight;
- (id)performTapAtLocation:(CGPoint)location;
- (id)performTouchUpAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d secondaryString:(BOOL)string;
- (id)predictationBarDebugString;
- (id)shiftKeyToAccessKeyplaneCloserToKeyString:(id)string;
- (id)splitDigraphsInString:(id)string;
- (id)tokensForString:(id)string;
- (int64_t)performTouchDownAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (int64_t)performTouchDragAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (unint64_t)autocapitalizationType;
- (unint64_t)autocorrectionType;
- (unint64_t)cursorLocationInMarkedText;
- (void)_bumpTouchPathID;
- (void)_finishKeystrokeAndRecordPredictionsInTypingLog:(id)log touchedKey:(id)key insertedKey:(id)insertedKey typingLog:(id)typingLog;
- (void)_performAcceptCandidate:(id)candidate timestamp:(double)timestamp typingLog:(id)log predictiveCandidate:(BOOL)predictiveCandidate intendedTransliteration:(id)transliteration;
- (void)_performRejectCandidate:(id)candidate timestamp:(double)timestamp typingLog:(id)log;
- (void)_skipTapTimestamp:(double)timestamp intendedKey:(id)key typingLog:(id)log;
- (void)acceptAutocorrection;
- (void)acceptCandidate:(id)candidate;
- (void)acceptCandidateFromPredictionBar:(id)bar;
- (void)acceptCandidateInputEvent:(id)event fromCandidateBar:(BOOL)bar;
- (void)acceptCandidateViaKeyboard:(id)keyboard;
- (void)acceptPredictiveCandidate:(id)candidate;
- (void)adjustCursorByOffset:(int64_t)offset;
- (void)adjustPhraseBoundaryByOffset:(int64_t)offset granularity:(int)granularity;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)attemptTapOnKeyWithString:(id)string;
- (void)attemptTapOnKeyWithString:(id)string withErrorGenerator:(id)generator typingLog:(id)log;
- (void)attemptToDeleteWithCount:(unsigned int)count;
- (void)attemptToRapidDeleteCharacters:(unsigned int)characters;
- (void)attemptToStrokeWord:(id)word startTime:(double)time duration:(double)duration typingLog:(id)log callback:(id)callback;
- (void)attemptToTapKeys:(id)keys;
- (void)attemptToTapPredictionWithLiteral:(id)literal;
- (void)attemptToTypeIntended:(id)intended expected:(id)expected typingLog:(id)log;
- (void)attemptToTypeText:(id)text typingLog:(id)log;
- (void)attemptToTypeWithLog:(id)log;
- (void)candidateRejected:(id)rejected;
- (void)commitText;
- (void)dealloc;
- (void)generateAutocorrectionsWithShiftState:(int)state;
- (void)generateCandidates;
- (void)insertText:(id)text;
- (void)learnWord:(id)word withCount:(unint64_t)count;
- (void)linkWithUserActionStream:(id)stream;
- (void)performStrokeForPath:(id)path typingLog:(id)log callback:(id)callback;
- (void)performTouchCancelAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)performTouchEndRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)performTouchRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate mode:(id)mode;
- (void)rejectAutocorrection;
- (void)reset;
- (void)setAsyncPredictions:(BOOL)predictions;
- (void)setAutocapitalizationType:(unint64_t)type;
- (void)setAutocorrectionList:(id)list;
- (void)setAutocorrectionType:(unint64_t)type;
- (void)setClientIdentifier:(id)identifier;
- (void)setErrorGenerator:(id)generator;
- (void)setHardwareKeyboardMode:(BOOL)mode;
- (void)setInlineCompletionEnabled:(BOOL)enabled;
- (void)setInputContextHistory:(id)history;
- (void)setInputModeIdentifier:(id)identifier;
- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)input;
- (void)setKeyboard:(id)keyboard;
- (void)setKeyboardInputManagerFactory:(id)factory;
- (void)setLastInputWasSelection:(BOOL)selection;
- (void)setLongPredictionListEnabled:(BOOL)enabled;
- (void)setNextKeyIsMultitap:(BOOL)multitap;
- (void)setRecipientIdentifier:(id)identifier;
- (void)setSelectedRange:(_NSRange)range;
- (void)setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap;
- (void)setShouldSkipCandidateSelection:(BOOL)selection;
- (void)setUserModel:(id)model;
- (void)setUsesAutocapitalization:(BOOL)autocapitalization;
- (void)setUsesAutocorrection:(BOOL)autocorrection;
- (void)setUsesPrediction:(BOOL)prediction;
- (void)setUsesTransliteration:(BOOL)transliteration;
- (void)setWordLearningEnabled:(BOOL)enabled;
- (void)suspendAndResume;
- (void)syncToDocumentState:(id)state;
- (void)syncToEmptyDocument;
- (void)tearDown;
@end

@implementation TIKeyboardTyper

- (BOOL)inPartialCandidateSelection
{
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  inPartialCandidateSelection = [userActionStream inPartialCandidateSelection];

  return inPartialCandidateSelection;
}

- (BOOL)usePartialCandidates
{
  userModel = [(TIKeyboardTyper *)self userModel];
  usePartialCandidates = [userModel usePartialCandidates];

  return usePartialCandidates;
}

- (void)learnWord:(id)word withCount:(unint64_t)count
{
  wordCopy = word;
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
  for (; count; --count)
  {
    v8 = v7[2](v7);
    [(TIKeyboardTyper *)self attemptToTypeText:v8];

    [(TIKeyboardTyper *)self attemptToTypeText:@" "];
    [(TIKeyboardTyper *)self attemptToTypeText:wordCopy];
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

- (id)splitDigraphsInString:(id)string
{
  stringCopy = string;
  inputMode = [(TIKeyboardTyper *)self inputMode];
  languageWithRegion = [inputMode languageWithRegion];
  v7 = [languageWithRegion hasPrefix:@"de_"];

  if (v7)
  {
    v8 = [stringCopy stringByReplacingOccurrencesOfString:@"ß" withString:@"ss"];

    keyboard = [(TIKeyboardTyper *)self keyboard];
    subtrees = [keyboard subtrees];
    v11 = [subtrees objectAtIndex:0];

    if ([v11 isShiftKeyplane])
    {
      keyboard2 = [(TIKeyboardTyper *)self keyboard];
      shiftAlternateKeyplaneName = [v11 shiftAlternateKeyplaneName];
      v14 = [keyboard2 subtreeWithName:shiftAlternateKeyplaneName];

      v11 = v14;
    }

    keyboardController = [(TIKeyboardTyper *)self keyboardController];
    v16 = [keyboardController keyCodeWithString:@"ü" inKeyplane:v11];

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
    inputMode2 = [(TIKeyboardTyper *)self inputMode];
    languageWithRegion2 = [inputMode2 languageWithRegion];
    v24 = [languageWithRegion2 hasPrefix:@"fr_"];

    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = [stringCopy stringByReplacingOccurrencesOfString:@"æ" withString:@"ae"];

    v26 = [v25 stringByReplacingOccurrencesOfString:@"œ" withString:@"oe"];

    v11 = [v26 stringByReplacingOccurrencesOfString:@"Æ" withString:@"AE"];

    v8 = [v11 stringByReplacingOccurrencesOfString:@"Œ" withString:@"OE"];
  }

  stringCopy = v8;
LABEL_9:

  return stringCopy;
}

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputManager = [keyboardController inputManager];
  v7 = [inputManager internalStringToExternal:externalCopy];

  return v7;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputManager = [keyboardController inputManager];
  v7 = [inputManager externalStringToInternal:internalCopy];

  return v7;
}

- (id)inputSegmentsForContinuousPathString:(id)string
{
  v4 = TITestTyperTokensForString(string, 0);
  array = [MEMORY[0x277CBEB18] array];
  if ([v4 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndex:v6];
      if (v7)
      {
        v9 = [(TIKeyboardTyper *)self mergeHyphenatedWord:array string:v8];

        v8 = v9;
      }

      if ([v8 isEqualToString:@"-"] && -[TIKeyboardTyper priorTokenisString:i:](self, "priorTokenisString:i:", v4, v6) && -[TIKeyboardTyper postTokenisString:i:](self, "postTokenisString:i:", v4, v6))
      {
        v10 = [(TIKeyboardTyper *)self mergeHyphenatedWord:array string:v8];

        v7 = 1;
        v8 = v10;
      }

      else
      {
        v7 = 0;
      }

      [array addObject:v8];

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  return array;
}

- (id)mergeHyphenatedWord:(id)word string:(id)string
{
  wordCopy = word;
  stringCopy = string;
  if ([wordCopy count])
  {
    lastObject = [wordCopy lastObject];
    [wordCopy removeLastObject];
    v8 = [lastObject stringByAppendingString:stringCopy];
  }

  else
  {
    v8 = stringCopy;
  }

  return v8;
}

- (BOOL)postTokenisString:(id)string i:(unint64_t)i
{
  stringCopy = string;
  if ([stringCopy count] - 1 <= i)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v6 = [stringCopy objectAtIndex:i + 1];
    v7 = [v6 characterAtIndex:0];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    if ([decimalDigitCharacterSet characterIsMember:v7])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v9 = (v7 != 32) & ~[punctuationCharacterSet characterIsMember:v7];
    }
  }

  return v9;
}

- (BOOL)priorTokenisString:(id)string i:(unint64_t)i
{
  if (i)
  {
    v4 = [string objectAtIndex:i - 1];
    v5 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    if ([decimalDigitCharacterSet characterIsMember:v5])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v7 = (v5 != 32) & ~[punctuationCharacterSet characterIsMember:v5];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)tokensForString:(id)string
{
  v12[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  userModel = [(TIKeyboardTyper *)self userModel];
  prefersTransliteration = [userModel prefersTransliteration];

  if (prefersTransliteration)
  {
    v12[0] = stringCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    userModel2 = [(TIKeyboardTyper *)self userModel];
    prefersContinuousPath = [userModel2 prefersContinuousPath];

    if (prefersContinuousPath)
    {
      [(TIKeyboardTyper *)self inputSegmentsForContinuousPathString:stringCopy];
    }

    else
    {
      [(TIKeyboardTyper *)self inputSegmentsForString:stringCopy];
    }
    v7 = ;
  }

  v10 = v7;

  return v10;
}

- (id)_logStringForTouchedKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    interactionType = [keyCopy interactionType];
    if (interactionType <= 0x10 && ((1 << interactionType) & 0x1A006) != 0)
    {
      keyboardController = [(TIKeyboardTyper *)self keyboardController];
      layoutUtils = [keyboardController layoutUtils];
      keyplane = [(TIKeyboardTyper *)self keyplane];
      v10 = [layoutUtils representedStringForKey:v5 shifted:{objc_msgSend(keyplane, "isShiftKeyplane")}];
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      keyboardController = [v5 representedString];
      v10 = [v12 stringWithFormat:@"<%@>", keyboardController];
    }
  }

  else
  {
    v10 = @"<NoKey>";
  }

  return v10;
}

- (id)_performTapAtLocation:(CGPoint)location timestamp:(double)timestamp fingerID:(int)d secondaryString:(BOOL)string
{
  stringCopy = string;
  v7 = *&d;
  y = location.y;
  x = location.x;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v13) = 5.0;
  [keyboardController performTouchDownAtLocation:self->_touchPathID radius:v7 timestamp:x pathIndex:y fingerID:{v13, timestamp}];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v15) = 5.0;
  v16 = [keyboardController2 performTouchUpAtLocation:self->_touchPathID radius:v7 timestamp:stringCopy pathIndex:x fingerID:y secondaryString:{v15, timestamp}];

  [(TIKeyboardTyper *)self _bumpTouchPathID];
  userPersona = [(TIKeyboardTyper *)self userPersona];
  keyboardController3 = [(TIKeyboardTyper *)self keyboardController];
  keyplane = [keyboardController3 keyplane];
  [userPersona updateFromKeyplane:keyplane];

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

- (void)performStrokeForPath:(id)path typingLog:(id)log callback:(id)callback
{
  pathCopy = path;
  logCopy = log;
  callbackCopy = callback;
  v39 = 0;
  samples = [pathCopy samples];
  v12 = [samples count];

  if (v12 < 2)
  {
    v25 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      samples2 = [pathCopy samples];
      v15 = [samples2 objectAtIndexedSubscript:v13];

      keyboardController = [(TIKeyboardTyper *)self keyboardController];
      [v15 point];
      v18 = v17;
      v20 = v19;
      [v15 timeStamp];
      LODWORD(v22) = 5.0;
      if (v13)
      {
        [keyboardController performTouchDragAtLocation:0 radius:0 timestamp:v18 pathIndex:v20 fingerID:{v22, v21}];
      }

      else
      {
        [keyboardController performTouchDownAtLocation:0 radius:0 timestamp:v18 pathIndex:v20 fingerID:{v22, v21}];
      }

      if (callbackCopy)
      {
        callbackCopy[2](callbackCopy, v15, &v39);
        if (v39 == 1)
        {
          break;
        }
      }

      samples3 = [pathCopy samples];
      v24 = [samples3 count];

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
  samples4 = [pathCopy samples];
  v29 = samples4;
  if (v27)
  {
    [samples4 objectAtIndexedSubscript:v25];
  }

  else
  {
    [samples4 lastObject];
  }
  v30 = ;

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [v30 point];
  v33 = v32;
  v35 = v34;
  [v30 timeStamp];
  LODWORD(v36) = 5.0;
  v38 = [keyboardController2 performTouchUpAtLocation:0 radius:0 timestamp:0 pathIndex:v33 fingerID:v35 secondaryString:{v36, v37}];

  [logCopy registerPathStringAsKeyStrokes:v38 path:pathCopy predictionBarState:0];
}

- (void)_performRejectCandidate:(id)candidate timestamp:(double)timestamp typingLog:(id)log
{
  candidateCopy = candidate;
  [log logRejectedAutocorrection];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController rejectCandidate:candidateCopy];

  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
}

- (void)_performAcceptCandidate:(id)candidate timestamp:(double)timestamp typingLog:(id)log predictiveCandidate:(BOOL)predictiveCandidate intendedTransliteration:(id)transliteration
{
  predictiveCandidateCopy = predictiveCandidate;
  transliterationCopy = transliteration;
  logCopy = log;
  candidateCopy = candidate;
  candidate = [candidateCopy candidate];
  [logCopy logAcceptedCandidate:candidate intendedTransliterationCandidate:transliterationCopy];

  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController acceptCandidate:candidateCopy predictiveCandidate:predictiveCandidateCopy];

  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController2 generateAutocorrectionsOrCandidates];
}

- (id)_performGestureKeyInput:(id)input timestamp:(double)timestamp typingLog:(id)log
{
  inputCopy = input;
  logCopy = log;
  [logCopy beginKeystrokeWithIntendedKey:inputCopy touchEvent:0 touchError:0];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController addStringFromGestureKeyInput:inputCopy];

  inputCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", inputCopy];
  [logCopy finishKeystrokeWithTouchedKey:inputCopy touchEvent:0 insertedKey:inputCopy];

  return inputCopy;
}

- (id)_performVariantKey:(id)key timestamp:(double)timestamp typingLog:(id)log
{
  keyCopy = key;
  logCopy = log;
  [logCopy beginKeystrokeWithIntendedKey:keyCopy touchEvent:0 touchError:0];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController addStringFromVariantKey:keyCopy];

  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", keyCopy];
  [logCopy finishKeystrokeWithTouchedKey:keyCopy touchEvent:0 insertedKey:keyCopy];

  return keyCopy;
}

- (void)_skipTapTimestamp:(double)timestamp intendedKey:(id)key typingLog:(id)log
{
  logCopy = log;
  keyCopy = key;
  [keyCopy frame];
  v11 = v10;
  v13 = v12;
  v16 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:0 radius:-1 timestamp:? pathIndex:? forcedKeyCode:?];
  v14 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:0 radius:-1 timestamp:v11 pathIndex:v13 forcedKeyCode:{5.0, timestamp}];
  representedString = [keyCopy representedString];

  [logCopy beginKeystrokeWithIntendedKey:representedString touchEvent:v16 touchError:0];
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  [logCopy finishKeystrokeWithTouchedKey:@"<NoKey>" touchEvent:v14 insertedKey:&stru_287EC4808];
}

- (id)_performTouchEvent:(id)event typingLog:(id)log
{
  eventCopy = event;
  logCopy = log;
  stage = [eventCopy stage];
  [eventCopy location];
  v10 = v9;
  v12 = v11;
  [eventCopy radius];
  v14 = v13;
  [eventCopy timestamp];
  v16 = v15;
  pathIndex = [eventCopy pathIndex];
  fingerID = [eventCopy fingerID];
  switch(stage)
  {
    case 2:
      keyboardController = [(TIKeyboardTyper *)self keyboardController];
      *&v24 = v14;
      v22 = [keyboardController performTouchUpAtLocation:pathIndex radius:fingerID timestamp:0 pathIndex:v10 fingerID:v12 secondaryString:{v24, v16}];

      keyboardController2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      predictionBarCandidates = [(TIKeyboardTyper *)self predictionBarCandidates];
      if ([(TIKeyboardTyper *)self maxPredictionsReported]>= 1)
      {
        v26 = 0;
        do
        {
          if ([predictionBarCandidates count] <= v26)
          {
            break;
          }

          v27 = [predictionBarCandidates objectAtIndexedSubscript:v26];
          candidate = [v27 candidate];
          [keyboardController2 addObject:candidate];

          ++v26;
        }

        while (v26 < [(TIKeyboardTyper *)self maxPredictionsReported]);
      }

      [logCopy registerPathStringAsKeyStrokes:v22 path:0 predictionBarState:keyboardController2];

      goto LABEL_12;
    case 1:
      keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
      *&v21 = v14;
      [keyboardController2 performTouchDragAtLocation:pathIndex radius:fingerID timestamp:v10 pathIndex:v12 fingerID:{v21, v16}];
      goto LABEL_6;
    case 0:
      keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
      *&v20 = v14;
      [keyboardController2 performTouchDownAtLocation:pathIndex radius:fingerID timestamp:v10 pathIndex:v12 fingerID:{v20, v16}];
LABEL_6:
      v22 = &stru_287EC4808;
LABEL_12:

      goto LABEL_14;
  }

  v22 = &stru_287EC4808;
LABEL_14:
  [eventCopy timestamp];
  [(TIKeyboardTyper *)self setLastTimestamp:?];

  return v22;
}

- (id)_performTapAtLocation:(CGPoint)location timestamp:(double)timestamp intendedKey:(id)key touchedKey:(id)touchedKey secondaryString:(BOOL)string touchError:(id)error typingLog:(id)log
{
  stringCopy = string;
  y = location.y;
  x = location.x;
  keyCopy = key;
  touchedKeyCopy = touchedKey;
  errorCopy = error;
  logCopy = log;
  if (stringCopy)
  {
    secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
    firstObject = [secondaryRepresentedStrings firstObject];
  }

  else
  {
    firstObject = [keyCopy representedString];
  }

  v23 = [MEMORY[0x277D6F440] touchEventWithStage:0 location:0 radius:-1 timestamp:x pathIndex:y forcedKeyCode:{5.0, timestamp}];
  v47 = [firstObject isEqualToString:@"Delete"];
  text = [(TIKeyboardTyper *)self text];
  v48 = errorCopy;
  [logCopy beginKeystrokeWithIntendedKey:firstObject touchEvent:v23 touchError:errorCopy documentBefore:text];

  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  leftKeys = [keyboardController leftKeys];
  v27 = [leftKeys containsObject:keyCopy];

  if (v27)
  {
    v28 = 3;
  }

  else
  {
    keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
    rightKeys = [keyboardController2 rightKeys];
    v31 = [rightKeys containsObject:keyCopy];

    if (v31)
    {
      v28 = 9;
    }

    else
    {
      v28 = 0;
    }
  }

  if ([touchedKeyCopy interactionType] == 11)
  {
    keyboardController3 = [(TIKeyboardTyper *)self keyboardController];
    keyplane = [(TIKeyboardTyper *)self keyplane];
    v34 = [keyboardController3 keyCodeWithString:@"More" inKeyplane:keyplane];

    [(TIKeyboardTyper *)self lastTimestamp];
    v36 = v35;
    [(TIKeyboardTyper *)self interTouchTimestampInterval];
    v38 = v36 + v37;
    keyboardController4 = [(TIKeyboardTyper *)self keyboardController];
    LODWORD(v40) = 5.0;
    timestamp = [keyboardController4 performSkipTapAtLocation:0 radius:v28 timestamp:v34 pathIndex:x fingerID:y forcedKeyCode:{v40, v38}];

    userPersona = [(TIKeyboardTyper *)self userPersona];
    keyboardController5 = [(TIKeyboardTyper *)self keyboardController];
    keyplane2 = [keyboardController5 keyplane];
    [userPersona updateFromKeyplane:keyplane2];
  }

  else
  {
    timestamp = [(TIKeyboardTyper *)self _performTapAtLocation:v28 timestamp:stringCopy fingerID:x secondaryString:y, timestamp];
  }

  if (!timestamp)
  {
    timestamp = &stru_287EC4808;
  }

  if (!(v47 & 1 | (([(__CFString *)timestamp isEqualToString:@"\\b"]& 1) == 0)))
  {

    timestamp = @"\\B";
  }

  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  v45 = [MEMORY[0x277D6F440] touchEventWithStage:2 location:0 radius:-1 timestamp:x pathIndex:y forcedKeyCode:{5.0, timestamp}];
  [(TIKeyboardTyper *)self _finishKeystrokeAndRecordPredictionsInTypingLog:v45 touchedKey:touchedKeyCopy insertedKey:timestamp typingLog:logCopy];

  return timestamp;
}

- (void)_finishKeystrokeAndRecordPredictionsInTypingLog:(id)log touchedKey:(id)key insertedKey:(id)insertedKey typingLog:(id)typingLog
{
  v41 = *MEMORY[0x277D85DE8];
  logCopy = log;
  keyCopy = key;
  insertedKeyCopy = insertedKey;
  typingLogCopy = typingLog;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  predictionBarCandidates = [(TIKeyboardTyper *)self predictionBarCandidates];
  v15 = [predictionBarCandidates countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(predictionBarCandidates);
        }

        candidate = [*(*(&v35 + 1) + 8 * v18) candidate];
        [v12 addObject:candidate];

        ++v18;
      }

      while (v16 != v18);
      v16 = [predictionBarCandidates countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  inlineCompletionCandidates = [(TIKeyboardTyper *)self inlineCompletionCandidates];
  v21 = [inlineCompletionCandidates countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(inlineCompletionCandidates);
        }

        candidate2 = [*(*(&v31 + 1) + 8 * v24) candidate];
        [v13 addObject:candidate2];

        ++v24;
      }

      while (v22 != v24);
      v22 = [inlineCompletionCandidates countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  if (keyCopy)
  {
    v26 = [(TIKeyboardTyper *)self _logStringForTouchedKey:keyCopy];
  }

  else
  {
    v26 = insertedKeyCopy;
  }

  v27 = v26;
  v28 = typingLogCopy;
  [typingLogCopy finishKeystrokeWithTouchedKey:v26 touchEvent:logCopy insertedKey:insertedKeyCopy predictionBarState:v12 inlineCompletionBarState:{v13, typingLogCopy}];
}

- (id)keyContainingPoint:(CGPoint)point inKeyplane:(id)keyplane
{
  y = point.y;
  x = point.x;
  keyplaneCopy = keyplane;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  v9 = [keyboardController keyContainingPoint:keyplaneCopy inKeyplane:{x, y}];

  return v9;
}

- (CGPoint)pointForAttemptedTapOnKey:(id)key withError:(id)error
{
  errorCopy = error;
  keyCopy = key;
  [keyCopy paddedFrame];
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
  userPersona = [(TIKeyboardTyper *)self userPersona];

  if (userPersona)
  {
    userPersona2 = [(TIKeyboardTyper *)self userPersona];
    [userPersona2 userPointForKey:keyCopy];
    MidX = v16;
    MidY = v17;
  }

  else
  {
    keyboardController = [(TIKeyboardTyper *)self keyboardController];
    layoutUtils = [keyboardController layoutUtils];
    keyplane = [(TIKeyboardTyper *)self keyplane];
    userPersona2 = [layoutUtils representedStringForKey:keyCopy shifted:{objc_msgSend(keyplane, "isShiftKeyplane")}];

    if (errorCopy && ([userPersona2 isEqualToString:@"\n"] & 1) == 0)
    {
      [errorCopy applyToPoint:{MidX, MidY}];
      MidX = v21;
      MidY = v22;
    }

    keyboard = [(TIKeyboardTyper *)self keyboard];
    name = [keyboard name];
    v25 = [name hasPrefix:@"Dynamic"];

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

      keyboard2 = [(TIKeyboardTyper *)self keyboard];
      [keyboard2 frame];
      v28 = v27;

      if (MidX > v28)
      {
        keyboard3 = [(TIKeyboardTyper *)self keyboard];
        [keyboard3 frame];
        MidX = CGRectGetMaxX(v39);
      }

      keyboard4 = [(TIKeyboardTyper *)self keyboard];
      [keyboard4 frame];
      v32 = v31;

      if (MidY > v32)
      {
        keyboard5 = [(TIKeyboardTyper *)self keyboard];
        [keyboard5 frame];
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

- (id)_keyplaneCloserToKeyWithString:(id)string
{
  stringCopy = string;
  keyplane = [(TIKeyboardTyper *)self keyplane];
  componentName = [keyplane componentName];
  lowercaseString = [componentName lowercaseString];

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:lowercaseString forKey:lowercaseString];
  v9 = [MEMORY[0x277CBEB18] arrayWithObjects:{lowercaseString, 0}];
  while ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    [v9 removeObjectAtIndex:0];
    keyboard = [(TIKeyboardTyper *)self keyboard];
    v12 = [keyboard subtreeWithName:v10];

    v13 = [(TIKeyboardTyper *)self keyWithString:stringCopy inKeyplane:v12];

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

      while (![v15 isEqualToString:lowercaseString]);
      keyboard2 = [(TIKeyboardTyper *)self keyboard];
      v18 = [keyboard2 subtreeWithName:v14];
    }

    else
    {
      keyboardController = [(TIKeyboardTyper *)self keyboardController];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__TIKeyboardTyper__keyplaneCloserToKeyWithString___block_invoke;
      v21[3] = &unk_279DA0BF0;
      v22 = v8;
      v14 = v10;
      v23 = v14;
      v24 = v9;
      [keyboardController enumerateKeyplaneNamesAdjacentToKeyplane:v12 usingBlock:v21];

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
  keyplane = [(TIKeyboardTyper *)self keyplane];
  isAlphabeticPlane = [keyplane isAlphabeticPlane];

  if ((isAlphabeticPlane & 1) == 0)
  {
    keyboard = [(TIKeyboardTyper *)self keyboard];
    keyplane2 = [(TIKeyboardTyper *)self keyplane];
    alternateKeyplaneName = [keyplane2 alternateKeyplaneName];
    v8 = [keyboard subtreeWithName:alternateKeyplaneName];

    if ([v8 isAlphabeticPlane])
    {
      [(TIKeyboardTyper *)self attemptToTapMoreKey];
    }
  }

  keyplane3 = [(TIKeyboardTyper *)self keyplane];
  isAlphabeticPlane2 = [keyplane3 isAlphabeticPlane];

  return isAlphabeticPlane2;
}

- (BOOL)changeToNearestKeyplaneWithString:(id)string
{
  stringCopy = string;
  keyplane = [(TIKeyboardTyper *)self keyplane];
  v6 = [(TIKeyboardTyper *)self keyWithString:stringCopy inKeyplane:keyplane];
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
      v8 = [(TIKeyboardTyper *)self keyToAccessKeyplaneCloserToKeyString:stringCopy];

      if (!v8)
      {
        break;
      }

      representedString = [v8 representedString];
      [(TIKeyboardTyper *)self attemptTapOnKeyWithString:representedString withErrorGenerator:0 typingLog:0];

      keyplane = [(TIKeyboardTyper *)self keyplane];
      v11 = [(TIKeyboardTyper *)self keyWithString:stringCopy inKeyplane:keyplane];
      if (v11)
      {
        v7 = v11;

        goto LABEL_7;
      }
    }
  }

  keyplane2 = [(TIKeyboardTyper *)self keyplane];
  v13 = [(TIKeyboardTyper *)self keyWithString:stringCopy inKeyplane:keyplane2];
  v14 = v13 != 0;

  return v14;
}

- (id)keyToAccessKeyplaneCloserToKeyString:(id)string
{
  v4 = [(TIKeyboardTyper *)self _keyplaneCloserToKeyWithString:string];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyplane = [(TIKeyboardTyper *)self keyplane];
  v7 = [keyboardController keyToAccessKeyplane:v4 fromKeyplane:keyplane];

  return v7;
}

- (id)shiftKeyToAccessKeyplaneCloserToKeyString:(id)string
{
  stringCopy = string;
  keyplane = [(TIKeyboardTyper *)self keyplane];
  if (![keyplane isAlphabeticPlane])
  {
    goto LABEL_6;
  }

  keyplane2 = [(TIKeyboardTyper *)self keyplane];
  isShiftKeyplane = [keyplane2 isShiftKeyplane];

  if (isShiftKeyplane)
  {
    v8 = 0;
    goto LABEL_8;
  }

  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  keyplane3 = [(TIKeyboardTyper *)self keyplane];
  keyplane = [layoutUtils exactKeyForString:stringCopy keyplane:keyplane3 includeSecondaryStrings:1];

  if (keyplane)
  {
    keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
    keyplane4 = [keyboardController2 keyplane];
    v8 = [keyplane4 firstCachedKeyWithName:@"Shift-Key"];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)keyWithString:(id)string inKeyplane:(id)keyplane includeSecondaryStrings:(BOOL)strings
{
  stringsCopy = strings;
  keyplaneCopy = keyplane;
  stringCopy = string;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  v12 = [layoutUtils exactKeyForString:stringCopy keyplane:keyplaneCopy includeSecondaryStrings:stringsCopy];

  return v12;
}

- (id)keyWithString:(id)string inKeyplane:(id)keyplane
{
  stringCopy = string;
  keyplaneCopy = keyplane;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  v10 = [layoutUtils exactKeyForString:stringCopy keyplane:keyplaneCopy includeSecondaryStrings:0];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  keyboard = [keyboardController2 keyboard];
  name = [keyboard name];
  v14 = [name containsString:@"-With-"];

  if (!v10 && v14)
  {
    keyboardController3 = [(TIKeyboardTyper *)self keyboardController];
    layoutUtils2 = [keyboardController3 layoutUtils];
    v10 = [layoutUtils2 exactKeyForString:stringCopy keyplane:keyplaneCopy includeSecondaryStrings:1];
  }

  return v10;
}

- (UIKBTree)keyplane
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyplane = [keyboardController keyplane];

  return keyplane;
}

- (UIKBTree)keyboard
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyboard = [keyboardController keyboard];

  return keyboard;
}

- (id)performTouchUpAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d secondaryString:(BOOL)string
{
  stringCopy = string;
  v9 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v17 = radius;
  v18 = [keyboardController performTouchUpAtLocation:index radius:v9 timestamp:stringCopy pathIndex:x fingerID:y secondaryString:{v17, timestamp}];

  return v18;
}

- (void)performTouchEndRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = radius;
  [keyboardController performTouchEndRestAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:{v14, timestamp}];
}

- (void)performTouchRestAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = radius;
  [keyboardController performTouchRestAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:{v14, timestamp}];
}

- (void)performTouchCancelAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v14 = radius;
  [keyboardController performTouchCancelAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:{v14, timestamp}];
}

- (int64_t)performTouchDragAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v15 = radius;
  v16 = [keyboardController performTouchDragAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:{v15, timestamp}];

  return v16;
}

- (int64_t)performTouchDownAtLocation:(CGPoint)location radius:(float)radius timestamp:(double)timestamp pathIndex:(unint64_t)index fingerID:(int)d
{
  v7 = *&d;
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self setLastTimestamp:timestamp];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  *&v15 = radius;
  v16 = [keyboardController performTouchDownAtLocation:index radius:v7 timestamp:x pathIndex:y fingerID:{v15, timestamp}];

  return v16;
}

- (TIKeyboardCandidateResultSet)candidateResultSet
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  candidateResultSet = [keyboardController candidateResultSet];

  return candidateResultSet;
}

- (NSArray)inlineCompletionCandidates
{
  autocorrectionList = [(TIKeyboardTyper *)self autocorrectionList];
  inlineCompletions = [autocorrectionList inlineCompletions];

  return inlineCompletions;
}

- (id)predictationBarDebugString
{
  v35 = *MEMORY[0x277D85DE8];
  predictionBarCandidates = [(TIKeyboardTyper *)self predictionBarCandidates];
  if ([predictionBarCandidates count] && -[TIKeyboardTyper showsCandidateBar](self, "showsCandidateBar"))
  {
    v4 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = predictionBarCandidates;
    obj = predictionBarCandidates;
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
            lexiconLocale = [v13 lexiconLocale];

            if (lexiconLocale)
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

          candidate = [v11 candidate];
          v23 = [candidate stringByAppendingString:v12];
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

    predictionBarCandidates = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (NSArray)predictionBarCandidates
{
  candidateBarCandidates = [(TIKeyboardTyper *)self candidateBarCandidates];
  if (candidateBarCandidates)
  {
    if ([(TIKeyboardTyper *)self inPartialCandidateSelection])
    {
      maxPredictions = [candidateBarCandidates count];
    }

    else
    {
      maxPredictions = [(TIKeyboardTyper *)self maxPredictions];
    }

    v10 = maxPredictions;
    v11 = [candidateBarCandidates count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v5 = [candidateBarCandidates subarrayWithRange:{0, v12}];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TIKeyboardTyper maxPredictions](self, "maxPredictions")}];
    autocorrection = [(TIKeyboardTyper *)self autocorrection];
    autocorrection2 = [(TIKeyboardTyper *)self autocorrection];
    isAutocorrection = [autocorrection2 isAutocorrection];

    if (isAutocorrection)
    {
      v9 = 1;
    }

    else
    {
      input = [autocorrection input];
      v9 = [input length] != 0;
    }

    objc_opt_class();
    v62 = autocorrection;
    if (objc_opt_isKindOfClass())
    {
      locale = [(TIKeyboardTyper *)self locale];
      languageCode = [locale languageCode];
      if ([languageCode isEqualToString:@"ko"])
      {
        v59 = 0;
      }

      else
      {
        locale2 = [(TIKeyboardTyper *)self locale];
        languageCode2 = [locale2 languageCode];
        v59 = [languageCode2 isEqualToString:@"th"] ^ 1;

        autocorrection = v62;
      }
    }

    else
    {
      v59 = 0;
    }

    autocorrectionList = [(TIKeyboardTyper *)self autocorrectionList];
    predictions = [autocorrectionList predictions];

    if ([predictions count])
    {
      v20 = [predictions objectAtIndex:0];
      isContinuousPathConversion = [v20 isContinuousPathConversion];
      v9 &= isContinuousPathConversion ^ 1;
      isAutocorrection &= isContinuousPathConversion ^ 1;
    }

    maxPredictions2 = [(TIKeyboardTyper *)self maxPredictions];
    v23 = maxPredictions2;
    v24 = v9 & (maxPredictions2 != 0);
    v63 = isAutocorrection;
    if (maxPredictions2 == v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = isAutocorrection;
    }

    v61 = maxPredictions2 - v24;
    v26 = maxPredictions2 - v24 - v25;
    autocorrectionList2 = [(TIKeyboardTyper *)self autocorrectionList];
    emojiList = [autocorrectionList2 emojiList];

    v29 = [emojiList count];
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
    v35 = [predictions count];
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
      input2 = [autocorrection input];
      v41 = [v39 candidateWithUnchangedInput:input2];

      autocorrection = v62;
      [v5 addObject:v41];
    }

    if ((v63 | v59))
    {
      [v5 addObject:autocorrection];
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
        v45 = [predictions objectAtIndex:v42];
        v46 = v45;
        if (v45 && [v45 slotID])
        {
          mEMORY[0x277D6FE30] = [MEMORY[0x277D6FE30] sharedInstance];
          secureCandidateRenderer = [mEMORY[0x277D6FE30] secureCandidateRenderer];

          if (secureCandidateRenderer)
          {
            v49 = [secureCandidateRenderer cachedCandidateForSecureCandidate:v46];
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
        v55 = [emojiList objectAtIndex:v51];
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
  candidateResultSet = [(TIKeyboardTyper *)self candidateResultSet];
  candidates = [candidateResultSet candidates];

  return candidates;
}

- (TIKeyboardCandidate)autocorrection
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  autocorrection = [keyboardController autocorrection];

  return autocorrection;
}

- (void)acceptCandidateViaKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:keyboardCopy timestamp:0 typingLog:?];

  v9 = objc_alloc_init(MEMORY[0x277D6F3E8]);
  [v9 setString:@"\n"];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputManager = [keyboardController inputManager];
  v7 = [inputManager handleKeyboardInput:v9];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController2 generateAutocorrectionsOrCandidates];
}

- (void)acceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:candidateCopy timestamp:0 typingLog:?];
}

- (void)acceptPredictiveCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptPredictiveCandidate:candidateCopy timestamp:0 typingLog:?];
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate mode:(id)mode
{
  modeCopy = mode;
  candidateCopy = candidate;
  learningCopy = learning;
  inputManager = [(TIKeyboardTyper *)self inputManager];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyboardState = [keyboardController keyboardState];
  [inputManager registerLearning:learningCopy fullCandidate:candidateCopy keyboardState:keyboardState mode:modeCopy];
}

- (void)candidateRejected:(id)rejected
{
  rejectedCopy = rejected;
  inputManager = [(TIKeyboardTyper *)self inputManager];
  [inputManager candidateRejected:rejectedCopy];
}

- (void)rejectAutocorrection
{
  autocorrection = [(TIKeyboardTyper *)self autocorrection];
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performRejectCandidate:autocorrection timestamp:0 typingLog:?];
}

- (void)acceptAutocorrection
{
  autocorrection = [(TIKeyboardTyper *)self autocorrection];
  [(TIKeyboardTyper *)self lastTimestamp];
  [(TIKeyboardTyper *)self _performAcceptCandidate:autocorrection timestamp:0 typingLog:?];
}

- (void)attemptToRapidDeleteCharacters:(unsigned int)characters
{
  if (characters)
  {
    [(TIKeyboardTyper *)self attemptToDelete];
    v5 = characters - 1;
    if (characters != 1)
    {
      while (1)
      {
        inputManager = [(TIKeyboardTyper *)self inputManager];
        keyboardState = [inputManager keyboardState];
        documentState = [keyboardState documentState];

        contextBeforeInput = [documentState contextBeforeInput];
        if (![contextBeforeInput length])
        {
          break;
        }

        v9 = MEMORY[0x277D6F350];
        v10 = [contextBeforeInput substringToIndex:{objc_msgSend(contextBeforeInput, "length") - 1}];
        contextAfterInput = [documentState contextAfterInput];
        v12 = [v9 documentStateWithContextBefore:v10 selectedText:&stru_287EC4808 contextAfter:contextAfterInput];

        [(TIKeyboardTyper *)self syncToDocumentState:v12];
        if (!--v5)
        {
          return;
        }
      }
    }
  }
}

- (void)attemptToDeleteWithCount:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      [(TIKeyboardTyper *)self attemptTapOnKeyWithString:@"Delete" withErrorGenerator:0 typingLog:0];
      --countCopy;
    }

    while (countCopy);
  }
}

- (id)performTapAtKey:(id)key biasedTowards:(id)towards biasWeight:(float)weight
{
  towardsCopy = towards;
  keyCopy = key;
  [(TIKeyboardTyper *)self lastTimestamp];
  v11 = v10;
  [(TIKeyboardTyper *)self interTouchTimestampInterval];
  v13 = v12;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyplane = [keyboardController keyplane];

  v16 = [(TIKeyboardTyper *)self keyWithString:keyCopy inKeyplane:keyplane];

  [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v16 withError:0];
  v18 = v17;
  v20 = v19;
  v21 = [(TIKeyboardTyper *)self keyWithString:towardsCopy inKeyplane:keyplane];

  [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v21 withError:0];
  v23 = v22;
  v25 = v24;
  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  leftKeys = [keyboardController2 leftKeys];
  v28 = [leftKeys containsObject:v16];

  if (v28)
  {
    v29 = 3;
  }

  else
  {
    keyboardController3 = [(TIKeyboardTyper *)self keyboardController];
    rightKeys = [keyboardController3 rightKeys];
    v32 = [rightKeys containsObject:v16];

    if (v32)
    {
      v29 = 9;
    }

    else
    {
      v29 = 0;
    }
  }

  weightCopy = weight;
  v34 = v20 + weight * (v25 - v20);
  v35 = v18 + weightCopy * (v23 - v18);
  v36 = v11 + v13;
  keyboardController4 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v38) = 5.0;
  [keyboardController4 performTouchDownAtLocation:0 radius:v29 timestamp:v35 pathIndex:v34 fingerID:{v38, v36}];

  keyboardController5 = [(TIKeyboardTyper *)self keyboardController];
  LODWORD(v40) = 5.0;
  v41 = [keyboardController5 performTouchUpAtLocation:0 radius:v29 timestamp:0 pathIndex:v35 fingerID:v34 secondaryString:{v40, v36}];

  [(TIKeyboardTyper *)self setLastTimestamp:v36];

  return v41;
}

- (id)performTapAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(TIKeyboardTyper *)self lastTimestamp];
  v7 = v6;
  [(TIKeyboardTyper *)self interTouchTimestampInterval];
  v9 = v7 + v8;
  v10 = [(TIKeyboardTyper *)self _performTapAtLocation:0 timestamp:0 fingerID:x secondaryString:y, v9];
  [(TIKeyboardTyper *)self setLastTimestamp:v9];

  return v10;
}

- (void)attemptTapOnKeyWithString:(id)string withErrorGenerator:(id)generator typingLog:(id)log
{
  logCopy = log;
  stringCopy = string;
  keyplane = [(TIKeyboardTyper *)self keyplane];
  v9 = [(TIKeyboardTyper *)self keyWithString:stringCopy inKeyplane:keyplane];

  if (v9)
  {
    [(TIKeyboardTyper *)self lastTimestamp];
    v11 = v10;
    [(TIKeyboardTyper *)self interTouchTimestampInterval];
    v13 = v11 + v12;
    errorGenerator = [(TIKeyboardTyper *)self errorGenerator];
    representedString = [v9 representedString];
    [v9 paddedFrame];
    v16 = [errorGenerator errorForKeyString:representedString rect:?];

    [(TIKeyboardTyper *)self pointForAttemptedTapOnKey:v9 withError:v16];
    v18 = v17;
    v20 = v19;
    keyplane2 = [(TIKeyboardTyper *)self keyplane];
    v22 = [(TIKeyboardTyper *)self keyContainingPoint:keyplane2 inKeyplane:v18, v20];

    if (v22)
    {
      v23 = [(TIKeyboardTyper *)self _performTapAtLocation:v9 timestamp:v22 intendedKey:0 touchedKey:v16 secondaryString:logCopy touchError:v18 typingLog:v20, v13];
    }

    else
    {
      [(TIKeyboardTyper *)self _skipTapTimestamp:v9 intendedKey:logCopy typingLog:v13];
    }

    [(TIKeyboardTyper *)self setLastTimestamp:v13];
  }
}

- (void)attemptTapOnKeyWithString:(id)string
{
  stringCopy = string;
  errorGenerator = [(TIKeyboardTyper *)self errorGenerator];
  [(TIKeyboardTyper *)self attemptTapOnKeyWithString:stringCopy withErrorGenerator:errorGenerator typingLog:0];
}

- (void)attemptToStrokeWord:(id)word startTime:(double)time duration:(double)duration typingLog:(id)log callback:(id)callback
{
  callbackCopy = callback;
  logCopy = log;
  wordCopy = word;
  v15 = [wordCopy substringWithRange:{0, 1}];
  [(TIKeyboardTyper *)self changeToNearestKeyplaneWithString:v15];

  v21 = [TTKDefaultContinuousPathGenerator pathGeneratorWithAttributes:MEMORY[0x277CBEC10]];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  layoutUtils = [keyboardController layoutUtils];
  keyplane = [(TIKeyboardTyper *)self keyplane];
  v19 = [layoutUtils createTTKPlane:keyplane];

  v20 = [v21 generatePathFromString:wordCopy timestamp:v19 duration:time layout:duration];

  [(TIKeyboardTyper *)self performStrokeForPath:v20 typingLog:logCopy callback:callbackCopy];
}

- (void)attemptToTapKeys:(id)keys
{
  v16 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        errorGenerator = [(TIKeyboardTyper *)self errorGenerator];
        [(TIKeyboardTyper *)self attemptTapOnKeyWithString:v9 withErrorGenerator:errorGenerator typingLog:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [keysCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)attemptToTypeIntended:(id)intended expected:(id)expected typingLog:(id)log
{
  expectedCopy = expected;
  logCopy = log;
  intendedCopy = intended;
  v10 = [intendedCopy componentsJoinedByString:&stru_287EC4808];
  v11 = [expectedCopy componentsJoinedByString:&stru_287EC4808];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"----->> %@ -> %@", v10, v11];
  v13 = TIPrintTypingTranscriptToStdout();
  v14 = MEMORY[0x277D85E08];
  if ((v13 & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
  {
    fprintf(*v14, "%s\n", [v12 UTF8String]);
  }

  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  [userActionStream resetForIntendedSegments:intendedCopy expectedSegments:expectedCopy];

  [(TIKeyboardTyper *)self attemptToTypeWithLog:logCopy];
  if ([(TIKeyboardTyper *)self printTranslitSummaries])
  {
    fprintf(*v14, "input   : %s\n", [v10 UTF8String]);
    fprintf(*v14, "expected: %s\n", [v11 UTF8String]);
    v16 = *v14;
    text = [(TIKeyboardTyper *)self text];
    fprintf(v16, "actual  : %s\n\n", [text UTF8String]);
  }
}

- (void)attemptToTypeText:(id)text typingLog:(id)log
{
  textCopy = text;
  logCopy = log;
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  [userActionStream setIntendedText:textCopy];

  if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
  {
    fprintf(*MEMORY[0x277D85E08], "----->> %s\n", [textCopy UTF8String]);
  }

  [(TIKeyboardTyper *)self attemptToTypeWithLog:logCopy];
}

- (void)attemptToTypeWithLog:(id)log
{
  logCopy = log;
  if ((TILogProblemSentencesToStdout() & 1) != 0 || ([(TIKeyboardTyper *)self badSentenceLogFilePath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [TIProgressTracker alloc];
    userActionStream = [(TIKeyboardTyper *)self userActionStream];
    intendedText = [userActionStream intendedText];
    badSentenceLogFilePath = [(TIKeyboardTyper *)self badSentenceLogFilePath];
    v4 = [(TIProgressTracker *)v5 initWithIntendedString:intendedText repeatLimit:4 timeout:badSentenceLogFilePath badSentencePath:1500.0];
  }

  nextUserAction = 0;
  v10 = MEMORY[0x277D85E08];
  do
  {
    v11 = nextUserAction;
    userActionStream2 = [(TIKeyboardTyper *)self userActionStream];
    nextUserAction = [userActionStream2 nextUserAction];

    if (!nextUserAction)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    [logCopy setTokenIndex:{objc_msgSend(nextUserAction, "inputSegment")}];
    if ([(TIKeyboardTyper *)self warnIfSelectingPopupVariant])
    {
      NSClassFromString(&cfstr_Actselectpopup.isa);
      if (objc_opt_isKindOfClass())
      {
        v14 = *MEMORY[0x277D85DF8];
        v15 = [nextUserAction description];
        fprintf(v14, "WARNING! Typer is selecting a pop-up key variant: %s. This may indicate a keyboard layout mis-configuration.\n", [v15 UTF8String]);
      }
    }

    predictationBarDebugString = [(TIKeyboardTyper *)self predictationBarDebugString];
    if (predictationBarDebugString && ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript]))
    {
      fputs([predictationBarDebugString UTF8String], *v10);
    }

    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      v17 = *v10;
      shortDescription = [nextUserAction shortDescription];
      shortDescription2 = [nextUserAction shortDescription];
      v20 = [shortDescription2 length] - 1;

      if (v20 >= 0x2D)
      {
        v21 = 45;
      }

      else
      {
        v21 = v20;
      }

      v22 = [shortDescription substringToIndex:v21];
      fprintf(v17, "%-45s\t", [v22 UTF8String]);
    }

    [nextUserAction applyWithTyper:self log:logCopy];
    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      v23 = *v10;
      text = [(TIKeyboardTyper *)self text];
      fprintf(v23, ">>> %s", [text UTF8String]);
    }

    keyboardController = [(TIKeyboardTyper *)self keyboardController];
    justAcceptedAutocorrection = [keyboardController justAcceptedAutocorrection];

    if (justAcceptedAutocorrection)
    {
      if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
      {
        fwrite("\t\t\t<autocorrect>", 0x10uLL, 1uLL, *v10);
      }

      keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
      [keyboardController2 setJustAcceptedAutocorrection:0];

      [logCopy logAutocorrectionInserted];
    }

    if ((TIPrintTypingTranscriptToStdout() & 1) != 0 || [(TIKeyboardTyper *)self printTypingTranscript])
    {
      fputc(10, *v10);
    }

    v28 = MEMORY[0x277CCACA8];
    text2 = [(TIKeyboardTyper *)self text];
    v30 = [v28 stringWithString:text2];
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
    text3 = [(TIKeyboardTyper *)self text];
    fprintf(v32, "%-45s\t>>> %s。\t\t END\n\n", " ", [text3 UTF8String]);
  }
}

- (void)suspendAndResume
{
  inputManager = [(TIKeyboardTyper *)self inputManager];
  [inputManager suspend];

  inputManager2 = [(TIKeyboardTyper *)self inputManager];
  [inputManager2 resume];
}

- (void)syncToEmptyDocument
{
  v3 = [objc_alloc(MEMORY[0x277D6F350]) initWithContextBefore:&stru_287EC4808 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
  [(TIKeyboardTyper *)self syncToDocumentState:v3];
}

- (void)syncToDocumentState:(id)state
{
  stateCopy = state;
  [(TIKeyboardTyper *)self setLastTimestamp:0.0];
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController syncToDocumentState:stateCopy];
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  [(TIKeyboardTyper *)self setLastTimestamp:0.0];
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  [userActionStream setIntendedText:&stru_287EC4808];

  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController reset];

  userPersona = [(TIKeyboardTyper *)self userPersona];
  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  keyplane = [keyboardController2 keyplane];
  [userPersona updateFromKeyplane:keyplane];

  objc_autoreleasePoolPop(v3);
}

- (void)setLastInputWasSelection:(BOOL)selection
{
  selectionCopy = selection;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setLastInputWasSelection:selectionCopy];
}

- (BOOL)lastInputWasSelection
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  lastInputWasSelection = [keyboardController lastInputWasSelection];

  return lastInputWasSelection;
}

- (void)setErrorGenerator:(id)generator
{
  generatorCopy = generator;
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  [userActionStream setErrorGenerator:generatorCopy];

  [generatorCopy setKeyboardInfoDelgate:self->_keyboardController];
}

- (TIErrorGenerator)errorGenerator
{
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  errorGenerator = [userActionStream errorGenerator];

  return errorGenerator;
}

- (void)setUserModel:(id)model
{
  modelCopy = model;
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  [userActionStream setUserModel:modelCopy];
}

- (TIKeyboardTyperUserModel)userModel
{
  userActionStream = [(TIKeyboardTyper *)self userActionStream];
  userModel = [userActionStream userModel];

  return userModel;
}

- (void)linkWithUserActionStream:(id)stream
{
  streamCopy = stream;
  userActionStream = self->_userActionStream;
  if (userActionStream != streamCopy)
  {
    [(ACTUserActionStreaming *)userActionStream setDelegate:0];
    objc_storeStrong(&self->_userActionStream, stream);
    [(ACTUserActionStreaming *)self->_userActionStream setDelegate:self];
    keyboardController = self->_keyboardController;
    errorGenerator = [(ACTUserActionStreaming *)self->_userActionStream errorGenerator];
    [errorGenerator setKeyboardInfoDelgate:keyboardController];
  }

  MEMORY[0x2821F96F8]();
}

- (void)tearDown
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController tearDown];

  keyboardController = self->_keyboardController;
  self->_keyboardController = 0;
}

- (void)dealloc
{
  inputManager = [(TIKeyboardTyper *)self inputManager];
  [inputManager suspend];

  v4.receiver = self;
  v4.super_class = TIKeyboardTyper;
  [(TIKeyboardTyper *)&v4 dealloc];
}

- (TIKeyboardTyper)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v16.receiver = self;
  v16.super_class = TIKeyboardTyper;
  v6 = [(TIKeyboardTyper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputMode, mode);
    v8 = [[ACTKeyboardController alloc] initWithInputMode:modeCopy];
    keyboardController = v7->_keyboardController;
    v7->_keyboardController = v8;

    locale = [modeCopy locale];
    v11 = [locale copy];
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

- (void)attemptToTapPredictionWithLiteral:(id)literal
{
  v4 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:literal];
  [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v4];
}

- (BOOL)attemptToTapAutocorrectionWithString:(id)string
{
  stringCopy = string;
  autocorrection = [(TIKeyboardTyper *)self autocorrection];
  autocorrection2 = [(TIKeyboardTyper *)self autocorrection];
  isAutocorrection = [autocorrection2 isAutocorrection];

  if (isAutocorrection && ([autocorrection candidate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", stringCopy), v8, v9))
  {
    [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:autocorrection];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)attemptToTapPredictionBarCandidateWithString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  predictionBarCandidates = [(TIKeyboardTyper *)self predictionBarCandidates];
  v6 = [predictionBarCandidates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(predictionBarCandidates);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        candidate = [v10 candidate];
        v12 = [candidate isEqualToString:stringCopy];

        if (v12)
        {
          [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v10];
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [predictionBarCandidates countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)attemptToTapPredictionWithString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  predictions = [(TIKeyboardTyper *)self predictions];
  v6 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(predictions);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        candidate = [v10 candidate];
        v12 = [candidate isEqualToString:stringCopy];

        if (v12)
        {
          [(TIKeyboardTyper *)self acceptCandidateFromPredictionBar:v10];
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)acceptCandidateFromPredictionBar:(id)bar
{
  v4 = MEMORY[0x277D6F3E8];
  barCopy = bar;
  v6 = objc_alloc_init(v4);
  [v6 setString:@" "];
  [v6 setAcceptedCandidate:barCopy];

  [v6 setSynthesizedByAcceptingCandidate:1];
  [(TIKeyboardTyper *)self acceptCandidateInputEvent:v6 fromCandidateBar:1];
}

- (void)acceptCandidateInputEvent:(id)event fromCandidateBar:(BOOL)bar
{
  barCopy = bar;
  eventCopy = event;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController acceptCandidateInputEvent:eventCopy fromCandidateBar:barCopy];
}

- (BOOL)hasPrediction:(id)prediction
{
  predictionCopy = prediction;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  v6 = [keyboardController hasPrediction:predictionCopy];

  return v6;
}

- (id)candidatesForString:(id)string
{
  stringCopy = string;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  v6 = [keyboardController candidatesForString:stringCopy];

  return v6;
}

- (void)generateAutocorrectionsWithShiftState:(int)state
{
  v3 = *&state;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController generateAutocorrectionsWithShiftState:v3];
}

- (void)generateCandidates
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController generateAutocorrectionsOrCandidates];
}

- (void)setAutocorrectionList:(id)list
{
  listCopy = list;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setAutocorrectionList:listCopy];
}

- (TIAutocorrectionList)autocorrectionList
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  autocorrectionList = [keyboardController autocorrectionList];

  return autocorrectionList;
}

- (NSArray)predictions
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  predictions = [keyboardController predictions];

  return predictions;
}

- (id)displayStringOverrideForKey:(id)key
{
  keyCopy = key;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  v6 = [keyboardController displayStringOverrideForKey:keyCopy];

  return v6;
}

- (unint64_t)cursorLocationInMarkedText
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyboardState = [keyboardController keyboardState];
  documentState = [keyboardState documentState];
  selectedRangeInMarkedText = [documentState selectedRangeInMarkedText];

  return selectedRangeInMarkedText;
}

- (void)adjustPhraseBoundaryByOffset:(int64_t)offset granularity:(int)granularity
{
  if (offset)
  {
    v4 = *&granularity;
    if (offset >= 0)
    {
      offsetCopy = offset;
    }

    else
    {
      offsetCopy = -offset;
    }

    v7 = offset >> 63;
    do
    {
      [(TIKeyboardTyper *)self adjustPhraseBoundaryInForwardDirection:v7 ^ 1 granularity:v4];
      --offsetCopy;
    }

    while (offsetCopy);
  }
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController adjustPhraseBoundaryInForwardDirection:directionCopy granularity:v4];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController2 generateAutocorrectionsOrCandidates];
}

- (void)adjustCursorByOffset:(int64_t)offset
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController adjustCursorByOffset:offset];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController2 generateAutocorrectionsOrCandidates];
}

- (void)commitText
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController commitText];
}

- (void)insertText:(id)text
{
  textCopy = text;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController insertText:textCopy];
}

- (NSString)markedText
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  markedText = [keyboardController markedText];

  return markedText;
}

- (void)setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setSelectedRange:{location, length}];

  keyboardController2 = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController2 generateAutocorrectionsOrCandidates];
}

- (_NSRange)selectedRange
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  selectedRange = [keyboardController selectedRange];
  v5 = v4;

  v6 = selectedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)text
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  text = [keyboardController text];

  return text;
}

- (id)mapShiftedKeyToUnShiftedKeyExcludeCapitalization:(id)capitalization
{
  capitalizationCopy = capitalization;
  shiftedKeyToUnShiftedKeyExcludeCapitalizationMap = [(TIKeyboardTyper *)self shiftedKeyToUnShiftedKeyExcludeCapitalizationMap];

  if (shiftedKeyToUnShiftedKeyExcludeCapitalizationMap)
  {
    shiftedKeyToUnShiftedKeyExcludeCapitalizationMap2 = [(TIKeyboardTyper *)self shiftedKeyToUnShiftedKeyExcludeCapitalizationMap];
    v7 = [shiftedKeyToUnShiftedKeyExcludeCapitalizationMap2 objectForKey:capitalizationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setInsertsSpaceAfterPredictiveInput:(BOOL)input
{
  inputCopy = input;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setInsertsSpaceAfterPredictiveInput:inputCopy];
}

- (BOOL)insertsSpaceAfterPredictiveInput
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  insertsSpaceAfterPredictiveInput = [keyboardController insertsSpaceAfterPredictiveInput];

  return insertsSpaceAfterPredictiveInput;
}

- (void)setUsesTransliteration:(BOOL)transliteration
{
  transliterationCopy = transliteration;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setUsesTransliteration:transliterationCopy];
}

- (BOOL)usesTransliteration
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  usesTransliteration = [keyboardController usesTransliteration];

  return usesTransliteration;
}

- (void)setLongPredictionListEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setLongPredictionListEnabled:enabledCopy];
}

- (BOOL)longPredictionListEnabled
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  longPredictionListEnabled = [keyboardController longPredictionListEnabled];

  return longPredictionListEnabled;
}

- (void)setShouldSkipCandidateSelection:(BOOL)selection
{
  selectionCopy = selection;
  if (selection)
  {
    [(TIKeyboardTyper *)self acceptAutocorrection];
  }

  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setShouldSkipCandidateSelection:selectionCopy];
}

- (BOOL)shouldSkipCandidateSelection
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  shouldSkipCandidateSelection = [keyboardController shouldSkipCandidateSelection];

  return shouldSkipCandidateSelection;
}

- (void)setHardwareKeyboardMode:(BOOL)mode
{
  modeCopy = mode;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setHardwareKeyboardMode:modeCopy];
}

- (BOOL)hardwareKeyboardMode
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  hardwareKeyboardMode = [keyboardController hardwareKeyboardMode];

  return hardwareKeyboardMode;
}

- (void)setInlineCompletionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setInlineCompletionEnabled:enabledCopy];
}

- (BOOL)inlineCompletionEnabled
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inlineCompletionEnabled = [keyboardController inlineCompletionEnabled];

  return inlineCompletionEnabled;
}

- (void)setWordLearningEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setWordLearningEnabled:enabledCopy];
}

- (BOOL)wordLearningEnabled
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  wordLearningEnabled = [keyboardController wordLearningEnabled];

  return wordLearningEnabled;
}

- (void)setAutocapitalizationType:(unint64_t)type
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setAutocapitalizationType:type];
}

- (unint64_t)autocapitalizationType
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  autocapitalizationType = [keyboardController autocapitalizationType];

  return autocapitalizationType;
}

- (void)setUsesAutocapitalization:(BOOL)autocapitalization
{
  autocapitalizationCopy = autocapitalization;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setUsesAutocapitalization:autocapitalizationCopy];
}

- (BOOL)usesAutocapitalization
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  usesAutocapitalization = [keyboardController usesAutocapitalization];

  return usesAutocapitalization;
}

- (void)setUsesPrediction:(BOOL)prediction
{
  predictionCopy = prediction;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setUsesPrediction:predictionCopy];
}

- (BOOL)usesPrediction
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  usesPrediction = [keyboardController usesPrediction];

  return usesPrediction;
}

- (void)setAutocorrectionType:(unint64_t)type
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setAutocorrectionType:type];
}

- (unint64_t)autocorrectionType
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  autocorrectionType = [keyboardController autocorrectionType];

  return autocorrectionType;
}

- (void)setUsesAutocorrection:(BOOL)autocorrection
{
  autocorrectionCopy = autocorrection;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setUsesAutocorrection:autocorrectionCopy];
}

- (BOOL)usesAutocorrection
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  usesAutocorrection = [keyboardController usesAutocorrection];

  return usesAutocorrection;
}

- (TIKeyboardInputManager)inputManager
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputManager = [keyboardController inputManager];

  return inputManager;
}

- (void)setNextKeyIsMultitap:(BOOL)multitap
{
  multitapCopy = multitap;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setNextKeyIsMultitap:multitapCopy];
}

- (BOOL)nextKeyIsMultitap
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  nextKeyIsMultitap = [keyboardController nextKeyIsMultitap];

  return nextKeyIsMultitap;
}

- (void)setInputContextHistory:(id)history
{
  historyCopy = history;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setInputContextHistory:historyCopy];
}

- (TIInputContextHistory)inputContextHistory
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputContextHistory = [keyboardController inputContextHistory];

  return inputContextHistory;
}

- (void)setRecipientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setRecipientIdentifier:identifierCopy];
}

- (NSString)recipientIdentifier
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  recipientIdentifier = [keyboardController recipientIdentifier];

  return recipientIdentifier;
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setClientIdentifier:identifierCopy];
}

- (NSString)clientIdentifier
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  clientIdentifier = [keyboardController clientIdentifier];

  return clientIdentifier;
}

- (BOOL)isAutoshifted
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  isAutoshifted = [keyboardController isAutoshifted];

  return isAutoshifted;
}

- (BOOL)isShifted
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  isShifted = [keyboardController isShifted];

  return isShifted;
}

- (void)setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap
{
  inputMode = [(TIKeyboardTyper *)self inputMode];
  languageWithRegion = [inputMode languageWithRegion];
  v5 = [languageWithRegion isEqualToString:@"th_TH"];

  if ((v5 & 1) == 0)
  {
    keyboard = [(TIKeyboardTyper *)self keyboard];
    keyplane = [(TIKeyboardTyper *)self keyplane];
    shiftAlternateKeyplaneName = [keyplane shiftAlternateKeyplaneName];
    v40 = [keyboard subtreeWithName:shiftAlternateKeyplaneName];

    name = [v40 name];
    keyplane2 = [(TIKeyboardTyper *)self keyplane];
    name2 = [keyplane2 name];
    v12 = [name isEqualToString:name2];

    if ((v12 & 1) == 0)
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
      keys = [v40 keys];
      if ([keys count])
      {
        v14 = 0;
        while (1)
        {
          v15 = [keys objectAtIndex:v14];
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
          keyplane3 = [(TIKeyboardTyper *)self keyplane];
          midY = [(TIKeyboardTyper *)self keyContainingPoint:keyplane3 inKeyplane:MidX, MidY];

          if (!midY)
          {
            goto LABEL_16;
          }

          [midY paddedFrame];
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

          representedString = [midY representedString];
          representedString2 = [v15 representedString];
          if ([representedString isEqualToString:representedString2])
          {
            break;
          }

          representedString3 = [midY representedString];
          inputMode2 = [(TIKeyboardTyper *)self inputMode];
          locale = [inputMode2 locale];
          v34 = [representedString3 uppercaseStringWithLocale:locale];
          representedString4 = [v15 representedString];
          v37 = [v34 isEqualToString:representedString4];

          if ((v37 & 1) == 0)
          {
            representedString = [v15 representedString];
            [v36 setValue:midY forKey:representedString];
            goto LABEL_15;
          }

LABEL_16:

          if (++v14 >= [keys count])
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

- (void)setKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setKeyboard:keyboardCopy];

  [(TIKeyboardTyper *)self setShiftedKeyToUnShiftedKeyExcludeCapitalizationMap];
}

- (void)setAsyncPredictions:(BOOL)predictions
{
  predictionsCopy = predictions;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setAsyncPredictions:predictionsCopy];
}

- (BOOL)asyncPredictions
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  asyncPredictions = [keyboardController asyncPredictions];

  return asyncPredictions;
}

- (void)setInputModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setInputModeIdentifier:identifierCopy];
}

- (NSString)inputModeIdentifier
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  inputModeIdentifier = [keyboardController inputModeIdentifier];

  return inputModeIdentifier;
}

- (void)setKeyboardInputManagerFactory:(id)factory
{
  factoryCopy = factory;
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  [keyboardController setKeyboardInputManagerFactory:factoryCopy];
}

- (TIKeyboardInputManagerFactory)keyboardInputManagerFactory
{
  keyboardController = [(TIKeyboardTyper *)self keyboardController];
  keyboardInputManagerFactory = [keyboardController keyboardInputManagerFactory];

  return keyboardInputManagerFactory;
}

@end