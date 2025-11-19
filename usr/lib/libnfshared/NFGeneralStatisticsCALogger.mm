@interface NFGeneralStatisticsCALogger
+ (void)_resetDailyTagStatisticToDefaults;
+ (void)_resetGeneralDeviceStatisticToDefaults;
+ (void)_setupInitValuesForGeneralTransactionStatistics;
+ (void)postAnalyticsGeneralTransactionStatistics;
+ (void)postDailyTagStatistics;
+ (void)postGeneralDeviceStatistics;
+ (void)updateAnalyticsGeneralTransactionStatistics:(id)a3;
+ (void)updateDailyTagStatistic:(id)a3;
+ (void)updateGeneralDeviceStatistic:(id)a3;
@end

@implementation NFGeneralStatisticsCALogger

+ (void)postAnalyticsGeneralTransactionStatistics
{
  v4 = objc_msgSend_sharedCALogger(NFCALogger, a2, v2);
  v19 = objc_msgSend_getCALoggerUserDefaults(v4, v5, v6);

  v8 = objc_msgSend_objectForKey_(v19, v7, @"com.apple.nfcd.generalTransactionStatistic");
  v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
  objc_msgSend_postCAEventFor_eventInput_(v11, v12, @"com.apple.nfcd.generalTransactionStatistic", v8);

  v15 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
  objc_msgSend_postCAEventFor_eventInput_(v15, v16, @"com.apple.nfcd.generalTransactionStatisticDim", v8);

  objc_msgSend__setupInitValuesForGeneralTransactionStatistics(a1, v17, v18);
}

+ (void)updateAnalyticsGeneralTransactionStatistics:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = objc_msgSend_sharedCALogger(NFCALogger, v5, v6);
    v10 = objc_msgSend_getCALoggerUserDefaults(v7, v8, v9);

    v12 = objc_msgSend_objectForKey_(v10, v11, @"com.apple.nfcd.generalTransactionStatistic");
    v15 = v12;
    if (v12)
    {
      v16 = objc_msgSend_mutableCopy(v12, v13, v14);
    }

    else
    {
      objc_msgSend__setupInitValuesForGeneralTransactionStatistics(a1, v13, v14);
      v18 = objc_msgSend_objectForKey_(v10, v17, @"com.apple.nfcd.generalTransactionStatistic");
      v16 = objc_msgSend_mutableCopy(v18, v19, v20);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22EEDC284;
    v24[3] = &unk_278872C50;
    v25 = v16;
    v21 = v16;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v22, v24);

    objc_msgSend_setObject_forKey_(v10, v23, v21, @"com.apple.nfcd.generalTransactionStatistic");
  }
}

+ (void)_setupInitValuesForGeneralTransactionStatistics
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2843B4DA0, v3, &v16, v20, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(&unk_2843B4DA0);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v2, v5, &unk_2843B4C50, *(*(&v16 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2843B4DA0, v5, &v16, v20, 16);
    }

    while (v7);
  }

  v10 = objc_msgSend_sharedCALogger(NFCALogger, v5, v6);
  v13 = objc_msgSend_getCALoggerUserDefaults(v10, v11, v12);

  objc_msgSend_setObject_forKey_(v13, v14, v2, @"com.apple.nfcd.generalTransactionStatistic");
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)updateGeneralDeviceStatistic:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_sharedCALogger(NFCALogger, v4, v5);
    v10 = objc_msgSend_getCALoggerUserDefaults(v7, v8, v9);

    if (v10)
    {
      v12 = objc_msgSend_objectForKey_(v10, v11, @"com.apple.nfcd.generalDeviceStatistic");
      v15 = v12;
      if (v12)
      {
        v16 = objc_msgSend_mutableCopy(v12, v13, v14);
      }

      else
      {
        objc_msgSend__resetGeneralDeviceStatisticToDefaults(a1, v13, v14);
        v18 = objc_msgSend_objectForKey_(v10, v17, @"com.apple.nfcd.generalDeviceStatistic");
        v16 = objc_msgSend_mutableCopy(v18, v19, v20);
      }

      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = sub_22EEDC694;
      v29 = &unk_278872C78;
      v21 = v16;
      v30 = v21;
      v31 = &v32;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v22, &v26);
      if (*(v33 + 24) == 1)
      {
        objc_msgSend_setObject_forKey_(v10, v23, v21, @"com.apple.nfcd.generalDeviceStatistic", v26, v27, v28, v29);
        objc_msgSend_synchronize(v10, v24, v25);
      }

      _Block_object_dispose(&v32, 8);
    }
  }
}

+ (void)postGeneralDeviceStatistics
{
  v4 = objc_msgSend_sharedCALogger(NFCALogger, a2, v2);
  v14 = objc_msgSend_getCALoggerUserDefaults(v4, v5, v6);

  v8 = v14;
  if (v14)
  {
    v11 = objc_msgSend_objectForKey_(v14, v7, @"com.apple.nfcd.generalDeviceStatistic");
    if (v11)
    {
      v12 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
      objc_msgSend_postCAEventFor_eventInput_(v12, v13, @"com.apple.nfcd.generalDeviceStatistic", v11);
    }

    objc_msgSend__resetGeneralDeviceStatisticToDefaults(a1, v9, v10);

    v8 = v14;
  }
}

