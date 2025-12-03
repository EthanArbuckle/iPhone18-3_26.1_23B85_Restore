@interface WCAccountStoreBridge
+ (id)account;
@end

@implementation WCAccountStoreBridge

+ (id)account
{
  v2 = objc_alloc_init(MEMORY[0x1E6959A48]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

@end