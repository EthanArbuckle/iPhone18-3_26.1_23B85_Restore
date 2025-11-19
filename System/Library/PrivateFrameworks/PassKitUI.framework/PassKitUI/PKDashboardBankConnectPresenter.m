@interface PKDashboardBankConnectPresenter
- (BOOL)_useAccessibilityLayoutForCollectionView:(id)a3;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardBankConnectPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureBalanceView:(id)a3 withItem:(id)a4;
- (void)_configureSpendingSummaryView:(id)a3 withItem:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardBankConnectPresenter

- (PKDashboardBankConnectPresenter)init
{
  v13.receiver = self;
  v13.super_class = PKDashboardBankConnectPresenter;
  v2 = [(PKDashboardBankConnectPresenter *)&v13 init];
  if (v2)
  {
    v3 = [_TtC9PassKitUI33PKDashboardBankConnectBalanceCell alloc];
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
    v8 = [(PKDashboardBankConnectBalanceCell *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
    sampleBalanceCell = v2->_sampleBalanceCell;
    v2->_sampleBalanceCell = v8;

    v10 = [[_TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell alloc] initWithFrame:v4, v5, v6, v7];
    sampleSpendingSummaryCell = v2->_sampleSpendingSummaryCell;
    v2->_sampleSpendingSummaryCell = v10;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"balanceCellReuseIdentifier";
  v4[1] = @"spendingSummaryReuseIdentifier";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 type];
  if (v12 == 1)
  {
    v8 = [v9 dequeueReusableCellWithReuseIdentifier:@"spendingSummaryReuseIdentifier" forIndexPath:v10];
    [(PKDashboardBankConnectPresenter *)self _configureSpendingSummaryView:v8 withItem:v11];
  }

  else
  {
    if (v12)
    {
      goto LABEL_6;
    }

    v8 = [v9 dequeueReusableCellWithReuseIdentifier:@"balanceCellReuseIdentifier" forIndexPath:v10];
    [(PKDashboardBankConnectPresenter *)self _configureBalanceView:v8 withItem:v11];
  }

  [objc_opt_class() defaultHorizontalInset];
  v14 = v13;
  [objc_opt_class() defaultHorizontalInset];
  [v9 pkui_readableContentBoundsWithMargins:{0.0, v14, 0.0, v15}];
  [v8 setHorizontalInset:?];
LABEL_6:

  return v8;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = [v8 type];
  if (v9 == 1)
  {
    [(PKDashboardBankConnectPresenter *)self _configureSpendingSummaryView:v10 withItem:v8];
  }

  else if (!v9)
  {
    [(PKDashboardBankConnectPresenter *)self _configureBalanceView:v10 withItem:v8];
  }
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v9 = a3;
  v10 = *MEMORY[0x1E69DDC50];
  v11 = [a4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryCompareToCategory(v10, v12);

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v15.n128_u64[0] = -2.0;
  v16 = a5 + v14.n128_f64[0] * -2.0;
  if (v13 == NSOrderedDescending && [v9 hasAccountBalance] && objc_msgSend(v9, "isPersonalizedInsightsEnabled"))
  {
    v15.n128_u64[0] = 0.5;
    v16 = (v16 + -10.0) * 0.5;
  }

  v14.n128_f64[0] = v16;
  PKFloatFloorToPixel(v14, v15);
  v18 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKDashboardBankConnectPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E8012B60;
  aBlock[4] = self;
  v20 = v9;
  v39 = v20;
  v40 = v18;
  v41 = 0x47EFFFFFE0000000;
  v21 = _Block_copy(aBlock);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __90__PKDashboardBankConnectPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_2;
  v33 = &unk_1E8012B60;
  v34 = self;
  v22 = v20;
  v35 = v22;
  v36 = v18;
  v37 = 0x47EFFFFFE0000000;
  v23 = _Block_copy(&v30);
  v24 = [v22 type];
  if (v24 == 1)
  {
    v18 = v23[2](v23);
    v19 = v26;
    v21[2](v21);
    if (*&v19 <= v27)
    {
      *&v19 = v27;
    }
  }

  else if (!v24)
  {
    v18 = (v21[2])(v21);
    v19 = v25;
  }

  v28 = v18;
  v29 = *&v19;
  result.height = v29;
  result.width = v28;
  return result;
}

double __90__PKDashboardBankConnectPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureBalanceView:*(*(a1 + 32) + 8) withItem:*(a1 + 40)];
  [*(*(a1 + 32) + 8) sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  return *(a1 + 48);
}

double __90__PKDashboardBankConnectPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureSpendingSummaryView:*(*(a1 + 32) + 16) withItem:*(a1 + 40)];
  [*(*(a1 + 32) + 16) sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  return *(a1 + 48);
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v31[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = v8;
  v11 = [v10 type];
  if (v11 == 1)
  {
    v23 = [v10 dataProvider];
    v12 = [_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider makeViewControllerForDataProvider:v23 navigationController:v9];

    [v9 pushViewController:v12 animated:1];
    v15 = MEMORY[0x1E69B8540];
    v16 = *MEMORY[0x1E69BB6F8];
    v24 = *MEMORY[0x1E69BA6F0];
    v25 = *MEMORY[0x1E69BABE8];
    v28[0] = *MEMORY[0x1E69BA680];
    v28[1] = v25;
    v26 = *MEMORY[0x1E69BAC10];
    v29[0] = v24;
    v29[1] = v26;
    v28[2] = *MEMORY[0x1E69BA440];
    v29[2] = *MEMORY[0x1E69BB2A8];
    v20 = MEMORY[0x1E695DF20];
    v21 = v29;
    v22 = v28;
    goto LABEL_5;
  }

  if (!v11)
  {
    v12 = [_TtC9PassKitUI47BankConnectBalanceDetailsViewControllerProvider makeViewControllerWithBankConnectItem:v10];
    v13 = [v9 navigationBar];
    [v13 setPrefersLargeTitles:1];

    v14 = [v12 navigationItem];
    [v14 setLargeTitleDisplayMode:1];

    [v9 pushViewController:v12 animated:1];
    v15 = MEMORY[0x1E69B8540];
    v16 = *MEMORY[0x1E69BB6F8];
    v17 = *MEMORY[0x1E69BA6F0];
    v18 = *MEMORY[0x1E69BABE8];
    v30[0] = *MEMORY[0x1E69BA680];
    v30[1] = v18;
    v19 = *MEMORY[0x1E69BAC10];
    v31[0] = v17;
    v31[1] = v19;
    v30[2] = *MEMORY[0x1E69BA440];
    v31[2] = *MEMORY[0x1E69BA3B0];
    v20 = MEMORY[0x1E695DF20];
    v21 = v31;
    v22 = v30;
LABEL_5:
    v27 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:3];
    [v15 subject:v16 sendEvent:v27];
  }
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v7 = a4;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v7 preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);
      if (v10)
      {
        v11 = [_TtC9PassKitUI33PKDashboardBankConnectBalanceCell alloc];
        v12 = *MEMORY[0x1E695F058];
        v13 = *(MEMORY[0x1E695F058] + 8);
        v14 = *(MEMORY[0x1E695F058] + 16);
        v15 = *(MEMORY[0x1E695F058] + 24);
        v16 = [(PKDashboardBankConnectBalanceCell *)v11 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
        sampleBalanceCell = self->_sampleBalanceCell;
        self->_sampleBalanceCell = v16;

        v18 = [[_TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell alloc] initWithFrame:v12, v13, v14, v15];
        sampleSpendingSummaryCell = self->_sampleSpendingSummaryCell;
        self->_sampleSpendingSummaryCell = v18;
      }
    }
  }
}

- (BOOL)_useAccessibilityLayoutForCollectionView:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC50]) != NSOrderedAscending;

  return v5;
}

- (void)_configureBalanceView:(id)a3 withItem:(id)a4
{
  v5 = a3;
  [v5 configureWithBankConnectItem:a4];
  [v5 setWantsCustomAppearance:1];
  [v5 setWantsDefaultHighlightBehavior:1];
  [v5 setMaskType:3];
  v6 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v5 setBackgroundColor:v6];
}

- (void)_configureSpendingSummaryView:(id)a3 withItem:(id)a4
{
  v5 = a3;
  v6 = [a4 dataProvider];
  [v5 configureWithSpendingSummaryDataProvider:v6];

  [v5 setWantsCustomAppearance:1];
  [v5 setWantsDefaultHighlightBehavior:1];
  [v5 setMaskType:3];
  v7 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v5 setBackgroundColor:v7];
}

@end