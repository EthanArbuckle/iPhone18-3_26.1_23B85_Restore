@interface UIChildRemoteContentRegistry
@end

@implementation UIChildRemoteContentRegistry

void __71___UIChildRemoteContentRegistry_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIChildRemoteContentRegistry_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:@"children" multilinePrefix:v3 block:v6];
}

void __71___UIChildRemoteContentRegistry_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) allObjects];
  v4 = [*(a1 + 32) activeMultilinePrefix];
  [v2 appendArraySection:v3 withName:@"childScenes" multilinePrefix:v4 skipIfEmpty:1 objectTransformer:&__block_literal_global_32_4];

  v5 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 24) allObjects];
  v6 = [*(a1 + 32) activeMultilinePrefix];
  [v5 appendArraySection:v7 withName:@"childViewServices" multilinePrefix:v6 skipIfEmpty:1 objectTransformer:&__block_literal_global_35_1];
}

@end