@interface HKSPHealthStoreProvider
+ (id)_initializedLocalDeviceHealthStore;
- (HKSPHealthStoreProvider)initWithLocalDeviceHealthStore;
- (HKSPHealthStoreProvider)initWithSleepHealthStore:(id)store healthStore:(id)healthStore;
@end

@implementation HKSPHealthStoreProvider

+ (id)_initializedLocalDeviceHealthStore
{
  v2 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v2 setSourceBundleIdentifier:@"com.apple.private.health.localdevice"];
  [v2 resume];

  return v2;
}

- (HKSPHealthStoreProvider)initWithLocalDeviceHealthStore
{
  _initializedLocalDeviceHealthStore = [objc_opt_class() _initializedLocalDeviceHealthStore];
  v4 = [objc_alloc(MEMORY[0x277D626B0]) initWithHealthStore:_initializedLocalDeviceHealthStore];
  v5 = [(HKSPHealthStoreProvider *)self initWithSleepHealthStore:v4 healthStore:_initializedLocalDeviceHealthStore];

  return v5;
}

- (HKSPHealthStoreProvider)initWithSleepHealthStore:(id)store healthStore:(id)healthStore
{
  storeCopy = store;
  healthStoreCopy = healthStore;
  v13.receiver = self;
  v13.super_class = HKSPHealthStoreProvider;
  v9 = [(HKSPHealthStoreProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepHealthStore, store);
    objc_storeStrong(&v10->_healthStore, healthStore);
    v11 = v10;
  }

  return v10;
}

@end