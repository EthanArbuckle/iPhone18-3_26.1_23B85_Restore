@interface HVProactiveHarvestingSystem
+ (void)startWithConfigurationAsset:(id)asset;
@end

@implementation HVProactiveHarvestingSystem

+ (void)startWithConfigurationAsset:(id)asset
{
  assetCopy = asset;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVProactiveHarvestingSystem: start", v6, 2u);
  }

  if (assetCopy)
  {
    [HVContentAdmission registerConfigurationAsset:assetCopy];
  }

  +[HVScheduledTasks registerScheduledTasks];
  +[HVXPCInternalServerDelegate start];
  +[HVXPCSysdiagnoseServerDelegate start];
  v5 = +[HVDonationReceiver defaultReceiver];
}

@end