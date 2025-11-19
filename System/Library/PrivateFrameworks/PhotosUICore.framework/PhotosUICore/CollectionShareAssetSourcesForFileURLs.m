@interface CollectionShareAssetSourcesForFileURLs
@end

@implementation CollectionShareAssetSourcesForFileURLs

void ___CollectionShareAssetSourcesForFileURLs_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v19 = 0;
  v7 = [MEMORY[0x1E69C08F0] typeForURL:v6 error:&v19];
  v8 = v19;
  v9 = v19;
  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    goto LABEL_13;
  }

  if (PFIsLivePhotoBundleType())
  {
    v10 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v6];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E6978778] collectionShareAssetSourceWithVideoComplementBundle:v10];

      if (!v12)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Failed to create PFVideoComplement for URL: %@", v6}];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

LABEL_13:
    *a4 = 1;
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E6978778];
  v14 = v7;
  if ([v14 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v15 = 2;
  }

  else
  {
    v15 = [v14 conformsToType:*MEMORY[0x1E6982E30]];
  }

  v12 = [v13 collectionShareAssetSourceWithFileURL:v6 resourceType:v15];
  if (v12)
  {
LABEL_11:
    [*(a1 + 32) addObject:v12];
  }

LABEL_14:
}

@end