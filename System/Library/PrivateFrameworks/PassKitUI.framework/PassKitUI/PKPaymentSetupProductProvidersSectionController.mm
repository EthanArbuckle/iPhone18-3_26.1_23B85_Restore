@interface PKPaymentSetupProductProvidersSectionController
- (PKPaymentSetupProductProvidersSectionController)initWithProduct:(id)a3 linkedApplications:(id)a4 clipMetadata:(id)a5 showOtherProviders:(BOOL)a6 delegate:(id)a7;
- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_generateItems:(id)a3 linkedApplications:(id)a4 clipMetadata:(id)a5 showOtherProviders:(BOOL)a6;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)hideLoadingIndicatorsAnimated:(BOOL)a3;
@end

@implementation PKPaymentSetupProductProvidersSectionController

- (PKPaymentSetupProductProvidersSectionController)initWithProduct:(id)a3 linkedApplications:(id)a4 clipMetadata:(id)a5 showOtherProviders:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = PKPaymentSetupProductProvidersSectionController;
  v16 = [(PKPaymentSetupListSectionController *)&v21 init];
  if (v16)
  {
    v17 = [v12 displayName];
    productName = v16->_productName;
    v16->_productName = v17;

    v19 = [v12 configuration];
    v16->_productType = [v19 type];

    objc_storeWeak(&v16->_delegate, v15);
    [(PKPaymentSetupProductProvidersSectionController *)v16 _generateItems:v12 linkedApplications:v13 clipMetadata:v14 showOtherProviders:v8];
  }

  return v16;
}

- (void)_generateItems:(id)a3 linkedApplications:(id)a4 clipMetadata:(id)a5 showOtherProviders:(BOOL)a6
{
  v6 = a6;
  v68 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v55 = a4;
  v52 = a5;
  v56 = v6;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v51 = 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v49 = v9;
  obj = [v9 setupProductMethods];
  v10 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v62;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        if ([v14 isSupported])
        {
          v15 = objc_alloc_init(PKPaymentSetupProductProviderListItem);
          v16 = MEMORY[0x1E696AEC0];
          v17 = [v14 partnerIdentifier];
          v18 = [v14 localizedTitle];
          [v14 type];
          v19 = PKPaymentSupportedProvisioningMethodToString();
          v20 = [v16 stringWithFormat:@"%@-%@-%@", v17, v18, v19];

          [(PKPaymentSetupListItem *)v15 setIdentifier:v20];
          [(PKPaymentSetupProductProviderListItem *)v15 setSetupProductMethod:v14];
          [(PKPaymentSetupListItem *)v15 setLoadingIndicatorVisible:0];
          [(PKPaymentSetupListItem *)v15 setDisplayChevron:1];
          v21 = [v14 type];
          if (v21 <= 4)
          {
            if (v21 == 1)
            {
              if (!v56)
              {
                v31 = PKLocalizedPaymentString(&cfstr_TransferCardTi.isa);
                [(PKPaymentSetupListItem *)v15 setTitle:v31];

                if (self->_productType == 3)
                {
                  v23 = @"Transfer_Transit_Card";
                }

                else
                {
                  v23 = @"Transfer_Payment_Card";
                }

LABEL_28:
                v32 = PKUIImageNamed(v23);
                [(PKPaymentSetupListItem *)v15 setIcon:v32];

                [v54 addObject:v15];
              }

LABEL_43:

              continue;
            }

            if (v21 == 2)
            {
              if (!v56)
              {
                v22 = PKLocalizedPaymentString(&cfstr_AddNewCardTitl.isa);
                [(PKPaymentSetupListItem *)v15 setTitle:v22];

                v23 = @"Add_New_Card";
                goto LABEL_28;
              }

              goto LABEL_43;
            }

LABEL_21:
            v24 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v30 = PKPaymentSupportedProvisioningMethodToString();
              *buf = 138412290;
              v66 = v30;
              _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Unsupported method type: %@", buf, 0xCu);
            }

            goto LABEL_23;
          }

          if (v21 != 5)
          {
            if (v21 != 6)
            {
              goto LABEL_21;
            }

            if (!v56)
            {
              goto LABEL_43;
            }

            v24 = v14;
            v25 = [v24 appClipLaunchURL];
            v26 = [v52 objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = [v24 localizedTitle];
              [(PKPaymentSetupListItem *)v15 setTitle:v27];

              v28 = PKUIImageNamed(@"App_Clip_Fallback_Icon");
              [(PKPaymentSetupListItem *)v15 setIcon:v28];

              [v51 addObject:v15];
              v29 = [v26 fullAppIconURL];
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke;
              v58[3] = &unk_1E8012968;
              v59 = v15;
              v60 = self;
              PKCommonCachedImageFromURL(v29, v58);
            }

LABEL_23:
            goto LABEL_43;
          }

          v33 = v14;
          v34 = [v33 associatedStoreIdentifiers];
          v35 = [v55 objectForKeyedSubscript:v34];

          if (v35)
          {
            v36 = [v35 iconImage];
            if (v36)
            {
              [(PKPaymentSetupListItem *)v15 setIcon:v36];
            }

            else
            {
              v37 = PKUIImageNamed(@"App_Fallback_Icon");
              [(PKPaymentSetupListItem *)v15 setIcon:v37];
            }

            if ([v35 isInstalled])
            {
              v38 = [v35 displayName];
              [(PKPaymentSetupListItem *)v15 setTitle:v38];
              v39 = v50;
              goto LABEL_40;
            }

            if (v56)
            {
              v38 = [v35 displayName];
              if (v38)
              {
                [(PKPaymentSetupListItem *)v15 setTitle:v38];
              }

              else
              {
                v40 = [v33 localizedTitle];
                [(PKPaymentSetupListItem *)v15 setTitle:v40];
              }

              v39 = v51;
LABEL_40:

              [v39 addObject:v15];
            }
          }

          goto LABEL_43;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v11);
  }

  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v54 count])
  {
    v42 = [v54 sortedArrayUsingComparator:&__block_literal_global_20];
    newCardItems = self->_newCardItems;
    self->_newCardItems = v42;

    [v41 addObject:@"NewCardSection"];
  }

  if ([v50 count])
  {
    v44 = [v50 sortedArrayUsingComparator:&__block_literal_global_72];
    installedItems = self->_installedItems;
    self->_installedItems = v44;

    [v41 addObject:@"InstalledAppsSection"];
  }

  if ([v51 count])
  {
    v46 = [v51 sortedArrayUsingComparator:&__block_literal_global_74];
    otherItems = self->_otherItems;
    self->_otherItems = v46;

    [v41 addObject:@"OtherSection"];
  }

  if ([v41 count])
  {
    v48 = [v41 copy];
    [(PKPaymentSetupListSectionController *)self setIdentifiers:v48];
  }
}

