@interface PLBatteryUINotificationService
+ (void)load;
- (id)handleUrsaNotificationRequest:(id)request;
- (id)thermallyLimitedChargingEngagedContent;
- (id)thermallyLimitedChargingEngagedRequest;
- (id)ursaBaseContent;
- (id)ursaBootargContent:(id)content;
- (id)ursaRadarContent:(id)content;
- (id)ursaTTRContent:(id)content;
- (void)initOperatorDependancies;
- (void)initializeUrsaNotifications;
- (void)removeTLCNotification;
- (void)removeUrsaNotifications;
- (void)surfaceNotification;
- (void)thermallyLimitedChargingEngagedContent;
- (void)thermallyLimitedChargingEngagedRequest;
@end

@implementation PLBatteryUINotificationService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryUINotificationService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)initOperatorDependancies
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 request];
  v7 = [v6 content];
  v8 = [v7 categoryIdentifier];
  v9 = [v8 containsString:@"TLC"];

  if (v9)
  {
    v10 = [v12 request];
    v11 = [v10 identifier];
    [*(a1 + 32) setTlcNotificationIdentifier:v11];

    *a4 = 1;
  }
}

id __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPausedCharging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_1();
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v6)
  {
    v9 = [v6 objectForKey:@"ShowTLCNotification"];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerlog.proactivenotifications"];
      v12 = *(a1 + 32);
      v11 = (a1 + 32);
      [v10 setDelegate:v12];
      [v10 setWantsNotificationResponsesDelivered];
      [*v11 setUserNotificationCenter:v10];
      v13 = PLLogPausedCharging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_2();
      }

      v14 = [v6 objectForKeyedSubscript:@"ShowTLCNotification"];
      v15 = [v14 intValue];

      if (v15 == 1)
      {
        AnalyticsSendEventLazy();
        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CBEAA8] date];
        v18 = [v16 stringWithFormat:@"%@-%@", @"TLC", v17];
        [*v11 setTlcNotificationIdentifier:v18];

        v19 = PLLogPausedCharging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_6(v11);
        }

        [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TLCNotificationState"];
        [*v11 surfaceNotification];
        v20 = PLLogPausedCharging();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_7();
        }
      }

      else
      {
        v21 = [v6 objectForKeyedSubscript:@"ShowTLCNotification"];
        v22 = [v21 intValue];

        if (v22)
        {
          v23 = PLLogPausedCharging();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_3();
          }

          goto LABEL_23;
        }

        AnalyticsSendEventLazy();
        v24 = PLLogPausedCharging();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_4();
        }

        [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TLCNotificationState"];
        [*v11 removeTLCNotification];
        v20 = PLLogPausedCharging();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_5();
        }
      }

      v23 = PLLogPausedCharging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_8();
      }

LABEL_23:

      goto LABEL_24;
    }
  }

  v10 = PLLogPausedCharging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_9();
  }

LABEL_24:

  return v8;
}

- (void)surfaceNotification
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLBatteryUINotificationService_surfaceNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLLogPausedCharging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__PLBatteryUINotificationService_surfaceNotification__block_invoke_cold_1(v3, a1);
    }
  }

  else
  {
    AnalyticsSendEventLazy();
  }
}

- (id)thermallyLimitedChargingEngagedContent
{
  v2 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
  v3 = PLLogPausedCharging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUINotificationService thermallyLimitedChargingEngagedContent];
  }

  firstObject = [v2 firstObject];
  if (firstObject)
  {
    v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [date dateByAddingTimeInterval:86400.0];
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.powerlog.proactivenotifications.bundle"];
    v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
    if (v9)
    {
      [MEMORY[0x277D3F208] isiPad];
      [v9 _cfBundle];
      v10 = CFBundleCopyLocalizedStringForLocalization();
      [v9 _cfBundle];
      v11 = CFBundleCopyLocalizedStringForLocalization();
      v12 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v10 arguments:0];
      [v5 setTitle:v12];

      v13 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v11 arguments:0];
      [v5 setBody:v13];

      [v5 setCategoryIdentifier:@"TLC"];
      [v5 setShouldIgnoreDowntime:1];
      [v5 setShouldIgnoreDoNotDisturb:1];
      [v5 setShouldHideDate:1];
      [v5 setShouldSuppressScreenLightUp:1];
      v14 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.fill"];
      [v5 setIcon:v14];

      v15 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
      [v5 setDefaultActionURL:v15];

      [v5 setExpirationDate:v7];
      v16 = PLLogPausedCharging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUINotificationService thermallyLimitedChargingEngagedContent];
      }

      v17 = v5;
    }

    else
    {
      v10 = PLLogPausedCharging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService thermallyLimitedChargingEngagedContent];
      }

      v17 = 0;
    }
  }

  else
  {
    v5 = PLLogPausedCharging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUINotificationService thermallyLimitedChargingEngagedContent];
    }

    v17 = 0;
  }

  return v17;
}

