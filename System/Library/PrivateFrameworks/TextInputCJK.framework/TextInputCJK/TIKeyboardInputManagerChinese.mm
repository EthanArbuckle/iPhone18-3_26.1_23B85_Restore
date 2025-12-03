@interface TIKeyboardInputManagerChinese
+ (BOOL)shouldEnableHalfWidthPunctuationForDocumentContext:(id)context composedText:(id)text;
+ (id)GB18030CandidateFromString:(id)string;
+ (id)pairedPunctuationDictionary;
+ (id)punctuationPredictionsForString:(id)string;
+ (id)unicodeCandidateFromString:(id)string;
- (BOOL)handlePairedPunctuationInput:(id)input context:(id)context;
- (BOOL)hasIdeographicCandidates;
- (BOOL)isFacemarkInput:(id)input;
- (BOOL)shouldEnableHalfWidthPunctuationForCurrentInputContext;
- (BOOL)showingFacemarkCandidates;
- (BOOL)updateCompletionCandidatesIfAppropriate;
- (CIMCandidateData)candidateData;
- (NSOperationQueue)operationQueue;
- (TIKeyboardInputManagerChinese)initWithConfig:(id)config keyboardState:(id)state;
- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers;
- (id)completionCandidateResultSetForKeyHint:(id)hint;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)firstCandidate;
- (id)generateCompletions;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)outputByConvertingDecimalPointForInput:(id)input;
- (id)replacementForDoubleSpace;
- (id)sortMethodsGroupsForCandidates:(id)candidates;
- (id)titleForSortingMethod:(id)method;
- (id)wordCharacters;
- (unint64_t)initialSelectedIndex;
- (unint64_t)predictionOptions;
- (void)acceptFirstCandidateWithContext:(id)context;
- (void)clearInput;
- (void)deleteFromInputWithContext:(id)context;
- (void)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method completion:(id)completion;
- (void)initImplementationWithMode:(id)mode andLanguage:(id)language;
- (void)inputLocationChanged;
- (void)mecabraCandidateRefFromPointerValue:(id)value;
- (void)resetCommitHistory;
- (void)setInput:(id)input;
- (void)syncToLayoutState:(id)state;
- (void)wordSearchEngineDidFindPredictionCandidates:(id)candidates;
@end

@implementation TIKeyboardInputManagerChinese

- (BOOL)handlePairedPunctuationInput:(id)input context:(id)context
{
  inputCopy = input;
  contextCopy = context;
  if (([inputCopy isFlick] & 1) == 0 && -[TIKeyboardInputManagerChinese supportsPairedPunctutationInput](self, "supportsPairedPunctutationInput"))
  {
    string = [inputCopy string];
    if (![string length])
    {
      v32 = 0;
LABEL_29:

      goto LABEL_30;
    }

    isMultitap = [inputCopy isMultitap];
    if (isMultitap)
    {
      pairedPunctuationOpenQuote = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
      v11 = [pairedPunctuationOpenQuote length];

      if (!v11)
      {
LABEL_13:
        pairedPunctuationDictionary = [objc_opt_class() pairedPunctuationDictionary];
        v14 = [pairedPunctuationDictionary objectForKey:string];

        if (![v14 length])
        {
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0];
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:0];
          v32 = 0;
LABEL_28:

          goto LABEL_29;
        }

        if (isMultitap)
        {
          pairedPunctuationSelectedText = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v30 = [pairedPunctuationSelectedText length];

          if (v30)
          {
            pairedPunctuationSelectedText2 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
            [contextCopy deleteBackward:{objc_msgSend(pairedPunctuationSelectedText2, "length")}];

            [contextCopy deleteForward:1];
          }

          else
          {
            [contextCopy deleteBackward:1];
          }
        }

        else
        {
          keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
          documentState = [keyboardState documentState];
          selectedText = [documentState selectedText];
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:selectedText];

          if ([(TIKeyboardInputManagerChinese *)self inputCount])
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:contextCopy];
          }

          else
          {
            [(TIKeyboardInputManagerChinese *)self acceptCurrentCandidateWithContext:contextCopy];
          }
        }

        [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:string];
        [contextCopy insertText:string];
        pairedPunctuationSelectedText3 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
        v37 = [pairedPunctuationSelectedText3 length];

        if (v37)
        {
          pairedPunctuationSelectedText4 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          [contextCopy insertText:pairedPunctuationSelectedText4];
        }

        [contextCopy insertTextAfterSelection:v14];
