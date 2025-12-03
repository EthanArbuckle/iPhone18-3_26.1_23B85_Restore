@interface STPresetsClient
- (void)currentConfigurationForUserID:(id)d completionHandler:(id)handler;
@end

@implementation STPresetsClient

- (void)currentConfigurationForUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_new();
  (*(handler + 2))(handlerCopy, v6, 0);
}

@end