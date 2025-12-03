@interface VKCGMAvailability
+ (BOOL)deviceIsEligibleForVI;
+ (BOOL)supportsVI;
+ (id)sharedListener;
- (VKCGMAvailability)init;
- (void)dealloc;
@end

@implementation VKCGMAvailability

+ (BOOL)supportsVI
{
  sharedListener = [self sharedListener];
  supportsVI = [sharedListener supportsVI];

  return supportsVI;
}

+ (BOOL)deviceIsEligibleForVI
{
  sharedListener = [self sharedListener];
  deviceIsEligibleForVI = [sharedListener deviceIsEligibleForVI];

  return deviceIsEligibleForVI;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.gms.availability.notification", 0);
  v4.receiver = self;
  v4.super_class = VKCGMAvailability;
  [(VKCGMAvailability *)&v4 dealloc];
}

- (VKCGMAvailability)init
{
  v6.receiver = self;
  v6.super_class = VKCGMAvailability;
  v2 = [(VKCGMAvailability *)&v6 init];
  if (v2)
  {
    v5 = 0;
    v2->_supportsVI = vk_deviceSupportsVisualIntelligenceWithIsEligible(&v5);
    v2->_deviceIsEligibleForVI = v5;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, VKCGenerativeModelsAvailabilityDidChange, @"com.apple.gms.availability.notification", 0, 0);
  }

  return v2;
}

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[VKCGMAvailability sharedListener];
  }

  v3 = sharedListener_result;

  return v3;
}

void __35__VKCGMAvailability_sharedListener__block_invoke()
{
  v0 = objc_alloc_init(VKCGMAvailability);
  v1 = sharedListener_result;
  sharedListener_result = v0;
}

@end