@interface PSUISubscriptionContextMenusGroup
- (BOOL)planManagerCacheHasMoreThanOnePlanItem;
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSUISubscriptionContextMenusGroup)initWithFactory:(id)factory;
- (PSUISubscriptionContextMenusGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)networkSlicingDetailText:(id)text;
- (id)specifiers;
- (void)deleteDataPlanTapped:(id)tapped;
@end

@implementation PSUISubscriptionContextMenusGroup

- (PSUISubscriptionContextMenusGroup)initWithFactory:(id)factory
{
  factoryCopy = factory;
  v47.receiver = self;
  v47.super_class = PSUISubscriptionContextMenusGroup;
  v6 = [(PSUISubscriptionContextMenusGroup *)&v47 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, factory);
    hostController = [factoryCopy hostController];
    objc_storeWeak(&v7->_listController, hostController);

    groupSpecifier = [factoryCopy groupSpecifier];
    objc_storeWeak(&v7->_groupSpecifier, groupSpecifier);

    parentSpecifier = [factoryCopy parentSpecifier];
    parentSpecifier = v7->_parentSpecifier;
    v7->_parentSpecifier = parentSpecifier;

    v7->_popViewControllerOnFinished = [factoryCopy shouldPopViewControllerOnPlanRemoval];
    createCallingSubgroup = [factoryCopy createCallingSubgroup];
    callingSubgroup = v7->_callingSubgroup;
    v7->_callingSubgroup = createCallingSubgroup;

    createCarrierSpaceSubgroup = [factoryCopy createCarrierSpaceSubgroup];
    carrierSpaceSubgroup = v7->_carrierSpaceSubgroup;
    v7->_carrierSpaceSubgroup = createCarrierSpaceSubgroup;

    createNetworkSelectionSubgroup = [factoryCopy createNetworkSelectionSubgroup];
    networkSelectionSubgroup = v7->_networkSelectionSubgroup;
    v7->_networkSelectionSubgroup = createNetworkSelectionSubgroup;

    createMyNumberSubgroup = [factoryCopy createMyNumberSubgroup];
    myNumberSubgroup = v7->_myNumberSubgroup;
    v7->_myNumberSubgroup = createMyNumberSubgroup;

    createNetworkSettingsSubgroup = [factoryCopy createNetworkSettingsSubgroup];
    networkSettingsSubgroup = v7->_networkSettingsSubgroup;
    v7->_networkSettingsSubgroup = createNetworkSettingsSubgroup;

    createSimSubgroup = [factoryCopy createSimSubgroup];
    simSubgroup = v7->_simSubgroup;
    v7->_simSubgroup = createSimSubgroup;

    createCallCache = [factoryCopy createCallCache];
    callCache = v7->_callCache;
    v7->_callCache = createCallCache;

    createSimStatusCache = [factoryCopy createSimStatusCache];
    simStatusCache = v7->_simStatusCache;
    v7->_simStatusCache = createSimStatusCache;

    createCarrierBundleCache = [factoryCopy createCarrierBundleCache];
    carrierBundleCache = v7->_carrierBundleCache;
    v7->_carrierBundleCache = createCarrierBundleCache;

    createDataCache = [factoryCopy createDataCache];
    dataCache = v7->_dataCache;
    v7->_dataCache = createDataCache;

    createCellularPlanManagerCache = [factoryCopy createCellularPlanManagerCache];
    planManagerCache = v7->_planManagerCache;
    v7->_planManagerCache = createCellularPlanManagerCache;

    createCellularPlanManager = [factoryCopy createCellularPlanManager];
    cellularPlanManager = v7->_cellularPlanManager;
    v7->_cellularPlanManager = createCellularPlanManager;

    v36 = [(PSSpecifier *)v7->_parentSpecifier propertyForKey:*MEMORY[0x277D40128]];
    v37 = [factoryCopy createDataModeSubgroupWithContext:v36];
    dataModeSubgroup = v7->_dataModeSubgroup;
    v7->_dataModeSubgroup = v37;

    v39 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v36];
    v40 = [factoryCopy createRoamingSpecifiersSubgroupWithServiceDescriptor:v39];
    roamingSpecifiersSubgroup = v7->_roamingSpecifiersSubgroup;
    v7->_roamingSpecifiersSubgroup = v40;

    createPasscodeStatusCache = [factoryCopy createPasscodeStatusCache];
    passcodeStatusCache = v7->_passcodeStatusCache;
    v7->_passcodeStatusCache = createPasscodeStatusCache;

    createCapabilitiesCache = [factoryCopy createCapabilitiesCache];
    capabilitiesCache = v7->_capabilitiesCache;
    v7->_capabilitiesCache = createCapabilitiesCache;
  }

  return v7;
}

- (PSUISubscriptionContextMenusGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
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
  getLogger = [(PSUISubscriptionContextMenusGroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v102 = v3;
    v103 = 2112;
    v104 = v4;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "menus: plan item: %@, context: %@", buf, 0x16u);
  }

  if (!self->_satelliteSubgroup)
  {
    v6 = -[PSUISubscriptionContextMenusFactory createSatelliteSubgroupWithContext:isActiveDataPlan:planReference:](self->_factory, "createSatelliteSubgroupWithContext:isActiveDataPlan:planReference:", v4, [v3 isActiveDataPlan], v100);
    satelliteSubgroup = self->_satelliteSubgroup;
    self->_satelliteSubgroup = v6;
  }

  planManagerCacheHasMoreThanOnePlanItem = [(PSUISubscriptionContextMenusGroup *)self planManagerCacheHasMoreThanOnePlanItem];
  isDualSimCapable = [(PSSimStatusCache *)self->_simStatusCache isDualSimCapable];
  planManagerCache = [(PSUICoreTelephonyDataCache *)self->_dataCache isAirplaneModeEnabled];
  isPasscodeSet = [(PSUIDevicePasscodeState *)self->_passcodeStatusCache isPasscodeSet];
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
  if (isDualSimCapable)
  {
    if (v3)
    {
      carrierName = [v3 carrierName];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      carrierName = [(PSUICoreTelephonyCarrierBundleCache *)self->_carrierBundleCache carrierName:v4];
    }

    v15 = carrierName;
    WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);
    [WeakRetained setName:v15];
  }

