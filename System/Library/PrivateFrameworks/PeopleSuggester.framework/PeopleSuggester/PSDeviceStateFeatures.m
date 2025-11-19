@interface PSDeviceStateFeatures
@end

@implementation PSDeviceStateFeatures

id __78___PSDeviceStateFeatures_isInCallWithCandidates_facetimeRequest_caches_store___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 40);
  if (v5 == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = +[_PSConstants facetimeBundleId];
      v9 = [v6 isEqualToString:v8];
      if (v9)
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        v12 = *(a1 + 32);
        v2 = +[_PSConstants macFacetimeBundleId];
        if ([v12 isEqualToString:v2])
        {
          v10 = 0;
          v11 = 1;
        }

        else
        {
          v13 = *(a1 + 32);
          a1 = +[_PSConstants mobileFacetimeBundleId];
          v11 = [v13 isEqualToString:a1];
          v10 = 1;
        }
      }

      v14 = [v7 numberWithInt:v11];
      [v14 BOOLValue];

      if (v10)
      {
      }

      if ((v9 & 1) == 0)
      {
      }
    }
  }

  v15 = objc_alloc(MEMORY[0x1E698ECC0]);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v5 ^ 1u];
  v17 = [v15 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:v16 timeBucketValue:0];

  return v17;
}

@end