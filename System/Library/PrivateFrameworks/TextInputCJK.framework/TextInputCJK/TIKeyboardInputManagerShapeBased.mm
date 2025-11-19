@interface TIKeyboardInputManagerShapeBased
- (BOOL)hasCandidates;
- (BOOL)shouldLookForCompletionCandidates;
- (NSMutableString)searchString;
- (id)candidateResultSet;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
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
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 autoconvertedCandidateString];

  return v3;
}

- (id)markedTextWithAutoconvertedCandidates
{
  v3 = [(TIKeyboardInputManagerShapeBased *)self formattedSearchString];
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 autoconvertedCandidateString];

  if (!v5)
  {
    v10 = v3;
    goto LABEL_15;
  }

  v6 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v7 = [v6 autoconvertedInputString];

  v8 = [v7 length];
  if (v8 >= [v3 length])
  {
    v11 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v9 = [v11 autoconvertedCandidates];

    v12 = [v9 count];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [v9 objectAtIndexedSubscript:v15];
      v17 = [v16 input];
      v18 = [v17 length];

      v19 = v18 + v14;
      v20 = [v3 length];

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
      v25 = v3;
      goto LABEL_14;
    }

    v21 = [v9 subarrayWithRange:{0, v15 - 1}];
    v22 = [v21 valueForKey:@"candidate"];
    v23 = [v22 componentsJoinedByString:&stru_287EBF4E8];

    v24 = [v3 substringFromIndex:v14];

    v9 = v24;
    v5 = v23;
  }

  else
  {
    v9 = [v3 substringFromIndex:{objc_msgSend(v7, "length")}];
  }

  v25 = [v5 stringByAppendingString:v9];
LABEL_14:
  v10 = v25;

LABEL_15:

  return v10;
}

- (id)didAcceptCandidate:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TIKeyboardInputManagerShapeBased;
  v5 = [(TIKeyboardInputManagerChinese *)&v27 didAcceptCandidate:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v4 autoconvertedCandidatePointerValues];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [(TIKeyboardInputManagerChinese *)self mecabraCandidateRefFromPointerValue:*(*(&v23 + 1) + 8 * i)];
          v12 = [(TIKeyboardInputManagerChinese *)self wordSearch];
          v13 = v12;
          if (v11)
          {
            [v12 performAccept:v11 isPartial:0];
          }

          else
          {
            v14 = [v4 candidate];
            [v13 commitSurface:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v15 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v4];
  v16 = [v4 proactiveTrigger];

  if (v16)
  {
    v17 = [v4 candidate];

    v5 = v17;
  }

  v18 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v19 = v18;
  if (v15)
  {
    [v18 performAccept:v15 isPartial:0];
  }

  else
  {
    v20 = [v4 candidate];
    [v19 commitSurface:v20];
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
  v3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  v4 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  [v3 deleteCharactersInRange:{0, objc_msgSend(v4, "length")}];

  if (!self->_keepRemainingInput)
  {
    [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
  }

  [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
  v5 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v5 resetPreviousWord];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerShapeBased;
  [(TIKeyboardInputManagerChinese *)&v6 clearInput];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  [(TIKeyboardInputManagerShapeBased *)self cancelCandidatesThread];
  if ([(TIKeyboardInputManagerShapeBased *)self previousActionWasAutoConfirmation])
  {
    v5 = *MEMORY[0x277D6FB00];
    v6 = [(TIKeyboardInputManagerShapeBased *)self keyboardState];
    v7 = [v6 inputMode];
    v8 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarDecrement();

    [(TIKeyboardInputManagerShapeBased *)self setPreviousActionWasAutoConfirmation:0];
  }

  if ([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection])
  {
    [(TIKeyboardInputManagerChinese *)&v25 deleteFromInput:a3, v24.receiver, v24.super_class, self, TIKeyboardInputManagerShapeBased];
  }

  else
  {
    v9 = [(TIKeyboardInputManagerShapeBased *)self inputString];
    v10 = [v9 hasSuffix:*MEMORY[0x277D6FF50]];

    if (v10)
    {
      [(TIKeyboardInputManagerShapeBased *)self clearInput];
      v11 = 0;
      goto LABEL_22;
    }

    v12 = [(TIKeyboardInputManagerShapeBased *)self inputIndex];
    if (a3 && v12)
    {
      if (!*a3)
      {
        v13 = [(TIKeyboardInputManagerShapeBased *)self keyboardState];
        v14 = [v13 documentState];
        [v14 selectedRangeInMarkedText];
        v16 = v15;

        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        *a3 = v17;
      }

      v18 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      if ([v18 length] >= *a3)
      {
        v20 = [(TIKeyboardInputManagerShapeBased *)self searchString];
        v19 = [v20 length] - *a3;
      }

      else
      {
        v19 = 0;
      }

      v21 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      v22 = [(TIKeyboardInputManagerShapeBased *)self searchString];
      [v21 deleteCharactersInRange:{v19, objc_msgSend(v22, "length") - v19}];
    }

    if (![(TIKeyboardInputManagerShapeBased *)self inputCount])
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    [(TIKeyboardInputManagerChinese *)&v24 deleteFromInput:a3, self, TIKeyboardInputManagerShapeBased, v25.receiver, v25.super_class];
  }
  v11 = ;
LABEL_22:

  return v11;
}

- (void)cancelCandidatesThread
{
  v2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v2 cancel];
}

- (id)candidateResultSet
{
  if (([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    goto LABEL_2;
  }

  v4 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v7 = [v6 length];

    if (!v7)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_9;
    }

    v8 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v9 = [(TIKeyboardInputManagerShapeBased *)self updateCandidatesWithTIWordSearch:v8 predictionEnabled:0];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if ([(TIKeyboardInputManagerChinese *)self updateCompletionCandidatesIfAppropriate])
  {
LABEL_6:
    v10 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v3 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v10];

    goto LABEL_9;
  }

  v3 = [MEMORY[0x277D6F3D0] dummySet];
LABEL_9:

  return v3;
}

- (BOOL)hasCandidates
{
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];

  if ([v4 count] == 1)
  {
    v5 = [(TIKeyboardInputManagerShapeBased *)self inputString];
    v6 = [v4 objectAtIndex:0];
    v7 = [v6 candidate];
    v8 = [v5 isEqualToString:v7];

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
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [(TIKeyboardInputManagerShapeBased *)self inputString];
    if ([v2 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerShapeBased;
  v7 = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
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
    v4 = [(TIKeyboardInputManagerShapeBased *)self searchString];
    v3 = [v4 length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  v2 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  v3 = [v2 length];

  return v3;
}

- (id)rawInputString
{
  if ([(TIKeyboardInputManagerShapeBased *)self shouldSkipCandidateSelection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerShapeBased;
    v3 = [(TIKeyboardInputManagerShapeBased *)&v5 rawInputString];
  }

  else
  {
    v3 = [(TIKeyboardInputManagerShapeBased *)self searchString];
  }

  return v3;
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