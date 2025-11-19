@interface HKRPOxygenSaturationAvailability
+ (BOOL)isCountryAllowed:(id)a3;
+ (NSSet)allowedCountryCodesISO3166;
- (BOOL)isDeviceSupported;
- (HKRPOxygenSaturationAvailability)init;
- (HKRPOxygenSaturationAvailability)initWithDataSource:(id)a3;
- (HKRPOxygenSaturationAvailability)initWithDevice:(id)a3;
@end

@implementation HKRPOxygenSaturationAvailability

+ (NSSet)allowedCountryCodesISO3166
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [objc_opt_class() allowedCountrySet];
  v4 = [v3 allCountryCodes];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (BOOL)isCountryAllowed:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() allowedCountrySet];
  v5 = [v4 containsCountryCode:v3];

  return v5;
}

- (HKRPOxygenSaturationAvailability)init
{
  v3 = objc_alloc_init(_HKRPOxygenSaturationAvailabilityDataSource);
  v4 = [(HKRPOxygenSaturationAvailability *)self initWithDataSource:v3];

  return v4;
}

- (HKRPOxygenSaturationAvailability)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[_HKRPOxygenSaturationAvailabilityDataSource alloc] initWithDevice:v4];

  v6 = [(HKRPOxygenSaturationAvailability *)self initWithDataSource:v5];
  return v6;
}

- (HKRPOxygenSaturationAvailability)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKRPOxygenSaturationAvailability;
  v6 = [(HKRPOxygenSaturationAvailability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
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