- (id)thermallyLimitedChargingEngagedRequest
{
  thermallyLimitedChargingEngagedContent = [(PLBatteryUINotificationService *)self thermallyLimitedChargingEngagedContent];
  if (thermallyLimitedChargingEngagedContent)
  {
    v4 = MEMORY[0x277CE1FC0];
    tlcNotificationIdentifier = [(PLBatteryUINotificationService *)self tlcNotificationIdentifier];
    v6 = [v4 requestWithIdentifier:tlcNotificationIdentifier content:thermallyLimitedChargingEngagedContent trigger:0];

    [v6 setDestinations:2];
    v7 = PLLogPausedCharging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUINotificationService thermallyLimitedChargingEngagedRequest];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTLCNotification
{
  v9 = *MEMORY[0x277D85DE8];
  userNotificationCenter = [self userNotificationCenter];
  deliveredNotifications = [userNotificationCenter deliveredNotifications];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initializeUrsaNotifications
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
    {
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:*MEMORY[0x277D3F070]];
      [(PLBatteryUINotificationService *)self setHpdConfig:v3];

      v4 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerlog.proactivenotifications"];
      [v4 setDelegate:self];
      [v4 setWantsNotificationResponsesDelivered];
      [(PLBatteryUINotificationService *)self setUrsaNotificationCenter:v4];
      v5 = objc_alloc(MEMORY[0x277D3F278]);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __61__PLBatteryUINotificationService_initializeUrsaNotifications__block_invoke;
      v7[3] = &unk_279A5BEC8;
      v7[4] = self;
      v6 = [v5 initWithOperator:self withRegistration:&unk_28714A9F8 withBlock:v7];
      [(PLBatteryUINotificationService *)self setUrsaQueryResponder:v6];
    }
  }
}

- (id)handleUrsaNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = PLLogUrsaNotification();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUINotificationService handleUrsaNotificationRequest:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!requestCopy)
  {
    v8 = @"invalid payload";
    v9 = @"error";
    goto LABEL_7;
  }

  v7 = [requestCopy objectForKeyedSubscript:@"clear"];

  if (v7)
  {
    [(PLBatteryUINotificationService *)self removeUrsaNotifications];
    v8 = MEMORY[0x277CBEC38];
    v9 = @"UrsaNotificationState";
LABEL_7:
    [v6 setObject:v8 forKeyedSubscript:v9];
    v10 = v6;
    goto LABEL_19;
  }

  v11 = [requestCopy objectForKeyedSubscript:@"admit"];

  if (v11)
  {
    v12 = [(PLBatteryUINotificationService *)self ursaTTRContent:requestCopy];
  }

  else
  {
    v13 = [requestCopy objectForKeyedSubscript:@"radar"];

    if (v13)
    {
      v12 = [(PLBatteryUINotificationService *)self ursaRadarContent:requestCopy];
    }

    else
    {
      v14 = [requestCopy objectForKeyedSubscript:@"bootarg"];

      if (!v14)
      {
LABEL_17:
        v23 = 0;
        goto LABEL_18;
      }

      v12 = [(PLBatteryUINotificationService *)self ursaBootargContent:requestCopy];
    }
  }

  v14 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  categoryIdentifier = [v12 categoryIdentifier];

  if (!categoryIdentifier)
  {
    goto LABEL_17;
  }

  categoryIdentifier2 = [v14 categoryIdentifier];
  v17 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [v17 stringWithFormat:@"%@-%@", categoryIdentifier2, date];

  v20 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v19 content:v14 trigger:0];
  [v20 setDestinations:7];
  ursaNotificationCenter = [(PLBatteryUINotificationService *)self ursaNotificationCenter];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__PLBatteryUINotificationService_handleUrsaNotificationRequest___block_invoke;
  v27[3] = &unk_279A5E9E8;
  v28 = v20;
  v22 = v20;
  [ursaNotificationCenter addNotificationRequest:v22 withCompletionHandler:v27];

  v23 = 1;
LABEL_18:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  [v6 setObject:v24 forKeyedSubscript:@"UrsaNotificationState"];

  v25 = v6;
LABEL_19:

  return v6;
}

