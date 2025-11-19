@interface UIWindowSceneStackRecord
@end

@implementation UIWindowSceneStackRecord

void __67___UIWindowSceneStackRecord_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UIWindowSceneStackRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __67___UIWindowSceneStackRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _NSStringFromUIKeyWindowEvaluationStrategy(*(*(a1 + 40) + 16));
  v4 = [v2 appendObject:v3 withName:@"evaluationStrategy"];

  v5 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 24) withName:@"lastPushedTime"];
  v6 = *(*(a1 + 40) + 8);
  v7 = [*(a1 + 32) activeMultilinePrefix];
  v8 = [MEMORY[0x1E698E680] builderWithObject:v6];
  [v8 setActiveMultilinePrefix:v7];
  v9 = [v8 activeMultilinePrefix];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___UIWindowSceneDescriptionWithMultilinePrefix_block_invoke;
  v16 = &unk_1E70F35B8;
  v17 = v8;
  v18 = v6;
  v10 = v8;
  [v10 appendBodySectionWithName:0 multilinePrefix:v9 block:&v13];

  v11 = [v10 build];

  v12 = [*(a1 + 32) appendObject:v11 withName:@"windowScene"];
}

@end