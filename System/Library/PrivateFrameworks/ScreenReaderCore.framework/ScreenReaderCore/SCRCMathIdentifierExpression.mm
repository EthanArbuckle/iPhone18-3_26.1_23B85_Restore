@interface SCRCMathIdentifierExpression
- (BOOL)_isPrime;
- (BOOL)canFormWordStartingWithExpression:(id)expression;
- (BOOL)isNumber;
- (SCRCMathIdentifierExpression)initWithDictionary:(id)dictionary;
- (id)description;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed isPartOfWord:(BOOL)word;
@end

@implementation SCRCMathIdentifierExpression

- (SCRCMathIdentifierExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SCRCMathIdentifierExpression;
  v5 = [(SCRCMathSimpleExpression *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMFontStyle"];
    if ([v6 isEqualToString:@"StyleItalic"])
    {
      v7 = 1;
    }

    else
    {
      if (![v6 isEqualToString:@"StyleBold"])
      {
        v5->_fontStyle = 0;
        goto LABEL_8;
      }

      v7 = 2;
    }

    v5->_fontStyle = v7;
LABEL_8:
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SCRCMathIdentifierExpression;
  v3 = [(SCRCMathSimpleExpression *)&v7 description];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fontStyle];
  v5 = [v3 stringByAppendingFormat:@", font style %@", v4];

  return v5;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed isPartOfWord:(BOOL)word
{
  v17.receiver = self;
  v17.super_class = SCRCMathIdentifierExpression;
  v8 = [(SCRCMathSimpleExpression *)&v17 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowed];
  v9 = v8;
  if (!style && !v8)
  {
    content = self->super._content;
    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    v12 = [(NSString *)content rangeOfCharacterFromSet:letterCharacterSet];

    v13 = MEMORY[0x277CCA898];
    content = [(SCRCMathSimpleExpression *)self content];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || word)
    {
      v15 = [v13 scrcStringWithString:content];
    }

    else
    {
      v15 = [v13 scrcStringWithLiteralString:content];
    }

    v9 = v15;
  }

  return v9;
}

- (id)mathMLString
{
  isNumber = [(SCRCMathIdentifierExpression *)self isNumber];
  content = [(SCRCMathSimpleExpression *)self content];
  v5 = content;
  if (isNumber)
  {
    v6 = @"mn";
  }

  else
  {
    v6 = @"mi";
  }

  v7 = [content stringWrappedInMathMLTag:v6];

  return v7;
}

- (BOOL)isNumber
{
  if ([(SCRCMathExpression *)self isNumberOverride])
  {
    return 1;
  }

  content = [(SCRCMathSimpleExpression *)self content];
  v4 = [content length];

  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    content2 = [(SCRCMathSimpleExpression *)self content];
    v8 = [content2 characterAtIndex:0];

    if (v5)
    {
      if (v8 == 45)
      {
        break;
      }
    }

    if (v8 == 46)
    {
      if (v6)
      {
        return 0;
      }

      v6 = 1;
    }

    else
    {
      decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v10 = [decimalDigitCharacterSet characterIsMember:v8];

      if (!v10)
      {
        return 0;
      }
    }

    if (v4 == ++v5)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_isPrime
{
  content = [(SCRCMathSimpleExpression *)self content];
  if ([content length])
  {
    v3 = [content characterAtIndex:0] == 8242;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canFormWordStartingWithExpression:(id)expression
{
  expressionCopy = expression;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = expressionCopy;
    fontStyle = [(SCRCMathIdentifierExpression *)self fontStyle];
    fontStyle2 = [v5 fontStyle];

    v8 = fontStyle == fontStyle2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end