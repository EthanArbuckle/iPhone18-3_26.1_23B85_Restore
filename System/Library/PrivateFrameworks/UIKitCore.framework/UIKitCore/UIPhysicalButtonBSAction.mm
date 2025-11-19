@interface UIPhysicalButtonBSAction
@end

@implementation UIPhysicalButtonBSAction

uint64_t __89___UIPhysicalButtonBSAction_initWithPhysicalButton_behavior_state_generation_completion___block_invoke(void *a1, void *a2)
{
  [a2 setButton:a1[5]];
  [a2 setSource:0];
  [a2 setBehavior:a1[6]];
  [a2 setState:a1[7]];
  [a2 setGeneration:a1[8]];
  v4 = a1[4];

  return [a2 setCompletionHandler:v4];
}

void __67___UIPhysicalButtonBSAction_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UIPhysicalButtonBSAction_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __67___UIPhysicalButtonBSAction_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v17 = _NSStringFromUIPhysicalButtonActionSetting(0);
  v16 = _NSStringFromUIPhysicalButton([*(a1 + 32) button]);
  [*(a1 + 40) appendString:v16 withName:v17];
  v2 = _NSStringFromUIPhysicalButtonActionSetting(4uLL);
  v3 = _NSStringFromUIPhysicalButtonSource([*(a1 + 32) source]);
  [*(a1 + 40) appendString:v3 withName:v2];
  v4 = _NSStringFromUIPhysicalButtonActionSetting(1uLL);
  v5 = _NSStringFromUIPhysicalButtonBehavior([*(a1 + 32) behavior]);
  [*(a1 + 40) appendString:v5 withName:v4];
  v6 = _NSStringFromUIPhysicalButtonActionSetting(3uLL);
  v7 = _NSStringFromUIPhysicalButtonState([*(a1 + 32) state]);
  [*(a1 + 40) appendString:v7 withName:v6];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) generation];
  v10 = _NSStringFromUIPhysicalButtonActionSetting(2uLL);
  v11 = [v8 appendUInt64:v9 withName:v10];

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) info];
  v14 = [v13 succinctDescription];
  v15 = [v12 appendObject:v14 withName:@"settings"];
}

@end