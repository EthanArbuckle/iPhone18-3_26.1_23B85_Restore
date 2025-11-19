@interface STPresetsClient
- (void)currentConfigurationForUserID:(id)a3 completionHandler:(id)a4;
@end

@implementation STPresetsClient

- (void)currentConfigurationForUserID:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  (*(a4 + 2))(v5, v6, 0);
}

@end