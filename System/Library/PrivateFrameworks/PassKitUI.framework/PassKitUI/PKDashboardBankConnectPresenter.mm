@interface PKDashboardBankConnectPresenter
- (BOOL)_useAccessibilityLayoutForCollectionView:(id)view;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardBankConnectPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureBalanceView:(id)view withItem:(id)item;
- (void)_configureSpendingSummaryView:(id)view withItem:(id)item;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v11 = itemCopy;
  type = [v11 type];
  if (type == 1)
  {
    itemCopy = [viewCopy dequeueReusableCellWithReuseIdentifier:@"spendingSummaryReuseIdentifier" forIndexPath:pathCopy];
    [(PKDashboardBankConnectPresenter *)self _configureSpendingSummaryView:itemCopy withItem:v11];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    itemCopy = [viewCopy dequeueReusableCellWithReuseIdentifier:@"balanceCellReuseIdentifier" forIndexPath:pathCopy];
    [(PKDashboardBankConnectPresenter *)self _configureBalanceView:itemCopy withItem:v11];
  }

  [objc_opt_class() defaultHorizontalInset];
  v14 = v13;
  [objc_opt_class() defaultHorizontalInset];
  [viewCopy pkui_readableContentBoundsWithMargins:{0.0, v14, 0.0, v15}];
  [itemCopy setHorizontalInset:?];
LABEL_6:

  return itemCopy;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  type = [itemCopy type];
  if (type == 1)
  {
    [(PKDashboardBankConnectPresenter *)self _configureSpendingSummaryView:cellCopy withItem:itemCopy];
  }

  else if (!type)
  {
    [(PKDashboardBankConnectPresenter *)self _configureBalanceView:cellCopy withItem:itemCopy];
  }
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  v10 = *MEMORY[0x1E69DDC50];
  traitCollection = [view traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v13 = UIContentSizeCategoryCompareToCategory(v10, preferredContentSizeCategory);

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v15.n128_u64[0] = -2.0;
  v16 = width + v14.n128_f64[0] * -2.0;
  if (v13 == NSOrderedDescending && [itemCopy hasAccountBalance] && objc_msgSend(itemCopy, "isPersonalizedInsightsEnabled"))
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
  v20 = itemCopy;
  v39 = v20;
  v40 = v18;
  v41 = 0x47EFFFFFE0000000;
  v21 = _Block_copy(aBlock);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __90__PKDashboardBankConnectPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_2;
  v33 = &unk_1E8012B60;
  selfCopy = self;
  v22 = v20;
  v35 = v22;
  v36 = v18;
  v37 = 0x47EFFFFFE0000000;
  v23 = _Block_copy(&v30);
  type = [v22 type];
  if (type == 1)
  {
    v18 = v23[2](v23);
    v19 = v26;
    v21[2](v21);
    if (*&v19 <= v27)
    {
      *&v19 = v27;
    }
  }

  else if (!type)
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

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  v31[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  v10 = itemCopy;
  type = [v10 type];
  if (type == 1)
  {
    dataProvider = [v10 dataProvider];
    v12 = [_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider makeViewControllerForDataProvider:dataProvider navigationController:controllerCopy];

    [controllerCopy pushViewController:v12 animated:1];
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

  if (!type)
  {
    v12 = [_TtC9PassKitUI47BankConnectBalanceDetailsViewControllerProvider makeViewControllerWithBankConnectItem:v10];
    navigationBar = [controllerCopy navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    navigationItem = [v12 navigationItem];
    [navigationItem setLargeTitleDisplayMode:1];

    [controllerCopy pushViewController:v12 animated:1];
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

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  if (trait)
  {
    if (toTrait)
    {
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
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

- (BOOL)_useAccessibilityLayoutForCollectionView:(id)view
{
  traitCollection = [view traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) != NSOrderedAscending;

  return v5;
}

- (void)_configureBalanceView:(id)view withItem:(id)item
{
  viewCopy = view;
  [viewCopy configureWithBankConnectItem:item];
  [viewCopy setWantsCustomAppearance:1];
  [viewCopy setWantsDefaultHighlightBehavior:1];
  [viewCopy setMaskType:3];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [viewCopy setBackgroundColor:secondarySystemGroupedBackgroundColor];
}

- (void)_configureSpendingSummaryView:(id)view withItem:(id)item
{
  viewCopy = view;
  dataProvider = [item dataProvider];
  [viewCopy configureWithSpendingSummaryDataProvider:dataProvider];

  [viewCopy setWantsCustomAppearance:1];
  [viewCopy setWantsDefaultHighlightBehavior:1];
  [viewCopy setMaskType:3];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [viewCopy setBackgroundColor:secondarySystemGroupedBackgroundColor];
}

@end