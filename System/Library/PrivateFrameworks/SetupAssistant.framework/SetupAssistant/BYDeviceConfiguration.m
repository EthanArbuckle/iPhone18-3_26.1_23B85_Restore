@interface BYDeviceConfiguration
+ (id)currentConfiguration;
- (BYDeviceConfiguration)init;
@end

@implementation BYDeviceConfiguration

- (BYDeviceConfiguration)init
{
  v6.receiver = self;
  v6.super_class = BYDeviceConfiguration;
  v2 = [(BYDeviceConfiguration *)&v6 init];
  if (v2)
  {
    v3 = MGCopyAnswer();

    v2->_productVersion = v3;
    v4 = MGCopyAnswer();

    v2->_buildVersion = v4;
  }

  return v2;
}

+ (id)currentConfiguration
{
  if (currentConfiguration_onceToken != -1)
  {
    +[BYDeviceConfiguration currentConfiguration];
  }

  v3 = currentConfiguration_configuration;

  return v3;
}

uint64_t __45__BYDeviceConfiguration_currentConfiguration__block_invoke()
{
  currentConfiguration_configuration = objc_alloc_init(BYDeviceConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

@end