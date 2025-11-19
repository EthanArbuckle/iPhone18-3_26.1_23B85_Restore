@interface SettingsCellularUtils
+ (BOOL)isCaseInsensitiveEqual:(id)a3 withString:(id)a4;
+ (BOOL)isUIDualSIM;
+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)a3;
+ (BOOL)shouldShowPendingTransferPlanOnPad;
+ (BOOL)supportsWiFiCalling:(id)a3;
+ (id)formattedPhoneNumber:(id)a3;
+ (id)removePlanConfirmationMessage:(id)a3;
+ (id)removePlanConfirmationTitle:(id)a3;
+ (id)singleSIMUIServiceDescriptor;
+ (id)singleSIMUISubscriptionContext;
+ (int)satelliteDataPlanTier;
@end

@implementation SettingsCellularUtils

+ (id)formattedPhoneNumber:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFPhoneNumberCreate();
  if (v5)
  {
    v6 = v5;
    String = CFPhoneNumberCreateString();
    if (String)
    {
      v8 = String;

      v9 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "+[SettingsCellularUtils formattedPhoneNumber:]";
        v15 = 2112;
        v16 = v3;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s localized %@ as %@", &v13, 0x20u);
      }
    }

    else
    {
      v9 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "+[SettingsCellularUtils formattedPhoneNumber:]";
        v15 = 2112;
        v16 = v3;
        _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s Could not localize %@", &v13, 0x16u);
      }

      v8 = v3;
    }

    CFRelease(v6);
  }

  else
  {
    v10 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[SettingsCellularUtils formattedPhoneNumber:]";
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "%s Could not create CFPhoneNumber for %@", &v13, 0x16u);
    }

    v8 = v3;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)supportsWiFiCalling:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 senderIdentityUUID];
        v11 = [v3 uuid];
        if ([v10 isEqual:v11])
        {
          v12 = [v9 supportsWiFiCalling];

          if (v12)
          {
            v15 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v24 = "+[SettingsCellularUtils supportsWiFiCalling:]";
              v25 = 2112;
              v26 = v3;
              _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s Subscription Context: %@ supports WiFi Calling", buf, 0x16u);
            }

            v14 = 1;
            v13 = v4;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "+[SettingsCellularUtils supportsWiFiCalling:]";
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s Subscription Context: %@ doesn't support WiFi Calling", buf, 0x16u);
  }

  v14 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)isUIDualSIM
{
  v2 = [MEMORY[0x277D4D868] sharedInstance];
  v3 = [v2 isDualSimCapable];

  if (!v3)
  {
    return 0;
  }

  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  v5 = [v4 planItems];
  v6 = [v5 count];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  v8 = [v7 danglingPlanItems];
  v9 = [v8 count] + v6;
  v10 = +[PSUICellularPlanManagerCache sharedInstance];
  v11 = [v10 plansPendingTransfer];
  v12 = (v9 + [v11 count]) > 1;

  return v12;
}

+ (BOOL)shouldShowPendingTransferPlanOnPad
{
  v2 = _os_feature_enabled_impl();
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v2 & 1) == 0)
  {
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    if ([v6 isCarrierItemFlowSupported])
    {
      v7 = +[PSUICellularPlanManagerCache sharedInstance];
      v8 = [v7 plansPendingTransfer];
      v5 = [v8 count] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = +[PSUIDeviceWiFiState sharedInstance];
  if ([v4 isConnectedOverWiFi])
  {
    goto LABEL_4;
  }

  v5 = +[PSUIDeviceCellularState sharedInstance];
  if (![v5 isConnectedOverCellular])
  {
    v9 = +[PSUIDeviceEthernetState sharedInstance];
    v10 = [v9 isConnectedOverEthernet];

    if (v10)
    {
      goto LABEL_5;
    }

    v11 = +[PSUICellularPlanManagerCache sharedInstance];
    v12 = [v11 getBootstrapState];

    v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "Bootstrap state: %@", &v18, 0xCu);
      }

      v15 = [v12 bootstrapStatus];
      if (v15 == 2)
      {
        v16 = [MEMORY[0x277D75418] currentDevice];
        v17 = [v16 userInterfaceIdiom];

        v6 = (v17 & 0xFFFFFFFFFFFFFFFBLL) != 1 && !a3;
        goto LABEL_21;
      }

      if (v15 == 1)
      {
        v6 = 0;
LABEL_21:

        goto LABEL_6;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "Failed to get bootstrap state", &v18, 2u);
      }
    }

    v6 = 1;
    goto LABEL_21;
  }

LABEL_4:
LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)singleSIMUISubscriptionContext
{
  v12 = *MEMORY[0x277D85DE8];
  if ([a1 isUIDualSIM])
  {
    v2 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "+[SettingsCellularUtils singleSIMUISubscriptionContext]";
      _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Invoking %s is meaningful only in case of Single SIM UI", &v10, 0xCu);
    }
  }

  v3 = [MEMORY[0x277D4D868] sharedInstance];
  v4 = [v3 subscriptionsInUse];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = [MEMORY[0x277D4D868] sharedInstance];
    v7 = [v6 subscriptionContexts];
    v5 = [v7 objectAtIndexedSubscript:0];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)singleSIMUIServiceDescriptor
{
  v2 = MEMORY[0x277CC3718];
  v3 = [a1 singleSIMUISubscriptionContext];
  v4 = [v2 descriptorWithSubscriptionContext:v3];

  return v4;
}

+ (BOOL)isCaseInsensitiveEqual:(id)a3 withString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }
  }

  return v8;
}

+ (id)removePlanConfirmationTitle:(id)a3
{
  v3 = [a3 plan];
  v4 = [v3 carrierName];

  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

+ (id)removePlanConfirmationMessage:(id)a3
{
  v3 = [a3 plan];
  v4 = [v3 carrierName];

  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

+ (int)satelliteDataPlanTier
{
  v2 = [objc_alloc(MEMORY[0x277CC3650]) initAgentDataFromCellularInternetPath];
  v3 = [v2 dataPlanTier];

  return v3;
}

@end