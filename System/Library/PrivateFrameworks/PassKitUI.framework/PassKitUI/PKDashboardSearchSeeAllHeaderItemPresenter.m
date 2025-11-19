@interface PKDashboardSearchSeeAllHeaderItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardSearchSeeAllHeaderItemPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_updateCell:(id)a3 withHeaderItem:(id)a4;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardSearchSeeAllHeaderItemPresenter

- (PKDashboardSearchSeeAllHeaderItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardSearchSeeAllHeaderItemPresenter;
  v2 = [(PKDashboardSearchSeeAllHeaderItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
    v4 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardSearchSeeAllHeaderItemPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _identifierForItem:v8];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _updateCell:v12 withHeaderItem:v8];

  return v12;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _updateCell:self->_sampleCell withHeaderItem:a3, a6];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = a5 + v8 * -2.0;
  [(PKTransactionHistoryTransactionGroupHeaderCell *)self->_sampleCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardCollectionViewCell *)self->_sampleCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
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
        v11 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
        v12 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)_updateCell:(id)a3 withHeaderItem:(id)a4
{
  v27 = a3;
  v5 = a4;
  v6 = [v5 results];
  v7 = [v6 count];

  v8 = [v5 query];

  v9 = [v8 type];
  v10 = [v8 text];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [v8 text];
    v13 = PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, v12);
LABEL_5:

    goto LABEL_6;
  }

  v14 = [v8 displayNameToken];
  v15 = [v14 displayName];
  v16 = [v15 length];

  if (v16)
  {
    v12 = [v8 displayNameToken];
    v17 = [v12 displayName];
    v13 = PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, v17);

    goto LABEL_5;
  }

  v13 = PKLocalizedString(&cfstr_SearchResults.isa);
LABEL_6:
  [v27 setTitle:v13];
  if (v7)
  {
    v18 = 0;
    if (v9 > 8)
    {
      if (v9 == 9)
      {
        PKLocalizedString(&cfstr_PaymentSetupPr.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (v9 == 13)
      {
        PKLocalizedString(&cfstr_PendingPeerPay.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (v9 != 14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v9 - 1) < 2)
      {
        PKLocalizedString(&cfstr_CardsCount.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (v9 != 3)
      {
        if (v9 != 8)
        {
          goto LABEL_23;
        }

        PKLocalizedString(&cfstr_OrdersCount.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }
    }

    PKLocalizedString(&cfstr_PassesCount.isa, &cfstr_Lu.isa, v7);
    v19 = LABEL_21:;
    goto LABEL_22;
  }

  v19 = PKLocalizedString(&cfstr_Loading_1.isa);
LABEL_22:
  v18 = v19;
LABEL_23:
  [v27 setSubtitle:v18];
  v20 = MEMORY[0x1E69DCAB8];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:70.0];
  v22 = [v20 systemImageNamed:@"magnifyingglass" withConfiguration:v21];
  v23 = [MEMORY[0x1E69DC888] whiteColor];
  v24 = [v22 imageWithTintColor:v23];

  v25 = [MEMORY[0x1E69DC888] blackColor];
  v26 = PKUIImageWithBackgroundAndCornerRadius(v24, v25, 100.0, 100.0, 0.0);

  [v27 setImage:v26 animated:0];
  [v27 setStrokeImage:1];
}

@end