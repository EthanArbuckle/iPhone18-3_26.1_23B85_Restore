@interface TypistKeyboardAmharic
- (BOOL)isPopoverCombo:(id)a3 withIndex:(int64_t)a4;
- (BOOL)isTapKey:(id)a3;
- (TypistKeyboardAmharic)initWithCoder:(id)a3;
- (id)decomposeAmharicStrings:(id)a3;
- (id)generateKeystrokeStream:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TypistKeyboardAmharic

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardAmharic;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"am"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v9 = [v6 characterSetWithCharactersInString:@"እኡኢኦ"];
  [(TypistKeyboardAmharic *)self setKeycapAndPopoverVowels:v9];

  v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ሇዏዯፇ"];
  [(TypistKeyboardAmharic *)self setKeycapAndPopoverConstants:v10];

  v13.receiver = self;
  v13.super_class = TypistKeyboardAmharic;
  v11 = [(TypistKeyboard *)&v13 setupKeyboardInfo:v8 options:v7];

  return v11;
}

- (BOOL)isTapKey:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(TypistKeyboard *)self keyPlanes];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(TypistKeyboard *)self keyPlanes];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:v4];

        if (v14)
        {
          v16 = [(TypistKeyboard *)self keyPlanes];
          v17 = [v16 objectForKeyedSubscript:v11];
          v18 = [v17 objectForKeyedSubscript:v4];
          v19 = [v18 objectForKeyedSubscript:@"action"];
          v15 = [v19 isEqualToString:@"tap"];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isPopoverCombo:(id)a3 withIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(TypistKeyboardAmharic *)self keycapAndPopoverVowels];
    if ([v7 characterIsMember:{objc_msgSend(v6, "characterAtIndex:", a4)}])
    {
      v8 = -[TypistKeyboardAmharic isConsonant:](self, "isConsonant:", [v6 characterAtIndex:a4 - 1]);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)decomposeAmharicStrings:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] string];
  if ([v4 length])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v4 characterAtIndex:v6];
      if ([(TypistKeyboardAmharic *)self isPopoverCombo:v4 withIndex:v6])
      {
        [v5 stringByAppendingFormat:@"%@%C", @"‍", v7];
      }

      else
      {
        if ([(TypistKeyboardAmharic *)self isJoinedConsonantAndVowelCharacter:v7])
        {
          v8 = [(TypistKeyboardAmharic *)self keycapAndPopoverConstants];
          v9 = [v8 characterIsMember:v7];

          if ((v9 & 1) == 0)
          {
            v11 = [(TypistKeyboardAmharic *)self decomposeAmharicChar:v7];
            v10 = [v5 stringByAppendingString:v11];

            v5 = v11;
            goto LABEL_9;
          }
        }

        [v5 stringByAppendingFormat:@"%C", v7, v13];
      }
      v10 = ;
LABEL_9:

      ++v6;
      v5 = v10;
      if ([v4 length] <= v6)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = v5;
LABEL_13:

  return v10;
}

- (id)generateKeystrokeStream:(id)a3
{
  v4 = [(TypistKeyboardAmharic *)self decomposeAmharicStrings:a3];
  v7.receiver = self;
  v7.super_class = TypistKeyboardAmharic;
  v5 = [(TypistKeyboard *)&v7 generateKeystrokeStream:v4];

  return v5;
}

- (TypistKeyboardAmharic)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TypistKeyboardAmharic;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keycapAndPopoverVowels"];
    keycapAndPopoverVowels = v5->_keycapAndPopoverVowels;
    v5->_keycapAndPopoverVowels = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keycapAndPopoverConstants"];
    keycapAndPopoverConstants = v5->_keycapAndPopoverConstants;
    v5->_keycapAndPopoverConstants = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TypistKeyboardAmharic;
  [(TypistKeyboard *)&v7 encodeWithCoder:v4];
  keycapAndPopoverVowels = self->_keycapAndPopoverVowels;
  if (keycapAndPopoverVowels)
  {
    [v4 encodeObject:keycapAndPopoverVowels forKey:@"keycapAndPopoverVowels"];
  }

  keycapAndPopoverConstants = self->_keycapAndPopoverConstants;
  if (keycapAndPopoverConstants)
  {
    [v4 encodeObject:keycapAndPopoverConstants forKey:@"keycapAndPopoverConstants"];
  }
}

@end