@interface RETrueConstantComparisonCondition
@end

@implementation RETrueConstantComparisonCondition

uint64_t __52___RETrueConstantComparisonCondition_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Condition_0;
  sharedInstance_Condition_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end