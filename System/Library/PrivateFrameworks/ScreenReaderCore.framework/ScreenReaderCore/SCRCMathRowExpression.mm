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
- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth parentTreePosition:(id)position childIndex:(unint64_t *)index;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexDescriptionInMathMode:(BOOL)mode;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSummary;
- (int64_t)integerValue;
- (void)_addSpacingAndChild:(id)child toResult:(id)result nextChild:(id)nextChild previousChild:(id)previousChild numberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
@end

@implementation SCRCMathRowExpression

- (BOOL)isNumber
{
  if ([(SCRCMathExpression *)self isNumberOverride])
  {
    return 1;
  }

  children = [(SCRCMathArrayExpression *)self children];
  if ([children count] == 1)
  {
    lastObject = [children lastObject];
    isNumber = [lastObject isNumber];
  }

  else
  {
    isNumber = 0;
  }

  return isNumber;
}

- (BOOL)isInteger
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  isInteger = [lastObject isInteger];

  return isInteger;
}

- (int64_t)integerValue
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  integerValue = [lastObject integerValue];

  return integerValue;
}

- (BOOL)isFunctionName
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  isFunctionName = [lastObject isFunctionName];

  return isFunctionName;
}

- (BOOL)isWordOrAbbreviation
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  isWordOrAbbreviation = [lastObject isWordOrAbbreviation];

  return isWordOrAbbreviation;
}

- (BOOL)canBeUsedWithRange
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  canBeUsedWithRange = [lastObject canBeUsedWithRange];

  return canBeUsedWithRange;
}

- (BOOL)canBeUsedWithBase
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (v4 != 1)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  lastObject = [children2 lastObject];
  canBeUsedWithBase = [lastObject canBeUsedWithBase];

  return canBeUsedWithBase;
}

- (BOOL)beginsWithSpace
{
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children count];

  if (!v4)
  {
    return 0;
  }

  children2 = [(SCRCMathArrayExpression *)self children];
  v6 = [children2 objectAtIndex:0];
  beginsWithSpace = [v6 beginsWithSpace];

  return beginsWithSpace;
}

- (BOOL)endsWithSpace
{
  children = [(SCRCMathArrayExpression *)self children];
  lastObject = [children lastObject];
  endsWithSpace = [lastObject endsWithSpace];

  return endsWithSpace;
}

- (id)_indexesOfCharactersInWords
{
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  children = [(SCRCMathArrayExpression *)self children];
  v5 = [children count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [children objectAtIndex:v7];
      if (v7 + 1 >= v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 1;
        while (1)
        {
          v10 = [children objectAtIndex:v7 + v9];
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
          [indexSet addIndexesInRange:{v7, v9}];
        }
      }

      v7 += v9;
    }

    while (v7 < v6);
  }

  return indexSet;
}

