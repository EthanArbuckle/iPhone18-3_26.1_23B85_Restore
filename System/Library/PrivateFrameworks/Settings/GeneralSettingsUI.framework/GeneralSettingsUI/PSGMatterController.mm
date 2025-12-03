@interface PSGMatterController
+ (BOOL)shouldShowTestSpecifiers;
+ (id)accessorySpecifierWithID:(id)d name:(id)name pairing:(id)pairing target:(id)target;
+ (id)testSpecifiers;
+ (void)shouldShowMatterControllerWithCompletion:(id)completion;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)aboutLinkWasTapped;
- (void)deleteAccessory:(id)accessory;
- (void)reloadAccessoriesWithCompletion:(id)completion;
- (void)showDeleteAllConfirmation:(id)confirmation;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation PSGMatterController

+ (void)shouldShowMatterControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PSGMatterController_shouldShowMatterControllerWithCompletion___block_invoke;
  v6[3] = &unk_278325450;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchPairingsWithCompletionHandler:v6];
}

void __64__PSGMatterController_shouldShowMatterControllerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__PSGMatterController_shouldShowMatterControllerWithCompletion___block_invoke_cold_1();
    }
  }

  if ([v5 count])
  {
    v8 = 1;
  }

  else if (+[PSGMatterController shouldShowTestSpecifiers])
  {
    v9 = +[PSGMatterController testSpecifiers];
    v8 = [v9 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

+ (BOOL)shouldShowTestSpecifiers
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"PSGMatterControllerShowTestDevices"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)testSpecifiers
{
  v3 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [self accessorySpecifierWithID:uUIDString name:@"Mock test device #1" pairing:0 target:0];
  [v3 addObject:v6];

  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v9 = [self accessorySpecifierWithID:uUIDString2 name:@"Mock test device #2" pairing:0 target:0];
  [v3 addObject:v9];

  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v12 = [self accessorySpecifierWithID:uUIDString3 name:@"Mock test device #3" pairing:0 target:0];
  [v3 addObject:v12];

  v13 = [v3 copy];

  return v13;
}

+ (id)accessorySpecifierWithID:(id)d name:(id)name pairing:(id)pairing target:(id)target
{
  v9 = MEMORY[0x277D3FAD8];
  targetCopy = target;
  pairingCopy = pairing;
  nameCopy = name;
  dCopy = d;
  v14 = [v9 preferenceSpecifierNamed:nameCopy target:targetCopy set:0 get:sel_detailText_ detail:objc_opt_class() cell:2 edit:0];

  [v14 setIdentifier:dCopy];
  [v14 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v14 setObject:pairingCopy forKeyedSubscript:@"PSGDevicePairingKey"];

  return v14;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = PSG_LocalizedStringForMatter(@"MATTER_ACCESSORIES_GROUP_FOOTER");
    v7 = PSG_LocalizedStringForMatter(@"MATTER_ACCESSORIES_GROUP_FOOTER_LINK");
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v7];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MATTER_ACCESSORIES_GROUP"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF70]];
    v18.location = [v8 rangeOfString:v7];
    v12 = NSStringFromRange(v18);
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF58]];

    v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF68]];

    [v9 setObject:@"aboutLinkWasTapped" forKeyedSubscript:*MEMORY[0x277D3FF50]];
    [v5 addObject:v9];
    v14 = [v5 copy];
    v15 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v14;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)aboutLinkWasTapped
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    v4 = @"https://support.apple.com/ht213441?cid=mc-ols-iphone-article_ht213441-ipados_ui-09062022";
  }

  else
  {
    v4 = @"https://support.apple.com/ht213441?cid=mc-ols-iphone-articl_ht213441-ios_ui-09062022";
  }

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)reloadAccessoriesWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  pairingManager = [(PSGMatterController *)self pairingManager];

  if (!pairingManager)
  {
    v6 = objc_opt_new();
    [(PSGMatterController *)self setPairingManager:v6];
  }

  v7 = _PSGLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PSGMatterController reloadAccessoriesWithCompletion:]";
    _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%s: querying for pairings.", buf, 0xCu);
  }

  pairingManager2 = [(PSGMatterController *)self pairingManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke;
  v11[3] = &unk_2783254F0;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [pairingManager2 fetchPairingsWithCompletionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PSGLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_cold_1();
    }
  }

  v28 = v6;
  v8 = objc_opt_new();
  if (+[PSGMatterController shouldShowTestSpecifiers])
  {
    v9 = +[PSGMatterController testSpecifiers];
    [v8 addObjectsFromArray:v9];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [v14 uuid];
        v16 = [v15 UUIDString];
        v17 = [v14 name];
        v18 = [PSGMatterController accessorySpecifierWithID:v16 name:v17 pairing:v14 target:*(a1 + 32)];

        v19 = _PSGLoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v14 name];
          v21 = [v14 uuid];
          v22 = [v21 UUIDString];
          *buf = 136315650;
          v40 = "[PSGMatterController reloadAccessoriesWithCompletion:]_block_invoke";
          v41 = 2112;
          v42 = v20;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&dword_21CF20000, v19, OS_LOG_TYPE_DEFAULT, "%s: found pairing %@ with uuid: %@", buf, 0x20u);
        }

        [v8 addObject:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v11);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_59;
  block[3] = &unk_2783254C8;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v31 = v8;
  v32 = v23;
  v33 = v28;
  v34 = v24;
  v25 = v28;
  v26 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_59(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(v1 + 40) accessorySpecifiers];
  v4 = *(v1 + 40);
  v31 = v3;
  if (*&v4[*MEMORY[0x277D3FC48]])
  {
    v5 = [v2 count];
    v6 = [v3 count];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v46;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(v1 + 40) removeSpecifier:*(*(&v45 + 1) + 8 * i) animated:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v9);
    }

    v12 = v5 != v6;

    v13 = *(v1 + 40);
    v14 = [v13 specifierForID:@"MATTER_ACCESSORIES_GROUP"];
    [v13 insertContiguousSpecifiers:v2 afterSpecifier:v14 animated:v12];

    v4 = *(v1 + 40);
  }

  v33 = v2;
  [v4 setAccessorySpecifiers:{v2, v31}];
  [*(v1 + 40) handlePendingURL];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [*(v1 + 40) accessorySpecifiers];
  v15 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    v34 = v1;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        v20 = [v19 objectForKeyedSubscript:@"PSGDevicePairingKey"];
        v21 = [objc_alloc(MEMORY[0x277CD5588]) initWithSystemCommissionerPairing:v20];
        v22 = _PSGLoggingFacility();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v20 name];
          v24 = [v20 uuid];
          [v24 UUIDString];
          v25 = v16;
          v27 = v26 = v17;
          *buf = 136315650;
          v50 = "[PSGMatterController reloadAccessoriesWithCompletion:]_block_invoke";
          v51 = 2112;
          v52 = v23;
          v53 = 2112;
          v54 = v27;
          _os_log_impl(&dword_21CF20000, v22, OS_LOG_TYPE_DEFAULT, "%s: querying for device pairings pairings for pairing %@ with uuid %@.", buf, 0x20u);

          v17 = v26;
          v16 = v25;
          v1 = v34;
        }

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_61;
        v36[3] = &unk_2783254A0;
        v37 = v20;
        v38 = *(v1 + 48);
        v39 = v19;
        v40 = *(v1 + 40);
        v28 = v20;
        [v21 fetchPairingsWithCompletionHandler:v36];
      }

      v16 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v16);
  }

  v29 = *(v1 + 56);
  if (v29)
  {
    (*(v29 + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_2;
  v9[3] = &unk_278325478;
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _PSGLoggingFacility();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_2_cold_1(a1, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) name];
    v6 = [*(a1 + 40) uuid];
    v7 = [v6 UUIDString];
    *buf = 136315650;
    v43 = "[PSGMatterController reloadAccessoriesWithCompletion:]_block_invoke";
    v44 = 2112;
    v45 = v5;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "%s: fetched device pairings for pairing %@ with uuid %@", buf, 0x20u);
  }

  if ([*(a1 + 56) count])
  {
    [MEMORY[0x277CBEB58] set];
    v34 = v33 = a1;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = *(a1 + 56);
    v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    v36 = *v38;
    v10 = *MEMORY[0x277CD5560];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = _PSGLoggingFacility();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v43 = "[PSGMatterController reloadAccessoriesWithCompletion:]_block_invoke";
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&dword_21CF20000, v13, OS_LOG_TYPE_DEFAULT, "%s: found device pairing %@", buf, 0x16u);
        }

        v14 = [v12 fabric];
        v15 = [v14 ecosystem];
        v16 = [v15 vendor];
        v17 = [v16 identifier];
        v18 = [v17 integerValue];
        v19 = [v10 integerValue];

        if (v18 != v19)
        {
          v20 = [v12 fabric];
          v21 = [v20 displayName];
          if (!v21)
          {

LABEL_19:
            v26 = [v12 fabric];
            v27 = [v26 displayName];
            [v34 addObject:v27];

            continue;
          }

          v22 = v21;
          v23 = [v12 fabric];
          v24 = [v23 displayName];
          v25 = [v24 length];

          if (v25)
          {
            goto LABEL_19;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v9)
      {
LABEL_22:

        v28 = MEMORY[0x277CCAAF0];
        v29 = [v34 allObjects];
        v30 = [v29 sortedArrayUsingSelector:sel_localizedStandardCompare_];
        v31 = [v28 localizedStringByJoiningStrings:v30];

        [*(v33 + 64) setObject:v31 forKeyedSubscript:*MEMORY[0x277D401A8]];
        [*(v33 + 72) reloadSpecifier:*(v33 + 64)];

        break;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(PSGMatterController *)self indexForIndexPath:path];
  v6 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  v7 = [v6 objectForKeyedSubscript:@"PSGDevicePairingKey"];
  v8 = v7 != 0;

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(PSGMatterController *)self specifierAtIndexPath:path, style];
  [(PSGMatterController *)self deleteAccessory:style];
}

