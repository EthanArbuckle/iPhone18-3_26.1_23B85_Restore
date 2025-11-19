@interface MTEpisodeContextToPersistentStringMap
@end

@implementation MTEpisodeContextToPersistentStringMap

void __MTEpisodeContextToPersistentStringMap_inverted_block_invoke()
{
  v6[12] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F54BD568;
  v5[1] = &unk_1F54BD6E8;
  v6[0] = @"default";
  v6[1] = @"store";
  v5[2] = &unk_1F54BD700;
  v5[3] = &unk_1F54BD718;
  v6[2] = @"library-episodes";
  v6[3] = @"downloaded-episodes";
  v5[4] = &unk_1F54BD730;
  v5[5] = &unk_1F54BD748;
  v6[4] = @"show-feed";
  v6[5] = @"show-user-episodes";
  v5[6] = &unk_1F54BD760;
  v5[7] = &unk_1F54BD778;
  v6[6] = @"listen-now";
  v6[7] = @"listen-now-latest-episodes";
  v5[8] = &unk_1F54BD790;
  v5[9] = &unk_1F54BD7A8;
  v6[8] = @"bookmarks";
  v6[9] = @"show-downloaded-episodes";
  v5[10] = &unk_1F54BD7C0;
  v5[11] = &unk_1F54BD7D8;
  v6[10] = @"recently-played";
  v6[11] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:12];
  v1 = MTEpisodeContextToPersistentStringMap_inverted_map;
  MTEpisodeContextToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodeContextToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodeContextToPersistentStringMap_inverted_invertedMap;
  MTEpisodeContextToPersistentStringMap_inverted_invertedMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end