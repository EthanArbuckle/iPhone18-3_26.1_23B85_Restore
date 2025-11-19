@interface UAFAutoAssetProgress
+ (id)getSerialQueue;
- (UAFAutoAssetProgress)initWithAssetSetUsages:(id)a3 configurationManager:(id)a4 internalProgressWithStatus:(id)a5;
- (void)finished:(id)a3 withStatus:(unint64_t)a4 withError:(id)a5;
- (void)finishedOutOfSpace:(id)a3;
- (void)progress:(id)a3;
- (void)reportStatus:(unint64_t)a3;
- (void)started:(id)a3;
- (void)summarize;
- (void)updateFinished:(id)a3;
@end

@implementation UAFAutoAssetProgress

+ (id)getSerialQueue
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_8);
  }

  v3 = qword_1ED7D1130;

  return v3;
}

void __38__UAFAutoAssetProgress_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAutoAssetProgress.Serial", v2);
  v1 = qword_1ED7D1130;
  qword_1ED7D1130 = v0;
}

- (UAFAutoAssetProgress)initWithAssetSetUsages:(id)a3 configurationManager:(id)a4 internalProgressWithStatus:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46.receiver = self;
  v46.super_class = UAFAutoAssetProgress;
  v11 = [(UAFAutoAssetProgress *)&v46 init];
  if (v11)
  {
    v40 = v10;
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v8 allKeys];
    v14 = [v12 stringWithFormat:@"%@", v13];
    v15 = *(v11 + 2);
    *(v11 + 2) = v14;

    v11[8] = 0;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 7) = 0;
    v16 = objc_opt_new();
    v17 = *(v11 + 8);
    *(v11 + 8) = v16;

    v18 = objc_opt_new();
    v19 = *(v11 + 9);
    *(v11 + 9) = v18;

    v20 = objc_opt_new();
    v21 = *(v11 + 10);
    *(v11 + 10) = v20;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = v8;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (!v23)
    {
      goto LABEL_18;
    }

    v24 = v23;
    v25 = *v43;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        v28 = [v9 getAssetSet:v27];
        v29 = v28;
        if (!v28)
        {
          v33 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v48 = "[UAFAutoAssetProgress initWithAssetSetUsages:configurationManager:internalProgressWithStatus:]";
            v49 = 2114;
            v50 = v27;
            _os_log_error_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_ERROR, "%s Could get not get configuration for for asset set %{public}@", buf, 0x16u);
          }

          v31 = MEMORY[0x1E696AD98];
          v32 = 0;
          goto LABEL_13;
        }

        v30 = [v28 autoAssetType];

        if (v30)
        {
          v31 = MEMORY[0x1E696AD98];
          v32 = 1;
LABEL_13:
          v34 = [v31 numberWithUnsignedInteger:v32];
          [*(v11 + 8) setObject:v34 forKeyedSubscript:v27];
          goto LABEL_16;
        }

        v34 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v48 = "[UAFAutoAssetProgress initWithAssetSetUsages:configurationManager:internalProgressWithStatus:]";
          v49 = 2114;
          v50 = v27;
          _os_log_debug_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEBUG, "%s No auto asset type defined for %{public}@", buf, 0x16u);
        }

LABEL_16:
      }

      v24 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (!v24)
      {
LABEL_18:

        v10 = v40;
        v35 = MEMORY[0x1BFB33950](v40);
        v36 = *(v11 + 11);
        *(v11 + 11) = v35;

        v37 = v11;
        v8 = v41;
        break;
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)reportStatus:(unint64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v5 = [(NSMutableDictionary *)self->_statuses count];
  if (v5 != [(NSMutableDictionary *)self->_autoAssetSets count])
  {
    statuses = self->_statuses;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__UAFAutoAssetProgress_reportStatus___block_invoke;
    v19[3] = &unk_1E7FFDE48;
    v19[4] = self;
    v19[5] = &v20;
    [(NSMutableDictionary *)statuses enumerateKeysAndObjectsUsingBlock:v19];
  }

  if (a3 & 0xFFFFFFFFFFFFFFFELL) == 4 || (v21[3])
  {
    totalWork = self->_totalWork;
    completedWork = self->_completedWork;
  }

  else
  {
    totalWork = 0;
    completedWork = 0;
  }

  if (self->_reportedStatus == a3 && self->_reportedCompletedWork == completedWork && self->_reportedTotalWork == totalWork)
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      reportedTotalWork = self->_reportedTotalWork;
      reportedCompletedWork = self->_reportedCompletedWork;
      *buf = 136316418;
      v27 = "[UAFAutoAssetProgress reportStatus:]";
      v28 = 2048;
      v29 = reportedCompletedWork;
      v30 = 2048;
      v31 = completedWork;
      v32 = 2048;
      v33 = reportedTotalWork;
      v34 = 2048;
      v35 = totalWork;
      v36 = 1024;
      v37 = a3;
      _os_log_debug_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEBUG, "%s Progress and status has not changed, suppressing update: %llu/%llu %llu/%llu %u", buf, 0x3Au);
    }

    goto LABEL_16;
  }

  v12 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v14 = UAFSubscriptionDownloadStatusDescription(a3);
    *buf = 136316162;
    v27 = "[UAFAutoAssetProgress reportStatus:]";
    v28 = 2114;
    v29 = name;
    v30 = 2048;
    v31 = completedWork;
    v32 = 2048;
    v33 = totalWork;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Progress for %{public}@: %llu / %llu. Status: %{public}@", buf, 0x34u);
  }

  self->_reportedTotalWork = totalWork;
  self->_reportedCompletedWork = completedWork;
  self->_reportedStatus = a3;
  if (self->_internalProgressCompletion)
  {
    v24[0] = @"statuses";
    v15 = [(NSMutableDictionary *)self->_statuses copy];
    v25[0] = v15;
    v24[1] = @"autoAssetSets";
    v16 = [(NSMutableDictionary *)self->_autoAssetSets copy];
    v25[1] = v16;
    v24[2] = @"errors";
    v17 = [(NSMutableDictionary *)self->_errors copy];
    v25[2] = v17;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    (*(self->_internalProgressCompletion + 2))(0.0);
LABEL_16:
  }

  _Block_object_dispose(&v20, 8);
  v18 = *MEMORY[0x1E69E9840];
}

