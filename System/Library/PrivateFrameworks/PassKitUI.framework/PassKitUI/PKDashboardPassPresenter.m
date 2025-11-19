@interface PKDashboardPassPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPassPresenter)init;
- (PKDashboardPassPresenterDelegate)delegate;
- (id)_dateStringForPass:(id)a3 inExpiredSection:(BOOL)a4;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (void)_updateCell:(id)a3 withPassItem:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardPassPresenter

- (PKDashboardPassPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardPassPresenter;
  v2 = [(PKDashboardPassPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardSearchResultCell alloc];
    v4 = [(PKDashboardSearchResultCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleSearchResultCell = v2->_sampleSearchResultCell;
    v2->_sampleSearchResultCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardPassPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PKDashboardPassPresenter *)self _identifierForItem:v8];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  [(PKDashboardPassPresenter *)self _updateCell:v12 withPassItem:v8];

  return v12;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardPassPresenter *)self _updateCell:self->_sampleSearchResultCell withPassItem:a3, a6];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = a5 + v8 * -2.0;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 pass];

  v10 = [v9 uniqueID];
  [WeakRetained dashboardPassPresenter:self didSelectPassWithUniqueIdentifier:v10];
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
        v11 = [PKDashboardSearchResultCell alloc];
        v12 = [(PKDashboardSearchResultCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleSearchResultCell = self->_sampleSearchResultCell;
        self->_sampleSearchResultCell = v12;
      }
    }
  }
}

- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a4 cellForItemAtIndexPath:a5];
  v6 = [v5 title];

  return v6;
}

- (void)_updateCell:(id)a3 withPassItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 pass];
  v9 = [v7 displayName];
  if (v9)
  {
    [v6 setTitle:v9];
  }

  else
  {
    v10 = [v8 localizedDescription];
    [v6 setTitle:v10];
  }

  v11 = [v7 contentDescription];
  if (v11)
  {
    [v6 setSubtitle:v11];
  }

  else
  {
    v12 = [v8 localizedName];
    [v6 setSubtitle:v12];
  }

  v13 = -[PKDashboardPassPresenter _dateStringForPass:inExpiredSection:](self, "_dateStringForPass:inExpiredSection:", v8, [v7 isInExpiredSection]);
  [v6 setDetailText:v13];

  v14 = [v8 secureElementPass];

  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v6 setStyle:v15];
  v16 = [v7 thumbnailData];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v18 = [v7 thumbnailData];
    v19 = [v17 initWithData:v18];

    [v6 setThumbnail:v19];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKDashboardPassPresenter__updateCell_withPassItem___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v28, &location);
  v20 = v8;
  v27 = v20;
  v21 = _Block_copy(aBlock);
  v22 = [v7 groupPassCount];
  if (![v20 passType] && PKBarcodePassSharingEnabled() && v22 <= 1)
  {
    goto LABEL_21;
  }

  if ([v20 passType] != 1 || v22 > 1 || (objc_msgSend(v20, "secureElementPass"), v23 = objc_claimAutoreleasedReturnValue(), v24 = PKSecureElementPassSharingMethodForPass(), v23, !v24))
  {

    v21 = 0;
    goto LABEL_21;
  }

  if (v24 != 2)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v25 = 1;
LABEL_22:
  [v6 setAction:v21 withButtonType:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __53__PKDashboardPassPresenter__updateCell_withPassItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 dashboardPassPresenter:v4 requestSharingPass:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)_dateStringForPass:(id)a3 inExpiredSection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 relevantDates];
  v7 = [v5 expirationDate];
  v8 = v7;
  if (!v4 || !v7)
  {
    if ([v6 count])
    {
      v9 = [MEMORY[0x1E69B8A68] findDateFromDates:v6 option:0];
      if (v9)
      {
        v11 = PKRelativeDateString();
        v12 = [v11 pk_uppercaseFirstStringForPreferredLocale];
LABEL_7:
        v10 = v12;

        goto LABEL_14;
      }
    }

    else
    {
      if ([v5 passType])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v9 = [v5 modifiedDate];
      if (v9)
      {
        v10 = [v5 webServiceURL];

        if (!v10)
        {
          goto LABEL_14;
        }

        v13 = PKRelativeDateString();
        v11 = [v13 pk_uppercaseFirstStringForPreferredLocale];

        v12 = PKLocalizedString(&cfstr_LastUpdatedFor.isa, &stru_1F3BD5BF0.isa, v11);
        goto LABEL_7;
      }
    }

    v10 = 0;
    goto LABEL_14;
  }

  v9 = PKRelativeDateString();
  v10 = [v9 pk_uppercaseFirstStringForPreferredLocale];
LABEL_14:

LABEL_15:

  return v10;
}

- (PKDashboardPassPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end