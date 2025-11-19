@interface MAAutoAsset
@end

@implementation MAAutoAsset

void __115__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDetermineGroupsAvailableForUpdate_timeoutSecs_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0;
  atomic_compare_exchange_strong((*(a1[5] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    v10 = *(*(a1[6] + 8) + 40);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }

    v13 = a1[4];
    if (v13)
    {
      (*(v13 + 16))(v13, v14, v7, v8);
    }
  }
}

void __115__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDetermineGroupsAvailableForUpdate_timeoutSecs_completion___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timed out after %lf Secs", @"stageDetermineGroupsAvailableForUpdate", *(a1 + 40)];
  v2 = [MEMORY[0x277D643F8] sharedCore];
  v3 = [v2 buildError:8119 underlying:0 description:v4];

  (*(*(a1 + 32) + 16))();
}

void __139__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0;
  atomic_compare_exchange_strong((*(a1[5] + 8) + 24), &v9, 1u);
  if (!v9)
  {
    v10 = *(*(a1[6] + 8) + 40);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }

    v13 = a1[4];
    if (v13)
    {
      (*(v13 + 16))(v13, v14, v7, v8);
    }
  }
}

void __139__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timed out after %ld Secs", @"stageDownloadGroups", *(a1 + 40)];
  v2 = [MEMORY[0x277D643F8] sharedCore];
  v3 = [v2 buildError:8119 underlying:0 description:v4];

  (*(*(a1 + 32) + 16))();
}

void __67__MAAutoAsset_SUCoreBorderMAAutoAsset__SUCoreBorder_stagePurgeAll___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D644A0];
  v4 = a2;
  v5 = [v3 sharedSimulator];
  v6 = [v5 end:@"ma" atFunction:@"stagePurgeAll"];

  if (v6)
  {
    [*(a1 + 40) _SUCoreBorder_stagePurgeAllAtEnd:v6 operationError:v4 withCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end