void __37__UAFAutoAssetProgress_reportStatus___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 unsignedIntegerValue] <= 3)
  {
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v8];

    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (void)summarize
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [UAFAssetSetManager coalesceDownloadStatus:self->_statuses];
  if (![(NSMutableDictionary *)self->_statuses count]&& self->_updateIsFinished)
  {
    v3 = 4;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_autoAssetSets;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = v3;
    v7 = 0;
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
        v13 = [v12 downloadProgress];

        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
          v15 = [v14 downloadProgress];
          v7 += [v15 totalExpectedBytes];

          v16 = [(NSMutableDictionary *)self->_autoAssetSets objectForKeyedSubscript:v11];
          v17 = [v16 downloadProgress];
          v8 += [v17 totalWrittenBytes];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);

    p_totalWork = &self->_totalWork;
    if (v7 > self->_totalWork)
    {
      *p_totalWork = v7;
    }

    p_completedWork = &self->_completedWork;
    v3 = v21;
    if (v8 > self->_completedWork)
    {
      *p_completedWork = v8;
    }
  }

  else
  {

    p_totalWork = &self->_totalWork;
    p_completedWork = &self->_completedWork;
  }

  if (v3 == 4)
  {
    *p_completedWork = *p_totalWork;
  }

  [(UAFAutoAssetProgress *)self reportStatus:v3];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)started:(id)a3
{
  v4 = a3;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__UAFAutoAssetProgress_started___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __32__UAFAutoAssetProgress_started___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
  v3 = [*(a1 + 32) statuses];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 summarize];
}

- (void)progress:(id)a3
{
  v4 = a3;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__UAFAutoAssetProgress_progress___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __33__UAFAutoAssetProgress_progress___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [*(a1 + 40) assetSetIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) autoAssetSets];
    v7 = [*(a1 + 40) assetSetIdentifier];
    [v6 setObject:v5 forKeyedSubscript:v7];

    v8 = [*(a1 + 40) downloadProgress];

    if (v8)
    {
      v9 = [*(a1 + 40) downloadProgress];
      LOBYTE(v8) = [v9 isStalled];
    }

    v10 = [*(a1 + 32) statuses];
    v11 = [*(a1 + 40) assetSetIdentifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 unsignedIntegerValue];

    if (v13 == 3)
    {
      if ((v8 & 1) == 0)
      {
        v14 = 2;
        goto LABEL_13;
      }
    }

    else if (v13 == 2 && (v8 & 1) != 0)
    {
      v14 = 3;
LABEL_13:
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      v18 = [*(a1 + 32) statuses];
      v19 = [*(a1 + 40) assetSetIdentifier];
      [v18 setObject:v17 forKeyedSubscript:v19];
    }

    v20 = *(a1 + 32);
    v21 = *MEMORY[0x1E69E9840];

    [v20 summarize];
    return;
  }

  v15 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v22 = [*(a1 + 40) assetSetIdentifier];
    v23 = 136315394;
    v24 = "[UAFAutoAssetProgress progress:]_block_invoke";
    v25 = 2114;
    v26 = v22;
    _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v23, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finished:(id)a3 withStatus:(unint64_t)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[UAFAutoAssetProgress getSerialQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__UAFAutoAssetProgress_finished_withStatus_withError___block_invoke;
  v13[3] = &unk_1E7FFD968;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __54__UAFAutoAssetProgress_finished_withStatus_withError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [*(a1 + 32) errors];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    v7 = [*(a1 + 32) statuses];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 40)];

    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69E9840];

    [v8 summarize];
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = 136315394;
      v14 = "[UAFAutoAssetProgress finished:withStatus:withError:]_block_invoke";
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v13, 0x16u);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)updateFinished:(id)a3
{
  v4 = a3;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__UAFAutoAssetProgress_updateFinished___block_invoke;
  v7[3] = &unk_1E7FFD5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __39__UAFAutoAssetProgress_updateFinished___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpdateIsFinished:1];
  [*(a1 + 32) summarize];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)finishedOutOfSpace:(id)a3
{
  v4 = a3;
  v5 = +[UAFAutoAssetProgress getSerialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__UAFAutoAssetProgress_finishedOutOfSpace___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__UAFAutoAssetProgress_finishedOutOfSpace___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statuses];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:5];
    v5 = [*(a1 + 32) statuses];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69E9840];

    [v6 summarize];
  }

  else
  {
    v8 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 136315394;
      v12 = "[UAFAutoAssetProgress finishedOutOfSpace:]_block_invoke";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Received progress for unknown auto asset set %{public}@", &v11, 0x16u);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

@end