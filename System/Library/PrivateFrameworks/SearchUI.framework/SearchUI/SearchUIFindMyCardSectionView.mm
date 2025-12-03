@interface SearchUIFindMyCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
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
  spotlightWidget = [v3 spotlightWidget];
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
  view = [v8 view];
  [view setMinimumLayoutSize:{0.0, 200.0}];

  view2 = [v8 view];
  [view2 setMaximumLayoutSize:{1.79769313e308, 200.0}];

  [v8 setViewOptions:spotlightWidget];
  [(SearchUIFindMyCardSectionView *)self setViewController:v8];
  view3 = [v8 view];

  return view3;
}

- (void)updateWithRowModel:(id)model
{
  v22[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = SearchUIFindMyCardSectionView;
  [(SearchUICardSectionView *)&v21 updateWithRowModel:modelCopy];
  contact = [(SearchUIFindMyCardSectionView *)self contact];
  identifier = [contact identifier];

  section = [(SearchUICardSectionView *)self section];
  person = [section person];
  contactIdentifier = [person contactIdentifier];

  if (([identifier isEqual:contactIdentifier] & 1) == 0)
  {
    locationLabel = [(SearchUIFindMyCardSectionView *)self locationLabel];
    [locationLabel setText:0];

    timeLabel = [(SearchUIFindMyCardSectionView *)self timeLabel];
    [timeLabel setText:0];

    locationLabel2 = [(SearchUIFindMyCardSectionView *)self locationLabel];
    [locationLabel2 setAlpha:0.0];

    timeLabel2 = [(SearchUIFindMyCardSectionView *)self timeLabel];
    [timeLabel2 setAlpha:0.0];

    viewController = [(SearchUIFindMyCardSectionView *)self viewController];
    [viewController stopObserving];

    objc_initWeak(&location, self);
    v15 = +[SearchUIContactCache sharedCache];
    v22[0] = contactIdentifier;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__SearchUIFindMyCardSectionView_updateWithRowModel___block_invoke;
    v17[3] = &unk_1E85B3268;
    v17[4] = self;
    v18 = modelCopy;
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