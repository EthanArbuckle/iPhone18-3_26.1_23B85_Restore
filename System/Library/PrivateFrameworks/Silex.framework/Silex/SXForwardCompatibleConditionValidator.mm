@interface SXForwardCompatibleConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXForwardCompatibleConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  v4 = MEMORY[0x1E695DFA8];
  jSONRepresentation = [condition JSONRepresentation];
  allKeys = [jSONRepresentation allKeys];
  v7 = [v4 setWithArray:allKeys];

  v8 = SXConditionTypes();
  [v7 minusSet:v8];

  LOBYTE(v8) = [v7 count] == 0;
  return v8;
}

@end