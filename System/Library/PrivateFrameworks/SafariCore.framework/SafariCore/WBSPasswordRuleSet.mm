@interface WBSPasswordRuleSet
+ (id)ruleSetWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule;
+ (id)ruleSetWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule minLengthRule:(id)lengthRule maxLengthRule:(id)maxLengthRule;
- (WBSPasswordRuleSet)initWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule minLengthRule:(id)lengthRule maxLengthRule:(id)maxLengthRule;
@end

@implementation WBSPasswordRuleSet

+ (id)ruleSetWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule
{
  consecutiveRuleCopy = consecutiveRule;
  rulesCopy = rules;
  ruleCopy = rule;
  v11 = [[self alloc] initWithAllowedRule:ruleCopy requiredRules:rulesCopy maxConsecutiveRule:consecutiveRuleCopy minLengthRule:0 maxLengthRule:0];

  return v11;
}

+ (id)ruleSetWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule minLengthRule:(id)lengthRule maxLengthRule:(id)maxLengthRule
{
  maxLengthRuleCopy = maxLengthRule;
  lengthRuleCopy = lengthRule;
  consecutiveRuleCopy = consecutiveRule;
  rulesCopy = rules;
  ruleCopy = rule;
  v17 = [[self alloc] initWithAllowedRule:ruleCopy requiredRules:rulesCopy maxConsecutiveRule:consecutiveRuleCopy minLengthRule:lengthRuleCopy maxLengthRule:maxLengthRuleCopy];

  return v17;
}

- (WBSPasswordRuleSet)initWithAllowedRule:(id)rule requiredRules:(id)rules maxConsecutiveRule:(id)consecutiveRule minLengthRule:(id)lengthRule maxLengthRule:(id)maxLengthRule
{
  ruleCopy = rule;
  rulesCopy = rules;
  consecutiveRuleCopy = consecutiveRule;
  lengthRuleCopy = lengthRule;
  maxLengthRuleCopy = maxLengthRule;
  v24.receiver = self;
  v24.super_class = WBSPasswordRuleSet;
  v18 = [(WBSPasswordRuleSet *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_allowedRule, rule);
    v20 = [rulesCopy copy];
    requiredRules = v19->_requiredRules;
    v19->_requiredRules = v20;

    objc_storeStrong(&v19->_maxConsecutiveRule, consecutiveRule);
    objc_storeStrong(&v19->_minLengthRule, lengthRule);
    objc_storeStrong(&v19->_maxLengthRule, maxLengthRule);
    v22 = v19;
  }

  return v19;
}

@end