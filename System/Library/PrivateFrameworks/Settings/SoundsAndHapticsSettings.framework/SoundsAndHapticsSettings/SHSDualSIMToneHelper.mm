@interface SHSDualSIMToneHelper
+ (BOOL)hasMultipleCTSubscriptionsInUse;
+ (BOOL)shouldShowSIMBasedToneCustomizationForAlertType:(int64_t)a3;
+ (id)fetchCTSubscriptionsInUse;
+ (id)fetchLocalizedPhoneNumberForContext:(id)a3;
+ (id)fetchShortLabelForContext:(id)a3;
+ (void)fetchCTSubscriptionsInUse;
@end

@implementation SHSDualSIMToneHelper

+ (id)fetchCTSubscriptionsInUse
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = _SHSCTClient();
  v20 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v20];
  v4 = v20;

  v5 = SHSLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchCTSubscriptionsInUse];
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 subscriptionsInUse];
      *buf = 136315394;
      v23 = "+[SHSDualSIMToneHelper fetchCTSubscriptionsInUse]";
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_265896000, v6, OS_LOG_TYPE_DEFAULT, "%s: Received subscriptionsInUse: %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v3 subscriptionsInUse];
    v9 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (([v13 isSimHidden] & 1) == 0 && (objc_msgSend(v13, "isSimDataOnly") & 1) == 0)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)fetchShortLabelForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _SHSCTClient();
  v11 = 0;
  v5 = [v4 getShortLabel:v3 error:&v11];
  v6 = v11;

  v7 = 0;
  if (!v6)
  {
    v8 = SHSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "+[SHSDualSIMToneHelper fetchShortLabelForContext:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s: Received shortLabel: %@ for Context: %@", buf, 0x20u);
    }

    v7 = v5;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)fetchLocalizedPhoneNumberForContext:(id)a3
{
  v3 = a3;
  v4 = _SHSCTClient();
  v25 = 0;
  v5 = [v4 getPhoneNumber:v3 error:&v25];
  v6 = v25;

  if (v5)
  {
    v7 = [v5 number];
    if (!v7)
    {
      v8 = SHSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
      }

      v9 = &stru_28772CD00;
      goto LABEL_26;
    }
  }

  else
  {
    v10 = SHSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
    }

    v7 = 0;
  }

  v8 = v7;
  v11 = _SHSCTClient();
  v24 = 0;
  v12 = [v11 getMobileSubscriberHomeCountryList:v3 error:&v24];
  v13 = v24;

  v14 = &stru_28772CD00;
  if (!v13)
  {
    v14 = [v12 firstObject];
  }

  v15 = *MEMORY[0x277CBECE8];
  v16 = CFPhoneNumberCreate();
  if (v16)
  {
    v17 = v16;
    String = CFPhoneNumberCreateString();

    if (!String)
    {
      v19 = SHSLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
      }
    }

    CFRelease(v17);
  }

  else
  {
    v20 = SHSLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:];
    }

    String = v8;
  }

  v21 = [(__CFString *)String length];
  if (v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = &stru_28772CD00;
  }

  if (v21)
  {
    v22 = String;
  }

  v9 = v22;

LABEL_26:

  return v9;
}

+ (BOOL)shouldShowSIMBasedToneCustomizationForAlertType:(int64_t)a3
{
  v4 = [a1 alertTypeSupportsSIMBasedToneCustomization:a3];
  if (v4)
  {

    LOBYTE(v4) = [a1 hasMultipleCTSubscriptionsInUse];
  }

  return v4;
}

+ (BOOL)hasMultipleCTSubscriptionsInUse
{
  v2 = [a1 fetchCTSubscriptionsInUse];
  v3 = [v2 count] > 1;

  return v3;
}

+ (void)fetchCTSubscriptionsInUse
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchLocalizedPhoneNumberForContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchLocalizedPhoneNumberForContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchLocalizedPhoneNumberForContext:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)fetchLocalizedPhoneNumberForContext:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end