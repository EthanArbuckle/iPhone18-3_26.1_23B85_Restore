@interface PHFetchResult(PXDisplayAssetAdoption)
- (id)thumbnailAssetAtIndex:()PXDisplayAssetAdoption;
- (uint64_t)hasIdentifiersEqualTo:()PXDisplayAssetAdoption;
@end

@implementation PHFetchResult(PXDisplayAssetAdoption)

- (uint64_t)hasIdentifiersEqualTo:()PXDisplayAssetAdoption
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    fetchedObjectIDs = [self fetchedObjectIDs];
    fetchedObjectIDs2 = [v5 fetchedObjectIDs];
    v8 = fetchedObjectIDs2;
    if (fetchedObjectIDs && fetchedObjectIDs2)
    {
      if (fetchedObjectIDs == fetchedObjectIDs2)
      {
        v9 = 1;
      }

      else
      {
        v9 = [fetchedObjectIDs isEqual:fetchedObjectIDs2];
      }
    }

    else
    {
      fetchedObjects = [self fetchedObjects];
      fetchedObjects2 = [v5 fetchedObjects];
      if (fetchedObjects == fetchedObjects2)
      {
        v9 = 1;
      }

      else
      {
        v9 = [fetchedObjects isEqual:fetchedObjects2];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)thumbnailAssetAtIndex:()PXDisplayAssetAdoption
{
  thumbnailAssets = [self thumbnailAssets];
  v6 = [thumbnailAssets objectAtIndexedSubscript:a3];

  if (!v6)
  {
    v6 = [self objectAtIndex:a3];
  }

  return v6;
}

@end