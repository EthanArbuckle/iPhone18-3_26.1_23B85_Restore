@interface TIKeyboardInputManagerChinese
+ (BOOL)shouldEnableHalfWidthPunctuationForDocumentContext:(id)a3 composedText:(id)a4;
+ (id)GB18030CandidateFromString:(id)a3;
+ (id)pairedPunctuationDictionary;
+ (id)punctuationPredictionsForString:(id)a3;
+ (id)unicodeCandidateFromString:(id)a3;
- (BOOL)handlePairedPunctuationInput:(id)a3 context:(id)a4;
- (BOOL)hasIdeographicCandidates;
- (BOOL)isFacemarkInput:(id)a3;
- (BOOL)shouldEnableHalfWidthPunctuationForCurrentInputContext;
- (BOOL)showingFacemarkCandidates;
- (BOOL)updateCompletionCandidatesIfAppropriate;
- (CIMCandidateData)candidateData;
- (NSOperationQueue)operationQueue;
- (TIKeyboardInputManagerChinese)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4;
- (id)completionCandidateResultSetForKeyHint:(id)a3;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)firstCandidate;
- (id)generateCompletions;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4;
- (id)outputByConvertingDecimalPointForInput:(id)a3;
- (id)replacementForDoubleSpace;
- (id)sortMethodsGroupsForCandidates:(id)a3;
- (id)titleForSortingMethod:(id)a3;
- (id)wordCharacters;
- (unint64_t)initialSelectedIndex;
- (unint64_t)predictionOptions;
- (void)acceptFirstCandidateWithContext:(id)a3;
- (void)clearInput;
- (void)deleteFromInputWithContext:(id)a3;
- (void)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 completion:(id)a5;
- (void)initImplementationWithMode:(id)a3 andLanguage:(id)a4;
- (void)inputLocationChanged;
- (void)mecabraCandidateRefFromPointerValue:(id)a3;
- (void)resetCommitHistory;
- (void)setInput:(id)a3;
- (void)syncToLayoutState:(id)a3;
- (void)wordSearchEngineDidFindPredictionCandidates:(id)a3;
@end

@implementation TIKeyboardInputManagerChinese

- (BOOL)handlePairedPunctuationInput:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isFlick] & 1) == 0 && -[TIKeyboardInputManagerChinese supportsPairedPunctutationInput](self, "supportsPairedPunctutationInput"))
  {
    v8 = [v6 string];
    if (![v8 length])
    {
      v32 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v9 = [v6 isMultitap];
    if (v9)
    {
      v10 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
      v11 = [v10 length];

      if (!v11)
      {
LABEL_13:
        v28 = [objc_opt_class() pairedPunctuationDictionary];
        v14 = [v28 objectForKey:v8];

        if (![v14 length])
        {
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0];
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:0];
          v32 = 0;
LABEL_28:

          goto LABEL_29;
        }

        if (v9)
        {
          v29 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v30 = [v29 length];

          if (v30)
          {
            v31 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
            [v7 deleteBackward:{objc_msgSend(v31, "length")}];

            [v7 deleteForward:1];
          }

          else
          {
            [v7 deleteBackward:1];
          }
        }

        else
        {
          v33 = [(TIKeyboardInputManagerChinese *)self keyboardState];
          v34 = [v33 documentState];
          v35 = [v34 selectedText];
          [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:v35];

          if ([(TIKeyboardInputManagerChinese *)self inputCount])
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:v7];
          }

          else
          {
            [(TIKeyboardInputManagerChinese *)self acceptCurrentCandidateWithContext:v7];
          }
        }

        [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:v8];
        [v7 insertText:v8];
        v36 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
        v37 = [v36 length];

        if (v37)
        {
          v38 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          [v7 insertText:v38];
        }

        [v7 insertTextAfterSelection:v14];
LABEL_27:
        v32 = 1;
        goto LABEL_28;
      }

      v12 = [objc_opt_class() pairedPunctuationDictionary];
      v13 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
      v14 = [v12 objectForKey:v13];

      if ([v14 length])
      {
        v15 = [(TIKeyboardInputManagerChinese *)self keyboardState];
        v16 = [v15 documentState];
        v17 = [v16 contextAfterInput];
        v18 = [v17 hasPrefix:v14];

        if (v18)
        {
          v19 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v20 = [v19 length];

          if (!v20)
          {
            [v7 deleteForward:1];

            goto LABEL_13;
          }

          v21 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationOpenQuote];
          v22 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
          v42 = [v21 stringByAppendingString:v22];

          v23 = [(TIKeyboardInputManagerChinese *)self keyboardState];
          v24 = [v23 documentState];
          v25 = [v24 contextBeforeInput];
          v26 = [v25 rangeOfString:v42 options:4];
          v41 = v27;

          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v7 deleteBackward:v41];
            v40 = [(TIKeyboardInputManagerChinese *)self pairedPunctuationSelectedText];
            [v7 insertText:v40];

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

