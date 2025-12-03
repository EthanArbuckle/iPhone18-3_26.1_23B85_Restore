@interface RIOTextureConverter
+ (id)defaultTextureConverters;
+ (id)newConverterOfType:(int64_t)type;
+ (id)preferredConverterFromConverters:(id)converters forTextureDescription:(id)description;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)description;
- (unint64_t)alignUp:(unint64_t)up toAlignment:(unint64_t)alignment;
@end

@implementation RIOTextureConverter

- (unint64_t)alignUp:(unint64_t)up toAlignment:(unint64_t)alignment
{
  if ((alignment & (alignment - 1)) != 0)
  {
    return 0;
  }

  else
  {
    return (alignment - 1 + up) & -alignment;
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)description
{
  v3 = 0;
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (id)defaultTextureConverters
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(RIOImageIOTextureConverter);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)newConverterOfType:(int64_t)type
{
  if (type == 1)
  {
    return objc_alloc_init(RIOImageIOTextureConverter);
  }

  else
  {
    return 0;
  }
}

+ (id)preferredConverterFromConverters:(id)converters forTextureDescription:(id)description
{
  v19 = *MEMORY[0x277D85DE8];
  convertersCopy = converters;
  descriptionCopy = description;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = convertersCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 canConvertTextureWithDescription:{descriptionCopy, v14}])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

@end