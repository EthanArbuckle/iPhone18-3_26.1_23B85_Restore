@interface UIStatusBarDefaultAnimation
@end

@implementation UIStatusBarDefaultAnimation

void ___UIStatusBarDefaultAnimation_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  v10 = [v7 region];
  v11 = [v10 identifier];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (v9 == 2)
  {
    [v7 setAbsoluteFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
    v14 = *(a1 + 104);
LABEL_7:
    v17 = *(a1 + 112);
    goto LABEL_8;
  }

  [v7 setAlpha:0.0];
  v15 = *(a1 + 64);
  v26[0] = *(a1 + 48);
  v26[1] = v15;
  v26[2] = *(a1 + 80);
  [v7 setTransform:v26];
  v16 = 104;
  if (v9 == 1)
  {
    v16 = 96;
  }

  v14 = *(a1 + v16);
  if (v9 != 1)
  {
    goto LABEL_7;
  }

  v17 = 0.3;
LABEL_8:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___UIStatusBarDefaultAnimation_block_invoke_2;
  v20[3] = &unk_1E711F240;
  v21 = v7;
  v22 = v9;
  v18 = *(a1 + 64);
  v23 = *(a1 + 48);
  v24 = v18;
  v25 = *(a1 + 80);
  v19 = v7;
  [UIView animateWithDuration:0 delay:v20 options:v8 animations:v14 completion:v17];
}

uint64_t ___UIStatusBarDefaultAnimation_block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = 0.0;
  if (*(v3 + 8) == 1)
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];
  v5 = (a1 + 48);
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v5 = MEMORY[0x1E695EFD0];
  }

  v7 = v5[1];
  v9[0] = *v5;
  v9[1] = v7;
  v9[2] = v5[2];
  return [v6 setTransform:v9];
}

uint64_t ___UIStatusBarDefaultAnimation_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    v6 = [v5 region];
    v7 = [v6 isEnabled];

    if (v7)
    {
      [v5 absoluteFrame];
      v8 = *(*(a1 + 32) + 8);
      v8[4] = v9;
      v8[5] = v10;
      v8[6] = v11;
      v8[7] = v12;
      v13 = 1;
      [v5 setFloating:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t ___UIStatusBarDefaultAnimation_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 region];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

@end