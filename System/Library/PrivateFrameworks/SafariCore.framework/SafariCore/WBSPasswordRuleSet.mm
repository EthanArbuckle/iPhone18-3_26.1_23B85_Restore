@interface WBSPasswordRuleSet
+ (id)ruleSetWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5;
+ (id)ruleSetWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5 minLengthRule:(id)a6 maxLengthRule:(id)a7;
- (WBSPasswordRuleSet)initWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5 minLengthRule:(id)a6 maxLengthRule:(id)a7;
@end

@implementation WBSPasswordRuleSet

+ (id)ruleSetWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithAllowedRule:v10 requiredRules:v9 maxConsecutiveRule:v8 minLengthRule:0 maxLengthRule:0];

  return v11;
}

+ (id)ruleSetWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5 minLengthRule:(id)a6 maxLengthRule:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithAllowedRule:v16 requiredRules:v15 maxConsecutiveRule:v14 minLengthRule:v13 maxLengthRule:v12];

  return v17;
}

- (WBSPasswordRuleSet)initWithAllowedRule:(id)a3 requiredRules:(id)a4 maxConsecutiveRule:(id)a5 minLengthRule:(id)a6 maxLengthRule:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = WBSPasswordRuleSet;
  v18 = [(WBSPasswordRuleSet *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_allowedRule, a3);
    v20 = [v14 copy];
    requiredRules = v19->_requiredRules;
    v19->_requiredRules = v20;

    objc_storeStrong(&v19->_maxConsecutiveRule, a5);
    objc_storeStrong(&v19->_minLengthRule, a6);
    objc_storeStrong(&v19->_maxLengthRule, a7);
    v22 = v19;
  }

  return v19;
}

@end