@interface WFWalletTransactionTriggerConfigurationViewController
+ (BOOL)passIsAppleAccess:(id)access;
- (BOOL)paymentPassesSelected;
- (WFWalletTransactionTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)allPassIdentifiers;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)merchantIconForMerchantType:(unint64_t)type;
- (id)passIconForPaymentPass:(id)pass preferredIconSize:(CGSize)size;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchPassesWithCompletion:(id)completion;
- (void)filterDuplicatePassesFromLocalPasses:(id)passes watchPasses:(id)watchPasses;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)walletMerchantViewController:(id)controller didFinishWithMerchants:(id)merchants;
@end

@implementation WFWalletTransactionTriggerConfigurationViewController

- (void)walletMerchantViewController:(id)controller didFinishWithMerchants:(id)merchants
{
  controllerCopy = controller;
  v7 = [merchants if_map:&__block_literal_global_343];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setSelectedMerchants:v7];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
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

- (void)presentNavControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(WFWalletTransactionTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)merchantIconForMerchantType:(unint64_t)type
{
  merchantIcons = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIcons];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v7 = [merchantIcons objectForKeyedSubscript:v6];

  if (!v7)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage *WFPKIconForMerchantCategory(PKMerchantCategory, CGSize, CGFloat, BOOL, BOOL)"}];
      [currentHandler handleFailureInFunction:v18 file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:37 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    if (type - 1 >= 7)
    {
      typeCopy = 0;
    }

    else
    {
      typeCopy = type;
    }

    v7 = (v11)(typeCopy, 0, 0, 45.0, 45.0, v10);

    merchantIcons2 = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIcons];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [merchantIcons2 setObject:v7 forKeyedSubscript:v15];
  }

  return v7;
}

- (id)passIconForPaymentPass:(id)pass preferredIconSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  passCopy = pass;
  passIcons = [(WFWalletTransactionTriggerConfigurationViewController *)self passIcons];
  uniqueID = [passCopy uniqueID];
  v10 = [passIcons objectForKeyedSubscript:uniqueID];

  if (!v10)
  {
    v11 = [MEMORY[0x277D37F20] constraintsWithAspectFitToSize:{width, height}];
    frontFaceImage = [passCopy frontFaceImage];
    v13 = [frontFaceImage resizedImageWithConstraints:v11];

    PassKitUILibrary();
    v10 = [MEMORY[0x277D755B8] imageWithPKImage:v13];
    passIcons2 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIcons];
    uniqueID2 = [passCopy uniqueID];
    [passIcons2 setObject:v10 forKeyedSubscript:uniqueID2];
  }

  return v10;
}

