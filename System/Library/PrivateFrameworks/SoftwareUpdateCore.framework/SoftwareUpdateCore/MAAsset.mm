@interface MAAsset
@end

@implementation MAAsset

void __94__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_startCatalogDownload_options_completionWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D644A0];
  v6 = a3;
  v7 = [v5 sharedSimulator];
  v8 = [v7 end:@"ma" atFunction:@"startCatalogDownload"];

  if (v8)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MADownloadResultAtEnd:v8 withResult:a2 withError:v6 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __94__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_cancelCatalogDownload_completionWithCancelResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D644A0] sharedSimulator];
  v5 = [v4 end:@"ma" atFunction:@"cancelCatalogDownload"];

  if (v5)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MACancelDownloadResultAtEnd:v5 withResult:a2 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __79__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_startDownload_completionWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x277D644A0] sharedSimulator];
  v6 = [v5 end:@"ma" atFunction:@"startDownload"];

  if (v6)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MADownloadResultAtEnd:v6 withResult:a2 withError:v9 withCompletion:*(a1 + 48)];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) sessionId];
    [v7 _prepAndSendDownloadFinishedSplunkEvent:a2 withError:v9 withSessionId:v8];

    (*(*(a1 + 48) + 16))();
  }
}

void __60__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_purgeWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D644A0];
  v6 = a3;
  v7 = [v5 sharedSimulator];
  v8 = [v7 end:@"ma" atFunction:@"purgeWithError"];

  if (v8)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MAPurgeResultAtEnd:v8 withResult:a2 withError:v6 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __60__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_cancelDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D644A0] sharedSimulator];
  v5 = [v4 end:@"ma" atFunction:@"cancelDownload"];

  if (v5)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MACancelDownloadResultAtEnd:v5 withResult:a2 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __71__MAAsset_SUCoreBorderMAAsset__SUCoreBorder_configDownload_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D644A0] sharedSimulator];
  v5 = [v4 end:@"ma" atFunction:@"configDownload"];

  if (v5)
  {
    [MEMORY[0x277D289C0] _SUCoreBorder_MAOperationResultAtEnd:v5 withResult:a2 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end