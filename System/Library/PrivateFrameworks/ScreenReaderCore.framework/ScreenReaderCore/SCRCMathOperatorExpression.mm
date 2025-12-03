@interface SCRCMathOperatorExpression
- (BOOL)_isUnionOrIntersection;
- (BOOL)canBeUsedWithRange;
- (BOOL)isFenceDelimiter;
- (BOOL)isOperationSymbol;
- (BOOL)isTermSeparator;
- (SCRCMathOperatorExpression)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexFormatStringAsOver;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
@end

@implementation SCRCMathOperatorExpression

- (SCRCMathOperatorExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SCRCMathOperatorExpression;
  v5 = [(SCRCMathSimpleExpression *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMUnichar"];
    *(&v5->super._isImplicit + 1) = [v6 unsignedShortValue];

    if (*(&v5->super._isImplicit + 1) == 45 && [(NSString *)v5->super._content length]== 1)
    {
      *(&v5->super._isImplicit + 1) = 8722;
      v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v5->super._isImplicit + 2 length:1];
      content = v5->super._content;
      v5->super._content = v7;
    }
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SCRCMathOperatorExpression;
  v3 = [(SCRCMathSimpleExpression *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", operator character %C", *(&self->super._isImplicit + 1)];

  return v4;
}

- (BOOL)_isUnionOrIntersection
{
  v2 = *(&self->super._isImplicit + 1);
  v3 = (v2 - 8898) >= 2;
  v4 = v2 - 8745;
  return !v3 || v4 <= 1;
}

- (BOOL)canBeUsedWithRange
{
  if ([(SCRCMathOperatorExpression *)self _isIntegral]|| [(SCRCMathOperatorExpression *)self _isUnionOrIntersection])
  {
    return 1;
  }

  return [(SCRCMathOperatorExpression *)self _isSummation];
}

- (BOOL)isTermSeparator
{
  v2 = *(&self->super._isImplicit + 1);
  if ((v2 & 0xFF00) == 0x2200)
  {
    LOBYTE(v3) = 1;
  }

  else if (v2 > 0x3E)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x7000280000000000uLL >> v2;
  }

  return v3 & 1;
}

- (BOOL)isOperationSymbol
{
  content = [(SCRCMathSimpleExpression *)self content];
  v3 = [content length] == 1;

  return v3;
}

- (BOOL)isFenceDelimiter
{
  fenceDelimiters = [(SCRCMathExpression *)self fenceDelimiters];
  content = [(SCRCMathSimpleExpression *)self content];
  v5 = [fenceDelimiters containsObject:content];

  return v5;
}

- (id)latexFormatStringAsOver
{
  if (latexFormatStringAsOver_onceToken != -1)
  {
    [SCRCMathOperatorExpression latexFormatStringAsOver];
  }

  v3 = latexFormatStringAsOver__OverLookupTable;
  content = [(SCRCMathSimpleExpression *)self content];
  v5 = [v3 objectForKey:content];

  return v5;
}

void __53__SCRCMathOperatorExpression_latexFormatStringAsOver__block_invoke()
{
  v0 = latexFormatStringAsOver__OverLookupTable;
  latexFormatStringAsOver__OverLookupTable = &unk_28763AB40;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  v22.receiver = self;
  v22.super_class = SCRCMathOperatorExpression;
  v5 = [(SCRCMathSimpleExpression *)&v22 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowed];
  if (!v5)
  {
    if ([(SCRCMathOperatorExpression *)self _isRingOperator])
    {
      siblings = [(SCRCMathExpression *)self siblings];
      v7 = [siblings indexOfObjectIdenticalTo:self];
      if (v7 == [siblings count] - 1)
      {
        v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"operator.degrees"];
      }

      else
      {
        v5 = 0;
      }

LABEL_26:

      if (v5)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if ([(SCRCMathOperatorExpression *)self _isInvisibleCharacter])
    {
      v8 = [MEMORY[0x277CCA898] scrcStringWithString:&stru_287632E30];
      goto LABEL_7;
    }

    if (![(SCRCMathOperatorExpression *)self _isMinusSign])
    {
      if (![(SCRCMathOperatorExpression *)self _isFactorialSign])
      {
LABEL_27:
        v15 = MEMORY[0x277CCA898];
        content = [(SCRCMathSimpleExpression *)self content];
        v5 = [v15 scrcStringWithLiteralString:content];

        goto LABEL_28;
      }

      v8 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"operator.factorial"];
LABEL_7:
      v5 = v8;
      if (v8)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    siblings = [(SCRCMathExpression *)self siblings];
    v9 = [siblings indexOfObjectIdenticalTo:self];
    v10 = v9;
    if (v9)
    {
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        parent = [(SCRCMathExpression *)self parent];
        NSLog(&cfstr_AxVoiceoverMat.isa, self, parent);
        goto LABEL_22;
      }

      v12 = [siblings objectAtIndex:v9 - 1];
      parent = v12;
      if (v12 && ![v12 isFenceDelimiter])
      {
        goto LABEL_22;
      }
    }

    else
    {
      parent = 0;
    }

    v13 = v10 + 1;
    if (v13 < [siblings count])
    {
      v14 = [siblings objectAtIndex:v13];
      if ([v14 isOperationSymbol])
      {
        v5 = 0;
      }

      else
      {
        v5 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"operator.negative"];
      }

      goto LABEL_25;
    }

LABEL_22:
    v5 = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_28:
  if ([(SCRCMathSimpleExpression *)self isImplicit])
  {
    v17 = MEMORY[0x277CCA898];
    v18 = [(SCRCMathExpression *)self localizedStringForKey:@"implicit.decoration"];
    v19 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"implicit"];
    v20 = [v17 scrcStringWithFormat:v18, v19, v5];

    v5 = v20;
  }

  return v5;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  if ([(SCRCMathOperatorExpression *)self _isInvisibleCharacter])
  {
    v7 = [MEMORY[0x277CCA898] scrcStringWithString:&stru_287632E30 treePosition:positionCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCRCMathOperatorExpression;
    v7 = [(SCRCMathSimpleExpression *)&v10 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:positionCopy];
  }

  v8 = v7;

  return v8;
}

- (id)mathMLString
{
  content = [(SCRCMathSimpleExpression *)self content];
  v3 = [content stringWrappedInMathMLTag:@"mo"];

  return v3;
}

@end