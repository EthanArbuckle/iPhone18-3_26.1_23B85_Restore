@interface WAAirQualityIsUBA
@end

@implementation WAAirQualityIsUBA

uint64_t ___WAAirQualityIsUBA_block_invoke()
{
  _WAAirQualityIsUBA_UBACountries = [MEMORY[0x277CBEB98] setWithObject:@"DE"];

  return MEMORY[0x2821F96F8]();
}

@end