- (id)childSpeakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth parentTreePosition:(id)position childIndex:(unint64_t *)index
{
  v58 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v11 = *index;
  children = [(SCRCMathArrayExpression *)self children];
  v13 = [children count];
  v14 = [children objectAtIndex:v11];
  isRangeSubSuperscript = [v14 isRangeSubSuperscript];
  if (((isRangeSubSuperscript | [v14 isBaseSubSuperscript]) & 1) != 0 && v11 < v13 - 1)
  {
    v16 = v14;
    if (isRangeSubSuperscript)
    {
      v17 = @"segment.range.firstchild.prefix";
    }

    else
    {
      v17 = @"segment.base.firstchild.prefix";
    }

    v18 = @"segment.base.firstchild.suffix";
    if (isRangeSubSuperscript)
    {
      v18 = @"segment.range.firstchild.suffix";
    }

    v19 = @"segment.base.secondchild.prefix";
    if (isRangeSubSuperscript)
    {
      v19 = @"segment.range.secondchild.prefix";
    }

    v46 = v19;
    v20 = @"segment.base.secondchild.suffix";
    if (isRangeSubSuperscript)
    {
      v20 = @"segment.range.secondchild.suffix";
    }

    v50 = v20;
    selfCopy = self;
    depthCopy = depth;
    v22 = children;
    v23 = v18;
    v24 = v17;
    v25 = [positionCopy indexPathByAddingIndex:v11];
    v48 = v16;
    v26 = [v16 speakableSegmentsWithSpeakingStyle:style upToDepth:depthCopy treePosition:v25 localizablePrefix:v24 localizableSuffix:v23];

    v27 = v11 + 1;
    *index = v11 + 1;
    v49 = v22;
    v28 = [v22 objectAtIndex:v11 + 1];
    v29 = v46;
    v30 = v50;
    v51 = positionCopy;
    v31 = [positionCopy indexPathByAddingIndex:v27];
    v47 = v29;
    v45 = v30;
    v32 = [v28 speakableSegmentsWithSpeakingStyle:style upToDepth:depthCopy treePosition:v31 localizablePrefix:v29 localizableSuffix:v30];

    array = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v34 = [(SCRCMathExpression *)selfCopy localizedSegmentOrderingForKey:@"RangeAndExpressionAfterRange"];
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

          [array addObjectsFromArray:v41];
        }

        v36 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v36);
    }

    children = v49;
    positionCopy = v51;
    v14 = v48;
  }

  else
  {
    v52.receiver = self;
    v52.super_class = SCRCMathRowExpression;
    array = [(SCRCMathArrayExpression *)&v52 childSpeakableSegmentsWithSpeakingStyle:style upToDepth:depth parentTreePosition:positionCopy childIndex:index];
  }

  return array;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  children = [(SCRCMathArrayExpression *)self children];
  v7 = [children count];
  selfCopy = self;
  _indexesOfCharactersInWords = [(SCRCMathRowExpression *)self _indexesOfCharactersInWords];
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  if (v7)
  {
    v9 = 0;
    v10 = v7 - 1;
    v27 = allowedCopy;
    v25 = v7 - 1;
    v26 = children;
    do
    {
      v11 = [children objectAtIndex:v9];
      v12 = [v11 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy isPartOfWord:{objc_msgSend(_indexesOfCharactersInWords, "containsIndex:", v9)}];
      isRangeSubSuperscript = [v11 isRangeSubSuperscript];
      if (((isRangeSubSuperscript | [v11 isBaseSubSuperscript]) & 1) != 0 && v9 < v10)
      {
        v14 = [children objectAtIndex:++v9];
        [v14 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy isPartOfWord:{objc_msgSend(_indexesOfCharactersInWords, "containsIndex:", v9)}];
        v15 = _indexesOfCharactersInWords;
        v17 = v16 = v7;
        v18 = MEMORY[0x277CCA898];
        if (isRangeSubSuperscript)
        {
          v19 = @"range.sub.superscript.with.next.child.formatter";
        }

        else
        {
          v19 = @"base.sub.superscript.with.next.child.formatter";
        }

        v20 = [(SCRCMathExpression *)selfCopy localizedStringForKey:v19];
        v21 = [v18 scrcStringWithFormat:v20, v12, v17];

        v7 = v16;
        _indexesOfCharactersInWords = v15;

        v12 = v21;
        v10 = v25;
        children = v26;
        allowedCopy = v27;
      }

      if ([v12 length])
      {
        [scrcString appendAttributedString:v12];
        if (v9 < v10 && ([_indexesOfCharactersInWords containsIndex:v9] & 1) == 0)
        {
          if (allowedCopy && [v12 scrcContainsPause])
          {
            scrcPauseString = [MEMORY[0x277CCA898] scrcPauseString];
          }

          else
          {
            scrcPauseString = [MEMORY[0x277CCA898] scrcSpaceString];
          }

          v23 = scrcPauseString;
          [scrcString appendAttributedString:scrcPauseString];
        }
      }

      ++v9;
    }

    while (v9 < v7);
  }

  return scrcString;
}

