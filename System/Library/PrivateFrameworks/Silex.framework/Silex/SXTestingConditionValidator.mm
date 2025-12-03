@interface SXTestingConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXTestingConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  contextCopy = context;
  testing = [condition testing];
  if (testing == 2)
  {
    v7 = [contextCopy testing] ^ 1;
  }

  else if (testing == 1)
  {
    LOBYTE(v7) = [contextCopy testing];
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end