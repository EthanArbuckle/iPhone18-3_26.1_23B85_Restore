@interface PKEnhancedMerchantsListSectionController
- (PKEnhancedMerchantsListSectionController)initWithSectionIdentifiers:(id)a3 paymentPass:(id)a4 fetcher:(id)a5 delegate:(id)a6;
- (id)_disclosuresCellRegistration;
- (id)_genericDisplayableErrorForError:(id)a3;
- (id)_merchantListCellRegistration;
- (id)cellRegistrationForItem:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)merchantForPrivateIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_openMapsForMerchantSearch:(id)a3;
- (void)_performNearbyLocationsSearch:(id)a3 deviceLocation:(id)a4;
- (void)_presentError:(id)a3;
- (void)_reportEventIfNecessaryForButtonTapWithTag:(id)a3 merchant:(id)a4;
- (void)_requestLocationUpdateIfPossible;
- (void)_updateCellBasedOnCurrentSearch:(id)a3;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)performAction:(int64_t)a3 forEnhancedMerchant:(id)a4 sender:(id)a5;
@end

@implementation PKEnhancedMerchantsListSectionController

- (PKEnhancedMerchantsListSectionController)initWithSectionIdentifiers:(id)a3 paymentPass:(id)a4 fetcher:(id)a5 delegate:(id)a6
{
  v30[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = PKEnhancedMerchantsListSectionController;
  v15 = [(PKEnhancedMerchantsListSectionController *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_paymentPass, a4);
    objc_storeStrong(&v16->_identifiers, a3);
    identifiers = v16->_identifiers;
    if (!identifiers || ![(NSArray *)identifiers count])
    {
      v30[0] = @"PKEnhancedMerchantsListSectionMerchantList";
      v30[1] = @"PKEnhancedMerchantsListSectionMerchantDisclosures";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v19 = v16->_identifiers;
      v16->_identifiers = v18;
    }

    objc_storeStrong(&v16->_fetcher, a5);
    objc_storeWeak(&v16->_delegate, v14);
    objc_initWeak(&location, v16);
    fetcher = v16->_fetcher;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __100__PKEnhancedMerchantsListSectionController_initWithSectionIdentifiers_paymentPass_fetcher_delegate___block_invoke;
    v26[3] = &unk_1E8010998;
    objc_copyWeak(&v27, &location);
    v21 = [(PKAccountEnhancedMerchantsFetcher *)fetcher addUpdateHandler:v26];
    merchantsUpdateToken = v16->_merchantsUpdateToken;
    v16->_merchantsUpdateToken = v21;

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __100__PKEnhancedMerchantsListSectionController_initWithSectionIdentifiers_paymentPass_fetcher_delegate___block_invoke_2;
    v24[3] = &unk_1E8010970;
    v25 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v24);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __100__PKEnhancedMerchantsListSectionController_initWithSectionIdentifiers_paymentPass_fetcher_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 3);
    if (objc_opt_respondsToSelector())
    {
      [v2 reloadDataAnimated:1];
    }

    WeakRetained = v3;
  }
}

void __100__PKEnhancedMerchantsListSectionController_initWithSectionIdentifiers_paymentPass_fetcher_delegate___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v3 = PKPassKitCoreBundle();
  v4 = [v3 bundlePath];
  v5 = [v2 initWithEffectiveBundlePath:v4 delegate:*(a1 + 32) onQueue:MEMORY[0x1E69E96A0]];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 40) setDesiredAccuracy:*MEMORY[0x1E6985C90]];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69BC598] object:0];
}

- (void)dealloc
{
  if (self->_merchantsUpdateToken)
  {
    [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher removeUpdateHandler:?];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
  {
    [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch cancel];
  }

  [(PKEnhancedMerchantsListSectionController *)self _stopUpdatingLocation];
  v4.receiver = self;
  v4.super_class = PKEnhancedMerchantsListSectionController;
  [(PKEnhancedMerchantsListSectionController *)&v4 dealloc];
}

- (id)merchantForPrivateIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher enhancedMerchants];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PKEnhancedMerchantsListSectionController_merchantForPrivateIdentifier___block_invoke;
    v8[3] = &unk_1E801D188;
    v9 = v4;
    v6 = [v5 pk_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __73__PKEnhancedMerchantsListSectionController_merchantForPrivateIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lowercaseString];
  v5 = [v3 privateIdentifier];

  v6 = [v5 lowercaseString];
  v7 = v4;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v7 && v8)
    {
      v10 = [v7 isEqualToString:v8];
    }
  }

  return v10;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher enhancedMerchantsWithOrderingContext:2];
  if (!v7)
  {
    v7 = [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher enhancedMerchants];
  }

  v8 = v5;
  v9 = @"PKEnhancedMerchantsListSectionMerchantList";
  v10 = v9;
  if (v9 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v9)
  {

    goto LABEL_11;
  }

  v11 = [(__CFString *)v8 isEqualToString:v9];

  if (v11)
  {
LABEL_9:
    [v6 appendItems:v7];
    goto LABEL_22;
  }

