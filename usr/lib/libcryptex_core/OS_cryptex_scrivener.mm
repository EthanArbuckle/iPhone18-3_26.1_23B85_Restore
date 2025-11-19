@interface OS_cryptex_scrivener
- (void)dealloc;
@end

@implementation OS_cryptex_scrivener

- (void)dealloc
{
  _cryptex_scrivener_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_scrivener;
  [(OS_cryptex_base *)&v3 dealloc];
}

@end