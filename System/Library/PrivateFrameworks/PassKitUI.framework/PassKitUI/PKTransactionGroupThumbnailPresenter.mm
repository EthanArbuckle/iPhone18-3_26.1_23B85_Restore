@interface PKTransactionGroupThumbnailPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKTransactionGroupThumbnailPresenter)init;
- (double)thumbnailWidth;
- (id)_contactKeysToFetch;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_updateAvatarOnThumbnailCell:(id)a3 contact:(id)a4;
- (void)_updateTitleOnThumbnailCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
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
    v9 = [(PKTransactionGroupThumbnailPresenter *)v2 _contactKeysToFetch];
    v10 = [v7 initWithContactStore:v8 keysToFetch:v9];
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PKTransactionGroupThumbnailPresenterIdentifier" forIndexPath:v8];
  [(PKTransactionGroupThumbnailPresenter *)self updateCell:v11 forItem:v10 inCollectionView:v9 atIndexPath:v8];

  return v11;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  v15 = [v11 group];
  [(PKTransactionGroupThumbnailPresenter *)self thumbnailWidth];
  v17 = v16;
  objc_initWeak(location, self);
  v18 = [v15 type];
  v19 = 0;
  v20 = 0;
  v21 = 1;
  if (v18 <= 11)
  {
    if (!v18)
    {
      v53 = [v15 merchantCategory];
      v54 = PKLocalizedStringFromMerchantCategory();
      [v14 setTitle:v54];
      [v14 setIdentifier:v54];
      v55 = v13;
      v56 = [MEMORY[0x1E696AD98] numberWithInteger:v53];
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

      v20 = 0;
      v19 = 0;
      v21 = 1;
      v13 = v55;
      goto LABEL_23;
    }

    if (v18 != 1)
    {
      goto LABEL_23;
    }

    v28 = [v15 merchant];
    v29 = [v28 displayName];
    v61 = v13;
    v30 = [v28 uniqueIdentifier];
    [v14 setTitle:v29];
    [v14 setIdentifier:v30];
    iconGenerator = self->_iconGenerator;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
    v73[3] = &unk_1E8027740;
    objc_copyWeak(&v76, location);
    v32 = v30;
    v74 = v32;
    v33 = v14;
    v75 = v33;
    v34 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForMerchant:v28 size:0 ignoreLogoURL:0 requestType:v73 iconHandler:v17, v17];
    [v33 setImage:v34 animated:0];

    objc_destroyWeak(&v76);
LABEL_13:

    v20 = 0;
    v19 = 0;
    v21 = 1;
LABEL_22:
    v13 = v61;
    goto LABEL_23;
  }

  switch(v18)
  {
    case 12:
      v35 = [v15 handles];
      v20 = [v35 anyObject];

      [v14 setIdentifier:v20];
      v36 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v20];
      contactResolver = self->_contactResolver;
      if (v36)
      {
        v38 = [(PKContactResolver *)self->_contactResolver contactForHandle:v20];
        [(PKTransactionGroupThumbnailPresenter *)self _updateAvatarOnThumbnailCell:v14 contact:v38];
        [(PKTransactionGroupThumbnailPresenter *)self _updateTitleOnThumbnailCell:v14 withPeerPaymentCounterpartHandle:v20 contact:v38];
      }

      else
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_3;
        v69[3] = &unk_1E8027768;
        objc_copyWeak(&v72, location);
        v20 = v20;
        v70 = v20;
        v71 = v14;
        [(PKContactResolver *)contactResolver contactForHandle:v20 withCompletion:v69];

        objc_destroyWeak(&v72);
      }

      v19 = 1;
      v21 = 1;
      break;
    case 13:
      v39 = [v15 regions];
      v28 = [v39 firstObject];

      v29 = [v28 localizedName];
      v40 = [v28 identifier];
      [v14 setTitle:v29];
      [v14 setIdentifier:v40];
      v61 = v13;
      [v28 displayRegion];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      objc_initWeak(&from, v14);
      snapshotManager = self->_snapshotManager;
      v50 = [v12 traitCollection];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __88__PKTransactionGroupThumbnailPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke_5;
      v65[3] = &unk_1E8011ED8;
      objc_copyWeak(&v67, &from);
      v51 = v40;
      v66 = v51;
      v52 = [(PKMapsSnapshotManager *)snapshotManager snapshotForDisplayRegion:v50 size:v65 traitCollection:v42 completion:v44, v46, v48, v17, v17];

      [v14 setImage:v52 animated:0];
      objc_destroyWeak(&v67);
      objc_destroyWeak(&from);

      goto LABEL_13;
    case 16:
      v22 = [v15 familyMember];
      v23 = [v15 accountUser];
      v61 = v13;
      v24 = [v23 altDSID];
      [v14 setIdentifier:v24];
      avatarManager = self->_avatarManager;
      v26 = [v23 altDSID];
      v27 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:v26];

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
        v63 = v24;
        v64 = v14;
        [(PKContactAvatarManager *)v58 avatarForFamilyMember:v22 accountUser:v23 invitation:0 completion:v62];
      }

      v59 = [v15 userDisplayName];
      [v14 setTitle:v59];

      v20 = 0;
      v19 = 0;
      v21 = 0;
      goto LABEL_22;
  }

LABEL_23:
  [v14 showAvatarView:v19];
  v60 = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:v60];

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

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  sampleCell = self->_sampleCell;
  [(PKTransactionGroupThumbnailPresenter *)self thumbnailWidth:a3];

  [(PKThumbnailCollectionViewCell *)sampleCell sizeThatFits:?];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v7 = a4;
  v8 = [a3 userInterfaceStyle];
  v9 = [v7 userInterfaceStyle];

  if (v8 != v9)
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
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v10[1] = v5;
  v6 = [off_1EE98A6F8() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (void)_updateAvatarOnThumbnailCell:(id)a3 contact:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 avatarView];
  if (v5)
  {
    v11[0] = v5;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v11;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v5 setContactType:0];
    v10 = v5;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v10;
  }

  v9 = [v7 arrayWithObjects:v8 count:1];

  [v6 setContacts:v9];
}

- (void)_updateTitleOnThumbnailCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5
{
  v7 = MEMORY[0x1E69B8F30];
  v8 = a3;
  v9 = [v7 displayNameForCounterpartHandle:a4 contact:a5];
  [v8 setTitle:v9];
}

@end