LABEL_11:
  v12 = v8;
  v13 = @"PKEnhancedMerchantsListSectionMerchantDisclosures";
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_17;
  }

  if (v8 && v13)
  {
    v15 = [(__CFString *)v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_19;
    }

LABEL_17:
    v16 = [v7 pk_arrayBySafelyApplyingBlock:&__block_literal_global_162];
    [v6 appendItems:v16];

    goto LABEL_22;
  }

LABEL_19:
  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Unrecognized section identifier for enhanced merchants list section controller: %@", &v19, 0xCu);
  }

LABEL_22:

  return v6;
}

PKAccountEnhancedMerchantDisclosurePresentationInfo *__94__PKEnhancedMerchantsListSectionController_snapshotWithPreviousSnapshot_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountEnhancedMerchantDisclosurePresentationInfo alloc] initWithAccountEnhancedMerchant:v2];

  return v3;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKEnhancedMerchantsListSectionController *)self _merchantListCellRegistration];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKEnhancedMerchantsListSectionController *)self _disclosuresCellRegistration];
    goto LABEL_5;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Unrecognized class for enhanced merchants list section controller", v9, 2u);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_merchantListCellRegistration
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC800];
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke;
  v6[3] = &unk_1E801D1F8;
  objc_copyWeak(&v7, &location);
  v4 = [v2 registrationWithCellClass:v3 configurationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 setDelegate:WeakRetained];
  [v6 updateWithAccountEnhancedMerchant:v7];
  v9 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  [v9 setDirectionalLayoutMargins:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v10 = [v7 name];
  [v9 setText:v10];

  v11 = *MEMORY[0x1E69DDC90];
  v12 = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB958]);
  v13 = [v9 textProperties];
  [v13 setFont:v12];

  v14 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v11);
  v15 = [v9 secondaryTextProperties];
  [v15 setFont:v14];

  v16 = [v9 secondaryTextProperties];
  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v16 setColor:v17];

  v18 = [v6 listContentView];
  [v18 setConfiguration:v9];

  v19 = [v6 websiteButton];
  [v19 setHidden:{objc_msgSend(v7, "hasWebsite") ^ 1}];

  v20 = [v6 appStoreButton];
  [v20 setHidden:{objc_msgSend(v7, "hasLinkedApplication") ^ 1}];

  v21 = [v6 mapsButton];
  [v21 setHidden:{objc_msgSend(v7, "hasMapsLocations") ^ 1}];

  v22 = [v6 imageView];
  [v22 setImage:0];
  v23 = [MEMORY[0x1E69DC888] systemGray4Color];
  [v22 setBackgroundColor:v23];

  v24 = [v7 iconImage];
  PKScreenScale();
  v25 = [v24 imageForScaleFactorValue:?];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke_2;
  v31[3] = &unk_1E801D1D0;
  v32 = v7;
  v33 = v6;
  v34 = v22;
  v26 = v22;
  v27 = v6;
  v28 = v7;
  [v25 fetchImageWithCompletion:v31];
  v29 = [v27 detailedDescriptionLabel];
  v30 = [v28 detailedDescription];
  [v29 setText:v30];

  [WeakRetained _updateCellBasedOnCurrentSearch:v27];
}

