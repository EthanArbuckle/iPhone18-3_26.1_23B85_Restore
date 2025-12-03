@interface SCRCMathTableRowExpression
- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position;
@end

@implementation SCRCMathTableRowExpression

- (id)dollarCodeDescriptionWithNumberOfOuterRadicals:(unint64_t)radicals treePosition:(id)position
{
  positionCopy = position;
  scrcString = [MEMORY[0x277CCAB48] scrcString];
  children = [(SCRCMathArrayExpression *)self children];
  v9 = [children count];

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      children2 = [(SCRCMathArrayExpression *)self children];
      v12 = [children2 objectAtIndex:i];

      if (i)
      {
        v13 = [MEMORY[0x277CCA898] scrcStringWithString:@" " treePosition:positionCopy];
        [scrcString appendAttributedString:v13];
      }

      v14 = [positionCopy indexPathByAddingIndex:i];
      v15 = [v12 dollarCodeDescriptionWithNumberOfOuterRadicals:radicals treePosition:v14];
      [scrcString appendAttributedString:v15];
    }
  }

  return scrcString;
}

@end