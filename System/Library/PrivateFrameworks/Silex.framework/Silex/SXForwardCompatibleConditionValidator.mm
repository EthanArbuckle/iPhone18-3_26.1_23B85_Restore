@interface SXForwardCompatibleConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXForwardCompatibleConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = [a3 JSONRepresentation];
  v6 = [v5 allKeys];
  v7 = [v4 setWithArray:v6];

  v8 = SXConditionTypes();
  [v7 minusSet:v8];

  LOBYTE(v8) = [v7 count] == 0;
  return v8;
}

@end