void __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke_3;
  v5[3] = &unk_1E8011C98;
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __73__PKEnhancedMerchantsListSectionController__merchantListCellRegistration__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) privateIdentifier];
  v3 = [*(a1 + 40) enhancedMerchant];
  v4 = [v3 privateIdentifier];
  v12 = v2;
  v5 = v4;
  v6 = v5;
  if (v12 == v5)
  {

LABEL_10:
    if (*(a1 + 48))
    {
      v9 = [MEMORY[0x1E69DCAB8] imageWithPKImage:?];
    }

    else
    {
      v9 = 0;
    }

    v12 = v9;
    [*(a1 + 56) setImage:v9];
    v10 = *(a1 + 56);
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setBackgroundColor:v11];

    [*(a1 + 40) setNeedsLayout];
    goto LABEL_14;
  }

  if (v12)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [v12 isEqualToString:v5];

    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_14:
}

- (id)_disclosuresCellRegistration
{
  v2 = MEMORY[0x1E69DC800];
  v3 = objc_opt_class();

  return [v2 registrationWithCellClass:v3 configurationHandler:&__block_literal_global_172_0];
}

void __72__PKEnhancedMerchantsListSectionController__disclosuresCellRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E69DCC28];
  v6 = a4;
  v7 = a2;
  v26 = [v5 cellConfiguration];
  v8 = *MEMORY[0x1E69DDD28];
  v9 = *MEMORY[0x1E69DDC90];
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  v11 = PKFontForDefaultDesign(v8, v9);
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 name];
  v14 = [v12 stringWithFormat:@"%@: ", v13];

  v15 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:v14 font:v10 paragraphStyle:0];
  v16 = MEMORY[0x1E696AAB0];
  v17 = [v6 disclosures];

  v18 = [v16 pkui_attriutedStringWithString:v17 font:v11 paragraphStyle:0];

  v19 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v19 appendAttributedString:v15];
  [v19 appendAttributedString:v18];
  v20 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v21 = [v20 mutableCopy];

  [v21 setLineBreakStrategy:1];
  v22 = *MEMORY[0x1E69DB688];
  v23 = [v21 copy];
  [v19 addAttribute:v22 value:v23 range:{0, objc_msgSend(v19, "length")}];

  [v26 setAttributedText:v19];
  v24 = [v26 textProperties];
  v25 = [MEMORY[0x1E69DC888] systemGray2Color];
  [v24 setColor:v25];

  [v7 setContentConfiguration:v26];
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69DC7E0];
  v7 = a3;
  v8 = [[v6 alloc] initWithAppearance:0];
  [v8 setHeaderMode:1];
  v9 = v5;
  v10 = @"PKEnhancedMerchantsListSectionMerchantList";
  v11 = v10;
  if (v10 == v9)
  {

    goto LABEL_7;
  }

  if (!v9 || !v10)
  {

    goto LABEL_9;
  }

  v12 = [(__CFString *)v9 isEqualToString:v10];

  if (v12)
  {
LABEL_7:
    [v8 setShowsSeparators:1];
    v13 = [v8 separatorConfiguration];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v13 setColor:v14];

    [v8 setSeparatorConfiguration:v13];
    goto LABEL_20;
  }

LABEL_9:
  v15 = v9;
  v16 = @"PKEnhancedMerchantsListSectionMerchantDisclosures";
  v17 = v16;
  if (v16 == v15)
  {

    goto LABEL_15;
  }

  if (v9 && v16)
  {
    v18 = [(__CFString *)v15 isEqualToString:v16];

    if (!v18)
    {
      goto LABEL_17;
    }

LABEL_15:
    [v8 setShowsSeparators:0];
    [v8 setFooterMode:1];
    goto LABEL_20;
  }

LABEL_17:
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Unrecognized section identifier for enhanced merchants list section controller: %@", &v23, 0xCu);
  }

