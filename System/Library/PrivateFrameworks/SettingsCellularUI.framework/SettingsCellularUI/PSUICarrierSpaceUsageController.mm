@interface PSUICarrierSpaceUsageController
- (BOOL)hasMultipleDevicesOfTheSameType;
- (BOOL)hasMultiplePlansOfSameTypeForNetworkUsageLabel:(id)label;
- (BOOL)hasMultiplePlansOfTheSameTypeInTheSameSectionCategory;
- (BOOL)shouldShowCalls:(id)calls;
- (BOOL)shouldShowData:(id)data;
- (BOOL)shouldShowMessages:(id)messages;
- (BOOL)shouldShowOnlyRemainingCalls:(id)calls;
- (BOOL)shouldShowOnlyRemainingData:(id)data;
- (BOOL)shouldShowOnlyRemainingMessages:(id)messages;
- (BOOL)shouldShowPlanSection:(id)section;
- (BOOL)shouldShowRemainingCredit:(id)credit;
- (PSUICarrierSpaceUsageController)initWithNibName:(id)name bundle:(id)bundle;
- (id)barGraphColors;
- (id)callsDescription:(id)description;
- (id)dataUsageDescription:(id)description;
- (id)deviceTypeSectionLabelForAccountMetrics:(id)metrics;
- (id)messagesDescription:(id)description;
- (id)planCategorySectionLabelForPlanMetrics:(id)metrics;
- (id)remainingCreditDescription:(id)description;
- (id)specifiers;
- (id)usageCategories;
- (id)usageGraphSpecifierForSection:(id)section;
- (id)usageSections;
- (void)carrierSpaceChanged;
- (void)simStatusChanged;
@end

@implementation PSUICarrierSpaceUsageController

- (void)simStatusChanged
{
  v13 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceUsageController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PSUICarrierSpaceUsageController simStatusChanged]";
    v11 = 2112;
    v12 = 0x287737BB8;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification %@", &v9, 0x16u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  isSIMMissing = [mEMORY[0x277D4D868] isSIMMissing];

  if (isSIMMissing)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    v7 = [WeakRetained popViewControllerAnimated:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)carrierSpaceChanged
{
  v9 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICarrierSpaceUsageController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PSUICarrierSpaceUsageController carrierSpaceChanged]";
    v7 = 2112;
    v8 = 0x287737B98;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s received notification: %@", &v5, 0x16u);
  }

  [(PSUICarrierSpaceUsageController *)self reloadSpecifiers];
  v4 = *MEMORY[0x277D85DE8];
}

- (PSUICarrierSpaceUsageController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PSUICarrierSpaceUsageController;
  v4 = [(PSUICarrierSpaceUsageController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_simStatusChanged name:0x287737BB8 object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_carrierSpaceChanged name:0x287737B98 object:0];
  }

  return v4;
}

- (id)barGraphColors
{
  if (_MergedGlobals_61 != -1)
  {
    dispatch_once(&_MergedGlobals_61, &__block_literal_global_5);
  }

  v3 = qword_28156A6C0;

  return v3;
}