- (void)_addSpacingAndChild:(id)child toResult:(id)result nextChild:(id)nextChild previousChild:(id)previousChild numberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  childCopy = child;
  resultCopy = result;
  nextChildCopy = nextChild;
  previousChildCopy = previousChild;
  positionCopy = position;
  if (([childCopy isFunctionName] & 1) == 0 && !objc_msgSend(childCopy, "isWordOrAbbreviation"))
  {
    if ([childCopy isEllipsis])
    {
      isOperationSymbol = [previousChildCopy isOperationSymbol];
      isOperationSymbol2 = [nextChildCopy isOperationSymbol];
      if ((isOperationSymbol & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!previousChildCopy)
  {
    if (nextChildCopy)
    {
      isOperationSymbol2 = [nextChildCopy beginsWithSpace] ^ 1;
      goto LABEL_15;
    }

LABEL_12:
    isOperationSymbol2 = 0;
    goto LABEL_15;
  }

  endsWithSpace = [previousChildCopy endsWithSpace];
  v18 = endsWithSpace;
  if (nextChildCopy)
  {
    isOperationSymbol2 = [nextChildCopy beginsWithSpace] ^ 1;
    if (v18)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  isOperationSymbol2 = 0;
  if ((endsWithSpace & 1) == 0)
  {
LABEL_14:
    v21 = MEMORY[0x277CCA898];
    indexPathByRemovingLastIndex = [positionCopy indexPathByRemovingLastIndex];
    v23 = [v21 scrcStringWithString:@" " treePosition:indexPathByRemovingLastIndex];
    [resultCopy appendAttributedString:v23];
  }

LABEL_15:
  if ([previousChildCopy isNumber] && objc_msgSend(childCopy, "isSimpleNumericalFraction"))
  {
    v24 = [childCopy dollarCodeDescriptionAsMixedNumberFractionWithTreePosition:positionCopy];
    goto LABEL_37;
  }

  if ([childCopy isFenceDelimiter] && (objc_msgSend(nextChildCopy, "isMultiRowTable") & 1) != 0 || objc_msgSend(previousChildCopy, "isMultiRowTable") && (objc_msgSend(childCopy, "isFenceDelimiter") & 1) != 0)
  {
LABEL_31:
    if (!isOperationSymbol2)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![childCopy isMultiRowTable])
  {
    v24 = [childCopy dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:positionCopy];
LABEL_37:
    v33 = v24;
    if (v24)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ([previousChildCopy isFenceDelimiter])
  {
    v25 = previousChildCopy;
  }

  else
  {
    v25 = 0;
  }

  v37 = v25;
  if ([nextChildCopy isFenceDelimiter])
  {
    v26 = nextChildCopy;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = [positionCopy indexAtPosition:{objc_msgSend(positionCopy, "length") - 1}];
  indexPathByRemovingLastIndex2 = [positionCopy indexPathByRemovingLastIndex];
  v30 = [indexPathByRemovingLastIndex2 indexPathByAddingIndex:v28 - 1];

  indexPathByRemovingLastIndex3 = [positionCopy indexPathByRemovingLastIndex];
  v32 = [indexPathByRemovingLastIndex3 indexPathByAddingIndex:v28 + 1];

  v33 = [childCopy dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:positionCopy openOperator:v37 openOperatorTreePosition:v30 closeOperator:v27 closeOperatorTreePosition:v32];

  if (!v33)
  {
LABEL_30:
    NSLog(&cfstr_AxVoiceoverMat_0.isa, childCopy);
    goto LABEL_31;
  }

LABEL_38:
  [resultCopy appendAttributedString:v33];

  if (isOperationSymbol2)
  {
LABEL_32:
    v34 = MEMORY[0x277CCA898];
    indexPathByRemovingLastIndex4 = [positionCopy indexPathByRemovingLastIndex];
    v36 = [v34 scrcStringWithString:@" " treePosition:indexPathByRemovingLastIndex4];
    [resultCopy appendAttributedString:v36];
  }

LABEL_33:
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  radicalsCopy = radicals;
  positionCopy = position;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  children = [(SCRCMathArrayExpression *)self children];
  v7 = [children count];

  if (v7)
  {
    children2 = [(SCRCMathArrayExpression *)self children];
    v9 = [children2 objectAtIndex:0];

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
        children3 = [(SCRCMathArrayExpression *)self children];
        v13 = v10 + 1;
        v14 = [children3 objectAtIndex:v10 + 1];
      }

      v15 = [positionCopy indexPathByAddingIndex:{v10, radicalsCopy}];
      [(SCRCMathRowExpression *)self _addSpacingAndChild:v9 toResult:scrcString nextChild:v14 previousChild:v11 numberOfOuterRadicals:radicalsCopy treePosition:v15];

      v16 = v9;
      v10 = v13;
      v9 = v14;
      v11 = v16;
    }

    while (v13 != v7);
  }

  return scrcString;
}

- (id)speakableSummary
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  children = [(SCRCMathArrayExpression *)self children];
  v4 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v4)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v22;
  isTermSeparator = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = isTermSeparator;
      if (*v22 != v7)
      {
        objc_enumerationMutation(children);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      isTermSeparator = [v11 isTermSeparator];
      if ((isTermSeparator & 1) == 0 && ((v10 ^ 1) & 1) == 0)
      {
        v6 += [v11 isTermSeparator] ^ 1;
      }
    }

    v5 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v5);

  if (v6 >= 4)
  {
    v12 = MEMORY[0x277CCACA8];
    children = [(SCRCMathExpression *)self localizedStringForKey:@"row.summary.formatter"];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v14 = [(SCRCMathExpression *)self localizedStringForNumber:v13];
    v15 = [v12 stringWithFormat:children, v14];

LABEL_14:
    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:
  v20.receiver = self;
  v20.super_class = SCRCMathRowExpression;
  speakableSummary = [(SCRCMathExpression *)&v20 speakableSummary];
  if (!(v15 | speakableSummary))
  {
    v18 = 0;
    goto LABEL_23;
  }

  string = [MEMORY[0x277CCAB68] string];
  v18 = string;
  if (v15)
  {
    [string appendString:v15];
    if (!speakableSummary)
    {
      goto LABEL_23;
    }

    [v18 appendString:{@", "}];
  }

  else if (!speakableSummary)
  {
    goto LABEL_23;
  }

  [v18 appendString:speakableSummary];
LABEL_23:

  return v18;
}

- (id)latexDescriptionInMathMode:(BOOL)mode
{
  v23 = *MEMORY[0x277D85DE8];
  children = [(SCRCMathArrayExpression *)self children];
  if (![children count])
  {
    string = 0;
    goto LABEL_25;
  }

  string = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = children;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {

    goto LABEL_25;
  }

  v8 = v7;
  v17 = children;
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
        if (!mode)
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

          [string appendString:@"$"];
          v9 = v15;
        }

LABEL_15:
        if ((v11 & 1) == 0)
        {
          [string appendString:@" "];
        }

        [string appendString:v14];
        v11 = 0;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  if (v9)
  {
    [string appendString:@"$"];
  }

  children = v17;
LABEL_25:

  return string;
}

@end