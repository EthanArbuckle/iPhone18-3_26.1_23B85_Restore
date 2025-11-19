@interface WCAccountStoreBridge
+ (id)account;
@end

@implementation WCAccountStoreBridge

+ (id)account
{
  v2 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

@end