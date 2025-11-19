@interface OS_cryptex_core
- (void)dealloc;
@end

@implementation OS_cryptex_core

- (void)dealloc
{
  _cryptex_core_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_core;
  [(OS_cryptex_core *)&v3 dealloc];
}

@end