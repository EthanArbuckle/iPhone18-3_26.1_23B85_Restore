@interface SCRCMathRadicalExpression
- (BOOL)_isCubeRoot;
- (BOOL)_isSquareRoot;
- (SCRCMathRadicalExpression)initWithDictionary:(id)a3;
- (id)description;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4;
- (id)latexMathModeDescription;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5;
- (id)subExpressions;
@end

@implementation SCRCMathRadicalExpression

- (SCRCMathRadicalExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCRCMathRadicalExpression;
  v5 = [(SCRCMathExpression *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMRadicandObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathRadicalExpression *)v5 setRadicand:v7];

    v8 = [v4 objectForKey:@"AXMRootIndexObject"];
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
  v4 = [(SCRCMathRadicalExpression *)self radicand];
  v5 = [(SCRCMathRadicalExpression *)self rootIndex];
  v6 = [v3 stringByAppendingFormat:@" - radicand %@, root index %@", v4, v5];

  return v6;
}

- (id)subExpressions
{
  v3 = [(SCRCMathRadicalExpression *)self rootIndex];
  v4 = [(SCRCMathRadicalExpression *)self radicand];
  v5 = [(SCRCMathExpression *)self arrayWithoutNilsFromFirstChild:v3 secondChild:v4 thirdChild:0];

  return v5;
}

- (BOOL)_isSquareRoot
{
  v3 = [(SCRCMathRadicalExpression *)self rootIndex];

  if (!v3)
  {
    return 1;
  }

  v4 = [(SCRCMathRadicalExpression *)self rootIndex];
  if ([v4 isInteger])
  {
    v5 = [(SCRCMathRadicalExpression *)self rootIndex];
    v6 = [v5 integerValue] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isCubeRoot
{
  v3 = [(SCRCMathRadicalExpression *)self rootIndex];
  if ([v3 isInteger])
  {
    v4 = [(SCRCMathRadicalExpression *)self rootIndex];
    v5 = [v4 integerValue] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCRCMathRadicalExpression *)self radicand];
  v8 = [v7 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];

  if ([(SCRCMathRadicalExpression *)self _isSquareRoot])
  {
    v9 = MEMORY[0x277CCA898];
    v10 = [(SCRCMathExpression *)self localizedStringForKey:@"square.root.formatter"];
    [v9 scrcStringWithFormat:v10, v8];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  v11 = [(SCRCMathRadicalExpression *)self _isCubeRoot];
  v12 = MEMORY[0x277CCA898];
  if (v11)
  {
    v10 = [(SCRCMathExpression *)self localizedStringForKey:@"cube.root.formatter"];
    [v12 scrcStringWithFormat:v10, v8];
    goto LABEL_5;
  }

  v10 = [(SCRCMathExpression *)self localizedStringForKey:@"nth.root.formatter"];
  v14 = [(SCRCMathRadicalExpression *)self rootIndex];
  v15 = [v14 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];
  v13 = [v12 scrcStringWithFormat:v10, v15, v8];

LABEL_7:

  return v13;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (!a4)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v10 = a4 - 1;
  if (a4 == 1)
  {
    v37.receiver = self;
    v37.super_class = SCRCMathRadicalExpression;
    v11 = [(SCRCMathExpression *)&v37 speakableSegmentsWithSpeakingStyle:a3 upToDepth:1 treePosition:v8];
    goto LABEL_22;
  }

  v12 = [v8 indexPathByAddingIndex:0];
  if ([(SCRCMathRadicalExpression *)self _isSquareRoot])
  {
    v13 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.square.root.index" treePosition:v12, v12];
    v40[0] = v13;
    v14 = MEMORY[0x277CBEA60];
    v15 = v40;
  }

  else
  {
    if (![(SCRCMathRadicalExpression *)self _isCubeRoot])
    {
      v13 = [(SCRCMathRadicalExpression *)self rootIndex];
      v16 = [v13 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v10 treePosition:v12 localizablePrefix:@"segment.nth.root.index.prefix" localizableSuffix:@"segment.nth.root.index.suffix"];
      goto LABEL_11;
    }

    v13 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"segment.cube.root.index" treePosition:v12];
    v39 = v13;
    v14 = MEMORY[0x277CBEA60];
    v15 = &v39;
  }

  v16 = [v14 arrayWithObjects:v15 count:1];
LABEL_11:
  v17 = v16;

  v18 = [(SCRCMathRadicalExpression *)self radicand];
  v32 = v9;
  v19 = [v9 indexPathByAddingIndex:1];
  v20 = [v18 speakableSegmentsWithSpeakingStyle:a3 upToDepth:v10 treePosition:v19 localizablePrefix:@"segment.radicand.prefix" localizableSuffix:@"segment.radicand.suffix"];

  v11 = [MEMORY[0x277CBEB18] array];
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

        [v11 addObjectsFromArray:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v23);
  }

  v9 = v32;
LABEL_22:

  return v11;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CCAB48] scrcString];
  v8 = [(SCRCMathRadicalExpression *)self rootIndex];

  v9 = v8 == 0;
  if (v8)
  {
    v10 = @"ixrte";
  }

  else
  {
    v10 = @"sqrte";
  }

  if (v9)
  {
    v11 = @"sqrts";
  }

  else
  {
    v11 = @"ixrts";
  }

  if (a3)
  {
    v11 = [(__CFString *)v11 stringByAppendingFormat:@"%lu", a3];
    v10 = [(__CFString *)v10 stringByAppendingFormat:@"%lu", a3];
  }

  v12 = [(SCRCMathRadicalExpression *)self rootIndex];

  if (v12)
  {
    v13 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v11 treePosition:v6];
    [v7 appendAttributedString:v13];

    v14 = [(SCRCMathRadicalExpression *)self rootIndex];
    v15 = [v6 indexPathByAddingIndex:0];
    v16 = [v14 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 + 1 treePosition:v15];
    [v7 appendAttributedString:v16];

    v17 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"ixrtd" treePosition:v6];
    [v7 appendAttributedString:v17];

    v18 = [(SCRCMathRadicalExpression *)self radicand];
    v19 = [v6 indexPathByAddingIndex:1];
    v20 = [v18 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 + 1 treePosition:v19];
    [v7 appendAttributedString:v20];

    v21 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v10 treePosition:v6];
    [v7 appendAttributedString:v21];
  }

  else
  {
    v21 = [v6 indexPathByAddingIndex:0];
    v22 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v11 treePosition:v21];
    [v7 appendAttributedString:v22];

    v23 = [(SCRCMathRadicalExpression *)self radicand];
    v24 = [v6 indexPathByAddingIndex:1];
    v25 = [v23 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 + 1 treePosition:v24];
    [v7 appendAttributedString:v25];

    v26 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:v10 treePosition:v21];
    [v7 appendAttributedString:v26];
  }

  return v7;
}

- (id)mathMLString
{
  v3 = [(SCRCMathRadicalExpression *)self rootIndex];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(SCRCMathRadicalExpression *)self radicand];
    v6 = [v5 mathMLString];
    v7 = [(SCRCMathRadicalExpression *)self rootIndex];
    v8 = [v7 mathMLString];
    v9 = [v4 stringWithFormat:@"%@%@", v6, v8];
    v10 = [v9 stringWrappedInMathMLTag:@"mroot"];
  }

  else
  {
    v5 = [(SCRCMathRadicalExpression *)self radicand];
    v6 = [v5 mathMLString];
    v10 = [v6 stringWrappedInMathMLTag:@"msqrt"];
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