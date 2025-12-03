@interface SCRCMathTableExpression
- (BOOL)isMultiRowTable;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position openOperator:(id)operator openOperatorTreePosition:(id)treePosition closeOperator:(id)closeOperator closeOperatorTreePosition:(id)operatorTreePosition;
- (id)latexDescriptionInMathMode:(BOOL)mode;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position;
- (unint64_t)_numberOfColumns;
- (unint64_t)numberOfTables;
@end

@implementation SCRCMathTableExpression

- (BOOL)isMultiRowTable
{
  children = [(SCRCMathArrayExpression *)self children];
  v3 = [children count] > 1;

  return v3;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v7 = [(SCRCMathExpression *)self localizedStringForKey:@"math.table.formatter"];
  v11.receiver = self;
  v11.super_class = SCRCMathTableExpression;
  v8 = [(SCRCMathArrayExpression *)&v11 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
  v9 = [MEMORY[0x277CCA898] scrcStringWithFormat:v7, v8];

  return v9;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)style upToDepth:(unint64_t)depth treePosition:(id)position
{
  v9.receiver = self;
  v9.super_class = SCRCMathTableExpression;
  v6 = [(SCRCMathArrayExpression *)&v9 speakableSegmentsWithSpeakingStyle:style upToDepth:depth treePosition:position];
  v7 = [(SCRCMathExpression *)self speakableSegments:v6 withLocalizablePrefix:@"segment.table.prefix" localizableSuffix:@"segment.table.suffix"];

  return v7;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position openOperator:(id)operator openOperatorTreePosition:(id)treePosition closeOperator:(id)closeOperator closeOperatorTreePosition:(id)operatorTreePosition
{
  positionCopy = position;
  operatorCopy = operator;
  treePositionCopy = treePosition;
  closeOperatorCopy = closeOperator;
  operatorTreePositionCopy = operatorTreePosition;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  selfCopy = self;
  children = [(SCRCMathArrayExpression *)self children];
  v20 = [children count];

  v33 = v20;
  if (v20)
  {
    v21 = 0;
    do
    {
      children2 = [(SCRCMathArrayExpression *)selfCopy children];
      v23 = [children2 objectAtIndex:v21];

      if (v21)
      {
        v24 = [MEMORY[0x277CCA898] scrcStringWithString:@"\n" treePosition:positionCopy];
        [scrcString appendAttributedString:v24];
      }

      if (operatorCopy)
      {
        v25 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"big" treePosition:treePositionCopy];
        [scrcString appendAttributedString:v25];

        v26 = [operatorCopy dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:treePositionCopy];
        [scrcString appendAttributedString:v26];
      }

      v27 = [positionCopy indexPathByAddingIndex:v21];
      v28 = [v23 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v27];
      [scrcString appendAttributedString:v28];

      if (closeOperatorCopy)
      {
        v29 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"big" treePosition:operatorTreePositionCopy];
        [scrcString appendAttributedString:v29];

        v30 = [closeOperatorCopy dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:operatorTreePositionCopy];
        [scrcString appendAttributedString:v30];
      }

      ++v21;
    }

    while (v33 != v21);
  }

  return scrcString;
}

- (unint64_t)_numberOfColumns
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(SCRCMathArrayExpression *)self children];
  v3 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(children);
        }

        children2 = [*(*(&v11 + 1) + 8 * i) children];
        v9 = [children2 count];

        if (v9 > v5)
        {
          v5 = v9;
        }
      }

      v4 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfTables
{
  v3.receiver = self;
  v3.super_class = SCRCMathTableExpression;
  result = [(SCRCMathExpression *)&v3 numberOfTables];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)latexDescriptionInMathMode:(BOOL)mode
{
  v4 = [@"\\begin{tabular}{" mutableCopy];
  _numberOfColumns = [(SCRCMathTableExpression *)self _numberOfColumns];
  if (_numberOfColumns)
  {
    v6 = _numberOfColumns;
    do
    {
      [v4 appendString:@"c"];
      --v6;
    }

    while (v6);
  }

  [v4 appendString:@"}\n"];
  v7 = [(SCRCMathExpression *)self latexDescriptionForChildrenJoinedByString:@" \\\\\n"];
  [v4 appendString:v7];

  [v4 appendString:@"\n\\end{tabular}"];

  return v4;
}

@end