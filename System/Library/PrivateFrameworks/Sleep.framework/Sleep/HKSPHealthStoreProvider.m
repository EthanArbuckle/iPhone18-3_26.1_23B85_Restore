@interface HKSPHealthStoreProvider
+ (id)_initializedLocalDeviceHealthStore;
- (HKSPHealthStoreProvider)initWithLocalDeviceHealthStore;
- (HKSPHealthStoreProvider)initWithSleepHealthStore:(id)a3 healthStore:(id)a4;
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
  v3 = [objc_opt_class() _initializedLocalDeviceHealthStore];
  v4 = [objc_alloc(MEMORY[0x277D626B0]) initWithHealthStore:v3];
  v5 = [(HKSPHealthStoreProvider *)self initWithSleepHealthStore:v4 healthStore:v3];

  return v5;
}

- (HKSPHealthStoreProvider)initWithSleepHealthStore:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HKSPHealthStoreProvider;
  v9 = [(HKSPHealthStoreProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepHealthStore, a3);
    objc_storeStrong(&v10->_healthStore, a4);
    v11 = v10;
  }

  return v10;
}

@end