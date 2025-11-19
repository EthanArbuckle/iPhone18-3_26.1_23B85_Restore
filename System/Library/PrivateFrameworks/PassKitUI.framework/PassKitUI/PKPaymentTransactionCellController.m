@interface PKPaymentTransactionCellController
- (PKPaymentTransactionCellController)initWithContactResolver:(id)a3 context:(unint64_t)a4;
- (void)_updateAvatarOnTransactionCell:(id)a3 withTransaction:(id)a4 contact:(id)a5;
- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5 transaction:(id)a6;
- (void)configureCell:(id)a3 forTransaction:(id)a4 transactionSource:(id)a5 familyMember:(id)a6 account:(id)a7 detailStyle:(int64_t)a8 deviceName:(id)a9 avatarViewDelegate:(id)a10;
@end

@implementation PKPaymentTransactionCellController

- (PKPaymentTransactionCellController)initWithContactResolver:(id)a3 context:(unint64_t)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionCellController;
  v8 = [(PKPaymentTransactionCellController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactResolver, a3);
    v10 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v9->_iconGenerator;
    v9->_iconGenerator = v10;

    v9->_context = a4;
    v12 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    emptyImage = v9->_emptyImage;
    v9->_emptyImage = v12;

    v14 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
    counterpartImageResolver = v9->_counterpartImageResolver;
    v9->_counterpartImageResolver = v14;
  }

  return v9;
}

