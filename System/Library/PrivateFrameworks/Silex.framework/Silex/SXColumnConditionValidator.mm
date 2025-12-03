@interface SXColumnConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXColumnConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  numberOfColumns = [context numberOfColumns];
  minColumns = [conditionCopy minColumns];
  maxColumns = [conditionCopy maxColumns];

  if (minColumns - 1 <= 0xFFFFFFFFFFFFFFFDLL && minColumns > numberOfColumns)
  {
    return 0;
  }

  return maxColumns + 1 < 2 || maxColumns >= numberOfColumns;
}

@end