void __49__PSUICarrierSpaceUsageController_barGraphColors__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:0.678431373 blue:0.97254902 alpha:1.0];
  v1 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.8 blue:0.0 alpha:{1.0, v0}];
  v8[1] = v1;
  v2 = [MEMORY[0x277D75348] colorWithRed:0.8 green:0.450980392 blue:0.960784314 alpha:1.0];
  v8[2] = v2;
  v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  v8[3] = v3;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  v8[4] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = qword_28156A6C0;
  qword_28156A6C0 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)usageCategories
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(PSUICarrierSpaceUsageController *)self usageSections];
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v5 = v20;
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (!v6)
        {

LABEL_18:
          v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v4, 0}];
          [v5 addObject:v15];

          continue;
        }

        v7 = v6;
        v22 = i;
        v23 = 0;
        v8 = *v25;
        do
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v24 + 1) + 8 * j);
            v11 = [v10 objectAtIndexedSubscript:0];
            accountMetrics = [v11 accountMetrics];
            accountMetrics2 = [v4 accountMetrics];
            v14 = [accountMetrics isEqual:accountMetrics2];

            if (v14)
            {
              [v10 addObject:v4];
              v23 = 1;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v7);

        i = v22;
        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)usageSections
{
  v92 = *MEMORY[0x277D85DE8];
  v61 = objc_opt_new();
  +[PSUICarrierSpaceManager sharedManager];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v55 = v85 = 0u;
  usageInfo = [v55 usageInfo];
  accountMetrics = [usageInfo accountMetrics];

  obj = accountMetrics;
  v58 = [accountMetrics countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v58)
  {
    v57 = *v83;
    do
    {
      v4 = 0;
      do
      {
        if (*v83 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v4;
        v5 = *(*(&v82 + 1) + 8 * v4);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v69 = v5;
        applicablePlans = [v5 applicablePlans];
        v63 = [applicablePlans countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v63)
        {
          v62 = *v79;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v79 != v62)
              {
                objc_enumerationMutation(applicablePlans);
              }

              v7 = *(*(&v78 + 1) + 8 * i);
              dataUsage = [v7 dataUsage];
              sharedPlanIdentifier = [dataUsage sharedPlanIdentifier];

              dataUsage2 = [v7 dataUsage];
              thisDeviceDataUsed = [dataUsage2 thisDeviceDataUsed];
              v68 = v7;
              dataUsage3 = [v7 dataUsage];
              v13 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", thisDeviceDataUsed, [dataUsage3 units]);

              networkUsageLabel = [v69 networkUsageLabel];
              v15 = objc_alloc(MEMORY[0x277D3F998]);
              networkUsageLabel2 = [v69 networkUsageLabel];
              greenColor = [MEMORY[0x277D75348] greenColor];
              v66 = networkUsageLabel;
              v65 = [v15 initWithIdentifier:networkUsageLabel2 title:networkUsageLabel color:greenColor bytes:v13];

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v18 = v61;
              v19 = [v18 countByEnumeratingWithState:&v74 objects:v89 count:16];
              if (!v19)
              {

                v22 = 0;
LABEL_32:
                v34 = v22;
                v22 = objc_opt_new();

                if ([v69 localDevice])
                {
                  [v22 setSharedPlanIdentifier:sharedPlanIdentifier];
                  [v22 setPrimaryMetrics:v68];
                }

                else
                {
                  otherMetrics = [v22 otherMetrics];

                  if (!otherMetrics)
                  {
                    v36 = objc_opt_new();
                    [v22 setOtherMetrics:v36];
                  }

                  otherMetrics2 = [v22 otherMetrics];
                  [otherMetrics2 addObject:v68];
                }

                [v22 setAccountMetrics:v69];
                [v18 addObject:v22];
                goto LABEL_38;
              }

              v20 = v19;
              v64 = i;
              v21 = 0;
              v22 = 0;
              v23 = *v75;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v75 != v23)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v25 = *(*(&v74 + 1) + 8 * j);
                  sharedPlanIdentifier2 = [v25 sharedPlanIdentifier];
                  v27 = [sharedPlanIdentifier isEqualToString:sharedPlanIdentifier2];

                  if (v27)
                  {
                    v28 = v25;

                    if ([v69 localDevice])
                    {
                      primaryMetrics = [v28 primaryMetrics];

                      if (primaryMetrics)
                      {
                        getLogger = [(PSUICarrierSpaceUsageController *)self getLogger];
                        if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v88 = sharedPlanIdentifier;
                          _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "More than one primary plan for shared plan identifier: %@", buf, 0xCu);
                        }
                      }

                      [v28 setPrimaryMetrics:v68];
                      [v28 setAccountMetrics:v69];
                    }

                    else
                    {
                      otherMetrics3 = [v28 otherMetrics];

                      if (!otherMetrics3)
                      {
                        v32 = objc_opt_new();
                        [v28 setOtherMetrics:v32];
                      }

                      otherMetrics4 = [v28 otherMetrics];
                      [otherMetrics4 addObject:v68];
                    }

                    v21 = 1;
                    v22 = v28;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v74 objects:v89 count:16];
              }

              while (v20);

              i = v64;
              if ((v21 & 1) == 0)
              {
                goto LABEL_32;
              }

LABEL_38:
              barCategories = [v22 barCategories];

              if (!barCategories)
              {
                v39 = objc_opt_new();
                [v22 setBarCategories:v39];
              }

              barCategories2 = [v22 barCategories];
              [barCategories2 addObject:v65];
            }

            v63 = [applicablePlans countByEnumeratingWithState:&v78 objects:v90 count:16];
          }

          while (v63);
        }

        v4 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v58);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v41 = v61;
  v42 = [v41 countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v71;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v71 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v70 + 1) + 8 * k);
        primaryMetrics2 = [v46 primaryMetrics];
        if (primaryMetrics2)
        {
        }

        else
        {
          otherMetrics5 = [v46 otherMetrics];
          v49 = [otherMetrics5 count];

          if (v49 == 1)
          {
            otherMetrics6 = [v46 otherMetrics];
            v51 = [otherMetrics6 objectAtIndexedSubscript:0];
            [v46 setPrimaryMetrics:v51];

            [v46 setOtherMetrics:0];
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v43);
  }

  v52 = [v41 copy];
  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)deviceTypeSectionLabelForAccountMetrics:(id)metrics
{
  metricsCopy = metrics;
  deviceType = [metricsCopy deviceType];
  switch(deviceType)
  {
    case 3:
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DEVICE_TYPE_APPLE_WATCH";
      goto LABEL_7;
    case 2:
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DEVICE_TYPE_IPAD";
      goto LABEL_7;
    case 1:
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DEVICE_TYPE_IPHONE";
LABEL_7:
      networkUsageLabel = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"CarrierSpaceUsage"];

      goto LABEL_11;
  }

  getLogger = [(PSUICarrierSpaceUsageController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Using network usage label", v12, 2u);
  }

  networkUsageLabel = [metricsCopy networkUsageLabel];
LABEL_11:

  return networkUsageLabel;
}

