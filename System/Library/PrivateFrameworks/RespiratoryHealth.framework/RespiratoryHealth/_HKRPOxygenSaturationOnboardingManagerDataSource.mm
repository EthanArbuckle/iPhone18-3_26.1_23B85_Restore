@interface _HKRPOxygenSaturationOnboardingManagerDataSource
- (BOOL)isAgeGated;
- (BOOL)shouldAdvertise;
- (HKFeatureAvailabilityProviding)featureAvailabilityProvider;
- (HKRPOxygenSaturationSettings)oxygenSaturationSettings;
- (HKRegulatoryDomainProvider)mobileCountryCodeManager;
- (NRDevice)device;
- (NSString)countryCodeFromCurrentLocale;
- (_HKRPOxygenSaturationOnboardingManagerDataSource)init;
- (id)_lazyPropertyWithLockedBlock:(id)block;
@end

@implementation _HKRPOxygenSaturationOnboardingManagerDataSource

- (_HKRPOxygenSaturationOnboardingManagerDataSource)init
{
  v3.receiver = self;
  v3.super_class = _HKRPOxygenSaturationOnboardingManagerDataSource;
  result = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)isAgeGated
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CCE228]];
  v4 = [v3 BOOLForKey:*MEMORY[0x277CCE250]];

  return v4;
}

- (BOOL)shouldAdvertise
{
  countryCodeFromCurrentLocale = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)self countryCodeFromCurrentLocale];
  v3 = [HKRPOxygenSaturationAvailability isCountryAllowed:countryCodeFromCurrentLocale];

  return v3;
}

- (NSString)countryCodeFromCurrentLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  return countryCode;
}

- (NRDevice)device
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activeDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getDevicesMatching:activeDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (HKFeatureAvailabilityProviding)featureAvailabilityProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79___HKRPOxygenSaturationOnboardingManagerDataSource_featureAvailabilityProvider__block_invoke;
  v4[3] = &unk_279B0D590;
  v4[4] = self;
  v2 = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)self _lazyPropertyWithLockedBlock:v4];

  return v2;
}

- (HKRPOxygenSaturationSettings)oxygenSaturationSettings
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76___HKRPOxygenSaturationOnboardingManagerDataSource_oxygenSaturationSettings__block_invoke;
  v4[3] = &unk_279B0D590;
  v4[4] = self;
  v2 = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)self _lazyPropertyWithLockedBlock:v4];

  return v2;
}

- (HKRegulatoryDomainProvider)mobileCountryCodeManager
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76___HKRPOxygenSaturationOnboardingManagerDataSource_mobileCountryCodeManager__block_invoke;
  v4[3] = &unk_279B0D590;
  v4[4] = self;
  v2 = [(_HKRPOxygenSaturationOnboardingManagerDataSource *)self _lazyPropertyWithLockedBlock:v4];

  return v2;
}

- (id)_lazyPropertyWithLockedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v5 = blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end