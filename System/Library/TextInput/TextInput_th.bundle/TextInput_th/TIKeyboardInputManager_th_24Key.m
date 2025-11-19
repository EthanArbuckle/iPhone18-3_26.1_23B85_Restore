@interface TIKeyboardInputManager_th_24Key
- (NSDictionary)keyLayoutMap;
- (TIKeyboardInputManager_th_24Key)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)deleteComposedTextFromIndex:(unint64_t)a3 count:(unint64_t *)a4;
- (id)keyboardBehaviors;
- (id)nearbyKeysForInput:(id)a3 isPopupVariant:(BOOL)a4;
- (id)processAcceptedCandidate:(id)a3;
- (id)rawInputString;
- (id)wordCharacters;
- (unint64_t)initialSelectedIndex;
- (void)initializeKeyLayoutMaps;
- (void)updateComposedText;
@end

@implementation TIKeyboardInputManager_th_24Key

- (TIKeyboardInputManager_th_24Key)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_th_24Key;
  v4 = [(TIKeyboardInputManager_th *)&v7 initWithConfig:a3 keyboardState:a4];
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
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [(TIKeyboardInputManager_th_24Key *)self inputString];
    if ([v2 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_th_24Key;
  v7 = [(TIKeyboardInputManager_th_24Key *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
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
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v4 = [v3 asInlineText];

    v11 = v4;
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];

    v8 = v11;
    if (v7)
    {
      v9 = [v11 length];
      v10 = [v7 candidate];
      v8 = v11;
      if (v9 - 1 < [v10 length])
      {
        v8 = [v10 substringToIndex:v9];
      }
    }

    [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7288]) setString:v8];
  }
}

- (id)deleteComposedTextFromIndex:(unint64_t)a3 count:(unint64_t *)a4
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
    v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v5 = [v4 candidates];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [v6 candidate];
      v8 = *MEMORY[0x29EDC7288];
      v9 = [v7 isEqualToString:*(&self->super.super.super.super.super.super.isa + v8)];

      if ((v9 & 1) == 0)
      {
        v10 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
        v11 = [v10 candidates];
        v12 = [v11 count];

        if (v12)
        {
          v13 = 0;
          while (1)
          {
            v14 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
            v15 = [v14 candidates];
            v16 = [v15 objectAtIndexedSubscript:v13];

            v17 = [v16 candidate];
            LODWORD(v15) = [v17 isEqualToString:*(&self->super.super.super.super.super.super.isa + v8)];

            if (v15)
            {
              break;
            }

            if (v12 == ++v13)
            {
              goto LABEL_8;
            }
          }

          v19 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
          [v19 moveCandidate:v16 fromIndex:v13 toIndex:0];
        }

        else
        {
LABEL_8:
          v16 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
          v18 = *(&self->super.super.super.super.super.super.isa + v8);
          v19 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v20 = [v19 asInlineText];
          [v16 insertSyntheticMecabraCandidateWithSurface:v18 input:v20 atIndex:0];
        }
      }
    }
  }

  v21 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v22 = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:v21];

  return v22;
}

- (id)processAcceptedCandidate:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 candidate];
    v6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v6 removeAllInputs];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_th_24Key;
    v5 = [(TIKeyboardInputManagerMecabra *)&v8 processAcceptedCandidate:v4];
  }

  return v5;
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

- (id)nearbyKeysForInput:(id)a3 isPopupVariant:(BOOL)a4
{
  v4 = a4;
  v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:a3];
  v7 = [MEMORY[0x29EDB8DE8] array];
  v8 = self->_keyLayoutMap;
  if ([v6 length])
  {
    v9 = 0;
    do
    {
      if (v4)
      {
        v10 = [objc_alloc(MEMORY[0x29EDC71E8]) initWithCharacter:objc_msgSend(v6 logLikelihood:{"characterAtIndex:", v9), 0.0}];
        [v7 addObject:v10];
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
          v14 = v7;
          [v11 enumerateObjectsUsingBlock:v13];
        }
      }

      ++v9;
    }

    while ([v6 length] > v9);
  }

  return v7;
}

- (id)rawInputString
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v3 = [v2 asSearchString];

  return v3;
}

- (id)wordCharacters
{
  v2 = self;
  objc_sync_enter(v2);
  wordCharacterSet = v2->_wordCharacterSet;
  if (!wordCharacterSet)
  {
    v4 = [MEMORY[0x29EDBA0F8] _stringFromCharacterSet:{objc_msgSend(MEMORY[0x29EDBA0F8], "_characterSetWithPattern:", @"[:script=Thai:]"}];
    v5 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"๏๚๛๎"];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];
    v7 = [v6 componentsJoinedByString:&stru_2A252D530];

    v8 = [objc_alloc(MEMORY[0x29EDC6FD8]) initWithCharactersInString:v7];
    v9 = v2->_wordCharacterSet;
    v2->_wordCharacterSet = v8;

    wordCharacterSet = v2->_wordCharacterSet;
  }

  v10 = wordCharacterSet;
  objc_sync_exit(v2);

  return v10;
}

@end