@interface WFWalletTransactionTriggerConfigurationViewController
+ (BOOL)passIsAppleAccess:(id)a3;
- (BOOL)paymentPassesSelected;
- (WFWalletTransactionTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)allPassIdentifiers;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)merchantIconForMerchantType:(unint64_t)a3;
- (id)passIconForPaymentPass:(id)a3 preferredIconSize:(CGSize)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchPassesWithCompletion:(id)a3;
- (void)filterDuplicatePassesFromLocalPasses:(id)a3 watchPasses:(id)a4;
- (void)presentNavControllerWithRootViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)walletMerchantViewController:(id)a3 didFinishWithMerchants:(id)a4;
@end

@implementation WFWalletTransactionTriggerConfigurationViewController

- (void)walletMerchantViewController:(id)a3 didFinishWithMerchants:(id)a4
{
  v6 = a3;
  v7 = [a4 if_map:&__block_literal_global_343];
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setSelectedMerchants:v7];

  [v6 dismissViewControllerAnimated:1 completion:0];
  v9 = [(WFTriggerConfigurationViewController *)self tableView];
  [v9 reloadData];
}

id __109__WFWalletTransactionTriggerConfigurationViewController_walletMerchantViewController_didFinishWithMerchants___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFC580];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 displayName];
  v6 = [v3 uniqueIdentifier];
  v7 = [v3 logoImageURL];
  v8 = [v3 category];

  if ((v8 - 1) >= 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v4 initWithDisplayName:v5 uniqueIdentifier:v6 logoURL:v7 merchantType:v9];

  return v10;
}

- (void)presentNavControllerWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];

  [(WFWalletTransactionTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)merchantIconForMerchantType:(unint64_t)a3
{
  v5 = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIcons];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = v9;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v11 = getPKIconForMerchantCategorySymbolLoc_ptr;
    v22 = getPKIconForMerchantCategorySymbolLoc_ptr;
    if (!getPKIconForMerchantCategorySymbolLoc_ptr)
    {
      v12 = PassKitUILibrary();
      v20[3] = dlsym(v12, "PKIconForMerchantCategory");
      getPKIconForMerchantCategorySymbolLoc_ptr = v20[3];
      v11 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v11)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage *WFPKIconForMerchantCategory(PKMerchantCategory, CGSize, CGFloat, BOOL, BOOL)"}];
      [v17 handleFailureInFunction:v18 file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:37 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    if (a3 - 1 >= 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    v7 = (v11)(v13, 0, 0, 45.0, 45.0, v10);

    v14 = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIcons];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v14 setObject:v7 forKeyedSubscript:v15];
  }

  return v7;
}

- (id)passIconForPaymentPass:(id)a3 preferredIconSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIcons];
  v9 = [v7 uniqueID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [MEMORY[0x277D37F20] constraintsWithAspectFitToSize:{width, height}];
    v12 = [v7 frontFaceImage];
    v13 = [v12 resizedImageWithConstraints:v11];

    PassKitUILibrary();
    v10 = [MEMORY[0x277D755B8] imageWithPKImage:v13];
    v14 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIcons];
    v15 = [v7 uniqueID];
    [v14 setObject:v10 forKeyedSubscript:v15];
  }

  return v10;
}

