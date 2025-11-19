@interface OS_cryptex_magister
- (void)dealloc;
@end

@implementation OS_cryptex_magister

- (void)dealloc
{
  _cryptex_magister_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_magister;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end