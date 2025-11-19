@interface TIKeyboardInputManager_si
- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)a3;
- (void)deleteFromInputWithContext:(id)a3;
- (void)syncToKeyboardState:(id)a3 from:(id)a4 afterContextChange:(BOOL)a5;
@end

@implementation TIKeyboardInputManager_si

- (void)syncToKeyboardState:(id)a3 from:(id)a4 afterContextChange:(BOOL)a5
{
  v5 = a5;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v7 syncToKeyboardState:a3 from:a4 afterContextChange:?];
  if (v5)
  {
    [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
  }
}

- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(TIKeyboardInputManager_si *)self lastTypedChar];
  if (!v3 || !v4)
  {
    return 0;
  }

  if (v4 <= 3472)
  {
    if (v4 > 3468)
    {
      if (v4 == 3469)
      {
        if (v3 == 3544)
        {
          return 3470;
        }
      }

      else if (v4 == 3471 && v3 == 3551)
      {
        return 3472;
      }
    }

    else if (v4 == 3461)
    {
      if ((v3 - 3535) < 3)
      {
        return v3 - 73;
      }
    }

    else if (v4 == 3467 && v3 == 3551)
    {
      return 3468;
    }

    return 0;
  }

  if (v4 > 3543)
  {
    if (v4 == 3544)
    {
      if (v3 == 3544)
      {
        return 3570;
      }
    }

    else if (v4 == 3545)
    {
      if (v3 <= 3534)
      {
        if (v3 == 3473)
        {
          return 3475;
        }

        if (v3 == 3530)
        {
          return 3546;
        }
      }

      else
      {
        switch(v3)
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

    else if (v4 == 3548 && v3 == 3530)
    {
      return 3549;
    }

    return 0;
  }

  if (v4 == 3473)
  {
    if (v3 == 3530)
    {
      return 3474;
    }

    return 0;
  }

  if (v4 != 3476)
  {
    return 0;
  }

  if (v3 == 3551)
  {
    v5 = 3478;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 3530)
  {
    return 3477;
  }

  return v5;
}

- (void)deleteFromInputWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v4 deleteFromInputWithContext:a3];
  [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
}

@end