- (id)planCategorySectionLabelForPlanMetrics:(id)metrics
{
  metricsCopy = metrics;
  planCategory = [metricsCopy planCategory];
  switch(planCategory)
  {
    case 3:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"PLAN_CATEGORY_INTERNATIONAL_ROAMING";
      goto LABEL_7;
    case 2:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"PLAN_CATEGORY_DOMESTIC_ROAMING";
      goto LABEL_7;
    case 1:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"PLAN_CATEGORY_DOMESTIC";
LABEL_7:
      planLabel = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"CarrierSpaceUsage"];

      goto LABEL_9;
  }

  planLabel = [metricsCopy planLabel];
LABEL_9:

  return planLabel;
}

- (BOOL)hasMultipleDevicesOfTheSameType
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(PSUICarrierSpaceUsageController *)self usageCategories];
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v29 = 0;
    v25 = *v35;
    v4 = 0x277CCA000uLL;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v6 = *(*(&v34 + 1) + 8 * v5);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v28 = v6;
        v7 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v31;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v31 != v9)
              {
                objc_enumerationMutation(v28);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              accountMetrics = [v11 accountMetrics];
              networkUsageLabel = [accountMetrics networkUsageLabel];

              v14 = v4;
              v15 = *(v4 + 2992);
              accountMetrics2 = [v11 accountMetrics];
              v17 = [v15 numberWithInteger:{objc_msgSend(accountMetrics2, "deviceType")}];
              v18 = [v3 objectForKeyedSubscript:v17];

              if (v18)
              {
                v29 |= [v18 isEqualToString:networkUsageLabel] ^ 1;
              }

              v4 = v14;
              v19 = *(v14 + 2992);
              accountMetrics3 = [v11 accountMetrics];
              v21 = [v19 numberWithInteger:{objc_msgSend(accountMetrics3, "deviceType")}];
              [v3 setObject:networkUsageLabel forKeyedSubscript:v21];
            }

            v8 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v8);
        }

        v5 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

