@interface OS_MobileGestalt
- (OS_MobileGestalt)init;
@end

@implementation OS_MobileGestalt

- (OS_MobileGestalt)init
{
  v6.receiver = self;
  v6.super_class = OS_MobileGestalt;
  v2 = [(OS_MobileGestalt *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("MobileGestalt", "Wrapper");
    v2->_log = v3;

    overrides = v2->_overrides;
    v2->_overrides = 0;
  }

  return v2;
}

@end