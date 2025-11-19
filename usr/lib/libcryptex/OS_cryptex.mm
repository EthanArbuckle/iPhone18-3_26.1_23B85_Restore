@interface OS_cryptex
- (void)dealloc;
@end

@implementation OS_cryptex

- (void)dealloc
{
  _cryptex_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex;
  [(OS_cryptex *)&v3 dealloc];
}

@end