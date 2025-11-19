@interface UIPhysicalButtonConfiguration
@end

@implementation UIPhysicalButtonConfiguration

void __72___UIPhysicalButtonConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___UIPhysicalButtonConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __72___UIPhysicalButtonConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v10 = _NSStringFromUIPhysicalButton(*(*(a1 + 32) + 16));
  [*(a1 + 40) appendString:v10 withName:@"button"];
  v2 = _NSStringFromUIPhysicalButtonBehavior(*(*(a1 + 32) + 24));
  [*(a1 + 40) appendString:v2 withName:@"behavior"];
  v3 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 32) withName:@"behaviorOptions" skipIfNil:1];
  [*(a1 + 40) appendString:*(*(a1 + 32) + 56) withName:@"name" skipIfEmpty:1];
  v4 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 8) withName:@"wantsSystemShellExclusivePriority" ifEqualTo:1];
  v5 = [*(a1 + 40) appendUInt64:*(*(a1 + 32) + 40) withName:@"generation"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"<%s: %p pid: %i>", class_getName(v7), *(*(a1 + 32) + 48), objc_msgSend(*(*(a1 + 32) + 48), "pid")];;
  v9 = [*(a1 + 40) appendObject:v8 withName:@"auditToken"];
}

@end