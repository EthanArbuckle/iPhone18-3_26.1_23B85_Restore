@interface TIKeyboardInputManager_th_24Key
- (NSDictionary)keyLayoutMap;
- (TIKeyboardInputManager_th_24Key)initWithConfig:(id)config keyboardState:(id)state;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count;
- (id)keyboardBehaviors;
- (id)nearbyKeysForInput:(id)input isPopupVariant:(BOOL)variant;
- (id)processAcceptedCandidate:(id)candidate;
- (id)rawInputString;
- (id)wordCharacters;
- (unint64_t)initialSelectedIndex;
- (void)initializeKeyLayoutMaps;
- (void)updateComposedText;
@end

@implementation TIKeyboardInputManager_th_24Key

- (TIKeyboardInputManager_th_24Key)initWithConfig:(id)config keyboardState:(id)state
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_th_24Key;
  v4 = [(TIKeyboardInputManager_th *)&v7 initWithConfig:config keyboardState:state];
  v5 = v4;
  if (v4)
  {
    [(TIKeyboardInputManager_th_24Key *)v4 initializeKeyLayoutMaps];
  }

  return v5;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7058]);

  return v2;
}

- (unint64_t)initialSelectedIndex
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v6 = [candidates count];
  if (v6)
  {
    inputString = [(TIKeyboardInputManager_th_24Key *)self inputString];
    if ([inputString length])
    {
      initialSelectedIndex = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_th_24Key;
  initialSelectedIndex = [(TIKeyboardInputManager_th_24Key *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return initialSelectedIndex;
}

- (id)defaultCandidate
{
  if ([(TIKeyboardInputManager_th_24Key *)self inputCount])
  {
    v3 = objc_alloc(MEMORY[0x29EDC7088]);
    v4 = [v3 initWithCandidate:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7288])];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateComposedText
{
  if ([(TIKeyboardInputManager_th_24Key *)self inputCount])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asInlineText = [composingInput asInlineText];

    v11 = asInlineText;
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    firstObject = [candidates firstObject];

    v8 = v11;
    if (firstObject)
    {
      v9 = [v11 length];
      candidate = [firstObject candidate];
      v8 = v11;
      if (v9 - 1 < [candidate length])
      {
        v8 = [candidate substringToIndex:v9];
      }
    }

    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7288]) setString:v8];
  }
}

- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count
{
  TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  if ([(TIKeyboardInputManager_th_24Key *)self inputCount])
  {
    [(TIKeyboardInputManager_th_24Key *)self updateComposedText];
  }

  else
  {
    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7288]) setString:&stru_2A252D530];
  }

  return 0;
}

- (id)candidateResultSet
{
  v3 = [(TIKeyboardInputManagerMecabra *)self autocorrectionListWithCandidateCount:10];
  [(TIKeyboardInputManager_th_24Key *)self updateComposedText];
  if ([(TIKeyboardInputManager_th_24Key *)self inputCount])
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    firstObject = [candidates firstObject];

    if (firstObject)
    {
      candidate = [firstObject candidate];
      v8 = *MEMORY[0x29EDC7288];
      v9 = [candidate isEqualToString:*(&self->super.super.super.super.super.super.isa + v8)];

      if ((v9 & 1) == 0)
      {
        wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        candidates2 = [wordSearchCandidateResultSet2 candidates];
        v12 = [candidates2 count];

        if (v12)
        {
          v13 = 0;
          while (1)
          {
            wordSearchCandidateResultSet3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
            candidates3 = [wordSearchCandidateResultSet3 candidates];
            wordSearchCandidateResultSet5 = [candidates3 objectAtIndexedSubscript:v13];

            candidate2 = [wordSearchCandidateResultSet5 candidate];
            LODWORD(candidates3) = [candidate2 isEqualToString:*(&self->super.super.super.super.super.super.isa + v8)];

            if (candidates3)
            {
              break;
            }

            if (v12 == ++v13)
            {
              goto LABEL_8;
            }
          }

          wordSearchCandidateResultSet4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
          [wordSearchCandidateResultSet4 moveCandidate:wordSearchCandidateResultSet5 fromIndex:v13 toIndex:0];
        }

        else
        {
LABEL_8:
          wordSearchCandidateResultSet5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
          v18 = *(&self->super.super.super.super.super.super.isa + v8);
          wordSearchCandidateResultSet4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          asInlineText = [wordSearchCandidateResultSet4 asInlineText];
          [wordSearchCandidateResultSet5 insertSyntheticMecabraCandidateWithSurface:v18 input:asInlineText atIndex:0];
        }
      }
    }
  }

  wordSearchCandidateResultSet6 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v22 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet6];

  return v22;
}

