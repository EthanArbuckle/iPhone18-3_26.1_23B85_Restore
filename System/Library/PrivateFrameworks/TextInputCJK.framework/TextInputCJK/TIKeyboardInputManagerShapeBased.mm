@interface TIKeyboardInputManagerShapeBased
- (BOOL)hasCandidates;
- (BOOL)shouldLookForCompletionCandidates;
- (NSMutableString)searchString;
- (id)candidateResultSet;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)keyboardBehaviors;
- (id)keyboardConfigurationLayoutTag;
- (id)markedTextWithAutoconvertedCandidates;
- (id)rawInputString;
- (id)searchStringForMarkedText;
- (id)sortingMethods;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)acceptInput;
- (void)cancelCandidatesThread;
- (void)clearInput;
- (void)inputLocationChanged;
@end

@implementation TIKeyboardInputManagerShapeBased

- (id)searchStringForMarkedText
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  autoconvertedCandidateString = [wordSearchCandidateResultSet autoconvertedCandidateString];

  return autoconvertedCandidateString;
}

- (id)markedTextWithAutoconvertedCandidates
{
  formattedSearchString = [(TIKeyboardInputManagerShapeBased *)self formattedSearchString];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  autoconvertedCandidateString = [wordSearchCandidateResultSet autoconvertedCandidateString];

  if (!autoconvertedCandidateString)
  {
    v10 = formattedSearchString;
    goto LABEL_15;
  }

  wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  autoconvertedInputString = [wordSearchCandidateResultSet2 autoconvertedInputString];

  v8 = [autoconvertedInputString length];
  if (v8 >= [formattedSearchString length])
  {
    wordSearchCandidateResultSet3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    autoconvertedCandidates = [wordSearchCandidateResultSet3 autoconvertedCandidates];

    v12 = [autoconvertedCandidates count];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [autoconvertedCandidates objectAtIndexedSubscript:v15];
      input = [v16 input];
      v18 = [input length];

      v19 = v18 + v14;
      v20 = [formattedSearchString length];

      if (v19 >= v20)
      {
        break;
      }

      ++v15;
      v14 = v19;
      if (v13 == v15)
      {
        v15 = v13;
        v14 = v19;
        break;
      }
    }

    if (!v14)
    {
LABEL_13:
      v25 = formattedSearchString;
      goto LABEL_14;
    }

    v21 = [autoconvertedCandidates subarrayWithRange:{0, v15 - 1}];
    v22 = [v21 valueForKey:@"candidate"];
    v23 = [v22 componentsJoinedByString:&stru_287EBF4E8];

    v24 = [formattedSearchString substringFromIndex:v14];

    autoconvertedCandidates = v24;
    autoconvertedCandidateString = v23;
  }

  else
  {
    autoconvertedCandidates = [formattedSearchString substringFromIndex:{objc_msgSend(autoconvertedInputString, "length")}];
  }

  v25 = [autoconvertedCandidateString stringByAppendingString:autoconvertedCandidates];
LABEL_14:
  v10 = v25;

LABEL_15:

  return v10;
}

- (id)didAcceptCandidate:(id)candidate
{
  v29 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v27.receiver = self;
  v27.super_class = TIKeyboardInputManagerShapeBased;
  v5 = [(TIKeyboardInputManagerChinese *)&v27 didAcceptCandidate:candidateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    autoconvertedCandidatePointerValues = [candidateCopy autoconvertedCandidatePointerValues];
    v7 = [autoconvertedCandidatePointerValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(autoconvertedCandidatePointerValues);
          }

          v11 = [(TIKeyboardInputManagerChinese *)self mecabraCandidateRefFromPointerValue:*(*(&v23 + 1) + 8 * i)];
          wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
          v13 = wordSearch;
          if (v11)
          {
            [wordSearch performAccept:v11 isPartial:0];
          }

          else
          {
            candidate = [candidateCopy candidate];
            [v13 commitSurface:candidate];
          }
        }

        v8 = [autoconvertedCandidatePointerValues countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v15 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
  proactiveTrigger = [candidateCopy proactiveTrigger];

  if (proactiveTrigger)
  {
    candidate2 = [candidateCopy candidate];

    v5 = candidate2;
  }

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v19 = wordSearch2;
  if (v15)
  {
    [wordSearch2 performAccept:v15 isPartial:0];
  }

  else
  {
    candidate3 = [candidateCopy candidate];
    [v19 commitSurface:candidate3];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)sortingMethods
{
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    return &unk_287EC3958;
  }

  if (![(TIKeyboardInputManagerChinese *)self hasIdeographicCandidates])
  {
    return &unk_287EC3970;
  }

  if (+[CIMCandidateData shouldShowZhuyinSortingMethod])
  {
    return &unk_287EC3988;
  }

  return &unk_287EC39A0;
}

- (BOOL)shouldLookForCompletionCandidates
{
  if ([(TIKeyboardInputManagerShapeBased *)self inputCount])
  {
    return 0;
  }

  else
  {
    return ![(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates];
  }
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManagerShapeBased *)self clearInput];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerShapeBased;
  [(TIKeyboardInputManagerChinese *)&v3 inputLocationChanged];
}

