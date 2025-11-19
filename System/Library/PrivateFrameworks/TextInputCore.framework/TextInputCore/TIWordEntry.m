@interface TIWordEntry
- (BOOL)candidateContainsEmoji;
- (BOOL)endsWithNewLine;
- (BOOL)isPeriodFromDoubleSpaceEntry;
- (BOOL)startsWithNewLine;
- (BOOL)wasRevised;
- (NSArray)allKeyboardInputs;
- (NSArray)allTouches;
- (NSArray)candidatesOffered;
- (NSArray)touchLayouts;
- (NSMutableArray)allEdits;
- (TIWordEntry)editedEntry;
- (TIWordEntry)init;
- (TIWordEntry)initWithCoder:(id)a3;
- (id)description;
- (id)descriptionWithContext;
- (id)documentContextBeforeInput;
- (id)resolveBackspacesInKeyboardInputs;
- (id)textFromResolvedKeyboardInputs:(id)a3;
- (id)trimmedDocumentContextBeforeInput;
- (int)leadingBackspaceCountFromResolvedKeyboardInputs:(id)a3;
- (void)addCandidateOffered:(id)a3;
- (void)addKeyInput:(id)a3;
- (void)addTouchEvent:(id)a3 withLayoutId:(unint64_t)a4;
- (void)addUserEdit:(id)a3;
- (void)clearCandidatesOffered;
- (void)clearKeyInputs;
- (void)clearTouches;
- (void)encodeWithCoder:(id)a3;
- (void)setEditActionType:(int)a3;
- (void)trimLeadingAndTrailingCharacters:(id)a3 fromResolvedInputs:(id)a4;
@end

@implementation TIWordEntry

- (id)trimmedDocumentContextBeforeInput
{
  v2 = [(TIWordEntry *)self documentContextBeforeInput];
  v3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (id)documentContextBeforeInput
{
  v2 = [(TIUserAction *)self documentState];
  v3 = [v2 contextBeforeInput];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_283FDFAF8;
  }

  return v4;
}

- (BOOL)wasRevised
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(TIWordEntry *)self allEdits];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) acceptedString];
        v9 = [(TIWordEntry *)self acceptedString];
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)textFromResolvedKeyboardInputs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([v11 isBackspace] & 1) == 0)
        {
          v12 = [(TIWordEntry *)self inputTriggeredTextAccepted];

          if (v11 != v12)
          {
            v13 = [v11 string];
            [v5 appendString:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (int)leadingBackspaceCountFromResolvedKeyboardInputs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v12 + 1) + 8 * v8) isBackspace])
        {
          v6 = v9;
          goto LABEL_12;
        }

        ++v9;
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)trimLeadingAndTrailingCharacters:(id)a3 fromResolvedInputs:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      if ([v7 isBackspace])
      {
        break;
      }

      v8 = [v7 string];
      v9 = [v8 stringByTrimmingCharactersInSet:v18];
      v10 = [v9 length];

      if (v10)
      {
        break;
      }

      [v5 removeObject:v7];
      v11 = [v5 firstObject];

      v7 = v11;
    }

    while (v11);
  }

  v12 = [v5 lastObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      if ([v13 isBackspace])
      {
        break;
      }

      v14 = [v13 string];
      v15 = [v14 stringByTrimmingCharactersInSet:v18];
      v16 = [v15 length];

      if (v16)
      {
        break;
      }

      [v5 removeObject:v13];
      v17 = [v5 lastObject];

      v13 = v17;
    }

    while (v17);
  }
}

- (id)resolveBackspacesInKeyboardInputs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(TIWordEntry *)self allKeyboardInputs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [v3 lastObject];
        if (v10 && [v9 isBackspace] && (objc_msgSend(v10, "isBackspace") & 1) == 0)
        {
          [v3 removeLastObject];
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)candidateContainsEmoji
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(TIWordEntry *)self allKeyboardInputsM];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) string];
        v7 = [v6 _containsEmoji];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setEditActionType:(int)a3
{
  if (a3)
  {
    self->_editActionType = a3;
  }
}

