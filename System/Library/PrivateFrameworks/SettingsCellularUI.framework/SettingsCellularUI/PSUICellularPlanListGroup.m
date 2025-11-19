@interface PSUICellularPlanListGroup
- (PSUICellularPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (PSUICellularPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 isPrivateNetworkPlansList:(BOOL)a5;
- (id)danglingPlanSpecifierDetailText:(id)a3;
- (id)planSpecifierDetailText:(id)a3;
- (id)specifiers;
- (void)danglingPlanPressed:(id)a3;
@end

@implementation PSUICellularPlanListGroup

- (PSUICellularPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a4;
  v10.receiver = self;
  v10.super_class = PSUICellularPlanListGroup;
  v6 = [(PSUICellularPlanListGroup *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
    [v5 setName:v8];
  }

  return v6;
}

- (PSUICellularPlanListGroup)initWithListController:(id)a3 groupSpecifier:(id)a4 isPrivateNetworkPlansList:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PSUICellularPlanListGroup;
  v8 = [(PSUICellularPlanListGroup *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v5)
    {
      v11 = [v9 localizedStringForKey:@"NON_PUBLIC_NETWORK_PLANS" value:&stru_287733598 table:@"Cellular"];
      [v7 setName:v11];

      v8->_isPrivateNetworkPlansList = 1;
    }

    else
    {
      v12 = [v9 localizedStringForKey:@"CELLULAR_PLANS" value:&stru_287733598 table:@"Cellular"];
      [v7 setName:v12];
    }
  }

  return v8;
}

- (id)specifiers
{
  v85 = *MEMORY[0x277D85DE8];
  v66 = objc_opt_new();
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 planItems];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v77;
    v63 = *MEMORY[0x277D3FE58];
    v59 = *MEMORY[0x277D40128];
    v61 = *MEMORY[0x277D3FE70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v77 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v76 + 1) + 8 * i);
        if ([v9 settingsMode] && objc_msgSend(v9, "settingsMode") != 1)
        {
          if ([v9 settingsMode] == 2)
          {
            if (self->_isPrivateNetworkPlansList)
            {
              continue;
            }
          }

          else
          {
            v10 = [(PSUICellularPlanListGroup *)self getLogger];
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v83 = "[PSUICellularPlanListGroup specifiers]";
              _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "%s unexpected settings mode", buf, 0xCu);
            }
          }
        }

        else if (!self->_isPrivateNetworkPlansList)
        {
          continue;
        }

        v11 = [(PSUICellularPlanListGroup *)self getLogger];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v9;
          _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "planItem: %@", buf, 0xCu);
        }

        v12 = [v9 plan];
        v13 = [v12 subscriptionStatusOverride];
        v14 = [v13 isEqualToNumber:&unk_287749218];

        if (v14)
        {
          v15 = MEMORY[0x277D3FAD8];
          v16 = [v9 name];
          v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:sel_planSpecifierDetailText_ detail:0 cell:16 edit:0];

          v18 = off_279BA9370;
        }

        else if ([v9 isInstalling])
        {
          v19 = MEMORY[0x277D3FAD8];
          v20 = [v9 name];
          v17 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:3 edit:0];

          v18 = off_279BA9358;
        }

        else if ([v9 transferredStatus] == 4)
        {
          v21 = MEMORY[0x277D3FAD8];
          v22 = [v9 name];
          v17 = [v21 preferenceSpecifierNamed:v22 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:2 edit:0];

          v23 = [v9 isSelected];
          v18 = off_279BA9390;
          if (v23)
          {
            v18 = off_279BA9378;
          }
        }

        else
        {
          v24 = [v9 transferredStatus];
          v25 = MEMORY[0x277D3FAD8];
          v26 = [v9 name];
          if (v24)
          {
            v17 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:2 edit:0];

            v18 = off_279BA9390;
          }

          else
          {
            v17 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:sel_planSpecifierDetailText_ detail:objc_opt_class() cell:2 edit:0];

            v27 = [v9 isSelected];
            v18 = off_279BA9378;
            if (!v27)
            {
              v18 = off_279BA93B0;
            }
          }
        }

        v28 = *v18;
        [v17 setProperty:objc_opt_class() forKey:v63];
        v29 = [PSUICellularPlanUniversalReference referenceFromPlanItem:v9];
        [v17 setProperty:v29 forKey:v61];

        v30 = +[PSUICellularPlanManagerCache sharedInstance];
        v31 = [v30 subscriptionContextForPlanItem:v9 cachedSubscriptionContexts:0];
        [v17 setProperty:v31 forKey:v59];

        [v66 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v6);
  }

  v32 = +[PSUICellularPlanManagerCache sharedInstance];
  v33 = [v32 danglingPlanItems];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v64 = v33;
  v34 = [v64 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v34)
  {
    goto LABEL_47;
  }

  v35 = v34;
  v36 = *v73;
  v37 = *MEMORY[0x277D3FE58];
  v38 = *MEMORY[0x277D3FE70];
  do
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v73 != v36)
      {
        objc_enumerationMutation(v64);
      }

      v40 = *(*(&v72 + 1) + 8 * j);
      if (self->_isPrivateNetworkPlansList)
      {
        if (![*(*(&v72 + 1) + 8 * j) isPrivateNetworkSim])
        {
          continue;
        }

        if (self->_isPrivateNetworkPlansList)
        {
          goto LABEL_63;
        }
      }

      if (([v40 isPrivateNetworkSim] & 1) == 0)
      {
LABEL_63:
        if (!obj || (v71[0] = MEMORY[0x277D85DD0], v71[1] = 3221225472, v71[2] = __39__PSUICellularPlanListGroup_specifiers__block_invoke, v71[3] = &unk_279BAAD60, v71[4] = v40, [obj indexOfObjectPassingTest:v71] == 0x7FFFFFFFFFFFFFFFLL))
        {
          v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:sel_danglingPlanSpecifierDetailText_ detail:0 cell:3 edit:0];
          [v41 setProperty:objc_opt_class() forKey:v37];
          v42 = [PSUICellularPlanUniversalReference referenceFromDanglingPlanItem:v40];
          [v41 setProperty:v42 forKey:v38];

          [v41 setButtonAction:sel_danglingPlanPressed_];
          [v66 addObject:v41];
        }
      }
    }

    v35 = [v64 countByEnumeratingWithState:&v72 objects:v81 count:16];
  }

  while (v35);
