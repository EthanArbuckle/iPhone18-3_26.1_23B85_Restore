@interface OS_cryptex_attr
- (void)dealloc;
@end

@implementation OS_cryptex_attr

- (void)dealloc
{
  _cryptex_attr_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_attr;
  [(OS_cryptex_attr *)&v3 dealloc];
}

@end