- (void)filterDuplicatePassesFromLocalPasses:(id)a3 watchPasses:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v42 = [v5 mutableCopy];
  v43 = [v6 mutableCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v48 = 0;
    v12 = *v55;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        v15 = [v14 uniqueID];
        [v9 addObject:v15];

        if ([v14 passType] == 1)
        {
          v16 = v14;
          if ([objc_opt_class() passIsAppleAccess:v16])
          {
            v17 = [v16 uniqueID];

            v48 = v17;
          }

          v18 = [v16 primaryAccountIdentifier];
          if (v18)
          {
            [v7 setObject:v16 forKeyedSubscript:v18];
          }

          v19 = [v16 pairedTerminalIdentifier];
          if (v19)
          {
            [v8 setObject:v16 forKeyedSubscript:v19];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v11);
  }

  else
  {
    v48 = 0;
  }

  v44 = v8;
  v45 = v7;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v46 = v6;
  v20 = [v46 countByEnumeratingWithState:&v50 objects:v58 count:16];
  v21 = v43;
  v22 = v48;
  if (v20)
  {
    v23 = v20;
    v24 = *v51;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v46);
        }

        v26 = *(*(&v50 + 1) + 8 * j);
        v27 = [v26 uniqueID];
        if ([v9 containsObject:v27])
        {
          goto LABEL_36;
        }

        if (v22 && [objc_opt_class() passIsAppleAccess:v26])
        {
          v28 = [v26 uniqueID];
          v29 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
          [v29 setObject:v28 forKeyedSubscript:v22];
LABEL_35:

LABEL_36:
          [v21 removeObject:v26];
          goto LABEL_37;
        }

        if (![v26 activationState] || objc_msgSend(v26, "activationState") == 2)
        {
          if ([v26 isCarKeyPass] && (objc_msgSend(v26, "pairedTerminalIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "objectForKey:", v30), v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
          {
            v32 = [v26 pairedTerminalIdentifier];
            v33 = v44;
          }

          else
          {
            v34 = [v26 primaryAccountIdentifier];
            v35 = [v45 objectForKey:v34];

            if (!v35)
            {
              goto LABEL_37;
            }

            v32 = [v26 primaryAccountIdentifier];
            v33 = v45;
          }

          v28 = [v33 objectForKeyedSubscript:v32];

          v29 = [v26 uniqueID];
          v36 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
          v37 = [v28 uniqueID];
          [v36 setObject:v29 forKeyedSubscript:v37];

          v21 = v43;
          v22 = v48;
          goto LABEL_35;
        }

LABEL_37:
      }

      v23 = [v46 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v23);
  }

  v38 = [v42 sortedArrayUsingComparator:&__block_literal_global_334];
  passes = self->_passes;
  self->_passes = v38;

  v40 = [v21 sortedArrayUsingComparator:&__block_literal_global_336];
  remotePasses = self->_remotePasses;
  self->_remotePasses = v40;
}

uint64_t __106__WFWalletTransactionTriggerConfigurationViewController_filterDuplicatePassesFromLocalPasses_watchPasses___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __106__WFWalletTransactionTriggerConfigurationViewController_filterDuplicatePassesFromLocalPasses_watchPasses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_fetchPassesWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277D37FC0] sharedInstance];
  v5 = [v4 passesOfType:1];
  v6 = [MEMORY[0x277D37FC0] sharedInstanceWithRemoteLibrary];
  v7 = [v6 remoteSecureElementPasses];
  [(WFWalletTransactionTriggerConfigurationViewController *)self filterDuplicatePassesFromLocalPasses:v5 watchPasses:v7];
  if (v8)
  {
    v8[2](v8, 1);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFWalletTransactionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"triggerPassParameters"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v63 = 136315394;
      v64 = "[WFWalletTransactionTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v65 = 2114;
      v66 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", &v63, 0x16u);
    }

    v11 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v13 = [(WFTriggerConfigurationViewController *)self trigger];
    v14 = [v13 selectedPassUniqueIDs];
    v15 = [v12 uniqueID];
    v16 = [v14 containsObject:v15];

    if (v16)
    {
      v17 = [(WFTriggerConfigurationViewController *)self trigger];
      v18 = [v17 selectedPassUniqueIDs];
      v19 = [v18 mutableCopy];

      v20 = [v12 uniqueID];
      [(WFWalletMerchantSelectionTableViewController *)v19 removeObject:v20];

      v21 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
      v22 = [v12 uniqueID];
      v23 = [v21 objectForKeyedSubscript:v22];

      if (v23)
      {
        [(WFWalletMerchantSelectionTableViewController *)v19 removeObject:v23];
      }

      v24 = [(WFTriggerConfigurationViewController *)self trigger];
      v25 = v24;
      v26 = v19;
LABEL_18:
      [v24 setSelectedPassUniqueIDs:v26];
      goto LABEL_19;
    }

    v37 = MEMORY[0x277CBEB58];
    v38 = [(WFTriggerConfigurationViewController *)self trigger];
    v39 = [v38 selectedPassUniqueIDs];
    v19 = [v37 setWithArray:v39];

    v40 = [v12 uniqueID];
    [(WFWalletMerchantSelectionTableViewController *)v19 addObject:v40];

    v41 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
    v42 = [v12 uniqueID];
    v23 = [v41 objectForKeyedSubscript:v42];

    if (v23)
    {
      [(WFWalletMerchantSelectionTableViewController *)v19 addObject:v23];
    }

    v25 = [(WFWalletMerchantSelectionTableViewController *)v19 allObjects];
    v43 = [(WFTriggerConfigurationViewController *)self trigger];
    [v43 setSelectedPassUniqueIDs:v25];
LABEL_14:

LABEL_19:
    goto LABEL_20;
  }

  v27 = [v7 objectForKeyedSubscript:@"identifier"];
  v28 = [v27 isEqual:@"triggerRemotePassParameters"];

  if (v28)
  {
    v29 = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
    v12 = [v29 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v30 = [(WFTriggerConfigurationViewController *)self trigger];
    v31 = [v30 selectedPassUniqueIDs];
    v32 = [v12 uniqueID];
    v33 = [v31 containsObject:v32];

    if (v33)
    {
      v34 = [(WFTriggerConfigurationViewController *)self trigger];
      v35 = [v34 selectedPassUniqueIDs];
      v19 = [v35 mutableCopy];

      v36 = [v12 uniqueID];
      [(WFWalletMerchantSelectionTableViewController *)v19 removeObject:v36];

      v23 = [(WFTriggerConfigurationViewController *)self trigger];
      [(WFWalletMerchantSelectionTableViewController *)v23 setSelectedPassUniqueIDs:v19];
LABEL_20:

      goto LABEL_21;
    }

    v51 = MEMORY[0x277CBEB58];
    v52 = [(WFTriggerConfigurationViewController *)self trigger];
    v53 = [v52 selectedPassUniqueIDs];
    v19 = [v51 setWithArray:v53];

    v54 = [v12 uniqueID];
    [(WFWalletMerchantSelectionTableViewController *)v19 addObject:v54];

    v23 = [(WFWalletMerchantSelectionTableViewController *)v19 allObjects];
    v24 = [(WFTriggerConfigurationViewController *)self trigger];
    v25 = v24;
    v26 = v23;
    goto LABEL_18;
  }

  v44 = [v7 objectForKeyedSubscript:@"identifier"];
  v45 = [v44 isEqual:@"merchants"];

  if (!v45)
  {
    v56 = [v7 objectForKeyedSubscript:@"identifier"];
    v57 = [v56 isEqualToString:@"triggerTransactionMerchantType"];

    if (!v57)
    {
      goto LABEL_22;
    }

    v58 = [v7 objectForKeyedSubscript:@"items"];
    v12 = [v58 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v59 = [(WFTriggerConfigurationViewController *)self trigger];
    v60 = [v59 selectedMerchantTypes];
    v61 = [v60 containsObject:v12];

    v19 = [(WFTriggerConfigurationViewController *)self trigger];
    v62 = [(WFWalletMerchantSelectionTableViewController *)v19 selectedMerchantTypes];
    v23 = v62;
    if (v61)
    {
      [(WFWalletMerchantSelectionTableViewController *)v62 if_arrayByRemovingObject:v12];
    }

    else
    {
      [(WFWalletMerchantSelectionTableViewController *)v62 arrayByAddingObject:v12];
    }
    v25 = ;
    v43 = [(WFTriggerConfigurationViewController *)self trigger];
    [v43 setSelectedMerchantTypes:v25];
    goto LABEL_14;
  }

  v46 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v12 = [v46 if_flatMap:&__block_literal_global_329];

  v47 = [WFWalletMerchantSelectionTableViewController alloc];
  v48 = [MEMORY[0x277CBEB98] setWithArray:v12];
  v49 = [(WFTriggerConfigurationViewController *)self trigger];
  v50 = [v49 selectedMerchants];
  v19 = [(WFWalletMerchantSelectionTableViewController *)v47 initWithTransactionIdentifiers:v48 selectedMerchants:v50];

  [(WFWalletMerchantSelectionTableViewController *)v19 setDelegate:self];
  [(WFWalletTransactionTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v19];
LABEL_21:

LABEL_22:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v55 = [(WFTriggerConfigurationViewController *)self tableView];
  [v55 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

id __91__WFWalletTransactionTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceTransactionSourceIdentifiers];
  v3 = [v2 allObjects];

  return v3;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFWalletTransactionTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFWalletTransactionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerPassParameters"];

  if (v12)
  {
    v69 = v9;
    v13 = v10;
    v14 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
    v67 = v6;
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v16 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIconForPaymentPass:v15 preferredIconSize:45.0, 32.0];
    [v13 setImage:v16 width:45.0 height:32.0];
    [v13 setImageTopPadding:10.0 bottomPadding:10.0];
    [v15 localizedDescription];
    v18 = v17 = self;
    v19 = [v13 label];
    [v19 setText:v18];

    v20 = v17;
    v21 = [(WFTriggerConfigurationViewController *)v17 trigger];
    v22 = [v21 selectedPassUniqueIDs];
    v23 = [v15 uniqueID];
    LODWORD(v17) = [v22 containsObject:v23];

    if (v17)
    {
LABEL_3:
      [v13 setAccessoryType:3];
    }
  }

  else
  {
    v24 = [v8 objectForKeyedSubscript:@"identifier"];
    v25 = [v24 isEqual:@"merchants"];

    if (v25)
    {
      v26 = v10;
      v27 = WFLocalizedString(@"Filter Merchants");
      v28 = [v26 textLabel];
      [v28 setText:v27];

      v29 = [(WFTriggerConfigurationViewController *)self trigger];
      v30 = [v29 selectedMerchants];
      v31 = [v30 count];

      if (v31)
      {
        v32 = [(WFTriggerConfigurationViewController *)self trigger];
        v33 = [v32 selectedMerchants];
        v34 = [v33 count];

        if (v34 == 1)
        {
          v15 = [(WFTriggerConfigurationViewController *)self trigger];
          v35 = [v15 selectedMerchants];
          v36 = [v35 firstObject];
          v37 = [v36 displayName];
          v38 = [v26 detailTextLabel];
          [v38 setText:v37];
        }

        else
        {
          v61 = MEMORY[0x277CCACA8];
          v15 = WFLocalizedString(@"Any of %lu Merchants");
          v35 = [(WFTriggerConfigurationViewController *)self trigger];
          v62 = [v35 selectedMerchants];
          v63 = [v61 localizedStringWithFormat:v15, objc_msgSend(v62, "count")];
          v64 = [v26 detailTextLabel];
          [v64 setText:v63];
        }
      }

      else
      {
        v15 = WFLocalizedString(@"Choose");
        v35 = [v26 detailTextLabel];
        [v35 setText:v15];
      }

      goto LABEL_20;
    }

    v39 = [v8 objectForKeyedSubscript:@"identifier"];
    v40 = [v39 isEqual:@"triggerRemotePassParameters"];

    if (!v40)
    {
      v48 = [v8 objectForKeyedSubscript:@"identifier"];
      v49 = [v48 isEqualToString:@"triggerTransactionMerchantType"];

      if (!v49)
      {
        goto LABEL_21;
      }

      v69 = v9;
      v50 = [v8 objectForKeyedSubscript:@"items"];
      v51 = [v50 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v52 = [v51 unsignedIntegerValue];

      v53 = v10;
      v54 = PKLocalizedStringFromMerchantCategory();
      v55 = [v53 label];
      [v55 setText:v54];

      v15 = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIconForMerchantType:v52];
      [v53 setImage:v15 width:45.0 height:45.0];
      [v53 setImageTopPadding:10.0 bottomPadding:10.0];
      [v53 setCornerRadius:6.0];
      v68 = self;
      v56 = [(WFTriggerConfigurationViewController *)self trigger];
      v57 = [v56 selectedMerchantTypes];
      v58 = [v8 objectForKeyedSubscript:@"items"];
      v59 = [v58 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v60 = [v57 containsObject:v59];

      if (v60)
      {
        [v53 setAccessoryType:3];
      }

      self = v68;
      goto LABEL_5;
    }

    v69 = v9;
    v13 = v10;
    v41 = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
    v67 = v6;
    v15 = [v41 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v16 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIconForPaymentPass:v15 preferredIconSize:42.0, 30.0];
    [v13 setImage:v16 width:42.0 height:30.0];
    [v13 setImageTopPadding:10.0 bottomPadding:10.0];
    v42 = [v15 localizedDescription];
    v43 = [v13 label];
    [v43 setText:v42];

    v20 = self;
    v44 = [(WFTriggerConfigurationViewController *)self trigger];
    v45 = [v44 selectedPassUniqueIDs];
    v46 = [v15 uniqueID];
    v47 = [v45 containsObject:v46];

    if (v47)
    {
      goto LABEL_3;
    }
  }

  self = v20;
  v6 = v67;
LABEL_5:
  v9 = v69;
LABEL_20:

LABEL_21:
  v65 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v65;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFWalletTransactionTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqualToString:@"merchants"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"identifier"];
    v10 = [v9 isEqualToString:@"triggerPassParameters"];

    if (v10)
    {
      v11 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
    }

    else
    {
      v12 = [v5 objectForKeyedSubscript:@"identifier"];
      v13 = [v12 isEqualToString:@"triggerTransactionMerchantType"];

      if (!v13)
      {
        v8 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
        goto LABEL_9;
      }

      v11 = [v5 objectForKeyedSubscript:@"items"];
    }

    v14 = v11;
    v8 = [v11 count];
  }

LABEL_9:

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFWalletTransactionTriggerConfigurationViewController;
  [(WFWalletTransactionTriggerConfigurationViewController *)&v6 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 setEstimatedRowHeight:100.0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__WFWalletTransactionTriggerConfigurationViewController_viewWillAppear___block_invoke;
  v5[3] = &unk_279EE8868;
  v5[4] = self;
  [(WFWalletTransactionTriggerConfigurationViewController *)self _fetchPassesWithCompletion:v5];
}

void __72__WFWalletTransactionTriggerConfigurationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) mode])
  {
    v2 = [*(a1 + 32) allPassIdentifiers];
    v3 = [*(a1 + 32) trigger];
    [v3 setSelectedPassUniqueIDs:v2];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WFWalletTransactionTriggerConfigurationViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_279EE8A78;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__WFWalletTransactionTriggerConfigurationViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updateNextButtonEnabledState];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFWalletTransactionTriggerConfigurationViewController;
  [(WFTriggerConfigurationViewController *)&v7 viewDidLoad];
  v3 = [(WFTriggerConfigurationViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v6];
}

