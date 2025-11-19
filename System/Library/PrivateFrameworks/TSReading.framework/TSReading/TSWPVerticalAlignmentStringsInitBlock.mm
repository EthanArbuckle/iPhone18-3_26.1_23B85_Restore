@interface TSWPVerticalAlignmentStringsInitBlock
@end

@implementation TSWPVerticalAlignmentStringsInitBlock

uint64_t s_TSWPVerticalAlignmentStringsInitBlock_block_invoke_6()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_287DDD938;
  v1[1] = &unk_287DDD950;
  v2[0] = &unk_287DDD398;
  v2[1] = &unk_287DDD3B0;
  v1[2] = &unk_287DDD968;
  v1[3] = &unk_287DDD980;
  v2[2] = &unk_287DDD3C8;
  v2[3] = &unk_287DDD3E0;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:4];
}

@end