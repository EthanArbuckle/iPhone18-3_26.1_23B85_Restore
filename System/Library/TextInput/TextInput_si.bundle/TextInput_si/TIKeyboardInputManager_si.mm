@interface TIKeyboardInputManager_si
- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)character;
- (void)deleteFromInputWithContext:(id)context;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
@end

@implementation TIKeyboardInputManager_si

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v7 syncToKeyboardState:state from:from afterContextChange:?];
  if (changeCopy)
  {
    [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
  }
}

- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)character
{
  characterCopy = character;
  lastTypedChar = [(TIKeyboardInputManager_si *)self lastTypedChar];
  if (!characterCopy || !lastTypedChar)
  {
    return 0;
  }

  if (lastTypedChar <= 3472)
  {
    if (lastTypedChar > 3468)
    {
      if (lastTypedChar == 3469)
      {
        if (characterCopy == 3544)
        {
          return 3470;
        }
      }

      else if (lastTypedChar == 3471 && characterCopy == 3551)
      {
        return 3472;
      }
    }

    else if (lastTypedChar == 3461)
    {
      if ((characterCopy - 3535) < 3)
      {
        return characterCopy - 73;
      }
    }

    else if (lastTypedChar == 3467 && characterCopy == 3551)
    {
      return 3468;
    }

    return 0;
  }

  if (lastTypedChar > 3543)
  {
    if (lastTypedChar == 3544)
    {
      if (characterCopy == 3544)
      {
        return 3570;
      }
    }

    else if (lastTypedChar == 3545)
    {
      if (characterCopy <= 3534)
      {
        if (characterCopy == 3473)
        {
          return 3475;
        }

        if (characterCopy == 3530)
        {
          return 3546;
        }
      }

      else
      {
        switch(characterCopy)
        {
          case 3551:
            return 3550;
          case 3545:
            return 3547;
          case 3535:
            return 3548;
        }
      }
    }

    else if (lastTypedChar == 3548 && characterCopy == 3530)
    {
      return 3549;
    }

    return 0;
  }

  if (lastTypedChar == 3473)
  {
    if (characterCopy == 3530)
    {
      return 3474;
    }

    return 0;
  }

  if (lastTypedChar != 3476)
  {
    return 0;
  }

  if (characterCopy == 3551)
  {
    v5 = 3478;
  }

  else
  {
    v5 = 0;
  }

  if (characterCopy == 3530)
  {
    return 3477;
  }

  return v5;
}

- (void)deleteFromInputWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v4 deleteFromInputWithContext:context];
  [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
}

@end