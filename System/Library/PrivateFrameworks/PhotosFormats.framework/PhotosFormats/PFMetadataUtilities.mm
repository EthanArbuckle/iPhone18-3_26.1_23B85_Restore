@interface PFMetadataUtilities
+ (BOOL)addMakerApplePropertyWithKey:(id)key value:(id)value toProperties:(id)properties;
+ (BOOL)addQuickTimeMetadataItemsWithIdentifier:(id)identifier value:(id)value toItems:(id)items;
+ (id)itemsByRemovingMetadataItemForIdentifier:(id)identifier fromArray:(id)array;
+ (id)mutableImagePropertyDictionaryForMetadata:(id)metadata;
@end

@implementation PFMetadataUtilities

+ (id)mutableImagePropertyDictionaryForMetadata:(id)metadata
{
  cgImageProperties = [metadata cgImageProperties];
  v4 = [cgImageProperties mutableCopy];

  return v4;
}

+ (id)itemsByRemovingMetadataItemForIdentifier:(id)identifier fromArray:(id)array
{
  arrayCopy = array;
  v6 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:arrayCopy filteredByIdentifier:identifier];
  v7 = arrayCopy;
  if ([v6 count])
  {
    v8 = [arrayCopy mutableCopy];
    [v8 removeObjectsInArray:v6];
    v7 = [v8 copy];
  }

  return v7;
}

+ (BOOL)addQuickTimeMetadataItemsWithIdentifier:(id)identifier value:(id)value toItems:(id)items
{
  identifierCopy = identifier;
  valueCopy = value;
  itemsCopy = items;
  v10 = [itemsCopy count];
  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setIdentifier:identifierCopy];
  [metadataItem setValue:valueCopy];
  if (metadataItem)
  {
    [itemsCopy addObject:metadataItem];
    ++v10;
  }

  v12 = +[PFMetadataIdentifier quickTimeMetadataVariationIdentifier];
  if (![identifierCopy isEqualToString:v12])
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if ([valueCopy isEqualToNumber:&unk_1F2AAB578])
  {

    goto LABEL_8;
  }

  v13 = [valueCopy isEqualToNumber:&unk_1F2AAB590];

  if (v13)
  {
LABEL_8:
    v12 = objc_alloc_init(MEMORY[0x1E6988050]);
    [v12 setKey:@"LOOP"];
    [v12 setKeySpace:*MEMORY[0x1E6987858]];
    v17 = 0;
    [v12 setDataType:*MEMORY[0x1E6960260]];
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&v17 length:4];
    [v12 setValue:v14];

    if (v12)
    {
      [itemsCopy addObject:v12];
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

LABEL_11:
  }

  v15 = [itemsCopy count] == v10;

  return v15;
}

+ (BOOL)addMakerApplePropertyWithKey:(id)key value:(id)value toProperties:(id)properties
{
  keyCopy = key;
  valueCopy = value;
  propertiesCopy = properties;
  v10 = *MEMORY[0x1E696DE30];
  v11 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  dictionary = [v11 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [propertiesCopy setObject:dictionary forKeyedSubscript:v10];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([valueCopy isEqualToString:&stru_1F2A8EB68] & 1) == 0)
  {
    if (valueCopy)
    {
      [dictionary setObject:valueCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:keyCopy];
    }
  }

  v14 = [dictionary objectForKeyedSubscript:keyCopy];
  v15 = v14 != 0;

  return v15;
}

@end