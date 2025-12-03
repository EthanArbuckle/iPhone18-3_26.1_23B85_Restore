@interface HKRPOxygenSaturationAvailability
+ (BOOL)isCountryAllowed:(id)allowed;
+ (NSSet)allowedCountryCodesISO3166;
- (BOOL)isDeviceSupported;
- (HKRPOxygenSaturationAvailability)init;
- (HKRPOxygenSaturationAvailability)initWithDataSource:(id)source;
- (HKRPOxygenSaturationAvailability)initWithDevice:(id)device;
@end

@implementation HKRPOxygenSaturationAvailability

+ (NSSet)allowedCountryCodesISO3166
{
  v2 = MEMORY[0x277CBEB98];
  allowedCountrySet = [objc_opt_class() allowedCountrySet];
  allCountryCodes = [allowedCountrySet allCountryCodes];
  v5 = [v2 setWithArray:allCountryCodes];

  return v5;
}

+ (BOOL)isCountryAllowed:(id)allowed
{
  allowedCopy = allowed;
  allowedCountrySet = [objc_opt_class() allowedCountrySet];
  v5 = [allowedCountrySet containsCountryCode:allowedCopy];

  return v5;
}

- (HKRPOxygenSaturationAvailability)init
{
  v3 = objc_alloc_init(_HKRPOxygenSaturationAvailabilityDataSource);
  v4 = [(HKRPOxygenSaturationAvailability *)self initWithDataSource:v3];

  return v4;
}

- (HKRPOxygenSaturationAvailability)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[_HKRPOxygenSaturationAvailabilityDataSource alloc] initWithDevice:deviceCopy];

  v6 = [(HKRPOxygenSaturationAvailability *)self initWithDataSource:v5];
  return v6;
}

- (HKRPOxygenSaturationAvailability)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = HKRPOxygenSaturationAvailability;
  v6 = [(HKRPOxygenSaturationAvailability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (BOOL)isDeviceSupported
{
  if (([(HKRPOxygenSaturationAvailabilityDataSource *)self->_dataSource skipHardwareCheck]& 1) != 0)
  {
    return 1;
  }

  dataSource = self->_dataSource;

  return [(HKRPOxygenSaturationAvailabilityDataSource *)dataSource deviceIsSupported];
}

@end