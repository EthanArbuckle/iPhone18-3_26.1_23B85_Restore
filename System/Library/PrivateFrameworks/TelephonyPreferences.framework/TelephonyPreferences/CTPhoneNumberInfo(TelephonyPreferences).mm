@interface CTPhoneNumberInfo(TelephonyPreferences)
- (id)tps_localizedNumber;
- (id)tps_normalizedNumber;
@end

@implementation CTPhoneNumberInfo(TelephonyPreferences)

- (id)tps_localizedNumber
{
  v14 = *MEMORY[0x277D85DE8];
  number = [self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = active;
  v4 = 0;
  if (number && active)
  {
    v4 = TPSLocalizedPhoneNumberString(number, active);
  }

  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Telephone number was localized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)tps_normalizedNumber
{
  v14 = *MEMORY[0x277D85DE8];
  number = [self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v3 = active;
  v4 = 0;
  if (number && active)
  {
    v4 = TPSNormalizedPhoneNumberString(number, active);
  }

  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Telephone number was normalized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

@end