LABEL_20:
  v20 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:v7];

  v21 = [v20 boundarySupplementaryItems];
  [v21 enumerateObjectsUsingBlock:&__block_literal_global_183];

  return v20;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v46 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v46;
    v11 = *MEMORY[0x1E69DDC08];
    v12 = v8;
    v13 = v11;
    v14 = v13;
    if (v13 == v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (v12 && v13)
      {
        v15 = [v12 isEqualToString:v13];
      }
    }

    v16 = *MEMORY[0x1E69DDC00];
    v17 = v12;
    v18 = v16;
    v19 = v18;
    if (v18 == v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = 0;
      if (v17 && v18)
      {
        v20 = [v17 isEqualToString:v18];
      }
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v21 = v9;
    v22 = @"PKEnhancedMerchantsListSectionMerchantList";
    v23 = v22;
    if (v22 == v21)
    {
    }

    else
    {
      if (!v21 || !v22)
      {

        goto LABEL_23;
      }

      v24 = [(__CFString *)v21 isEqualToString:v22];

      if (!v24)
      {
LABEL_23:
        v25 = v9;
        v38 = @"PKEnhancedMerchantsListSectionMerchantDisclosures";
        v39 = v38;
        if (v38 == v25)
        {

          if (v15)
          {
LABEL_28:
            v25 = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
            v41 = PKLocalizedFeatureString();
            [(__CFString *)v25 setText:v41];
            goto LABEL_34;
          }
        }

        else
        {
          if (!v25 || !v38)
          {

LABEL_40:
            goto LABEL_41;
          }

          v40 = [(__CFString *)v25 isEqualToString:v38];

          if (!v40)
          {
LABEL_41:

            goto LABEL_42;
          }

          if (v15)
          {
            goto LABEL_28;
          }
        }

        if (!v20)
        {
          v25 = 0;
          goto LABEL_37;
        }

        v25 = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
        v41 = PKLocalizedFeatureString();
        v42 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
        if (v42)
        {
          v43 = PKLocalizedFeatureString();
          v44 = [v41 stringByAppendingString:{v43, v42}];

          v41 = v44;
        }

        [(__CFString *)v25 setText:v41];

LABEL_34:
LABEL_37:
        v27 = [(__CFString *)v25 textProperties];
        v45 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90]);
        [v27 setFont:v45];

        v32 = [MEMORY[0x1E69DC888] systemGray2Color];
        [v27 setColor:v32];
        goto LABEL_38;
      }
    }

    v25 = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
    v26 = PKLocalizedFeatureString();
    [(__CFString *)v25 setText:v26];

    v27 = [(__CFString *)v25 textProperties];
    v28 = *MEMORY[0x1E69DDC90];
    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC90], 2, 0);
    [v27 setFont:v29];

    [v27 setNumberOfLines:0];
    v30 = [MEMORY[0x1E69DC888] labelColor];
    [v27 setColor:v30];

    v31 = PKLocalizedFeatureString();
    [(__CFString *)v25 setSecondaryText:v31];

    v32 = [(__CFString *)v25 secondaryTextProperties];
    v33 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v28);
    [v32 setFont:v33];

    v34 = [MEMORY[0x1E69DC888] labelColor];
    [v32 setColor:v34];

    [v32 setNumberOfLines:0];
    [(__CFString *)v25 setTextToSecondaryTextVerticalPadding:15.0];
    v35 = PKSetupViewConstantsViewMargin();
    v36 = PKSetupListViewConstantsViewMargin();
    v37 = v35 - v36;
    if (v36 > v35)
    {
      v37 = 0.0;
    }

    [(__CFString *)v25 setDirectionalLayoutMargins:0.0, v37, 32.0, v37];
LABEL_38:

    if (v25)
    {
      [v10 setContentConfiguration:v25];
      goto LABEL_40;
    }

    goto LABEL_41;
  }

LABEL_42:
}

- (void)performAction:(int64_t)a3 forEnhancedMerchant:(id)a4 sender:(id)a5
{
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  switch(a3)
  {
    case 0:
      v11 = [v9 linkedApplication];
      if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v15 = [v11 isInstalled];
        v16 = MEMORY[0x1E69BAB88];
        if (!v15)
        {
          v16 = MEMORY[0x1E69BA2F0];
        }

        [(PKEnhancedMerchantsListSectionController *)self _reportEventIfNecessaryForButtonTapWithTag:*v16 merchant:v8];
        [WeakRetained openLinkedApplication:v11];
      }

      goto LABEL_15;
    case 2:
      [(PKEnhancedMerchantsListSectionController *)self _reportEventIfNecessaryForButtonTapWithTag:*MEMORY[0x1E69BAA70] merchant:v8];
      if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
      {
        [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch cancel];
      }

      v12 = [[_PKPendingEnhancedMerchantNearbyLocationSearch alloc] initWithMerchant:v8];
      pendingMerchantLocationSearch = self->_pendingMerchantLocationSearch;
      self->_pendingMerchantLocationSearch = v12;

      v11 = [v9 mapsButton];
      [v11 pkui_updateConfigurationShowingActivityIndicator:1];
      [v11 setEnabled:0];
      [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch didStart];
      [(PKEnhancedMerchantsListSectionController *)self _openMapsForMerchantSearch:self->_pendingMerchantLocationSearch];
      objc_initWeak(&location, self);
      v14 = self->_pendingMerchantLocationSearch;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __85__PKEnhancedMerchantsListSectionController_performAction_forEnhancedMerchant_sender___block_invoke;
      v17[3] = &unk_1E8013F58;
      objc_copyWeak(&v19, &location);
      v18 = v9;
      [(_PKPendingEnhancedMerchantNearbyLocationSearch *)v14 addCompletionHandler:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      goto LABEL_15;
    case 1:
      v11 = [v8 website];
      if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(PKEnhancedMerchantsListSectionController *)self _reportEventIfNecessaryForButtonTapWithTag:*MEMORY[0x1E69BB690] merchant:v8];
        [WeakRetained openURL:v11 sensitive:0 preferInApp:0];
      }