- (void)addUserEdit:(id)a3
{
  v11 = a3;
  if ([(TIWordEntry *)self origin]== 1)
  {
    v4 = [(TIWordEntry *)self allEdits];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = [(TIWordEntry *)self acceptedString];
      v7 = [v11 acceptedString];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      [v11 setOrigin:v9];
    }
  }

  v10 = [(TIWordEntry *)self allEdits];
  [v10 addObject:v11];
}

- (BOOL)isPeriodFromDoubleSpaceEntry
{
  v3 = [(TIKeyboardCandidate *)self->_acceptedCandidate candidate];
  if ([v3 isEqualToString:@"."])
  {
    v4 = [(TIKeyboardCandidate *)self->_acceptedCandidate input];
    v5 = [v4 isEqualToString:@" "];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)endsWithNewLine
{
  v3 = [(TIWordEntry *)self acceptedString];

  if (v3)
  {
    v4 = [(TIWordEntry *)self allKeyboardInputs];
    v5 = [v4 count];

    v6 = (v5 - 1);
    if (v5 - 1 >= 0)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [(TIWordEntry *)self allKeyboardInputs];
        v10 = [v9 objectAtIndex:v6];

        v11 = [v10 string];

        if (v11)
        {
          v12 = MEMORY[0x277CCA900];
          v13 = [v10 string];
          v14 = [v12 characterSetWithCharactersInString:v13];

          v15 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [v15 isSupersetOfSet:v14];

          if (v16)
          {
            if ((v8 & 1) == 0)
            {
              goto LABEL_15;
            }

            v8 = 1;
            v7 = 1;
          }

          else
          {
            v17 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
            v18 = [v17 isSupersetOfSet:v14];

            if (!(v7 & 1 | ((v18 & 1) == 0)))
            {
LABEL_15:

              return v16;
            }

            v8 |= v18;
          }
        }
      }

      while (v6-- > 0);
    }
  }

  LOBYTE(v16) = 0;
  return v16;
}

- (BOOL)startsWithNewLine
{
  v3 = [(TIWordEntry *)self acceptedString];

  if (v3)
  {
    v4 = [(TIWordEntry *)self allKeyboardInputs];
    v5 = [v4 count];

    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [(TIWordEntry *)self allKeyboardInputs];
        v10 = [v9 objectAtIndex:v6];

        v11 = [v10 string];

        if (v11)
        {
          v12 = MEMORY[0x277CCA900];
          v13 = [v10 string];
          v14 = [v12 characterSetWithCharactersInString:v13];

          v15 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [v15 isSupersetOfSet:v14];

          if (v16)
          {
            if ((v8 & 1) == 0)
            {
              goto LABEL_14;
            }

            v8 = 1;
            v7 = 1;
          }

          else
          {
            v17 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
            v18 = [v17 isSupersetOfSet:v14];

            if (!(v7 & 1 | ((v18 & 1) == 0)))
            {
LABEL_14:

              return v16;
            }

            v8 |= v18;
          }
        }

        ++v6;
        v19 = [(TIWordEntry *)self allKeyboardInputs];
        v20 = [v19 count];
      }

      while (v20 > v6);
    }
  }

  LOBYTE(v16) = 0;
  return v16;
}

