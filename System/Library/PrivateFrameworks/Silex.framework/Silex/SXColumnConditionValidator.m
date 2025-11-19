@interface SXColumnConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXColumnConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [a4 numberOfColumns];
  v7 = [v5 minColumns];
  v8 = [v5 maxColumns];

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && v7 > v6)
  {
    return 0;
  }

  return v8 + 1 < 2 || v8 >= v6;
}

@end