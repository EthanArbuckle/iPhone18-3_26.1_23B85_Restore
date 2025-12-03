@interface SCRCMathFencedExpression
- (BOOL)_isBinomialCoefficient;
- (SCRCMathFencedExpression)initWithDictionary:(id)dictionary;
- (id)_binomialCoefficientContent;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexDescriptionInMathMode:(BOOL)mode;
- (id)mathMLAttributes;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (unint64_t)fractionLevel;
@end

@implementation SCRCMathFencedExpression

- (SCRCMathFencedExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SCRCMathFencedExpression;
  v5 = [(SCRCMathArrayExpression *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMOpenOperator"];
    if (![(__CFString *)v6 length])
    {

      v6 = CFSTR("(");
    }

    v7 = [dictionaryCopy objectForKey:@"AXMCloseOperator"];
    if (![(__CFString *)v7 length])
    {

      v7 = @"");
    }

    [(SCRCMathFencedExpression *)v5 setOpenString:v6];
    [(SCRCMathFencedExpression *)v5 setCloseString:v7];
    v8 = [dictionaryCopy objectForKey:@"AXMIsImplicit"];
    v9 = v8;
    if (v8)
    {
      LOBYTE(v8) = [v8 BOOLValue];
    }

    v5->_isClosingImplicit = v8;
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SCRCMathFencedExpression;
  v3 = [(SCRCMathArrayExpression *)&v8 description];
  openString = [(SCRCMathFencedExpression *)self openString];
  closeString = [(SCRCMathFencedExpression *)self closeString];
  v6 = [v3 stringByAppendingFormat:@", open string %@, close string %@", openString, closeString];

  return v6;
}

- (BOOL)_isBinomialCoefficient
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  if ([lastObject isUnlinedFraction])
  {
    openString = [(SCRCMathFencedExpression *)self openString];
    if ([openString isEqualToString:@"("]
    {
      closeString = [(SCRCMathFencedExpression *)self closeString];
      v9 = [closeString isEqualToString:@""]);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_binomialCoefficientContent
{
  children = [(SCRCMathArrayExpression *)self children];
  lastObject = [children lastObject];

  return lastObject;
}

- (unint64_t)fractionLevel
{
  if ([(SCRCMathFencedExpression *)self _isBinomialCoefficient])
  {
    _binomialCoefficientContent = [(SCRCMathFencedExpression *)self _binomialCoefficientContent];
    v4 = [_binomialCoefficientContent fractionLevel] - 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SCRCMathFencedExpression;
    return [(SCRCMathRowExpression *)&v6 fractionLevel];
  }

  return v4;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  if ([(SCRCMathFencedExpression *)self _isBinomialCoefficient])
  {
    _binomialCoefficientContent = [(SCRCMathFencedExpression *)self _binomialCoefficientContent];
    scrcString = [_binomialCoefficientContent speakableDescriptionAsBinomialCoefficientWithSpeakingStyle:style];
  }

  else
  {
    scrcString = [MEMORY[0x277CCAB48] scrcString];
    v9 = MEMORY[0x277CCA898];
    openString = [(SCRCMathFencedExpression *)self openString];
    v11 = [v9 scrcStringWithLiteralString:openString];
    [scrcString appendAttributedString:v11];

    if (allowedCopy)
    {
      [MEMORY[0x277CCA898] scrcPauseString];
    }

    else
    {
      [MEMORY[0x277CCA898] scrcSpaceString];
    }
    v12 = ;
    [scrcString appendAttributedString:v12];

    v23.receiver = self;
    v23.super_class = SCRCMathFencedExpression;
    v13 = [(SCRCMathRowExpression *)&v23 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
    if ([v13 length])
    {
      [scrcString appendAttributedString:v13];
      if (allowedCopy)
      {
        [MEMORY[0x277CCA898] scrcPauseString];
      }

      else
      {
        [MEMORY[0x277CCA898] scrcSpaceString];
      }
      v14 = ;
      [scrcString appendAttributedString:v14];
    }

    v15 = MEMORY[0x277CCA898];
    closeString = [(SCRCMathFencedExpression *)self closeString];
    v17 = [v15 scrcStringWithLiteralString:closeString];

    if ([(SCRCMathFencedExpression *)self isClosingImplicit])
    {
      v18 = MEMORY[0x277CCA898];
      v19 = [(SCRCMathExpression *)self localizedStringForKey:@"implicit.decoration"];
      v20 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"implicit"];
      v21 = [v18 scrcStringWithFormat:v19, v20, v17];

      v17 = v21;
    }

    [scrcString appendAttributedString:v17];
  }

  return scrcString;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  positionCopy = position;
  if (depth < 2)
  {
    v21.receiver = self;
    v21.super_class = SCRCMathFencedExpression;
    array = [(SCRCMathArrayExpression *)&v21 speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:positionCopy];
  }

  else
  {
    if ([(SCRCMathFencedExpression *)self _isBinomialCoefficient])
    {
      _binomialCoefficientContent = [(SCRCMathFencedExpression *)self _binomialCoefficientContent];
      v10 = [(SCRCMathFencedExpression *)self _treePositionForBinomialCoefficientContentWithOuterTreePosition:positionCopy];
      array = [_binomialCoefficientContent speakableSegmentsAsBinomialCoefficientWithSpeakingStyle:style upToDepth:depth - 1 treePosition:v10];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      _binomialCoefficientContent = [positionCopy indexPathByAddingIndex:-2];
      v12 = MEMORY[0x277CCA898];
      openString = [(SCRCMathFencedExpression *)self openString];
      v14 = [v12 scrcStringWithLiteralString:openString treePosition:_binomialCoefficientContent];
      [array insertObject:v14 atIndex:0];

      v22.receiver = self;
      v22.super_class = SCRCMathFencedExpression;
      v15 = [(SCRCMathArrayExpression *)&v22 speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:positionCopy];
      [array addObjectsFromArray:v15];

      v16 = [positionCopy indexPathByAddingIndex:-1];
      v17 = MEMORY[0x277CCA898];
      closeString = [(SCRCMathFencedExpression *)self closeString];
      v19 = [v17 scrcStringWithLiteralString:closeString treePosition:v16];
      [array addObject:v19];
    }
  }

  return array;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  v8 = MEMORY[0x277CCA898];
  openString = [(SCRCMathFencedExpression *)self openString];
  v10 = [positionCopy indexPathByAddingIndex:-2];
  v11 = [v8 scrcStringWithString:openString treePosition:v10];
  [scrcString appendAttributedString:v11];

  if ([(SCRCMathFencedExpression *)self _isBinomialCoefficient])
  {
    _binomialCoefficientContent = [(SCRCMathFencedExpression *)self _binomialCoefficientContent];
    v13 = [(SCRCMathFencedExpression *)self _treePositionForBinomialCoefficientContentWithOuterTreePosition:positionCopy];
    v14 = [_binomialCoefficientContent dollarCodeDescriptionAsBinomialCoefficientWithTreePosition:v13 numberOfOuterRadicals:radicals];
    [scrcString appendAttributedString:v14];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SCRCMathFencedExpression;
    v15 = [(SCRCMathRowExpression *)&v21 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:positionCopy];
    [scrcString appendAttributedString:v15];
  }

  v16 = MEMORY[0x277CCA898];
  closeString = [(SCRCMathFencedExpression *)self closeString];
  v18 = [positionCopy indexPathByAddingIndex:-1];
  v19 = [v16 scrcStringWithString:closeString treePosition:v18];
  [scrcString appendAttributedString:v19];

  return scrcString;
}

- (id)mathMLAttributes
{
  v7[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"open";
  openString = [(SCRCMathFencedExpression *)self openString];
  v7[1] = openString;
  v7[2] = @"close";
  closeString = [(SCRCMathFencedExpression *)self closeString];
  v7[3] = closeString;
  v7[4] = @"separators";
  v7[5] = &stru_287632E30;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];

  return v5;
}

- (id)latexDescriptionInMathMode:(BOOL)mode
{
  string = [MEMORY[0x277CCAB68] string];
  v6 = [(SCRCMathExpression *)self latexIdentifierForFenceOperator:self->_openString isClosingOperator:0];
  [string appendString:v6];
  v10.receiver = self;
  v10.super_class = SCRCMathFencedExpression;
  v7 = [(SCRCMathRowExpression *)&v10 latexDescriptionInMathMode:1];
  if ([v7 length])
  {
    [string appendString:@" "];
    [string appendString:v7];
  }

  [string appendString:@" "];
  v8 = [(SCRCMathExpression *)self latexIdentifierForFenceOperator:self->_closeString isClosingOperator:1];
  [string appendString:v8];
  if (!mode)
  {
    [string addMathIndicators];
  }

  return string;
}

@end