- (BOOL)hasMultiplePlansOfTheSameTypeInTheSameSectionCategory
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(PSUICarrierSpaceUsageController *)self usageCategories];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v28 = 0;
    v24 = *v34;
    v2 = 0x277CCA000uLL;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v3;
        v4 = *(*(&v33 + 1) + 8 * v3);
        v5 = objc_opt_new();
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v27 = v4;
        v6 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v30;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v30 != v8)
              {
                objc_enumerationMutation(v27);
              }

              v10 = *(*(&v29 + 1) + 8 * i);
              primaryMetrics = [v10 primaryMetrics];
              planLabel = [primaryMetrics planLabel];

              v13 = v2;
              v14 = *(v2 + 2992);
              primaryMetrics2 = [v10 primaryMetrics];
              v16 = [v14 numberWithInteger:{objc_msgSend(primaryMetrics2, "planCategory")}];
              v17 = [v5 objectForKeyedSubscript:v16];

              if (v17)
              {
                v28 |= [v17 isEqualToString:planLabel] ^ 1;
              }

              v2 = v13;
              v18 = *(v13 + 2992);
              primaryMetrics3 = [v10 primaryMetrics];
              v20 = [v18 numberWithInteger:{objc_msgSend(primaryMetrics3, "planCategory")}];
              [v5 setObject:planLabel forKeyedSubscript:v20];
            }

            v7 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v7);
        }

        v3 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (BOOL)hasMultiplePlansOfSameTypeForNetworkUsageLabel:(id)label
{
  v43 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (labelCopy)
  {
    v4 = objc_opt_new();
    +[PSUICarrierSpaceManager sharedManager];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v40 = 0u;
    usageInfo = [v27 usageInfo];
    accountMetrics = [usageInfo accountMetrics];

    v7 = [accountMetrics countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v38;
      v28 = *v38;
      v29 = labelCopy;
      do
      {
        v11 = 0;
        v30 = v8;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(accountMetrics);
          }

          v12 = *(*(&v37 + 1) + 8 * v11);
          networkUsageLabel = [v12 networkUsageLabel];
          v14 = [networkUsageLabel isEqualToString:labelCopy];

          if (v14)
          {
            v31 = v11;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            applicablePlans = [v12 applicablePlans];
            v15 = [applicablePlans countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v34;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v34 != v17)
                  {
                    objc_enumerationMutation(applicablePlans);
                  }

                  v19 = *(*(&v33 + 1) + 8 * i);
                  planCategory = [v19 planCategory];
                  planLabel = [v19 planLabel];
                  v22 = [MEMORY[0x277CCABB0] numberWithInteger:planCategory];
                  v23 = [v4 objectForKeyedSubscript:v22];

                  if (v23)
                  {
                    v9 |= [v23 isEqualToString:planLabel] ^ 1;
                  }

                  v24 = [MEMORY[0x277CCABB0] numberWithInteger:planCategory];
                  [v4 setObject:planLabel forKeyedSubscript:v24];
                }

                v16 = [applicablePlans countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v16);
            }

            v10 = v28;
            labelCopy = v29;
            v8 = v30;
            v11 = v31;
          }

          ++v11;
        }

        while (v11 != v8);
        v8 = [accountMetrics countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (id)specifiers
{
  selfCopy = self;
  v124 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v96 = *MEMORY[0x277D3FC48];
    v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
    activeDataCarrierName = [v4 activeDataCarrierName];

    hasMultipleDevicesOfTheSameType = [(PSUICarrierSpaceUsageController *)selfCopy hasMultipleDevicesOfTheSameType];
    hasMultiplePlansOfTheSameTypeInTheSameSectionCategory = [(PSUICarrierSpaceUsageController *)selfCopy hasMultiplePlansOfTheSameTypeInTheSameSectionCategory];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = [(PSUICarrierSpaceUsageController *)selfCopy usageCategories];
    v99 = [obj countByEnumeratingWithState:&v116 objects:v123 count:16];
    if (!v99)
    {
      goto LABEL_90;
    }

    v98 = *v117;
    v107 = *MEMORY[0x277D3FF88];
    v108 = selfCopy;
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v117 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v100 = v5;
        v6 = *(*(&v116 + 1) + 8 * v5);
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v105 = v6;
        v109 = [v105 countByEnumeratingWithState:&v112 objects:v122 count:16];
        if (v109)
        {
          v7 = *v113;
          v8 = 1;
          v104 = *v113;
          do
          {
            for (i = 0; i != v109; ++i)
            {
              if (*v113 != v7)
              {
                objc_enumerationMutation(v105);
              }

              v10 = *(*(&v112 + 1) + 8 * i);
              primaryMetrics = [v10 primaryMetrics];
              accountMetrics = [v10 accountMetrics];
              if ([(PSUICarrierSpaceUsageController *)selfCopy shouldShowPlanSection:primaryMetrics])
              {
                getLogger = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v121 = v10;
                  _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Next Section: %@", buf, 0xCu);
                }

                v106 = v10;
                if (v8)
                {
                  networkUsageLabel = [accountMetrics networkUsageLabel];
                  v15 = [(PSUICarrierSpaceUsageController *)selfCopy hasMultiplePlansOfSameTypeForNetworkUsageLabel:networkUsageLabel];

                  if (v15)
                  {
                    getLogger2 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
                    {
                      networkUsageLabel2 = [accountMetrics networkUsageLabel];
                      *buf = 138412290;
                      v121 = networkUsageLabel2;
                      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Multiple plans of same type for network usage label:%@, using plan label", buf, 0xCu);
                    }

                    goto LABEL_20;
                  }

                  if ([v10 isSharedPlan])
                  {
                    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    networkUsageLabel3 = [v25 localizedStringForKey:@"DEVICE_TYPE_SHARED" value:&stru_287733598 table:@"CarrierSpaceUsage"];

                    getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v20 = getLogger3;
                      v21 = "Section is shared plan";
                      goto LABEL_39;
                    }

                    goto LABEL_41;
                  }

                  if ([accountMetrics localDevice])
                  {
                    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v27 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THIS_DEVICE"];
                    networkUsageLabel3 = [v26 localizedStringForKey:v27 value:&stru_287733598 table:@"CarrierSpaceUsage"];

                    getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (!os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_41;
                    }

                    *buf = 0;
                    v20 = getLogger3;
                    v21 = "Using THIS_DEVICE name";
                    goto LABEL_39;
                  }

                  if (!hasMultipleDevicesOfTheSameType)
                  {
                    networkUsageLabel3 = [(PSUICarrierSpaceUsageController *)selfCopy deviceTypeSectionLabelForAccountMetrics:accountMetrics];
                    getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (!os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_41;
                    }

                    *buf = 0;
                    v20 = getLogger3;
                    v21 = "Device type is not ambiguous, using device type";
                    goto LABEL_39;
                  }

                  networkUsageLabel3 = [accountMetrics networkUsageLabel];
                  getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                  if (!os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_41;
                  }

                  *buf = 138412290;
                  v121 = accountMetrics;
                  v20 = getLogger3;
                  v21 = "Device type is ambiguous, using network usage label, account metrics: %@";
                  v28 = 12;
                }

                else
                {
LABEL_20:
                  if (hasMultiplePlansOfTheSameTypeInTheSameSectionCategory)
                  {
                    networkUsageLabel3 = [primaryMetrics planLabel];
                    getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v20 = getLogger3;
                      v21 = "Plan type is ambiguous, using plan name";
                      goto LABEL_39;
                    }

                    goto LABEL_41;
                  }

                  networkUsageLabel4 = [accountMetrics networkUsageLabel];
                  v23 = [(PSUICarrierSpaceUsageController *)selfCopy hasMultiplePlansOfSameTypeForNetworkUsageLabel:networkUsageLabel4];

                  if (v23)
                  {
                    networkUsageLabel3 = [primaryMetrics planLabel];
                    getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                    {
                      networkUsageLabel5 = [accountMetrics networkUsageLabel];
                      *buf = 138412290;
                      v121 = networkUsageLabel5;
                      _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "Multiple same type plans for network usage label:%@, using plan name", buf, 0xCu);
                    }

                    goto LABEL_41;
                  }

                  networkUsageLabel3 = [(PSUICarrierSpaceUsageController *)selfCopy planCategorySectionLabelForPlanMetrics:primaryMetrics];
                  getLogger3 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                  if (!os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_41:

                    getLogger4 = [(PSUICarrierSpaceUsageController *)selfCopy getLogger];
                    if (os_log_type_enabled(getLogger4, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v121 = networkUsageLabel3;
                      _os_log_impl(&dword_2658DE000, getLogger4, OS_LOG_TYPE_DEFAULT, "Resolved group title: %@", buf, 0xCu);
                    }

                    v30 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:networkUsageLabel3];
                    v31 = objc_alloc_init(MEMORY[0x277CCA968]);
                    [v31 setDoesRelativeDateFormatting:0];
                    [v31 setTimeStyle:1];
                    lastUpdatedAt = [primaryMetrics lastUpdatedAt];

                    if (lastUpdatedAt)
                    {
                      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
                      [primaryMetrics lastUpdatedAt];
                      v35 = v34 = v30;
                      v36 = [currentCalendar isDateInToday:v35];

                      if (v36)
                      {
                        v37 = 0;
                      }

                      else
                      {
                        v37 = 2;
                      }

                      if (v36)
                      {
                        v38 = @"LAST_UPDATE_FROM_CARRIER_%@_AT_%@";
                      }

                      else
                      {
                        v38 = @"LAST_UPDATE_FROM_CARRIER_%@_ON_%@";
                      }

                      [v31 setDateStyle:v37];
                      lastUpdatedAt2 = [primaryMetrics lastUpdatedAt];
                      v40 = [v31 stringFromDate:lastUpdatedAt2];

                      v41 = MEMORY[0x277CCACA8];
                      v42 = MEMORY[0x277CCA8D8];
                      v43 = objc_opt_class();
                      v44 = v42;
                      v30 = v34;
                      v45 = [v44 bundleForClass:v43];
                      v46 = [v45 localizedStringForKey:v38 value:&stru_287733598 table:@"CarrierSpaceUsage"];
                      v47 = [v41 stringWithFormat:v46, activeDataCarrierName, v40];

                      v111 = v47;
                      [v30 setProperty:v47 forKey:v107];
                    }

                    else
                    {
                      v111 = 0;
                    }

                    billingCycleEndDate = [accountMetrics billingCycleEndDate];

                    if (billingCycleEndDate)
                    {
                      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
                      billingCycleEndDate2 = [accountMetrics billingCycleEndDate];
                      v51 = [currentCalendar2 isDateInToday:billingCycleEndDate2];

                      if (v51)
                      {
                        v52 = 0;
                      }

                      else
                      {
                        v52 = 2;
                      }

                      if (v51)
                      {
                        v53 = @"BILLING_CYCLE_ENDS_AT_%@";
                      }

                      else
                      {
                        v53 = @"BILLING_CYCLE_ENDS_ON_%@";
                      }

                      [v31 setDateStyle:v52];
                      billingCycleEndDate3 = [accountMetrics billingCycleEndDate];
                      v55 = [v31 stringFromDate:billingCycleEndDate3];

                      v56 = MEMORY[0x277CCACA8];
                      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v58 = [v57 localizedStringForKey:v53 value:&stru_287733598 table:@"CarrierSpaceUsage"];
                      v59 = [v56 stringWithFormat:v58, v55];

                      if (v111)
                      {
                        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v111, v59];
                      }

                      else
                      {
                        v60 = v59;
                      }

                      selfCopy = v108;
                      v111 = v60;
                      [v30 setProperty:v60 forKey:v107];
                    }

                    else
                    {
                      selfCopy = v108;
                    }

                    [v110 addObject:v30];
                    if ([(PSUICarrierSpaceUsageController *)selfCopy shouldShowData:primaryMetrics])
                    {
                      dataUsage = [primaryMetrics dataUsage];
                      thisDeviceDataUsed = [dataUsage thisDeviceDataUsed];
                      v63 = [PSUICarrierSpaceManager carrierMetricTypeForString:thisDeviceDataUsed];

                      dataUsage2 = [primaryMetrics dataUsage];
                      capacity = [dataUsage2 capacity];
                      v66 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

                      if (v63 == 1 && v66 == 1)
                      {
                        selfCopy = v108;
                        v67 = [(PSUICarrierSpaceUsageController *)v108 usageGraphSpecifierForSection:v106];
                        [v110 addObject:v67];
                      }

                      else
                      {
                        selfCopy = v108;
                        v68 = [(PSUICarrierSpaceUsageController *)v108 shouldShowOnlyRemainingData:primaryMetrics];
                        v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                        v70 = networkUsageLabel3;
                        v71 = accountMetrics;
                        v72 = v69;
                        if (v68)
                        {
                          v73 = @"REMAINING_DATA";
                        }

                        else
                        {
                          v73 = @"DATA";
                        }

                        v67 = [v69 localizedStringForKey:v73 value:&stru_287733598 table:@"CarrierSpaceUsage"];

                        accountMetrics = v71;
                        networkUsageLabel3 = v70;
                        v74 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v67 target:v108 set:0 get:sel_dataUsageDescription_ detail:0 cell:4 edit:0];
                        [v74 setProperty:primaryMetrics forKey:@"PSUICarrierSpaceMetricsKey"];
                        [v110 addObject:v74];
                      }
                    }

                    if ([(PSUICarrierSpaceUsageController *)selfCopy shouldShowCalls:primaryMetrics])
                    {
                      v75 = [(PSUICarrierSpaceUsageController *)selfCopy shouldShowOnlyRemainingCalls:primaryMetrics];
                      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v77 = v76;
                      if (v75)
                      {
                        v78 = @"REMAINING_CALLS";
                      }

                      else
                      {
                        v78 = @"CALLS";
                      }

                      v79 = [v76 localizedStringForKey:v78 value:&stru_287733598 table:@"CarrierSpaceUsage"];

                      v80 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v79 target:selfCopy set:0 get:sel_callsDescription_ detail:0 cell:4 edit:0];
                      [v80 setProperty:primaryMetrics forKey:@"PSUICarrierSpaceMetricsKey"];
                      [v110 addObject:v80];
                    }

                    if ([(PSUICarrierSpaceUsageController *)selfCopy shouldShowMessages:primaryMetrics])
                    {
                      v81 = [(PSUICarrierSpaceUsageController *)selfCopy shouldShowOnlyRemainingMessages:primaryMetrics];
                      v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v83 = v82;
                      if (v81)
                      {
                        v84 = @"REMAINING_MESSAGES";
                      }

                      else
                      {
                        v84 = @"MESSAGES";
                      }

                      v85 = [v82 localizedStringForKey:v84 value:&stru_287733598 table:@"CarrierSpaceUsage"];

                      v86 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v85 target:selfCopy set:0 get:sel_messagesDescription_ detail:0 cell:4 edit:0];
                      [v86 setProperty:primaryMetrics forKey:@"PSUICarrierSpaceMetricsKey"];
                      [v110 addObject:v86];
                    }

                    if ([(PSUICarrierSpaceUsageController *)selfCopy shouldShowRemainingCredit:primaryMetrics])
                    {
                      v87 = MEMORY[0x277D3FAD8];
                      v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      [v88 localizedStringForKey:@"REMAINING_CREDIT" value:&stru_287733598 table:@"CarrierSpaceUsage"];
                      v89 = networkUsageLabel3;
                      v91 = v90 = accountMetrics;
                      v92 = [v87 preferenceSpecifierNamed:v91 target:selfCopy set:0 get:sel_remainingCreditDescription_ detail:0 cell:4 edit:0];

                      accountMetrics = v90;
                      networkUsageLabel3 = v89;

                      [v92 setProperty:primaryMetrics forKey:@"PSUICarrierSpaceMetricsKey"];
                      [v110 addObject:v92];
                    }

                    v8 = 0;
                    v7 = v104;
                    goto LABEL_86;
                  }

                  *buf = 0;
                  v20 = getLogger3;
                  v21 = "Plan type is not ambiguous, using plan type";
