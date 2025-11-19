@interface MTDisplayTypeToPersistentStringMap
@end

@implementation MTDisplayTypeToPersistentStringMap

void __MTDisplayTypeToPersistentStringMap_inverted_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F54BD568;
  v5[1] = &unk_1F54BD6E8;
  v6[0] = @"free";
  v6[1] = @"paid";
  v5[2] = &unk_1F54BD700;
  v6[2] = @"hybrid";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v1 = MTDisplayTypeToPersistentStringMap_inverted_map;
  MTDisplayTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTDisplayTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTDisplayTypeToPersistentStringMap_inverted_invertedMap;
  MTDisplayTypeToPersistentStringMap_inverted_invertedMap = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end