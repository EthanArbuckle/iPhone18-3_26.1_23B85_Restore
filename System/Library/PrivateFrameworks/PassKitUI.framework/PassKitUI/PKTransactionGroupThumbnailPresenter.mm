@interface PKTransactionGroupThumbnailPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKTransactionGroupThumbnailPresenter)init;
- (double)thumbnailWidth;
- (id)_contactKeysToFetch;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_updateAvatarOnThumbnailCell:(id)cell contact:(id)contact;
- (void)_updateTitleOnThumbnailCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKTransactionGroupThumbnailPresenter

- (PKTransactionGroupThumbnailPresenter)init
{
  v16.receiver = self;
  v16.super_class = PKTransactionGroupThumbnailPresenter;
  v2 = [(PKTransactionGroupThumbnailPresenter *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    iconsPerMerchantCategory = v2->_iconsPerMerchantCategory;
    v2->_iconsPerMerchantCategory = v3;

    v5 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v2->_iconGenerator;
    v2->_iconGenerator = v5;

    v7 = objc_alloc(MEMORY[0x1E69B8740]);
    v8 = objc_alloc_init(MEMORY[0x1E695CE18]);
    _contactKeysToFetch = [(PKTransactionGroupThumbnailPresenter *)v2 _contactKeysToFetch];
    v10 = [v7 initWithContactStore:v8 keysToFetch:_contactKeysToFetch];
    contactResolver = v2->_contactResolver;
    v2->_contactResolver = v10;

    v12 = [PKThumbnailCollectionViewCell alloc];
    v13 = [(PKThumbnailCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v13;
  }

  return v2;
}

- (double)thumbnailWidth
{
  v2 = PKUIGetMinScreenWidthType();
  result = dbl_1BE117130[v2 < 5];
  if (!v2)
  {
    return 65.0;
  }

  return result;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKTransactionGroupThumbnailPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKTransactionGroupThumbnailPresenterIdentifier" forIndexPath:pathCopy];
  [(PKTransactionGroupThumbnailPresenter *)self updateCell:v11 forItem:itemCopy inCollectionView:viewCopy atIndexPath:pathCopy];

  return v11;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v14 = cellCopy;
  group = [itemCopy group];
  [(PKTransactionGroupThumbnailPresenter *)self thumbnailWidth];
  v17 = v16;
  objc_initWeak(location, self);
  type = [group type];
  v19 = 0;
  anyObject = 0;
  v21 = 1;
  if (type <= 11)
  {
    if (!type)
    {
      merchantCategory = [group merchantCategory];
      v54 = PKLocalizedStringFromMerchantCategory();
      [v14 setTitle:v54];
      [v14 setIdentifier:v54];
      v55 = pathCopy;
      v56 = [MEMORY[0x1E696AD98] numberWithInteger:merchantCategory];
      v57 = [(NSCache *)self->_iconsPerMerchantCategory objectForKey:v56];
      if (!v57)
      {
        PKUIScreenScale();
        v57 = PKMapsIconForMerchantCategory();
        if (v57)
        {
          [(NSCache *)self->_iconsPerMerchantCategory setObject:v57 forKey:v56];
        }
      }

      [v14 setImage:v57 animated:0];

      anyObject = 0;
      v19 = 0;
      v21 = 1;
      pathCopy = v55;
      goto LABEL_23;
    }

    if (type != 1)
    {
      goto LABEL_23;
    }

    merchant = [group merchant];
    displayName = [merchant displayName];
    v61 = pathCopy;
    uniqueIdentifier = [merchant uniqueIdentifier];
    [v14 setTitle:displayName];
    [v14 setIdentifier:uniqueIdentifier];
    iconGenerator = self->_iconGenerator;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
    v73[3] = &unk_1E8027740;
    objc_copyWeak(&v76, location);
    v32 = uniqueIdentifier;
    v74 = v32;
    v33 = v14;
    v75 = v33;
    v34 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForMerchant:merchant size:0 ignoreLogoURL:0 requestType:v73 iconHandler:v17, v17];
    [v33 setImage:v34 animated:0];

    objc_destroyWeak(&v76);
LABEL_13:

    anyObject = 0;
    v19 = 0;
    v21 = 1;
LABEL_22:
    pathCopy = v61;
    goto LABEL_23;
  }

  switch(type)
  {
    case 12:
      handles = [group handles];
      anyObject = [handles anyObject];

      [v14 setIdentifier:anyObject];
      v36 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:anyObject];
      contactResolver = self->_contactResolver;
      if (v36)
      {
        v38 = [(PKContactResolver *)self->_contactResolver contactForHandle:anyObject];
        [(PKTransactionGroupThumbnailPresenter *)self _updateAvatarOnThumbnailCell:v14 contact:v38];
        [(PKTransactionGroupThumbnailPresenter *)self _updateTitleOnThumbnailCell:v14 withPeerPaymentCounterpartHandle:anyObject contact:v38];
      }

      else
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_3;
        v69[3] = &unk_1E8027768;
        objc_copyWeak(&v72, location);
        anyObject = anyObject;
        v70 = anyObject;
        v71 = v14;
        [(PKContactResolver *)contactResolver contactForHandle:anyObject withCompletion:v69];

        objc_destroyWeak(&v72);
      }

      v19 = 1;
      v21 = 1;
      break;
    case 13:
      regions = [group regions];
      merchant = [regions firstObject];

      displayName = [merchant localizedName];
      identifier = [merchant identifier];
      [v14 setTitle:displayName];
      [v14 setIdentifier:identifier];
      v61 = pathCopy;
      [merchant displayRegion];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      objc_initWeak(&from, v14);
      snapshotManager = self->_snapshotManager;
      traitCollection = [viewCopy traitCollection];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_5;
      v65[3] = &unk_1E8011ED8;
      objc_copyWeak(&v67, &from);
      v51 = identifier;
      v66 = v51;
      v52 = [(PKMapsSnapshotManager *)snapshotManager snapshotForDisplayRegion:traitCollection size:v65 traitCollection:v42 completion:v44, v46, v48, v17, v17];

      [v14 setImage:v52 animated:0];
      objc_destroyWeak(&v67);
      objc_destroyWeak(&from);

      goto LABEL_13;
    case 16:
      familyMember = [group familyMember];
      accountUser = [group accountUser];
      v61 = pathCopy;
      altDSID = [accountUser altDSID];
      [v14 setIdentifier:altDSID];
      avatarManager = self->_avatarManager;
      altDSID2 = [accountUser altDSID];
      v27 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:altDSID2];

      if (v27)
      {
        [v14 setImage:v27 animated:0];
      }

      else
      {
        v58 = self->_avatarManager;
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_7;
        v62[3] = &unk_1E8010AB0;
        v63 = altDSID;
        v64 = v14;
        [(PKContactAvatarManager *)v58 avatarForFamilyMember:familyMember accountUser:accountUser invitation:0 completion:v62];
      }

      userDisplayName = [group userDisplayName];
      [v14 setTitle:userDisplayName];

      anyObject = 0;
      v19 = 0;
      v21 = 0;
      goto LABEL_22;
  }

