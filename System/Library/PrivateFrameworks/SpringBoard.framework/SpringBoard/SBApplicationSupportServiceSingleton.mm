@interface SBApplicationSupportServiceSingleton
+ (void)startService;
@end

@implementation SBApplicationSupportServiceSingleton

+ (void)startService
{
  if (startService_onceToken_0 != -1)
  {
    +[SBApplicationSupportServiceSingleton startService];
  }
}

void __52__SBApplicationSupportServiceSingleton_startService__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationSupportServiceDelegate);
  v1 = __delegate_0;
  __delegate_0 = v0;
}

@end