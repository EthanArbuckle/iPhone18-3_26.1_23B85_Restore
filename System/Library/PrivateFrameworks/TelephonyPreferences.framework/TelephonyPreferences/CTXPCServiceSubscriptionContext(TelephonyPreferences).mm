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
  telephonyClient = [objc_opt_class() telephonyClient];
  v11 = 0;
  v3 = [telephonyClient getMobileSubscriberHomeCountryList:self error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = TPSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Retreived ISO country codes %@ for %@.", buf, 0x16u);
    }

    firstObject = [v3 firstObject];
  }

  else
  {
    domain = [v4 domain];

    if (domain)
    {
      v8 = TPSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Retreiving ISO country codes failed with error %@ for %@.", buf, 0x16u);
      }
    }

    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)tps_localizedLabel
{
  label = [self label];
  if (!label)
  {
    label = [self tps_localizedPhoneNumber];
  }

  return label;
}

- (id)tps_localizedPhoneNumber
{
  v1 = *MEMORY[0x277CBECE8];
  phoneNumber = [self phoneNumber];
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
  telephonyClient = [objc_opt_class() telephonyClient];
  v9 = 0;
  v3 = [telephonyClient getShortLabel:self error:&v9];
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
      selfCopy = self;
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
  slotID = [self slotID];
  if (slotID == [v4 slotID])
  {
    labelID = [self labelID];
    labelID2 = [v4 labelID];
    v8 = labelID;
    v9 = labelID2;
    v10 = v9;
    if (v8 | v9)
    {
      if (!v9)
      {
        v14 = 0;
        uuid = v8;
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

    uuid = [self uuid];
    uuid2 = [v4 uuid];
    v14 = (uuid | uuid2) == 0;
    if (uuid2)
    {
      v14 = [uuid isEqual:uuid2];
    }

    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end