@interface SCRCMathIdentifierExpression
- (BOOL)_isPrime;
- (BOOL)canFormWordStartingWithExpression:(id)a3;
- (BOOL)isNumber;
- (SCRCMathIdentifierExpression)initWithDictionary:(id)a3;
- (id)description;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4 isPartOfWord:(BOOL)a5;
@end

@implementation SCRCMathIdentifierExpression

- (SCRCMathIdentifierExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCRCMathIdentifierExpression;
  v5 = [(SCRCMathSimpleExpression *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMFontStyle"];
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

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4 isPartOfWord:(BOOL)a5
{
  v17.receiver = self;
  v17.super_class = SCRCMathIdentifierExpression;
  v8 = [(SCRCMathSimpleExpression *)&v17 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:a4];
  v9 = v8;
  if (!a3 && !v8)
  {
    content = self->super._content;
    v11 = [MEMORY[0x277CCA900] letterCharacterSet];
    v12 = [(NSString *)content rangeOfCharacterFromSet:v11];

    v13 = MEMORY[0x277CCA898];
    v14 = [(SCRCMathSimpleExpression *)self content];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || a5)
    {
      v15 = [v13 scrcStringWithString:v14];
    }

    else
    {
      v15 = [v13 scrcStringWithLiteralString:v14];
    }

    v9 = v15;
  }

  return v9;
}

- (id)mathMLString
{
  v3 = [(SCRCMathIdentifierExpression *)self isNumber];
  v4 = [(SCRCMathSimpleExpression *)self content];
  v5 = v4;
  if (v3)
  {
    v6 = @"mn";
  }

  else
  {
    v6 = @"mi";
  }

  v7 = [v4 stringWrappedInMathMLTag:v6];

  return v7;
}

- (BOOL)isNumber
{
  if ([(SCRCMathExpression *)self isNumberOverride])
  {
    return 1;
  }

  v3 = [(SCRCMathSimpleExpression *)self content];
  v4 = [v3 length];

  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [(SCRCMathSimpleExpression *)self content];
    v8 = [v7 characterAtIndex:0];

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
      v9 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v10 = [v9 characterIsMember:v8];

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
  v2 = [(SCRCMathSimpleExpression *)self content];
  if ([v2 length])
  {
    v3 = [v2 characterAtIndex:0] == 8242;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canFormWordStartingWithExpression:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SCRCMathIdentifierExpression *)self fontStyle];
    v7 = [v5 fontStyle];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end