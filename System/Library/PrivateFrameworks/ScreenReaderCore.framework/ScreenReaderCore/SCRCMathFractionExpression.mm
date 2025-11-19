@interface SCRCMathFractionExpression
- (BOOL)isSimpleNumericalFraction;
- (SCRCMathFractionExpression)initWithDictionary:(id)a3;
- (id)_dollarCodeDescriptionAsBinomialCoefficient:(BOOL)a3 orMixedNumberFraction:(BOOL)a4 withNumberOfOuterRadicals:(unint64_t)a5 treePosition:(id)a6;
- (id)_speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4 asBinomialCoefficient:(BOOL)a5;
- (id)_speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 asBinomialCoefficient:(BOOL)a6;
- (id)description;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)subExpressions;
@end

@implementation SCRCMathFractionExpression

- (SCRCMathFractionExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SCRCMathFractionExpression;
  v5 = [(SCRCMathExpression *)&v20 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMNumeratorObject"];
    if (!v6)
    {
      v7 = [@"Term" stringByAppendingString:@"1"];
      v6 = [v4 objectForKey:v7];
    }

    v8 = [v4 objectForKey:@"AXMDenominatorObject"];
    if (!v8)
    {
      v9 = [@"Term" stringByAppendingString:@"2"];
      v8 = [v4 objectForKey:v9];
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
      v15 = [v4 objectForKey:@"AXMOperator"];
      v16 = [SCRCMathExpression mathExpressionWithDictionary:v15];
      [(SCRCMathFractionExpression *)v5 setOperator:v16];

      v17 = [v4 objectForKey:@"AXMLineThickness"];
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
  v4 = [(SCRCMathFractionExpression *)self numerator];
  v5 = [(SCRCMathFractionExpression *)self denominator];
  v6 = [(SCRCMathFractionExpression *)self operator];
  [(SCRCMathFractionExpression *)self lineThickness];
  v8 = [v3 stringByAppendingFormat:@" - numerator %@, denominator %@, operator %@, line thickness %f", v4, v5, v6, v7];

  return v8;
}

- (id)subExpressions
{
  v3 = [(SCRCMathFractionExpression *)self numerator];
  v4 = [(SCRCMathFractionExpression *)self denominator];
  v5 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:v3 secondChild:v4 thirdChild:0];

  return v5;
}

- (BOOL)isSimpleNumericalFraction
{
  v3 = [(SCRCMathFractionExpression *)self numerator];
  if ([v3 isNumber])
  {
    v4 = [(SCRCMathFractionExpression *)self denominator];
    v5 = [v4 isNumber];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4 asBinomialCoefficient:(BOOL)a5
{
  v6 = a4;
  v9 = [(SCRCMathFractionExpression *)self numerator];
  v10 = [v9 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v6];

  v11 = [(SCRCMathFractionExpression *)self denominator];
  v12 = [v11 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v6];

  if (a5)
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

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCRCMathFractionExpression *)self isUnlinedFraction];

  return [(SCRCMathFractionExpression *)self _speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4 asBinomialCoefficient:v7];
}

- (id)_speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5 asBinomialCoefficient:(BOOL)a6
{
  v6 = a6;
  v43 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4)
  {
    v11 = a4 - 1;
    if (a4 == 1)
    {
      v41.receiver = self;
      v41.super_class = SCRCMathFractionExpression;
      v12 = [(SCRCMathExpression *)&v41 speakableSegmentsWithSpeakingStyle:a3 upToDepth:1 treePosition:v10];
    }

    else
    {
      v13 = @"segment.";
      if (v6)
      {
        v13 = @"segment.binomial.coefficient.";
      }

      v14 = v13;
      v15 = [(SCRCMathFractionExpression *)self numerator];
      v16 = [v10 indexPathByAddingIndex:0];
      v17 = [(__CFString *)v14 stringByAppendingString:@"numerator.prefix"];
      v18 = [(__CFString *)v14 stringByAppendingString:@"numerator.suffix"];
      v19 = [v15 speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 - 1 treePosition:v16 localizablePrefix:v17 localizableSuffix:v18];

      v20 = [(SCRCMathFractionExpression *)self denominator];
      v36 = v10;
      v21 = [v10 indexPathByAddingIndex:1];
      v22 = [(__CFString *)v14 stringByAppendingString:@"denominator.prefix"];
      v35 = v14;
      v23 = [(__CFString *)v14 stringByAppendingString:@"denominator.suffix"];
      v24 = [v20 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v11 treePosition:v21 localizablePrefix:v22 localizableSuffix:v23];

      v12 = [MEMORY[0x277CBEB18] array];
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

            [v12 addObjectsFromArray:v32];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v27);
      }

      v10 = v36;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_dollarCodeDescriptionAsBinomialCoefficient:(BOOL)a3 orMixedNumberFraction:(BOOL)a4 withNumberOfOuterRadicals:(unint64_t)a5 treePosition:(id)a6
{
  v8 = a3;
  v10 = a6;
  if (v8)
  {
    v11 = @"nr";
  }

  else
  {
    v11 = @"fl";
  }

  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = @"fe0";
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = @"fs0";
  }

  if (!v8 && !a4)
  {
    v14 = [(SCRCMathFractionExpression *)self fractionLevel];
    v12 = @"fe2";
    v15 = @"fs";
    v16 = @"fe";
    v17 = @"fl";
    if (v14 == 2)
    {
      v17 = @"fl1";
      v16 = @"fe1";
      v15 = @"fs1";
    }

    if (v14 == 3)
    {
      v11 = @"fl2";
    }

    else
    {
      v11 = v17;
    }

    if (v14 == 3)
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
  v18 = [MEMORY[0x277CCAB48] scrcString];
  if (!v8)
  {
    v19 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v13 treePosition:v10];
    [v18 appendAttributedString:v19];
  }

  v20 = [(SCRCMathFractionExpression *)self numerator];
  v21 = [v10 indexPathByAddingIndex:0];
  v22 = [v20 dollarCodeDescriptionWithNumberOfOuterRadicals:a5 treePosition:v21];
  [v18 appendAttributedString:v22];

  v23 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v11 treePosition:v10];
  [v18 appendAttributedString:v23];

  v24 = [(SCRCMathFractionExpression *)self denominator];
  v25 = [v10 indexPathByAddingIndex:1];
  v26 = [v24 dollarCodeDescriptionWithNumberOfOuterRadicals:a5 treePosition:v25];
  [v18 appendAttributedString:v26];

  if (!v8)
  {
    v27 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v29 treePosition:v10];
    [v18 appendAttributedString:v27];
  }

  return v18;
}

- (id)mathMLString
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCRCMathFractionExpression *)self numerator];
  v5 = [v4 mathMLString];
  v6 = [(SCRCMathFractionExpression *)self denominator];
  v7 = [v6 mathMLString];
  v8 = [v3 stringWithFormat:@"%@%@", v5, v7];
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