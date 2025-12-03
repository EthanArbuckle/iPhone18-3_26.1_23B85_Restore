@interface TSUCustomCallBackDictionary(TSSThemeAssetMapperAdditions)
- (uint64_t)initForThemeAssetMapperWithCapacity:()TSSThemeAssetMapperAdditions;
@end

@implementation TSUCustomCallBackDictionary(TSSThemeAssetMapperAdditions)

- (uint64_t)initForThemeAssetMapperWithCapacity:()TSSThemeAssetMapperAdditions
{
  v6[0] = *MEMORY[0x277CBF138];
  v6[1] = 0;
  v3 = *(MEMORY[0x277CBF138] + 24);
  v6[2] = 0;
  v6[3] = v3;
  v4 = *(MEMORY[0x277CBF138] + 40);
  v6[4] = String;
  v6[5] = v4;
  return [self initWithCapacity:a3 keyCallBacks:v6 valueCallBacks:MEMORY[0x277CBF150]];
}

@end