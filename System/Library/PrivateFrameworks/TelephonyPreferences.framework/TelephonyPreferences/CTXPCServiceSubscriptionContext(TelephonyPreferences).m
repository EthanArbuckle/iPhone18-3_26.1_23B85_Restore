@interface CTXPCServiceSubscriptionContext(TelephonyPreferences)
+ (id)telephonyClient;
- (id)tps_isoCountryCode;
- (id)tps_localizedLabel;
- (id)tps_localizedPhoneNumber;
- (id)tps_localizedShortLabel;
- (uint64_t)tps_isEquivalentToSubscriptionContext:()TelephonyPreferences;
@end

@implementation CTXPCServiceSubscriptionContext(TelephonyPreferences)

+ (id)telephonyClient
{
  if (telephonyClient_onceToken != -1)
  {
    +[CTXPCServiceSubscriptionContext(TelephonyPreferences) telephonyClient];
  }

  v1 = telephonyClient_telephonyClient;

  return v1;
}

- (id)tps_isoCountryCode
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() telephonyClient];
  v11 = 0;
  v3 = [v2 getMobileSubscriberHomeCountryList:a1 error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = TPSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Retreived ISO country codes %@ for %@.", buf, 0x16u);
    }

    v6 = [v3 firstObject];
  }

  else
  {
    v7 = [v4 domain];

    if (v7)
    {
      v8 = TPSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = a1;
        _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Retreiving ISO country codes failed with error %@ for %@.", buf, 0x16u);
      }
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)tps_localizedLabel
{
  v2 = [a1 label];
  if (!v2)
  {
    v2 = [a1 tps_localizedPhoneNumber];
  }

  return v2;
}

- (id)tps_localizedPhoneNumber
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = [a1 phoneNumber];
  v3 = CFPhoneNumberCreate();

  if (v3)
  {
    String = CFPhoneNumberCreateString();
    CFRelease(v3);
  }

  else
  {
    String = 0;
  }

  return String;
}

- (id)tps_localizedShortLabel
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() telephonyClient];
  v9 = 0;
  v3 = [v2 getShortLabel:a1 error:&v9];
  v4 = v9;

  v5 = 0;
  if (!v4)
  {
    v6 = TPSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "[CTXPCServiceSubscriptionContext(TelephonyPreferences) tps_localizedShortLabel]";
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%s: Received shortLabel: %@ for Context: %@", buf, 0x20u);
    }

    v5 = v3;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (uint64_t)tps_isEquivalentToSubscriptionContext:()TelephonyPreferences
{
  v4 = a3;
  v5 = [a1 slotID];
  if (v5 == [v4 slotID])
  {
    v6 = [a1 labelID];
    v7 = [v4 labelID];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 | v9)
    {
      if (!v9)
      {
        v14 = 0;
        v12 = v8;
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v11 = [v8 isEqualToString:v9];

      if (!v11)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    v12 = [a1 uuid];
    v13 = [v4 uuid];
    v14 = (v12 | v13) == 0;
    if (v13)
    {
      v14 = [v12 isEqual:v13];
    }

    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end