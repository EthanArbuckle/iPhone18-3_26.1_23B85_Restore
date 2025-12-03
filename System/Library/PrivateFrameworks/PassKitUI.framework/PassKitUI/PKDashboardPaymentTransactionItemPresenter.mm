@interface PKDashboardPaymentTransactionItemPresenter
- (BOOL)_shouldShowIconForTransactionSource:(id)source transaction:(id)transaction context:(unint64_t)context;
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (BOOL)hideSeparatorForItem:(id)item inCollectionView:(id)view;
- (CGSize)_imageSize;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPaymentTransactionItemPresenter)initWithContext:(unint64_t)context detailViewStyle:(int64_t)style avatarViewDelegate:(id)delegate;
- (PKDashboardPaymentTransactionItemPresenterDelegate)delegate;
- (id)_contactKeysToFetch;
- (id)appleCardImage;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)dailyCashImage;
- (id)savingsInterestImage;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)separatorInsetsForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_applyRewardsInfo:(id)info isFeaturedTransaction:(BOOL)transaction fromTransaction:(id)fromTransaction hideBadgeBackground:(BOOL *)background;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_updateAvatarOnTransactionCell:(id)cell withTransaction:(id)transaction contact:(id)contact;
- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact transaction:(id)transaction;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)prefetchForItem:(id)item inCollectionView:(id)view;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardPaymentTransactionItemPresenter

- (PKDashboardPaymentTransactionItemPresenter)initWithContext:(unint64_t)context detailViewStyle:(int64_t)style avatarViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = PKDashboardPaymentTransactionItemPresenter;
  v9 = [(PKDashboardPaymentTransactionItemPresenter *)&v34 init];
  v10 = v9;
  if (v9)
  {
    v9->_context = context;
    objc_storeWeak(&v9->_avatarViewDelegate, delegateCopy);
    v11 = [PKPaymentTransactionCollectionViewCell alloc];
    v12 = [(PKPaymentTransactionCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v10->_sampleCell;
    v10->_sampleCell = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    emptyImage = v10->_emptyImage;
    v10->_emptyImage = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v17 = objc_alloc(MEMORY[0x1E69B8740]);
    _contactKeysToFetch = [(PKDashboardPaymentTransactionItemPresenter *)v10 _contactKeysToFetch];
    v19 = [v17 initWithContactStore:v16 keysToFetch:_contactKeysToFetch];
    contactResolver = v10->_contactResolver;
    v10->_contactResolver = v19;

    v21 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v10->_iconGenerator;
    v10->_iconGenerator = v21;

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    dataProvider = v10->_dataProvider;
    v10->_dataProvider = defaultDataProvider;

    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v26 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v10->_contactResolver peerPaymentWebService:mEMORY[0x1E69B9020] paymentServiceDataProvider:v10->_dataProvider detailViewStyle:style context:v10->_context];
    transactionDetailsFactory = v10->_transactionDetailsFactory;
    v10->_transactionDetailsFactory = v26;

    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v10->_useAccessibilityLayout = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v29 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
    counterpartImageResolver = v10->_counterpartImageResolver;
    v10->_counterpartImageResolver = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    preferredTransactionCategoryImageCache = v10->_preferredTransactionCategoryImageCache;
    v10->_preferredTransactionCategoryImageCache = v31;
  }

  return v10;
}

