@interface REFalseConstantCondition
@end

@implementation REFalseConstantCondition

uint64_t __43___REFalseConstantCondition_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Condition_10;
  sharedInstance_Condition_10 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end