LABEL_27:
        v32 = 1;
        goto LABEL_28;
      }

      pairedPunctuationDictionary2 = [objc_opt_class() pairedPunctuationDictionary];
      pairedPunctuationOpenQuote2 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
      v14 = [pairedPunctuationDictionary2 objectForKey:pairedPunctuationOpenQuote2];

      if ([v14 length])
      {
        keyboardState2 = [(TIKeyboardInputManagerChinese *)self keyboardState];
        documentState2 = [keyboardState2 documentState];
        contextAfterInput = [documentState2 contextAfterInput];
        v18 = [contextAfterInput hasPrefix:v14];

        if (v18)
        {
          pairedPunctuationSelectedText5 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v20 = [pairedPunctuationSelectedText5 length];

          if (!v20)
          {
            [contextCopy deleteForward:1];

            goto LABEL_13;
          }

          pairedPunctuationOpenQuote3 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
          pairedPunctuationSelectedText6 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v42 = [pairedPunctuationOpenQuote3 stringByAppendingString:pairedPunctuationSelectedText6];

          keyboardState3 = [(TIKeyboardInputManagerChinese *)self keyboardState];
          documentState3 = [keyboardState3 documentState];
          contextBeforeInput = [documentState3 contextBeforeInput];
          v26 = [contextBeforeInput rangeOfString:v42 options:4];
          v41 = v27;

          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [contextCopy deleteBackward:v41];
            pairedPunctuationSelectedText7 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
            [contextCopy insertText:pairedPunctuationSelectedText7];

            [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0];
            goto LABEL_27;
          }
        }
      }
    }

    [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0, v41];
    [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:0];
    goto LABEL_13;
  }

  v32 = 0;
LABEL_30:

  return v32;
}

- (void)acceptFirstCandidateWithContext:(id)context
{
  contextCopy = context;
  firstCandidate = [(TIKeyboardInputManagerChinese *)self firstCandidate];
  if (firstCandidate)
  {
    [contextCopy acceptCandidate:firstCandidate];
    keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
    v6 = [(TIKeyboardInputManagerMecabra *)self handleAcceptedCandidate:firstCandidate keyboardState:keyboardState];

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v8 = [composingInput hasKindOf:objc_opt_class()];

      if (v8)
      {
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        asCommittedText = [composingInput2 asCommittedText];

        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [composingInput3 removeAllInputs];

        [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D6FF28]) setString:&stru_287EBF4E8];
        v6 = asCommittedText;
      }
    }

    if (v6)
    {
      [contextCopy unmarkText:v6];
    }
  }
}