LABEL_15:

      break;
  }
}

void __85__PKEnhancedMerchantsListSectionController_performAction_forEnhancedMerchant_sender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCellBasedOnCurrentSearch:*(a1 + 32)];
}

- (void)_reportEventIfNecessaryForButtonTapWithTag:(id)a3 merchant:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69BA440];
  v15[0] = *MEMORY[0x1E69BA680];
  v15[1] = v6;
  v16[0] = *MEMORY[0x1E69BA6F0];
  v16[1] = a3;
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = a3;
  v10 = [v7 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v11 = [v10 mutableCopy];
  v12 = [v8 privateIdentifier];

  if (v12)
  {
    [v11 setObject:v12 forKey:*MEMORY[0x1E69BAAB0]];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [v11 copy];
  [WeakRetained reportEventIfNecessary:v14];
}

- (void)_updateCellBasedOnCurrentSearch:(id)a3
{
  v4 = a3;
  v5 = self->_pendingMerchantLocationSearch;
  v6 = [v4 mapsButton];
  v7 = [v6 configuration];
  v8 = [v7 showsActivityIndicator];

  v9 = [(_PKPendingEnhancedMerchantNearbyLocationSearch *)v5 merchant];
  v10 = [v9 privateIdentifier];
  v11 = [v4 enhancedMerchant];
  v12 = [v11 privateIdentifier];
  v13 = v10;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if (!v13 || !v14)
    {

LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }

    v16 = [v13 isEqualToString:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v17 = [(_PKPendingEnhancedMerchantNearbyLocationSearch *)v5 isInProgress];
LABEL_10:
  [v6 setEnabled:v17 ^ 1];
  [v6 pkui_updateConfigurationShowingActivityIndicator:v17];
  if (((v17 ^ 1) & 1) == 0 && v8 != 1)
  {
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__PKEnhancedMerchantsListSectionController__updateCellBasedOnCurrentSearch___block_invoke;
    v18[3] = &unk_1E8013F58;
    objc_copyWeak(&v20, &location);
    v19 = v4;
    [(_PKPendingEnhancedMerchantNearbyLocationSearch *)v5 addCompletionHandler:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __76__PKEnhancedMerchantsListSectionController__updateCellBasedOnCurrentSearch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCellBasedOnCurrentSearch:*(a1 + 32)];
}

- (void)_requestLocationUpdateIfPossible
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695FBE8] locationServicesEnabled];
  v4 = [(CLLocationManager *)self->_locationManager authorizationStatus];
  if (v3)
  {
    v5 = (v4 - 3) > 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Location services unavailable or unauthorized", v16, 2u);
      }

      v7 = PKLocalizedFeatureString();
      v8 = PKLocalizedFeatureString();
      v9 = *MEMORY[0x1E696A590];
      v17 = v8;
      v18[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v19[0] = v10;
      v18[1] = *MEMORY[0x1E69BB898];
      v11 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
      v19[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

      v13 = PKDisplayableErrorCustom();
      if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
      {
        [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch didFailWithError:v13];
        [(PKEnhancedMerchantsListSectionController *)self _presentError:v13];
      }
    }

    else
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
      if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
      {
        pendingMerchantLocationSearch = self->_pendingMerchantLocationSearch;

        [(_PKPendingEnhancedMerchantNearbyLocationSearch *)pendingMerchantLocationSearch cancel];
      }
    }
  }

  else
  {
    locationManager = self->_locationManager;

    [(CLLocationManager *)locationManager requestLocation];
  }
}

