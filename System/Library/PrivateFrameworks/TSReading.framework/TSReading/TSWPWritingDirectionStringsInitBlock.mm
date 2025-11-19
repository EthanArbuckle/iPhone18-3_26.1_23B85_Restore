@interface TSWPWritingDirectionStringsInitBlock
@end

@implementation TSWPWritingDirectionStringsInitBlock

uint64_t s_TSWPWritingDirectionStringsInitBlock_block_invoke_4()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_287DDDF38;
  v1[1] = &unk_287DDDF50;
  v2[0] = &unk_287DDD308;
  v2[1] = &unk_287DDD320;
  v1[2] = &unk_287DDDF68;
  v2[2] = &unk_287DDD338;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:3];
}

@end