- (NSArray)touchLayouts
{
  v2 = [(TIWordEntry *)self touchLayoutsM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)candidatesOffered
{
  v2 = [(TIWordEntry *)self candidatesOfferedM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allTouches
{
  v2 = [(TIWordEntry *)self allTouchesM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allKeyboardInputs
{
  v2 = [(TIWordEntry *)self allKeyboardInputsM];
  v3 = [v2 copy];

  return v3;
}

- (void)clearTouches
{
  v3 = [(TIWordEntry *)self allTouchesM];
  [v3 removeAllObjects];

  v4 = [(TIWordEntry *)self touchLayoutsM];
  [v4 removeAllObjects];
}

- (void)addTouchEvent:(id)a3 withLayoutId:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TIWordEntry *)self allTouchesM];
  [v7 addObject:v6];

  v9 = [(TIWordEntry *)self touchLayoutsM];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v9 addObject:v8];
}

- (void)clearCandidatesOffered
{
  v2 = [(TIWordEntry *)self candidatesOfferedM];
  [v2 removeAllObjects];
}

- (void)addCandidateOffered:(id)a3
{
  v4 = a3;
  v5 = [(TIWordEntry *)self candidatesOfferedM];
  [v5 removeAllObjects];

  v6 = [(TIWordEntry *)self candidatesOfferedM];
  [v6 addObject:v4];
}

- (void)clearKeyInputs
{
  v2 = [(TIWordEntry *)self allKeyboardInputsM];
  [v2 removeAllObjects];
}

- (void)addKeyInput:(id)a3
{
  v4 = a3;
  v5 = [(TIWordEntry *)self allKeyboardInputsM];
  [v5 addObject:v4];
}

- (id)descriptionWithContext
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TIUserAction *)self documentState];
  v5 = [v4 contextBeforeInput];
  v6 = [(TIWordEntry *)self acceptedString];
  v7 = [v3 stringWithFormat:@"%@ <%@>", v5, v6];

  return v7;
}

- (id)description
{
  v3 = [(TIWordEntry *)self acceptedString];

  if (v3)
  {
    v4 = [(TIWordEntry *)self acceptedString];
  }

  else
  {
    v4 = &stru_283FDFAF8;
  }

  return v4;
}

- (TIWordEntry)editedEntry
{
  v2 = [(TIWordEntry *)self allEdits];
  v3 = [v2 lastObject];

  return v3;
}

