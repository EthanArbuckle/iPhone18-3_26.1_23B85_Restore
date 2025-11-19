@interface SCRCMathRowExpression
- (BOOL)beginsWithSpace;
- (BOOL)canBeUsedWithBase;
- (BOOL)canBeUsedWithRange;
- (BOOL)endsWithSpace;
- (BOOL)isFunctionName;
- (BOOL)isInteger;
- (BOOL)isNumber;
- (BOOL)isWordOrAbbreviation;
- (id)_indexesOfCharactersInWords;
- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 parentTreePosition:(id)a5 childIndex:(unint64_t *)a6;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4;
- (id)latexDescriptionInMathMode:(BOOL)a3;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)speakableSummary;
- (int64_t)integerValue;
- (void)_addSpacingAndChild:(id)a3 toResult:(id)a4 nextChild:(id)a5 previousChild:(id)a6 numberOfOuterRadicals:(unint64_t)a7 treePosition:(id)a8;
@end

@implementation SCRCMathRowExpression

- (BOOL)isNumber
{
  if ([(SCRCMathExpression *)self isNumberOverride])
  {
    return 1;
  }

  v4 = [(SCRCMathArrayExpression *)self children];
  if ([v4 count] == 1)
  {
    v5 = [v4 lastObject];
    v3 = [v5 isNumber];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isInteger
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 isInteger];

  return v7;
}

- (int64_t)integerValue
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 integerValue];

  return v7;
}

- (BOOL)isFunctionName
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 isFunctionName];

  return v7;
}

- (BOOL)isWordOrAbbreviation
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 isWordOrAbbreviation];

  return v7;
}

- (BOOL)canBeUsedWithRange
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 canBeUsedWithRange];

  return v7;
}

- (BOOL)canBeUsedWithBase
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 lastObject];
  v7 = [v6 canBeUsedWithBase];

  return v7;
}

- (BOOL)beginsWithSpace
{
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SCRCMathArrayExpression *)self children];
  v6 = [v5 objectAtIndex:0];
  v7 = [v6 beginsWithSpace];

  return v7;
}

- (BOOL)endsWithSpace
{
  v2 = [(SCRCMathArrayExpression *)self children];
  v3 = [v2 lastObject];
  v4 = [v3 endsWithSpace];

  return v4;
}

- (id)_indexesOfCharactersInWords
{
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v4 = [(SCRCMathArrayExpression *)self children];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndex:v7];
      if (v7 + 1 >= v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 1;
        while (1)
        {
          v10 = [v4 objectAtIndex:v7 + v9];
          v11 = [v10 canFormWordStartingWithExpression:v8];

          if (!v11)
          {
            break;
          }

          if (v6 - v7 == ++v9)
          {
            v9 = v6 - v7;
            break;
          }
        }

        if (v9 >= 3)
        {
          [v3 addIndexesInRange:{v7, v9}];
        }
      }

      v7 += v9;
    }

    while (v7 < v6);
  }

  return v3;
}

- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 parentTreePosition:(id)a5 childIndex:(unint64_t *)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = *a6;
  v12 = [(SCRCMathArrayExpression *)self children];
  v13 = [v12 count];
  v14 = [v12 objectAtIndex:v11];
  v15 = [v14 isRangeSubSuperscript];
  if (((v15 | [v14 isBaseSubSuperscript]) & 1) != 0 && v11 < v13 - 1)
  {
    v16 = v14;
    if (v15)
    {
      v17 = @"segment.range.firstchild.prefix";
    }

    else
    {
      v17 = @"segment.base.firstchild.prefix";
    }

    v18 = @"segment.base.firstchild.suffix";
    if (v15)
    {
      v18 = @"segment.range.firstchild.suffix";
    }

    v19 = @"segment.base.secondchild.prefix";
    if (v15)
    {
      v19 = @"segment.range.secondchild.prefix";
    }

    v46 = v19;
    v20 = @"segment.base.secondchild.suffix";
    if (v15)
    {
      v20 = @"segment.range.secondchild.suffix";
    }

    v50 = v20;
    v44 = self;
    v21 = a4;
    v22 = v12;
    v23 = v18;
    v24 = v17;
    v25 = [v10 indexPathByAddingIndex:v11];
    v48 = v16;
    v26 = [v16 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v21 treePosition:v25 localizablePrefix:v24 localizableSuffix:v23];

    v27 = v11 + 1;
    *a6 = v11 + 1;
    v49 = v22;
    v28 = [v22 objectAtIndex:v11 + 1];
    v29 = v46;
    v30 = v50;
    v51 = v10;
    v31 = [v10 indexPathByAddingIndex:v27];
    v47 = v29;
    v45 = v30;
    v32 = [v28 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v21 treePosition:v31 localizablePrefix:v29 localizableSuffix:v30];

    v33 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v34 = [(SCRCMathExpression *)v44 localizedSegmentOrderingForKey:@"RangeAndExpressionAfterRange"];
    v35 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v54;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v54 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v53 + 1) + 8 * i);
          v40 = [v39 isEqualToString:@"range"];
          v41 = v26;
          if ((v40 & 1) == 0)
          {
            v42 = [v39 isEqualToString:@"expression after range"];
            v41 = v32;
            if (!v42)
            {
              continue;
            }
          }

          [v33 addObjectsFromArray:v41];
        }

        v36 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v36);
    }

    v12 = v49;
    v10 = v51;
    v14 = v48;
  }

  else
  {
    v52.receiver = self;
    v52.super_class = SCRCMathRowExpression;
    v33 = [(SCRCMathArrayExpression *)&v52 childSpeakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 parentTreePosition:v10 childIndex:a6];
  }

  return v33;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = [(SCRCMathArrayExpression *)self children];
  v7 = [v6 count];
  v28 = self;
  v8 = [(SCRCMathRowExpression *)self _indexesOfCharactersInWords];
  v29 = [MEMORY[0x277CCAB48] scrcString];
  if (v7)
  {
    v9 = 0;
    v10 = v7 - 1;
    v27 = v4;
    v25 = v7 - 1;
    v26 = v6;
    do
    {
      v11 = [v6 objectAtIndex:v9];
      v12 = [v11 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4 isPartOfWord:{objc_msgSend(v8, "containsIndex:", v9)}];
      v13 = [v11 isRangeSubSuperscript];
      if (((v13 | [v11 isBaseSubSuperscript]) & 1) != 0 && v9 < v10)
      {
        v14 = [v6 objectAtIndex:++v9];
        [v14 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4 isPartOfWord:{objc_msgSend(v8, "containsIndex:", v9)}];
        v15 = v8;
        v17 = v16 = v7;
        v18 = MEMORY[0x277CCA898];
        if (v13)
        {
          v19 = @"range.sub.superscript.with.next.child.formatter";
        }

        else
        {
          v19 = @"base.sub.superscript.with.next.child.formatter";
        }

        v20 = [(SCRCMathExpression *)v28 localizedStringForKey:v19];
        v21 = [v18 scrcStringWithFormat:v20, v12, v17];

        v7 = v16;
        v8 = v15;

        v12 = v21;
        v10 = v25;
        v6 = v26;
        v4 = v27;
      }

      if ([v12 length])
      {
        [v29 appendAttributedString:v12];
        if (v9 < v10 && ([v8 containsIndex:v9] & 1) == 0)
        {
          if (v4 && [v12 scrcContainsPause])
          {
            v22 = [MEMORY[0x277CCA898] scrcPauseString];
          }

          else
          {
            v22 = [MEMORY[0x277CCA898] scrcSpaceString];
          }

          v23 = v22;
          [v29 appendAttributedString:v22];
        }
      }

      ++v9;
    }

    while (v9 < v7);
  }

  return v29;
}

