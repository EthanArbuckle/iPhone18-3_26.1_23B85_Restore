@interface OS_cryptex_signing_service
- (void)dealloc;
@end

@implementation OS_cryptex_signing_service

- (void)dealloc
{
  _cryptex_signing_service_dealloc(self);
  v3.receiver = self;
  v3.super_class = OS_cryptex_signing_service;
  [(OS_cryptex_signing_service *)&v3 dealloc];
}

@end