- (void)configureCell:(id)a3 forTransaction:(id)a4 transactionSource:(id)a5 familyMember:(id)a6 account:(id)a7 detailStyle:(int64_t)a8 deviceName:(id)a9 avatarViewDelegate:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v18;
  v22 = a9;
  v91 = a10;
  v94 = [v17 identifier];
  [v16 setIdentifier:?];
  v23 = [v17 transactionType];
  v92 = [v17 peerPaymentCounterpartHandle];
  v93 = v21;
  v89 = v20;
  v90 = v19;
  v88 = v22;
  v24 = [MEMORY[0x1E69B8EB8] presentationInformationForTransaction:v17 transactionSource:v21 secondaryTransactionSource:0 familyMember:v19 account:v20 deviceName:v22 context:self->_context];
  if (a8 == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v95 = ;
  if ([v24 shouldGrayValue])
  {
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v25 = 0;
  }

  v26 = [v24 valueString];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = v27;
  v87 = v25;
  if (v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v95;
  }

  [v27 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  v30 = [MEMORY[0x1E69DC888] clearColor];
  [v28 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69DB600]];

  if ([v24 shouldStrikeValue])
  {
    [v28 setObject:&unk_1F3CC7268 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }

  v86 = v26;
  if ([v26 length])
  {
    v31 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = [v28 copy];
    v33 = [v31 initWithString:v26 attributes:v32];

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = [v16 transactionView];
  v36 = [v24 primaryString];
  [v35 setPrimaryString:v36];

  v37 = [v24 secondaryString];
  [v35 setSecondaryString:v37];

  v38 = [v24 tertiaryString];
  [v35 setTertiaryString:v38];

  [v35 setTransactionValueAttributedText:v34];
  v39 = [v24 badgeString];
  [v35 setBadgeString:v39];

  [v35 setShowsDisclosureView:0];
  v40 = [v24 secondaryBadgeSymbol];
  [v35 setSecondaryBadgeSymbol:v40];

  [v35 setPrimaryColor:v95];
  if ([v24 destructiveSecondaryString])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v41 = ;
  [v35 setSecondaryColor:v41];

  if (self->_context)
  {
    v42 = [v17 isBankConnectTransaction];
  }

  else
  {
    v42 = 1;
  }

  if (v23 == 3 && v42 && [v17 peerPaymentType] != 6)
  {
    v85 = v34;
    [v35 setShowsAvatarView:1];
    [v35 setPrimaryImage:0];
    v50 = [MEMORY[0x1E69DC938] currentDevice];
    v51 = [v50 _supportsForceTouch];

    if (v51)
    {
      v52 = [v35 avatarView];
      [v52 setUserInteractionEnabled:1];
      [v52 setDelegate:v91];
      [v52 setForcePressView:v52];
    }

    v53 = [v17 peerPaymentCounterpartImageRecordIdentifier];
    v54 = [v17 peerPaymentPaymentMode];
    if (v53)
    {
      v55 = v54 == 2;
    }

    else
    {
      v55 = 0;
    }

    if (v54 == 2)
    {
      v56 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD08]];
      v57 = MEMORY[0x1E69DCAD8];
      [v56 scaledValueForValue:9.0];
      v58 = [v57 configurationWithPointSize:2 weight:?];
      [v35 setSecondaryBadgeSymbolConfiguration:v58];
    }

    if (!v55)
    {
      v64 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v92];
      contactResolver = self->_contactResolver;
      if (v64)
      {
        v66 = [(PKContactResolver *)self->_contactResolver contactForHandle:v92];
        [(PKPaymentTransactionCellController *)self _updateAvatarOnTransactionCell:v16 withTransaction:v17 contact:v66];
        [(PKPaymentTransactionCellController *)self _updatePrimaryLabelOnTransactionCell:v16 withPeerPaymentCounterpartHandle:v92 contact:v66 transaction:v17];
      }

      else
      {
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_4;
        v101[3] = &unk_1E8017E70;
        v102 = v16;
        v103 = v94;
        v104 = self;
        v105 = v17;
        v106 = v92;
        [(PKContactResolver *)contactResolver contactForHandle:v106 withCompletion:v101];
      }

      v34 = v85;
      goto LABEL_56;
    }

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke;
    aBlock[3] = &unk_1E8017E20;
    objc_copyWeak(&v115, location);
    v59 = v16;
    v112 = v59;
    v113 = v17;
    v114 = v92;
    v60 = _Block_copy(aBlock);
    v61 = [(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver hasCachedImageDataForIdentifier:v53];
    v34 = v85;
    counterpartImageResolver = self->_counterpartImageResolver;
    if (v61)
    {
      v63 = [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:v53];
      v60[2](v60, v63);
    }

    else
    {
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_2;
      v107[3] = &unk_1E8017E48;
      v108 = v59;
      v109 = v94;
      v110 = v60;
      [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:v53 completion:v107];

      v63 = v108;
    }

    v67 = &v115;
LABEL_55:
    objc_destroyWeak(v67);
    objc_destroyWeak(location);
LABEL_56:

    goto LABEL_57;
  }

  if (v42)
  {
    [v35 setShowsAvatarView:0];
    v43 = [v93 type];
    if ((v43 - 1) < 3)
    {
      goto LABEL_51;
    }

    if (!v43)
    {
      v84 = v28;
      v44 = [v93 paymentPass];
      v45 = [MEMORY[0x1E69B8EF8] sharedService];
      v46 = [v45 context];
      v47 = [v46 configuration];

      v48 = [v44 issuerCountryCode];
      v82 = [v47 paymentTransactionIconsEnabledForRegion:v48];

      v83 = [v44 cardType];
      v49 = [v44 associatedAccountServiceAccountIdentifier];
      if (v49 || ([v44 hasAssociatedPeerPaymentAccount] & 1) != 0 || ((v83 == 1) & v82) != 0 || (objc_msgSend(v44, "isStoredValuePass") & 1) != 0)
      {

        v28 = v84;
        goto LABEL_51;
      }

      v68 = [v44 isIdentityPass];

      v28 = v84;
      if (v68)
      {
        goto LABEL_51;
      }
    }

    if (([v17 isBankConnectTransaction] & 1) != 0 || objc_msgSend(v17, "peerPaymentType") == 6)
    {
LABEL_51:
      objc_initWeak(location, self);
      iconGenerator = self->_iconGenerator;
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_6;
      v96[3] = &unk_1E8017E98;
      objc_copyWeak(&v100, location);
      v97 = v16;
      v98 = v94;
      v70 = v35;
      v99 = v70;
      v53 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:v17 size:0 ignoreLogoURL:0 requestType:v96 iconHandler:38.0, 38.0];
      if (v53)
      {
        [v70 setPrimaryImage:v53 animated:0];
      }

      else
      {
        [v70 setPrimaryImage:self->_emptyImage animated:0];
      }

      v67 = &v100;
      goto LABEL_55;
    }
  }