void __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) setIcon:?];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 104));
    [WeakRetained reloadItem:*(a1 + 32) animated:1];
  }
}

BOOL __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

BOOL __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

BOOL __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupProductProvidersSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v13 decoratePaymentSetListCell:v7 forItem:v8 style:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 icon];
    [v9 setImage:v10];

    v11 = [v9 imageProperties];
    [v11 setMaximumSize:{32.0, 32.0}];
    [v11 setReservedLayoutSize:{32.0, 32.0}];
    [v11 setCornerRadius:4.0];
  }

  [v7 setContentConfiguration:v9];

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([v5 isEqualToString:@"NewCardSection"])
  {
    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__newCardItems;
  }

  else if ([v5 isEqualToString:@"InstalledAppsSection"])
  {
    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__installedItems;
  }

  else
  {
    if (![v5 isEqualToString:@"OtherSection"])
    {
      goto LABEL_8;
    }

    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__otherItems;
  }

  [v6 appendItems:*(&self->super.super.isa + *v7)];
LABEL_8:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  if (([v7 isEqualToString:@"InstalledAppsSection"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"OtherSection"))
  {
    [v8 setHeaderMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:v6];
  [v9 contentInsets];
  [v9 setContentInsets:PKSetupViewConstantsListSectionInset(v10)];

  return v9;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v8 isEqualToString:@"InstalledAppsSection"])
  {
    v9 = @"FROM_APPS_ON_IPHONE_SECTION_TITLE";
  }

  else
  {
    if (![v8 isEqualToString:@"OtherSection"] || !self->_newCardItems && !self->_installedItems)
    {
      goto LABEL_11;
    }

    v9 = @"OTHER_SECTION_TITLE";
  }

  v10 = PKLocalizedPaymentString(&v9->isa);
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x1E69DCC28] headerConfiguration];
    [v12 setAxesPreservingSuperviewLayoutMargins:0];
    v20[0] = *MEMORY[0x1E69DB648];
    v13 = PKOBKListHeaderFont();
    v21[0] = v13;
    v20[1] = *MEMORY[0x1E69DB650];
    v14 = PKOBKListHeaderTextColor();
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v15];
    [v12 setAttributedText:v16];

    v17 = PKSetupViewConstantsViewMargin();
    v18 = PKSetupListViewConstantsViewMargin();
    v19 = v17 - v18;
    if (v18 > v17)
    {
      v19 = 0.0;
    }

    [v12 setDirectionalLayoutMargins:{10.0, v19, 10.0, v19}];
    [v7 setContentConfiguration:v12];
  }

LABEL_11:
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  [v4 setLoadingIndicatorVisible:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadItem:v4 animated:1];

  v7 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 setupProductMethod];

  [v7 didSelectProviderWithSetupMethod:v6];
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)a3
{
  v3 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_newCardItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        [v10 setLoadingIndicatorVisible:0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained reloadItem:v10 animated:v3];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_installedItems;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * j);
        [v17 setLoadingIndicatorVisible:0];
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 reloadItem:v17 animated:v3];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_otherItems;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * k);
        [v24 setLoadingIndicatorVisible:{0, v27}];
        v25 = objc_loadWeakRetained(&self->_delegate);
        [v25 reloadItem:v24 animated:v3];
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  v26 = objc_loadWeakRetained(&self->_delegate);
  [v26 deselectCells];
}

@end