- (id)firstCandidate
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if ([candidates count])
  {
    v4 = [candidates objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)outputByConvertingDecimalPointForInput:(id)input
{
  inputCopy = input;
  keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  v7 = inputCopy;
  if (hardwareKeyboardMode)
  {
    keyboardState2 = [(TIKeyboardInputManagerChinese *)self keyboardState];
    documentState = [keyboardState2 documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    _lastGrapheme = [contextBeforeInput _lastGrapheme];

    mathSymbolPunctuationController = [(TIKeyboardInputManagerChinese *)self mathSymbolPunctuationController];
    v13 = [_lastGrapheme stringByAppendingString:inputCopy];
    v14 = [mathSymbolPunctuationController mathSymbolPunctuationedStringForInputString:v13];

    v7 = inputCopy;
    if (v14)
    {
      v7 = [v14 substringFromIndex:{objc_msgSend(_lastGrapheme, "length")}];
    }
  }

  return v7;
}

- (NSOperationQueue)operationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  operationQueue = selfCopy->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = selfCopy->_operationQueue;
    selfCopy->_operationQueue = v4;

    [(NSOperationQueue *)selfCopy->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = selfCopy->_operationQueue;
  }

  v6 = operationQueue;
  objc_sync_exit(selfCopy);

  return v6;
}

- (CIMCandidateData)candidateData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  candidateData = selfCopy->_candidateData;
  if (!candidateData)
  {
    v4 = [CIMCandidateData alloc];
    inputMode = [(TIKeyboardInputManagerBase *)selfCopy inputMode];
    v6 = [(CIMCandidateData *)v4 initWithInputMode:inputMode];
    v7 = selfCopy->_candidateData;
    selfCopy->_candidateData = v6;

    candidateData = selfCopy->_candidateData;
  }

  v8 = candidateData;
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method completion:(id)completion
{
  candidatesCopy = candidates;
  methodCopy = method;
  completionCopy = completion;
  v11 = completionCopy;
  if (methodCopy && completionCopy)
  {
    operationQueue = [(TIKeyboardInputManagerChinese *)self operationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __95__TIKeyboardInputManagerChinese_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke;
    v13[3] = &unk_279D9D8A8;
    v13[4] = self;
    v14 = candidatesCopy;
    v15 = methodCopy;
    v16 = v11;
    [operationQueue addOperationWithBlock:v13];
  }
}

void __95__TIKeyboardInputManagerChinese_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groupedCandidatesFromCandidates:*(a1 + 40) usingSortingMethod:*(a1 + 48)];
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__TIKeyboardInputManagerChinese_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke_2;
  v6[3] = &unk_279D9D8D0;
  v4 = *(a1 + 56);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 addOperationWithBlock:v6];
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  if (method)
  {
    methodCopy = method;
    candidatesCopy = candidates;
    candidateData = [(TIKeyboardInputManagerChinese *)self candidateData];
    [candidateData setCandidates:candidatesCopy];

    unsignedIntegerValue = [methodCopy unsignedIntegerValue];
    v10 = [candidateData candidatesSortedByMethod:unsignedIntegerValue omittingEmoji:{-[TIKeyboardInputManagerChinese shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sortMethodsGroupsForCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidateData = [(TIKeyboardInputManagerChinese *)self candidateData];
  [candidateData clearCache];

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinese;
  v6 = [(TIKeyboardInputManagerChinese *)&v8 sortMethodsGroupsForCandidates:candidatesCopy];

  return v6;
}

- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  candidatesCopy = candidates;
  triggersCopy = triggers;
  v8 = candidatesCopy;
  v9 = v8;
  if ([(TIKeyboardInputManagerChinese *)self shouldOmitEmojiCandidates])
  {
    v9 = [v8 _arrayByFilteringEmojiCandidates:0];
  }

  v12.receiver = self;
  v12.super_class = TIKeyboardInputManagerChinese;
  v10 = [(TIKeyboardInputManagerChinese *)&v12 candidateResultSetFromCandidates:v9 proactiveTriggers:triggersCopy];

  return v10;
}

- (id)titleForSortingMethod:(id)method
{
  unsignedIntegerValue = [method unsignedIntegerValue];

  return [CIMCandidateData sortTitleFromSortingMethod:unsignedIntegerValue];
}

- (unint64_t)initialSelectedIndex
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v6 = [candidates count];
  if (v6)
  {
    inputString = [(TIKeyboardInputManagerChinese *)self inputString];
    if ([inputString length])
    {
      initialSelectedIndex = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerChinese;
  initialSelectedIndex = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return initialSelectedIndex;
}

- (id)completionCandidateResultSetForKeyHint:(id)hint
{
  v34 = *MEMORY[0x277D85DE8];
  hintCopy = hint;
  if ([hintCopy isEqualToString:@"Chinese"])
  {
    language = [(TIKeyboardInputManagerChinese *)self language];
    v6 = [language isEqualToString:@"zh-Hans"];

    v26 = 0;
    if (v6)
    {
      v7 = &unk_287EC38E0;
    }

    else
    {
      v7 = &unk_287EC38F8;
    }
  }

  else if ([hintCopy isEqualToString:@"Latin"])
  {
    v7 = &unk_287EC3910;
    v26 = 1;
  }

  else
  {
    v26 = [hintCopy isEqualToString:@"Numbers"];
    if (v26)
    {
      v7 = &unk_287EC3928;
    }

    else
    {
      v7 = 0;
    }
  }

  if ([v7 count])
  {
    v25 = hintCopy;
    v28 = objc_alloc_init(MEMORY[0x277D6FF00]);
    pairedPunctuationDictionary = [objc_opt_class() pairedPunctuationDictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v8;
    v10 = *v30;
    v11 = *MEMORY[0x277CBE750];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = v13;
        if (v26)
        {
          v15 = [v13 stringByApplyingTransform:v11 reverse:0];
          if (([v14 isEqualToString:v15] & 1) == 0)
          {
            v16 = @"UI-Fullwidth";
            goto LABEL_22;
          }
        }

        else
        {
          v15 = [v13 stringByApplyingTransform:v11 reverse:1];
          if (([v14 isEqualToString:v15] & 1) == 0)
          {
            v16 = @"UI-Halfwidth";
LABEL_22:
            if ([v7 containsObject:{v15, v25}])
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_25;
          }
        }

        v17 = 0;
LABEL_25:
        v18 = v7;

        v19 = [pairedPunctuationDictionary objectForKeyedSubscript:v14];
        v20 = v19;
        if (v19)
        {
          v21 = -[v19 length];
          v22 = [v14 stringByAppendingString:v20];

          v14 = v22;
        }

        else
        {
          v21 = 0;
        }

        [v28 addSyntheticMecabraCandidateWithSurface:v14 input:&stru_287EBF4E8 isExtension:0 deleteCount:1 cursorMovement:v21 annotation:{v17, v25}];

        v7 = v18;
      }

      v9 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v9)
      {
LABEL_30:

        hintCopy = v25;
        goto LABEL_32;
      }
    }
  }

  v28 = 0;
LABEL_32:

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)wordSearchEngineDidFindPredictionCandidates:(id)candidates
{
  v24 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  -[TIKeyboardInputManagerChinese setIsInCompletionMode:](self, "setIsInCompletionMode:", [candidatesCopy isEmpty] ^ 1);
  v5 = objc_opt_class();
  keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  v9 = [v5 punctuationPredictionsForString:contextBeforeInput];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  reverseObjectEnumerator = [v9 reverseObjectEnumerator];
  v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [candidatesCopy insertSyntheticMecabraCandidateWithSurface:*(*(&v19 + 1) + 8 * v14++) input:&stru_287EBF4E8 atIndex:0];
      }

      while (v12 != v14);
      v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:candidatesCopy withInput:&stru_287EBF4E8];
  if ([(TIKeyboardInputManagerChinese *)self candidateRange])
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidateRefsDictionary = [wordSearchCandidateResultSet candidateRefsDictionary];
    [candidatesCopy addCandidates:MEMORY[0x277CBEBF8] candidateRefsDictionary:candidateRefsDictionary];
  }

  [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:candidatesCopy withInput:&stru_287EBF4E8];
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidatesCopy];
  v17 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:candidatesCopy];
  [(TIKeyboardInputManagerChinese *)self closeCandidateGenerationContextWithResults:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateCompletionCandidatesIfAppropriate
{
  if (([(TIKeyboardInputManagerChinese *)self conformsToProtocol:&unk_287ECE498]& 1) != 0)
  {
    if (([(TIKeyboardInputManagerChinese *)self shouldLookForCompletionCandidates]& 1) != 0)
    {
      currentKeyHint = [(TIKeyboardInputManagerChinese *)self currentKeyHint];

      if (currentKeyHint)
      {
        currentKeyHint2 = [(TIKeyboardInputManagerChinese *)self currentKeyHint];
        generateCompletions = [(TIKeyboardInputManagerChinese *)self completionCandidateResultSetForKeyHint:currentKeyHint2];
      }

      else
      {
        generateCompletions = [(TIKeyboardInputManagerChinese *)self generateCompletions];
      }

      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:generateCompletions];
      v7 = generateCompletions != 0;
    }

    else
    {
      [(TIKeyboardInputManagerChinese *)self willExitCompletionMode];
      [(TIKeyboardInputManagerChinese *)self setIsInCompletionMode:0];
      return 0;
    }
  }

  else
  {
    if ([(TIKeyboardInputManagerChinese *)self isInCompletionMode])
    {
      [(TIKeyboardInputManagerChinese *)self willExitCompletionMode];
      [(TIKeyboardInputManagerChinese *)self setIsInCompletionMode:0];
    }

    emptySet = [MEMORY[0x277D6FF00] emptySet];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:emptySet];

    return 1;
  }

  return v7;
}

