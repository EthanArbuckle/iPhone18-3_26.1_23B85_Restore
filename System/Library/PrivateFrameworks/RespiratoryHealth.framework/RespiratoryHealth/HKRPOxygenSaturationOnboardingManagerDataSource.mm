@interface HKRPOxygenSaturationOnboardingManagerDataSource
@end

@implementation HKRPOxygenSaturationOnboardingManagerDataSource

id __79___HKRPOxygenSaturationOnboardingManagerDataSource_featureAvailabilityProvider__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v4 = objc_alloc(MEMORY[0x277CCD438]);
    v5 = [v4 initWithFeatureIdentifier:*MEMORY[0x277CCC0B0] healthStore:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

id __76___HKRPOxygenSaturationOnboardingManagerDataSource_oxygenSaturationSettings__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = +[HKRPOxygenSaturationSettings standardSettings];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  return v2;
}

id __76___HKRPOxygenSaturationOnboardingManagerDataSource_mobileCountryCodeManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = HKPreferredRegulatoryDomainProvider();
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  return v2;
}

@end