- (void)_addSpacingAndChild:(id)a3 toResult:(id)a4 nextChild:(id)a5 previousChild:(id)a6 numberOfOuterRadicals:(unint64_t)a7 treePosition:(id)a8
{
  v38 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  if (([v38 isFunctionName] & 1) == 0 && !objc_msgSend(v38, "isWordOrAbbreviation"))
  {
    if ([v38 isEllipsis])
    {
      v20 = [v15 isOperationSymbol];
      v19 = [v14 isOperationSymbol];
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v15)
  {
    if (v14)
    {
      v19 = [v14 beginsWithSpace] ^ 1;
      goto LABEL_15;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_15;
  }

  v17 = [v15 endsWithSpace];
  v18 = v17;
  if (v14)
  {
    v19 = [v14 beginsWithSpace] ^ 1;
    if (v18)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = 0;
  if ((v17 & 1) == 0)
  {
LABEL_14:
    v21 = MEMORY[0x277CCA898];
    v22 = [v16 indexPathByRemovingLastIndex];
    v23 = [v21 scrcStringWithString:@" " treePosition:v22];
    [v13 appendAttributedString:v23];
  }

LABEL_15:
  if ([v15 isNumber] && objc_msgSend(v38, "isSimpleNumericalFraction"))
  {
    v24 = [v38 dollarCodeDescriptionAsMixedNumberFractionWithTreePosition:v16];
    goto LABEL_37;
  }

  if ([v38 isFenceDelimiter] && (objc_msgSend(v14, "isMultiRowTable") & 1) != 0 || objc_msgSend(v15, "isMultiRowTable") && (objc_msgSend(v38, "isFenceDelimiter") & 1) != 0)
  {
LABEL_31:
    if (!v19)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![v38 isMultiRowTable])
  {
    v24 = [v38 dollarCodeDescriptionWithNumberOfOuterRadicals:a7 treePosition:v16];
LABEL_37:
    v33 = v24;
    if (v24)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ([v15 isFenceDelimiter])
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  v37 = v25;
  if ([v14 isFenceDelimiter])
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = [v16 indexAtPosition:{objc_msgSend(v16, "length") - 1}];
  v29 = [v16 indexPathByRemovingLastIndex];
  v30 = [v29 indexPathByAddingIndex:v28 - 1];

  v31 = [v16 indexPathByRemovingLastIndex];
  v32 = [v31 indexPathByAddingIndex:v28 + 1];

  v33 = [v38 dollarCodeDescriptionWithNumberOfOuterRadicals:a7 treePosition:v16 openOperator:v37 openOperatorTreePosition:v30 closeOperator:v27 closeOperatorTreePosition:v32];

  if (!v33)
  {
LABEL_30:
    NSLog(&cfstr_AxVoiceoverMat_0.isa, v38);
    goto LABEL_31;
  }

LABEL_38:
  [v13 appendAttributedString:v33];

  if (v19)
  {
LABEL_32:
    v34 = MEMORY[0x277CCA898];
    v35 = [v16 indexPathByRemovingLastIndex];
    v36 = [v34 scrcStringWithString:@" " treePosition:v35];
    [v13 appendAttributedString:v36];
  }

LABEL_33:
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4
{
  v18 = a3;
  v19 = a4;
  v5 = [MEMORY[0x277CCAB48] scrcString];
  v6 = [(SCRCMathArrayExpression *)self children];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(SCRCMathArrayExpression *)self children];
    v9 = [v8 objectAtIndex:0];

    v10 = 0;
    v11 = 0;
    do
    {
      if (v10 >= v7 - 1)
      {
        v14 = 0;
        v13 = v10 + 1;
      }

      else
      {
        v12 = [(SCRCMathArrayExpression *)self children];
        v13 = v10 + 1;
        v14 = [v12 objectAtIndex:v10 + 1];
      }

      v15 = [v19 indexPathByAddingIndex:{v10, v18}];
      [(SCRCMathRowExpression *)self _addSpacingAndChild:v9 toResult:v5 nextChild:v14 previousChild:v11 numberOfOuterRadicals:v18 treePosition:v15];

      v16 = v9;
      v10 = v13;
      v9 = v14;
      v11 = v16;
    }

    while (v13 != v7);
  }

  return v5;
}

- (id)speakableSummary
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(SCRCMathArrayExpression *)self children];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v4)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v22;
  v8 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = v8;
      if (*v22 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v8 = [v11 isTermSeparator];
      if ((v8 & 1) == 0 && ((v10 ^ 1) & 1) == 0)
      {
        v6 += [v11 isTermSeparator] ^ 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v5);

  if (v6 >= 4)
  {
    v12 = MEMORY[0x277CCACA8];
    v3 = [(SCRCMathExpression *)self localizedStringForKey:@"row.summary.formatter"];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v14 = [(SCRCMathExpression *)self localizedStringForNumber:v13];
    v15 = [v12 stringWithFormat:v3, v14];

LABEL_14:
    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:
  v20.receiver = self;
  v20.super_class = SCRCMathRowExpression;
  v16 = [(SCRCMathExpression *)&v20 speakableSummary];
  if (!(v15 | v16))
  {
    v18 = 0;
    goto LABEL_23;
  }

  v17 = [MEMORY[0x277CCAB68] string];
  v18 = v17;
  if (v15)
  {
    [v17 appendString:v15];
    if (!v16)
    {
      goto LABEL_23;
    }

    [v18 appendString:{@", "}];
  }

  else if (!v16)
  {
    goto LABEL_23;
  }

  [v18 appendString:v16];
LABEL_23:

  return v18;
}

- (id)latexDescriptionInMathMode:(BOOL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(SCRCMathArrayExpression *)self children];
  if (![v4 count])
  {
    v5 = 0;
    goto LABEL_25;
  }

  v5 = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {

    goto LABEL_25;
  }

  v8 = v7;
  v17 = v4;
  v9 = 0;
  v10 = *v19;
  v11 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      v14 = [v13 latexDescriptionInMathMode:1];
      if (v14)
      {
        if (!a3)
        {
          if (v9 & 1 | (([v13 canBeWrappedInLatexMathIndicators] & 1) == 0))
          {
            if ([v13 canBeWrappedInLatexMathIndicators])
            {
              goto LABEL_15;
            }

            v15 = v9 ^ 1;
            if ((v9 ^ 1))
            {
              goto LABEL_15;
            }
          }

          else
          {
            v15 = v9 ^ 1;
          }

          [v5 appendString:@"$"];
          v9 = v15;
        }

LABEL_15:
        if ((v11 & 1) == 0)
        {
          [v5 appendString:@" "];
        }

        [v5 appendString:v14];
        v11 = 0;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  if (v9)
  {
    [v5 appendString:@"$"];
  }

  v4 = v17;
LABEL_25:

  return v5;
}

@end