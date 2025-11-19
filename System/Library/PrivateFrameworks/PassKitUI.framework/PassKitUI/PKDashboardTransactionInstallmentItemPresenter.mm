@interface PKDashboardTransactionInstallmentItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardTransactionInstallmentItemPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
@end

@implementation PKDashboardTransactionInstallmentItemPresenter

- (PKDashboardTransactionInstallmentItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardTransactionInstallmentItemPresenter;
  v2 = [(PKDashboardTransactionInstallmentItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardStackedImageCollectionViewCell alloc];
    v4 = [(PKDashboardStackedImageCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"TransactionInstallmentItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"TransactionInstallmentItemCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardTransactionInstallmentItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardTransactionInstallmentItemPresenter *)self _configureCell:self->_sampleCell forItem:a3 inCollectionView:a4 forIndexPath:a6];
  sampleCell = self->_sampleCell;

  [(PKDashboardStackedImageCollectionViewCell *)sampleCell sizeThatFits:a5, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v7 = a3;
  v8 = [a4 installmentPlan];
  v9 = [v8 product];
  v10 = [v9 serialNumber];
  v11 = PKSerialNumber();
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

LABEL_7:
    v16 = PKDeviceName();
    v17 = [v9 model];
    goto LABEL_10;
  }

  if (v12 && v13)
  {
    v15 = [v12 caseInsensitiveCompare:v13];

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v16 = [v9 model];
  v17 = 0;
LABEL_10:
  v18 = [v9 iconURLForScale:0 suffix:PKUIScreenScale()];
  if (v18)
  {
    v19 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v20 = [v19 cachedDataForURL:v18];
    if (v20)
    {
      v21 = v20;
      v22 = [MEMORY[0x1E69DCAB8] imageWithData:v20];

      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __103__PKDashboardTransactionInstallmentItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke;
      v30[3] = &unk_1E8020570;
      v31 = v7;
      [v19 downloadFromUrl:v18 completionHandler:v30];
    }
  }

  v23 = PKPassKitUIBundle();
  v24 = [v23 URLForResource:@"InstallmentsFallback" withExtension:@"pdf"];

  if (v24)
  {
    v25 = PKUIScreenScale();
    v22 = PKUIImageFromPDF(v24, 70.0, 70.0, v25);
  }

  else
  {
    v22 = 0;
  }

LABEL_19:
  v26 = [v8 summary];
  v27 = [v26 startDate];

  if (v27)
  {
    v28 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v28 setDateStyle:1];
    [v28 setTimeStyle:0];
    v29 = [v28 stringFromDate:v27];
  }

  else
  {
    v29 = 0;
  }

  [v7 setIcon:v22];
  [v7 setTitle:v16];
  [v7 setSubtitle:v17];
  [v7 setTertiaryText:v29];
}

void __103__PKDashboardTransactionInstallmentItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __103__PKDashboardTransactionInstallmentItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_2;
      v6[3] = &unk_1E8010A10;
      v7 = *(a1 + 32);
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v6);
    }
  }
}

@end