@interface TVAppAccountStoreObjC
+ (NSArray)accounts;
+ (NSString)storefront;
+ (id)activeOrLocalAccount;
+ (id)shared;
- (TVAppAccountStoreObjC)init;
@end

@implementation TVAppAccountStoreObjC

+ (id)activeOrLocalAccount
{
  v2 = objc_opt_self();
  ams_sharedAccountStore = [v2 ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  if (!ams_activeiTunesAccount)
  {
    ams_sharedAccountStore2 = [v2 ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore2 ams_localiTunesAccount];
  }

  return ams_activeiTunesAccount;
}

+ (id)shared
{
  ams_sharedAccountStore = [objc_opt_self() ams_sharedAccountStore];

  return ams_sharedAccountStore;
}

+ (NSString)storefront
{
  _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  if (v2)
  {
    v3 = sub_26CD3A59C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (NSArray)accounts
{
  ams_sharedAccountStore = [objc_opt_self() ams_sharedAccountStore];
  ams_iTunesAccounts = [ams_sharedAccountStore ams_iTunesAccounts];

  if (!ams_iTunesAccounts)
  {
    sub_26CC18080(0, &qword_2804BD818, 0x277CB8F30);
    sub_26CD3A7AC();
    v4 = sub_26CD3A79C();

    ams_iTunesAccounts = v4;
  }

  return ams_iTunesAccounts;
}

- (TVAppAccountStoreObjC)init
{
  v3.receiver = self;
  v3.super_class = TVAppAccountStoreObjC;
  return [(TVAppAccountStoreObjC *)&v3 init];
}

@end