- (id)generateCompletions
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_alloc_init(MEMORY[0x277D6FF00]);
    predictionOptions = [(TIKeyboardInputManagerChinese *)self predictionOptions];
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    mecabraEnvironment = [wordSearch mecabraEnvironment];

    keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
    documentState = [keyboardState documentState];

    contextBeforeInput = [documentState contextBeforeInput];
    v10 = contextBeforeInput;
    if (contextBeforeInput)
    {
      v11 = contextBeforeInput;
    }

    else
    {
      v11 = &stru_287EBF4E8;
    }

    v12 = v11;

    contextAfterInput = [documentState contextAfterInput];
    v14 = contextAfterInput;
    if (contextAfterInput)
    {
      v15 = contextAfterInput;
    }

    else
    {
      v15 = &stru_287EBF4E8;
    }

    v16 = v15;

    v17 = MEMORY[0x277CCA8C8];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke;
    v32[3] = &unk_279D9D248;
    v33 = mecabraEnvironment;
    v34 = v12;
    v35 = v16;
    v38 = predictionOptions;
    v18 = v3;
    v36 = v18;
    selfCopy = self;
    v19 = v16;
    v20 = v12;
    v21 = mecabraEnvironment;
    v22 = [v17 blockOperationWithBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_77;
    v28[3] = &unk_279D9D2E8;
    v29 = v22;
    selfCopy2 = self;
    v31 = v18;
    v23 = v18;
    v24 = v22;
    [v24 setCompletionBlock:v28];
    wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch2 cancel];

    wordSearch3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch3 performOperationAsync:v24];
  }

  return 0;
}

