@interface UIKeyShortcutHUDMenuViewController
@end

@implementation UIKeyShortcutHUDMenuViewController

void __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v8 configureWithShortcut:v6];
  }
}

void __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = +[UIKeyShortcutHUDMetrics currentMetrics];
    [v8 menuSeparatorHorizontalMargin];
    [v17 setDirectionalLayoutMargins:{0.0, v9, 0.0, v9}];
    v10 = [v8 menuSeparatorColor];
    v11 = [v17 separatorView];
    [v11 setSeparatorColor:v10];

    v12 = [v8 menuSeparatorVisualEffect];
    v13 = [v17 separatorView];
    [v13 setVisualEffect:v12];

    v14 = [WeakRetained collectionViewManager];
    v15 = [v14 client:WeakRetained shouldHideSeparatorAtIndexPath:v6];
    v16 = [v17 separatorView];
    [v16 setSeparatorHidden:v15];
  }
}

void __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained dataSource];
    v10 = [v9 snapshot];
    v11 = [v10 sectionIdentifiers];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

    [v13 configureWithCategory:v12];
  }
}

id __63___UIKeyShortcutHUDMenuViewController__configureCollectionView__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 isEqualToString:@"UICollectionElementKindSectionHeader"];
  v10 = 40;
  if (v9)
  {
    v10 = 32;
  }

  v11 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v10) forIndexPath:v7];

  return v11;
}

uint64_t __80___UIKeyShortcutHUDMenuViewController_flashShortcutIfVisible_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  if (v3)
  {
    v6 = [v3 section];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = *(v4 + 16);

  return v7(v4, a2, v6);
}

@end