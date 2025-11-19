@interface PSUISubscriptionContextMenusGroup
- (BOOL)planManagerCacheHasMoreThanOnePlanItem;
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSUISubscriptionContextMenusGroup)initWithFactory:(id)a3;
- (PSUISubscriptionContextMenusGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)networkSlicingDetailText:(id)a3;
- (id)specifiers;
- (void)deleteDataPlanTapped:(id)a3;
@end

@implementation PSUISubscriptionContextMenusGroup

- (PSUISubscriptionContextMenusGroup)initWithFactory:(id)a3
{
  v5 = a3;
  v47.receiver = self;
  v47.super_class = PSUISubscriptionContextMenusGroup;
  v6 = [(PSUISubscriptionContextMenusGroup *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, a3);
    v8 = [v5 hostController];
    objc_storeWeak(&v7->_listController, v8);

    v9 = [v5 groupSpecifier];
    objc_storeWeak(&v7->_groupSpecifier, v9);

    v10 = [v5 parentSpecifier];
    parentSpecifier = v7->_parentSpecifier;
    v7->_parentSpecifier = v10;

    v7->_popViewControllerOnFinished = [v5 shouldPopViewControllerOnPlanRemoval];
    v12 = [v5 createCallingSubgroup];
    callingSubgroup = v7->_callingSubgroup;
    v7->_callingSubgroup = v12;

    v14 = [v5 createCarrierSpaceSubgroup];
    carrierSpaceSubgroup = v7->_carrierSpaceSubgroup;
    v7->_carrierSpaceSubgroup = v14;

    v16 = [v5 createNetworkSelectionSubgroup];
    networkSelectionSubgroup = v7->_networkSelectionSubgroup;
    v7->_networkSelectionSubgroup = v16;

    v18 = [v5 createMyNumberSubgroup];
    myNumberSubgroup = v7->_myNumberSubgroup;
    v7->_myNumberSubgroup = v18;

    v20 = [v5 createNetworkSettingsSubgroup];
    networkSettingsSubgroup = v7->_networkSettingsSubgroup;
    v7->_networkSettingsSubgroup = v20;

    v22 = [v5 createSimSubgroup];
    simSubgroup = v7->_simSubgroup;
    v7->_simSubgroup = v22;

    v24 = [v5 createCallCache];
    callCache = v7->_callCache;
    v7->_callCache = v24;

    v26 = [v5 createSimStatusCache];
    simStatusCache = v7->_simStatusCache;
    v7->_simStatusCache = v26;

    v28 = [v5 createCarrierBundleCache];
    carrierBundleCache = v7->_carrierBundleCache;
    v7->_carrierBundleCache = v28;

    v30 = [v5 createDataCache];
    dataCache = v7->_dataCache;
    v7->_dataCache = v30;

    v32 = [v5 createCellularPlanManagerCache];
    planManagerCache = v7->_planManagerCache;
    v7->_planManagerCache = v32;

    v34 = [v5 createCellularPlanManager];
    cellularPlanManager = v7->_cellularPlanManager;
    v7->_cellularPlanManager = v34;

    v36 = [(PSSpecifier *)v7->_parentSpecifier propertyForKey:*MEMORY[0x277D40128]];
    v37 = [v5 createDataModeSubgroupWithContext:v36];
    dataModeSubgroup = v7->_dataModeSubgroup;
    v7->_dataModeSubgroup = v37;

    v39 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v36];
    v40 = [v5 createRoamingSpecifiersSubgroupWithServiceDescriptor:v39];
    roamingSpecifiersSubgroup = v7->_roamingSpecifiersSubgroup;
    v7->_roamingSpecifiersSubgroup = v40;

    v42 = [v5 createPasscodeStatusCache];
    passcodeStatusCache = v7->_passcodeStatusCache;
    v7->_passcodeStatusCache = v42;

    v44 = [v5 createCapabilitiesCache];
    capabilitiesCache = v7->_capabilitiesCache;
    v7->_capabilitiesCache = v44;
  }

  return v7;
}

- (PSUISubscriptionContextMenusGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v105 = *MEMORY[0x277D85DE8];
  v86 = *MEMORY[0x277D3FE70];
  v100 = [(PSSpecifier *)self->_parentSpecifier propertyForKey:?];
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReferenceSafe:?];
  v88 = *MEMORY[0x277D40128];
  v4 = [(PSSpecifier *)self->_parentSpecifier propertyForKey:?];
  v5 = [(PSUISubscriptionContextMenusGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v102 = v3;
    v103 = 2112;
    v104 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "menus: plan item: %@, context: %@", buf, 0x16u);
  }

  if (!self->_satelliteSubgroup)
  {
    v6 = -[PSUISubscriptionContextMenusFactory createSatelliteSubgroupWithContext:isActiveDataPlan:planReference:](self->_factory, "createSatelliteSubgroupWithContext:isActiveDataPlan:planReference:", v4, [v3 isActiveDataPlan], v100);
    satelliteSubgroup = self->_satelliteSubgroup;
    self->_satelliteSubgroup = v6;
  }

  v98 = [(PSUISubscriptionContextMenusGroup *)self planManagerCacheHasMoreThanOnePlanItem];
  v8 = [(PSSimStatusCache *)self->_simStatusCache isDualSimCapable];
  planManagerCache = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  v97 = [(PSUIDevicePasscodeState *)self->_passcodeStatusCache isPasscodeSet];
  v10 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v11 = [v10 canSetTurnOffCellular:v4];

  v91 = v11;
  if (v11)
  {
    v12 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
    v89 = [v12 getTurnOffCellular:v4];
  }

  else
  {
    v89 = 0;
  }

  v13 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v93 = [v13 canSetNetworkSlicing:v4];

  v95 = [(PSUICoreTelephonyCapabilitiesCache *)self->_capabilitiesCache canSetSatelliteCapability:v4];
  if (v8)
  {
    if (v3)
    {
      v14 = [v3 carrierName];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      v14 = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache carrierName:v4];
    }

    v15 = v14;
    WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);
    [WeakRetained setName:v15];
  }

