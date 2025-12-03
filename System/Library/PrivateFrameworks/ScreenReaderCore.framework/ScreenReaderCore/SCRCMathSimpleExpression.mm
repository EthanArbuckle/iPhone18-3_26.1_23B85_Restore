@interface SCRCMathSimpleExpression
- (BOOL)canBeUsedWithBase;
- (BOOL)isFunctionName;
- (BOOL)isInteger;
- (BOOL)isWordOrAbbreviation;
- (SCRCMathSimpleExpression)initWithDictionary:(id)dictionary;
- (id)_functionNames;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexMathModeDescription;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (int64_t)integerValue;
@end

@implementation SCRCMathSimpleExpression

- (SCRCMathSimpleExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SCRCMathSimpleExpression;
  v5 = [(SCRCMathExpression *)&v13 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMContent"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &stru_287632E30;
    }

    v8 = [(__CFString *)v7 copy];
    content = v5->_content;
    v5->_content = v8;

    v10 = [dictionaryCopy objectForKey:@"AXMIsImplicit"];
    v11 = v10;
    if (v10)
    {
      LOBYTE(v10) = [v10 BOOLValue];
    }

    v5->_isImplicit = v10;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SCRCMathSimpleExpression;
  v3 = [(SCRCMathSimpleExpression *)&v7 description];
  content = [(SCRCMathSimpleExpression *)self content];
  v5 = [v3 stringByAppendingFormat:@" - content %@", content];

  return v5;
}

- (BOOL)isInteger
{
  content = [(SCRCMathSimpleExpression *)self content];
  v4 = [content rangeOfString:@"."];

  if (![(SCRCMathExpression *)self isNumber])
  {
    return 0;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  content2 = [(SCRCMathSimpleExpression *)self content];
  v5 = v4 == [content2 length] - 1;

  return v5;
}

- (int64_t)integerValue
{
  content = [(SCRCMathSimpleExpression *)self content];
  integerValue = [content integerValue];

  return integerValue;
}

- (BOOL)isWordOrAbbreviation
{
  if ([(SCRCMathExpression *)self isNumber])
  {
    return 0;
  }

  content = [(SCRCMathSimpleExpression *)self content];
  v3 = [content length] > 1;

  return v3;
}

- (id)_functionNames
{
  if (_functionNames_onceToken != -1)
  {
    [SCRCMathSimpleExpression _functionNames];
  }

  v3 = _functionNames_FunctionNames;

  return v3;
}

uint64_t __42__SCRCMathSimpleExpression__functionNames__block_invoke()
{
  _functionNames_FunctionNames = [MEMORY[0x277CBEB98] setWithArray:&unk_28763AB00];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isFunctionName
{
  _functionNames = [(SCRCMathSimpleExpression *)self _functionNames];
  content = [(SCRCMathSimpleExpression *)self content];
  v5 = [_functionNames containsObject:content];

  return v5;
}

- (BOOL)canBeUsedWithBase
{
  content = [(SCRCMathSimpleExpression *)self content];
  if ([content isEqualToString:@"log"])
  {
    v4 = 1;
  }

  else
  {
    content2 = [(SCRCMathSimpleExpression *)self content];
    v4 = [content2 isEqualToString:@"lg"];
  }

  return v4;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  if ([(SCRCMathSimpleExpression *)self isFunctionName:style])
  {
    content = [(SCRCMathSimpleExpression *)self content];
    v6 = [@"function." stringByAppendingString:content];
    v7 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  v5 = MEMORY[0x277CCA898];
  positionCopy = position;
  content = [(SCRCMathSimpleExpression *)self content];
  v8 = [v5 scrcStringWithString:content treePosition:positionCopy];

  return v8;
}

- (id)latexMathModeDescription
{
  content = [(SCRCMathSimpleExpression *)self content];
  v4 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:content];

  return v4;
}

@end