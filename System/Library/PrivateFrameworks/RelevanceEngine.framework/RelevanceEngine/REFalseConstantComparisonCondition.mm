@interface REFalseConstantComparisonCondition
@end

@implementation REFalseConstantComparisonCondition

uint64_t __53___REFalseConstantComparisonCondition_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Condition_11;
  sharedInstance_Condition_11 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end