- (void)deleteAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277D75110];
  v6 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT");
  v7 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_MULTIPLE_OPTIONS_DETAIL");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_REMOVE_FROM_MATTER");
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__PSGMatterController_deleteAccessory___block_invoke;
  v23[3] = &unk_2783250E0;
  v11 = accessoryCopy;
  v24 = v11;
  selfCopy = self;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v23];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_REMOVE_FROM_ALL");
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __39__PSGMatterController_deleteAccessory___block_invoke_87;
  v21[3] = &unk_2783250E0;
  v21[4] = self;
  v22 = v11;
  v15 = v11;
  v16 = [v13 actionWithTitle:v14 style:2 handler:v21];
  [v8 addAction:v16];

  v17 = MEMORY[0x277D750F8];
  v18 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_CANCEL");
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__PSGMatterController_deleteAccessory___block_invoke_2;
  v20[3] = &unk_278325290;
  v20[4] = self;
  v19 = [v17 actionWithTitle:v18 style:1 handler:v20];
  [v8 addAction:v19];

  [(PSGMatterController *)self presentViewController:v8 animated:1 completion:0];
}

void __39__PSGMatterController_deleteAccessory___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"PSGDevicePairingKey"];
  if (v2)
  {
    v3 = [*(a1 + 40) pairingManager];
    v4 = [v2 uuid];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__PSGMatterController_deleteAccessory___block_invoke_81;
    v7[3] = &unk_278325518;
    v7[4] = *(a1 + 40);
    [v3 removePairingWithUUID:v4 completionHandler:v7];
  }

  else
  {
    v3 = _PSGLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) name];
      *buf = 136315394;
      v9 = "[PSGMatterController deleteAccessory:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "%s: not deleting device because it has no pairing.: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__PSGMatterController_deleteAccessory___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PSGLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__PSGMatterController_deleteAccessory___block_invoke_81_cold_1();
    }
  }

  [*(a1 + 32) reloadAccessoriesWithCompletion:0];
}

