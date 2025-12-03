@interface TSFlowHelper
+ (BOOL)hasTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans inBuddy:(BOOL)buddy matchingSODACarrierWebsheetTransferPlanIndex:(id)index;
+ (id)getAccountMemberTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans;
+ (id)sortIndexesInDescending:(id)descending;
+ (id)unregisteredSelectedPlanItems:(id)items;
+ (int64_t)_slotForPlanItem:(id)item;
+ (void)registerIMessageWithPlanItems:(id)items;
+ (void)showBluetoothOffAlertForCrossPlatformTransfer:(id)transfer withCloseHandler:(id)handler;
@end

@implementation TSFlowHelper

+ (id)unregisteredSelectedPlanItems:(id)items
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v23 = +[TSIDSSubscriptionSelector activeIMessageSlots];
  if ([v23 count])
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = itemsCopy;
    v6 = itemsCopy;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (([v11 isInstalling] & 1) == 0)
          {
            if (![v11 isSelected])
            {
              continue;
            }

            v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_slotForPlanItem:", v11)}];
            v13 = [v23 containsObject:v12];

            if (v13)
            {
              continue;
            }
          }

          [array addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[TSFlowHelper unregisteredSelectedPlanItems:];
    }

    itemsCopy = v22;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          if ([v19 isSelected])
          {
            [array addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

+ (void)registerIMessageWithPlanItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_slotForPlanItem:", *(*(&v14 + 1) + 8 * v10), v14)}];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [TSIDSSubscriptionSelector registerSlotsForIMessage:array];
  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[TSFlowHelper registerIMessageWithPlanItems:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans inBuddy:(BOOL)buddy matchingSODACarrierWebsheetTransferPlanIndex:(id)index
{
  buddyCopy = buddy;
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  plansCopy = plans;
  indexCopy = index;
  if (!nameCopy || ([nameCopy plans], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
  {
    v26 = 0;
    goto LABEL_27;
  }

  plans = [nameCopy plans];
  v15 = [plans objectAtIndexedSubscript:0];
  carrierName = [v15 carrierName];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = plansCopy;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v17)
  {
    v26 = 0;
    goto LABEL_26;
  }

  v18 = v17;
  v33 = buddyCopy;
  v34 = indexCopy;
  v35 = plansCopy;
  v19 = *v38;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v38 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v37 + 1) + 8 * i);
      v22 = [v21 objectForKeyedSubscript:@"planItem"];
      carrierName2 = [v22 carrierName];
      v24 = [TSUtilities isCaseInsensitiveEqual:carrierName withString:carrierName2];

      if (v24)
      {
        v25 = [v16 indexOfObject:v21];
        if ([v22 isAccountMemberTransferablePlan])
        {
          v27 = _TSLogDomain();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v42 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
            _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "Account member has a transferrable plan with a SODA tether @%s", buf, 0xCu);
          }

          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
          indexCopy = v34;
          [v34 addObject:v28];
          v26 = 0;
        }

        else
        {
          if (![v22 isOneClickTransferablePlan])
          {
            if (![v22 isWebsheetTransferablePlan])
            {
              goto LABEL_12;
            }

            v31 = _TSLogDomain();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = @"post buddy";
              if (v33)
              {
                v32 = @"in buddy";
              }

              *buf = 138412802;
              v42 = carrierName;
              v43 = 2112;
              v44 = v32;
              v45 = 2080;
              v46 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
              _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "Websheet transferrable plan exists with same carrier name [%@] %@ @%s", buf, 0x20u);
            }

            plansCopy = v35;
            if (!v33)
            {
              v26 = 1;
              indexCopy = v34;
              goto LABEL_25;
            }

            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
            indexCopy = v34;
            [v34 addObject:v28];
            v26 = 0;
LABEL_24:

LABEL_25:
            goto LABEL_26;
          }

          v28 = _TSLogDomain();
          indexCopy = v34;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v42 = carrierName;
            v43 = 2080;
            v44 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
            _os_log_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEFAULT, "One click transferrable plan exists with same carrier name [%@] @%s", buf, 0x16u);
          }

          v26 = 1;
        }

        plansCopy = v35;
        goto LABEL_24;
      }

LABEL_12:
    }

    v18 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v26 = 0;
  plansCopy = v35;
  indexCopy = v34;
LABEL_26:

LABEL_27:
  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (id)getAccountMemberTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  plansCopy = plans;
  array = [MEMORY[0x277CBEB18] array];
  if (nameCopy)
  {
    plans = [nameCopy plans];
    v8 = [plans count];

    if (v8)
    {
      v27 = nameCopy;
      plans2 = [nameCopy plans];
      v10 = [plans2 objectAtIndexedSubscript:0];
      carrierName = [v10 carrierName];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = plansCopy;
      v12 = plansCopy;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:{@"planItem", v26}];
            carrierName2 = [v18 carrierName];
            v20 = [carrierName caseInsensitiveCompare:carrierName2];

            if (!v20)
            {
              v21 = [v12 indexOfObject:v17];
              if ([v18 isAccountMemberTransferablePlan])
              {
                v22 = _TSLogDomain();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v34 = "+[TSFlowHelper getAccountMemberTransferablePlanWithSameCarrierName:transferablePlans:]";
                  _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "Account member has a transferrable plan with a SODA tether @%s", buf, 0xCu);
                }

                v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
                [array addObject:v23];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v14);
      }

      plansCopy = v26;
      nameCopy = v27;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return array;
}

+ (int64_t)_slotForPlanItem:(id)item
{
  uuid = [item uuid];
  integerValue = [uuid integerValue];

  if (integerValue >= 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)sortIndexesInDescending:(id)descending
{
  descendingCopy = descending;
  [descendingCopy sortUsingComparator:&__block_literal_global_33];
  v4 = [descendingCopy copy];

  return v4;
}

uint64_t __40__TSFlowHelper_sortIndexesInDescending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

+ (void)showBluetoothOffAlertForCrossPlatformTransfer:(id)transfer withCloseHandler:(id)handler
{
  transferCopy = transfer;
  v5 = MEMORY[0x277D75110];
  v6 = MEMORY[0x277CCA8D8];
  handlerCopy = handler;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF" value:&stru_28753DF48 table:@"Localizable"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_MSG" value:&stru_28753DF48 table:@"Localizable"];
  v12 = [v5 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_SETTINGS_ACTION" value:&stru_28753DF48 table:@"Localizable"];
  v16 = [v13 actionWithTitle:v15 style:0 handler:&__block_literal_global_55];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_CLOSE_ACTION" value:&stru_28753DF48 table:@"Localizable"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:handlerCopy];

  [v12 addAction:v16];
  [v12 addAction:v20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__TSFlowHelper_showBluetoothOffAlertForCrossPlatformTransfer_withCloseHandler___block_invoke_2;
  block[3] = &unk_279B44490;
  v25 = transferCopy;
  v26 = v12;
  v21 = v12;
  v22 = transferCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__TSFlowHelper_showBluetoothOffAlertForCrossPlatformTransfer_withCloseHandler___block_invoke()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Bluetooth"];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (void)unregisteredSelectedPlanItems:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSFlowHelper unregisteredSelectedPlanItems:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)registerIMessageWithPlanItems:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSFlowHelper registerIMessageWithPlanItems:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end