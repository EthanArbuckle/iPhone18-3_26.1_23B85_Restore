@interface SCRCMathUnderOverExpression
- (BOOL)isRangeSubSuperscript;
- (SCRCMathUnderOverExpression)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (id)subExpressions;
@end

@implementation SCRCMathUnderOverExpression

- (SCRCMathUnderOverExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SCRCMathUnderOverExpression;
  v5 = [(SCRCMathExpression *)&v13 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMUnderObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathUnderOverExpression *)v5 setUnder:v7];

    v8 = [dictionaryCopy objectForKey:@"AXMOverObject"];
    v9 = [SCRCMathExpression mathExpressionWithDictionary:v8];
    [(SCRCMathUnderOverExpression *)v5 setOver:v9];

    v10 = [dictionaryCopy objectForKey:@"AXMBaseObject"];
    v11 = [SCRCMathExpression mathExpressionWithDictionary:v10];
    [(SCRCMathUnderOverExpression *)v5 setBase:v11];
  }

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SCRCMathUnderOverExpression;
  v3 = [(SCRCMathUnderOverExpression *)&v9 description];
  under = [(SCRCMathUnderOverExpression *)self under];
  over = [(SCRCMathUnderOverExpression *)self over];
  base = [(SCRCMathUnderOverExpression *)self base];
  v7 = [v3 stringByAppendingFormat:@" - under %@, over %@, base %@", under, over, base];

  return v7;
}

- (id)subExpressions
{
  base = [(SCRCMathUnderOverExpression *)self base];
  under = [(SCRCMathUnderOverExpression *)self under];
  over = [(SCRCMathUnderOverExpression *)self over];
  v6 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:base secondChild:under thirdChild:over];

  return v6;
}

