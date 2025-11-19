@interface OS_cryptex_bundle
- (void)dealloc;
@end

@implementation OS_cryptex_bundle

- (void)dealloc
{
  _cryptex_bundle_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_bundle;
  [(OS_cryptex_bundle *)&v3 dealloc];
}

@end