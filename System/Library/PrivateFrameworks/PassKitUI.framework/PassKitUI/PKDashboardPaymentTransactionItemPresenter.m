@interface PKDashboardPaymentTransactionItemPresenter
- (BOOL)_shouldShowIconForTransactionSource:(id)a3 transaction:(id)a4 context:(unint64_t)a5;
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (BOOL)hideSeparatorForItem:(id)a3 inCollectionView:(id)a4;
- (CGSize)_imageSize;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPaymentTransactionItemPresenter)initWithContext:(unint64_t)a3 detailViewStyle:(int64_t)a4 avatarViewDelegate:(id)a5;
- (PKDashboardPaymentTransactionItemPresenterDelegate)delegate;
- (id)_contactKeysToFetch;
- (id)appleCardImage;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)dailyCashImage;
- (id)savingsInterestImage;
- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)separatorInsetsForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (void)_applyRewardsInfo:(id)a3 isFeaturedTransaction:(BOOL)a4 fromTransaction:(id)a5 hideBadgeBackground:(BOOL *)a6;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_updateAvatarOnTransactionCell:(id)a3 withTransaction:(id)a4 contact:(id)a5;
- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5 transaction:(id)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)prefetchForItem:(id)a3 inCollectionView:(id)a4;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardPaymentTransactionItemPresenter

