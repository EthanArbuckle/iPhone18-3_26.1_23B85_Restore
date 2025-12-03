@interface WBSPasswordRule
+ (id)ruleWithType:(int64_t)type value:(id)value;
- (WBSPasswordRule)initWithPasswordRuleType:(int64_t)type value:(id)value;
@end

@implementation WBSPasswordRule

+ (id)ruleWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v7 = [[self alloc] initWithPasswordRuleType:type value:valueCopy];

  return v7;
}

- (WBSPasswordRule)initWithPasswordRuleType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = WBSPasswordRule;
  v8 = [(WBSPasswordRule *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_value, value);
    v10 = v9;
  }

  return v9;
}

@end