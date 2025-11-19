@interface UIKeyShortcutHUDSearchButton
@end

@implementation UIKeyShortcutHUDSearchButton

void __57___UIKeyShortcutHUDSearchButton__configureCollectionView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained isSearching];
    v13 = +[UIKeyShortcutHUDMetrics currentMetrics];
    v14 = v13;
    if (v12)
    {
      [v13 searchHUDTextColor];
    }

    else
    {
      [v13 standardHUDTextColor];
    }
    v15 = ;
    [v7 setSearchIconColor:v15];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57___UIKeyShortcutHUDSearchButton__configureCollectionView__block_invoke_2;
    v16[3] = &unk_1E71261C0;
    objc_copyWeak(&v17, (a1 + 32));
    [v7 setConfigurationUpdateHandler:v16];
    objc_destroyWeak(&v17);
  }
}

void __57___UIKeyShortcutHUDSearchButton__configureCollectionView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained toolbarVC];
    [v2 updateScrollingSeparatorViewVisibility];

    WeakRetained = v3;
  }
}

@end