- (NSMutableArray)allEdits
{
  allEdits = self->_allEdits;
  if (!allEdits)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_allEdits;
    self->_allEdits = v4;

    allEdits = self->_allEdits;
  }

  return allEdits;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIWordEntry;
  v4 = a3;
  [(TIUserAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_allKeyboardInputsM forKey:{@"allKeyboardInputsM", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_allTouchesM forKey:@"allTouchesM"];
  [v4 encodeObject:self->_touchLayoutsM forKey:@"touchLayoutsM"];
  [v4 encodeObject:self->_candidatesOfferedM forKey:@"candidatesOfferedM"];
  [v4 encodeObject:self->_acceptedString forKey:@"acceptedString"];
  [v4 encodeObject:self->_acceptedCandidate forKey:@"acceptedCandidate"];
  [v4 encodeObject:self->_originalAcceptedString forKey:@"originalAcceptedString"];
  [v4 encodeObject:self->_originalCandidate forKey:@"originalCandidate"];
  [v4 encodeObject:self->_orientation forKey:@"orientation"];
  [v4 encodeInt:self->_wordEntryType forKey:@"wordEntryType"];
  [v4 encodeBool:self->_deleted forKey:@"deleted"];
  [v4 encodeBool:self->_cancelled forKey:@"cancelled"];
  [v4 encodeBool:self->_includesCursorEdits forKey:@"includesCursorEdits"];
  [v4 encodeBool:self->_includesOrientationChange forKey:@"includesOrientationChange"];
  [v4 encodeBool:self->_extendsPriorWord forKey:@"extendsPriorWord"];
  [v4 encodeBool:self->_isRetrocorrection forKey:@"isRetrocorrection"];
  [v4 encodeBool:self->_isMultilingual forKey:@"isMultilingual"];
  [v4 encodeBool:self->_isContinuousPathCompletion forKey:@"isContinuousPathCompletion"];
  [v4 encodeObject:self->_inputStem forKey:@"inputStem"];
  [v4 encodeObject:self->_inputContext forKey:@"inputContext"];
  [v4 encodeInteger:self->_layoutID forKey:@"layoutID"];
  [v4 encodeInteger:self->_candidateIndex forKey:@"candidateIndex"];
  [v4 encodeObject:self->_inputTriggeredTextAccepted forKey:@"inputTriggeredTextAccepted"];
  [v4 encodeBool:self->_isPunctuationEntryFollowingAWord forKey:@"isPunctuationEntryFollowingAWord"];
  [v4 encodeInt:self->_unfinishedWordEntryTreatment forKey:@"unfinishedWordEntryTreatment"];
  [v4 encodeBool:self->_originalWordInAlignment forKey:@"originalWordInAlignment"];
  [v4 encodeInt:self->_origin forKey:@"origin"];
}

- (TIWordEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = TIWordEntry;
  v5 = [(TIUserAction *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"allKeyboardInputsM"];
    allKeyboardInputsM = v5->_allKeyboardInputsM;
    v5->_allKeyboardInputsM = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"allTouchesM"];
    allTouchesM = v5->_allTouchesM;
    v5->_allTouchesM = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"touchLayoutsM"];
    touchLayoutsM = v5->_touchLayoutsM;
    v5->_touchLayoutsM = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"candidatesOffered"];
    candidatesOfferedM = v5->_candidatesOfferedM;
    v5->_candidatesOfferedM = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptedString"];
    acceptedString = v5->_acceptedString;
    v5->_acceptedString = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalAcceptedString"];
    originalAcceptedString = v5->_originalAcceptedString;
    v5->_originalAcceptedString = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalCandidate"];
    originalCandidate = v5->_originalCandidate;
    v5->_originalCandidate = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    orientation = v5->_orientation;
    v5->_orientation = v34;

    v5->_wordEntryType = [v4 decodeIntForKey:@"wordEntryType"];
    v5->_deleted = [v4 decodeBoolForKey:@"deleted"];
    v5->_cancelled = [v4 decodeBoolForKey:@"cancelled"];
    v5->_includesCursorEdits = [v4 decodeBoolForKey:@"includesCursorEdits"];
    v5->_includesOrientationChange = [v4 decodeBoolForKey:@"includesOrientationChange"];
    v5->_extendsPriorWord = [v4 decodeBoolForKey:@"extendsPriorWord"];
    v5->_isRetrocorrection = [v4 decodeBoolForKey:@"isRetrocorrection"];
    v5->_isMultilingual = [v4 decodeBoolForKey:@"isMultilingual"];
    v5->_isOOV = [v4 decodeBoolForKey:@"isOOV"];
    v5->_isContinuousPathCompletion = [v4 decodeBoolForKey:@"isContinuousPathCompletion"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputStem"];
    inputStem = v5->_inputStem;
    v5->_inputStem = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputContext"];
    inputContext = v5->_inputContext;
    v5->_inputContext = v38;

    v5->_layoutID = [v4 decodeIntegerForKey:@"layoutID"];
    v5->_candidateIndex = [v4 decodeIntegerForKey:@"candidateIndex"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputTriggeredTextAccepted"];
    inputTriggeredTextAccepted = v5->_inputTriggeredTextAccepted;
    v5->_inputTriggeredTextAccepted = v40;

    v5->_isPunctuationEntryFollowingAWord = [v4 decodeBoolForKey:@"isPunctuationEntryFollowingAWord"];
    v5->_unfinishedWordEntryTreatment = [v4 decodeIntForKey:@"unfinishedWordEntryTreatment"];
    v5->_originalWordInAlignment = [v4 decodeBoolForKey:@"originalWordInAlignment"];
    v5->_origin = [v4 decodeIntForKey:@"origin"];
    [(TIUserAction *)v5 setActionType:0];
  }

  return v5;
}

- (TIWordEntry)init
{
  v12.receiver = self;
  v12.super_class = TIWordEntry;
  v2 = [(TIUserAction *)&v12 initWithTIKeyboardState:0];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    allKeyboardInputsM = v2->_allKeyboardInputsM;
    v2->_allKeyboardInputsM = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    allTouchesM = v2->_allTouchesM;
    v2->_allTouchesM = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    candidatesOfferedM = v2->_candidatesOfferedM;
    v2->_candidatesOfferedM = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    touchLayoutsM = v2->_touchLayoutsM;
    v2->_touchLayoutsM = v9;

    v2->_unfinishedWordEntryTreatment = 0;
    v2->_origin = 0;
    [(TIUserAction *)v2 setActionType:0];
  }

  return v2;
}

@end