- (void)_openMapsForMerchantSearch:(id)a3
{
  v5 = a3;
  if ([v5 isInProgress])
  {
    v4 = self->_lastValidLocation;
    if (LocationIsValid(v4))
    {
      [(PKEnhancedMerchantsListSectionController *)self _performNearbyLocationsSearch:v5 deviceLocation:v4];
    }

    else
    {
      [(PKEnhancedMerchantsListSectionController *)self _requestLocationUpdateIfPossible];
    }
  }
}

- (void)_performNearbyLocationsSearch:(id)a3 deviceLocation:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = a4;
  v29 = v6;
  v32 = [v6 merchant];
  v7 = [v32 mapsSearchText];
  v8 = v7;
  if (v7)
  {
    v30 = v7;
  }

  else
  {
    v30 = [v32 name];
  }

  v9 = [v32 mapsSearchStrings];
  v35 = [MEMORY[0x1E696F298] sharedService];
  v34 = [v35 defaultTraits];
  v26 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v31];
  [v34 setDeviceLocation:?];
  v28 = [v32 brandMUIDs];
  v27 = [v32 excludedMUIDs];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v9 count])
  {
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v30];

    v9 = v12;
  }

  v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
  objc_initWeak(&location, self);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v14)
  {
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke;
        v44[3] = &unk_1E801D288;
        v45 = v35;
        v46 = v17;
        v47 = v34;
        v48 = v10;
        v49 = v11;
        [v13 addOperation:v44];
      }

      v14 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x1E695DFB0] null];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_228;
  v36[3] = &unk_1E801D328;
  objc_copyWeak(&v43, &location);
  v19 = v11;
  v37 = v19;
  v20 = v28;
  v38 = v20;
  v21 = v27;
  v39 = v21;
  v22 = v30;
  v40 = v22;
  v23 = v31;
  v41 = v23;
  v24 = v29;
  v42 = v24;
  v25 = [v13 evaluateWithInput:v18 completion:v36];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) ticketForSearchQuery:*(a1 + 40) filters:0 maxResults:50 traits:*(a1 + 48)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_2;
  v12[3] = &unk_1E801D260;
  v12[4] = *(a1 + 40);
  v13 = *(a1 + 56);
  v9 = *(a1 + 64);
  v15 = v6;
  v16 = v7;
  v14 = v9;
  v10 = v6;
  v11 = v7;
  [v8 submitWithHandler:v12 timeout:10 networkActivity:0];
}

void __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Encountered error searching for %@: %@", buf, 0x16u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 _hasMUID])
        {
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "_muid")}];
          if (([*(a1 + 40) containsObject:v15] & 1) == 0)
          {
            [*(a1 + 40) addObject:v15];
            [*(a1 + 48) addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  (*(*(a1 + 64) + 16))();
}

void __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_228(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_2_229;
    block[3] = &unk_1E801D300;
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v10 = v8;
    v11 = v7;
    v12 = WeakRetained;
    v13 = a1[8];
    v14 = a1[9];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_2_229(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_3;
  v45[3] = &unk_1E801D2B0;
  v2 = *(a1 + 32);
  v46 = *(a1 + 40);
  v47 = *(a1 + 48);
  v3 = [v2 pk_objectsPassingTest:v45];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_231;
    v43[3] = &unk_1E801D2D8;
    v44 = *(a1 + 72);
    v6 = [v3 sortedArrayUsingComparator:v43];
    v37 = [objc_alloc(MEMORY[0x1E696F270]) initWithCLLocation:*(a1 + 72)];
    v7 = [v37 _displayMapRegion];
    if (v5 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = v5;
    }

    v38 = v6;
    v9 = [v6 subarrayWithRange:{0, v8}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v39 + 1) + 8 * i) _displayMapRegion];
          v15 = v14;
          if (v7)
          {
            v16 = GEOMapRegionUnion();

            v7 = v16;
          }

          else
          {
            v7 = v14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v11);
    }

    if (v5 >= 25)
    {
      v17 = 25;
    }

    else
    {
      v17 = v5;
    }

    v18 = [v38 subarrayWithRange:{0, v17}];
    v19 = MEMORY[0x1E696B098];
    [v7 centerLat];
    v21 = v20;
    [v7 centerLng];
    v23 = CLLocationCoordinate2DMake(v21, v22);
    v24 = [v19 valueWithMKCoordinate:{v23.latitude, v23.longitude}];
    v25 = MEMORY[0x1E696B098];
    [v7 spanLat];
    v27 = v26;
    [v7 spanLng];
    v29 = [v25 valueWithMKCoordinateSpan:{v27, v28}];
    v30 = *MEMORY[0x1E696F0A8];
    v48[0] = *MEMORY[0x1E696F0A0];
    v48[1] = v30;
    v49[0] = v24;
    v49[1] = v29;
    v48[2] = *MEMORY[0x1E696F0B8];
    v49[2] = *(a1 + 56);
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
    v32 = [MEMORY[0x1E696F270] urlForMapItems:v18 options:v31];
    WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 24));
    if ([*(a1 + 80) isInProgress])
    {
      [*(a1 + 80) didCompleteSuccessfully];
      if (v32)
      {
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained openURL:v32 sensitive:1 preferInApp:0];
        }
      }
    }

    v34 = v44;
    goto LABEL_27;
  }

  v35 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 56);
    *buf = 138412290;
    v52 = v36;
    _os_log_impl(&dword_1BD026000, v35, OS_LOG_TYPE_DEFAULT, "No results found for locations search for %@", buf, 0xCu);
  }

  if ([*(*(a1 + 64) + 56) isInProgress])
  {
    v34 = [*(a1 + 64) _genericDisplayableErrorForError:0];
    [*(*(a1 + 64) + 56) didFailWithError:v34];
    [*(a1 + 64) _presentError:v34];
LABEL_27:
  }
}

