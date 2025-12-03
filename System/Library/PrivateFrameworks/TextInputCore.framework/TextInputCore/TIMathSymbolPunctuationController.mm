@interface TIMathSymbolPunctuationController
- (BOOL)updateInputString:(id)string;
- (TIMathSymbolPunctuationController)init;
- (id)mathSymbolPunctuationedStringForInputString:(id)string;
- (void)setInputString:(id)string;
@end

@implementation TIMathSymbolPunctuationController

- (id)mathSymbolPunctuationedStringForInputString:(id)string
{
  v25[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [stringCopy length];
  if (!v5)
  {
    v17 = 0;
    goto LABEL_32;
  }

  v10 = v5;
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [stringCopy getCharacters:v12];
  v13 = [(TIMathSymbolPunctuationController *)self updateInputString:stringCopy];
  if (v13 != [(TIMathSymbolPunctuationController *)self replaceAfterNumerals]|| !self->_state || !self->_enabled)
  {
    goto LABEL_29;
  }

  if (!self->_replaceAfterNumerals)
  {
    v14 = *&v12[2 * v10 - 2];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v16 = [decimalDigitCharacterSet characterIsMember:v14];

    if (!v16)
    {
      v17 = 0;
      goto LABEL_36;
    }
  }

  if (v10 == 1 || self->_state != 2)
  {
    v16 = 0;
  }

  else if (v10 == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = IsNumeric(*&v12[2 * v10 - 6]);
  }

  location = self->_location;
  if (v10 >= location + 1 && self->_state == 1 && IsNumeric(*&v12[2 * location - 2]) && (self->_replaceAfterNumerals || IsNumeric(*&v12[2 * self->_location + 2])))
  {
    v16 = 1;
  }

  v19 = self->_location;
  if (v10 > v19 + 3 && self->_state == 3 && IsNumeric(*&v12[2 * v19 - 2]) && IsNumeric(*&v12[2 * self->_location + 2]) && IsNumeric(*&v12[2 * self->_location + 4]))
  {
    if (((IsNumeric(*&v12[2 * self->_location + 6]) | v16) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v16)
  {
LABEL_27:
    v20 = self->_location;
    if (v20 >= [stringCopy length])
    {
LABEL_29:
      LOBYTE(v16) = 0;
      goto LABEL_30;
    }

    v21 = self->_location;
    LOBYTE(v16) = 1;
    v22 = [MEMORY[0x277CCACA8] stringWithCharacters:&self->_replacementCharacter length:1];
    v17 = [stringCopy stringByReplacingCharactersInRange:v21 withString:{1, v22}];

LABEL_36:
    self->_state = 0;
    goto LABEL_31;
  }

LABEL_30:
  v17 = 0;
LABEL_31:
  self->_converted = v16;
LABEL_32:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)updateInputString:(id)string
{
  v15[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [stringCopy length];
  if (v5)
  {
    v6 = v5;
    v7 = v15 - ((2 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    [stringCopy getCharacters:v7];
    v8 = 0;
    v9 = v6 - 1;
    v10 = *&v7[2 * v9];
    v11 = 8722;
    v12 = 2;
    if (v10 <= 0xFF0B)
    {
      if (*&v7[2 * v9] > 0x3001u)
      {
        if (v10 != 12290)
        {
          if (v10 != 12540)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

LABEL_21:
        if (v9 && [(NSString *)self->_decimalSeparator isEqualToString:@"."])
        {
          v11 = 46;
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if (v10 == 58)
      {
        goto LABEL_19;
      }

      if (v10 == 12289)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (*&v7[2 * v9] > 0xFF60u)
      {
        if (v10 == 65392)
        {
          goto LABEL_28;
        }

        if (v10 != 65380)
        {
          if (v10 != 65377)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }

LABEL_12:
        if (!v9)
        {
          goto LABEL_29;
        }

        v11 = 44;
        v12 = 3;
LABEL_28:
        self->_state = v12;
        self->_location = v9;
        v8 = 1;
        self->_replacementCharacter = v11;
        goto LABEL_30;
      }

      if (v10 == 65292)
      {
        if (v9 && [(NSString *)self->_decimalSeparator isEqualToString:@", "])
        {
          v11 = 44;
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if (v10 == 65306)
      {
LABEL_19:
        if (v9)
        {
          v11 = 58;
LABEL_27:
          v12 = 1;
          goto LABEL_28;
        }

LABEL_29:
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_30:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setInputString:(id)string
{
  stringCopy = string;
  [(TIMathSymbolPunctuationController *)self reset];
  [(TIMathSymbolPunctuationController *)self updateInputString:stringCopy];
}

- (TIMathSymbolPunctuationController)init
{
  v7.receiver = self;
  v7.super_class = TIMathSymbolPunctuationController;
  v2 = [(TIMathSymbolPunctuationController *)&v7 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    decimalSeparator = [currentLocale decimalSeparator];
    decimalSeparator = v2->_decimalSeparator;
    v2->_decimalSeparator = decimalSeparator;

    v2->_enabled = 1;
  }

  return v2;
}

@end