@interface PIMakerNoteUtilities
+ (void)addAssetIdentifier:(id)a3 toMetadataArray:(id)a4;
+ (void)addAssetIdentifier:(id)a3 toMetadataDictionary:(id)a4;
+ (void)removeAssetIdentifierFromMetadataArray:(id)a3;
@end

@implementation PIMakerNoteUtilities

+ (void)removeAssetIdentifierFromMetadataArray:(id)a3
{
  v4 = a3;
  v3 = [v4 indexOfObjectPassingTest:&__block_literal_global_6939];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 removeObjectAtIndex:v3];
  }
}

uint64_t __63__PIMakerNoteUtilities_removeAssetIdentifierFromMetadataArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x1E6987798]];

  return v3;
}

+ (void)addAssetIdentifier:(id)a3 toMetadataArray:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 removeAssetIdentifierFromMetadataArray:v6];
  v8 = [MEMORY[0x1E6988050] metadataItem];
  [v8 setIdentifier:*MEMORY[0x1E6987798]];
  [v8 setValue:v7];

  [v6 addObject:v8];
}

+ (void)addAssetIdentifier:(id)a3 toMetadataDictionary:(id)a4
{
  v9 = a3;
  v5 = *MEMORY[0x1E696DE30];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69867A8]];
  [v6 setObject:v8 forKeyedSubscript:v5];
}

@end