@interface SXViewLocationConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXViewLocationConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [a4 viewingLocation];
  v7 = [v5 viewLocation];
  if (v7)
  {
    v8 = @"article";
    if (v6 == 3)
    {
      v8 = @"issue_table_of_contents";
    }

    if (v6 == 2)
    {
      v9 = @"issue";
    }

    else
    {
      v9 = v8;
    }

    v10 = [v5 viewLocation];
    v11 = [(__CFString *)v9 caseInsensitiveCompare:v10]== 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end