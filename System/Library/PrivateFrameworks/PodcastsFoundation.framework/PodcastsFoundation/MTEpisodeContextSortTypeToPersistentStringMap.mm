@interface MTEpisodeContextSortTypeToPersistentStringMap
@end

@implementation MTEpisodeContextSortTypeToPersistentStringMap

void __MTEpisodeContextSortTypeToPersistentStringMap_inverted_block_invoke()
{
  v6[10] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F54BD568;
  v5[1] = &unk_1F54BD6E8;
  v6[0] = @"default";
  v6[1] = @"pub-date";
  v5[2] = &unk_1F54BD700;
  v5[3] = &unk_1F54BD718;
  v6[2] = @"pub-date-ascending";
  v6[3] = @"title";
  v5[4] = &unk_1F54BD730;
  v5[5] = &unk_1F54BD748;
  v6[4] = @"bookmarked-date";
  v6[5] = @"bookmarked-date-ascending";
  v5[6] = &unk_1F54BD760;
  v5[7] = &unk_1F54BD778;
  v6[6] = @"group-by-shows";
  v6[7] = @"downloaded-date-ascending";
  v5[8] = &unk_1F54BD790;
  v5[9] = &unk_1F54BD7A8;
  v6[8] = @"downloaded-date";
  v6[9] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:10];
  v1 = MTEpisodeContextSortTypeToPersistentStringMap_inverted_map;
  MTEpisodeContextSortTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodeContextSortTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap;
  MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end