@interface SXViewLocationConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXViewLocationConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  viewingLocation = [context viewingLocation];
  viewLocation = [conditionCopy viewLocation];
  if (viewLocation)
  {
    v8 = @"article";
    if (viewingLocation == 3)
    {
      v8 = @"issue_table_of_contents";
    }

    if (viewingLocation == 2)
    {
      v9 = @"issue";
    }

    else
    {
      v9 = v8;
    }

    viewLocation2 = [conditionCopy viewLocation];
    v11 = [(__CFString *)v9 caseInsensitiveCompare:viewLocation2]== 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end