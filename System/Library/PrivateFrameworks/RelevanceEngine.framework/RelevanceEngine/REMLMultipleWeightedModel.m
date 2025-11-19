@interface REMLMultipleWeightedModel
@end

@implementation REMLMultipleWeightedModel

void __51___REMLMultipleWeightedModel_saveModelToURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v6 = [*(a1 + 32) URLByAppendingPathComponent:a3];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong((v9 + 40), obj);

    if (v10)
    {
      v11 = [v6 URLByAppendingPathComponent:@"model"];

      v12 = *(*(a1 + 48) + 8);
      v14 = *(v12 + 40);
      v13 = [v5 saveModelToURL:v11 error:&v14];
      objc_storeStrong((v12 + 40), v14);
      *(*(*(a1 + 40) + 8) + 24) = v13;
      v6 = v11;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

@end