void __64__PLBatteryUINotificationService_handleUrsaNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogUrsaNotification();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__PLBatteryUINotificationService_handleUrsaNotificationRequest___block_invoke_cold_1(v3, a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEFAULT, "posted notification %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)ursaBaseContent
{
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v2 setCategoryIdentifier:@"Ursa"];
  [v2 setFooter:@"Internal Only"];
  v3 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.shield.fill"];
  [v2 setIcon:v3];

  v4 = MEMORY[0x277CBEAA8];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 nearestMidnightAfterDate:date];

  [v2 setExpirationDate:v6];
  [v2 setShouldIgnoreDowntime:1];
  [v2 setShouldIgnoreDoNotDisturb:1];
  [v2 setShouldSuppressScreenLightUp:1];

  return v2;
}

- (id)ursaTTRContent:(id)content
{
  contentCopy = content;
  v5 = [contentCopy objectForKeyedSubscript:@"process"];
  if (v5)
  {
    v6 = [contentCopy objectForKeyedSubscript:@"impact"];

    if (v6)
    {
      v7 = [contentCopy objectForKeyedSubscript:@"impact"];
      intValue = [v7 intValue];

      if ((intValue - 1) > 0x63)
      {
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", intValue];
      }
    }

    hpdConfig = [(PLBatteryUINotificationService *)self hpdConfig];
    v11 = [hpdConfig objectForKeyedSubscript:@"ursa"];
    v12 = [v11 objectForKeyedSubscript:@"powerExceptions"];

    if (!v12)
    {
      v13 = PLLogUrsaNotification();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService ursaTTRContent:];
      }

      ursaBaseContent = 0;
      goto LABEL_30;
    }

    v13 = [v12 objectForKeyedSubscript:@"alert"];
    v14 = [v12 objectForKeyedSubscript:@"radar"];
    v15 = v14;
    if (v13 && v14)
    {
      if ([v14 count])
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary addEntriesFromDictionary:v15];
        v17 = +[PLUtilities buildVersion];
        v18 = [PLUrsaUtilities createMetadataFile:v5 buildVersion:v17];

        date = [contentCopy objectForKeyedSubscript:@"timestamp"];
        if (!date)
        {
          v20 = v18;
          v21 = PLLogUrsaNotification();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [PLBatteryUINotificationService ursaTTRContent:];
          }

          date = [MEMORY[0x277CBEAA8] date];
          v18 = v20;
        }

        v29 = date;
        v30 = v18;
        v22 = [PLUrsaUtilities generateTTRURLWithRadarParams:dictionary procName:v5 violationTime:date metadataPath:v18];
        ursaBaseContent = [(PLBatteryUINotificationService *)self ursaBaseContent];
        v28 = v22;
        [ursaBaseContent setDefaultActionURL:v22];
        v23 = [v13 objectForKeyedSubscript:@"header"];
        [ursaBaseContent setTitle:v23];

        if (v6)
        {
          v24 = [v13 objectForKeyedSubscript:@"messageWithDrain"];
          v25 = [v24 stringByReplacingOccurrencesOfString:@"$percent" withString:v6];
        }

        else
        {
          v25 = [v13 objectForKeyedSubscript:@"messageNoDrain"];
        }

        v26 = [v25 stringByReplacingOccurrencesOfString:@"$proc" withString:v5];
        [ursaBaseContent setBody:v26];

        goto LABEL_29;
      }

      dictionary = PLLogUrsaNotification();
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService ursaTTRContent:];
      }
    }

    else
    {
      dictionary = PLLogUrsaNotification();
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService ursaTTRContent:];
      }
    }

    ursaBaseContent = 0;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v6 = PLLogUrsaNotification();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PLBatteryUINotificationService ursaTTRContent:];
  }

  ursaBaseContent = 0;
LABEL_31:

  return ursaBaseContent;
}

