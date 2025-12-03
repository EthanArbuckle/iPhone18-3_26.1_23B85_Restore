@interface TypistKeyboardAmharic
- (BOOL)isPopoverCombo:(id)combo withIndex:(int64_t)index;
- (BOOL)isTapKey:(id)key;
- (TypistKeyboardAmharic)initWithCoder:(id)coder;
- (id)decomposeAmharicStrings:(id)strings;
- (id)generateKeystrokeStream:(id)stream;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardAmharic

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardAmharic;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"am"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v6 = MEMORY[0x277CCA900];
  optionsCopy = options;
  infoCopy = info;
  v9 = [v6 characterSetWithCharactersInString:@"እኡኢኦ"];
  [(TypistKeyboardAmharic *)self setKeycapAndPopoverVowels:v9];

  v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ሇዏዯፇ"];
  [(TypistKeyboardAmharic *)self setKeycapAndPopoverConstants:v10];

  v13.receiver = self;
  v13.super_class = TypistKeyboardAmharic;
  v11 = [(TypistKeyboard *)&v13 setupKeyboardInfo:infoCopy options:optionsCopy];

  return v11;
}

- (BOOL)isTapKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  allKeys = [keyPlanes allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
        v13 = [keyPlanes2 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:keyCopy];

        if (v14)
        {
          keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
          v17 = [keyPlanes3 objectForKeyedSubscript:v11];
          v18 = [v17 objectForKeyedSubscript:keyCopy];
          v19 = [v18 objectForKeyedSubscript:@"action"];
          v15 = [v19 isEqualToString:@"tap"];

          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (BOOL)isPopoverCombo:(id)combo withIndex:(int64_t)index
{
  comboCopy = combo;
  if (index < 1)
  {
    v8 = 0;
  }

  else
  {
    keycapAndPopoverVowels = [(TypistKeyboardAmharic *)self keycapAndPopoverVowels];
    if ([keycapAndPopoverVowels characterIsMember:{objc_msgSend(comboCopy, "characterAtIndex:", index)}])
    {
      v8 = -[TypistKeyboardAmharic isConsonant:](self, "isConsonant:", [comboCopy characterAtIndex:index - 1]);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)decomposeAmharicStrings:(id)strings
{
  stringsCopy = strings;
  string = [MEMORY[0x277CCACA8] string];
  if ([stringsCopy length])
  {
    v6 = 0;
    while (1)
    {
      v7 = [stringsCopy characterAtIndex:v6];
      if ([(TypistKeyboardAmharic *)self isPopoverCombo:stringsCopy withIndex:v6])
      {
        [string stringByAppendingFormat:@"%@%C", @"‍", v7];
      }

      else
      {
        if ([(TypistKeyboardAmharic *)self isJoinedConsonantAndVowelCharacter:v7])
        {
          keycapAndPopoverConstants = [(TypistKeyboardAmharic *)self keycapAndPopoverConstants];
          v9 = [keycapAndPopoverConstants characterIsMember:v7];

          if ((v9 & 1) == 0)
          {
            v11 = [(TypistKeyboardAmharic *)self decomposeAmharicChar:v7];
            v10 = [string stringByAppendingString:v11];

            string = v11;
            goto LABEL_9;
          }
        }

        [string stringByAppendingFormat:@"%C", v7, v13];
      }
      v10 = ;
LABEL_9:

      ++v6;
      string = v10;
      if ([stringsCopy length] <= v6)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = string;
LABEL_13:

  return v10;
}

- (id)generateKeystrokeStream:(id)stream
{
  v4 = [(TypistKeyboardAmharic *)self decomposeAmharicStrings:stream];
  v7.receiver = self;
  v7.super_class = TypistKeyboardAmharic;
  v5 = [(TypistKeyboard *)&v7 generateKeystrokeStream:v4];

  return v5;
}

- (TypistKeyboardAmharic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TypistKeyboardAmharic;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keycapAndPopoverVowels"];
    keycapAndPopoverVowels = v5->_keycapAndPopoverVowels;
    v5->_keycapAndPopoverVowels = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keycapAndPopoverConstants"];
    keycapAndPopoverConstants = v5->_keycapAndPopoverConstants;
    v5->_keycapAndPopoverConstants = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TypistKeyboardAmharic;
  [(TypistKeyboard *)&v7 encodeWithCoder:coderCopy];
  keycapAndPopoverVowels = self->_keycapAndPopoverVowels;
  if (keycapAndPopoverVowels)
  {
    [coderCopy encodeObject:keycapAndPopoverVowels forKey:@"keycapAndPopoverVowels"];
  }

  keycapAndPopoverConstants = self->_keycapAndPopoverConstants;
  if (keycapAndPopoverConstants)
  {
    [coderCopy encodeObject:keycapAndPopoverConstants forKey:@"keycapAndPopoverConstants"];
  }
}

@end