- (BOOL)isRangeSubSuperscript
{
  base = [(SCRCMathUnderOverExpression *)self base];
  if (base && ([(SCRCMathUnderOverExpression *)self over], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    under = [(SCRCMathUnderOverExpression *)self under];

    if (under)
    {
      LOBYTE(under) = [base canBeUsedWithRange];
    }
  }

  else
  {
    LOBYTE(under) = 0;
  }

  return under;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  base = [(SCRCMathUnderOverExpression *)self base];
  v8 = [base speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  under = [(SCRCMathUnderOverExpression *)self under];
  v10 = [under speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  over = [(SCRCMathUnderOverExpression *)self over];
  v12 = [over speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  if (![v8 length])
  {
    v13 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"empty.content"];

    v8 = v13;
  }

  if ([(SCRCMathUnderOverExpression *)self isRangeSubSuperscript])
  {
    v14 = MEMORY[0x277CCA898];
    v15 = [(SCRCMathExpression *)self localizedStringForKey:@"range.sub.superscript.formatter"];
    v20 = v12;
LABEL_5:
    [v14 scrcStringWithFormat:v15, v8, v10, v20];
    v17 = LABEL_17:;

    goto LABEL_18;
  }

  if ([v12 length] && !objc_msgSend(v10, "length"))
  {
    v16 = MEMORY[0x277CCA898];
    v15 = [(SCRCMathExpression *)self localizedStringForKey:@"generic.over.formula.formatter"];
    goto LABEL_16;
  }

  if (![v12 length] && objc_msgSend(v10, "length"))
  {
    v14 = MEMORY[0x277CCA898];
    v15 = [(SCRCMathExpression *)self localizedStringForKey:@"generic.under.formula.formatter"];
    goto LABEL_5;
  }

  if ([v12 length] && objc_msgSend(v10, "length"))
  {
    v16 = MEMORY[0x277CCA898];
    v15 = [(SCRCMathExpression *)self localizedStringForKey:@"generic.over.under.formula.formatter"];
    v20 = v10;
LABEL_16:
    [v16 scrcStringWithFormat:v15, v12, v8, v20];
    goto LABEL_17;
  }

  v17 = v8;
LABEL_18:
  v18 = v17;

  return v17;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v56 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if (depth)
  {
    v8 = depth - 1;
    if (depth == 1)
    {
      v53.receiver = self;
      v53.super_class = SCRCMathUnderOverExpression;
      depth = [(SCRCMathExpression *)&v53 speakableSegmentsWithSpeakingStyle:style upToDepth:1 treePosition:positionCopy];
      goto LABEL_40;
    }

    depth = [MEMORY[0x277CBEB18] array];
    if ([(SCRCMathUnderOverExpression *)self isRangeSubSuperscript])
    {
      v51 = 0uLL;
      v52 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      obj = [(SCRCMathExpression *)self localizedSegmentOrderingForKey:@"RangeSubSuperscript"];
      v9 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (!v9)
      {
        goto LABEL_39;
      }

      v10 = v9;
      v11 = *v50;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          if ([v13 isEqualToString:@"base"])
          {
            base = [(SCRCMathUnderOverExpression *)self base];
            v15 = [positionCopy indexPathByAddingIndex:0];
            v16 = [base speakableSegmentsWithSpeakingStyle:style upToDepth:v8 treePosition:v15];
          }

          else
          {
            if ([v13 isEqualToString:@"subscript"])
            {
              base = [(SCRCMathUnderOverExpression *)self under];
              v15 = [positionCopy indexPathByAddingIndex:2];
              v17 = base;
              styleCopy2 = style;
              v19 = v8;
              v20 = v15;
              v21 = @"segment.range.subscript.prefix";
              v22 = @"segment.range.subscript.suffix";
            }

            else
            {
              if (![v13 isEqualToString:@"superscript"])
              {
                continue;
              }

              base = [(SCRCMathUnderOverExpression *)self over];
              v15 = [positionCopy indexPathByAddingIndex:1];
              v17 = base;
              styleCopy2 = style;
              v19 = v8;
              v20 = v15;
              v21 = @"segment.range.superscript.prefix";
              v22 = @"segment.range.superscript.suffix";
            }

            v16 = [v17 speakableSegmentsWithSpeakingStyle:styleCopy2 upToDepth:v19 treePosition:v20 localizablePrefix:v21 localizableSuffix:v22];
          }

          v23 = v16;
          [depth addObjectsFromArray:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (!v10)
        {
LABEL_39:

          goto LABEL_40;
        }
      }
    }

    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    obj = [(SCRCMathExpression *)self localizedSegmentOrderingForKey:@"UnderOver"];
    v24 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (!v24)
    {
      goto LABEL_39;
    }

    v25 = v24;
    v26 = *v46;
LABEL_23:
    v27 = 0;
    while (1)
    {
      if (*v46 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v45 + 1) + 8 * v27);
      if ([v28 isEqualToString:@"over"])
      {
        over = [(SCRCMathUnderOverExpression *)self over];

        if (over)
        {
          break;
        }
      }

      if (![v28 isEqualToString:@"base"] || (-[SCRCMathUnderOverExpression base](self, "base"), v38 = objc_claimAutoreleasedReturnValue(), v38, !v38))
      {
        if (![v28 isEqualToString:@"under"])
        {
          goto LABEL_37;
        }

        under = [(SCRCMathUnderOverExpression *)self under];

        if (!under)
        {
          goto LABEL_37;
        }

        under2 = [(SCRCMathUnderOverExpression *)self under];
        v31 = [positionCopy indexPathByAddingIndex:2];
        v32 = under2;
        styleCopy4 = style;
        v34 = v8;
        v35 = v31;
        v36 = @"segment.under.prefix";
        v37 = @"segment.under.suffix";
        goto LABEL_35;
      }

      under2 = [(SCRCMathUnderOverExpression *)self base];
      v31 = [positionCopy indexPathByAddingIndex:0];
      v39 = [under2 speakableSegmentsWithSpeakingStyle:style upToDepth:v8 treePosition:v31];
LABEL_36:
      v41 = v39;
      [depth addObjectsFromArray:v39];

LABEL_37:
      if (v25 == ++v27)
      {
        v25 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (!v25)
        {
          goto LABEL_39;
        }

        goto LABEL_23;
      }
    }

    under2 = [(SCRCMathUnderOverExpression *)self over];
    v31 = [positionCopy indexPathByAddingIndex:1];
    v32 = under2;
    styleCopy4 = style;
    v34 = v8;
    v35 = v31;
    v36 = @"segment.over.prefix";
    v37 = @"segment.over.suffix";
LABEL_35:
    v39 = [v32 speakableSegmentsWithSpeakingStyle:styleCopy4 upToDepth:v34 treePosition:v35 localizablePrefix:v36 localizableSuffix:v37];
    goto LABEL_36;
  }

LABEL_40:

  return depth;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  v7 = [positionCopy indexPathByAddingIndex:0];
  base = [(SCRCMathUnderOverExpression *)self base];

  if (base)
  {
    base2 = [(SCRCMathUnderOverExpression *)self base];
    v10 = [base2 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCA898] scrcStringWithString:&stru_287632E30 treePosition:v7];
  }

  over = [(SCRCMathUnderOverExpression *)self over];
  if (over)
  {
  }

  else
  {
    under = [(SCRCMathUnderOverExpression *)self under];

    if (!under)
    {
      scrcString = v10;
      goto LABEL_12;
    }
  }

  scrcString = [MEMORY[0x277CCAB48] scrcString];
  v14 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"e" treePosition:positionCopy];
  [scrcString appendAttributedString:v14];

  [scrcString appendAttributedString:v10];
  under2 = [(SCRCMathUnderOverExpression *)self under];

  if (under2)
  {
    v16 = [positionCopy indexPathByAddingIndex:2];
    v17 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"us" treePosition:v16];
    [(SCRCMathUnderOverExpression *)self under];
    v18 = v32 = v7;
    [v18 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v16];
    v19 = positionCopy;
    v20 = v10;
    v22 = v21 = radicals;
    v23 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"ue" treePosition:v16];
    [scrcString scrcAppendFormat:@"%@%@%@", v17, v22, v23];

    radicals = v21;
    v10 = v20;
    positionCopy = v19;

    v7 = v32;
  }

  over2 = [(SCRCMathUnderOverExpression *)self over];

  if (over2)
  {
    v25 = [positionCopy indexPathByAddingIndex:1];
    v26 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"os" treePosition:v25];
    over3 = [(SCRCMathUnderOverExpression *)self over];
    v28 = [over3 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v25];
    v29 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"oe" treePosition:v25];
    [scrcString scrcAppendFormat:@"%@%@%@", v26, v28, v29];
  }

