@interface PFImageMetadataChangePolicyComposite
+ (id)policyWithPolicies:(id)policies;
- (BOOL)metadataNeedsProcessing:(id)processing;
- (PFImageMetadataChangePolicyComposite)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicyComposite

- (id)processMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  policies = [(PFImageMetadataChangePolicyComposite *)self policies];
  v6 = [policies countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(policies);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 metadataNeedsProcessing:metadataCopy])
        {
          v11 = [v10 processMetadata:metadataCopy];

          metadataCopy = v11;
        }
      }

      v7 = [policies countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return metadataCopy;
}

- (BOOL)metadataNeedsProcessing:(id)processing
{
  v15 = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  policies = [(PFImageMetadataChangePolicyComposite *)self policies];
  v6 = [policies countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(policies);
        }

        if ([*(*(&v10 + 1) + 8 * i) metadataNeedsProcessing:processingCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [policies countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  policies = [(PFImageMetadataChangePolicyComposite *)self policies];
  [coderCopy encodeObject:policies forKey:@"policyList"];
}

- (PFImageMetadataChangePolicyComposite)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"policyList"])
  {
    v5 = [coderCopy decodeObjectForKey:@"policyList"];
    [(PFImageMetadataChangePolicyComposite *)self setPolicies:v5];
  }

  return self;
}

+ (id)policyWithPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = objc_opt_new();
  [v4 setPolicies:policiesCopy];

  return v4;
}

@end