@interface SCRCMathRadicalExpression
- (BOOL)_isCubeRoot;
- (BOOL)_isSquareRoot;
- (SCRCMathRadicalExpression)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (id)subExpressions;
@end

@implementation SCRCMathRadicalExpression

- (SCRCMathRadicalExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SCRCMathRadicalExpression;
  v5 = [(SCRCMathExpression *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMRadicandObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathRadicalExpression *)v5 setRadicand:v7];

    v8 = [dictionaryCopy objectForKey:@"AXMRootIndexObject"];
    v9 = [SCRCMathExpression mathExpressionWithDictionary:v8];
    [(SCRCMathRadicalExpression *)v5 setRootIndex:v9];
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SCRCMathRadicalExpression;
  v3 = [(SCRCMathRadicalExpression *)&v8 description];
  radicand = [(SCRCMathRadicalExpression *)self radicand];
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];
  v6 = [v3 stringByAppendingFormat:@" - radicand %@, root index %@", radicand, rootIndex];

  return v6;
}

- (id)subExpressions
{
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];
  radicand = [(SCRCMathRadicalExpression *)self radicand];
  v5 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:rootIndex secondChild:radicand thirdChild:0];

  return v5;
}

- (BOOL)_isSquareRoot
{
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];

  if (!rootIndex)
  {
    return 1;
  }

  rootIndex2 = [(SCRCMathRadicalExpression *)self rootIndex];
  if ([rootIndex2 isInteger])
  {
    rootIndex3 = [(SCRCMathRadicalExpression *)self rootIndex];
    v6 = [rootIndex3 integerValue] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isCubeRoot
{
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];
  if ([rootIndex isInteger])
  {
    rootIndex2 = [(SCRCMathRadicalExpression *)self rootIndex];
    v5 = [rootIndex2 integerValue] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  radicand = [(SCRCMathRadicalExpression *)self radicand];
  v8 = [radicand speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  if ([(SCRCMathRadicalExpression *)self _isSquareRoot])
  {
    v9 = MEMORY[0x277CCA898];
    v10 = [(SCRCMathExpression *)self localizedStringForKey:@"square.root.formatter"];
    [v9 scrcStringWithFormat:v10, v8];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  _isCubeRoot = [(SCRCMathRadicalExpression *)self _isCubeRoot];
  v12 = MEMORY[0x277CCA898];
  if (_isCubeRoot)
  {
    v10 = [(SCRCMathExpression *)self localizedStringForKey:@"cube.root.formatter"];
    [v12 scrcStringWithFormat:v10, v8];
    goto LABEL_5;
  }

  v10 = [(SCRCMathExpression *)self localizedStringForKey:@"nth.root.formatter"];
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];
  v15 = [rootIndex speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
  v13 = [v12 scrcStringWithFormat:v10, v15, v8];

LABEL_7:

  return v13;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v40[1] = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v9 = positionCopy;
  if (!depth)
  {
    array = 0;
    goto LABEL_22;
  }

  v10 = depth - 1;
  if (depth == 1)
  {
    v37.receiver = self;
    v37.super_class = SCRCMathRadicalExpression;
    array = [(SCRCMathExpression *)&v37 speakableSegmentsWithSpeakingStyle:style upToDepth:1 treePosition:positionCopy];
    goto LABEL_22;
  }

  v12 = [positionCopy indexPathByAddingIndex:0];
  if ([(SCRCMathRadicalExpression *)self _isSquareRoot])
  {
    rootIndex = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.square.root.index" treePosition:v12, v12];
    v40[0] = rootIndex;
    v14 = MEMORY[0x277CBEA60];
    v15 = v40;
  }

  else
  {
    if (![(SCRCMathRadicalExpression *)self _isCubeRoot])
    {
      rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];
      v16 = [rootIndex speakableSegmentsWithSpeakingStyle:style upToDepth:v10 treePosition:v12 localizablePrefix:@"segment.nth.root.index.prefix" localizableSuffix:@"segment.nth.root.index.suffix"];
      goto LABEL_11;
    }

    rootIndex = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.cube.root.index" treePosition:v12];
    v39 = rootIndex;
    v14 = MEMORY[0x277CBEA60];
    v15 = &v39;
  }

  v16 = [v14 arrayWithObjects:v15 count:1];
LABEL_11:
  v17 = v16;

  radicand = [(SCRCMathRadicalExpression *)self radicand];
  v32 = v9;
  v19 = [v9 indexPathByAddingIndex:1];
  v20 = [radicand speakableSegmentsWithSpeakingStyle:style upToDepth:v10 treePosition:v19 localizablePrefix:@"segment.radicand.prefix" localizableSuffix:@"segment.radicand.suffix"];

  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [(SCRCMathExpression *)self localizedSegmentOrderingForKey:@"Radical"];
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        v27 = [v26 isEqualToString:@"radicand"];
        v28 = v20;
        if ((v27 & 1) == 0)
        {
          v29 = [v26 isEqualToString:@"root index"];
          v28 = v17;
          if (!v29)
          {
            continue;
          }
        }

        [array addObjectsFromArray:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v23);
  }

  v9 = v32;
LABEL_22:

  return array;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];

  v9 = rootIndex == 0;
  if (rootIndex)
  {
    radicals2 = @"ixrte";
  }

  else
  {
    radicals2 = @"sqrte";
  }

  if (v9)
  {
    radicals = @"sqrts";
  }

  else
  {
    radicals = @"ixrts";
  }

  if (radicals)
  {
    radicals = [(__CFString *)radicals stringByAppendingFormat:@"%lu", radicals];
    radicals2 = [(__CFString *)radicals2 stringByAppendingFormat:@"%lu", radicals];
  }

  rootIndex2 = [(SCRCMathRadicalExpression *)self rootIndex];

  if (rootIndex2)
  {
    v13 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:radicals treePosition:positionCopy];
    [scrcString appendAttributedString:v13];

    rootIndex3 = [(SCRCMathRadicalExpression *)self rootIndex];
    v15 = [positionCopy indexPathByAddingIndex:0];
    v16 = [rootIndex3 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals + 1 treePosition:v15];
    [scrcString appendAttributedString:v16];

    v17 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"ixrtd" treePosition:positionCopy];
    [scrcString appendAttributedString:v17];

    radicand = [(SCRCMathRadicalExpression *)self radicand];
    v19 = [positionCopy indexPathByAddingIndex:1];
    v20 = [radicand dollarCodeDescriptionWithNumberOfOuterRadicals:radicals + 1 treePosition:v19];
    [scrcString appendAttributedString:v20];

    v21 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:radicals2 treePosition:positionCopy];
    [scrcString appendAttributedString:v21];
  }

  else
  {
    v21 = [positionCopy indexPathByAddingIndex:0];
    v22 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:radicals treePosition:v21];
    [scrcString appendAttributedString:v22];

    radicand2 = [(SCRCMathRadicalExpression *)self radicand];
    v24 = [positionCopy indexPathByAddingIndex:1];
    v25 = [radicand2 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals + 1 treePosition:v24];
    [scrcString appendAttributedString:v25];

    v26 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:radicals2 treePosition:v21];
    [scrcString appendAttributedString:v26];
  }

  return scrcString;
}

