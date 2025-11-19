@interface TPDialerNumberPad
+ (id)dialerNumberPadFullCharacters;
+ (id)dialerNumberPadNumericCharacters;
- (void)buttonDown:(id)a3;
- (void)buttonLongPressed:(id)a3;
- (void)buttonUp:(id)a3;
- (void)buttonUpOutside:(id)a3;
- (void)setPlaysSounds:(BOOL)a3;
@end

@implementation TPDialerNumberPad

+ (id)dialerNumberPadFullCharacters
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v17[0] = v16;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v17[1] = v15;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v17[2] = v14;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v17[3] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v17[4] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v17[5] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:6];
  v17[6] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
  v17[7] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:8];
  v17[8] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:9];
  v17[9] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v17[10] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:11];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)dialerNumberPadNumericCharacters
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v17[0] = v16;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v17[1] = v15;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v17[2] = v14;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v17[3] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v17[4] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v17[5] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:6];
  v17[6] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
  v17[7] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:8];
  v17[8] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v17[9] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v17[10] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)buttonUp:(id)a3
{
  v5 = a3;
  v4 = [(TPDialerNumberPad *)self soundController];
  [v4 stopSoundForDialerCharacter:{objc_msgSend(v5, "character")}];

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    -[TPDialerKeypadDelegate phonePad:keyUp:](self->_delegate, "phonePad:keyUp:", self, -[__CFString characterAtIndex:](TPNumberPadCharacterValues[[v5 character]], "characterAtIndex:", 0));
  }
}

- (void)buttonUpOutside:(id)a3
{
  v4 = a3;
  v5 = [(TPDialerNumberPad *)self soundController];
  v6 = [v4 character];

  [v5 stopSoundForDialerCharacter:v6];
  v7 = [(TPDialerNumberPad *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(TPDialerNumberPad *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TPDialerNumberPad *)self delegate];
      [v11 phonePadDeleteLastDigit:self];
    }
  }
}

- (void)buttonDown:(id)a3
{
  v5 = a3;
  v4 = [(TPDialerNumberPad *)self soundController];
  [v4 playSoundForDialerCharacter:{objc_msgSend(v5, "character")}];

  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      -[TPDialerKeypadDelegate phonePad:appendString:](self->_delegate, "phonePad:appendString:", self, TPNumberPadCharacterValues[[v5 character]]);
    }

    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      -[TPDialerKeypadDelegate phonePad:keyDown:](self->_delegate, "phonePad:keyDown:", self, -[__CFString characterAtIndex:](TPNumberPadCharacterValues[[v5 character]], "characterAtIndex:", 0));
    }
  }
}

- (void)buttonLongPressed:(id)a3
{
  v21 = a3;
  if ([v21 character] == 10)
  {
    v4 = @"+";
  }

  else if ([v21 character] == 9)
  {
    v4 = @",";
  }

  else
  {
    if ([v21 character] != 11)
    {
      if (![v21 character])
      {
        v19 = [(TPDialerNumberPad *)self delegate];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v9 = [(TPDialerNumberPad *)self delegate];
          [v9 phonePad:self dialerCharacterButtonWasHeld:{objc_msgSend(v21, "character")}];
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

    v4 = @";";
  }

  v5 = [(TPDialerNumberPad *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(TPDialerNumberPad *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(TPDialerNumberPad *)self delegate];
      [v9 phonePad:self replaceLastDigitWithString:v4];
LABEL_16:

      goto LABEL_17;
    }
  }

  v10 = [(TPDialerNumberPad *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(TPDialerNumberPad *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(TPDialerNumberPad *)self delegate];
      [v14 phonePadDeleteLastDigit:self];
    }
  }

  v15 = [(TPDialerNumberPad *)self delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(TPDialerNumberPad *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v9 = [(TPDialerNumberPad *)self delegate];
      [v9 phonePad:self appendString:v4];
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setPlaysSounds:(BOOL)a3
{
  if (self->_playsSounds != a3)
  {
    if (a3)
    {
      v4 = objc_alloc_init(TPDialerSoundController);
      [(TPDialerNumberPad *)self setSoundController:v4];
    }

    else
    {

      [(TPDialerNumberPad *)self setSoundController:0];
    }
  }
}

@end