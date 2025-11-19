@interface UISceneSessionDescriptionWithMultilinePrefix
@end

@implementation UISceneSessionDescriptionWithMultilinePrefix

void ___UISceneSessionDescriptionWithMultilinePrefix_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UISceneSessionDescriptionWithMultilinePrefix_block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v4];
}

void ___UISceneSessionDescriptionWithMultilinePrefix_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) configuration];
  v2 = [v4 succinctDescription];
  v3 = [v1 appendObject:v2 withName:@"configuration"];
}

@end