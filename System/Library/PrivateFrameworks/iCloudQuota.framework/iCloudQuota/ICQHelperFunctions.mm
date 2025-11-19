@interface ICQHelperFunctions
@end

@implementation ICQHelperFunctions

void __59___ICQHelperFunctions_getOriginalPhotosSizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithLongLong:a2];
  (*(v4 + 16))(v4, v7, v6);
}

void __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D28A40]);
  v3 = [*(a1 + 32) personaIdentifier];
  v8 = [v2 initWithDelegate:0 eventQueue:0 personaIdentifier:v3];

  v4 = [*(a1 + 56) _fetchNextBackupSize:v8];
  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5 && ([v5 isCancelled] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke_2(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) isFinished] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) cancel];
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __78___ICQHelperFunctions_remoteBackupSizeForAccount_timeoutInSeconds_completion___block_invoke_2_cold_1(v2);
    }

    (*(*(a1 + 32) + 16))();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

uint64_t __44___ICQHelperFunctions__fetchNextBackupSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 snapshotID];
  v6 = [v4 snapshotID];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __54___ICQHelperFunctions__remoteBackupSizeOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = _remoteBackupSizeOperationQueue_operationQueue;
  _remoteBackupSizeOperationQueue_operationQueue = v0;

  v2 = _remoteBackupSizeOperationQueue_operationQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end