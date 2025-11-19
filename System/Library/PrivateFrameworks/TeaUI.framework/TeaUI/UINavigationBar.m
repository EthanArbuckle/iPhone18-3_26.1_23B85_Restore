@interface UINavigationBar
@end

@implementation UINavigationBar

uint64_t __41__UINavigationBar_Bridge__ts_contentView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uinavigationba.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __44__UINavigationBar_Bridge__ts_barButtonViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ts_barButtonItemView];
  if (v3)
  {
    v9 = v3;
    v4 = [v3 conformsToProtocol:&unk_1F532C768];
    v5 = *(a1 + 32);
    v6 = [TUNavigationBarCompressibleBarButtonItemView alloc];
    if (v4)
    {
      v7 = [(TUNavigationBarCompressibleBarButtonItemView *)v6 initWithCustomItemView:v9];
    }

    else
    {
      v7 = [(TUNavigationBarCompressibleBarButtonItemView *)v6 initWithRegularItemView:v9];
    }

    v8 = v7;
    [v5 addObject:v7];

    v3 = v9;
  }
}

void __44__UINavigationBar_Bridge__ts_barButtonViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 ts_barButtonItemView];
  if (v3)
  {
    v9 = v3;
    v4 = [v3 conformsToProtocol:&unk_1F532C768];
    v5 = *(a1 + 32);
    v6 = [TUNavigationBarCompressibleBarButtonItemView alloc];
    if (v4)
    {
      v7 = [(TUNavigationBarCompressibleBarButtonItemView *)v6 initWithCustomItemView:v9];
    }

    else
    {
      v7 = [(TUNavigationBarCompressibleBarButtonItemView *)v6 initWithRegularItemView:v9];
    }

    v8 = v7;
    [v5 addObject:v7];

    v3 = v9;
  }
}

void __46__UINavigationBar_Bridge__syncBarButtonItems___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ts_fetchCompressibleTitleView];

  if (v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v23;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = *(a1 + 40);
        if (v10)
        {
          [v10 transform];
        }

        else
        {
          memset(&v21, 0, sizeof(v21));
        }

        IsIdentity = CGAffineTransformIsIdentity(&v21);
        v12 = [v9 ts_compressibleBarButtonItemView];
        v13 = v12;
        if (IsIdentity)
        {
          if (v12)
          {
            [v12 setContentAlpha:1.0];
            v14 = 0.0;
LABEL_15:
            [v13 setVerticalOffset:{v14, *&v21.a, *&v21.c, *&v21.tx}];
            goto LABEL_19;
          }

          v16 = [v9 ts_barButtonItemView];
          v17 = [v16 layer];
          v18 = v17;
          LODWORD(v19) = 1.0;
        }

        else
        {
          [v3 contentAlpha];
          if (v13)
          {
            [v13 setContentAlpha:?];
            [v3 verticalOffset];
            goto LABEL_15;
          }

          v20 = v15;
          v16 = [v9 ts_barButtonItemView];
          v17 = [v16 layer];
          v18 = v17;
          *&v19 = v20;
        }

        [v17 setOpacity:{v19, *&v21.a, *&v21.c, *&v21.tx, v22}];

LABEL_19:
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v6)
      {
LABEL_21:

        break;
      }
    }
  }
}

@end