- (void)acceptInput
{
  [(TIKeyboardInputManagerShapeBased *)self clearInput];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerShapeBased;
  [(TIKeyboardInputManagerShapeBased *)&v3 acceptInput];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3A8]);

  return v2;
}

- (id)keyboardConfigurationLayoutTag
{
  if ([(TIKeyboardInputManagerChinese *)self shouldEnableHalfWidthPunctuationForCurrentInputContext])
  {
    v2 = @"HalfWidthPunctuation";
  }

  else
  {
    v2 = @"Default";
  }

  return v2;
}

- (void)clearInput
{
  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  [searchString deleteCharactersInRange:{0, objc_msgSend(searchString2, "length")}];

  if (!self->_keepRemainingInput)
  {
    [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
  }

  [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch resetPreviousWord];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerShapeBased;
  [(TIKeyboardInputManagerChinese *)&v6 clearInput];
}

- (id)deleteFromInput:(unint64_t *)input
{
  [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
  if ([(TIKeyboardInputManagerShapeBased *)self previousActionWasAutoConfirmation])
  {
    v5 = *MEMORY[0x277D6FB00];
    keyboardState = [(TIKeyboardInputManagerShapeBased *)self keyboardState];
    inputMode = [keyboardState inputMode];
    v8 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarDecrement();

    [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
  }

  if ([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection])
  {
    [(TIKeyboardInputManagerChinese *)&v25 deleteFromInput:input, v24.receiver, v24.super_class, self, TIKeyboardInputManagerShapeBased];
  }

  else
  {
    inputString = [(TIKeyboardInputManagerShapeBased *)self inputString];
    v10 = [inputString hasSuffix:*MEMORY[0x277D6FF50]];

    if (v10)
    {
      [(TIKeyboardInputManagerShapeBased *)self clearInput];
      v11 = 0;
      goto LABEL_22;
    }

    inputIndex = [(TIKeyboardInputManagerShapeBased *)self inputIndex];
    if (input && inputIndex)
    {
      if (!*input)
      {
        keyboardState2 = [(TIKeyboardInputManagerShapeBased *)self keyboardState];
        documentState = [keyboardState2 documentState];
        [documentState selectedRangeInMarkedText];
        v16 = v15;

        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        *input = v17;
      }

      searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
      if ([searchString length] >= *input)
      {
        searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
        v19 = [searchString2 length] - *input;
      }

      else
      {
        v19 = 0;
      }

      searchString3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      searchString4 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [searchString3 deleteCharactersInRange:{v19, objc_msgSend(searchString4, "length") - v19}];
    }

    if (![(TIKeyboardInputManagerShapeBased *)self inputCount])
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    [(TIKeyboardInputManagerChinese *)&v24 deleteFromInput:input, self, TIKeyboardInputManagerShapeBased, v25.receiver, v25.super_class];
  }
  v11 = ;
LABEL_22:

  return v11;
}

- (void)cancelCandidatesThread
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    goto LABEL_2;
  }

  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  v5 = [searchString length];

  if (v5)
  {
    searchString2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v7 = [searchString2 length];

    if (!v7)
    {
LABEL_2:
      dummySet = 0;
      goto LABEL_9;
    }

    searchString3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v9 = [(TIKeyboardInputManagerShapeBased *)self updateCandidatesWithTIWordSearch:searchString3 predictionEnabled:0];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if ([(TIKeyboardInputManagerChinese *)self updateCompletionCandidatesIfAppropriate])
  {
LABEL_6:
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    dummySet = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet];

    goto LABEL_9;
  }

  dummySet = [MEMORY[0x277D6F3D0] dummySet];
LABEL_9:

  return dummySet;
}

- (BOOL)hasCandidates
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if ([candidates count] == 1)
  {
    inputString = [(TIKeyboardInputManagerShapeBased *)self inputString];
    v6 = [candidates objectAtIndex:0];
    candidate = [v6 candidate];
    v8 = [inputString isEqualToString:candidate];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)initialSelectedIndex
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v6 = [candidates count];
  if (v6)
  {
    inputString = [(TIKeyboardInputManagerShapeBased *)self inputString];
    if ([inputString length])
    {
      initialSelectedIndex = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerShapeBased;
  initialSelectedIndex = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return initialSelectedIndex;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerShapeBased;
    return [(TIKeyboardInputManagerShapeBased *)&v6 inputCount];
  }

  else
  {
    searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v3 = [searchString length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  searchString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  v3 = [searchString length];

  return v3;
}

- (id)rawInputString
{
  if ([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerShapeBased;
    rawInputString = [(TIKeyboardInputManagerShapeBased *)&v5 rawInputString];
  }

  else
  {
    rawInputString = [(TIKeyboardInputManagerShapeBased *)self searchString];
  }

  return rawInputString;
}

- (NSMutableString)searchString
{
  searchString = self->_searchString;
  if (!searchString)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = self->_searchString;
    self->_searchString = v4;

    searchString = self->_searchString;
  }

  return searchString;
}

@end