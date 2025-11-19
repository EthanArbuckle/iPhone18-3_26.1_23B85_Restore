@interface PKSpendingSummaryAccountUserPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKSpendingSummaryAccountUserPresenter)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 interimSpacing:(double)a6;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 item:(id)a4;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKSpendingSummaryAccountUserPresenter

- (PKSpendingSummaryAccountUserPresenter)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 interimSpacing:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = PKSpendingSummaryAccountUserPresenter;
  v14 = [(PKSpendingSummaryAccountUserPresenter *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transactionSourceCollection, a3);
    objc_storeStrong(&v15->_familyCollection, a4);
    objc_storeStrong(&v15->_avatarManager, a5);
    v15->_interimSpacing = a6;
    v16 = [v11 transactionSourcesForType:2];
    v15->_numUsers = [v16 count];

    v17 = [PKSpendingSummaryAccountUserCell alloc];
    v18 = [(PKSpendingSummaryAccountUserCell *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v15->_sampleCell;
    v15->_sampleCell = v18;
  }

  return v15;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"spendingAccountUserPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"spendingAccountUserPresenter" forIndexPath:v8];
  [(PKSpendingSummaryAccountUserPresenter *)self updateCell:v11 forItem:v10 inCollectionView:v9 atIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v8 = [a6 row];
  numUsers = self->_numUsers;
  v10 = v8 + 2;
  if ((v8 + 2) > 4)
  {
    if (v8 == numUsers / 3)
    {
      v11 = -3 * v8 + numUsers;
    }

    else
    {
      v11 = 3;
    }
  }

  else if (numUsers >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = self->_numUsers;
  }

  interimSpacing = self->_interimSpacing;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v14 = v11 >= 3 || v10 >= 5;
  v15 = v11;
  if (v14)
  {
    v15 = 3.0;
  }

  v16 = (a5 - (v13 + v13 + interimSpacing * (v11 - 1))) / v15;
  sampleCell = self->_sampleCell;

  [(PKSpendingSummaryAccountUserCell *)sampleCell sizeThatFits:v16, 1.79769313e308];
  result.height = v19;
  result.width = v18;
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
        v11 = [PKSpendingSummaryAccountUserCell alloc];
        v12 = [(PKSpendingSummaryAccountUserCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)_configureCell:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 accountUser];
    v10 = [v8 familyMember];
    v11 = [v9 altDSID];
    v12 = [v8 spendingSummary];
    v13 = [v12 totalSpendingPerAltDSID];
    v14 = [v13 objectForKey:v11];

    if ([v9 isCurrentUser])
    {
      v15 = PKLocalizedFeatureString();
      [v6 setName:v15];
    }

    else
    {
      v16 = MEMORY[0x1E69B8740];
      v17 = [v9 nameComponents];
      v15 = [v16 contactForFamilyMember:v10 nameComponents:v17 imageData:0];

      v18 = [v15 givenName];
      [v6 setName:v18];
    }

    v19 = [v14 formattedStringValue];
    [v6 setAmount:v19];

    [v6 setMaskType:3];
    [v6 setWantsCustomAppearance:0];
    [v6 setWantsDefaultHighlightBehavior:1];
    avatarManager = self->_avatarManager;
    v21 = [v9 altDSID];
    v22 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:v21];

    [v6 setAvatar:v22];
    v23 = [v6 identifier];
    if (!v22)
    {
      objc_initWeak(&location, self);
      v24 = self->_avatarManager;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__PKSpendingSummaryAccountUserPresenter__configureCell_item___block_invoke;
      v25[3] = &unk_1E801B2D8;
      objc_copyWeak(&v28, &location);
      v26 = v6;
      v27 = v23;
      [(PKContactAvatarManager *)v24 avatarForFamilyMember:v10 accountUser:v9 invitation:0 completion:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }
}

void __61__PKSpendingSummaryAccountUserPresenter__configureCell_item___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKSpendingSummaryAccountUserPresenter__configureCell_item___block_invoke_2;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __61__PKSpendingSummaryAccountUserPresenter__configureCell_item___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {

      goto LABEL_11;
    }

    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {

LABEL_12:
      WeakRetained = v10;
      goto LABEL_13;
    }

    v9 = [v5 isEqualToString:v6];

    WeakRetained = v10;
    if (v9)
    {
LABEL_11:
      [*(a1 + 32) setAvatar:*(a1 + 48)];
      goto LABEL_12;
    }
  }

LABEL_13:
}

@end