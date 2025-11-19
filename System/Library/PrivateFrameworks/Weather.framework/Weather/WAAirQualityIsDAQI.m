@interface WAAirQualityIsDAQI
@end

@implementation WAAirQualityIsDAQI

uint64_t ___WAAirQualityIsDAQI_block_invoke()
{
  _WAAirQualityIsDAQI_DAQICountries = [MEMORY[0x277CBEB98] setWithObject:@"GB"];

  return MEMORY[0x2821F96F8]();
}

@end