LABEL_39:
                  v28 = 2;
                }

                _os_log_impl(&dword_2658DE000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v28);
                goto LABEL_41;
              }

LABEL_86:
            }

            v109 = [v105 countByEnumeratingWithState:&v112 objects:v122 count:16];
          }

          while (v109);
        }

        v5 = v100 + 1;
      }

      while (v100 + 1 != v99);
      v99 = [obj countByEnumeratingWithState:&v116 objects:v123 count:16];
      if (!v99)
      {
LABEL_90:

        [MEMORY[0x277D4D878] logSpecifiers:v110 origin:@"[PSUICarrierSpaceUsageController specifiers] end"];
        v93 = *(&selfCopy->super.super.super.super.super.isa + v96);
        *(&selfCopy->super.super.super.super.super.isa + v96) = v110;

        v3 = *(&selfCopy->super.super.super.super.super.isa + v96);
        break;
      }
    }
  }

  v94 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)usageGraphSpecifierForSection:(id)section
{
  v65 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  primaryMetrics = [sectionCopy primaryMetrics];
  v59 = objc_opt_new();
  selfCopy = self;
  barGraphColors = [(PSUICarrierSpaceUsageController *)self barGraphColors];
  v7 = [barGraphColors count];

  dataUsage = [primaryMetrics dataUsage];
  thisDeviceDataUsed = [dataUsage thisDeviceDataUsed];
  dataUsage2 = [primaryMetrics dataUsage];
  v11 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", thisDeviceDataUsed, [dataUsage2 units]);

  dataUsage3 = [primaryMetrics dataUsage];
  sharedDataUsed = [dataUsage3 sharedDataUsed];
  dataUsage4 = [primaryMetrics dataUsage];
  v15 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", sharedDataUsed, [dataUsage4 units]);

  dataUsage5 = [primaryMetrics dataUsage];
  capacity = [dataUsage5 capacity];
  dataUsage6 = [primaryMetrics dataUsage];
  v58 = +[PSUICarrierSpaceManager bytesFromString:carrierSpaceUnits:](PSUICarrierSpaceManager, "bytesFromString:carrierSpaceUnits:", capacity, [dataUsage6 units]);

  v52 = primaryMetrics;
  dataUsage7 = [primaryMetrics dataUsage];
  sharedDataUsed2 = [dataUsage7 sharedDataUsed];
  if ([sharedDataUsed2 length])
  {
    v21 = v15;
  }

  else
  {
    v21 = v11;
  }

  [MEMORY[0x277D75348] systemRedColor];
  v54 = v53 = sectionCopy;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [sectionCopy barCategories];
  v22 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = 0;
    v26 = *v61;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v60 + 1) + 8 * i);
        if (v21 <= v58)
        {
          [(PSUICarrierSpaceUsageController *)selfCopy barGraphColors];
          v30 = v29 = v21;
          v31 = [v30 objectAtIndexedSubscript:v25];
          [v28 setColor:v31];

          v21 = v29;
        }

        else
        {
          [*(*(&v60 + 1) + 8 * i) setColor:v54];
        }

        [v59 addObject:v28];
        v25 = (v25 + 1) % v7;
        v24 += [v28 bytes];
      }

      v23 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v32 = objc_opt_new();
  [v32 setCapacity:v58];
  [v32 setBytesUsed:v21];
  [v32 setSortStyle:0];
  [v32 setCategories:v59];
  v33 = [v59 count] < 2;
  if (v21 > v58)
  {
    v33 = 1;
  }

  obja = v33;
  v34 = v21 > v24;
  v35 = v21;
  v36 = MEMORY[0x277D3F9A0];
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v38 = [v37 localizedStringForKey:@"DATA" value:&stru_287733598 table:@"CarrierSpaceUsage"];
  v39 = [v36 specifierWithTitle:v38 useStandardFontSizeForSizeLabel:1];

  [v39 setProperty:v52 forKey:@"PSUICarrierSpaceMetricsKey"];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v39 setProperty:clearColor forKey:*MEMORY[0x277D3FE40]];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:v34];
  [v39 setProperty:v41 forKey:*MEMORY[0x277D3FE48]];

  v42 = [MEMORY[0x277CCABB0] numberWithInt:obja];
  [v39 setProperty:v42 forKey:*MEMORY[0x277D3FE28]];

  if (v35 <= v58)
  {
    v44 = selfCopy;
    barGraphColors2 = [(PSUICarrierSpaceUsageController *)selfCopy barGraphColors];
    v46 = [barGraphColors2 objectAtIndexedSubscript:v25];
    [v39 setProperty:v46 forKey:*MEMORY[0x277D3FE30]];

    v43 = v54;
  }

  else
  {
    v43 = v54;
    [v39 setProperty:v54 forKey:*MEMORY[0x277D3FE30]];
    v44 = selfCopy;
  }

  v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v48 = [v47 localizedStringForKey:@"OTHER" value:&stru_287733598 table:@"CarrierSpaceUsage"];
  [v39 setProperty:v48 forKey:*MEMORY[0x277D3FE38]];

  v49 = [(PSUICarrierSpaceUsageController *)v44 dataUsageDescription:v39];
  [v39 setProperty:v49 forKey:*MEMORY[0x277D3FE50]];

  [v39 setProperty:v32 forKey:*MEMORY[0x277D3FE20]];
  v50 = *MEMORY[0x277D85DE8];

  return v39;
}

