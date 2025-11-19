@interface SCRCMathTableExpression
- (BOOL)isMultiRowTable;
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4 openOperator:(id)a5 openOperatorTreePosition:(id)a6 closeOperator:(id)a7 closeOperatorTreePosition:(id)a8;
- (id)latexDescriptionInMathMode:(BOOL)a3;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5;
- (unint64_t)_numberOfColumns;
- (unint64_t)numberOfTables;
@end

@implementation SCRCMathTableExpression

- (BOOL)isMultiRowTable
{
  v2 = [(SCRCMathArrayExpression *)self children];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCRCMathExpression *)self localizedStringForKey:@"math.table.formatter"];
  v11.receiver = self;
  v11.super_class = SCRCMathTableExpression;
  v8 = [(SCRCMathArrayExpression *)&v11 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];
  v9 = [MEMORY[0x277CCA898] scrcStringWithFormat:v7, v8];

  return v9;
}

- (id)speakableSegmentsWithSpeakingStyle:(int64_t)a3 upToDepth:(unint64_t)a4 treePosition:(id)a5
{
  v9.receiver = self;
  v9.super_class = SCRCMathTableExpression;
  v6 = [(SCRCMathArrayExpression *)&v9 speakableSegmentsWithSpeakingStyle:a3 upToDepth:a4 treePosition:a5];
  v7 = [(SCRCMathExpression *)self speakableSegments:v6 withLocalizablePrefix:@"segment.table.prefix" localizableSuffix:@"segment.table.suffix"];

  return v7;
}

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4 openOperator:(id)a5 openOperatorTreePosition:(id)a6 closeOperator:(id)a7 closeOperatorTreePosition:(id)a8
{
  v14 = a4;
  v15 = a5;
  v32 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [MEMORY[0x277CCAB48] scrcString];
  v34 = self;
  v19 = [(SCRCMathArrayExpression *)self children];
  v20 = [v19 count];

  v33 = v20;
  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = [(SCRCMathArrayExpression *)v34 children];
      v23 = [v22 objectAtIndex:v21];

      if (v21)
      {
        v24 = [MEMORY[0x277CCA898] scrcStringWithString:@"\n" treePosition:v14];
        [v18 appendAttributedString:v24];
      }

      if (v15)
      {
        v25 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"big" treePosition:v32];
        [v18 appendAttributedString:v25];

        v26 = [v15 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v32];
        [v18 appendAttributedString:v26];
      }

      v27 = [v14 indexPathByAddingIndex:v21];
      v28 = [v23 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v27];
      [v18 appendAttributedString:v28];

      if (v16)
      {
        v29 = [MEMORY[0x277CCA898] scrcStringWithDollarCode:@"big" treePosition:v17];
        [v18 appendAttributedString:v29];

        v30 = [v16 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v17];
        [v18 appendAttributedString:v30];
      }

      ++v21;
    }

    while (v33 != v21);
  }

  return v18;
}

- (unint64_t)_numberOfColumns
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SCRCMathArrayExpression *)self children];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) children];
        v9 = [v8 count];

        if (v9 > v5)
        {
          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)latexDescriptionInMathMode:(BOOL)a3
{
  v4 = [@"\\begin{tabular}{" mutableCopy];
  v5 = [(SCRCMathTableExpression *)self _numberOfColumns];
  if (v5)
  {
    v6 = v5;
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