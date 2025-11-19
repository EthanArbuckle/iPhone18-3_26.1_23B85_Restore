@interface NSURL
@end

@implementation NSURL

void __76__NSURL_PBFAdditions__pbf_URLIsReachableAndConformsToAttributeValues_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  LOBYTE(a2) = BSEqualObjects();

  *(*(*(a1 + 40) + 8) + 24) = a2 ^ 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __130__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToAttributeValues_URLsNotConformingToAttributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (*(a1 + 40) & 1) != 0)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v3;
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v4 addObject:v8];
    v3 = v8;
  }
}

void __74__NSURL_PBFAdditions__pbf_URLIsReachableAndConformToResourceValues_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  obj = 0;
  v12 = 0;
  v8 = *(*(a1 + 40) + 8);
  v9 = [*(a1 + 32) getResourceValue:&v12 forKey:a2 error:&obj];
  v10 = v12;
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = BSEqualObjects() ^ 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __129__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues_URLsNotConformingToAttributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (*(a1 + 40) & 1) != 0)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v3;
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v4 addObject:v8];
    v3 = v8;
  }
}

void __51__NSURL_PBFAdditions__pbf_archivedDataStoreBaseURL__block_invoke()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:0];
  v2 = [v1 URLByAppendingPathComponent:@"ArchivedDataStores" isDirectory:1];
  v3 = pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL;
  pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL = v2;

  v4 = *MEMORY[0x277CBE7F8];
  v9[0] = *MEMORY[0x277CBE878];
  v9[1] = v4;
  v5 = *MEMORY[0x277CBE800];
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (([pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 createDirectoryAtURL:pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:0];

    if (v8)
    {
      [pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL pbf_updateResourceValues:v6 error:0];
    }
  }
}

@end