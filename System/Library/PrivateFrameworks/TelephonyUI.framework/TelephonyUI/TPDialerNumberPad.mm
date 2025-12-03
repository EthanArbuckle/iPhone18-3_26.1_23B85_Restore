@interface TPDialerNumberPad
+ (id)dialerNumberPadFullCharacters;
+ (id)dialerNumberPadNumericCharacters;
- (void)buttonDown:(id)down;
- (void)buttonLongPressed:(id)pressed;
- (void)buttonUp:(id)up;
- (void)buttonUpOutside:(id)outside;
- (void)setPlaysSounds:(BOOL)sounds;
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

- (void)buttonUp:(id)up
{
  upCopy = up;
  soundController = [(TPDialerNumberPad *)self soundController];
  [soundController stopSoundForDialerCharacter:{objc_msgSend(upCopy, "character")}];

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    -[TPDialerKeypadDelegate phonePad:keyUp:](self->_delegate, "phonePad:keyUp:", self, -[__CFString characterAtIndex:](TPNumberPadCharacterValues[[upCopy character]], "characterAtIndex:", 0));
  }
}

- (void)buttonUpOutside:(id)outside
{
  outsideCopy = outside;
  soundController = [(TPDialerNumberPad *)self soundController];
  character = [outsideCopy character];

  [soundController stopSoundForDialerCharacter:character];
  delegate = [(TPDialerNumberPad *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(TPDialerNumberPad *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(TPDialerNumberPad *)self delegate];
      [delegate3 phonePadDeleteLastDigit:self];
    }
  }
}

- (void)buttonDown:(id)down
{
  downCopy = down;
  soundController = [(TPDialerNumberPad *)self soundController];
  [soundController playSoundForDialerCharacter:{objc_msgSend(downCopy, "character")}];

  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      -[TPDialerKeypadDelegate phonePad:appendString:](self->_delegate, "phonePad:appendString:", self, TPNumberPadCharacterValues[[downCopy character]]);
    }

    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      -[TPDialerKeypadDelegate phonePad:keyDown:](self->_delegate, "phonePad:keyDown:", self, -[__CFString characterAtIndex:](TPNumberPadCharacterValues[[downCopy character]], "characterAtIndex:", 0));
    }
  }
}

- (void)buttonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy character] == 10)
  {
    v4 = @"+";
  }

  else if ([pressedCopy character] == 9)
  {
    v4 = @",";
  }

  else
  {
    if ([pressedCopy character] != 11)
    {
      if (![pressedCopy character])
      {
        delegate = [(TPDialerNumberPad *)self delegate];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          delegate2 = [(TPDialerNumberPad *)self delegate];
          [delegate2 phonePad:self dialerCharacterButtonWasHeld:{objc_msgSend(pressedCopy, "character")}];
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

    v4 = @";";
  }

  delegate3 = [(TPDialerNumberPad *)self delegate];
  if (delegate3)
  {
    v6 = delegate3;
    delegate4 = [(TPDialerNumberPad *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(TPDialerNumberPad *)self delegate];
      [delegate2 phonePad:self replaceLastDigitWithString:v4];
LABEL_16:

      goto LABEL_17;
    }
  }

  delegate5 = [(TPDialerNumberPad *)self delegate];
  if (delegate5)
  {
    v11 = delegate5;
    delegate6 = [(TPDialerNumberPad *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate7 = [(TPDialerNumberPad *)self delegate];
      [delegate7 phonePadDeleteLastDigit:self];
    }
  }

  delegate8 = [(TPDialerNumberPad *)self delegate];
  if (delegate8)
  {
    v16 = delegate8;
    delegate9 = [(TPDialerNumberPad *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(TPDialerNumberPad *)self delegate];
      [delegate2 phonePad:self appendString:v4];
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setPlaysSounds:(BOOL)sounds
{
  if (self->_playsSounds != sounds)
  {
    if (sounds)
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