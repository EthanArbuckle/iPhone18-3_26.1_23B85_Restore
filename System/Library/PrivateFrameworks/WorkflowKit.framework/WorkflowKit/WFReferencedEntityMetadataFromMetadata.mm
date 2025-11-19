@interface WFReferencedEntityMetadataFromMetadata
@end

@implementation WFReferencedEntityMetadataFromMetadata

void ____WFReferencedEntityMetadataFromMetadata_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  v13 = [v3 entityWithIdentifier:v4 fromBundleIdentifier:*(a1 + 40)];

  v5 = v13;
  if (v13)
  {
    v6 = [v13 identifier];
    v7 = [*(a1 + 48) identifier];
    if ([v6 isEqualToString:v7])
    {
    }

    else
    {
      v8 = *(a1 + 56);
      v9 = [v13 identifier];
      v10 = [v8 objectForKey:v9];

      v5 = v13;
      if (v10)
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 56);
      v12 = [v13 identifier];
      [v11 setObject:v13 forKey:v12];

      __WFReferencedEntityMetadataFromMetadata(v13, *(a1 + 48), *(a1 + 40), *(a1 + 32), *(a1 + 56));
    }

    v5 = v13;
  }

LABEL_7:
}

id ____WFReferencedEntityMetadataFromMetadata_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 memberValueType];

    v2 = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end