@interface MTEpisodePriceTypeToPersistentStringMap
@end

@implementation MTEpisodePriceTypeToPersistentStringMap

void __MTEpisodePriceTypeToPersistentStringMap_inverted_block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F54BD568;
  v5[1] = &unk_1F54BD718;
  v6[0] = @"NONE";
  v6[1] = @"PLUS";
  v5[2] = &unk_1F54BD730;
  v5[3] = &unk_1F54BD700;
  v6[2] = @"PRMO";
  v6[3] = @"PSUB";
  v5[4] = &unk_1F54BD6E8;
  v5[5] = &unk_1F54BD748;
  v6[4] = @"STDQ";
  v6[5] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v1 = MTEpisodePriceTypeToPersistentStringMap_inverted_map;
  MTEpisodePriceTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodePriceTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap;
  MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end