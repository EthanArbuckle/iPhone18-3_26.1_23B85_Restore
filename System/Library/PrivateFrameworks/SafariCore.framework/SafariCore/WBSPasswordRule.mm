@interface WBSPasswordRule
+ (id)ruleWithType:(int64_t)a3 value:(id)a4;
- (WBSPasswordRule)initWithPasswordRuleType:(int64_t)a3 value:(id)a4;
@end

@implementation WBSPasswordRule

+ (id)ruleWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithPasswordRuleType:a3 value:v6];

  return v7;
}

- (WBSPasswordRule)initWithPasswordRuleType:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WBSPasswordRule;
  v8 = [(WBSPasswordRule *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_value, a4);
    v10 = v9;
  }

  return v9;
}

@end