@interface PFImageMetadataChangePolicySetCreationDate
+ (id)policyWithCreationDate:(id)date inTimeZone:(id)zone;
- (BOOL)metadataNeedsProcessing:(id)processing;
- (PFImageMetadataChangePolicySetCreationDate)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicySetCreationDate

+ (id)policyWithCreationDate:(id)date inTimeZone:(id)zone
{
  zoneCopy = zone;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 setCreationDate:dateCopy];

  if (zoneCopy)
  {
    [v7 setTimeZone:zoneCopy];
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v7 setTimeZone:defaultTimeZone];
  }

  return v7;
}

- (id)processMetadata:(id)metadata
{
  v20[3] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  creationDate = [(PFImageMetadataChangePolicySetCreationDate *)self creationDate];

  if (creationDate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = dictionary;
    if (metadataCopy)
    {
      [dictionary addEntriesFromDictionary:metadataCopy];
    }

    v8 = objc_alloc_init(PFImageMetadataBuilder);
    creationDate2 = [(PFImageMetadataChangePolicySetCreationDate *)self creationDate];
    timeZone = [(PFImageMetadataChangePolicySetCreationDate *)self timeZone];
    [(PFImageMetadataBuilder *)v8 setCreationDate:creationDate2 timeZone:timeZone];

    v19[0] = *MEMORY[0x1E696D9B0];
    exifDictionary = [(PFImageMetadataBuilder *)v8 exifDictionary];
    v20[0] = exifDictionary;
    v19[1] = *MEMORY[0x1E696DF28];
    tiffDictionary = [(PFImageMetadataBuilder *)v8 tiffDictionary];
    v20[1] = tiffDictionary;
    v19[2] = *MEMORY[0x1E696DD90];
    iptcDictionary = [(PFImageMetadataBuilder *)v8 iptcDictionary];
    v20[2] = iptcDictionary;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PFImageMetadataChangePolicySetCreationDate_processMetadata___block_invoke;
    v17[3] = &unk_1E7B64528;
    v15 = v7;
    v18 = v15;
    [v14 enumerateKeysAndObjectsUsingBlock:v17];
  }

  else
  {
    v15 = metadataCopy;
  }

  return v15;
}

void __62__PFImageMetadataChangePolicySetCreationDate_processMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = v9;

    [v10 addEntriesFromDictionary:v5];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
  }
}

- (BOOL)metadataNeedsProcessing:(id)processing
{
  v33[8] = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  creationDate = [(PFImageMetadataChangePolicySetCreationDate *)self creationDate];

  if (creationDate)
  {
    v6 = [processingCopy objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v7 = [processingCopy objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
    v29 = [processingCopy objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
    v8 = objc_alloc_init(PFImageMetadataBuilder);
    creationDate2 = [(PFImageMetadataChangePolicySetCreationDate *)self creationDate];
    timeZone = [(PFImageMetadataChangePolicySetCreationDate *)self timeZone];
    [(PFImageMetadataBuilder *)v8 setCreationDate:creationDate2 timeZone:timeZone];

    exifDictionary = [(PFImageMetadataBuilder *)v8 exifDictionary];
    tiffDictionary = [(PFImageMetadataBuilder *)v8 tiffDictionary];
    iptcDictionary = [(PFImageMetadataBuilder *)v8 iptcDictionary];
    v13 = *MEMORY[0x1E696DB28];
    v33[0] = *MEMORY[0x1E696D998];
    v33[1] = v13;
    v14 = *MEMORY[0x1E696D990];
    v33[2] = *MEMORY[0x1E696DAA0];
    v33[3] = v14;
    v15 = *MEMORY[0x1E696DA90];
    v33[4] = *MEMORY[0x1E696DB20];
    v33[5] = v15;
    v16 = *MEMORY[0x1E696DA88];
    v33[6] = *MEMORY[0x1E696DB18];
    v33[7] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
    v18 = v6;
    v19 = __70__PFImageMetadataChangePolicySetCreationDate_metadataNeedsProcessing___block_invoke(v6, exifDictionary, v17);

    if (v19)
    {
      v32 = *MEMORY[0x1E696DF20];
      v20 = 1;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v22 = v7;
      v23 = __70__PFImageMetadataChangePolicySetCreationDate_metadataNeedsProcessing___block_invoke(v7, tiffDictionary, v21);

      v24 = v29;
      if (v23)
      {
        v25 = *MEMORY[0x1E696DDE0];
        v31[0] = *MEMORY[0x1E696DD88];
        v31[1] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v27 = __70__PFImageMetadataChangePolicySetCreationDate_metadataNeedsProcessing___block_invoke(v29, iptcDictionary, v26);

        v20 = v27 ^ 1;
      }
    }

    else
    {
      v22 = v7;
      v20 = 1;
      v24 = v29;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __70__PFImageMetadataChangePolicySetCreationDate_metadataNeedsProcessing___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v18}];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = [v13 isEqual:v14];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  creationDate = [(PFImageMetadataChangePolicySetCreationDate *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  timeZone = [(PFImageMetadataChangePolicySetCreationDate *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"creationDateTimeZone"];
}

- (PFImageMetadataChangePolicySetCreationDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"creationDate"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDateTimeZone"];
    [(PFImageMetadataChangePolicySetCreationDate *)self setCreationDate:v5];
    [(PFImageMetadataChangePolicySetCreationDate *)self setTimeZone:v6];
  }

  return self;
}

@end