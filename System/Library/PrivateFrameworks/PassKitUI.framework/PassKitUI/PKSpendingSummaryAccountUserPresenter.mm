@interface PKSpendingSummaryAccountUserPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKSpendingSummaryAccountUserPresenter)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection avatarManager:(id)manager interimSpacing:(double)spacing;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell item:(id)item;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKSpendingSummaryAccountUserPresenter

- (PKSpendingSummaryAccountUserPresenter)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection avatarManager:(id)manager interimSpacing:(double)spacing
{
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = PKSpendingSummaryAccountUserPresenter;
  v14 = [(PKSpendingSummaryAccountUserPresenter *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transactionSourceCollection, collection);
    objc_storeStrong(&v15->_familyCollection, familyCollection);
    objc_storeStrong(&v15->_avatarManager, manager);
    v15->_interimSpacing = spacing;
    v16 = [collectionCopy transactionSourcesForType:2];
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"spendingAccountUserPresenter" forIndexPath:pathCopy];
  [(PKSpendingSummaryAccountUserPresenter *)self updateCell:v11 forItem:itemCopy inCollectionView:viewCopy atIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  v8 = [path row];
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

  v16 = (width - (v13 + v13 + interimSpacing * (v11 - 1))) / v15;
  sampleCell = self->_sampleCell;

  [(PKSpendingSummaryAccountUserCell *)sampleCell sizeThatFits:v16, 1.79769313e308];
  result.height = v19;
  result.width = v18;
  return result;
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
        v11 = [PKSpendingSummaryAccountUserCell alloc];
        v12 = [(PKSpendingSummaryAccountUserCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)_configureCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v8 = itemCopy;
  if (cellCopy && itemCopy)
  {
    accountUser = [itemCopy accountUser];
    familyMember = [v8 familyMember];
    altDSID = [accountUser altDSID];
    spendingSummary = [v8 spendingSummary];
    totalSpendingPerAltDSID = [spendingSummary totalSpendingPerAltDSID];
    v14 = [totalSpendingPerAltDSID objectForKey:altDSID];

    if ([accountUser isCurrentUser])
    {
      v15 = PKLocalizedFeatureString();
      [cellCopy setName:v15];
    }

    else
    {
      v16 = MEMORY[0x1E69B8740];
      nameComponents = [accountUser nameComponents];
      v15 = [v16 contactForFamilyMember:familyMember nameComponents:nameComponents imageData:0];

      givenName = [v15 givenName];
      [cellCopy setName:givenName];
    }

    formattedStringValue = [v14 formattedStringValue];
    [cellCopy setAmount:formattedStringValue];

    [cellCopy setMaskType:3];
    [cellCopy setWantsCustomAppearance:0];
    [cellCopy setWantsDefaultHighlightBehavior:1];
    avatarManager = self->_avatarManager;
    altDSID2 = [accountUser altDSID];
    v22 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:altDSID2];

    [cellCopy setAvatar:v22];
    identifier = [cellCopy identifier];
    if (!v22)
    {
      objc_initWeak(&location, self);
      v24 = self->_avatarManager;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__PKSpendingSummaryAccountUserPresenter__configureCell_item___block_invoke;
      v25[3] = &unk_1E801B2D8;
      objc_copyWeak(&v28, &location);
      v26 = cellCopy;
      v27 = identifier;
      [(PKContactAvatarManager *)v24 avatarForFamilyMember:familyMember accountUser:accountUser invitation:0 completion:v25];

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