LABEL_23:
  [v14 showAvatarView:v19];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:clearColor];

  [v14 setWantsCustomAppearance:1];
  [v14 setWantsDefaultHighlightBehavior:0];
  [v14 setShowsBottomSeparator:0];
  [v14 setStrokeImage:v21];
  objc_destroyWeak(location);
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_2;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 32))
  {
    v9 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) identifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_11;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    [*(a1 + 48) setImage:*(a1 + 32) animated:1];
LABEL_11:
    WeakRetained = v9;
  }

LABEL_12:
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_4;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_10;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    [v9 _updateAvatarOnThumbnailCell:*(a1 + 40) contact:*(a1 + 48)];
    [v9 _updateTitleOnThumbnailCell:*(a1 + 40) withPeerPaymentCounterpartHandle:*(a1 + 32) contact:*(a1 + 48)];
LABEL_10:
    WeakRetained = v9;
  }

LABEL_11:
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_6;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = *(a1 + 40);
    v9 = WeakRetained;
    v4 = [WeakRetained identifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_11;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    [v9 setImage:*(a1 + 32) animated:1];
LABEL_11:
    WeakRetained = v9;
  }

LABEL_12:
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_8;
  block[3] = &unk_1E8010A88;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_8(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identifier];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_8:
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);

    [v7 setImage:v8 animated:0];
    return;
  }

  if (v4 && v5)
  {
    v6 = [v4 isEqualToString:v5];

    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  sampleCell = self->_sampleCell;
  [(PKTransactionGroupThumbnailPresenter *)self thumbnailWidth:item];

  [(PKThumbnailCollectionViewCell *)sampleCell sizeThatFits:?];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  toTraitCopy = toTrait;
  userInterfaceStyle = [trait userInterfaceStyle];
  userInterfaceStyle2 = [toTraitCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    mapsPlaceholderImage = self->_mapsPlaceholderImage;
    self->_mapsPlaceholderImage = 0;
  }

  v11 = [PKThumbnailCollectionViewCell alloc];
  v12 = [(PKThumbnailCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  sampleCell = self->_sampleCell;
  self->_sampleCell = v12;
}

- (id)_contactKeysToFetch
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v3 = _MergedGlobals_624();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v10[1] = v5;
  descriptorForRequiredKeys = [off_1EE98A6F8() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = descriptorForRequiredKeys;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (void)_updateAvatarOnThumbnailCell:(id)cell contact:(id)contact
{
  v11[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  avatarView = [cell avatarView];
  if (contactCopy)
  {
    v11[0] = contactCopy;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v11;
  }

  else
  {
    contactCopy = objc_alloc_init(MEMORY[0x1E695CF18]);
    [contactCopy setContactType:0];
    v10 = contactCopy;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v10;
  }

  v9 = [v7 arrayWithObjects:v8 count:1];

  [avatarView setContacts:v9];
}

- (void)_updateTitleOnThumbnailCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact
{
  v7 = MEMORY[0x1E69B8F30];
  cellCopy = cell;
  v9 = [v7 displayNameForCounterpartHandle:handle contact:contact];
  [cellCopy setTitle:v9];
}

@end