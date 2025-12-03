@interface PKPaymentSetupProductProvidersSectionController
- (PKPaymentSetupProductProvidersSectionController)initWithProduct:(id)product linkedApplications:(id)applications clipMetadata:(id)metadata showOtherProviders:(BOOL)providers delegate:(id)delegate;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_generateItems:(id)items linkedApplications:(id)applications clipMetadata:(id)metadata showOtherProviders:(BOOL)providers;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)hideLoadingIndicatorsAnimated:(BOOL)animated;
@end

@implementation PKPaymentSetupProductProvidersSectionController

- (PKPaymentSetupProductProvidersSectionController)initWithProduct:(id)product linkedApplications:(id)applications clipMetadata:(id)metadata showOtherProviders:(BOOL)providers delegate:(id)delegate
{
  providersCopy = providers;
  productCopy = product;
  applicationsCopy = applications;
  metadataCopy = metadata;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PKPaymentSetupProductProvidersSectionController;
  v16 = [(PKPaymentSetupListSectionController *)&v21 init];
  if (v16)
  {
    displayName = [productCopy displayName];
    productName = v16->_productName;
    v16->_productName = displayName;

    configuration = [productCopy configuration];
    v16->_productType = [configuration type];

    objc_storeWeak(&v16->_delegate, delegateCopy);
    [(PKPaymentSetupProductProvidersSectionController *)v16 _generateItems:productCopy linkedApplications:applicationsCopy clipMetadata:metadataCopy showOtherProviders:providersCopy];
  }

  return v16;
}

