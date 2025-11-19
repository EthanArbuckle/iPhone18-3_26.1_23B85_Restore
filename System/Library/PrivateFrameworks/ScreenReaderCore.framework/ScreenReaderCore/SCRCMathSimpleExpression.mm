@interface SCRCMathSimpleExpression
- (BOOL)canBeUsedWithBase;
- (BOOL)isFunctionName;
- (BOOL)isInteger;
- (BOOL)isWordOrAbbreviation;
- (SCRCMathSimpleExpression)initWithDictionary:(id)a3;
- (id)_functionNames;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4;
- (id)latexMathModeDescription;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (int64_t)integerValue;
@end

@implementation SCRCMathSimpleExpression

- (SCRCMathSimpleExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCRCMathSimpleExpression;
  v5 = [(SCRCMathExpression *)&v13 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMContent"];
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

    v10 = [v4 objectForKey:@"AXMIsImplicit"];
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
  v4 = [(SCRCMathSimpleExpression *)self content];
  v5 = [v3 stringByAppendingFormat:@" - content %@", v4];

  return v5;
}

- (BOOL)isInteger
{
  v3 = [(SCRCMathSimpleExpression *)self content];
  v4 = [v3 rangeOfString:@"."];

  if (![(SCRCMathExpression *)self isNumber])
  {
    return 0;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v6 = [(SCRCMathSimpleExpression *)self content];
  v5 = v4 == [v6 length] - 1;

  return v5;
}

- (int64_t)integerValue
{
  v2 = [(SCRCMathSimpleExpression *)self content];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isWordOrAbbreviation
{
  if ([(SCRCMathExpression *)self isNumber])
  {
    return 0;
  }

  v4 = [(SCRCMathSimpleExpression *)self content];
  v3 = [v4 length] > 1;

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
  v3 = [(SCRCMathSimpleExpression *)self _functionNames];
  v4 = [(SCRCMathSimpleExpression *)self content];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)canBeUsedWithBase
{
  v3 = [(SCRCMathSimpleExpression *)self content];
  if ([v3 isEqualToString:@"log"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SCRCMathSimpleExpression *)self content];
    v4 = [v5 isEqualToString:@"lg"];
  }

  return v4;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  if ([(SCRCMathSimpleExpression *)self isFunctionName:a3])
  {
    v5 = [(SCRCMathSimpleExpression *)self content];
    v6 = [@"function." stringByAppendingString:v5];
    v7 = [(SCRCMathExpression *)self localizedAttributedStringForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4
{
  v5 = MEMORY[0x277CCA898];
  v6 = a4;
  v7 = [(SCRCMathSimpleExpression *)self content];
  v8 = [v5 scrcStringWithString:v7 treePosition:v6];

  return v8;
}

- (id)latexMathModeDescription
{
  v3 = [(SCRCMathSimpleExpression *)self content];
  v4 = [(SCRCMathExpression *)self latexIdentifierForIdentifier:v3];

  return v4;
}

@end