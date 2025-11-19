@interface SBFKeyWindowStack
@end

@implementation SBFKeyWindowStack

uint64_t __36___SBFKeyWindowStack_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_SBFKeyWindowStack);
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __60___SBFKeyWindowStack_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 16) array];
  [v1 appendArraySection:v2 withName:@"stack" skipIfEmpty:0];
}

@end