uint64_t __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _hasBrandMUID] && objc_msgSend(v3, "_hasMUID"))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "_brandMUID")}];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "_muid")}];
    v6 = [*(a1 + 32) containsObject:v4];
    v7 = v6 & ([*(a1 + 40) containsObject:v5] ^ 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __89__PKEnhancedMerchantsListSectionController__performNearbyLocationsSearch_deviceLocation___block_invoke_231(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 _coordinate];
  v8 = v7;
  [v6 _coordinate];
  v10 = v9;

  [*(a1 + 32) coordinate];
  v12 = v11;
  v13 = [*(a1 + 32) coordinate];
  v15 = MEMORY[0x1BFB41720](v13, v8, v10, v12, v14);
  [v5 _coordinate];
  v17 = v16;
  [v5 _coordinate];
  v19 = v18;

  [*(a1 + 32) coordinate];
  v21 = v20;
  v22 = [*(a1 + 32) coordinate];
  if (v15 >= MEMORY[0x1BFB41720](v22, v17, v19, v21, v23))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(CLLocationManager *)self->_locationManager authorizationStatus];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Enhanced merchants location manager did change authorization: %ld", &v5, 0xCu);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  lastValidLocation = self->_lastValidLocation;
  self->_lastValidLocation = 0;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 localizedDescription];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Location manager did fail with error: %@", &v10, 0xCu);
  }

  if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
  {
    v9 = [(PKEnhancedMerchantsListSectionController *)self _genericDisplayableErrorForError:v5];
    [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch didFailWithError:v9];
    [(PKEnhancedMerchantsListSectionController *)self _presentError:v9];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a4 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (LocationIsValid(v9))
        {
          v6 = v9;
          objc_storeStrong(&self->_lastValidLocation, v9);
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = self->_pendingMerchantLocationSearch;
  if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)v10 isInProgress])
  {
    if (v6)
    {
      [(PKEnhancedMerchantsListSectionController *)self _performNearbyLocationsSearch:v10 deviceLocation:v6];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Unable to determine accurate device location", v13, 2u);
      }

      v12 = [(PKEnhancedMerchantsListSectionController *)self _genericDisplayableErrorForError:0];
      [(_PKPendingEnhancedMerchantNearbyLocationSearch *)v10 didFailWithError:v12];
      [(PKEnhancedMerchantsListSectionController *)self _presentError:v12];
    }
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch isInProgress])
  {
    [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self->_pendingMerchantLocationSearch cancel];
  }

  [(PKEnhancedMerchantsListSectionController *)self _stopUpdatingLocation];
}

- (id)_genericDisplayableErrorForError:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedFeatureString();
  v5 = PKLocalizedFeatureString();
  v6 = PKDisplayableErrorCustom();

  return v6;
}

- (void)_presentError:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 presentDisplayableError:v6];
  }
}

@end