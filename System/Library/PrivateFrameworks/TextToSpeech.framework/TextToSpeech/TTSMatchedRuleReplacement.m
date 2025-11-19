@interface TTSMatchedRuleReplacement
- (TTSRuleReplacement)ruleReplacement;
@end

@implementation TTSMatchedRuleReplacement

- (TTSRuleReplacement)ruleReplacement
{
  WeakRetained = objc_loadWeakRetained(&self->_ruleReplacement);

  return WeakRetained;
}

@end