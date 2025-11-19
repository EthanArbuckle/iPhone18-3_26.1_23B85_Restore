@interface PFMetadataUtilities
+ (BOOL)addMakerApplePropertyWithKey:(id)a3 value:(id)a4 toProperties:(id)a5;
+ (BOOL)addQuickTimeMetadataItemsWithIdentifier:(id)a3 value:(id)a4 toItems:(id)a5;
+ (id)itemsByRemovingMetadataItemForIdentifier:(id)a3 fromArray:(id)a4;
+ (id)mutableImagePropertyDictionaryForMetadata:(id)a3;
@end

@implementation PFMetadataUtilities

+ (id)mutableImagePropertyDictionaryForMetadata:(id)a3
{
  v3 = [a3 cgImageProperties];
  v4 = [v3 mutableCopy];

  return v4;
}

+ (id)itemsByRemovingMetadataItemForIdentifier:(id)a3 fromArray:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v5 filteredByIdentifier:a3];
  v7 = v5;
  if ([v6 count])
  {
    v8 = [v5 mutableCopy];
    [v8 removeObjectsInArray:v6];
    v7 = [v8 copy];
  }

  return v7;
}

+ (BOOL)addQuickTimeMetadataItemsWithIdentifier:(id)a3 value:(id)a4 toItems:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 count];
  v11 = [MEMORY[0x1E6988050] metadataItem];
  [v11 setIdentifier:v7];
  [v11 setValue:v8];
  if (v11)
  {
    [v9 addObject:v11];
    ++v10;
  }

  v12 = +[PFMetadataIdentifier quickTimeMetadataVariationIdentifier];
  if (![v7 isEqualToString:v12])
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if ([v8 isEqualToNumber:&unk_1F2AAB578])
  {

    goto LABEL_8;
  }

  v13 = [v8 isEqualToNumber:&unk_1F2AAB590];

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
      [v9 addObject:v12];
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

LABEL_11:
  }

  v15 = [v9 count] == v10;

  return v15;
}

+ (BOOL)addMakerApplePropertyWithKey:(id)a3 value:(id)a4 toProperties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x1E696DE30];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v9 setObject:v12 forKeyedSubscript:v10];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 isEqualToString:&stru_1F2A8EB68] & 1) == 0)
  {
    if (v8)
    {
      [v12 setObject:v8 forKeyedSubscript:v7];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v12 setObject:v13 forKeyedSubscript:v7];
    }
  }

  v14 = [v12 objectForKeyedSubscript:v7];
  v15 = v14 != 0;

  return v15;
}

@end