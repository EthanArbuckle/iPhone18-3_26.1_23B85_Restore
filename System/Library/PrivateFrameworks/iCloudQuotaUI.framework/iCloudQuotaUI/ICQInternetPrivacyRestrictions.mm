@interface ICQInternetPrivacyRestrictions
+ (BOOL)isCloudPrivateRelayAllowed;
@end

@implementation ICQInternetPrivacyRestrictions

+ (BOOL)isCloudPrivateRelayAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isCloudPrivateRelayAllowed = [mEMORY[0x277D262A0] isCloudPrivateRelayAllowed];

  if ((isCloudPrivateRelayAllowed & 1) == 0)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Privacy proxy prohibited by profile", v6, 2u);
    }
  }

  return isCloudPrivateRelayAllowed;
}

@end