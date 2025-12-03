@interface PLLibraryScopeRuleInterpreter
- (id)evaluateObjects:(id)objects forCondition:(id)condition;
@end

@implementation PLLibraryScopeRuleInterpreter

- (id)evaluateObjects:(id)objects forCondition:(id)condition
{
  objectsCopy = objects;
  conditionCopy = condition;
  selfCopy = self;
  v9 = PLAbstractMethodException();
  objc_exception_throw(v9);
}

@end