+ (void)_resetGeneralDeviceStatisticToDefaults
{
  v3 = objc_msgSend_sharedCALogger(NFCALogger, a2, v2);
  v26 = objc_msgSend_getCALoggerUserDefaults(v3, v4, v5);

  if (v26)
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x277CBEC28];
    objc_msgSend_setValue_forKey_(v6, v8, MEMORY[0x277CBEC28], @"hasFelicaExpressTransactionEnable");
    objc_msgSend_setValue_forKey_(v6, v9, v7, @"hasAccessExpressTransactionEnable");
    objc_msgSend_setValue_forKey_(v6, v10, v7, @"hasGenericAExpressEnable");
    objc_msgSend_setValue_forKey_(v6, v11, v7, @"radioIsEnabled");
    objc_msgSend_setValue_forKey_(v6, v12, v7, @"hasAttackLogs");
    objc_msgSend_setValue_forKey_(v6, v13, v7, @"hasOverCurrentErrors");
    objc_msgSend_setValue_forKey_(v6, v14, &unk_2843B4C50, @"totalDynamicPackages");
    objc_msgSend_setValue_forKey_(v6, v15, &unk_2843B4C50, @"totalCardProvisioned");
    objc_msgSend_setValue_forKey_(v6, v16, &stru_2843AE380, @"currentProvisionedCards");
    objc_msgSend_setValue_forKey_(v6, v17, &unk_2843B4C50, @"totalPurpleTrustKeys");
    objc_msgSend_setValue_forKey_(v6, v18, &unk_2843B4C68, @"failForwardState");
    objc_msgSend_setValue_forKey_(v6, v19, &unk_2843B4C50, @"uaHomeEndpointCount");
    objc_msgSend_setValue_forKey_(v6, v20, &unk_2843B4C50, @"uaCorporateEndpointCount");
    objc_msgSend_setValue_forKey_(v6, v21, &unk_2843B4C50, @"alishaEndpointCount");
    objc_msgSend_setValue_forKey_(v6, v22, &unk_2843B4C50, @"aliroEndpointCount");
    objc_msgSend_setObject_forKey_(v26, v23, v6, @"com.apple.nfcd.generalDeviceStatistic");
    objc_msgSend_synchronize(v26, v24, v25);
  }
}

+ (void)updateDailyTagStatistic:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_sharedCALogger(NFCALogger, v4, v5);
    v10 = objc_msgSend_getCALoggerUserDefaults(v7, v8, v9);

    if (v10)
    {
      v12 = objc_msgSend_objectForKey_(v10, v11, @"com.apple.nfcd.dailyBackgroundTagReadingEvent");
      v15 = v12;
      if (v12)
      {
        v16 = objc_msgSend_mutableCopy(v12, v13, v14);
      }

      else
      {
        objc_msgSend__resetGeneralDeviceStatisticToDefaults(a1, v13, v14);
        v18 = objc_msgSend_objectForKey_(v10, v17, @"com.apple.nfcd.dailyBackgroundTagReadingEvent");
        v16 = objc_msgSend_mutableCopy(v18, v19, v20);
      }

      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = sub_22EEDCE74;
      v27 = &unk_278872C78;
      v21 = v16;
      v28 = v21;
      v29 = &v30;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v22, &v24);
      if (*(v31 + 24) == 1)
      {
        objc_msgSend_setObject_forKey_(v10, v23, v21, @"com.apple.nfcd.dailyBackgroundTagReadingEvent", v24, v25, v26, v27);
      }

      _Block_object_dispose(&v30, 8);
    }
  }
}

+ (void)postDailyTagStatistics
{
  v4 = objc_msgSend_sharedCALogger(NFCALogger, a2, v2);
  v14 = objc_msgSend_getCALoggerUserDefaults(v4, v5, v6);

  v8 = v14;
  if (v14)
  {
    v11 = objc_msgSend_objectForKey_(v14, v7, @"com.apple.nfcd.dailyBackgroundTagReadingEvent");
    if (v11)
    {
      v12 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
      objc_msgSend_postCAEventFor_eventInput_(v12, v13, @"com.apple.nfcd.dailyBackgroundTagReadingEvent", v11);
    }

    objc_msgSend__resetDailyTagStatisticToDefaults(a1, v9, v10);

    v8 = v14;
  }
}

+ (void)_resetDailyTagStatisticToDefaults
{
  v3 = objc_msgSend_sharedCALogger(NFCALogger, a2, v2);
  v14 = objc_msgSend_getCALoggerUserDefaults(v3, v4, v5);

  if (v14)
  {
    v6 = objc_opt_new();
    objc_msgSend_setValue_forKey_(v6, v7, &unk_2843B4C50, @"totalNotBackgroundTagsRead");
    objc_msgSend_setValue_forKey_(v6, v8, &unk_2843B4C50, @"totalNotNdefTagsRead");
    objc_msgSend_setValue_forKey_(v6, v9, &unk_2843B4C50, @"totalNoUrlTagsRead");
    objc_msgSend_setValue_forKey_(v6, v10, &unk_2843B4C50, @"totalOtherErrors");
    objc_msgSend_setValue_forKey_(v6, v11, &unk_2843B4C50, @"totalProhibitTimerErrors");
    objc_msgSend_setValue_forKey_(v6, v12, &unk_2843B4C50, @"totalSuccesfulBackgroundTagsRead");
    objc_msgSend_setObject_forKey_(v14, v13, v6, @"com.apple.nfcd.dailyBackgroundTagReadingEvent");
  }
}

@end