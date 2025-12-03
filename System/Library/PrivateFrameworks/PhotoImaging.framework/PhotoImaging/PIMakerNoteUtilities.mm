@interface PIMakerNoteUtilities
+ (void)addAssetIdentifier:(id)identifier toMetadataArray:(id)array;
+ (void)addAssetIdentifier:(id)identifier toMetadataDictionary:(id)dictionary;
+ (void)removeAssetIdentifierFromMetadataArray:(id)array;
@end

@implementation PIMakerNoteUtilities

+ (void)removeAssetIdentifierFromMetadataArray:(id)array
{
  arrayCopy = array;
  v3 = [arrayCopy indexOfObjectPassingTest:&__block_literal_global_6939];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [arrayCopy removeObjectAtIndex:v3];
  }
}

uint64_t __63__PIMakerNoteUtilities_removeAssetIdentifierFromMetadataArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x1E6987798]];

  return v3;
}

+ (void)addAssetIdentifier:(id)identifier toMetadataArray:(id)array
{
  arrayCopy = array;
  identifierCopy = identifier;
  [self removeAssetIdentifierFromMetadataArray:arrayCopy];
  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setIdentifier:*MEMORY[0x1E6987798]];
  [metadataItem setValue:identifierCopy];

  [arrayCopy addObject:metadataItem];
}

+ (void)addAssetIdentifier:(id)identifier toMetadataDictionary:(id)dictionary
{
  identifierCopy = identifier;
  v5 = *MEMORY[0x1E696DE30];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v8 setObject:identifierCopy forKeyedSubscript:*MEMORY[0x1E69867A8]];
  [dictionaryCopy setObject:v8 forKeyedSubscript:v5];
}

@end