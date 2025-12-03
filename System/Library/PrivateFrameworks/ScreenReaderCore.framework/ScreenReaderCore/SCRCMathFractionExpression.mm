@interface SCRCMathFractionExpression
- (BOOL)isSimpleNumericalFraction;
- (SCRCMathFractionExpression)initWithDictionary:(id)dictionary;
- (id)_dollarCodeDescriptionAsBinomialCoefficient:(BOOL)coefficient orMixedNumberFraction:(BOOL)fraction withNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)_speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed asBinomialCoefficient:(BOOL)coefficient;
- (id)_speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position asBinomialCoefficient:(BOOL)coefficient;
- (id)description;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)subExpressions;
@end

@implementation SCRCMathFractionExpression

- (SCRCMathFractionExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = SCRCMathFractionExpression;
  v5 = [(SCRCMathExpression *)&v20 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMNumeratorObject"];
    if (!v6)
    {
      v7 = [@"Term" stringByAppendingString:@"1"];
      v6 = [dictionaryCopy objectForKey:v7];
    }

    v8 = [dictionaryCopy objectForKey:@"AXMDenominatorObject"];
    if (!v8)
    {
      v9 = [@"Term" stringByAppendingString:@"2"];
      v8 = [dictionaryCopy objectForKey:v9];
    }

    v10 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    v11 = [SCRCMathExpression mathExpressionWithDictionary:v8];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = v5;
      v5 = 0;
    }

    else
    {
      [(SCRCMathFractionExpression *)v5 setNumerator:v10];
      [(SCRCMathFractionExpression *)v5 setDenominator:v12];
      v15 = [dictionaryCopy objectForKey:@"AXMOperator"];
      v16 = [SCRCMathExpression mathExpressionWithDictionary:v15];
      [(SCRCMathFractionExpression *)v5 setOperator:v16];

      v17 = [dictionaryCopy objectForKey:@"AXMLineThickness"];
      v14 = v17;
      if (v17)
      {
        [(SCRCMathFractionExpression *)v17 doubleValue];
      }

      else
      {
        v18 = 1.0;
      }

      [(SCRCMathFractionExpression *)v5 setLineThickness:v18];
    }
  }

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = SCRCMathFractionExpression;
  v3 = [(SCRCMathFractionExpression *)&v10 description];
  numerator = [(SCRCMathFractionExpression *)self numerator];
  denominator = [(SCRCMathFractionExpression *)self denominator];
  operator = [(SCRCMathFractionExpression *)self operator];
  [(SCRCMathFractionExpression *)self lineThickness];
  v8 = [v3 stringByAppendingFormat:@" - numerator %@, denominator %@, operator %@, line thickness %f", numerator, denominator, operator, v7];

  return v8;
}

- (id)subExpressions
{
  numerator = [(SCRCMathFractionExpression *)self numerator];
  denominator = [(SCRCMathFractionExpression *)self denominator];
  v5 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:numerator secondChild:denominator thirdChild:0];

  return v5;
}

- (BOOL)isSimpleNumericalFraction
{
  numerator = [(SCRCMathFractionExpression *)self numerator];
  if ([numerator isNumber])
  {
    denominator = [(SCRCMathFractionExpression *)self denominator];
    isNumber = [denominator isNumber];
  }

  else
  {
    isNumber = 0;
  }

  return isNumber;
}

