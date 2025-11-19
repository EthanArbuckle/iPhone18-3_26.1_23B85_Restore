@interface SCRCMathTableRowExpression
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4;
@end

@implementation SCRCMathTableRowExpression

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)a3 treePosition:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CCAB48] scrcString];
  v8 = [(SCRCMathArrayExpression *)self children];
  v9 = [v8 count];

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [(SCRCMathArrayExpression *)self children];
      v12 = [v11 objectAtIndex:i];

      if (i)
      {
        v13 = [MEMORY[0x277CCA898] scrcStringWithString:@" " treePosition:v6];
        [v7 appendAttributedString:v13];
      }

      v14 = [v6 indexPathByAddingIndex:i];
      v15 = [v12 dollarCodeDescriptionWithNumberOfOuterRadicals:a3 treePosition:v14];
      [v7 appendAttributedString:v15];
    }
  }

  return v7;
}

@end