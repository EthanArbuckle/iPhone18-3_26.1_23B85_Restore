@interface WAAirQualityIsAQI
@end

@implementation WAAirQualityIsAQI

uint64_t ___WAAirQualityIsAQI_block_invoke()
{
  _WAAirQualityIsAQI_AQICountries = [MEMORY[0x277CBEB98] setWithObjects:{@"CN", @"US", @"MX", 0}];

  return MEMORY[0x2821F96F8]();
}

@end