- (void)acceptFirstCandidateWithContext:(id)a3
{
  v12 = a3;
  v4 = [(TIKeyboardInputManagerChinese *)self firstCandidate];
  if (v4)
  {
    [v12 acceptCandidate:v4];
    v5 = [(TIKeyboardInputManagerChinese *)self keyboardState];
    v6 = [(TIKeyboardInputManagerMecabra *)self handleAcceptedCandidate:v4 keyboardState:v5];

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v8 = [v7 hasKindOf:objc_opt_class()];

      if (v8)
      {
        v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v10 = [v9 asCommittedText];

        v11 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [v11 removeAllInputs];

        [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D6FF28]) setString:&stru_287EBF4E8];
        v6 = v10;
      }
    }

    if (v6)
    {
      [v12 unmarkText:v6];
    }
  }
}

- (id)firstCandidate
{
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];

  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)outputByConvertingDecimalPointForInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  v6 = [v5 hardwareKeyboardMode];

  v7 = v4;
  if (v6)
  {
    v8 = [(TIKeyboardInputManagerChinese *)self keyboardState];
    v9 = [v8 documentState];
    v10 = [v9 contextBeforeInput];
    v11 = [v10 _lastGrapheme];

    v12 = [(TIKeyboardInputManagerChinese *)self mathSymbolPunctuationController];
    v13 = [v11 stringByAppendingString:v4];
    v14 = [v12 mathSymbolPunctuationedStringForInputString:v13];

    v7 = v4;
    if (v14)
    {
      v7 = [v14 substringFromIndex:{objc_msgSend(v11, "length")}];
    }
  }

  return v7;
}

- (NSOperationQueue)operationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  operationQueue = v2->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = v2->_operationQueue;
    v2->_operationQueue = v4;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = v2->_operationQueue;
  }

  v6 = operationQueue;
  objc_sync_exit(v2);

  return v6;
}

- (CIMCandidateData)candidateData
{
  v2 = self;
  objc_sync_enter(v2);
  candidateData = v2->_candidateData;
  if (!candidateData)
  {
    v4 = [CIMCandidateData alloc];
    v5 = [(TIKeyboardInputManagerBase *)v2 inputMode];
    v6 = [(CIMCandidateData *)v4 initWithInputMode:v5];
    v7 = v2->_candidateData;
    v2->_candidateData = v6;

    candidateData = v2->_candidateData;
  }

  v8 = candidateData;
  objc_sync_exit(v2);

  return v8;
}

- (void)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [(TIKeyboardInputManagerChinese *)self operationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __95__TIKeyboardInputManagerChinese_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke;
    v13[3] = &unk_279D9D8A8;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v11;
    [v12 addOperationWithBlock:v13];
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

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(TIKeyboardInputManagerChinese *)self candidateData];
    [v8 setCandidates:v7];

    v9 = [v6 unsignedIntegerValue];
    v10 = [v8 candidatesSortedByMethod:v9 omittingEmoji:{-[TIKeyboardInputManagerChinese shouldOmitEmojiCandidates](self, "shouldOmitEmojiCandidates")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sortMethodsGroupsForCandidates:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerChinese *)self candidateData];
  [v5 clearCache];

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinese;
  v6 = [(TIKeyboardInputManagerChinese *)&v8 sortMethodsGroupsForCandidates:v4];

  return v6;
}

- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([(TIKeyboardInputManagerChinese *)self shouldOmitEmojiCandidates])
  {
    v9 = [v8 _arrayByFilteringEmojiCandidates:0];
  }

  v12.receiver = self;
  v12.super_class = TIKeyboardInputManagerChinese;
  v10 = [(TIKeyboardInputManagerChinese *)&v12 candidateResultSetFromCandidates:v9 proactiveTriggers:v7];

  return v10;
}

- (id)titleForSortingMethod:(id)a3
{
  v3 = [a3 unsignedIntegerValue];

  return [CIMCandidateData sortTitleFromSortingMethod:v3];
}

