@interface PKPaymentTransactionCellController
- (PKPaymentTransactionCellController)initWithContactResolver:(id)resolver context:(unint64_t)context;
- (void)_updateAvatarOnTransactionCell:(id)cell withTransaction:(id)transaction contact:(id)contact;
- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact transaction:(id)transaction;
- (void)configureCell:(id)cell forTransaction:(id)transaction transactionSource:(id)source familyMember:(id)member account:(id)account detailStyle:(int64_t)style deviceName:(id)name avatarViewDelegate:(id)self0;
@end

@implementation PKPaymentTransactionCellController

- (PKPaymentTransactionCellController)initWithContactResolver:(id)resolver context:(unint64_t)context
{
  resolverCopy = resolver;
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionCellController;
  v8 = [(PKPaymentTransactionCellController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactResolver, resolver);
    v10 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v9->_iconGenerator;
    v9->_iconGenerator = v10;

    v9->_context = context;
    v12 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    emptyImage = v9->_emptyImage;
    v9->_emptyImage = v12;

    v14 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
    counterpartImageResolver = v9->_counterpartImageResolver;
    v9->_counterpartImageResolver = v14;
  }

  return v9;
}

- (void)configureCell:(id)cell forTransaction:(id)transaction transactionSource:(id)source familyMember:(id)member account:(id)account detailStyle:(int64_t)style deviceName:(id)name avatarViewDelegate:(id)self0
{
  cellCopy = cell;
  transactionCopy = transaction;
  sourceCopy = source;
  memberCopy = member;
  accountCopy = account;
  v21 = sourceCopy;
  nameCopy = name;
  delegateCopy = delegate;
  identifier = [transactionCopy identifier];
  [cellCopy setIdentifier:?];
  transactionType = [transactionCopy transactionType];
  peerPaymentCounterpartHandle = [transactionCopy peerPaymentCounterpartHandle];
  v93 = v21;
  v89 = accountCopy;
  v90 = memberCopy;
  v88 = nameCopy;
  v24 = [MEMORY[0x1E69B8EB8] presentationInformationForTransaction:transactionCopy transactionSource:v21 secondaryTransactionSource:0 familyMember:memberCopy account:accountCopy deviceName:nameCopy context:self->_context];
  if (style == 2)
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    secondaryLabelColor = 0;
  }

  valueString = [v24 valueString];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = v27;
  v87 = secondaryLabelColor;
  if (secondaryLabelColor)
  {
    v29 = secondaryLabelColor;
  }

  else
  {
    v29 = v95;
  }

  [v27 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v28 setObject:clearColor forKeyedSubscript:*MEMORY[0x1E69DB600]];

  if ([v24 shouldStrikeValue])
  {
    [v28 setObject:&unk_1F3CC7268 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }

  v86 = valueString;
  if ([valueString length])
  {
    v31 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = [v28 copy];
    v33 = [v31 initWithString:valueString attributes:v32];

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  transactionView = [cellCopy transactionView];
  primaryString = [v24 primaryString];
  [transactionView setPrimaryString:primaryString];

  secondaryString = [v24 secondaryString];
  [transactionView setSecondaryString:secondaryString];

  tertiaryString = [v24 tertiaryString];
  [transactionView setTertiaryString:tertiaryString];

  [transactionView setTransactionValueAttributedText:v34];
  badgeString = [v24 badgeString];
  [transactionView setBadgeString:badgeString];

  [transactionView setShowsDisclosureView:0];
  secondaryBadgeSymbol = [v24 secondaryBadgeSymbol];
  [transactionView setSecondaryBadgeSymbol:secondaryBadgeSymbol];

  [transactionView setPrimaryColor:v95];
  if ([v24 destructiveSecondaryString])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v41 = ;
  [transactionView setSecondaryColor:v41];

  if (self->_context)
  {
    isBankConnectTransaction = [transactionCopy isBankConnectTransaction];
  }

  else
  {
    isBankConnectTransaction = 1;
  }

  if (transactionType == 3 && isBankConnectTransaction && [transactionCopy peerPaymentType] != 6)
  {
    v85 = v34;
    [transactionView setShowsAvatarView:1];
    [transactionView setPrimaryImage:0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    _supportsForceTouch = [currentDevice _supportsForceTouch];

    if (_supportsForceTouch)
    {
      avatarView = [transactionView avatarView];
      [avatarView setUserInteractionEnabled:1];
      [avatarView setDelegate:delegateCopy];
      [avatarView setForcePressView:avatarView];
    }

    peerPaymentCounterpartImageRecordIdentifier = [transactionCopy peerPaymentCounterpartImageRecordIdentifier];
    peerPaymentPaymentMode = [transactionCopy peerPaymentPaymentMode];
    if (peerPaymentCounterpartImageRecordIdentifier)
    {
      v55 = peerPaymentPaymentMode == 2;
    }

    else
    {
      v55 = 0;
    }

    if (peerPaymentPaymentMode == 2)
    {
      v56 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD08]];
      v57 = MEMORY[0x1E69DCAD8];
      [v56 scaledValueForValue:9.0];
      v58 = [v57 configurationWithPointSize:2 weight:?];
      [transactionView setSecondaryBadgeSymbolConfiguration:v58];
    }

    if (!v55)
    {
      v64 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:peerPaymentCounterpartHandle];
      contactResolver = self->_contactResolver;
      if (v64)
      {
        v66 = [(PKContactResolver *)self->_contactResolver contactForHandle:peerPaymentCounterpartHandle];
        [(PKPaymentTransactionCellController *)self _updateAvatarOnTransactionCell:cellCopy withTransaction:transactionCopy contact:v66];
        [(PKPaymentTransactionCellController *)self _updatePrimaryLabelOnTransactionCell:cellCopy withPeerPaymentCounterpartHandle:peerPaymentCounterpartHandle contact:v66 transaction:transactionCopy];
      }

      else
      {
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_4;
        v101[3] = &unk_1E8017E70;
        v102 = cellCopy;
        v103 = identifier;
        selfCopy = self;
        v105 = transactionCopy;
        v106 = peerPaymentCounterpartHandle;
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
    v59 = cellCopy;
    v112 = v59;
    v113 = transactionCopy;
    v114 = peerPaymentCounterpartHandle;
    v60 = _Block_copy(aBlock);
    v61 = [(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver hasCachedImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier];
    v34 = v85;
    counterpartImageResolver = self->_counterpartImageResolver;
    if (v61)
    {
      v63 = [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier];
      v60[2](v60, v63);
    }

    else
    {
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_2;
      v107[3] = &unk_1E8017E48;
      v108 = v59;
      v109 = identifier;
      v110 = v60;
      [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier completion:v107];

      v63 = v108;
    }

    v67 = &v115;
LABEL_55:
    objc_destroyWeak(v67);
    objc_destroyWeak(location);
LABEL_56:

    goto LABEL_57;
  }

  if (isBankConnectTransaction)
  {
    [transactionView setShowsAvatarView:0];
    type = [v93 type];
    if ((type - 1) < 3)
    {
      goto LABEL_51;
    }

    if (!type)
    {
      v84 = v28;
      paymentPass = [v93 paymentPass];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      context = [mEMORY[0x1E69B8EF8] context];
      configuration = [context configuration];

      issuerCountryCode = [paymentPass issuerCountryCode];
      v82 = [configuration paymentTransactionIconsEnabledForRegion:issuerCountryCode];

      cardType = [paymentPass cardType];
      associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
      if (associatedAccountServiceAccountIdentifier || ([paymentPass hasAssociatedPeerPaymentAccount] & 1) != 0 || ((cardType == 1) & v82) != 0 || (objc_msgSend(paymentPass, "isStoredValuePass") & 1) != 0)
      {

        v28 = v84;
        goto LABEL_51;
      }

      isIdentityPass = [paymentPass isIdentityPass];

      v28 = v84;
      if (isIdentityPass)
      {
        goto LABEL_51;
      }
    }

    if (([transactionCopy isBankConnectTransaction] & 1) != 0 || objc_msgSend(transactionCopy, "peerPaymentType") == 6)
    {
LABEL_51:
      objc_initWeak(location, self);
      iconGenerator = self->_iconGenerator;
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __148__PKPaymentTransactionCellController_configureCell_forTransaction_transactionSource_familyMember_account_detailStyle_deviceName_avatarViewDelegate___block_invoke_6;
      v96[3] = &unk_1E8017E98;
      objc_copyWeak(&v100, location);
      v97 = cellCopy;
      v98 = identifier;
      v70 = transactionView;
      v99 = v70;
      peerPaymentCounterpartImageRecordIdentifier = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:transactionCopy size:0 ignoreLogoURL:0 requestType:v96 iconHandler:38.0, 38.0];
      if (peerPaymentCounterpartImageRecordIdentifier)
      {
        [v70 setPrimaryImage:peerPaymentCounterpartImageRecordIdentifier animated:0];
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
  primaryImage = [transactionView primaryImage];
  if (primaryImage)
  {
    v72 = primaryImage;
    v73 = _UISolariumFeatureFlagEnabled();

    if (v73)
    {
      [cellCopy separatorInset];
      v75 = v74;
      v77 = v76;
      primaryImage2 = [transactionView primaryImage];
      v79 = 16.0;
      if (primaryImage2)
      {
        v79 = 67.0;
      }

      [cellCopy setSeparatorInset:{v75, v79, v77, 16.0}];
    }
  }

  shouldShowDisclosure = [v24 shouldShowDisclosure];
  if (shouldShowDisclosure)
  {
    v81 = 3;
  }

  else
  {
    v81 = 0;
  }

  [transactionView setShowsDisclosureView:shouldShowDisclosure];
  [cellCopy setSelectionStyle:v81];
  PKAccessibilityIDCellSet(cellCopy, *MEMORY[0x1E69B9D38]);
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

- (void)_updateAvatarOnTransactionCell:(id)cell withTransaction:(id)transaction contact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  cellCopy = cell;
  peerPaymentCounterpartHandle = [transaction peerPaymentCounterpartHandle];
  transactionView = [cellCopy transactionView];

  avatarView = [transactionView avatarView];

  if (contactCopy)
  {
    v15[0] = contactCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (peerPaymentCounterpartHandle)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v13 setContactType:0];
    v14 = v13;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

    if (v12)
    {
LABEL_6:
      [avatarView setContacts:v12];
    }
  }

LABEL_7:
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact transaction:(id)transaction
{
  cellCopy = cell;
  handleCopy = handle;
  contactCopy = contact;
  v11 = handleCopy;
  peerPaymentPaymentMode = [transaction peerPaymentPaymentMode];
  v13 = v11;
  if (peerPaymentPaymentMode != 2)
  {
    v13 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v11 contact:contactCopy];
  }

  transactionView = [cellCopy transactionView];
  [transactionView setPrimaryString:v13];
}

@end