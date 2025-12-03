@interface _REMLRuleExplanation
- (_REMLRuleExplanation)initWithRule:(id)rule;
@end

@implementation _REMLRuleExplanation

- (_REMLRuleExplanation)initWithRule:(id)rule
{
  ruleCopy = rule;
  v9.receiver = self;
  v9.super_class = _REMLRuleExplanation;
  v6 = [(_REMLRuleExplanation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, rule);
  }

  return v7;
}

@end