- (id)mathMLString
{
  rootIndex = [(SCRCMathRadicalExpression *)self rootIndex];

  if (rootIndex)
  {
    v4 = MEMORY[0x277CCACA8];
    radicand = [(SCRCMathRadicalExpression *)self radicand];
    mathMLString = [radicand mathMLString];
    rootIndex2 = [(SCRCMathRadicalExpression *)self rootIndex];
    mathMLString2 = [rootIndex2 mathMLString];
    v9 = [v4 stringWithFormat:@"%@%@", mathMLString, mathMLString2];
    v10 = [v9 stringWrappedInMathMLTag:@"mroot"];
  }

  else
  {
    radicand = [(SCRCMathRadicalExpression *)self radicand];
    mathMLString = [radicand mathMLString];
    v10 = [mathMLString stringWrappedInMathMLTag:@"msqrt"];
  }

  return v10;
}

- (id)latexMathModeDescription
{
  v3 = [@"\\sqrt" mutableCopy];
  rootIndex = self->_rootIndex;
  if (rootIndex)
  {
    v5 = [(SCRCMathExpression *)rootIndex latexDescriptionInMathMode:1];
    [v3 appendFormat:@"[%@]", v5];
  }

  radicand = self->_radicand;
  if (radicand)
  {
    v7 = [(SCRCMathExpression *)radicand latexDescriptionInMathMode:1];
    [v3 appendFormat:@"{%@}", v7];
  }

  return v3;
}

@end