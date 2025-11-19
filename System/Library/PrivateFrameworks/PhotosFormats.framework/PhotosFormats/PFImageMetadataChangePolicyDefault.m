@interface PFImageMetadataChangePolicyDefault
+ (id)policyWithLossyCompressionQuality:(float)a3;
+ (id)standardPolicy;
- (PFImageMetadataChangePolicyDefault)initWithCoder:(id)a3;
- (PFImageMetadataChangePolicyDefault)initWithLossyCompressionQuality:(float)a3;
- (id)processMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFImageMetadataChangePolicyDefault

- (id)processMetadata:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = MEMORY[0x1E696AD98];
  [(PFImageMetadataChangePolicyDefault *)self lossyCompressionQuality];
  v7 = [v6 numberWithFloat:?];
  v8 = [v5 dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696D338], 0}];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E696D9B0], *MEMORY[0x1E696D8B0], *MEMORY[0x1E696DBF0], *MEMORY[0x1E696DE38], *MEMORY[0x1E696DE38], *MEMORY[0x1E696DE50], *MEMORY[0x1E696DE48], *MEMORY[0x1E696DE40], *MEMORY[0x1E696DE60], *MEMORY[0x1E696DE68], 0}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v4 objectForKey:v14];
        if (v15)
        {
          [v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E696DD90];
  v17 = [v4 objectForKey:*MEMORY[0x1E696DD90]];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 mutableCopy];

    [v19 removeObjectForKey:*MEMORY[0x1E696DDC8]];
    [v8 setObject:v19 forKey:v16];
  }

  v20 = *MEMORY[0x1E696DF28];
  v21 = [v4 objectForKey:*MEMORY[0x1E696DF28]];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 mutableCopy];

    [v23 removeObjectForKey:*MEMORY[0x1E696DF58]];
    [v8 setObject:v23 forKey:v20];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E696DE30];
  v25 = [v4 objectForKey:*MEMORY[0x1E696DE30]];
  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];

    v27 = *MEMORY[0x1E69867D8];
    v28 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69867D8]];
    [v26 setObject:v28 forKeyedSubscript:v27];

    v29 = *MEMORY[0x1E69867E0];
    v30 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69867E0]];
    [v26 setObject:v30 forKeyedSubscript:v29];

    [v8 setObject:v26 forKey:v24];
    v23 = v26;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(PFImageMetadataChangePolicyDefault *)self lossyCompressionQuality];
  [v4 encodeFloat:@"lossyCompressionQuality" forKey:?];
}

- (PFImageMetadataChangePolicyDefault)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"lossyCompressionQuality"])
  {
    [v4 decodeFloatForKey:@"lossyCompressionQuality"];
    v5 = [(PFImageMetadataChangePolicyDefault *)self initWithLossyCompressionQuality:?];
  }

  else
  {
    v5 = [(PFImageMetadataChangePolicyDefault *)self init];
  }

  v6 = v5;

  return v6;
}

- (PFImageMetadataChangePolicyDefault)initWithLossyCompressionQuality:(float)a3
{
  v8.receiver = self;
  v8.super_class = PFImageMetadataChangePolicyDefault;
  v4 = [(PFImageMetadataChangePolicyDefault *)&v8 init];
  v6 = v4;
  if (v4)
  {
    *&v5 = a3;
    [(PFImageMetadataChangePolicyDefault *)v4 setLossyCompressionQuality:v5];
  }

  return v6;
}

+ (id)policyWithLossyCompressionQuality:(float)a3
{
  v4 = [a1 alloc];
  *&v5 = a3;
  v6 = [v4 initWithLossyCompressionQuality:v5];

  return v6;
}

+ (id)standardPolicy
{
  if (standardPolicy_onceToken_42 != -1)
  {
    dispatch_once(&standardPolicy_onceToken_42, &__block_literal_global_44);
  }

  v3 = standardPolicy_standardPolicy_41;

  return v3;
}

uint64_t __52__PFImageMetadataChangePolicyDefault_standardPolicy__block_invoke()
{
  standardPolicy_standardPolicy_41 = objc_alloc_init(PFImageMetadataChangePolicyDefault);

  return MEMORY[0x1EEE66BB8]();
}

@end