- (void)_generateItems:(id)items linkedApplications:(id)applications clipMetadata:(id)metadata showOtherProviders:(BOOL)providers
{
  providersCopy = providers;
  v68 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  applicationsCopy = applications;
  metadataCopy = metadata;
  v56 = providersCopy;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (providersCopy)
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
  v49 = itemsCopy;
  obj = [itemsCopy setupProductMethods];
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
          partnerIdentifier = [v14 partnerIdentifier];
          localizedTitle = [v14 localizedTitle];
          [v14 type];
          v19 = PKPaymentSupportedProvisioningMethodToString();
          v20 = [v16 stringWithFormat:@"%@-%@-%@", partnerIdentifier, localizedTitle, v19];

          [(PKPaymentSetupListItem *)v15 setIdentifier:v20];
          [(PKPaymentSetupProductProviderListItem *)v15 setSetupProductMethod:v14];
          [(PKPaymentSetupListItem *)v15 setLoadingIndicatorVisible:0];
          [(PKPaymentSetupListItem *)v15 setDisplayChevron:1];
          type = [v14 type];
          if (type <= 4)
          {
            if (type == 1)
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

            if (type == 2)
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

          if (type != 5)
          {
            if (type != 6)
            {
              goto LABEL_21;
            }

            if (!v56)
            {
              goto LABEL_43;
            }

            v24 = v14;
            appClipLaunchURL = [v24 appClipLaunchURL];
            v26 = [metadataCopy objectForKeyedSubscript:appClipLaunchURL];

            if (v26)
            {
              localizedTitle2 = [v24 localizedTitle];
              [(PKPaymentSetupListItem *)v15 setTitle:localizedTitle2];

              v28 = PKUIImageNamed(@"App_Clip_Fallback_Icon");
              [(PKPaymentSetupListItem *)v15 setIcon:v28];

              [v51 addObject:v15];
              fullAppIconURL = [v26 fullAppIconURL];
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __117__PKPaymentSetupProductProvidersSectionController__generateItems_linkedApplications_clipMetadata_showOtherProviders___block_invoke;
              v58[3] = &unk_1E8012968;
              v59 = v15;
              selfCopy = self;
              PKCommonCachedImageFromURL(fullAppIconURL, v58);
            }

LABEL_23:
            goto LABEL_43;
          }

          v33 = v14;
          associatedStoreIdentifiers = [v33 associatedStoreIdentifiers];
          v35 = [applicationsCopy objectForKeyedSubscript:associatedStoreIdentifiers];

          if (v35)
          {
            iconImage = [v35 iconImage];
            if (iconImage)
            {
              [(PKPaymentSetupListItem *)v15 setIcon:iconImage];
            }

            else
            {
              v37 = PKUIImageNamed(@"App_Fallback_Icon");
              [(PKPaymentSetupListItem *)v15 setIcon:v37];
            }

            if ([v35 isInstalled])
            {
              displayName = [v35 displayName];
              [(PKPaymentSetupListItem *)v15 setTitle:displayName];
              v39 = v50;
              goto LABEL_40;
            }

            if (v56)
            {
              displayName = [v35 displayName];
              if (displayName)
              {
                [(PKPaymentSetupListItem *)v15 setTitle:displayName];
              }

              else
              {
                localizedTitle3 = [v33 localizedTitle];
                [(PKPaymentSetupListItem *)v15 setTitle:localizedTitle3];
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

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  cellCopy = cell;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupProductProvidersSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v13 decoratePaymentSetListCell:cellCopy forItem:itemCopy style:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    icon = [itemCopy icon];
    [v9 setImage:icon];

    imageProperties = [v9 imageProperties];
    [imageProperties setMaximumSize:{32.0, 32.0}];
    [imageProperties setReservedLayoutSize:{32.0, 32.0}];
    [imageProperties setCornerRadius:4.0];
  }

  [cellCopy setContentConfiguration:v9];

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([identifierCopy isEqualToString:@"NewCardSection"])
  {
    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__newCardItems;
  }

  else if ([identifierCopy isEqualToString:@"InstalledAppsSection"])
  {
    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__installedItems;
  }

  else
  {
    if (![identifierCopy isEqualToString:@"OtherSection"])
    {
      goto LABEL_8;
    }

    v7 = &OBJC_IVAR___PKPaymentSetupProductProvidersSectionController__otherItems;
  }

  [v6 appendItems:*(&self->super.super.isa + *v7)];
LABEL_8:

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  if (([identifierCopy isEqualToString:@"InstalledAppsSection"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"OtherSection"))
  {
    [defaultListLayout setHeaderMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];
  [v9 contentInsets];
  [v9 setContentInsets:PKSetupViewConstantsListSectionInset(v10)];

  return v9;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  v21[2] = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"InstalledAppsSection"])
  {
    v9 = @"FROM_APPS_ON_IPHONE_SECTION_TITLE";
  }

  else
  {
    if (![identifierCopy isEqualToString:@"OtherSection"] || !self->_newCardItems && !self->_installedItems)
    {
      goto LABEL_11;
    }

    v9 = @"OTHER_SECTION_TITLE";
  }

  v10 = PKLocalizedPaymentString(&v9->isa);
  if (v10)
  {
    v11 = v10;
    headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
    [headerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
    v20[0] = *MEMORY[0x1E69DB648];
    v13 = PKOBKListHeaderFont();
    v21[0] = v13;
    v20[1] = *MEMORY[0x1E69DB650];
    v14 = PKOBKListHeaderTextColor();
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v15];
    [headerConfiguration setAttributedText:v16];

    v17 = PKSetupViewConstantsViewMargin();
    v18 = PKSetupListViewConstantsViewMargin();
    v19 = v17 - v18;
    if (v18 > v17)
    {
      v19 = 0.0;
    }

    [headerConfiguration setDirectionalLayoutMargins:{10.0, v19, 10.0, v19}];
    [registrationCopy setContentConfiguration:headerConfiguration];
  }

LABEL_11:
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  [itemCopy setLoadingIndicatorVisible:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadItem:itemCopy animated:1];

  v7 = objc_loadWeakRetained(&self->_delegate);
  setupProductMethod = [itemCopy setupProductMethod];

  [v7 didSelectProviderWithSetupMethod:setupProductMethod];
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
        [WeakRetained reloadItem:v10 animated:animatedCopy];
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
        [v18 reloadItem:v17 animated:animatedCopy];
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
        [v25 reloadItem:v24 animated:animatedCopy];
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  v26 = objc_loadWeakRetained(&self->_delegate);
  [v26 deselectCells];
}

@end