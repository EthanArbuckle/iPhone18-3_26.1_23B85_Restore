@interface TSWPTOCScopeStringsInitBlock
@end

@implementation TSWPTOCScopeStringsInitBlock

uint64_t s_TSWPTOCScopeStringsInitBlock_block_invoke_5()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_287DDD950;
  v1[1] = &unk_287DDD968;
  v2[0] = &unk_287DDD350;
  v2[1] = &unk_287DDD368;
  v1[2] = &unk_287DDD938;
  v2[2] = &unk_287DDD380;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

@end