- (id)processAcceptedCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (candidateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    candidate = [candidateCopy candidate];
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_th_24Key;
    candidate = [(TIKeyboardInputManagerMecabra *)&v8 processAcceptedCandidate:candidateCopy];
  }

  return candidate;
}

- (void)initializeKeyLayoutMaps
{
  keyLayoutMap = self->_keyLayoutMap;
  self->_keyLayoutMap = &unk_2A252E458;
  MEMORY[0x2A1C71028]();
}

- (NSDictionary)keyLayoutMap
{
  keyLayoutMap = self->_keyLayoutMap;
  if (!keyLayoutMap)
  {
    [(TIKeyboardInputManager_th_24Key *)self initializeKeyLayoutMaps];
    keyLayoutMap = self->_keyLayoutMap;
  }

  return keyLayoutMap;
}

- (id)nearbyKeysForInput:(id)input isPopupVariant:(BOOL)variant
{
  variantCopy = variant;
  v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:input];
  array = [MEMORY[0x29EDB8DE8] array];
  v8 = self->_keyLayoutMap;
  if ([v6 length])
  {
    v9 = 0;
    do
    {
      if (variantCopy)
      {
        v10 = [objc_alloc(MEMORY[0x29EDC71E8]) initWithCharacter:objc_msgSend(v6 logLikelihood:{"characterAtIndex:", v9), 0.0}];
        [array addObject:v10];
      }

      else
      {
        v10 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:{objc_msgSend(v6, "characterAtIndex:", v9)}];
        v11 = [(NSDictionary *)v8 valueForKey:v10];
        if (v11)
        {
          v13[0] = MEMORY[0x29EDCA5F8];
          v13[1] = 3221225472;
          v13[2] = __69__TIKeyboardInputManager_th_24Key_nearbyKeysForInput_isPopupVariant___block_invoke;
          v13[3] = &unk_29F37C2D8;
          v14 = array;
          [v11 enumerateObjectsUsingBlock:v13];
        }
      }

      ++v9;
    }

    while ([v6 length] > v9);
  }

  return array;
}

- (id)rawInputString
{
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  asSearchString = [composingInput asSearchString];

  return asSearchString;
}

- (id)wordCharacters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wordCharacterSet = selfCopy->_wordCharacterSet;
  if (!wordCharacterSet)
  {
    v4 = [MEMORY[0x29EDBA0F8] _stringFromCharacterSet:{objc_msgSend(MEMORY[0x29EDBA0F8], "_characterSetWithPattern:", @"[:script=Thai:]"}];
    v5 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"๏๚๛๎"];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];
    v7 = [v6 componentsJoinedByString:&stru_2A252D530];

    v8 = [objc_alloc(MEMORY[0x29EDC6FD8]) initWithCharactersInString:v7];
    v9 = selfCopy->_wordCharacterSet;
    selfCopy->_wordCharacterSet = v8;

    wordCharacterSet = selfCopy->_wordCharacterSet;
  }

  v10 = wordCharacterSet;
  objc_sync_exit(selfCopy);

  return v10;
}

@end