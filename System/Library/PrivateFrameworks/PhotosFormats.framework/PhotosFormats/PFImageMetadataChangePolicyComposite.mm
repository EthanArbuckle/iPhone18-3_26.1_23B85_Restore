@interface PFImageMetadataChangePolicyComposite
+ (id)policyWithPolicies:(id)a3;
- (BOOL)metadataNeedsProcessing:(id)a3;
- (PFImageMetadataChangePolicyComposite)initWithCoder:(id)a3;
- (id)processMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFImageMetadataChangePolicyComposite

- (id)processMetadata:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PFImageMetadataChangePolicyComposite *)self policies];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 metadataNeedsProcessing:v4])
        {
          v11 = [v10 processMetadata:v4];

          v4 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)metadataNeedsProcessing:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PFImageMetadataChangePolicyComposite *)self policies];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) metadataNeedsProcessing:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFImageMetadataChangePolicyComposite *)self policies];
  [v4 encodeObject:v5 forKey:@"policyList"];
}

- (PFImageMetadataChangePolicyComposite)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"policyList"])
  {
    v5 = [v4 decodeObjectForKey:@"policyList"];
    [(PFImageMetadataChangePolicyComposite *)self setPolicies:v5];
  }

  return self;
}

+ (id)policyWithPolicies:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPolicies:v3];

  return v4;
}

@end