LABEL_57:
  v71 = [v35 primaryImage];
  if (v71)
  {
    v72 = v71;
    v73 = _UISolariumFeatureFlagEnabled();

    if (v73)
    {
      [v16 separatorInset];
      v75 = v74;
      v77 = v76;
      v78 = [v35 primaryImage];
      v79 = 16.0;
      if (v78)
      {
        v79 = 67.0;
      }

      [v16 setSeparatorInset:{v75, v79, v77, 16.0}];
    }
  }

  v80 = [v24 shouldShowDisclosure];
  if (v80)
  {
    v81 = 3;
  }

  else
  {
    v81 = 0;
  }

  [v35 setShowsDisclosureView:v80];
  [v16 setSelectionStyle:v81];
  PKAccessibilityIDCellSet(v16, *MEMORY[0x1E69B9D38]);
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v4 setImageData:v3];

  [WeakRetained _updateAvatarOnTransactionCell:*(a1 + 32) withTransaction:*(a1 + 40) contact:v4];
  [WeakRetained _updatePrimaryLabelOnTransactionCell:*(a1 + 32) withPeerPaymentCounterpartHandle:*(a1 + 48) contact:v4 transaction:*(a1 + 40)];
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_3;
  v5[3] = &unk_1E8011D78;
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 40);
  v9 = v2;
  v4 = v3;
  if (v9 == v4)
  {

    goto LABEL_10;
  }

  if (v9)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
  }

  else
  {
    v6 = [v9 isEqualToString:v4];

    if (v6)
    {
LABEL_10:
      v7 = *(a1 + 48);

      if (v7)
      {
        v8 = *(*(a1 + 56) + 16);

        v8();
      }

      return;
    }
  }
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_5;
  block[3] = &unk_1E8015288;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v9;
  v13 = v3;
  v14 = *(a1 + 64);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 40);
  v12 = v2;
  v4 = v3;
  if (v12 == v4)
  {

LABEL_12:
    [*(a1 + 48) _updateAvatarOnTransactionCell:*(a1 + 32) withTransaction:*(a1 + 56) contact:*(a1 + 64)];
    v7 = *(a1 + 32);
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);

    [v10 _updatePrimaryLabelOnTransactionCell:v7 withPeerPaymentCounterpartHandle:v8 contact:v9 transaction:v11];
    return;
  }

  if (v12)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v12 isEqualToString:v4];

    if (!v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_6(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_7;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v10, a1 + 7);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
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
      [*(a1 + 48) setPrimaryImage:*(a1 + 56) animated:1];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_updateAvatarOnTransactionCell:(id)a3 withTransaction:(id)a4 contact:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [a4 peerPaymentCounterpartHandle];
  v10 = [v8 transactionView];

  v11 = [v10 avatarView];

  if (v7)
  {
    v15[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v13 setContactType:0];
    v14 = v13;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

    if (v12)
    {
LABEL_6:
      [v11 setContacts:v12];
    }
  }

LABEL_7:
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5 transaction:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = [a6 peerPaymentPaymentMode];
  v13 = v11;
  if (v12 != 2)
  {
    v13 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v11 contact:v10];
  }

  v14 = [v15 transactionView];
  [v14 setPrimaryString:v13];
}

@end