- (void)showDeleteAllConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = MEMORY[0x277D75110];
  v6 = PSG_LocalizedStringForMatter(@"ACCESSORY_REMOVE_FROM_ALL_PROMPT");
  v7 = PSG_LocalizedStringForMatter(@"ACCESSORY_REMOVE_FROM_ALL_DETAIL");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = PSG_LocalizedStringForMatter(@"ACCESSORY_REMOVE_FROM_ALL_CONFIRM");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__PSGMatterController_showDeleteAllConfirmation___block_invoke;
  v17[3] = &unk_2783250E0;
  v18 = confirmationCopy;
  selfCopy = self;
  v11 = confirmationCopy;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v17];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = PSG_LocalizedStringForMatter(@"ACCESSORY_REMOVE_FROM_ALL_CANCEL");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_2;
  v16[3] = &unk_278325290;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];
  [v8 addAction:v15];

  [(PSGMatterController *)self presentViewController:v8 animated:1 completion:0];
}

void __49__PSGMatterController_showDeleteAllConfirmation___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"PSGDevicePairingKey"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CD5588]) initWithSystemCommissionerPairing:v2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_100;
    v6[3] = &unk_278325518;
    v6[4] = *(a1 + 40);
    [v3 removeAllPairingsWithCompletionHandler:v6];
  }

  else
  {
    v3 = _PSGLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) name];
      *buf = 136315394;
      v8 = "[PSGMatterController showDeleteAllConfirmation:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "%s: not deleting device because it has no pairing.: %@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PSGLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_100_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_101;
  block[3] = &unk_278324EE0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__PSGMatterController_shouldShowMatterControllerWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when fetching pairings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when fetching pairings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__PSGMatterController_reloadAccessoriesWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 40) name];
  v5 = [*(a1 + 40) uuid];
  v6 = [v5 UUIDString];
  v7 = *(a1 + 48);
  v9 = 136315906;
  v10 = "[PSGMatterController reloadAccessoriesWithCompletion:]_block_invoke_2";
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "%s: error when fetching device pairings for pairing %@ with uuid %@: %@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__PSGMatterController_deleteAccessory___block_invoke_81_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when deleting pairing: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PSGMatterController_showDeleteAllConfirmation___block_invoke_100_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when deleting pairing: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end