@interface RETrueConstantCondition
@end

@implementation RETrueConstantCondition

uint64_t __42___RETrueConstantCondition_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Condition;
  sharedInstance_Condition = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end