void __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLeftDocumentContext:*(a1 + 40)];
  [*(a1 + 32) setRightDocumentContext:*(a1 + 48)];
  if (TICanLogMessageAtLevel())
  {
    v2 = TIOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [*(a1 + 32) leftDocumentContext];
      v13 = [*(a1 + 32) rightDocumentContext];
      v14 = [v11 stringWithFormat:@"%s [Environment] Set left context: %@, Right context: %@", "-[TIKeyboardInputManagerChinese generateCompletions]_block_invoke", v12, v13];
      *buf = 138412290;
      v19 = v14;
      _os_log_debug_impl(&dword_26D460000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [*(a1 + 32) adjustEnvironmentDirectly:0];
  [*(a1 + 32) adjustEnvironmentDirectly:0];
  if ([*(a1 + 32) predictionAnalyzeWithOptions:*(a1 + 72) maxNumberOfCandidates:40])
  {
    [*(a1 + 32) mecabra];
    while (1)
    {
      NextCandidate = MecabraPredictionGetNextCandidate();
      if (!NextCandidate)
      {
        break;
      }

      v4 = NextCandidate;
      if (MecabraCandidateGetType() == 6)
      {
        [*(a1 + 56) addMecabraProactiveCandidate:v4 triggerSourceType:0];
      }

      else
      {
        v5 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v4];
        [*(a1 + 56) addMecabraCandidate:v5 mecabraCandidateRef:v4];
      }
    }

    v6 = [*(a1 + 56) proactiveTriggers];
    v7 = [v6 count];

    if (v7)
    {
      if (TICanLogMessageAtLevel())
      {
        v8 = TIOSLogFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [*(a1 + 56) proactiveTriggers];
          v17 = [v15 stringWithFormat:@"%s ProactiveQuickType:TI: found prediction proactive triggers: %@", "-[TIKeyboardInputManagerChinese generateCompletions]_block_invoke", v16];
          *buf = 138412290;
          v19 = v17;
          _os_log_debug_impl(&dword_26D460000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v9 = [*(a1 + 64) wordSearch];
  [v9 insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:*(a1 + 56)];

  v10 = *MEMORY[0x277D85DE8];
}

void __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_77(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_2;
  v6[3] = &unk_279D9D2E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 addOperationWithBlock:v6];
}

void __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCompletionBlock:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_3;
  v10[3] = &unk_279D9D298;
  v2 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v2;
  v3 = MEMORY[0x26D6BFFC0](v10);
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    objc_initWeak(&location, *(a1 + 40));
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_5;
    v6[3] = &unk_279D9D2C0;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [v5 addStickers:v4 withCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_4;
  v4[3] = &unk_279D9D270;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 addOperationWithBlock:v4];
}

void __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addProactiveTriggers:v3 withCompletionHandler:*(a1 + 32)];
}