- (BOOL)shouldShowPlanSection:(id)section
{
  sectionCopy = section;
  v5 = [(PSUICarrierSpaceUsageController *)self shouldShowData:sectionCopy]|| [(PSUICarrierSpaceUsageController *)self shouldShowCalls:sectionCopy]|| [(PSUICarrierSpaceUsageController *)self shouldShowMessages:sectionCopy]|| [(PSUICarrierSpaceUsageController *)self shouldShowRemainingCredit:sectionCopy];

  return v5;
}

- (BOOL)shouldShowData:(id)data
{
  dataCopy = data;
  dataUsage = [dataCopy dataUsage];
  thisDeviceDataUsed = [dataUsage thisDeviceDataUsed];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:thisDeviceDataUsed];

  dataUsage2 = [dataCopy dataUsage];

  capacity = [dataUsage2 capacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  if ([PSUICarrierSpaceManager isCarrierMetricTypeValid:v6])
  {
    return 1;
  }

  return [PSUICarrierSpaceManager isCarrierMetricTypeValid:v9];
}

- (BOOL)shouldShowOnlyRemainingData:(id)data
{
  dataCopy = data;
  dataUsage = [dataCopy dataUsage];
  thisDeviceDataUsed = [dataUsage thisDeviceDataUsed];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:thisDeviceDataUsed];

  dataUsage2 = [dataCopy dataUsage];

  capacity = [dataUsage2 capacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  return !v6 && v9 == 1;
}

