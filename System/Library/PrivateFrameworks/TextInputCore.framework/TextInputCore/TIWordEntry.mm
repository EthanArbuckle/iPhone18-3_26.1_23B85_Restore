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
- (TIWordEntry)initWithCoder:(id)coder;
- (id)description;
- (id)descriptionWithContext;
- (id)documentContextBeforeInput;
- (id)resolveBackspacesInKeyboardInputs;
- (id)textFromResolvedKeyboardInputs:(id)inputs;
- (id)trimmedDocumentContextBeforeInput;
- (int)leadingBackspaceCountFromResolvedKeyboardInputs:(id)inputs;
- (void)addCandidateOffered:(id)offered;
- (void)addKeyInput:(id)input;
- (void)addTouchEvent:(id)event withLayoutId:(unint64_t)id;
- (void)addUserEdit:(id)edit;
- (void)clearCandidatesOffered;
- (void)clearKeyInputs;
- (void)clearTouches;
- (void)encodeWithCoder:(id)coder;
- (void)setEditActionType:(int)type;
- (void)trimLeadingAndTrailingCharacters:(id)characters fromResolvedInputs:(id)inputs;
@end

@implementation TIWordEntry

- (id)trimmedDocumentContextBeforeInput
{
  documentContextBeforeInput = [(TIWordEntry *)self documentContextBeforeInput];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [documentContextBeforeInput stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (id)documentContextBeforeInput
{
  documentState = [(TIUserAction *)self documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (contextBeforeInput)
  {
    v4 = contextBeforeInput;
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
  allEdits = [(TIWordEntry *)self allEdits];
  v4 = [allEdits countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allEdits);
        }

        acceptedString = [*(*(&v14 + 1) + 8 * i) acceptedString];
        acceptedString2 = [(TIWordEntry *)self acceptedString];
        v10 = [acceptedString isEqual:acceptedString2];

        if (!v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [allEdits countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)textFromResolvedKeyboardInputs:(id)inputs
{
  v22 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = inputsCopy;
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
          inputTriggeredTextAccepted = [(TIWordEntry *)self inputTriggeredTextAccepted];

          if (v11 != inputTriggeredTextAccepted)
          {
            string = [v11 string];
            [v5 appendString:string];
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

- (int)leadingBackspaceCountFromResolvedKeyboardInputs:(id)inputs
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputsCopy = inputs;
  v4 = [inputsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(inputsCopy);
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
      v5 = [inputsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)trimLeadingAndTrailingCharacters:(id)characters fromResolvedInputs:(id)inputs
{
  charactersCopy = characters;
  inputsCopy = inputs;
  firstObject = [inputsCopy firstObject];
  if (firstObject)
  {
    v7 = firstObject;
    do
    {
      if ([v7 isBackspace])
      {
        break;
      }

      string = [v7 string];
      v9 = [string stringByTrimmingCharactersInSet:charactersCopy];
      v10 = [v9 length];

      if (v10)
      {
        break;
      }

      [inputsCopy removeObject:v7];
      firstObject2 = [inputsCopy firstObject];

      v7 = firstObject2;
    }

    while (firstObject2);
  }

  lastObject = [inputsCopy lastObject];
  if (lastObject)
  {
    v13 = lastObject;
    do
    {
      if ([v13 isBackspace])
      {
        break;
      }

      string2 = [v13 string];
      v15 = [string2 stringByTrimmingCharactersInSet:charactersCopy];
      v16 = [v15 length];

      if (v16)
      {
        break;
      }

      [inputsCopy removeObject:v13];
      lastObject2 = [inputsCopy lastObject];

      v13 = lastObject2;
    }

    while (lastObject2);
  }
}

- (id)resolveBackspacesInKeyboardInputs
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeyboardInputs = [(TIWordEntry *)self allKeyboardInputs];
  v5 = [allKeyboardInputs countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeyboardInputs);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        lastObject = [array lastObject];
        if (lastObject && [v9 isBackspace] && (objc_msgSend(lastObject, "isBackspace") & 1) == 0)
        {
          [array removeLastObject];
        }

        else
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v11 = [allKeyboardInputs countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)candidateContainsEmoji
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeyboardInputsM = [(TIWordEntry *)self allKeyboardInputsM];
  v3 = [allKeyboardInputsM countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(allKeyboardInputsM);
        }

        string = [*(*(&v10 + 1) + 8 * i) string];
        _containsEmoji = [string _containsEmoji];

        if (_containsEmoji)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allKeyboardInputsM countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)setEditActionType:(int)type
{
  if (type)
  {
    self->_editActionType = type;
  }
}

- (void)addUserEdit:(id)edit
{
  editCopy = edit;
  if ([(TIWordEntry *)self origin]== 1)
  {
    allEdits = [(TIWordEntry *)self allEdits];
    v5 = [allEdits count];

    if (!v5)
    {
      acceptedString = [(TIWordEntry *)self acceptedString];
      acceptedString2 = [editCopy acceptedString];
      v8 = [acceptedString isEqualToString:acceptedString2];

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      [editCopy setOrigin:v9];
    }
  }

  allEdits2 = [(TIWordEntry *)self allEdits];
  [allEdits2 addObject:editCopy];
}

- (BOOL)isPeriodFromDoubleSpaceEntry
{
  candidate = [(TIKeyboardCandidate *)self->_acceptedCandidate candidate];
  if ([candidate isEqualToString:@"."])
  {
    input = [(TIKeyboardCandidate *)self->_acceptedCandidate input];
    v5 = [input isEqualToString:@" "];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)endsWithNewLine
{
  acceptedString = [(TIWordEntry *)self acceptedString];

  if (acceptedString)
  {
    allKeyboardInputs = [(TIWordEntry *)self allKeyboardInputs];
    v5 = [allKeyboardInputs count];

    v6 = (v5 - 1);
    if (v5 - 1 >= 0)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        allKeyboardInputs2 = [(TIWordEntry *)self allKeyboardInputs];
        v10 = [allKeyboardInputs2 objectAtIndex:v6];

        string = [v10 string];

        if (string)
        {
          v12 = MEMORY[0x277CCA900];
          string2 = [v10 string];
          v14 = [v12 characterSetWithCharactersInString:string2];

          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [newlineCharacterSet isSupersetOfSet:v14];

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
            alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
            v18 = [alphanumericCharacterSet isSupersetOfSet:v14];

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
  acceptedString = [(TIWordEntry *)self acceptedString];

  if (acceptedString)
  {
    allKeyboardInputs = [(TIWordEntry *)self allKeyboardInputs];
    v5 = [allKeyboardInputs count];

    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        allKeyboardInputs2 = [(TIWordEntry *)self allKeyboardInputs];
        v10 = [allKeyboardInputs2 objectAtIndex:v6];

        string = [v10 string];

        if (string)
        {
          v12 = MEMORY[0x277CCA900];
          string2 = [v10 string];
          v14 = [v12 characterSetWithCharactersInString:string2];

          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [newlineCharacterSet isSupersetOfSet:v14];

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
            alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
            v18 = [alphanumericCharacterSet isSupersetOfSet:v14];

            if (!(v7 & 1 | ((v18 & 1) == 0)))
            {
LABEL_14:

              return v16;
            }

            v8 |= v18;
          }
        }

        ++v6;
        allKeyboardInputs3 = [(TIWordEntry *)self allKeyboardInputs];
        v20 = [allKeyboardInputs3 count];
      }

      while (v20 > v6);
    }
  }

  LOBYTE(v16) = 0;
  return v16;
}

- (NSArray)touchLayouts
{
  touchLayoutsM = [(TIWordEntry *)self touchLayoutsM];
  v3 = [touchLayoutsM copy];

  return v3;
}

- (NSArray)candidatesOffered
{
  candidatesOfferedM = [(TIWordEntry *)self candidatesOfferedM];
  v3 = [candidatesOfferedM copy];

  return v3;
}

- (NSArray)allTouches
{
  allTouchesM = [(TIWordEntry *)self allTouchesM];
  v3 = [allTouchesM copy];

  return v3;
}

- (NSArray)allKeyboardInputs
{
  allKeyboardInputsM = [(TIWordEntry *)self allKeyboardInputsM];
  v3 = [allKeyboardInputsM copy];

  return v3;
}

- (void)clearTouches
{
  allTouchesM = [(TIWordEntry *)self allTouchesM];
  [allTouchesM removeAllObjects];

  touchLayoutsM = [(TIWordEntry *)self touchLayoutsM];
  [touchLayoutsM removeAllObjects];
}

- (void)addTouchEvent:(id)event withLayoutId:(unint64_t)id
{
  eventCopy = event;
  allTouchesM = [(TIWordEntry *)self allTouchesM];
  [allTouchesM addObject:eventCopy];

  touchLayoutsM = [(TIWordEntry *)self touchLayoutsM];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:id];
  [touchLayoutsM addObject:v8];
}

- (void)clearCandidatesOffered
{
  candidatesOfferedM = [(TIWordEntry *)self candidatesOfferedM];
  [candidatesOfferedM removeAllObjects];
}

- (void)addCandidateOffered:(id)offered
{
  offeredCopy = offered;
  candidatesOfferedM = [(TIWordEntry *)self candidatesOfferedM];
  [candidatesOfferedM removeAllObjects];

  candidatesOfferedM2 = [(TIWordEntry *)self candidatesOfferedM];
  [candidatesOfferedM2 addObject:offeredCopy];
}

- (void)clearKeyInputs
{
  allKeyboardInputsM = [(TIWordEntry *)self allKeyboardInputsM];
  [allKeyboardInputsM removeAllObjects];
}

- (void)addKeyInput:(id)input
{
  inputCopy = input;
  allKeyboardInputsM = [(TIWordEntry *)self allKeyboardInputsM];
  [allKeyboardInputsM addObject:inputCopy];
}

- (id)descriptionWithContext
{
  v3 = MEMORY[0x277CCACA8];
  documentState = [(TIUserAction *)self documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  acceptedString = [(TIWordEntry *)self acceptedString];
  v7 = [v3 stringWithFormat:@"%@ <%@>", contextBeforeInput, acceptedString];

  return v7;
}

- (id)description
{
  acceptedString = [(TIWordEntry *)self acceptedString];

  if (acceptedString)
  {
    acceptedString2 = [(TIWordEntry *)self acceptedString];
  }

  else
  {
    acceptedString2 = &stru_283FDFAF8;
  }

  return acceptedString2;
}

- (TIWordEntry)editedEntry
{
  allEdits = [(TIWordEntry *)self allEdits];
  lastObject = [allEdits lastObject];

  return lastObject;
}

- (NSMutableArray)allEdits
{
  allEdits = self->_allEdits;
  if (!allEdits)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_allEdits;
    self->_allEdits = array;

    allEdits = self->_allEdits;
  }

  return allEdits;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIWordEntry;
  coderCopy = coder;
  [(TIUserAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_allKeyboardInputsM forKey:{@"allKeyboardInputsM", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_allTouchesM forKey:@"allTouchesM"];
  [coderCopy encodeObject:self->_touchLayoutsM forKey:@"touchLayoutsM"];
  [coderCopy encodeObject:self->_candidatesOfferedM forKey:@"candidatesOfferedM"];
  [coderCopy encodeObject:self->_acceptedString forKey:@"acceptedString"];
  [coderCopy encodeObject:self->_acceptedCandidate forKey:@"acceptedCandidate"];
  [coderCopy encodeObject:self->_originalAcceptedString forKey:@"originalAcceptedString"];
  [coderCopy encodeObject:self->_originalCandidate forKey:@"originalCandidate"];
  [coderCopy encodeObject:self->_orientation forKey:@"orientation"];
  [coderCopy encodeInt:self->_wordEntryType forKey:@"wordEntryType"];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
  [coderCopy encodeBool:self->_cancelled forKey:@"cancelled"];
  [coderCopy encodeBool:self->_includesCursorEdits forKey:@"includesCursorEdits"];
  [coderCopy encodeBool:self->_includesOrientationChange forKey:@"includesOrientationChange"];
  [coderCopy encodeBool:self->_extendsPriorWord forKey:@"extendsPriorWord"];
  [coderCopy encodeBool:self->_isRetrocorrection forKey:@"isRetrocorrection"];
  [coderCopy encodeBool:self->_isMultilingual forKey:@"isMultilingual"];
  [coderCopy encodeBool:self->_isContinuousPathCompletion forKey:@"isContinuousPathCompletion"];
  [coderCopy encodeObject:self->_inputStem forKey:@"inputStem"];
  [coderCopy encodeObject:self->_inputContext forKey:@"inputContext"];
  [coderCopy encodeInteger:self->_layoutID forKey:@"layoutID"];
  [coderCopy encodeInteger:self->_candidateIndex forKey:@"candidateIndex"];
  [coderCopy encodeObject:self->_inputTriggeredTextAccepted forKey:@"inputTriggeredTextAccepted"];
  [coderCopy encodeBool:self->_isPunctuationEntryFollowingAWord forKey:@"isPunctuationEntryFollowingAWord"];
  [coderCopy encodeInt:self->_unfinishedWordEntryTreatment forKey:@"unfinishedWordEntryTreatment"];
  [coderCopy encodeBool:self->_originalWordInAlignment forKey:@"originalWordInAlignment"];
  [coderCopy encodeInt:self->_origin forKey:@"origin"];
}

- (TIWordEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = TIWordEntry;
  v5 = [(TIUserAction *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allKeyboardInputsM"];
    allKeyboardInputsM = v5->_allKeyboardInputsM;
    v5->_allKeyboardInputsM = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"allTouchesM"];
    allTouchesM = v5->_allTouchesM;
    v5->_allTouchesM = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"touchLayoutsM"];
    touchLayoutsM = v5->_touchLayoutsM;
    v5->_touchLayoutsM = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"candidatesOffered"];
    candidatesOfferedM = v5->_candidatesOfferedM;
    v5->_candidatesOfferedM = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptedString"];
    acceptedString = v5->_acceptedString;
    v5->_acceptedString = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptedCandidate"];
    acceptedCandidate = v5->_acceptedCandidate;
    v5->_acceptedCandidate = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalAcceptedString"];
    originalAcceptedString = v5->_originalAcceptedString;
    v5->_originalAcceptedString = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalCandidate"];
    originalCandidate = v5->_originalCandidate;
    v5->_originalCandidate = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    orientation = v5->_orientation;
    v5->_orientation = v34;

    v5->_wordEntryType = [coderCopy decodeIntForKey:@"wordEntryType"];
    v5->_deleted = [coderCopy decodeBoolForKey:@"deleted"];
    v5->_cancelled = [coderCopy decodeBoolForKey:@"cancelled"];
    v5->_includesCursorEdits = [coderCopy decodeBoolForKey:@"includesCursorEdits"];
    v5->_includesOrientationChange = [coderCopy decodeBoolForKey:@"includesOrientationChange"];
    v5->_extendsPriorWord = [coderCopy decodeBoolForKey:@"extendsPriorWord"];
    v5->_isRetrocorrection = [coderCopy decodeBoolForKey:@"isRetrocorrection"];
    v5->_isMultilingual = [coderCopy decodeBoolForKey:@"isMultilingual"];
    v5->_isOOV = [coderCopy decodeBoolForKey:@"isOOV"];
    v5->_isContinuousPathCompletion = [coderCopy decodeBoolForKey:@"isContinuousPathCompletion"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputStem"];
    inputStem = v5->_inputStem;
    v5->_inputStem = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputContext"];
    inputContext = v5->_inputContext;
    v5->_inputContext = v38;

    v5->_layoutID = [coderCopy decodeIntegerForKey:@"layoutID"];
    v5->_candidateIndex = [coderCopy decodeIntegerForKey:@"candidateIndex"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputTriggeredTextAccepted"];
    inputTriggeredTextAccepted = v5->_inputTriggeredTextAccepted;
    v5->_inputTriggeredTextAccepted = v40;

    v5->_isPunctuationEntryFollowingAWord = [coderCopy decodeBoolForKey:@"isPunctuationEntryFollowingAWord"];
    v5->_unfinishedWordEntryTreatment = [coderCopy decodeIntForKey:@"unfinishedWordEntryTreatment"];
    v5->_originalWordInAlignment = [coderCopy decodeBoolForKey:@"originalWordInAlignment"];
    v5->_origin = [coderCopy decodeIntForKey:@"origin"];
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
    array = [MEMORY[0x277CBEB18] array];
    allKeyboardInputsM = v2->_allKeyboardInputsM;
    v2->_allKeyboardInputsM = array;

    array2 = [MEMORY[0x277CBEB18] array];
    allTouchesM = v2->_allTouchesM;
    v2->_allTouchesM = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    candidatesOfferedM = v2->_candidatesOfferedM;
    v2->_candidatesOfferedM = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    touchLayoutsM = v2->_touchLayoutsM;
    v2->_touchLayoutsM = array4;

    v2->_unfinishedWordEntryTreatment = 0;
    v2->_origin = 0;
    [(TIUserAction *)v2 setActionType:0];
  }

  return v2;
}

@end