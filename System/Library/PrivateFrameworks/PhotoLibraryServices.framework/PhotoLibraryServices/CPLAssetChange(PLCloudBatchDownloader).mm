@interface CPLAssetChange(PLCloudBatchDownloader)
- (uint64_t)qualifiesForDeviceLibraryConfiguration:()PLCloudBatchDownloader sharingScopeIdentifier:mainScopeIdentifier:;
@end

@implementation CPLAssetChange(PLCloudBatchDownloader)

- (uint64_t)qualifiesForDeviceLibraryConfiguration:()PLCloudBatchDownloader sharingScopeIdentifier:mainScopeIdentifier:
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 scopedIdentifier];
  v11 = [v10 scopeIdentifier];
  v12 = [v11 isEqualToString:v9];

  if (v12)
  {
    v13 = [a1 sharingScopeIdentifier];
    v14 = v13;
    if (a3 == 2)
    {
      v15 = v13 == 0;
    }

    else if (a3 == 1)
    {
      v15 = [v13 isEqualToString:v8];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

@end