- (id)allPassIdentifiers
{
  v3 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v4 = [v3 if_compactMap:&__block_literal_global_16750];
  v5 = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v6 = [v5 if_compactMap:&__block_literal_global_293];
  v7 = [v4 arrayByAddingObjectsFromArray:v6];
  v8 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
  v9 = [v8 allValues];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (BOOL)paymentPassesSelected
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v17 = self;
  v4 = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v10 cardType] == 1)
          {
            v11 = [(WFTriggerConfigurationViewController *)v17 trigger];
            v12 = [v11 selectedPassUniqueIDs];
            v13 = [v10 uniqueID];
            v14 = [v12 containsObject:v13];

            if (v14)
            {

              v15 = 1;
              goto LABEL_15;
            }
          }
        }

        else
        {

          v10 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (id)customSections
{
  v35[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v5 = [v4 count];

  if (v5)
  {
    v35[0] = @"triggerPassParameters";
    v34[0] = @"identifier";
    v34[1] = @"sectionTitle";
    v6 = WFLocalizedString(@"CARD");
    v35[1] = v6;
    v34[2] = @"cellIdentifier";
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v35[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    [v3 addObject:v9];
  }

  v10 = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v11 = [v10 count];

  if (v11)
  {
    v33[0] = @"triggerRemotePassParameters";
    v32[0] = @"identifier";
    v32[1] = @"sectionTitle";
    v12 = WFLocalizedString(@"OTHER CARDS ON YOUR WATCH");
    v33[1] = v12;
    v32[2] = @"cellIdentifier";
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v33[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    [v3 addObject:v15];
  }

  if ([(WFWalletTransactionTriggerConfigurationViewController *)self paymentPassesSelected])
  {
    v16 = [(WFTriggerConfigurationViewController *)self trigger];
    v17 = [v16 selectedMerchants];
    v18 = [v17 count];

    if (!v18)
    {
      v31[0] = @"triggerTransactionMerchantType";
      v30[0] = @"identifier";
      v30[1] = @"sectionTitle";
      v19 = WFLocalizedString(@"CATEGORY");
      v31[1] = v19;
      v30[2] = @"cellIdentifier";
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v30[3] = @"items";
      v31[2] = v21;
      v31[3] = &unk_2883C2210;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
      [v3 addObject:v22];
    }

    v28 = @"cellIdentifier";
    v29[0] = @"merchants";
    v27 = @"identifier";
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v29[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v27 count:2];
    [v3 addObject:{v25, v27, v28, v29[0]}];
  }

  return v3;
}

- (id)tableViewCellClasses
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFWalletTransactionTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFWalletTransactionTrigger class]]"}];
  }

  v22.receiver = self;
  v22.super_class = WFWalletTransactionTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v22 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    passes = v8->_passes;
    v11 = MEMORY[0x277CBEBF8];
    v8->_passes = MEMORY[0x277CBEBF8];

    remotePasses = v9->_remotePasses;
    v9->_remotePasses = v11;

    v9->_detailSelection = 0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localPassesToRemotePassesUniqueIdentifierMapping = v9->_localPassesToRemotePassesUniqueIdentifierMapping;
    v9->_localPassesToRemotePassesUniqueIdentifierMapping = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    passIcons = v9->_passIcons;
    v9->_passIcons = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    merchantIcons = v9->_merchantIcons;
    v9->_merchantIcons = v17;

    v19 = v9;
  }

  return v9;
}

+ (BOOL)passIsAppleAccess:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [a3 devicePaymentApplications];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v18 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [v8 automaticSelectionCriteria];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v19 + 1) + 8 * j) type];
              v15 = PKEqualObjects();

              if (v15)
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v18;
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

@end