- (id)dataUsageDescription:(id)description
{
  v3 = [description propertyForKey:@"PSUICarrierSpaceMetricsKey"];
  v4 = +[PSUICarrierSpaceManager sharedManager];
  v5 = [v4 descriptionForPlanMetrics:v3];

  return v5;
}

- (BOOL)shouldShowCalls:(id)calls
{
  callsCopy = calls;
  voice = [callsCopy voice];
  minutesUsed = [voice minutesUsed];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesUsed];

  voice2 = [callsCopy voice];

  minutesCapacity = [voice2 minutesCapacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesCapacity];

  if ([PSUICarrierSpaceManager isCarrierMetricTypeValid:v6])
  {
    return 1;
  }

  return [PSUICarrierSpaceManager isCarrierMetricTypeValid:v9];
}

- (BOOL)shouldShowOnlyRemainingCalls:(id)calls
{
  callsCopy = calls;
  voice = [callsCopy voice];
  minutesUsed = [voice minutesUsed];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesUsed];

  voice2 = [callsCopy voice];

  minutesCapacity = [voice2 minutesCapacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesCapacity];

  return !v6 && v9 == 1;
}

- (id)callsDescription:(id)description
{
  v3 = [description propertyForKey:@"PSUICarrierSpaceMetricsKey"];
  voice = [v3 voice];
  minutesCapacity = [voice minutesCapacity];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesCapacity];

  voice2 = [v3 voice];
  minutesUsed = [voice2 minutesUsed];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:minutesUsed];

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"UNLIMITED" value:&stru_287733598 table:@"CarrierSpaceUsage"];
      goto LABEL_10;
    }

    v12 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v10 localizedStringForKey:@"%@_MINUTES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
    voice3 = [v3 voice];
    minutesUsed2 = [voice3 minutesUsed];
    goto LABEL_8;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v13;
  if (v9 != 1)
  {
    v14 = [v13 localizedStringForKey:@"%@_MINUTES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
    voice3 = [v3 voice];
    minutesUsed2 = [voice3 minutesCapacity];
LABEL_8:
    minutesUsed3 = minutesUsed2;
    v11 = [v12 stringWithFormat:v14, minutesUsed2];
    goto LABEL_9;
  }

  v14 = [v13 localizedStringForKey:@"USED_%@_OF_%@_MINUTES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
  voice3 = [v3 voice];
  minutesUsed3 = [voice3 minutesUsed];
  voice4 = [v3 voice];
  minutesCapacity2 = [voice4 minutesCapacity];
  v11 = [v12 stringWithFormat:v14, minutesUsed3, minutesCapacity2];

LABEL_9:
LABEL_10:

  return v11;
}

- (BOOL)shouldShowMessages:(id)messages
{
  messagesCopy = messages;
  messages = [messagesCopy messages];
  used = [messages used];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:used];

  messages2 = [messagesCopy messages];

  capacity = [messages2 capacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  if ([PSUICarrierSpaceManager isCarrierMetricTypeValid:v6])
  {
    return 1;
  }

  return [PSUICarrierSpaceManager isCarrierMetricTypeValid:v9];
}

- (BOOL)shouldShowOnlyRemainingMessages:(id)messages
{
  messagesCopy = messages;
  messages = [messagesCopy messages];
  used = [messages used];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:used];

  messages2 = [messagesCopy messages];

  capacity = [messages2 capacity];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  return !v6 && v9 == 1;
}

