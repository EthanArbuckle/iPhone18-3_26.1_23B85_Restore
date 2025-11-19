@interface UISceneMaskingClientComponent
@end

@implementation UISceneMaskingClientComponent

void __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke_2;
    v6[3] = &unk_1E70F4A50;
    v5 = *(a1 + 32);
    v7 = 0;
    v8 = v5;
    [UIView performWithoutAnimation:v6];
  }
}

void __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke_3(uint64_t a1)
{
  v4 = +[_UISceneMaskingAction invalidationAction];
  v2 = [*(a1 + 32) scene];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  [v2 sendPrivateActions:v3];
}

@end