- (id)_contactKeysToFetch
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v3 = _MergedGlobals_621();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v10[1] = v5;
  descriptorForRequiredKeys = [off_1EE98A6A0() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = descriptorForRequiredKeys;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"transactionItemPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  toTraitCopy = toTrait;
  if (trait)
  {
    if (toTraitCopy)
    {
      v15 = toTraitCopy;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v15 preferredContentSizeCategory];
      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

      toTraitCopy = v15;
      if (v10)
      {
        preferredContentSizeCategory3 = [v15 preferredContentSizeCategory];
        self->_useAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory3, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;

        v12 = [PKPaymentTransactionCollectionViewCell alloc];
        v13 = [(PKPaymentTransactionCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v13;

        toTraitCopy = v15;
      }
    }
  }
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  transaction = [item transaction];
  v6 = [transaction transactionType] != 12;

  return v6;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  v46[4] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  v10 = itemCopy;
  transaction = [v10 transaction];
  if ([transaction transactionType] == 15)
  {
    v12 = MEMORY[0x1E69B8540];
    v13 = *MEMORY[0x1E69BB6F8];
    v14 = *MEMORY[0x1E69BA6F0];
    v15 = *MEMORY[0x1E69BABE8];
    v45[0] = *MEMORY[0x1E69BA680];
    v45[1] = v15;
    v16 = *MEMORY[0x1E69BAC98];
    v46[0] = v14;
    v46[1] = v16;
    v17 = *MEMORY[0x1E69BAC90];
    v45[2] = *MEMORY[0x1E69BA440];
    v45[3] = v17;
    v18 = *MEMORY[0x1E69BA980];
    v46[2] = *MEMORY[0x1E69BA2A8];
    v46[3] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];
    [v12 subject:v13 sendEvent:v19];
  }

  transactionSourceCollection = [v10 transactionSourceCollection];
  familyCollection = [v10 familyCollection];
  account = [v10 account];
  accountUserCollection = [v10 accountUserCollection];
  physicalCards = [v10 physicalCards];
  v43 = accountUserCollection;
  if (([transaction peerPaymentType] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    recurringPeerPayment = [transaction recurringPeerPayment];
    v25 = objc_alloc(MEMORY[0x1E69B8F28]);
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v27 = [v25 initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];

    account2 = [v27 account];
    WeakRetained = [account2 recurringPaymentsFeatureDescriptor];

    v30 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    [recurringPeerPayment recipientAddress];
    v42 = transaction;
    v31 = controllerCopy;
    v32 = account;
    v33 = familyCollection;
    v35 = v34 = transactionSourceCollection;
    v36 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v30 initWithRecurringPayment:recurringPeerPayment recipientAddress:v35 mode:2 context:0 peerPaymentController:v27 remoteMessagesComposer:0];

    minimumAmount = [WeakRetained minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v36 setMinimumAmount:minimumAmount];

    maximumAmount = [WeakRetained maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v36 setMaximumAmount:maximumAmount];

    transactionSourceCollection = v34;
    familyCollection = v33;
    account = v32;
    controllerCopy = v31;
    transaction = v42;
    [controllerCopy pushViewController:v36 animated:1];
  }

  else
  {
    recurringPeerPayment = [v10 bankConnectInstitution];
    transactionDetailsFactory = self->_transactionDetailsFactory;
    group = [v10 group];
    v27 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:transaction sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection bankConnectInstitution:recurringPeerPayment physicalCards:physicalCards group:group navigationController:controllerCopy];

    if ([controllerCopy pk_settings_useStateDrivenNavigation])
    {
      [controllerCopy pk_settings_pushViewController:v27];
    }

    else
    {
      [controllerCopy pushViewController:v27 animated:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transactionItemPresenter:self didSelectTransactionItem:v10];
  }
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"transactionItemPresenter" forIndexPath:pathCopy];
  [(PKDashboardPaymentTransactionItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  transaction = [itemCopy transaction];
  transactionSourceCollection = [itemCopy transactionSourceCollection];
  transactionSourceIdentifier = [transaction transactionSourceIdentifier];
  v47 = transactionSourceCollection;
  v12 = [transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  deviceName = [(PKPaymentDefaultDataProvider *)self->_dataProvider deviceName];
  v14 = deviceName;
  if (deviceName)
  {
    v15 = deviceName;
  }

  else
  {
    v15 = PKDeviceName();
  }

  v16 = v15;

  familyCollection = [itemCopy familyCollection];
  v17 = [familyCollection familyMemberForTransactionSource:v12];
  v18 = MEMORY[0x1E69B8EB8];
  secondaryTransactionSource = [itemCopy secondaryTransactionSource];
  account = [itemCopy account];
  context = self->_context;
  LOBYTE(v42) = [itemCopy shouldDisplayTransactionSource];
  v44 = v17;
  v46 = v16;
  v22 = [v18 presentationInformationForTransaction:transaction transactionSource:v12 secondaryTransactionSource:secondaryTransactionSource familyMember:v17 account:account deviceName:v16 context:context shouldDisplayTransactionSource:v42];

  valueString = [v22 valueString];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = v24;
  if ([valueString length])
  {
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [v24 copy];
    v27 = [v25 initWithString:valueString attributes:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v12 transaction:transaction context:self->_context];
  -[PKDashboardPaymentTransactionItemPresenter _applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:](self, "_applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:", v22, [itemCopy isFeaturedTransaction], transaction, 0);
  transactionView = [(PKPaymentTransactionCollectionViewCell *)self->_sampleCell transactionView];
  primaryString = [v22 primaryString];
  [transactionView setPrimaryString:primaryString];

  secondaryString = [v22 secondaryString];
  [transactionView setSecondaryString:secondaryString];

  tertiaryString = [v22 tertiaryString];
  [transactionView setTertiaryString:tertiaryString];

  [transactionView setTransactionValueAttributedText:v27];
  if (self->_context - 3 > 1 || ([transaction transactionStatus] & 0xFFFFFFFFFFFFFFF7) != 0)
  {
    badgeString = [v22 badgeString];
    [transactionView setBadgeString:badgeString];
  }

  else
  {
    [transactionView setTransactionValueAttributedText:0];
  }

  [transactionView setShowsDisclosureView:{objc_msgSend(v22, "shouldShowDisclosure")}];
  secondaryBadgeSymbol = [v22 secondaryBadgeSymbol];
  [transactionView setSecondaryBadgeSymbol:secondaryBadgeSymbol];

  if (v28)
  {
    emptyImage = self->_emptyImage;
  }

  else
  {
    emptyImage = 0;
  }

  [transactionView setPrimaryImage:emptyImage];
  [(PKPaymentTransactionCollectionViewCell *)self->_sampleCell sizeThatFits:width, 3.40282347e38];
  v37 = v36;
  v39 = v38;

  v40 = v37;
  v41 = v39;
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)prefetchForItem:(id)item inCollectionView:(id)view
{
  itemCopy = item;
  transaction = [itemCopy transaction];
  transactionSourceCollection = [itemCopy transactionSourceCollection];

  transactionSourceIdentifier = [transaction transactionSourceIdentifier];
  v8 = [transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  if ([(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v8 transaction:transaction context:self->_context])
  {
    iconGenerator = self->_iconGenerator;
    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v10 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:transaction size:0 ignoreLogoURL:1 requestType:&__block_literal_global_121 iconHandler:?];
  }
}

- (BOOL)hideSeparatorForItem:(id)item inCollectionView:(id)view
{
  itemCopy = item;
  if ([itemCopy isFeaturedTransaction])
  {
    transaction = [itemCopy transaction];
    preferredLocation = [transaction preferredLocation];
    v7 = preferredLocation != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)separatorInsetsForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  transaction = [itemCopy transaction];
  transactionSourceCollection = [itemCopy transactionSourceCollection];
  transactionSourceIdentifier = [transaction transactionSourceIdentifier];
  v12 = [transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  LOBYTE(transactionSourceIdentifier) = [(PKDashboardPaymentTransactionItemPresenter *)self hideSeparatorForItem:itemCopy inCollectionView:viewCopy];
  if ((transactionSourceIdentifier & 1) == 0 && [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v12 transaction:transaction context:self->_context]&& _UISolariumFeatureFlagEnabled())
  {
    v13 = [MEMORY[0x1E696B098] valueWithDirectionalEdgeInsets:{0.0, 67.0, 0.0, 16.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_shouldShowIconForTransactionSource:(id)source transaction:(id)transaction context:(unint64_t)context
{
  sourceCopy = source;
  transactionCopy = transaction;
  if ([transactionCopy isBankConnectTransaction])
  {
    if ([transactionCopy transactionType] == 11)
    {
      [transactionCopy accountType];
    }

    goto LABEL_17;
  }

  if (sourceCopy)
  {
    goto LABEL_5;
  }

  accountType = [transactionCopy accountType];
  if ((accountType - 2) >= 3)
  {
    if (accountType != 1)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_15;
    }

    v12 = [transactionCopy peerPaymentType] - 7;
    v10 = context != 1 || v12 < 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v10 = context != 1;
  }

LABEL_15:
  if ([transactionCopy transactionType] == 11)
  {
    if ([transactionCopy accountType] == 3 || v10)
    {
LABEL_17:
      v14 = 1;
      goto LABEL_29;
    }
  }

  else if (v10)
  {
    goto LABEL_17;
  }

  type = [sourceCopy type];
  if ((type - 1) >= 3)
  {
    if (type)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      paymentPass = [sourceCopy paymentPass];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      context = [mEMORY[0x1E69B8EF8] context];
      configuration = [context configuration];

      issuerCountryCode = [paymentPass issuerCountryCode];
      v22 = [configuration paymentTransactionIconsEnabledForRegion:issuerCountryCode];

      v23 = [paymentPass cardType] == 1;
      associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
      if (associatedAccountServiceAccountIdentifier || ([paymentPass hasAssociatedPeerPaymentAccount] & 1) != 0 || (objc_msgSend(paymentPass, "isStoredValuePass") & 1) != 0)
      {
        LOBYTE(v16) = 1;
      }

      else
      {
        v16 = [paymentPass isIdentityPass] | v23 & v22;
      }
    }
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  v14 = (self->_context != 1) & v16;
LABEL_29:

  return v14;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v98 = cellCopy;
  if (cellCopy)
  {
    v94 = pathCopy;
    transaction = [itemCopy transaction];
    identifier = [transaction identifier];
    [cellCopy setIdentifier:?];
    [cellCopy setDeletable:{objc_msgSend(transaction, "isDeletable")}];
    transactionSourceCollection = [itemCopy transactionSourceCollection];
    transactionSourceIdentifier = [transaction transactionSourceIdentifier];
    v16 = [transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

    anyObject = v16;
    if (!v16)
    {
      transactionSources = [transactionSourceCollection transactionSources];
      v18 = [transactionSources count];

      if (v18 == 1)
      {
        transactionSources2 = [transactionSourceCollection transactionSources];
        anyObject = [transactionSources2 anyObject];
      }

      else
      {
        anyObject = 0;
      }
    }

    deviceName = [(PKPaymentDefaultDataProvider *)self->_dataProvider deviceName];
    v21 = deviceName;
    v95 = viewCopy;
    v93 = transactionSourceCollection;
    if (deviceName)
    {
      v22 = deviceName;
    }

    else
    {
      v22 = PKDeviceName();
    }

    v23 = v22;

    familyCollection = [itemCopy familyCollection];
    v24 = [familyCollection familyMemberForTransactionSource:anyObject];
    v25 = MEMORY[0x1E69B8EB8];
    secondaryTransactionSource = [itemCopy secondaryTransactionSource];
    account = [itemCopy account];
    context = self->_context;
    LOBYTE(v82) = [itemCopy shouldDisplayTransactionSource];
    v90 = v24;
    v92 = v23;
    v29 = [v25 presentationInformationForTransaction:transaction transactionSource:anyObject secondaryTransactionSource:secondaryTransactionSource familyMember:v24 account:account deviceName:v23 context:context shouldDisplayTransactionSource:v82];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    if ([v29 shouldGrayValue])
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      secondaryLabelColor = 0;
    }

    valueString = [v29 valueString];
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = v33;
    v89 = labelColor;
    if (secondaryLabelColor)
    {
      v35 = secondaryLabelColor;
    }

    else
    {
      v35 = labelColor;
    }

    [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v34 setObject:clearColor forKeyedSubscript:*MEMORY[0x1E69DB600]];

    if ([v29 shouldStrikeValue])
    {
      [v34 setObject:&unk_1F3CC7748 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
    }

    v88 = secondaryLabelColor;
    v86 = valueString;
    v87 = v34;
    if ([valueString length])
    {
      v37 = objc_alloc(MEMORY[0x1E696AAB0]);
      v38 = [v34 copy];
      v39 = [v37 initWithString:valueString attributes:v38];
    }

    else
    {
      v39 = 0;
    }

    v123[0] = 0;
    -[PKDashboardPaymentTransactionItemPresenter _applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:](self, "_applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:", v29, [itemCopy isFeaturedTransaction], transaction, v123);
    transactionView = [v98 transactionView];
    primaryString = [v29 primaryString];
    [transactionView setPrimaryString:primaryString];

    secondaryString = [v29 secondaryString];
    [transactionView setSecondaryString:secondaryString];

    tertiaryString = [v29 tertiaryString];
    [transactionView setTertiaryString:tertiaryString];

    [transactionView setTransactionValueAttributedText:v39];
    if (self->_context - 3 > 1 || ([transaction transactionStatus] & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      badgeString = [v29 badgeString];
      [transactionView setBadgeString:badgeString];
    }

    else
    {
      [transactionView setTransactionValueAttributedText:0];
    }

    [transactionView setHideBadgeBackground:v123[0]];
    [transactionView setShowsDisclosureView:{objc_msgSend(v29, "shouldShowDisclosure")}];
    secondaryBadgeSymbol = [v29 secondaryBadgeSymbol];
    [transactionView setSecondaryBadgeSymbol:?];
    if ([v29 destructiveSecondaryString])
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v45 = ;
    [transactionView setSecondaryColor:v45];

    preferredTransactionCategory = [v29 preferredTransactionCategory];
    if (preferredTransactionCategory)
    {
      v47 = preferredTransactionCategory;
      preferredTransactionCategoryImageCache = self->_preferredTransactionCategoryImageCache;
      [MEMORY[0x1E696AD98] numberWithInteger:preferredTransactionCategory];
      v50 = v49 = v39;
      v51 = [(NSCache *)preferredTransactionCategoryImageCache objectForKey:v50];

      v39 = v49;
      if (!v51)
      {
        traitCollection = [v98 traitCollection];
        PKTransactionCategoryImageSizeForTraitCollection(traitCollection);
        PKUIScreenScale();
        v51 = PKMapsIconForMerchantCategory();

        if (v51)
        {
          v53 = self->_preferredTransactionCategoryImageCache;
          v54 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
          [(NSCache *)v53 setObject:v51 forKey:v54];
        }
      }
    }

    else
    {
      v51 = 0;
    }

    [transactionView setTransactionCategoryImage:v51];
    [PKAppIntentUIUtilities annotateView:transactionView withEntityForTransaction:transaction];
    v55 = [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:anyObject transaction:transaction context:self->_context];
    transactionType = [transaction transactionType];
    if (transactionType == 3)
    {
      peerPaymentCounterpartHandle = [transaction peerPaymentCounterpartHandle];
      [transactionView setShowsAvatarView:v55];
      [transactionView setPrimaryImage:0];
      peerPaymentCounterpartImageRecordIdentifier = [transaction peerPaymentCounterpartImageRecordIdentifier];
      viewCopy = v95;
      if ([transaction peerPaymentPaymentMode] == 2 && (objc_msgSend(MEMORY[0x1E69DCA40], "metricsForTextStyle:", *MEMORY[0x1E69DDD08]), v58 = objc_claimAutoreleasedReturnValue(), v59 = v39, v60 = MEMORY[0x1E69DCAD8], objc_msgSend(v58, "scaledValueForValue:", 9.0), objc_msgSend(v60, "configurationWithPointSize:weight:", 2), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(transactionView, "setSecondaryBadgeSymbolConfiguration:", v61), v61, v39 = v59, viewCopy = v95, v58, v55) && peerPaymentCounterpartImageRecordIdentifier)
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke;
        aBlock[3] = &unk_1E8017E20;
        objc_copyWeak(&v121, &location);
        v62 = v98;
        v118 = v62;
        v119 = transaction;
        v120 = peerPaymentCounterpartHandle;
        v63 = _Block_copy(aBlock);
        if ([(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver hasCachedImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier])
        {
          v64 = [(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier];
          v63[2](v63, v64);
        }

        else
        {
          counterpartImageResolver = self->_counterpartImageResolver;
          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 3221225472;
          v113[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_2;
          v113[3] = &unk_1E8017E48;
          v114 = v62;
          v115 = identifier;
          v116 = v63;
          [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier completion:v113];

          v64 = v114;
        }

        objc_destroyWeak(&v121);
        objc_destroyWeak(&location);
      }

      else if ([(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:peerPaymentCounterpartHandle])
      {
        v71 = [(PKContactResolver *)self->_contactResolver contactForHandle:peerPaymentCounterpartHandle];
        if (v55)
        {
          [(PKDashboardPaymentTransactionItemPresenter *)self _updateAvatarOnTransactionCell:v98 withTransaction:transaction contact:v71];
        }

        [(PKDashboardPaymentTransactionItemPresenter *)self _updatePrimaryLabelOnTransactionCell:v98 withPeerPaymentCounterpartHandle:peerPaymentCounterpartHandle contact:v71 transaction:transaction];
      }

      else
      {
        objc_initWeak(&location, self);
        contactResolver = self->_contactResolver;
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_4;
        v106[3] = &unk_1E801A800;
        objc_copyWeak(&v111, &location);
        v107 = v98;
        v108 = identifier;
        v112 = v55;
        v109 = transaction;
        v110 = peerPaymentCounterpartHandle;
        [(PKContactResolver *)contactResolver contactForHandle:v110 withCompletion:v106];

        objc_destroyWeak(&v111);
        objc_destroyWeak(&location);
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      _supportsForceTouch = [currentDevice _supportsForceTouch];

      if (_supportsForceTouch)
      {
        avatarView = [transactionView avatarView];
        [avatarView setUserInteractionEnabled:1];
        WeakRetained = objc_loadWeakRetained(&self->_avatarViewDelegate);
        [avatarView setDelegate:WeakRetained];
        [avatarView setForcePressView:avatarView];
      }

      goto LABEL_64;
    }

    v65 = transactionType;
    [transactionView setShowsAvatarView:0];
    viewCopy = v95;
    if (!v55)
    {
      v72 = transactionView;
      emptyImage = 0;
LABEL_63:
      [v72 setPrimaryImage:emptyImage];
      goto LABEL_64;
    }

    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v68 = self->_context;
    if (v68 <= 6)
    {
      if (((1 << v68) & 0x61) != 0)
      {
        v75 = v66;
        v76 = v67;
        objc_initWeak(&location, self);
        iconGenerator = self->_iconGenerator;
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_6;
        v100[3] = &unk_1E801A828;
        objc_copyWeak(&v105, &location);
        v101 = v98;
        v102 = identifier;
        v103 = v95;
        v104 = transactionView;
        v70 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:transaction size:0 ignoreLogoURL:0 requestType:v100 iconHandler:v75, v76];

        objc_destroyWeak(&v105);
        objc_destroyWeak(&location);
        if (v70)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (((1 << v68) & 0x18) != 0)
        {
          dailyCashImage = [(PKDashboardPaymentTransactionItemPresenter *)self dailyCashImage];
          goto LABEL_42;
        }

        if (v68 == 1)
        {
          if (v65 == 11)
          {
            dailyCashImage = [(PKDashboardPaymentTransactionItemPresenter *)self savingsInterestImage];
LABEL_42:
            v70 = dailyCashImage;
            if (!dailyCashImage)
            {
              goto LABEL_62;
            }

LABEL_52:
            [transactionView setPrimaryImage:v70 animated:0];

LABEL_64:
            pathCopy = v94;
            goto LABEL_65;
          }

          if (v65 == 10)
          {
            dailyCashImage = [(PKDashboardPaymentTransactionItemPresenter *)self appleCardImage];
            goto LABEL_42;
          }
        }
      }
    }

LABEL_62:
    emptyImage = self->_emptyImage;
    v72 = transactionView;
    goto LABEL_63;
  }

LABEL_65:
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v4 setImageData:v3];

  [WeakRetained _updateAvatarOnTransactionCell:*(a1 + 32) withTransaction:*(a1 + 40) contact:v4];
  [WeakRetained _updatePrimaryLabelOnTransactionCell:*(a1 + 32) withPeerPaymentCounterpartHandle:*(a1 + 48) contact:v4 transaction:*(a1 + 40)];
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_3;
  v5[3] = &unk_1E8011D78;
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_3(uint64_t a1)
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

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_5;
  block[3] = &unk_1E801A7D8;
  objc_copyWeak(&v11, (a1 + 64));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
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

LABEL_14:
      WeakRetained = v10;
      goto LABEL_15;
    }

    v9 = [v5 isEqualToString:v6];

    WeakRetained = v10;
    if (v9)
    {
LABEL_11:
      if (*(a1 + 80) == 1)
      {
        [v10 _updateAvatarOnTransactionCell:*(a1 + 32) withTransaction:*(a1 + 48) contact:*(a1 + 56)];
      }

      [v10 _updatePrimaryLabelOnTransactionCell:*(a1 + 32) withPeerPaymentCounterpartHandle:*(a1 + 64) contact:*(a1 + 56) transaction:*(a1 + 48)];
      goto LABEL_14;
    }
  }

LABEL_15:
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_6(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_7;
    v10[3] = &unk_1E80179D8;
    objc_copyWeak(&v14, a1 + 8);
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v11 = v9;
    v12 = v8;
    v13 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v10);

    objc_destroyWeak(&v14);
  }
}

void __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v13 = WeakRetained;
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
      WeakRetained = v13;
      goto LABEL_13;
    }

    v9 = [v5 isEqualToString:v6];

    WeakRetained = v13;
    if (v9)
    {
LABEL_11:
      v10 = [*(a1 + 48) indexPathsForVisibleItems];
      v11 = [*(a1 + 48) indexPathForCell:*(a1 + 32)];
      v12 = [v10 containsObject:v11];

      [*(a1 + 56) setPrimaryImage:*(a1 + 64) animated:v12];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_applyRewardsInfo:(id)info isFeaturedTransaction:(BOOL)transaction fromTransaction:(id)fromTransaction hideBadgeBackground:(BOOL *)background
{
  transactionCopy = transaction;
  v55 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  fromTransactionCopy = fromTransaction;
  if (([infoCopy destructiveSecondaryString] & 1) == 0 && self->_context == 1 && transactionCopy)
  {
    rewards = [fromTransactionCopy rewards];
    rewardsItems = [rewards rewardsItems];
    v15 = [rewardsItems count];

    if (v15)
    {
      rewards2 = [fromTransactionCopy rewards];
      v48 = [rewards2 totalEligibleValueForUnit:1];
      v49 = [rewards2 totalEligibleValueForUnit:2];
      promotionalRewardsItems = [rewards2 promotionalRewardsItems];
      v45 = [promotionalRewardsItems count];
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = rewards2;
      rewardsItems2 = [rewards2 rewardsItems];
      v19 = [rewardsItems2 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v51;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(rewardsItems2);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            state = [v24 state];
            if (state != 3)
            {
              v21 |= state == 1;
              if ([v24 eligibleValueUnit] == 2)
              {
                [v17 addObject:v24];
              }
            }
          }

          v20 = [rewardsItems2 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      v26 = v48;
      pk_isZeroNumber = [v48 pk_isZeroNumber];
      pk_isZeroNumber2 = [(NSDecimalNumber *)v49 pk_isZeroNumber];
      if ((pk_isZeroNumber & 1) == 0 && pk_isZeroNumber2)
      {
        minimalFormattedStringValue = PKFormattedStringMinimalFractionDigitsFromNumber();
        v32 = PKLocalizedFeatureString();

        goto LABEL_28;
      }

      if (((pk_isZeroNumber2 | pk_isZeroNumber) & 1) == 0)
      {
        v29 = v47;
        v32 = PKLocalizedFeatureString();
        v33 = promotionalRewardsItems;
        if (!background)
        {
LABEL_43:
          rewardsTotalCurrencyAmount = [fromTransactionCopy rewardsTotalCurrencyAmount];
          if (rewardsTotalCurrencyAmount && [fromTransactionCopy transactionType] != 1)
          {
            transactionStatus = [fromTransactionCopy transactionStatus];

            if (transactionStatus == 3)
            {
              v40 = 0;
              goto LABEL_47;
            }

            rewardsTotalCurrencyAmount = [fromTransactionCopy rewardsTotalCurrencyAmount];
            formattedStringValue = [rewardsTotalCurrencyAmount formattedStringValue];
            v40 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
          }

          else
          {
            v40 = 0;
          }

LABEL_47:
          [infoCopy setSecondaryBadgeSymbol:0];
          [infoCopy setBadgeString:v40];
          [infoCopy setSecondaryString:v32];

          goto LABEL_48;
        }

LABEL_42:
        *background = 1;
        goto LABEL_43;
      }

      if (pk_isZeroNumber2)
      {
        v32 = 0;
LABEL_28:
        v33 = promotionalRewardsItems;
        v29 = v47;
        if (!background)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      rewardsTotalCurrencyCode = [fromTransactionCopy rewardsTotalCurrencyCode];
      v29 = v47;
      if (rewardsTotalCurrencyCode)
      {
        v31 = PKCurrencyAmountCreate(v49, rewardsTotalCurrencyCode);
      }

      else
      {
        currencyCode = [fromTransactionCopy currencyCode];
        v31 = PKCurrencyAmountCreate(v49, currencyCode);
      }

      if ([v17 count] == 1)
      {
        anyObject = [v17 anyObject];
      }

      else
      {
        anyObject = 0;
      }

      v36 = v31;
      v44 = anyObject;
      promotionName = [anyObject promotionName];
      pk_stringIfNotEmpty = [promotionName pk_stringIfNotEmpty];

      if (v21)
      {
        if (v45)
        {
          v33 = promotionalRewardsItems;
          if (pk_stringIfNotEmpty)
          {
            goto LABEL_40;
          }

LABEL_53:
          minimalFormattedStringValue = [v31 minimalFormattedStringValue];
          v32 = PKLocalizedFeatureString();

LABEL_54:
          v26 = v48;
          if (!background)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      else if (v45)
      {
        v33 = promotionalRewardsItems;
        if (pk_stringIfNotEmpty)
        {
LABEL_40:
          minimalFormattedStringValue = pk_stringIfNotEmpty;
          v32 = PKLocalizedFeatureString();
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      minimalFormattedStringValue = [v31 minimalFormattedStringValue];
      v32 = PKLocalizedFeatureString();

      v33 = promotionalRewardsItems;
      goto LABEL_54;
    }
  }

LABEL_48:
}

- (void)_updateAvatarOnTransactionCell:(id)cell withTransaction:(id)transaction contact:(id)contact
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  transactionView = [cell transactionView];
  avatarView = [transactionView avatarView];

  if (contactCopy)
  {
    v13[0] = contactCopy;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v13;
  }

  else
  {
    contactCopy = objc_alloc_init(MEMORY[0x1E695CF18]);
    [contactCopy setContactType:0];
    v12 = contactCopy;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v12;
  }

  v11 = [v9 arrayWithObjects:v10 count:1];

  [avatarView setContacts:v11];
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact transaction:(id)transaction
{
  cellCopy = cell;
  handleCopy = handle;
  contactCopy = contact;
  if (!self->_context)
  {
    v12 = handleCopy;
    if ([transaction peerPaymentPaymentMode] != 2)
    {
      v13 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v12 contact:contactCopy];

      v12 = v13;
    }

    transactionView = [cellCopy transactionView];
    [transactionView setPrimaryString:v12];
  }
}

- (CGSize)_imageSize
{
  v2 = 38.0;
  v3 = 38.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)dailyCashImage
{
  dailyCashImage = self->_dailyCashImage;
  if (!dailyCashImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"DailyCashIcon" withExtension:@"pdf"];
    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_dailyCashImage;
    self->_dailyCashImage = v11;

    dailyCashImage = self->_dailyCashImage;
  }

  return dailyCashImage;
}

- (id)appleCardImage
{
  appleCardImage = self->_appleCardImage;
  if (!appleCardImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_appleCardImage;
    self->_appleCardImage = v11;

    appleCardImage = self->_appleCardImage;
  }

  return appleCardImage;
}

- (id)savingsInterestImage
{
  savingsInterestImage = self->_savingsInterestImage;
  if (!savingsInterestImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"SAVINGS_Interest" withExtension:@"pdf"];
    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_savingsInterestImage;
    self->_savingsInterestImage = v11;

    savingsInterestImage = self->_savingsInterestImage;
  }

  return savingsInterestImage;
}

- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  transactionView = [v5 transactionView];
  primaryString = [transactionView primaryString];

  return primaryString;
}

- (PKDashboardPaymentTransactionItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end