@interface UISceneDisplayLink
@end

@implementation UISceneDisplayLink

void __47___UISceneDisplayLink_unregisterTarget_action___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 target];
  v8 = v7;
  if (v7 != a1[4])
  {

    goto LABEL_8;
  }

  v9 = [v11 action];
  v10 = a1[6];
  if (v9 == v10)
  {
  }

  else
  {

    if (v10)
    {
      goto LABEL_8;
    }
  }

  *(*(a1[5] + 8) + 24) = a3;
  *a4 = 1;
LABEL_8:
}

void __40___UISceneDisplayLink__displayLinkTick___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 target];
  if (v5)
  {
    v6 = [v12 action];
    v7 = *(a1 + 32);
    if (dyld_program_sdk_at_least())
    {
      [v5 v6];
    }

    else
    {
      [v5 performSelector:v6 withObject:v7];
    }
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AD50] indexSet];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v8 addIndex:a3];
  }
}

@end