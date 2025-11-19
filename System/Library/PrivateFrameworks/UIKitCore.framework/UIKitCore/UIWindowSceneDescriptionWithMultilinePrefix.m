@interface UIWindowSceneDescriptionWithMultilinePrefix
@end

@implementation UIWindowSceneDescriptionWithMultilinePrefix

void ___UIWindowSceneDescriptionWithMultilinePrefix_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) session];
  v4 = [v3 role];
  v5 = [v2 appendObject:v4 withName:@"sessionRole"];

  v6 = *(a1 + 32);
  v7 = _NSStringFromUISceneActivationState([*(a1 + 40) activationState]);
  v8 = [v6 appendObject:v7 withName:@"activationState"];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _sceneIdentifier];
  v11 = [v9 appendObject:v10 withName:@"identifier"];

  v12 = [*(a1 + 40) _screen];
  v13 = [*(a1 + 32) activeMultilinePrefix];
  v14 = [MEMORY[0x1E698E680] builderWithObject:v12];
  [v14 setActiveMultilinePrefix:v13];
  v15 = [v14 activeMultilinePrefix];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = ___UIScreenDescriptionWithMultilinePrefix_block_invoke;
  v22 = &unk_1E70F35B8;
  v23 = v14;
  v24 = v12;
  v16 = v14;
  [v16 appendBodySectionWithName:0 multilinePrefix:v15 block:&v19];

  v17 = [v16 build];

  v18 = [*(a1 + 32) appendObject:v17 withName:@"screen"];
}

@end