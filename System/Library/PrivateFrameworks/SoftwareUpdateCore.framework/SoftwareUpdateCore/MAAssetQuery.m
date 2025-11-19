@interface MAAssetQuery
@end

@implementation MAAssetQuery

void __78__MAAssetQuery_SUCoreBorderMAAssetQuery__SUCoreBorder_queryMetaDataWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D644A0];
  v6 = a3;
  v7 = [v5 sharedSimulator];
  v8 = [v7 end:@"ma" atFunction:@"queryMetaDataWithError"];

  if (v8)
  {
    [MEMORY[0x277D289D8] _SUCoreBorder_MAQueryResultAtEnd:v8 withResult:a2 withError:v6 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end