@interface PFImageMetadataChangePolicySharedPhotoStream
+ (id)policyWithAllowLocation:(BOOL)a3;
+ (void)_filterImageProperties:(id)a3 metadataWithKey:(id)a4 preserveProperties:(id)a5;
- (BOOL)metadataNeedsProcessing:(id)a3;
- (id)processMetadata:(id)a3;
@end

@implementation PFImageMetadataChangePolicySharedPhotoStream

- (id)processMetadata:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PFImageMetadataChangePolicySharedPhotoStream;
  v4 = [(PFImageMetadataChangePolicyDefault *)&v12 processMetadata:a3];
  if ([(PFImageMetadataChangePolicySharedPhotoStream *)self metadataNeedsProcessing:v4])
  {
    v5 = [v4 mutableCopy];
    [v5 removeObjectForKey:*MEMORY[0x1E696DD90]];
    v6 = objc_opt_class();
    v7 = *MEMORY[0x1E696DF28];
    v8 = *MEMORY[0x1E696DF50];
    v13[0] = *MEMORY[0x1E696DF48];
    v13[1] = v8;
    v9 = *MEMORY[0x1E696DF20];
    v13[2] = *MEMORY[0x1E696DF18];
    v13[3] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    [v6 _filterImageProperties:v5 metadataWithKey:v7 preserveProperties:v10];

    v4 = v5;
  }

  return v4;
}

- (BOOL)metadataNeedsProcessing:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [v3 isEqual:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (void)_filterImageProperties:(id)a3 metadataWithKey:(id)a4 preserveProperties:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKey:v8];
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v19 = v9;
      v20 = v7;
      v14 = 0;
      v15 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v10 objectForKey:{v17, v19}];
          if (v18)
          {
            if (!v14)
            {
              v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
            }

            [v14 setObject:v18 forKey:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);

      v9 = v19;
      v7 = v20;
      if (v14)
      {
        [v20 setObject:v14 forKey:v8];

        goto LABEL_17;
      }
    }

    else
    {
    }

    [v7 removeObjectForKey:v8];
  }

LABEL_17:
}

+ (id)policyWithAllowLocation:(BOOL)a3
{
  v3 = a3;
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v10[0] = v4;
    v7 = [PFImageMetadataChangePolicySetLocation policyWithLocation:0];
    v10[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

    v6 = [PFImageMetadataChangePolicyComposite policyWithPolicies:v8];
  }

  return v6;
}

@end