LABEL_12:
  v30 = scrcString;

  return scrcString;
}

- (id)mathMLString
{
  under = [(SCRCMathUnderOverExpression *)self under];
  if (under)
  {
    v4 = under;
    over = [(SCRCMathUnderOverExpression *)self over];

    if (over)
    {
      v6 = MEMORY[0x277CCACA8];
      base = [(SCRCMathUnderOverExpression *)self base];
      mathMLString = [base mathMLString];
      under2 = [(SCRCMathUnderOverExpression *)self under];
      mathMLString2 = [under2 mathMLString];
      over2 = [(SCRCMathUnderOverExpression *)self over];
      mathMLString3 = [over2 mathMLString];
      v13 = [v6 stringWithFormat:@"%@%@%@", mathMLString, mathMLString2, mathMLString3];
      v14 = [v13 stringWrappedInMathMLTag:@"munderover"];

LABEL_9:
      goto LABEL_10;
    }
  }

  under3 = [(SCRCMathUnderOverExpression *)self under];

  if (under3)
  {
    v16 = MEMORY[0x277CCACA8];
    base = [(SCRCMathUnderOverExpression *)self base];
    mathMLString = [base mathMLString];
    under2 = [(SCRCMathUnderOverExpression *)self under];
    mathMLString2 = [under2 mathMLString];
    v17 = [v16 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
    over2 = v17;
    v18 = @"munder";
LABEL_8:
    v14 = [v17 stringWrappedInMathMLTag:v18];
    goto LABEL_9;
  }

  over3 = [(SCRCMathUnderOverExpression *)self over];

  if (over3)
  {
    v20 = MEMORY[0x277CCACA8];
    base = [(SCRCMathUnderOverExpression *)self base];
    mathMLString = [base mathMLString];
    under2 = [(SCRCMathUnderOverExpression *)self over];
    mathMLString2 = [under2 mathMLString];
    v17 = [v20 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
    over2 = v17;
    v18 = @"mover";
    goto LABEL_8;
  }

  v14 = &stru_287632E30;
LABEL_10:

  return v14;
}

- (id)latexMathModeDescription
{
  v3 = [(SCRCMathExpression *)self->_base latexDescriptionInMathMode:1];
  over = self->_over;
  if (self->_under)
  {
    if (over)
    {
      goto LABEL_8;
    }

    latexFormatStringAsUnder = [0 latexFormatStringAsUnder];
  }

  else
  {
    latexFormatStringAsUnder = [(SCRCMathExpression *)over latexFormatStringAsOver];
  }

  v6 = latexFormatStringAsUnder;
  if (latexFormatStringAsUnder)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:latexFormatStringAsUnder, v3];

    v3 = v7;
  }

LABEL_8:

  return v3;
}

@end