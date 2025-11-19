@interface OS_cryptex_base
- (void)dealloc;
@end

@implementation OS_cryptex_base

- (void)dealloc
{
  _cryptex_base_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_base;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end