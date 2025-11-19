@interface UIPhysicalButtonAction
@end

@implementation UIPhysicalButtonAction

void __65___UIPhysicalButtonAction_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIPhysicalButtonAction_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __65___UIPhysicalButtonAction_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v19 = _NSStringFromUIPhysicalButton(*(*(a1 + 32) + 8));
  [*(a1 + 40) appendString:? withName:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _NSStringFromUIPhysicalButtonSource(v3);
    [*(a1 + 40) appendString:v4 withName:@"source"];

    v2 = *(a1 + 32);
  }

  v5 = _NSStringFromUIPhysicalButtonState(*(v2 + 24));
  [*(a1 + 40) appendString:v5 withName:@"state"];
  v6 = _NSStringFromUIPhysicalButtonBehavior(*(*(a1 + 32) + 32));
  [*(a1 + 40) appendString:v6 withName:@"behavior"];
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = [*(a1 + 40) appendObject:v8 withName:@"contact"];
    v7 = *(a1 + 32);
  }

  v10 = [*(a1 + 40) appendUnsignedInteger:*(v7 + 64) withName:@"stage"];
  v11 = [*(a1 + 40) appendUnsignedInteger:*(*(a1 + 32) + 72) withName:@"numberOfStages"];
  v12 = *(*(a1 + 32) + 80);
  if (v12 > 3)
  {
    v13 = &stru_1EFB14550;
  }

  else
  {
    v13 = off_1E71230F8[v12];
  }

  [*(a1 + 40) appendString:v13 withName:@"stagePhase"];
  v14 = [*(a1 + 40) appendFloat:@"normalizedForce" withName:3 decimalPrecision:*(*(a1 + 32) + 88)];
  v15 = [*(a1 + 40) appendFloat:@"normalizedForceVelocity" withName:3 decimalPrecision:*(*(a1 + 32) + 96)];
  v16 = [*(a1 + 40) appendFloat:@"releaseStageForceThreshold" withName:3 decimalPrecision:*(*(a1 + 32) + 104)];
  v17 = [*(a1 + 40) appendFloat:@"pressedStageForceThreshold" withName:3 decimalPrecision:*(*(a1 + 32) + 112)];
  v18 = [*(a1 + 40) appendFloat:@"nextStageForceThreshold" withName:3 decimalPrecision:*(*(a1 + 32) + 120)];
}

@end