@interface SearchUIFindMyCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIFindMyCardSectionView

- (id)setupContentView
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getFMUILocationDetailViewControllerViewOptionsClass_softClass;
  v21 = getFMUILocationDetailViewControllerViewOptionsClass_softClass;
  if (!getFMUILocationDetailViewControllerViewOptionsClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke;
    v16 = &unk_1E85B2928;
    v17 = &v18;
    __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 spotlightWidget];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v6 = getFMUILocationDetailViewControllerClass_softClass;
  v21 = getFMUILocationDetailViewControllerClass_softClass;
  if (!getFMUILocationDetailViewControllerClass_softClass)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getFMUILocationDetailViewControllerClass_block_invoke;
    v16 = &unk_1E85B2928;
    v17 = &v18;
    __getFMUILocationDetailViewControllerClass_block_invoke(&v13);
    v6 = v19[3];
  }

  v7 = v6;
  _Block_object_dispose(&v18, 8);
  v8 = objc_opt_new();
  v9 = [v8 view];
  [v9 setMinimumLayoutSize:{0.0, 200.0}];

  v10 = [v8 view];
  [v10 setMaximumLayoutSize:{1.79769313e308, 200.0}];

  [v8 setViewOptions:v5];
  [(SearchUIFindMyCardSectionView *)self setViewController:v8];
  v11 = [v8 view];

  return v11;
}

- (void)updateWithRowModel:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SearchUIFindMyCardSectionView;
  [(SearchUICardSectionView *)&v21 updateWithRowModel:v4];
  v5 = [(SearchUIFindMyCardSectionView *)self contact];
  v6 = [v5 identifier];

  v7 = [(SearchUICardSectionView *)self section];
  v8 = [v7 person];
  v9 = [v8 contactIdentifier];

  if (([v6 isEqual:v9] & 1) == 0)
  {
    v10 = [(SearchUIFindMyCardSectionView *)self locationLabel];
    [v10 setText:0];

    v11 = [(SearchUIFindMyCardSectionView *)self timeLabel];
    [v11 setText:0];

    v12 = [(SearchUIFindMyCardSectionView *)self locationLabel];
    [v12 setAlpha:0.0];

    v13 = [(SearchUIFindMyCardSectionView *)self timeLabel];
    [v13 setAlpha:0.0];

    v14 = [(SearchUIFindMyCardSectionView *)self viewController];
    [v14 stopObserving];

    objc_initWeak(&location, self);
    v15 = +[SearchUIContactCache sharedCache];
    v22[0] = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__SearchUIFindMyCardSectionView_updateWithRowModel___block_invoke;
    v17[3] = &unk_1E85B3268;
    v17[4] = self;
    v18 = v4;
    objc_copyWeak(&v19, &location);
    [v15 fetchContactsForIdentifiers:v16 completionHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __52__SearchUIFindMyCardSectionView_updateWithRowModel___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] rowModel];
  v5 = a1[5];

  if (v4 == v5)
  {
    v6 = [v3 firstObject];
    [a1[4] setContact:v6];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SearchUIFindMyCardSectionView_updateWithRowModel___block_invoke_2;
    v7[3] = &unk_1E85B26D0;
    objc_copyWeak(&v10, a1 + 6);
    v8 = a1[5];
    v9 = v3;
    [SearchUIUtilities dispatchMainIfNecessary:v7];

    objc_destroyWeak(&v10);
  }
}

void __52__SearchUIFindMyCardSectionView_updateWithRowModel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained rowModel];
  v3 = *(a1 + 32);

  if (v2 == v3 && [*(a1 + 40) count])
  {
    v4 = [WeakRetained viewController];
    [v4 startObservingContacts:*(a1 + 40)];
  }
}

@end