- (unint64_t)predictionOptions
{
  if ([(TIKeyboardInputManagerChinese *)self shouldSearchCompletionForSubstrings])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(TIKeyboardInputManagerChinese *)self shouldLearnAcceptedCandidate])
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 | 4;
  }

  keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    v7 = v4 | 0x10;
  }

  else
  {
    v7 = v4;
  }

  keyboardState2 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  candidateSelectionPredictionEnabled = [keyboardState2 candidateSelectionPredictionEnabled];

  if (candidateSelectionPredictionEnabled)
  {
    return v7;
  }

  else
  {
    return v7 | 0x20;
  }
}

- (void)mecabraCandidateRefFromPointerValue:(id)value
{
  valueCopy = value;
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidateRefsDictionary = [wordSearchCandidateResultSet candidateRefsDictionary];
  v7 = [candidateRefsDictionary objectForKeyedSubscript:valueCopy];

  return v7;
}

- (BOOL)hasIdeographicCandidates
{
  v17 = *MEMORY[0x277D85DE8];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = candidates;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        candidate = [*(*(&v12 + 1) + 8 * i) candidate];
        _containsIdeographicCharacters = [candidate _containsIdeographicCharacters];

        if (_containsIdeographicCharacters)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)showingFacemarkCandidates
{
  v19 = *MEMORY[0x277D85DE8];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = candidates;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      if (v7 <= 4)
      {
        v11 = 4 - v7;
      }

      else
      {
        v11 = 0;
      }

      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v8 += [*(*(&v14 + 1) + 8 * v10) isFacemarkCandidate];
        if (v11 == v10)
        {
          ++v7;
          goto LABEL_14;
        }

        ++v10;
        ++v7;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v7 < 2 * v8;
}

