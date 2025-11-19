@interface OS_cryptex_su_preboot_bundle
- (void)dealloc;
@end

@implementation OS_cryptex_su_preboot_bundle

- (void)dealloc
{
  _cryptex_su_preboot_bundle_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_su_preboot_bundle;
  [(OS_cryptex_su_preboot_bundle *)&v3 dealloc];
}

@end