- (unint64_t)initialSelectedIndex
{
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [(TIKeyboardInputManagerChinese *)self inputString];
    if ([v2 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerChinese;
  v7 = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)completionCandidateResultSetForKeyHint:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"Chinese"])
  {
    v5 = [(TIKeyboardInputManagerChinese *)self language];
    v6 = [v5 isEqualToString:@"zh-Hans"];

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

  else if ([v4 isEqualToString:@"Latin"])
  {
    v7 = &unk_287EC3910;
    v26 = 1;
  }

  else
  {
    v26 = [v4 isEqualToString:@"Numbers"];
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
    v25 = v4;
    v28 = objc_alloc_init(MEMORY[0x277D6FF00]);
    v27 = [objc_opt_class() pairedPunctuationDictionary];
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

        v19 = [v27 objectForKeyedSubscript:v14];
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

        v4 = v25;
        goto LABEL_32;
      }
    }
  }

  v28 = 0;
LABEL_32:

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)wordSearchEngineDidFindPredictionCandidates:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  -[TIKeyboardInputManagerChinese setIsInCompletionMode:](self, "setIsInCompletionMode:", [v4 isEmpty] ^ 1);
  v5 = objc_opt_class();
  v6 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  v7 = [v6 documentState];
  v8 = [v7 contextBeforeInput];
  v9 = [v5 punctuationPredictionsForString:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 reverseObjectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v4 insertSyntheticMecabraCandidateWithSurface:*(*(&v19 + 1) + 8 * v14++) input:&stru_287EBF4E8 atIndex:0];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:v4 withInput:&stru_287EBF4E8];
  if ([(TIKeyboardInputManagerChinese *)self candidateRange])
  {
    v15 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v16 = [v15 candidateRefsDictionary];
    [v4 addCandidates:MEMORY[0x277CBEBF8] candidateRefsDictionary:v16];
  }

  [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:v4 withInput:&stru_287EBF4E8];
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v4];
  v17 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v4];
  [(TIKeyboardInputManagerChinese *)self closeCandidateGenerationContextWithResults:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateCompletionCandidatesIfAppropriate
{
  if (([(TIKeyboardInputManagerChinese *)self conformsToProtocol:&unk_287ECE498]& 1) != 0)
  {
    if (([(TIKeyboardInputManagerChinese *)self shouldLookForCompletionCandidates]& 1) != 0)
    {
      v3 = [(TIKeyboardInputManagerChinese *)self currentKeyHint];

      if (v3)
      {
        v4 = [(TIKeyboardInputManagerChinese *)self currentKeyHint];
        v5 = [(TIKeyboardInputManagerChinese *)self completionCandidateResultSetForKeyHint:v4];
      }

      else
      {
        v5 = [(TIKeyboardInputManagerChinese *)self generateCompletions];
      }

      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v5];
      v7 = v5 != 0;
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

    v6 = [MEMORY[0x277D6FF00] emptySet];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v6];

    return 1;
  }

  return v7;
}

- (id)generateCompletions
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_alloc_init(MEMORY[0x277D6FF00]);
    v4 = [(TIKeyboardInputManagerChinese *)self predictionOptions];
    v5 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v6 = [v5 mecabraEnvironment];

    v7 = [(TIKeyboardInputManagerChinese *)self keyboardState];
    v8 = [v7 documentState];

    v9 = [v8 contextBeforeInput];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_287EBF4E8;
    }

    v12 = v11;

    v13 = [v8 contextAfterInput];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
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
    v33 = v6;
    v34 = v12;
    v35 = v16;
    v38 = v4;
    v18 = v3;
    v36 = v18;
    v37 = self;
    v19 = v16;
    v20 = v12;
    v21 = v6;
    v22 = [v17 blockOperationWithBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__TIKeyboardInputManagerChinese_generateCompletions__block_invoke_77;
    v28[3] = &unk_279D9D2E8;
    v29 = v22;
    v30 = self;
    v31 = v18;
    v23 = v18;
    v24 = v22;
    [v24 setCompletionBlock:v28];
    v25 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v25 cancel];

    v26 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v26 performOperationAsync:v24];
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

  v5 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  v6 = [v5 hardwareKeyboardMode];

  if (v6)
  {
    v7 = v4 | 0x10;
  }

  else
  {
    v7 = v4;
  }

  v8 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  v9 = [v8 candidateSelectionPredictionEnabled];

  if (v9)
  {
    return v7;
  }

  else
  {
    return v7 | 0x20;
  }
}