LABEL_47:

  if (!self->_isPrivateNetworkPlansList)
  {
    v43 = +[PSUICellularPlanManagerCache sharedInstance];
    v44 = [v43 plansPendingTransfer];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v62 = v44;
    v45 = [v62 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v68;
      v60 = *MEMORY[0x277D3FE58];
      v48 = *MEMORY[0x277D3FE70];
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v68 != v47)
          {
            objc_enumerationMutation(v62);
          }

          v50 = *(*(&v67 + 1) + 8 * k);
          v51 = MEMORY[0x277D3FAD8];
          v52 = [v50 carrierName];
          v53 = [v51 preferenceSpecifierNamed:v52 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          v54 = [v50 status];
          if (v54 <= 3)
          {
            v55 = *off_279BAAD80[v54];
            [v53 setProperty:objc_opt_class() forKey:v60];
          }

          v56 = [PSUICellularPlanUniversalReference referenceFromCellularPlanPendingTransfer:v50];
          [v53 setProperty:v56 forKey:v48];

          [v66 addObject:v53];
        }

        v46 = [v62 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v46);
    }
  }

  v57 = *MEMORY[0x277D85DE8];

  return v66;
}

uint64_t __39__PSUICellularPlanListGroup_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 userLabel];
  v8 = [v6 userLabel];

  v9 = [v7 isEqual:v8];
  if (v9)
  {
    *a4 = 1;
  }

  return v9;
}

- (id)planSpecifierDetailText:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D3FE70]];
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  v5 = [v4 planFromReferenceSafe:v3];

  if (![v5 transferredStatus])
  {
    v6 = [v5 plan];
    if ([v6 status] == 14)
    {
      v7 = [MEMORY[0x277D75418] currentDevice];
      v8 = [v7 sf_isiPhone];

      if (v8)
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = v9;
        v11 = @"ACTIVATING";
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (![v5 transferredStatus])
  {
    v16 = [v5 isSelected];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v16)
    {
      v11 = @"ON_SINGLE_CELLULAR_PLAN";
    }

    else
    {
      v11 = @"OFF_SINGLE_CELLULAR_PLAN";
    }

    v14 = @"Cellular";
    goto LABEL_16;
  }

  if (![v5 isCheckingCellularConnectivity] || (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "sf_isiPhone"), v12, !v13))
  {
    v15 = 0;
    goto LABEL_17;
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  v11 = @"CHECKING";
LABEL_10:
  v14 = @"Gemini-Gemini";
LABEL_16:
  v15 = [v9 localizedStringForKey:v11 value:&stru_287733598 table:v14];

LABEL_17:

  return v15;
}

- (id)danglingPlanSpecifierDetailText:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NO_SIM" value:&stru_287733598 table:@"Cellular"];

  return v4;
}

- (void)danglingPlanPressed:(id)a3
{
  v6 = [a3 propertyForKey:*MEMORY[0x277D3FE70]];
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 danglingPlanFromReference:v6];

  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  [v5 didSelectDanglingPlan:v4];
}

@end