- (BOOL)isFacemarkInput:(id)input
{
  inputCopy = input;
  if ([inputCopy isEqualToString:*MEMORY[0x277D6FF50]])
  {
    v5 = 1;
  }

  else
  {
    keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
    if ([keyboardState hardwareKeyboardMode])
    {
      if ([inputCopy isEqualToString:*MEMORY[0x277D6FF40]])
      {
        v5 = 1;
      }

      else
      {
        v5 = [inputCopy isEqualToString:*MEMORY[0x277D6FF48]];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)shouldEnableHalfWidthPunctuationForCurrentInputContext
{
  keyboardState = [(TIKeyboardInputManagerChinese *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D6FF28]))
  {
    v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [TIKeyboardInputManagerChinese shouldEnableHalfWidthPunctuationForDocumentContext:contextBeforeInput composedText:v6];

  return v7;
}

- (id)wordCharacters
{
  v2 = [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet;
  if (![TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet)
  {
    v3 = [objc_alloc(MEMORY[0x277D6F330]) initWithBaseCharacterSet:3];
    invertedSetDescription = [v3 invertedSetDescription];
    v5 = [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet;
    [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet = invertedSetDescription;

    v2 = [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet;
  }

  return v2;
}

- (id)replacementForDoubleSpace
{
  if ([(TIKeyboardInputManagerChinese *)self isAlphabeticPlane])
  {
    v2 = @".";
  }

  else
  {
    v2 = @"。";
  }

  return v2;
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  [(TIKeyboardInputManagerChinese *)self setDuringDeleteFromInputWithContext:1];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManagerMecabra *)&v5 deleteFromInputWithContext:contextCopy];

  [(TIKeyboardInputManagerChinese *)self setDuringDeleteFromInputWithContext:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController setEnabled:[(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController converted]^ 1];
}

- (id)deleteFromInput:(unint64_t *)input
{
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinese;
  v5 = [(TIKeyboardInputManagerChinese *)&v7 deleteFromInput:input];

  return v5;
}

- (void)setInput:(id)input
{
  inputCopy = input;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManager_mul *)&v5 setInput:inputCopy];
}

- (void)clearInput
{
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManagerMecabra *)&v3 clearInput];
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  if (![(TIKeyboardInputManagerChinese *)self duringDeleteFromInputWithContext])
  {
    [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManagerChinese *)&v3 inputLocationChanged];
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v5 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];

  if ([(TIKeyboardInputManagerChinese *)self isInCompletionMode]&& [(TIKeyboardInputManagerChinese *)self shouldLearnAcceptedCandidate]&& v5)
  {
    v6 = objc_alloc(MEMORY[0x277D6FF10]);
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v8 = [v6 initWithWordSearch:wordSearch mecabraCandidate:v5 isPartial:0 isPrediction:1];

    wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch2 performOperationAsync:v8];
  }

  if ([(TIKeyboardInputManagerChinese *)self inputCount])
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];

    if (!candidates)
    {
      [(TIKeyboardInputManagerChinese *)self clearInput];
    }
  }

  wordSearch3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch3 clearCache];

  return 0;
}

- (void)syncToLayoutState:(id)state
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinese;
  stateCopy = state;
  [(TIKeyboardInputManagerChinese *)&v7 syncToLayoutState:stateCopy];
  isAlphabeticPlane = [stateCopy isAlphabeticPlane];

  [(TIKeyboardInputManagerChinese *)self setIsAlphabeticPlane:isAlphabeticPlane];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch clearCache];
}

- (void)initImplementationWithMode:(id)mode andLanguage:(id)language
{
  v9 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  [(TIKeyboardInputManagerChinese *)self setModeName:mode];
  [(TIKeyboardInputManagerChinese *)self setLanguage:languageCopy];

  [(TIKeyboardInputManagerChinese *)self setIsInCompletionMode:0];
  result = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
  if (!result)
  {
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetCommitHistory
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch resetPreviousWord];

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch2 clearCache];
}

- (TIKeyboardInputManagerChinese)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerChinese;
  v7 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:configCopy keyboardState:state];
  if (v7)
  {
    mEMORY[0x277D6FF08] = [MEMORY[0x277D6FF08] sharedWordSearchController];
    inputMode = [configCopy inputMode];
    v10 = [mEMORY[0x277D6FF08] wordSearchForInputMode:inputMode];
    wordSearch = v7->_wordSearch;
    v7->_wordSearch = v10;

    v12 = objc_alloc_init(MEMORY[0x277D6FEA8]);
    mathSymbolPunctuationController = v7->_mathSymbolPunctuationController;
    v7->_mathSymbolPunctuationController = v12;

    [(TIMathSymbolPunctuationController *)v7->_mathSymbolPunctuationController setReplaceAfterNumerals:1];
  }

  return v7;
}

