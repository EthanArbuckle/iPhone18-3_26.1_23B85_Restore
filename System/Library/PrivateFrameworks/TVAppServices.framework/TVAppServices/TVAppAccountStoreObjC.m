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
  v3 = [v2 ams_sharedAccountStore];
  v4 = [v3 ams_activeiTunesAccount];

  if (!v4)
  {
    v5 = [v2 ams_sharedAccountStore];
    v4 = [v5 ams_localiTunesAccount];
  }

  return v4;
}

+ (id)shared
{
  v2 = [objc_opt_self() ams_sharedAccountStore];

  return v2;
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
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_iTunesAccounts];

  if (!v3)
  {
    sub_26CC18080(0, &qword_2804BD818, 0x277CB8F30);
    sub_26CD3A7AC();
    v4 = sub_26CD3A79C();

    v3 = v4;
  }

  return v3;
}

- (TVAppAccountStoreObjC)init
{
  v3.receiver = self;
  v3.super_class = TVAppAccountStoreObjC;
  return [(TVAppAccountStoreObjC *)&v3 init];
}

@end