LABEL_14:
  v17 = objc_opt_new();
  v99 = isDualSimCapable;
  if (v3)
  {
    v18 = isDualSimCapable;
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
  if (planManagerCacheHasMoreThanOnePlanItem)
  {
    v19 = [[PSUICellularPlanLabelSpecifier alloc] initWithPlanUniversalReference:v100 planManagerCache:self->_planManagerCache];
    [v17 addObject:v19];
    v20 = objc_loadWeakRetained(&self->_groupSpecifier);
    [v20 setName:&stru_287733598];
  }

  isCheckingCellularConnectivity = [v3 isCheckingCellularConnectivity];
  if ((isCheckingCellularConnectivity & 1) == 0)
  {
    planManagerCache = [v3 plan];
    if ([planManagerCache status] != 14)
    {

      goto LABEL_28;
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPhone = [currentDevice sf_isiPhone];

  if ((isCheckingCellularConnectivity & 1) == 0)
  {

    if (sf_isiPhone)
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

  if ((sf_isiPhone & 1) == 0)
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
    v31 = v99 & planManagerCacheHasMoreThanOnePlanItem;
    if (((v99 & planManagerCacheHasMoreThanOnePlanItem ^ 1) & 1) == 0)
    {
      v32 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SPACER_GROUP"];
      carrierName2 = [v3 carrierName];
      [v32 setName:carrierName2];

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
      specifiers = [(PSUINetworkSelectionSubgroup *)self->_networkSelectionSubgroup specifiers];
      [v17 addObjectsFromArray:specifiers];
    }

    if (v99)
    {
      specifiers2 = [(PSUIMyNumberSubgroup *)self->_myNumberSubgroup specifiers];
      [v17 addObjectsFromArray:specifiers2];
    }

    if (v91)
    {
      v37 = [PSUITurnOffCellularSpecifier alloc];
      v38 = self->_callCache;
      v39 = objc_loadWeakRetained(&self->_listController);
      v40 = [(PSUITurnOffCellularSpecifier *)v37 initWithContext:v4 callCache:v38 hostController:v39];

      [v17 addObject:v40];
    }

    specifiers3 = [(PSUICallingSubgroup *)self->_callingSubgroup specifiers];
    [v17 addObjectsFromArray:specifiers3];

    if (v93)
    {
      v42 = MEMORY[0x277D3FAD8];
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"NETWORK_SLICING" value:&stru_287733598 table:@"Cellular"];
      v30 = v99;
      v45 = [v42 preferenceSpecifierNamed:v44 target:self set:0 get:sel_networkSlicingDetailText_ detail:objc_opt_class() cell:2 edit:0];

      v31 = v99 & planManagerCacheHasMoreThanOnePlanItem;
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
      specifiers4 = [(PSUINetworkSettingsSubgroup *)self->_networkSettingsSubgroup specifiers];
      [v17 addObjectsFromArray:specifiers4];
    }

    specifiers5 = [(PSUIDataModeSubgroup *)self->_dataModeSubgroup specifiers];
    shouldShowLinkCell = [(PSUIDataModeSubgroup *)self->_dataModeSubgroup shouldShowLinkCell];
    if ((v31 & shouldShowLinkCell) == 1)
    {
      [v17 addObjectsFromArray:specifiers5];
      if (!v95)
      {
LABEL_57:
        v50 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SeparatingGroupSpecifier"];
        [v17 addObject:v50];

LABEL_58:
        if (v31)
        {
          specifiers6 = [(PSUIRoamingSpecifiersSubgroup *)self->_roamingSpecifiersSubgroup specifiers];
          [v17 addObjectsFromArray:specifiers6];
        }

        if ([(PSUICoreTelephonyDataCache *)self->_dataCache isCellularUsageStatisticsEnabled])
        {
          v52 = [(PSUICarrierSpaceGroup *)self->_carrierSpaceSubgroup specifierForID:0x2877364D8];
          if (v52)
          {
            [v17 addObject:v52];
          }
        }

        v53 = specifiers5;
        v54 = [(PSUICarrierSpaceGroup *)self->_carrierSpaceSubgroup specifierForID:0x2877364F8];
        if (v54)
        {
          [v17 addObject:v54];
        }

        specifiers7 = [(PSUISIMSubgroup *)self->_simSubgroup specifiers];
        [v17 addObjectsFromArray:specifiers7];

        if (([v3 isLocalTransferToeSIMSupported] & isPasscodeSet) != 1)
        {
          goto LABEL_71;
        }

        v56 = +[PSUICellularPlanManagerCache sharedInstance];
        if ([v56 isActivationCodeFlowSupported])
        {
          v57 = +[PSUICellularPlanManagerCache sharedInstance];
          isSingleActivationCodeFlowSupported = [v57 isSingleActivationCodeFlowSupported];

          v30 = v99;
          if (isSingleActivationCodeFlowSupported)
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
              iccid = [v3 iccid];
              carrierName3 = [v3 carrierName];
              v67 = [PSUIGenerateTransferQRCodeSpecifier specifierWithHostController:v64 iccid:iccid carrierName:carrierName3];

              v30 = v99;
              [v17 addObject:v67];

              v62 = v53;
            }

            if (((v99 & planManagerCacheHasMoreThanOnePlanItem ^ 1 | shouldShowLinkCell) & 1) == 0)
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

          phoneNumber = [v3 phoneNumber];
          carrierName4 = [v3 carrierName];
          v60 = objc_loadWeakRetained(&self->_listController);
          popViewControllerOnFinished = self->_popViewControllerOnFinished;
          iccid2 = [v3 iccid];
          v56 = [PSUIConvertToESIMSpecifier specifierWithPhoneNumber:phoneNumber carrierName:carrierName4 hostController:v60 isViewControllerPopNeeded:popViewControllerOnFinished iccid:iccid2];

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

    specifiers8 = [(PSUISatelliteSubgroup *)self->_satelliteSubgroup specifiers];
    [v17 addObjectsFromArray:specifiers8];

    if ([v3 isActiveDataPlan])
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_81:
  if ([v3 type] == 2)
  {
    plan = [v3 plan];
    if (!plan)
    {
      goto LABEL_86;
    }

    v69 = plan;
    plan2 = [v3 plan];
    if ([plan2 isDeleteNotAllowed])
    {

LABEL_95:
      goto LABEL_96;
    }

    plan3 = [v3 plan];
    status = [plan3 status];

    if (status != 14)
    {
LABEL_86:
      if (v30)
      {
        v73 = [PSUIRemoveCellularPlanSpecifier alloc];
        v75 = self->_planManagerCache;
        v74 = self->_cellularPlanManager;
        v76 = objc_loadWeakRetained(&self->_listController);
        v69 = [(PSUIRemoveCellularPlanSpecifier *)v73 initWithPlanUniversalReference:v100 cellularPlanManager:v74 planManagerCache:v75 hostController:v76 popViewControllerOnPlanDeletion:self->_popViewControllerOnFinished];

        if (!planManagerCacheHasMoreThanOnePlanItem)
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
  planItems = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  v4 = [planItems count];
  danglingPlanItems = [(PSUICellularPlanManagerCache *)self->_planManagerCache danglingPlanItems];
  v6 = [danglingPlanItems count] + v4;
  plansPendingTransfer = [(PSUICellularPlanManagerCache *)self->_planManagerCache plansPendingTransfer];
  LOBYTE(v6) = (v6 + [plansPendingTransfer count]) > 1;

  return v6;
}

- (id)networkSlicingDetailText:(id)text
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

- (void)deleteDataPlanTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [tappedCopy propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  if (v7)
  {
    v8 = MEMORY[0x277D75110];
    v9 = [SettingsCellularUtils removePlanConfirmationTitle:v7];
    v10 = [SettingsCellularUtils removePlanConfirmationMessage:v7];
    getLogger = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

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
    v30 = tappedCopy;
    v16 = [v12 actionWithTitle:v14 style:2 handler:v28];

    [getLogger addAction:v16];
    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __58__PSUISubscriptionContextMenusGroup_deleteDataPlanTapped___block_invoke_2;
    v25 = &unk_279BAA160;
    selfCopy = self;
    v27 = v15;
    v20 = [v17 actionWithTitle:v19 style:1 handler:&v22];

    [getLogger addAction:v20, v22, v23, v24, v25, selfCopy];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    [WeakRetained presentViewController:getLogger animated:1 completion:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    getLogger = [(PSUISubscriptionContextMenusGroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "planItem is null!", location, 2u);
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