+ (id)pairedPunctuationDictionary
{
  if (+[TIKeyboardInputManagerChinese pairedPunctuationDictionary]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinese pairedPunctuationDictionary]::__onceToken, &__block_literal_global_466);
  }

  v3 = +[TIKeyboardInputManagerChinese pairedPunctuationDictionary]::__pairedPunctuationDictionary;

  return v3;
}

void __60__TIKeyboardInputManagerChinese_pairedPunctuationDictionary__block_invoke()
{
  v0 = +[TIKeyboardInputManagerChinese pairedPunctuationDictionary]::__pairedPunctuationDictionary;
  +[TIKeyboardInputManagerChinese pairedPunctuationDictionary]::__pairedPunctuationDictionary = &unk_287EC3AE8;
}

+ (BOOL)shouldEnableHalfWidthPunctuationForDocumentContext:(id)context composedText:(id)text
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  textCopy = text;
  v7 = textCopy;
  if ([contextCopy length])
  {
    if ([textCopy length])
    {
      v8 = [contextCopy stringByAppendingString:textCopy];
    }

    else
    {
      v8 = contextCopy;
    }

    v7 = v8;
  }

  if (![v7 length])
  {
    goto LABEL_19;
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v7 rangeOfCharacterFromSet:decimalDigitCharacterSet options:12];
  v12 = v11;

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 + v12 != [v7 length])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [&unk_287EC3940 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(&unk_287EC3940);
        }

        if ([v7 hasSuffix:*(*(&v20 + 1) + 8 * v17)])
        {
          goto LABEL_9;
        }

        if (v15 == ++v17)
        {
          v15 = [&unk_287EC3940 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v13 = 0;
          if (v15)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

LABEL_9:
  v13 = 1;
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)unicodeCandidateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"|u|"])
  {
    v4 = [stringCopy substringFromIndex:{objc_msgSend(@"|u|", "length")}];
    v5 = [MEMORY[0x277CCAC80] scannerWithString:v4];
    v11 = 0;
    if ([v5 scanHexInt:&v11])
    {
      if ((v11 - 0x10000) >> 20)
      {
        v7 = 1;
        LOWORD(v6) = v11;
      }

      else
      {
        v6 = ((v11 - 0x10000) >> 10) | 0xFFFFD800;
        v10[1] = v11 & 0x3FF | 0xDC00;
        v7 = 2;
      }

      v10[0] = v6;
      v8 = [MEMORY[0x277CCACA8] stringWithCharacters:v10 length:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)GB18030CandidateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"|g|"])
  {
    v4 = [stringCopy substringFromIndex:{objc_msgSend(@"|g|", "length")}];
    if ([v4 length])
    {
      v8 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CCAC80] scannerWithString:v4];
      v11 = 0;
      if ([v5 scanHexInt:&v11])
      {
        v6 = 0;
        v7 = 0;
        v11 = bswap32(v11);
        do
        {
          if (*(&v11 + v6))
          {
            v10[v7++] = *(&v11 + v6);
          }

          if (v6 > 2)
          {
            break;
          }

          ++v6;
        }

        while (v7 < 4);
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:v7 encoding:CFStringConvertEncodingToNSStringEncoding(0x632u)];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)punctuationPredictionsForString:(id)string
{
  stringCopy = string;
  if (+[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__onceToken, &__block_literal_global);
  }

  v4 = [stringCopy length];
  v5 = v4;
  if (v4 < 2)
  {
    v8 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = +[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__punctuationPredictions;
    v7 = [stringCopy substringFromIndex:v4 - 2];
    v8 = [v6 objectForKey:v7];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (!v8)
  {
    v9 = +[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__punctuationPredictions;
    v10 = [stringCopy substringFromIndex:v5 - 1];
    v8 = [v9 objectForKey:v10];
  }

LABEL_9:

  return v8;
}

void __65__TIKeyboardInputManagerChinese_punctuationPredictionsForString___block_invoke()
{
  v0 = +[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__punctuationPredictions;
  +[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__punctuationPredictions = &unk_287EC3AC0;
}

@end