@interface MAAsset
@end

@implementation MAAsset

void __41__MAAsset_SUS__cancelDownloadIfNecessary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"Unable to cancel downloading asset: %ld", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t __28__MAAsset_SUS__cleanupAsset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelDownloadIfNecessary];
  result = [*(a1 + 32) isInstalled];
  if (result)
  {
    [*(a1 + 32) purge:&__block_literal_global_400];
    result = [objc_msgSend(*(a1 + 32) "assetType")];
    if (result)
    {

      return [SUAssetSupport purgeMSUUpdate:0];
    }
  }

  return result;
}

void __28__MAAsset_SUS__cleanupAsset__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogDebug(@"Unable to purge asset: %ld", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

intptr_t __30__MAAsset_SUS__cancelDownload__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = @"Failed to cancel download";
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v9 = @"Update download cancelled.";
  }

  SULogInfo(v9, a2, a3, a4, a5, a6, a7, a8, v12);
  v10 = *(a1 + 32);

  return dispatch_semaphore_signal(v10);
}

intptr_t __21__MAAsset_SUS__purge__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"Failed to purge asset", a2, a3, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    SULogInfo(@"Successfully purged asset", 0, a3, a4, a5, a6, a7, a8, v11);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

@end