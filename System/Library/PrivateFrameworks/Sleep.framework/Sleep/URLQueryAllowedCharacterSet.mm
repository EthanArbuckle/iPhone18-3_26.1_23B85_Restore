@interface URLQueryAllowedCharacterSet
@end

@implementation URLQueryAllowedCharacterSet

uint64_t ___URLQueryAllowedCharacterSet_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = qword_280B068D8;
  qword_280B068D8 = v0;

  v2 = qword_280B068D8;
  v3 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = qword_280B068D8;

  return [v4 removeCharactersInString:@"="];
}

@end