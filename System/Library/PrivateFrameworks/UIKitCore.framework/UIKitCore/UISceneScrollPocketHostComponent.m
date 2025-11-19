@interface UISceneScrollPocketHostComponent
@end

@implementation UISceneScrollPocketHostComponent

void __57___UISceneScrollPocketHostComponent_updatePocketSettings__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  [v5 setScrollPocketElements:v4];
}

void __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 overlayStyle:v3 block:v6];
}

void __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"interaction"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_4;
  v7[3] = &unk_1E712BC90;
  v5 = v3;
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v5 appendCollection:v4 withName:@"pocketElements" itemBlock:v7];
}

void __63___UISceneScrollPocketHostComponent_appendDescriptionToStream___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 24) objectForKey:v3];
  v11 = v3;
  if (v11)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v11];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v4 appendObject:v5 withName:v9];
}

@end