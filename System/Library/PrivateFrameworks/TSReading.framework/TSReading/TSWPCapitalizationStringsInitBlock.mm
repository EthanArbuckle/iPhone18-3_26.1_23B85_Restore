@interface TSWPCapitalizationStringsInitBlock
@end

@implementation TSWPCapitalizationStringsInitBlock

uint64_t s_TSWPCapitalizationStringsInitBlock_block_invoke_3()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_287DDD938;
  v1[1] = &unk_287DDD950;
  v2[0] = &unk_287DDD2A8;
  v2[1] = &unk_287DDD2C0;
  v1[2] = &unk_287DDD968;
  v1[3] = &unk_287DDD980;
  v2[2] = &unk_287DDD2D8;
  v2[3] = &unk_287DDD2F0;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:4];
}

@end