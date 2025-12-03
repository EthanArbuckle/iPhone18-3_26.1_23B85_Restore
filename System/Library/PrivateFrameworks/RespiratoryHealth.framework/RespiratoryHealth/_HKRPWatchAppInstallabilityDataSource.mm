@interface _HKRPWatchAppInstallabilityDataSource
- (BOOL)isDeviceSupported;
- (BOOL)isTinkerModeEnabled;
- (NSString)selectedCountry;
- (_HKRPWatchAppInstallabilityDataSource)initWithDevice:(id)device;
- (void)isDeviceSupported;
@end

@implementation _HKRPWatchAppInstallabilityDataSource

- (_HKRPWatchAppInstallabilityDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = _HKRPWatchAppInstallabilityDataSource;
  v6 = [(_HKRPWatchAppInstallabilityDataSource *)&v12 init];
  if (v6)
  {
    hkrp_respiratoryDefaults = [MEMORY[0x277CBEBD0] hkrp_respiratoryDefaults];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = hkrp_respiratoryDefaults;

    objc_storeStrong(&v6->_device, device);
    v9 = [[HKRPOxygenSaturationAvailability alloc] initWithDevice:deviceCopy];
    availability = v6->_availability;
    v6->_availability = v9;
  }

  return v6;
}

- (BOOL)isTinkerModeEnabled
{
  device = self->_device;
  if (device)
  {
    mEMORY[0x277CCDD30] = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [mEMORY[0x277CCDD30] BOOLValue];
  }

  else
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    bOOLValue = [mEMORY[0x277CCDD30] tinkerModeEnabled];
  }

  v5 = bOOLValue;

  return v5;
}

- (BOOL)isDeviceSupported
{
  if (self->_device || ([MEMORY[0x277CCDD30] sharedBehavior], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAppleWatch"), v4, v5))
  {
    availability = self->_availability;

    return [(HKRPOxygenSaturationAvailability *)availability isDeviceSupported];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_HKRPWatchAppInstallabilityDataSource *)self isDeviceSupported];
    }

    return 0;
  }
}

- (NSString)selectedCountry
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

- (void)isDeviceSupported
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromSelector(a2);
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_262078000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ is unsupported on this platform", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end