@interface SettingsCellularUtils
+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string;
+ (BOOL)isUIDualSIM;
+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)check;
+ (BOOL)shouldShowPendingTransferPlanOnPad;
+ (BOOL)supportsWiFiCalling:(id)calling;
+ (id)formattedPhoneNumber:(id)number;
+ (id)removePlanConfirmationMessage:(id)message;
+ (id)removePlanConfirmationTitle:(id)title;
+ (id)singleSIMUIServiceDescriptor;
+ (id)singleSIMUISubscriptionContext;
+ (int)satelliteDataPlanTier;
@end

@implementation SettingsCellularUtils

+ (id)formattedPhoneNumber:(id)number
{
  v19 = *MEMORY[0x277D85DE8];
  numberCopy = number;
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
        v16 = numberCopy;
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
        v16 = numberCopy;
        _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s Could not localize %@", &v13, 0x16u);
      }

      v8 = numberCopy;
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
      v16 = numberCopy;
      _os_log_error_impl(&dword_2658DE000, v10, OS_LOG_TYPE_ERROR, "%s Could not create CFPhoneNumber for %@", &v13, 0x16u);
    }

    v8 = numberCopy;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)supportsWiFiCalling:(id)calling
{
  v28 = *MEMORY[0x277D85DE8];
  callingCopy = calling;
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
        senderIdentityUUID = [v9 senderIdentityUUID];
        uuid = [callingCopy uuid];
        if ([senderIdentityUUID isEqual:uuid])
        {
          supportsWiFiCalling = [v9 supportsWiFiCalling];

          if (supportsWiFiCalling)
          {
            v15 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v24 = "+[SettingsCellularUtils supportsWiFiCalling:]";
              v25 = 2112;
              v26 = callingCopy;
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
    v26 = callingCopy;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s Subscription Context: %@ doesn't support WiFi Calling", buf, 0x16u);
  }

  v14 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)isUIDualSIM
{
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  isDualSimCapable = [mEMORY[0x277D4D868] isDualSimCapable];

  if (!isDualSimCapable)
  {
    return 0;
  }

  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v4 planItems];
  v6 = [planItems count];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  danglingPlanItems = [v7 danglingPlanItems];
  v9 = [danglingPlanItems count] + v6;
  v10 = +[PSUICellularPlanManagerCache sharedInstance];
  plansPendingTransfer = [v10 plansPendingTransfer];
  v12 = (v9 + [plansPendingTransfer count]) > 1;

  return v12;
}

+ (BOOL)shouldShowPendingTransferPlanOnPad
{
  v2 = _os_feature_enabled_impl();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v2 & 1) == 0)
  {
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    if ([v6 isCarrierItemFlowSupported])
    {
      v7 = +[PSUICellularPlanManagerCache sharedInstance];
      plansPendingTransfer = [v7 plansPendingTransfer];
      v5 = [plansPendingTransfer count] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)check
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
    isConnectedOverEthernet = [v9 isConnectedOverEthernet];

    if (isConnectedOverEthernet)
    {
      goto LABEL_5;
    }

    v11 = +[PSUICellularPlanManagerCache sharedInstance];
    getBootstrapState = [v11 getBootstrapState];

    v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    v14 = v13;
    if (getBootstrapState)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = getBootstrapState;
        _os_log_impl(&dword_2658DE000, v14, OS_LOG_TYPE_DEFAULT, "Bootstrap state: %@", &v18, 0xCu);
      }

      bootstrapStatus = [getBootstrapState bootstrapStatus];
      if (bootstrapStatus == 2)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !check;
        goto LABEL_21;
      }

      if (bootstrapStatus == 1)
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
  if ([self isUIDualSIM])
  {
    v2 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "+[SettingsCellularUtils singleSIMUISubscriptionContext]";
      _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Invoking %s is meaningful only in case of Single SIM UI", &v10, 0xCu);
    }
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionsInUse = [mEMORY[0x277D4D868] subscriptionsInUse];

  if ([subscriptionsInUse count])
  {
    v5 = [subscriptionsInUse objectAtIndexedSubscript:0];
  }

  else
  {
    mEMORY[0x277D4D868]2 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts = [mEMORY[0x277D4D868]2 subscriptionContexts];
    v5 = [subscriptionContexts objectAtIndexedSubscript:0];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)singleSIMUIServiceDescriptor
{
  v2 = MEMORY[0x277CC3718];
  singleSIMUISubscriptionContext = [self singleSIMUISubscriptionContext];
  v4 = [v2 descriptorWithSubscriptionContext:singleSIMUISubscriptionContext];

  return v4;
}

+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string
{
  equalCopy = equal;
  stringCopy = string;
  v7 = stringCopy;
  if (equalCopy == stringCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (equalCopy && stringCopy)
    {
      v8 = [equalCopy caseInsensitiveCompare:stringCopy] == 0;
    }
  }

  return v8;
}

+ (id)removePlanConfirmationTitle:(id)title
{
  plan = [title plan];
  carrierName = [plan carrierName];

  if ([carrierName length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, carrierName];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

+ (id)removePlanConfirmationMessage:(id)message
{
  plan = [message plan];
  carrierName = [plan carrierName];

  if ([carrierName length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, carrierName];
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
  initAgentDataFromCellularInternetPath = [objc_alloc(MEMORY[0x277CC3650]) initAgentDataFromCellularInternetPath];
  dataPlanTier = [initAgentDataFromCellularInternetPath dataPlanTier];

  return dataPlanTier;
}

@end