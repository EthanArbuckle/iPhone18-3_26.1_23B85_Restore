@interface PKVisibilityBackdropView
@end

@implementation PKVisibilityBackdropView

void __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 213) == *(a1 + 40))
    {
      v4 = *(WeakRetained + 212) - 1;
      *(WeakRetained + 212) = v4;
      if (!v4)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_3;
        v5[3] = &unk_1E8016AE0;
        objc_copyWeak(&v6, (a1 + 32));
        v7 = *(a1 + 40);
        dispatch_async(MEMORY[0x1E69E96A0], v5);
        objc_destroyWeak(&v6);
      }
    }
  }
}

void __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 213) == *(a1 + 40) && !*(WeakRetained + 212))
    {
      v4 = WeakRetained[104];
      if (WeakRetained[105] != v4)
      {
        WeakRetained[105] = v4;
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_4;
        v5[3] = &unk_1E8010970;
        v5[4] = WeakRetained;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
      }
    }
  }
}

@end