LABEL_14:
  v17 = objc_opt_new();
  v99 = v8;
  if (v3)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  if (v18 != 1)
  {
    goto LABEL_32;
  }

  v87 = planManagerCache;
  if (v98)
  {
    v19 = [[PSUICellularPlanLabelSpecifier alloc] initWithPlanUniversalReference:v100 planManagerCache:self->_planManagerCache];
    [v17 addObject:v19];
    v20 = objc_loadWeakRetained(&self->_groupSpecifier);
    [v20 setName:&stru_287733598];
  }

  v21 = [v3 isCheckingCellularConnectivity];
  if ((v21 & 1) == 0)
  {
    planManagerCache = [v3 plan];
    if ([planManagerCache status] != 14)
    {

      goto LABEL_28;
    }
  }

  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 sf_isiPhone];

  if ((v21 & 1) == 0)
  {

    if (v23)
    {
      goto LABEL_26;
    }

LABEL_28:
    LOBYTE(planManagerCache) = v87;
    if (![v3 isSelectable])
    {
      goto LABEL_32;
    }

    v24 = 0;
    goto LABEL_30;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v24 = 1;
LABEL_30:
  v25 = [PSUITurnOnThisLineSpecifier alloc];
  planManagerCache = self->_planManagerCache;
  cellularPlanManager = self->_cellularPlanManager;
  callCache = self->_callCache;
  v28 = objc_loadWeakRetained(&self->_listController);
  v29 = [(PSUITurnOnThisLineSpecifier *)v25 initWithPlanUniversalReference:v100 cellularPlanManager:cellularPlanManager planManagerCache:planManagerCache callCache:callCache hostController:v28 isActivating:v24];

  LOBYTE(planManagerCache) = v87;
  if (v29)
  {
    [v17 addObject:v29];
  }

LABEL_32:
  v30 = v99;
  if (!v4)
  {
    goto LABEL_80;
  }

  if (!v3 || [v3 isSelected])
  {
    v31 = v99 & v98;
    if (((v99 & v98 ^ 1) & 1) == 0)
    {
      v32 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SPACER_GROUP"];
      v33 = [v3 carrierName];
      [v32 setName:v33];

      [v17 addObject:v32];
    }

    v34 = [(PSUICarrierSpaceGroup *)self->_carrierSpaceSubgroup specifierForID:0x2877364B8];
    if (v34)
    {
      [v17 addObject:v34];
    }

    v85 = v34;
    v90 = planManagerCache | v89;
    if ((v90 & 1) == 0)
    {
      v35 = [(PSUINetworkSelectionSubgroup *)self->_networkSelectionSubgroup specifiers];
      [v17 addObjectsFromArray:v35];
    }

    if (v99)
    {
      v36 = [(PSUIMyNumberSubgroup *)self->_myNumberSubgroup specifiers];
      [v17 addObjectsFromArray:v36];
    }

    if (v91)
    {
      v37 = [PSUITurnOffCellularSpecifier alloc];
      v38 = self->_callCache;
      v39 = objc_loadWeakRetained(&self->_listController);
      v40 = [(PSUITurnOffCellularSpecifier *)v37 initWithContext:v4 callCache:v38 hostController:v39];

      [v17 addObject:v40];
    }

    v41 = [(PSUICallingSubgroup *)self->_callingSubgroup specifiers];
    [v17 addObjectsFromArray:v41];

    if (v93)
    {
      v42 = MEMORY[0x277D3FAD8];
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"NETWORK_SLICING" value:&stru_287733598 table:@"Cellular"];
      v30 = v99;
      v45 = [v42 preferenceSpecifierNamed:v44 target:self set:0 get:sel_networkSlicingDetailText_ detail:objc_opt_class() cell:2 edit:0];

      v31 = v99 & v98;
      [v45 setIdentifier:@"NETWORK_SLICING"];
      if ([(PSUICoreTelephonyCallCache *)self->_callCache isAnyCallActive])
      {
        v46 = MEMORY[0x277CBEC28];
      }

      else
      {
        v46 = MEMORY[0x277CBEC38];
      }

      [v45 setProperty:v46 forKey:*MEMORY[0x277D3FF38]];
      [v45 setProperty:v4 forKey:v88];
      [v17 addObject:v45];
    }

    if ((v90 & 1) == 0)
    {
      v47 = [(PSUINetworkSettingsSubgroup *)self->_networkSettingsSubgroup specifiers];
      [v17 addObjectsFromArray:v47];
    }

    v48 = [(PSUIDataModeSubgroup *)self->_dataModeSubgroup specifiers];
    v94 = [(PSUIDataModeSubgroup *)self->_dataModeSubgroup shouldShowLinkCell];
    if ((v31 & v94) == 1)
    {
      [v17 addObjectsFromArray:v48];
      if (!v95)
      {
LABEL_57:
        v50 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SeparatingGroupSpecifier"];
        [v17 addObject:v50];

LABEL_58:
        if (v31)
        {
          v51 = [(PSUIRoamingSpecifiersSubgroup *)self->_roamingSpecifiersSubgroup specifiers];
          [v17 addObjectsFromArray:v51];
        }

        if ([(PSUICoreTelephonyDataCache *)self->_dataCache isCellularUsageStatisticsEnabled])
        {
          v52 = [(PSUICarrierSpaceGroup *)self->_carrierSpaceSubgroup specifierForID:0x2877364D8];
          if (v52)
          {
            [v17 addObject:v52];
          }
        }

        v53 = v48;
        v54 = [(PSUICarrierSpaceGroup *)self->_carrierSpaceSubgroup specifierForID:0x2877364F8];
        if (v54)
        {
          [v17 addObject:v54];
        }

        v55 = [(PSUISIMSubgroup *)self->_simSubgroup specifiers];
        [v17 addObjectsFromArray:v55];

        if (([v3 isLocalTransferToeSIMSupported] & v97) != 1)
        {
          goto LABEL_71;
        }

        v56 = +[PSUICellularPlanManagerCache sharedInstance];
        if ([v56 isActivationCodeFlowSupported])
        {
          v57 = +[PSUICellularPlanManagerCache sharedInstance];
          v58 = [v57 isSingleActivationCodeFlowSupported];

          v30 = v99;
          if (v58)
          {
LABEL_71:
            v62 = v53;
            if (_os_feature_enabled_impl())
            {
              v63 = 0;
            }

            else
            {
              v63 = _os_feature_enabled_impl() ^ 1;
            }

            if (([v3 supportedTransferOption] & 2) != 0 && (v63 & 1) == 0)
            {
              v64 = objc_loadWeakRetained(&self->_listController);
              v65 = [v3 iccid];
              v66 = [v3 carrierName];
              v67 = [PSUIGenerateTransferQRCodeSpecifier specifierWithHostController:v64 iccid:v65 carrierName:v66];

              v30 = v99;
              [v17 addObject:v67];

              v62 = v53;
            }

            if (((v99 & v98 ^ 1 | v94) & 1) == 0)
            {
              [v17 addObjectsFromArray:v62];
            }

LABEL_80:
            if (!v3)
            {
              goto LABEL_96;
            }

            goto LABEL_81;
          }

          v96 = [v3 phoneNumber];
          v59 = [v3 carrierName];
          v60 = objc_loadWeakRetained(&self->_listController);
          popViewControllerOnFinished = self->_popViewControllerOnFinished;
          v61 = [v3 iccid];
          v56 = [PSUIConvertToESIMSpecifier specifierWithPhoneNumber:v96 carrierName:v59 hostController:v60 isViewControllerPopNeeded:popViewControllerOnFinished iccid:v61];

          [v17 addObject:v56];
        }

        v30 = v99;
        goto LABEL_71;
      }
    }

    else if ((v31 & v95) != 1)
    {
      goto LABEL_58;
    }

    v49 = [(PSUISatelliteSubgroup *)self->_satelliteSubgroup specifiers];
    [v17 addObjectsFromArray:v49];

    if ([v3 isActiveDataPlan])
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_81:
  if ([v3 type] == 2)
  {
    v68 = [v3 plan];
    if (!v68)
    {
      goto LABEL_86;
    }

    v69 = v68;
    v70 = [v3 plan];
    if ([v70 isDeleteNotAllowed])
    {

LABEL_95:
      goto LABEL_96;
    }

    v71 = [v3 plan];
    v72 = [v71 status];

    if (v72 != 14)
    {
LABEL_86:
      if (v30)
      {
        v73 = [PSUIRemoveCellularPlanSpecifier alloc];
        v75 = self->_planManagerCache;
        v74 = self->_cellularPlanManager;
        v76 = objc_loadWeakRetained(&self->_listController);
        v69 = [(PSUIRemoveCellularPlanSpecifier *)v73 initWithPlanUniversalReference:v100 cellularPlanManager:v74 planManagerCache:v75 hostController:v76 popViewControllerOnPlanDeletion:self->_popViewControllerOnFinished];

        if (!v98)
        {
          [(PSUIRemoveCellularPlanSpecifier *)v69 alignLeft];
          goto LABEL_94;
        }

        v77 = MEMORY[0x277D3FAD8];
      }

      else
      {
        v78 = MEMORY[0x277D3FAD8];
        v79 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v80 = [v79 localizedStringForKey:@"DELETE_ESIM" value:&stru_287733598 table:@"Cellular"];
        v69 = [v78 preferenceSpecifierNamed:v80 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [(PSUIRemoveCellularPlanSpecifier *)v69 setButtonAction:sel_deleteDataPlanTapped_];
        [(PSUIRemoveCellularPlanSpecifier *)v69 setProperty:v100 forKey:v86];
        [(PSUIRemoveCellularPlanSpecifier *)v69 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [(PSUIRemoveCellularPlanSpecifier *)v69 setProperty:&unk_287749020 forKey:*MEMORY[0x277D3FD78]];
        if (![v17 count] || !objc_msgSend(v3, "isSelected"))
        {
          goto LABEL_94;
        }

        v77 = MEMORY[0x277D3FAD8];
      }

      v81 = [v77 groupSpecifierWithID:@"BOTTOM_SPACER_GROUP"];
      [v17 addObject:v81];

LABEL_94:
      [v17 addObject:v69];
      goto LABEL_95;
    }
  }

LABEL_96:
  v82 = v17;

  v83 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)planManagerCacheHasMoreThanOnePlanItem
{
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  v4 = [v3 count];
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache danglingPlanItems];
  v6 = [v5 count] + v4;
  v7 = [(PSUICellularPlanManagerCache *)self->_planManagerCache plansPendingTransfer];
  LOBYTE(v6) = (v6 + [v7 count]) > 1;

  return v6;
}

- (id)networkSlicingDetailText:(id)a3
{
  v3 = [(PSSpecifier *)self->_parentSpecifier propertyForKey:*MEMORY[0x277D40128]];
  v4 = +[PSUICoreTelephonyCapabilitiesCache sharedInstance];
  v5 = [v4 getNetworkSlicing:v3];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = @"NETWORK_SLICING_ON";
  }

  else
  {
    v8 = @"NETWORK_SLICING_OFF";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Cellular"];

  return v9;
}

- (void)deleteDataPlanTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  if (v7)
  {
    v8 = MEMORY[0x277D75110];
    v9 = [SettingsCellularUtils removePlanConfirmationTitle:v7];
    v10 = [SettingsCellularUtils removePlanConfirmationMessage:v7];
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    objc_initWeak(location, self);
    v12 = MEMORY[0x277D750F8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"REMOVE" value:&stru_287733598 table:@"Cellular"];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke;
    v28[3] = &unk_279BAA138;
    objc_copyWeak(&v31, location);
    v28[4] = self;
    v15 = v7;
    v29 = v15;
    v30 = v4;
    v16 = [v12 actionWithTitle:v14 style:2 handler:v28];

    [v11 addAction:v16];
    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_2;
    v25 = &unk_279BAA160;
    v26 = self;
    v27 = v15;
    v20 = [v17 actionWithTitle:v19 style:1 handler:&v22];

    [v11 addAction:v20, v22, v23, v24, v25, v26];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained presentViewController:v11 animated:1 completion:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = [(PSUISubscriptionContextMenusGroup *)self getLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "planItem is null!", location, 2u);
    }
  }
}

void __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Confirmed delete plan: %@", buf, 0xCu);
  }

  [*(a1 + 48) setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  v5 = [MEMORY[0x277CF96D8] sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_58;
  v11[3] = &unk_279BAA110;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = WeakRetained;
  [v5 didDeletePlanItem:v6 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_58(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [*(a1 + 32) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  if (v4)
  {
    v5 = [*(a1 + 40) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Failed to delete plan item:%@ with error:%@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_59;
      block[3] = &unk_279BA9D58;
      block[4] = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Cancelled delete plan: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end