- (void)filterDuplicatePassesFromLocalPasses:(id)passes watchPasses:(id)watchPasses
{
  v60 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  watchPassesCopy = watchPasses;
  v42 = [passesCopy mutableCopy];
  v43 = [watchPassesCopy mutableCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = passesCopy;
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
        uniqueID = [v14 uniqueID];
        [v9 addObject:uniqueID];

        if ([v14 passType] == 1)
        {
          v16 = v14;
          if ([objc_opt_class() passIsAppleAccess:v16])
          {
            uniqueID2 = [v16 uniqueID];

            v48 = uniqueID2;
          }

          primaryAccountIdentifier = [v16 primaryAccountIdentifier];
          if (primaryAccountIdentifier)
          {
            [v7 setObject:v16 forKeyedSubscript:primaryAccountIdentifier];
          }

          pairedTerminalIdentifier = [v16 pairedTerminalIdentifier];
          if (pairedTerminalIdentifier)
          {
            [v8 setObject:v16 forKeyedSubscript:pairedTerminalIdentifier];
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
  v46 = watchPassesCopy;
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
        uniqueID3 = [v26 uniqueID];
        if ([v9 containsObject:uniqueID3])
        {
          goto LABEL_36;
        }

        if (v22 && [objc_opt_class() passIsAppleAccess:v26])
        {
          uniqueID4 = [v26 uniqueID];
          localPassesToRemotePassesUniqueIdentifierMapping = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
          [localPassesToRemotePassesUniqueIdentifierMapping setObject:uniqueID4 forKeyedSubscript:v22];
LABEL_35:

LABEL_36:
          [v21 removeObject:v26];
          goto LABEL_37;
        }

        if (![v26 activationState] || objc_msgSend(v26, "activationState") == 2)
        {
          if ([v26 isCarKeyPass] && (objc_msgSend(v26, "pairedTerminalIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "objectForKey:", v30), v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
          {
            pairedTerminalIdentifier2 = [v26 pairedTerminalIdentifier];
            v33 = v44;
          }

          else
          {
            primaryAccountIdentifier2 = [v26 primaryAccountIdentifier];
            v35 = [v45 objectForKey:primaryAccountIdentifier2];

            if (!v35)
            {
              goto LABEL_37;
            }

            pairedTerminalIdentifier2 = [v26 primaryAccountIdentifier];
            v33 = v45;
          }

          uniqueID4 = [v33 objectForKeyedSubscript:pairedTerminalIdentifier2];

          localPassesToRemotePassesUniqueIdentifierMapping = [v26 uniqueID];
          localPassesToRemotePassesUniqueIdentifierMapping2 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
          v28UniqueID = [uniqueID4 uniqueID];
          [localPassesToRemotePassesUniqueIdentifierMapping2 setObject:localPassesToRemotePassesUniqueIdentifierMapping forKeyedSubscript:v28UniqueID];

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

- (void)_fetchPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v5 = [mEMORY[0x277D37FC0] passesOfType:1];
  mEMORY[0x277D37FC0]2 = [MEMORY[0x277D37FC0] sharedInstanceWithRemoteLibrary];
  remoteSecureElementPasses = [mEMORY[0x277D37FC0]2 remoteSecureElementPasses];
  [(WFWalletTransactionTriggerConfigurationViewController *)self filterDuplicatePassesFromLocalPasses:v5 watchPasses:remoteSecureElementPasses];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v67 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFWalletTransactionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
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

    passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
    v12 = [passes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selectedPassUniqueIDs = [trigger selectedPassUniqueIDs];
    uniqueID = [v12 uniqueID];
    v16 = [selectedPassUniqueIDs containsObject:uniqueID];

    if (v16)
    {
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedPassUniqueIDs2 = [trigger2 selectedPassUniqueIDs];
      trigger11 = [selectedPassUniqueIDs2 mutableCopy];

      uniqueID2 = [v12 uniqueID];
      [(WFWalletMerchantSelectionTableViewController *)trigger11 removeObject:uniqueID2];

      localPassesToRemotePassesUniqueIdentifierMapping = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
      uniqueID3 = [v12 uniqueID];
      trigger8 = [localPassesToRemotePassesUniqueIdentifierMapping objectForKeyedSubscript:uniqueID3];

      if (trigger8)
      {
        [(WFWalletMerchantSelectionTableViewController *)trigger11 removeObject:trigger8];
      }

      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      allObjects = trigger3;
      v26 = trigger11;
LABEL_18:
      [trigger3 setSelectedPassUniqueIDs:v26];
      goto LABEL_19;
    }

    v37 = MEMORY[0x277CBEB58];
    trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedPassUniqueIDs3 = [trigger4 selectedPassUniqueIDs];
    trigger11 = [v37 setWithArray:selectedPassUniqueIDs3];

    uniqueID4 = [v12 uniqueID];
    [(WFWalletMerchantSelectionTableViewController *)trigger11 addObject:uniqueID4];

    localPassesToRemotePassesUniqueIdentifierMapping2 = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
    uniqueID5 = [v12 uniqueID];
    trigger8 = [localPassesToRemotePassesUniqueIdentifierMapping2 objectForKeyedSubscript:uniqueID5];

    if (trigger8)
    {
      [(WFWalletMerchantSelectionTableViewController *)trigger11 addObject:trigger8];
    }

    allObjects = [(WFWalletMerchantSelectionTableViewController *)trigger11 allObjects];
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger5 setSelectedPassUniqueIDs:allObjects];
LABEL_14:

LABEL_19:
    goto LABEL_20;
  }

  v27 = [v7 objectForKeyedSubscript:@"identifier"];
  v28 = [v27 isEqual:@"triggerRemotePassParameters"];

  if (v28)
  {
    remotePasses = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
    v12 = [remotePasses objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedPassUniqueIDs4 = [trigger6 selectedPassUniqueIDs];
    uniqueID6 = [v12 uniqueID];
    v33 = [selectedPassUniqueIDs4 containsObject:uniqueID6];

    if (v33)
    {
      trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedPassUniqueIDs5 = [trigger7 selectedPassUniqueIDs];
      trigger11 = [selectedPassUniqueIDs5 mutableCopy];

      uniqueID7 = [v12 uniqueID];
      [(WFWalletMerchantSelectionTableViewController *)trigger11 removeObject:uniqueID7];

      trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
      [(WFWalletMerchantSelectionTableViewController *)trigger8 setSelectedPassUniqueIDs:trigger11];
LABEL_20:

      goto LABEL_21;
    }

    v51 = MEMORY[0x277CBEB58];
    trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedPassUniqueIDs6 = [trigger9 selectedPassUniqueIDs];
    trigger11 = [v51 setWithArray:selectedPassUniqueIDs6];

    uniqueID8 = [v12 uniqueID];
    [(WFWalletMerchantSelectionTableViewController *)trigger11 addObject:uniqueID8];

    trigger8 = [(WFWalletMerchantSelectionTableViewController *)trigger11 allObjects];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    allObjects = trigger3;
    v26 = trigger8;
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
    v12 = [v58 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    trigger10 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedMerchantTypes = [trigger10 selectedMerchantTypes];
    v61 = [selectedMerchantTypes containsObject:v12];

    trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedMerchantTypes2 = [(WFWalletMerchantSelectionTableViewController *)trigger11 selectedMerchantTypes];
    trigger8 = selectedMerchantTypes2;
    if (v61)
    {
      [(WFWalletMerchantSelectionTableViewController *)selectedMerchantTypes2 if_arrayByRemovingObject:v12];
    }

    else
    {
      [(WFWalletMerchantSelectionTableViewController *)selectedMerchantTypes2 arrayByAddingObject:v12];
    }
    allObjects = ;
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger5 setSelectedMerchantTypes:allObjects];
    goto LABEL_14;
  }

  passes2 = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v12 = [passes2 if_flatMap:&__block_literal_global_329];

  v47 = [WFWalletMerchantSelectionTableViewController alloc];
  v48 = [MEMORY[0x277CBEB98] setWithArray:v12];
  trigger12 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedMerchants = [trigger12 selectedMerchants];
  trigger11 = [(WFWalletMerchantSelectionTableViewController *)v47 initWithTransactionIdentifiers:v48 selectedMerchants:selectedMerchants];

  [(WFWalletMerchantSelectionTableViewController *)trigger11 setDelegate:self];
  [(WFWalletTransactionTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:trigger11];
LABEL_21:

LABEL_22:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

id __91__WFWalletTransactionTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceTransactionSourceIdentifiers];
  v3 = [v2 allObjects];

  return v3;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFWalletTransactionTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFWalletTransactionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerPassParameters"];

  if (v12)
  {
    v69 = v9;
    v13 = v10;
    passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
    v67 = pathCopy;
    trigger4 = [passes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v16 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIconForPaymentPass:trigger4 preferredIconSize:45.0, 32.0];
    [v13 setImage:v16 width:45.0 height:32.0];
    [v13 setImageTopPadding:10.0 bottomPadding:10.0];
    [trigger4 localizedDescription];
    v18 = v17 = self;
    label = [v13 label];
    [label setText:v18];

    selfCopy2 = v17;
    trigger = [(WFTriggerConfigurationViewController *)v17 trigger];
    selectedPassUniqueIDs = [trigger selectedPassUniqueIDs];
    uniqueID = [trigger4 uniqueID];
    LODWORD(v17) = [selectedPassUniqueIDs containsObject:uniqueID];

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
      textLabel = [v26 textLabel];
      [textLabel setText:v27];

      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedMerchants = [trigger2 selectedMerchants];
      v31 = [selectedMerchants count];

      if (v31)
      {
        trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedMerchants2 = [trigger3 selectedMerchants];
        v34 = [selectedMerchants2 count];

        if (v34 == 1)
        {
          trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
          selectedMerchants3 = [trigger4 selectedMerchants];
          firstObject = [selectedMerchants3 firstObject];
          displayName = [firstObject displayName];
          detailTextLabel = [v26 detailTextLabel];
          [detailTextLabel setText:displayName];
        }

        else
        {
          v61 = MEMORY[0x277CCACA8];
          trigger4 = WFLocalizedString(@"Any of %lu Merchants");
          selectedMerchants3 = [(WFTriggerConfigurationViewController *)self trigger];
          v35SelectedMerchants = [selectedMerchants3 selectedMerchants];
          v63 = [v61 localizedStringWithFormat:trigger4, objc_msgSend(v35SelectedMerchants, "count")];
          detailTextLabel2 = [v26 detailTextLabel];
          [detailTextLabel2 setText:v63];
        }
      }

      else
      {
        trigger4 = WFLocalizedString(@"Choose");
        selectedMerchants3 = [v26 detailTextLabel];
        [selectedMerchants3 setText:trigger4];
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
      v51 = [v50 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      unsignedIntegerValue = [v51 unsignedIntegerValue];

      v53 = v10;
      v54 = PKLocalizedStringFromMerchantCategory();
      label2 = [v53 label];
      [label2 setText:v54];

      trigger4 = [(WFWalletTransactionTriggerConfigurationViewController *)self merchantIconForMerchantType:unsignedIntegerValue];
      [v53 setImage:trigger4 width:45.0 height:45.0];
      [v53 setImageTopPadding:10.0 bottomPadding:10.0];
      [v53 setCornerRadius:6.0];
      selfCopy = self;
      trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedMerchantTypes = [trigger5 selectedMerchantTypes];
      v58 = [v8 objectForKeyedSubscript:@"items"];
      v59 = [v58 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v60 = [selectedMerchantTypes containsObject:v59];

      if (v60)
      {
        [v53 setAccessoryType:3];
      }

      self = selfCopy;
      goto LABEL_5;
    }

    v69 = v9;
    v13 = v10;
    remotePasses = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
    v67 = pathCopy;
    trigger4 = [remotePasses objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v16 = [(WFWalletTransactionTriggerConfigurationViewController *)self passIconForPaymentPass:trigger4 preferredIconSize:42.0, 30.0];
    [v13 setImage:v16 width:42.0 height:30.0];
    [v13 setImageTopPadding:10.0 bottomPadding:10.0];
    localizedDescription = [trigger4 localizedDescription];
    label3 = [v13 label];
    [label3 setText:localizedDescription];

    selfCopy2 = self;
    trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedPassUniqueIDs2 = [trigger6 selectedPassUniqueIDs];
    uniqueID2 = [trigger4 uniqueID];
    v47 = [selectedPassUniqueIDs2 containsObject:uniqueID2];

    if (v47)
    {
      goto LABEL_3;
    }
  }

  self = selfCopy2;
  pathCopy = v67;
LABEL_5:
  v9 = v69;
LABEL_20:

LABEL_21:
  v65 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v65;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFWalletTransactionTriggerConfigurationViewController *)self infoForSection:section];
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
      passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
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

      passes = [v5 objectForKeyedSubscript:@"items"];
    }

    v14 = passes;
    v8 = [passes count];
  }

LABEL_9:

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFWalletTransactionTriggerConfigurationViewController;
  [(WFWalletTransactionTriggerConfigurationViewController *)&v6 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView setEstimatedRowHeight:100.0];

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
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forHeaderFooterViewReuseIdentifier:v6];
}

- (id)allPassIdentifiers
{
  passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v4 = [passes if_compactMap:&__block_literal_global_16750];
  remotePasses = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v6 = [remotePasses if_compactMap:&__block_literal_global_293];
  v7 = [v4 arrayByAddingObjectsFromArray:v6];
  localPassesToRemotePassesUniqueIdentifierMapping = [(WFWalletTransactionTriggerConfigurationViewController *)self localPassesToRemotePassesUniqueIdentifierMapping];
  allValues = [localPassesToRemotePassesUniqueIdentifierMapping allValues];
  v10 = [v7 arrayByAddingObjectsFromArray:allValues];

  return v10;
}

- (BOOL)paymentPassesSelected
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  selfCopy = self;
  remotePasses = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v5 = [passes arrayByAddingObjectsFromArray:remotePasses];

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
            trigger = [(WFTriggerConfigurationViewController *)selfCopy trigger];
            selectedPassUniqueIDs = [trigger selectedPassUniqueIDs];
            uniqueID = [v10 uniqueID];
            v14 = [selectedPassUniqueIDs containsObject:uniqueID];

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
  passes = [(WFWalletTransactionTriggerConfigurationViewController *)self passes];
  v5 = [passes count];

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

  remotePasses = [(WFWalletTransactionTriggerConfigurationViewController *)self remotePasses];
  v11 = [remotePasses count];

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
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selectedMerchants = [trigger selectedMerchants];
    v18 = [selectedMerchants count];

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

- (WFWalletTransactionTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFWalletTransactionTrigger class]]"}];
  }

  v22.receiver = self;
  v22.super_class = WFWalletTransactionTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v22 initWithTrigger:triggerCopy mode:mode];
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

+ (BOOL)passIsAppleAccess:(id)access
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  devicePaymentApplications = [access devicePaymentApplications];
  v4 = [devicePaymentApplications countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(devicePaymentApplications);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        automaticSelectionCriteria = [v8 automaticSelectionCriteria];
        v10 = [automaticSelectionCriteria countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(automaticSelectionCriteria);
              }

              type = [*(*(&v19 + 1) + 8 * j) type];
              v15 = PKEqualObjects();

              if (v15)
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v11 = [automaticSelectionCriteria countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v18;
      }

      v5 = [devicePaymentApplications countByEnumeratingWithState:&v23 objects:v28 count:16];
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