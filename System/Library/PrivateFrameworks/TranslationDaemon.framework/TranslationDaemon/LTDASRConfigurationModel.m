@interface LTDASRConfigurationModel
@end

@implementation LTDASRConfigurationModel

id __36___LTDASRConfigurationModel_locales__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocaleIdentifier:v3];

  return v4;
}

@end