- (PKDashboardPaymentTransactionItemPresenter)initWithContext:(unint64_t)a3 detailViewStyle:(int64_t)a4 avatarViewDelegate:(id)a5
{
  v8 = a5;
  v34.receiver = self;
  v34.super_class = PKDashboardPaymentTransactionItemPresenter;
  v9 = [(PKDashboardPaymentTransactionItemPresenter *)&v34 init];
  v10 = v9;
  if (v9)
  {
    v9->_context = a3;
    objc_storeWeak(&v9->_avatarViewDelegate, v8);
    v11 = [PKPaymentTransactionCollectionViewCell alloc];
    v12 = [(PKPaymentTransactionCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v10->_sampleCell;
    v10->_sampleCell = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    emptyImage = v10->_emptyImage;
    v10->_emptyImage = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v17 = objc_alloc(MEMORY[0x1E69B8740]);
    v18 = [(PKDashboardPaymentTransactionItemPresenter *)v10 _contactKeysToFetch];
    v19 = [v17 initWithContactStore:v16 keysToFetch:v18];
    contactResolver = v10->_contactResolver;
    v10->_contactResolver = v19;

    v21 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v10->_iconGenerator;
    v10->_iconGenerator = v21;

    v23 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    dataProvider = v10->_dataProvider;
    v10->_dataProvider = v23;

    v25 = [MEMORY[0x1E69B9020] sharedService];
    v26 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v10->_contactResolver peerPaymentWebService:v25 paymentServiceDataProvider:v10->_dataProvider detailViewStyle:a4 context:v10->_context];
    transactionDetailsFactory = v10->_transactionDetailsFactory;
    v10->_transactionDetailsFactory = v26;

    v28 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v10->_useAccessibilityLayout = UIContentSizeCategoryIsAccessibilityCategory(v28);

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
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v10[1] = v5;
  v6 = [off_1EE98A6A0() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = v6;
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

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v7 = a4;
  if (a3)
  {
    if (v7)
    {
      v15 = v7;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v15 preferredContentSizeCategory];
      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);

      v7 = v15;
      if (v10)
      {
        v11 = [v15 preferredContentSizeCategory];
        self->_useAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v11, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;

        v12 = [PKPaymentTransactionCollectionViewCell alloc];
        v13 = [(PKPaymentTransactionCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v13;

        v7 = v15;
      }
    }
  }
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a3 transaction];
  v6 = [v5 transactionType] != 12;

  return v6;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v46[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = v8;
  v11 = [v10 transaction];
  if ([v11 transactionType] == 15)
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

  v20 = [v10 transactionSourceCollection];
  v21 = [v10 familyCollection];
  v22 = [v10 account];
  v23 = [v10 accountUserCollection];
  v44 = [v10 physicalCards];
  v43 = v23;
  if (([v11 peerPaymentType] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v24 = [v11 recurringPeerPayment];
    v25 = objc_alloc(MEMORY[0x1E69B8F28]);
    v26 = [MEMORY[0x1E69B9020] sharedService];
    v27 = [v25 initWithPeerPaymentWebService:v26];

    v28 = [v27 account];
    WeakRetained = [v28 recurringPaymentsFeatureDescriptor];

    v30 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    [v24 recipientAddress];
    v42 = v11;
    v31 = v9;
    v32 = v22;
    v33 = v21;
    v35 = v34 = v20;
    v36 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v30 initWithRecurringPayment:v24 recipientAddress:v35 mode:2 context:0 peerPaymentController:v27 remoteMessagesComposer:0];

    v37 = [WeakRetained minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v36 setMinimumAmount:v37];

    v38 = [WeakRetained maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v36 setMaximumAmount:v38];

    v20 = v34;
    v21 = v33;
    v22 = v32;
    v9 = v31;
    v11 = v42;
    [v9 pushViewController:v36 animated:1];
  }

  else
  {
    v24 = [v10 bankConnectInstitution];
    transactionDetailsFactory = self->_transactionDetailsFactory;
    v40 = [v10 group];
    v27 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:v11 sourceCollection:v20 familyCollection:v21 account:v22 accountUserCollection:v23 bankConnectInstitution:v24 physicalCards:v44 group:v40 navigationController:v9];

    if ([v9 pk_settings_useStateDrivenNavigation])
    {
      [v9 pk_settings_pushViewController:v27];
    }

    else
    {
      [v9 pushViewController:v27 animated:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transactionItemPresenter:self didSelectTransactionItem:v10];
  }
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"transactionItemPresenter" forIndexPath:v8];
  [(PKDashboardPaymentTransactionItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v8 = a3;
  v9 = [v8 transaction];
  v10 = [v8 transactionSourceCollection];
  v11 = [v9 transactionSourceIdentifier];
  v47 = v10;
  v12 = [v10 transactionSourceForTransactionSourceIdentifier:v11];

  v13 = [(PKPaymentDefaultDataProvider *)self->_dataProvider deviceName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = PKDeviceName();
  }

  v16 = v15;

  v45 = [v8 familyCollection];
  v17 = [v45 familyMemberForTransactionSource:v12];
  v18 = MEMORY[0x1E69B8EB8];
  v19 = [v8 secondaryTransactionSource];
  v20 = [v8 account];
  context = self->_context;
  LOBYTE(v42) = [v8 shouldDisplayTransactionSource];
  v44 = v17;
  v46 = v16;
  v22 = [v18 presentationInformationForTransaction:v9 transactionSource:v12 secondaryTransactionSource:v19 familyMember:v17 account:v20 deviceName:v16 context:context shouldDisplayTransactionSource:v42];

  v23 = [v22 valueString];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = v24;
  if ([v23 length])
  {
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [v24 copy];
    v27 = [v25 initWithString:v23 attributes:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v12 transaction:v9 context:self->_context];
  -[PKDashboardPaymentTransactionItemPresenter _applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:](self, "_applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:", v22, [v8 isFeaturedTransaction], v9, 0);
  v29 = [(PKPaymentTransactionCollectionViewCell *)self->_sampleCell transactionView];
  v30 = [v22 primaryString];
  [v29 setPrimaryString:v30];

  v31 = [v22 secondaryString];
  [v29 setSecondaryString:v31];

  v32 = [v22 tertiaryString];
  [v29 setTertiaryString:v32];

  [v29 setTransactionValueAttributedText:v27];
  if (self->_context - 3 > 1 || ([v9 transactionStatus] & 0xFFFFFFFFFFFFFFF7) != 0)
  {
    v33 = [v22 badgeString];
    [v29 setBadgeString:v33];
  }

  else
  {
    [v29 setTransactionValueAttributedText:0];
  }

  [v29 setShowsDisclosureView:{objc_msgSend(v22, "shouldShowDisclosure")}];
  v34 = [v22 secondaryBadgeSymbol];
  [v29 setSecondaryBadgeSymbol:v34];

  if (v28)
  {
    emptyImage = self->_emptyImage;
  }

  else
  {
    emptyImage = 0;
  }

  [v29 setPrimaryImage:emptyImage];
  [(PKPaymentTransactionCollectionViewCell *)self->_sampleCell sizeThatFits:a5, 3.40282347e38];
  v37 = v36;
  v39 = v38;

  v40 = v37;
  v41 = v39;
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)prefetchForItem:(id)a3 inCollectionView:(id)a4
{
  v5 = a3;
  v11 = [v5 transaction];
  v6 = [v5 transactionSourceCollection];

  v7 = [v11 transactionSourceIdentifier];
  v8 = [v6 transactionSourceForTransactionSourceIdentifier:v7];

  if ([(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v8 transaction:v11 context:self->_context])
  {
    iconGenerator = self->_iconGenerator;
    [(PKDashboardPaymentTransactionItemPresenter *)self _imageSize];
    v10 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:v11 size:0 ignoreLogoURL:1 requestType:&__block_literal_global_121 iconHandler:?];
  }
}

- (BOOL)hideSeparatorForItem:(id)a3 inCollectionView:(id)a4
{
  v4 = a3;
  if ([v4 isFeaturedTransaction])
  {
    v5 = [v4 transaction];
    v6 = [v5 preferredLocation];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)separatorInsetsForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 transaction];
  v10 = [v7 transactionSourceCollection];
  v11 = [v9 transactionSourceIdentifier];
  v12 = [v10 transactionSourceForTransactionSourceIdentifier:v11];

  LOBYTE(v11) = [(PKDashboardPaymentTransactionItemPresenter *)self hideSeparatorForItem:v7 inCollectionView:v8];
  if ((v11 & 1) == 0 && [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v12 transaction:v9 context:self->_context]&& _UISolariumFeatureFlagEnabled())
  {
    v13 = [MEMORY[0x1E696B098] valueWithDirectionalEdgeInsets:{0.0, 67.0, 0.0, 16.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_shouldShowIconForTransactionSource:(id)a3 transaction:(id)a4 context:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isBankConnectTransaction])
  {
    if ([v9 transactionType] == 11)
    {
      [v9 accountType];
    }

    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v11 = [v9 accountType];
  if ((v11 - 2) >= 3)
  {
    if (v11 != 1)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_15;
    }

    v12 = [v9 peerPaymentType] - 7;
    v10 = a5 != 1 || v12 < 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v10 = a5 != 1;
  }

LABEL_15:
  if ([v9 transactionType] == 11)
  {
    if ([v9 accountType] == 3 || v10)
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

  v15 = [v8 type];
  if ((v15 - 1) >= 3)
  {
    if (v15)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v17 = [v8 paymentPass];
      v18 = [MEMORY[0x1E69B8EF8] sharedService];
      v19 = [v18 context];
      v20 = [v19 configuration];

      v21 = [v17 issuerCountryCode];
      v22 = [v20 paymentTransactionIconsEnabledForRegion:v21];

      v23 = [v17 cardType] == 1;
      v24 = [v17 associatedAccountServiceAccountIdentifier];
      if (v24 || ([v17 hasAssociatedPeerPaymentAccount] & 1) != 0 || (objc_msgSend(v17, "isStoredValuePass") & 1) != 0)
      {
        LOBYTE(v16) = 1;
      }

      else
      {
        v16 = [v17 isIdentityPass] | v23 & v22;
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

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v10 = a3;
  v99 = a4;
  v11 = a5;
  v12 = a6;
  v98 = v10;
  if (v10)
  {
    v94 = v12;
    v13 = [v99 transaction];
    v96 = [v13 identifier];
    [v10 setIdentifier:?];
    [v10 setDeletable:{objc_msgSend(v13, "isDeletable")}];
    v14 = [v99 transactionSourceCollection];
    v15 = [v13 transactionSourceIdentifier];
    v16 = [v14 transactionSourceForTransactionSourceIdentifier:v15];

    v97 = v16;
    if (!v16)
    {
      v17 = [v14 transactionSources];
      v18 = [v17 count];

      if (v18 == 1)
      {
        v19 = [v14 transactionSources];
        v97 = [v19 anyObject];
      }

      else
      {
        v97 = 0;
      }
    }

    v20 = [(PKPaymentDefaultDataProvider *)self->_dataProvider deviceName];
    v21 = v20;
    v95 = v11;
    v93 = v14;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = PKDeviceName();
    }

    v23 = v22;

    v91 = [v99 familyCollection];
    v24 = [v91 familyMemberForTransactionSource:v97];
    v25 = MEMORY[0x1E69B8EB8];
    v26 = [v99 secondaryTransactionSource];
    v27 = [v99 account];
    context = self->_context;
    LOBYTE(v82) = [v99 shouldDisplayTransactionSource];
    v90 = v24;
    v92 = v23;
    v29 = [v25 presentationInformationForTransaction:v13 transactionSource:v97 secondaryTransactionSource:v26 familyMember:v24 account:v27 deviceName:v23 context:context shouldDisplayTransactionSource:v82];

    v30 = [MEMORY[0x1E69DC888] labelColor];
    if ([v29 shouldGrayValue])
    {
      v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      v31 = 0;
    }

    v32 = [v29 valueString];
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = v33;
    v89 = v30;
    if (v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v30;
    }

    [v33 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    v36 = [MEMORY[0x1E69DC888] clearColor];
    [v34 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69DB600]];

    if ([v29 shouldStrikeValue])
    {
      [v34 setObject:&unk_1F3CC7748 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
    }

    v88 = v31;
    v86 = v32;
    v87 = v34;
    if ([v32 length])
    {
      v37 = objc_alloc(MEMORY[0x1E696AAB0]);
      v38 = [v34 copy];
      v39 = [v37 initWithString:v32 attributes:v38];
    }

    else
    {
      v39 = 0;
    }

    v123[0] = 0;
    -[PKDashboardPaymentTransactionItemPresenter _applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:](self, "_applyRewardsInfo:isFeaturedTransaction:fromTransaction:hideBadgeBackground:", v29, [v99 isFeaturedTransaction], v13, v123);
    v40 = [v98 transactionView];
    v41 = [v29 primaryString];
    [v40 setPrimaryString:v41];

    v42 = [v29 secondaryString];
    [v40 setSecondaryString:v42];

    v43 = [v29 tertiaryString];
    [v40 setTertiaryString:v43];

    [v40 setTransactionValueAttributedText:v39];
    if (self->_context - 3 > 1 || ([v13 transactionStatus] & 0xFFFFFFFFFFFFFFF7) != 0)
    {
      v44 = [v29 badgeString];
      [v40 setBadgeString:v44];
    }

    else
    {
      [v40 setTransactionValueAttributedText:0];
    }

    [v40 setHideBadgeBackground:v123[0]];
    [v40 setShowsDisclosureView:{objc_msgSend(v29, "shouldShowDisclosure")}];
    v85 = [v29 secondaryBadgeSymbol];
    [v40 setSecondaryBadgeSymbol:?];
    if ([v29 destructiveSecondaryString])
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v45 = ;
    [v40 setSecondaryColor:v45];

    v46 = [v29 preferredTransactionCategory];
    if (v46)
    {
      v47 = v46;
      preferredTransactionCategoryImageCache = self->_preferredTransactionCategoryImageCache;
      [MEMORY[0x1E696AD98] numberWithInteger:v46];
      v50 = v49 = v39;
      v51 = [(NSCache *)preferredTransactionCategoryImageCache objectForKey:v50];

      v39 = v49;
      if (!v51)
      {
        v52 = [v98 traitCollection];
        PKTransactionCategoryImageSizeForTraitCollection(v52);
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

    [v40 setTransactionCategoryImage:v51];
    [PKAppIntentUIUtilities annotateView:v40 withEntityForTransaction:v13];
    v55 = [(PKDashboardPaymentTransactionItemPresenter *)self _shouldShowIconForTransactionSource:v97 transaction:v13 context:self->_context];
    v56 = [v13 transactionType];
    if (v56 == 3)
    {
      v57 = [v13 peerPaymentCounterpartHandle];
      [v40 setShowsAvatarView:v55];
      [v40 setPrimaryImage:0];
      v84 = [v13 peerPaymentCounterpartImageRecordIdentifier];
      v11 = v95;
      if ([v13 peerPaymentPaymentMode] == 2 && (objc_msgSend(MEMORY[0x1E69DCA40], "metricsForTextStyle:", *MEMORY[0x1E69DDD08]), v58 = objc_claimAutoreleasedReturnValue(), v59 = v39, v60 = MEMORY[0x1E69DCAD8], objc_msgSend(v58, "scaledValueForValue:", 9.0), objc_msgSend(v60, "configurationWithPointSize:weight:", 2), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "setSecondaryBadgeSymbolConfiguration:", v61), v61, v39 = v59, v11 = v95, v58, v55) && v84)
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __99__PKDashboardPaymentTransactionItemPresenter__configureCell_forItem_inCollectionView_forIndexPath___block_invoke;
        aBlock[3] = &unk_1E8017E20;
        objc_copyWeak(&v121, &location);
        v62 = v98;
        v118 = v62;
        v119 = v13;
        v120 = v57;
        v63 = _Block_copy(aBlock);
        if ([(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver hasCachedImageDataForIdentifier:v84])
        {
          v64 = [(PKPeerPaymentCounterpartImageResolver *)self->_counterpartImageResolver counterpartImageDataForIdentifier:v84];
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
          v115 = v96;
          v116 = v63;
          [(PKPeerPaymentCounterpartImageResolver *)counterpartImageResolver counterpartImageDataForIdentifier:v84 completion:v113];

          v64 = v114;
        }

        objc_destroyWeak(&v121);
        objc_destroyWeak(&location);
      }

      else if ([(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v57])
      {
        v71 = [(PKContactResolver *)self->_contactResolver contactForHandle:v57];
        if (v55)
        {
          [(PKDashboardPaymentTransactionItemPresenter *)self _updateAvatarOnTransactionCell:v98 withTransaction:v13 contact:v71];
        }

        [(PKDashboardPaymentTransactionItemPresenter *)self _updatePrimaryLabelOnTransactionCell:v98 withPeerPaymentCounterpartHandle:v57 contact:v71 transaction:v13];
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
        v108 = v96;
        v112 = v55;
        v109 = v13;
        v110 = v57;
        [(PKContactResolver *)contactResolver contactForHandle:v110 withCompletion:v106];

        objc_destroyWeak(&v111);
        objc_destroyWeak(&location);
      }

      v78 = [MEMORY[0x1E69DC938] currentDevice];
      v79 = [v78 _supportsForceTouch];

      if (v79)
      {
        v80 = [v40 avatarView];
        [v80 setUserInteractionEnabled:1];
        WeakRetained = objc_loadWeakRetained(&self->_avatarViewDelegate);
        [v80 setDelegate:WeakRetained];
        [v80 setForcePressView:v80];
      }

      goto LABEL_64;
    }

    v65 = v56;
    [v40 setShowsAvatarView:0];
    v11 = v95;
    if (!v55)
    {
      v72 = v40;
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
        v102 = v96;
        v103 = v95;
        v104 = v40;
        v70 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:v13 size:0 ignoreLogoURL:0 requestType:v100 iconHandler:v75, v76];

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
          v69 = [(PKDashboardPaymentTransactionItemPresenter *)self dailyCashImage];
          goto LABEL_42;
        }

        if (v68 == 1)
        {
          if (v65 == 11)
          {
            v69 = [(PKDashboardPaymentTransactionItemPresenter *)self savingsInterestImage];
LABEL_42:
            v70 = v69;
            if (!v69)
            {
              goto LABEL_62;
            }

LABEL_52:
            [v40 setPrimaryImage:v70 animated:0];

LABEL_64:
            v12 = v94;
            goto LABEL_65;
          }

          if (v65 == 10)
          {
            v69 = [(PKDashboardPaymentTransactionItemPresenter *)self appleCardImage];
            goto LABEL_42;
          }
        }
      }
    }

LABEL_62:
    emptyImage = self->_emptyImage;
    v72 = v40;
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

- (void)_applyRewardsInfo:(id)a3 isFeaturedTransaction:(BOOL)a4 fromTransaction:(id)a5 hideBadgeBackground:(BOOL *)a6
{
  v8 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (([v10 destructiveSecondaryString] & 1) == 0 && self->_context == 1 && v8)
  {
    v13 = [v11 rewards];
    v14 = [v13 rewardsItems];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v11 rewards];
      v48 = [v16 totalEligibleValueForUnit:1];
      v49 = [v16 totalEligibleValueForUnit:2];
      v46 = [v16 promotionalRewardsItems];
      v45 = [v46 count];
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = v16;
      v18 = [v16 rewardsItems];
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            v25 = [v24 state];
            if (v25 != 3)
            {
              v21 |= v25 == 1;
              if ([v24 eligibleValueUnit] == 2)
              {
                [v17 addObject:v24];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      v26 = v48;
      v27 = [v48 pk_isZeroNumber];
      v28 = [(NSDecimalNumber *)v49 pk_isZeroNumber];
      if ((v27 & 1) == 0 && v28)
      {
        v43 = PKFormattedStringMinimalFractionDigitsFromNumber();
        v32 = PKLocalizedFeatureString();

        goto LABEL_28;
      }

      if (((v28 | v27) & 1) == 0)
      {
        v29 = v47;
        v32 = PKLocalizedFeatureString();
        v33 = v46;
        if (!a6)
        {
LABEL_43:
          v39 = [v11 rewardsTotalCurrencyAmount];
          if (v39 && [v11 transactionType] != 1)
          {
            v41 = [v11 transactionStatus];

            if (v41 == 3)
            {
              v40 = 0;
              goto LABEL_47;
            }

            v39 = [v11 rewardsTotalCurrencyAmount];
            v42 = [v39 formattedStringValue];
            v40 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v42);
          }

          else
          {
            v40 = 0;
          }

LABEL_47:
          [v10 setSecondaryBadgeSymbol:0];
          [v10 setBadgeString:v40];
          [v10 setSecondaryString:v32];

          goto LABEL_48;
        }

LABEL_42:
        *a6 = 1;
        goto LABEL_43;
      }

      if (v28)
      {
        v32 = 0;
LABEL_28:
        v33 = v46;
        v29 = v47;
        if (!a6)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v30 = [v11 rewardsTotalCurrencyCode];
      v29 = v47;
      if (v30)
      {
        v31 = PKCurrencyAmountCreate(v49, v30);
      }

      else
      {
        v34 = [v11 currencyCode];
        v31 = PKCurrencyAmountCreate(v49, v34);
      }

      if ([v17 count] == 1)
      {
        v35 = [v17 anyObject];
      }

      else
      {
        v35 = 0;
      }

      v36 = v31;
      v44 = v35;
      v37 = [v35 promotionName];
      v38 = [v37 pk_stringIfNotEmpty];

      if (v21)
      {
        if (v45)
        {
          v33 = v46;
          if (v38)
          {
            goto LABEL_40;
          }

LABEL_53:
          v43 = [v31 minimalFormattedStringValue];
          v32 = PKLocalizedFeatureString();

LABEL_54:
          v26 = v48;
          if (!a6)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      else if (v45)
      {
        v33 = v46;
        if (v38)
        {
LABEL_40:
          v43 = v38;
          v32 = PKLocalizedFeatureString();
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      v43 = [v31 minimalFormattedStringValue];
      v32 = PKLocalizedFeatureString();

      v33 = v46;
      goto LABEL_54;
    }
  }

LABEL_48:
}

- (void)_updateAvatarOnTransactionCell:(id)a3 withTransaction:(id)a4 contact:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [a3 transactionView];
  v8 = [v7 avatarView];

  if (v6)
  {
    v13[0] = v6;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v13;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v6 setContactType:0];
    v12 = v6;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v12;
  }

  v11 = [v9 arrayWithObjects:v10 count:1];

  [v8 setContacts:v11];
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5 transaction:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  if (!self->_context)
  {
    v12 = v10;
    if ([a6 peerPaymentPaymentMode] != 2)
    {
      v13 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v12 contact:v11];

      v12 = v13;
    }

    v14 = [v15 transactionView];
    [v14 setPrimaryString:v12];
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

- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a4 cellForItemAtIndexPath:a5];
  v6 = [v5 transactionView];
  v7 = [v6 primaryString];

  return v7;
}

- (PKDashboardPaymentTransactionItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end