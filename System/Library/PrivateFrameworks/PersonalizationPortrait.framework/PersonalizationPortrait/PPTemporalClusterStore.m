@interface PPTemporalClusterStore
- (BOOL)iterRankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 block:(id)a6;
- (PPTemporalClusterStore)init;
@end

@implementation PPTemporalClusterStore

- (BOOL)iterRankedTemporalClustersForStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 block:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[PPTemporalClusterClient sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PPTemporalClusterStore_iterRankedTemporalClustersForStartDate_endDate_error_block___block_invoke;
  v15[3] = &unk_1E77F7D70;
  v16 = v9;
  v13 = v9;
  LOBYTE(a5) = [v12 rankedTemporalClustersForStartDate:v11 endDate:v10 error:a5 handleBatch:v15];

  return a5;
}

void __85__PPTemporalClusterStore_iterRankedTemporalClustersForStartDate_endDate_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*a3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (PPTemporalClusterStore)init
{
  v3.receiver = self;
  v3.super_class = PPTemporalClusterStore;
  return [(PPTemporalClusterStore *)&v3 init];
}

@end