- (id)messagesDescription:(id)description
{
  v3 = [description propertyForKey:@"PSUICarrierSpaceMetricsKey"];
  messages = [v3 messages];
  capacity = [messages capacity];
  v6 = [PSUICarrierSpaceManager carrierMetricTypeForString:capacity];

  messages2 = [v3 messages];
  used = [messages2 used];
  v9 = [PSUICarrierSpaceManager carrierMetricTypeForString:used];

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"UNLIMITED" value:&stru_287733598 table:@"CarrierSpaceUsage"];
      goto LABEL_10;
    }

    v12 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v10 localizedStringForKey:@"%@_MESSAGES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
    messages3 = [v3 messages];
    used2 = [messages3 used];
    goto LABEL_8;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v13;
  if (v9 != 1)
  {
    v14 = [v13 localizedStringForKey:@"%@_MESSAGES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
    messages3 = [v3 messages];
    used2 = [messages3 capacity];
LABEL_8:
    used3 = used2;
    v11 = [v12 stringWithFormat:v14, used2];
    goto LABEL_9;
  }

  v14 = [v13 localizedStringForKey:@"USED_%@_OF_%@_MESSAGES" value:&stru_287733598 table:@"CarrierSpaceUsage"];
  messages3 = [v3 messages];
  used3 = [messages3 used];
  messages4 = [v3 messages];
  capacity2 = [messages4 capacity];
  v11 = [v12 stringWithFormat:v14, used3, capacity2];

LABEL_9:
LABEL_10:

  return v11;
}

- (BOOL)shouldShowRemainingCredit:(id)credit
{
  remainingBalance = [credit remainingBalance];
  v4 = [remainingBalance length] != 0;

  return v4;
}

- (id)remainingCreditDescription:(id)description
{
  v3 = [description propertyForKey:@"PSUICarrierSpaceMetricsKey"];
  remainingBalance = [v3 remainingBalance];

  return remainingBalance;
}

@end