- (id)ursaRadarContent:(id)content
{
  v22 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v5 = PLLogUrsaNotification();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = contentCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "creating radar for %@", buf, 0xCu);
  }

  v6 = [contentCopy objectForKeyedSubscript:@"radar"];
  intValue = [v6 intValue];

  if (intValue < 1)
  {
    v16 = 0;
    goto LABEL_16;
  }

  v8 = [contentCopy objectForKeyedSubscript:@"title"];
  v9 = [contentCopy objectForKeyedSubscript:@"message"];
  v10 = v9;
  if (!v8 || !v9)
  {
    ursaBaseContent = PLLogUrsaNotification();
    if (os_log_type_enabled(ursaBaseContent, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUINotificationService ursaRadarContent:];
    }

    v16 = 0;
    goto LABEL_15;
  }

  ursaBaseContent = [(PLBatteryUINotificationService *)self ursaBaseContent];
  [ursaBaseContent setTitle:v8];
  [ursaBaseContent setBody:v10];
  v12 = [contentCopy objectForKeyedSubscript:@"action"];
  v13 = v12;
  if (v12 && ![v12 isEqualToString:@"livability"])
  {
    if (![v13 isEqualToString:@"softwareUpdate"])
    {
      v19 = PLLogUrsaNotification();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService ursaRadarContent:];
      }

      v16 = 0;
      goto LABEL_10;
    }

    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK"];
    [ursaBaseContent setDefaultActionURL:v14];
  }

  else
  {
    v14 = [@"livability://" stringByAppendingFormat:@"%i", intValue];
    v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    [ursaBaseContent setDefaultActionURL:v15];
  }

  v16 = ursaBaseContent;
LABEL_10:

LABEL_15:
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)ursaBootargContent:(id)content
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [content objectForKeyedSubscript:@"bootarg"];
  if (v4)
  {
    hpdConfig = [(PLBatteryUINotificationService *)self hpdConfig];
    v6 = [hpdConfig objectForKeyedSubscript:@"ursa"];
    v7 = [v6 objectForKeyedSubscript:@"bootargs"];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:@"title"];
      v10 = [v8 objectForKeyedSubscript:@"message"];
      v11 = [v10 stringByReplacingOccurrencesOfString:@"\\r" withString:@"\r"];

      if (v9 && v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"associated"];
        hpdConfig2 = [(PLBatteryUINotificationService *)self hpdConfig];
        v14 = [hpdConfig2 objectForKeyedSubscript:@"ursa"];
        v15 = [v14 objectForKeyedSubscript:@"bootargsURL"];

        if (v15)
        {
          array = [MEMORY[0x277CBEB18] array];
          [array addObject:v4];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __53__PLBatteryUINotificationService_ursaBootargContent___block_invoke;
          v27[3] = &unk_279A5C3A8;
          v17 = array;
          v28 = v17;
          [v12 enumerateObjectsUsingBlock:v27];
          v18 = [v17 componentsJoinedByString:@"&"];
          v19 = [v15 stringByAppendingString:v18];

          v26 = v19;
          v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
          v21 = PLLogUrsaNotification();
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v20;
              _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEFAULT, "url configured %@", buf, 0xCu);
            }

            ursaBaseContent = [(PLBatteryUINotificationService *)self ursaBaseContent];
            [ursaBaseContent setTitle:v9];
            [ursaBaseContent setBody:v11];
            [ursaBaseContent setDefaultActionURL:v20];
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [PLBatteryUINotificationService ursaBootargContent:];
            }

            ursaBaseContent = 0;
          }
        }

        else
        {
          v17 = PLLogUrsaNotification();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [PLBatteryUINotificationService ursaBootargContent:?];
          }

          ursaBaseContent = 0;
        }
      }

      else
      {
        v12 = PLLogUrsaNotification();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryUINotificationService ursaBootargContent:];
        }

        ursaBaseContent = 0;
      }
    }

    else
    {
      v9 = PLLogUrsaNotification();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUINotificationService ursaBootargContent:];
      }

      ursaBaseContent = 0;
    }
  }

  else
  {
    ursaBaseContent = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return ursaBaseContent;
}

- (void)removeUrsaNotifications
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_6(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 tlcNotificationIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_3(&dword_25EE51000, v2, v3, "TLC: Request sent to surface TLC notification: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__PLBatteryUINotificationService_initOperatorDependancies__block_invoke_37_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PLBatteryUINotificationService_surfaceNotification__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [*(a2 + 32) identifier];
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)thermallyLimitedChargingEngagedContent
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)thermallyLimitedChargingEngagedRequest
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleUrsaNotificationRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__PLBatteryUINotificationService_handleUrsaNotificationRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, v3, v4, "error %@ while posting %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)ursaTTRContent:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, v0, v1, "invalid config %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)ursaRadarContent:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "invalid action: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)ursaRadarContent:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "invalid payload %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)ursaBootargContent:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, v0, v1, "invalid url from %@ and %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)ursaBootargContent:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 hpdConfig];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ursaBootargContent:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_4(&dword_25EE51000, v0, v1, "invalid config for %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)ursaBootargContent:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  v3 = 0;
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "invalid config for %@: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end