- (id)_speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed asBinomialCoefficient:(BOOL)coefficient
{
  allowedCopy = allowed;
  numerator = [(SCRCMathFractionExpression *)self numerator];
  v10 = [numerator speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  denominator = [(SCRCMathFractionExpression *)self denominator];
  v12 = [denominator speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  if (coefficient)
  {
    v13 = @"binomial.coefficient.formatter";
  }

  else if ([v10 scrcContainsPause])
  {
    v13 = @"math.fraction.with.long.numerator.formatter";
  }

  else
  {
    v13 = @"math.fraction.formatter";
  }

  v14 = [(SCRCMathExpression *)self localizedStringForKey:v13];
  v15 = [MEMORY[0x277CCA898] scrcStringWithFormat:v14, v10, v12];

  return v15;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  isUnlinedFraction = [(SCRCMathFractionExpression *)self isUnlinedFraction];

  return [(SCRCMathFractionExpression *)self _speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy asBinomialCoefficient:isUnlinedFraction];
}

- (id)_speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position asBinomialCoefficient:(BOOL)coefficient
{
  coefficientCopy = coefficient;
  v43 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if (depth)
  {
    v11 = depth - 1;
    if (depth == 1)
    {
      v41.receiver = self;
      v41.super_class = SCRCMathFractionExpression;
      array = [(SCRCMathExpression *)&v41 speakableSegmentsWithSpeakingStyle:style upToDepth:1 treePosition:positionCopy];
    }

    else
    {
      v13 = @"segment.";
      if (coefficientCopy)
      {
        v13 = @"segment.binomial.coefficient.";
      }

      v14 = v13;
      numerator = [(SCRCMathFractionExpression *)self numerator];
      v16 = [positionCopy indexPathByAddingIndex:0];
      v17 = [(__CFString *)v14 stringByAppendingString:@"numerator.prefix"];
      v18 = [(__CFString *)v14 stringByAppendingString:@"numerator.suffix"];
      v19 = [numerator speakableSegmentsWithSpeakingStyle:style upToDepth:depth - 1 treePosition:v16 localizablePrefix:v17 localizableSuffix:v18];

      denominator = [(SCRCMathFractionExpression *)self denominator];
      v36 = positionCopy;
      v21 = [positionCopy indexPathByAddingIndex:1];
      v22 = [(__CFString *)v14 stringByAppendingString:@"denominator.prefix"];
      v35 = v14;
      v23 = [(__CFString *)v14 stringByAppendingString:@"denominator.suffix"];
      v24 = [denominator speakableSegmentsWithSpeakingStyle:style upToDepth:v11 treePosition:v21 localizablePrefix:v22 localizableSuffix:v23];

      array = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = [(SCRCMathExpression *)self localizedSegmentOrderingForKey:@"Fraction"];
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v38;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v37 + 1) + 8 * i);
            v31 = [v30 isEqualToString:@"numerator"];
            v32 = v19;
            if ((v31 & 1) == 0)
            {
              v33 = [v30 isEqualToString:@"denominator"];
              v32 = v24;
              if (!v33)
              {
                continue;
              }
            }

            [array addObjectsFromArray:v32];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v27);
      }

      positionCopy = v36;
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_dollarCodeDescriptionAsBinomialCoefficient:(BOOL)coefficient orMixedNumberFraction:(BOOL)fraction withNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  coefficientCopy = coefficient;
  positionCopy = position;
  if (coefficientCopy)
  {
    v11 = @"nr";
  }

  else
  {
    v11 = @"fl";
  }

  if (coefficientCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = @"fe0";
  }

  if (coefficientCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = @"fs0";
  }

  if (!coefficientCopy && !fraction)
  {
    fractionLevel = [(SCRCMathFractionExpression *)self fractionLevel];
    v12 = @"fe2";
    v15 = @"fs";
    v16 = @"fe";
    v17 = @"fl";
    if (fractionLevel == 2)
    {
      v17 = @"fl1";
      v16 = @"fe1";
      v15 = @"fs1";
    }

    if (fractionLevel == 3)
    {
      v11 = @"fl2";
    }

    else
    {
      v11 = v17;
    }

    if (fractionLevel == 3)
    {
      v13 = @"fs2";
    }

    else
    {
      v12 = v16;
      v13 = v15;
    }
  }

  v29 = v12;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  if (!coefficientCopy)
  {
    v19 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v13 treePosition:positionCopy];
    [scrcString appendAttributedString:v19];
  }

  numerator = [(SCRCMathFractionExpression *)self numerator];
  v21 = [positionCopy indexPathByAddingIndex:0];
  v22 = [numerator dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v21];
  [scrcString appendAttributedString:v22];

  v23 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v11 treePosition:positionCopy];
  [scrcString appendAttributedString:v23];

  denominator = [(SCRCMathFractionExpression *)self denominator];
  v25 = [positionCopy indexPathByAddingIndex:1];
  v26 = [denominator dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v25];
  [scrcString appendAttributedString:v26];

  if (!coefficientCopy)
  {
    v27 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v29 treePosition:positionCopy];
    [scrcString appendAttributedString:v27];
  }

  return scrcString;
}

- (id)mathMLString
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  numerator = [(SCRCMathFractionExpression *)self numerator];
  mathMLString = [numerator mathMLString];
  denominator = [(SCRCMathFractionExpression *)self denominator];
  mathMLString2 = [denominator mathMLString];
  v8 = [v3 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
  v15[0] = @"linethickness";
  v9 = MEMORY[0x277CCACA8];
  [(SCRCMathFractionExpression *)self lineThickness];
  v11 = [v9 stringWithFormat:@"%g", v10];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [v8 stringWrappedInMathMLTag:@"mfrac" withAttributes:v12];

  return v13;
}

- (id)latexMathModeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCRCMathExpression *)self->_numerator latexDescriptionInMathMode:1];
  v5 = [(SCRCMathExpression *)self->_denominator latexDescriptionInMathMode:1];
  v6 = [v3 stringWithFormat:@"\\frac{%@}{%@}", v4, v5];

  return v6;
}

@end