- (void)mecabraCandidateRefFromPointerValue:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v6 = [v5 candidateRefsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (BOOL)hasIdeographicCandidates
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
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

        v8 = [*(*(&v12 + 1) + 8 * i) candidate];
        v9 = [v8 _containsIdeographicCharacters];

        if (v9)
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
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
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

- (BOOL)isFacemarkInput:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6FF50]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerChinese *)self keyboardState];
    if ([v6 hardwareKeyboardMode])
    {
      if ([v4 isEqualToString:*MEMORY[0x277D6FF40]])
      {
        v5 = 1;
      }

      else
      {
        v5 = [v4 isEqualToString:*MEMORY[0x277D6FF48]];
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
  v3 = [(TIKeyboardInputManagerChinese *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];

  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D6FF28]))
  {
    v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [TIKeyboardInputManagerChinese shouldEnableHalfWidthPunctuationForDocumentContext:v5 composedText:v6];

  return v7;
}

- (id)wordCharacters
{
  v2 = [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet;
  if (![TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet)
  {
    v3 = [objc_alloc(MEMORY[0x277D6F330]) initWithBaseCharacterSet:3];
    v4 = [v3 invertedSetDescription];
    v5 = [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet;
    [TIKeyboardInputManagerChinese wordCharacters]::__wordCharacterSet = v4;

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

- (void)deleteFromInputWithContext:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)self setDuringDeleteFromInputWithContext:1];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManagerMecabra *)&v5 deleteFromInputWithContext:v4];

  [(TIKeyboardInputManagerChinese *)self setDuringDeleteFromInputWithContext:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController setEnabled:[(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController converted]^ 1];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinese;
  v5 = [(TIKeyboardInputManagerChinese *)&v7 deleteFromInput:a3];

  return v5;
}

- (void)setInput:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinese;
  [(TIKeyboardInputManager_mul *)&v5 setInput:v4];
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

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  v5 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v4];

  if ([(TIKeyboardInputManagerChinese *)self isInCompletionMode]&& [(TIKeyboardInputManagerChinese *)self shouldLearnAcceptedCandidate]&& v5)
  {
    v6 = objc_alloc(MEMORY[0x277D6FF10]);
    v7 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v8 = [v6 initWithWordSearch:v7 mecabraCandidate:v5 isPartial:0 isPrediction:1];

    v9 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v9 performOperationAsync:v8];
  }

  if ([(TIKeyboardInputManagerChinese *)self inputCount])
  {
    v10 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v11 = [v10 candidates];

    if (!v11)
    {
      [(TIKeyboardInputManagerChinese *)self clearInput];
    }
  }

  v12 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v12 clearCache];

  return 0;
}

- (void)syncToLayoutState:(id)a3
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinese;
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)&v7 syncToLayoutState:v4];
  v5 = [v4 isAlphabeticPlane];

  [(TIKeyboardInputManagerChinese *)self setIsAlphabeticPlane:v5];
  v6 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v6 clearCache];
}

- (void)initImplementationWithMode:(id)a3 andLanguage:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(TIKeyboardInputManagerChinese *)self setModeName:a3];
  [(TIKeyboardInputManagerChinese *)self setLanguage:v6];

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
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 resetPreviousWord];

  v4 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v4 clearCache];
}

- (TIKeyboardInputManagerChinese)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerChinese;
  v7 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:v6 keyboardState:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277D6FF08] sharedWordSearchController];
    v9 = [v6 inputMode];
    v10 = [v8 wordSearchForInputMode:v9];
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

+ (BOOL)shouldEnableHalfWidthPunctuationForDocumentContext:(id)a3 composedText:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if ([v5 length])
  {
    if ([v6 length])
    {
      v8 = [v5 stringByAppendingString:v6];
    }

    else
    {
      v8 = v5;
    }

    v7 = v8;
  }

  if (![v7 length])
  {
    goto LABEL_19;
  }

  v9 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v7 rangeOfCharacterFromSet:v9 options:12];
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

+ (id)unicodeCandidateFromString:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"|u|"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"|u|", "length")}];
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

+ (id)GB18030CandidateFromString:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"|g|"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"|g|", "length")}];
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

+ (id)punctuationPredictionsForString:(id)a3
{
  v3 = a3;
  if (+[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__onceToken, &__block_literal_global);
  }

  v4 = [v3 length];
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
    v7 = [v3 substringFromIndex:v4 - 2];
    v8 = [v6 objectForKey:v7];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (!v8)
  {
    v9 = +[TIKeyboardInputManagerChinese punctuationPredictionsForString:]::__punctuationPredictions;
    v10 = [v3 substringFromIndex:v5 - 1];
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