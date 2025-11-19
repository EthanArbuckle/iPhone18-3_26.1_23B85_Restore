@interface SBRoutingSwitcherModifierRouteToModifierContainingIndex
@end

@implementation SBRoutingSwitcherModifierRouteToModifierContainingIndex

id ___SBRoutingSwitcherModifierRouteToModifierContainingIndex_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKey:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(<%@: %p>: %lu)", objc_opt_class(), v7, v9];

  if ([v5 length])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v5, v10];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

@end