@interface UAFAssetSetProgress
+ (id)getSerialQueue;
+ (id)validProgressTypes;
- (UAFAssetSetProgress)initWithName:(id)name maxProgressBeforeComplete:(unint64_t)complete progressWithStatus:(id)status;
- (void)progress:(id)progress completed:(unint64_t)completed total:(unint64_t)total status:(unint64_t)status context:(id)context;
- (void)reportPercent:(unint64_t)percent status:(unint64_t)status totalKnown:(BOOL)known;
- (void)summarize;
- (void)updateFinished:(id)finished;
@end

@implementation UAFAssetSetProgress

+ (id)validProgressTypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"AutoAsset";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)getSerialQueue
{
  if (_MergedGlobals_17 != -1)
  {
    dispatch_once(&_MergedGlobals_17, &__block_literal_global_18);
  }

  v3 = qword_1ED7D1230;

  return v3;
}

void __37__UAFAssetSetProgress_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetProgress.Serial", v2);
  v1 = qword_1ED7D1230;
  qword_1ED7D1230 = v0;
}

- (UAFAssetSetProgress)initWithName:(id)name maxProgressBeforeComplete:(unint64_t)complete progressWithStatus:(id)status
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  statusCopy = status;
  v39.receiver = self;
  v39.super_class = UAFAssetSetProgress;
  v11 = [(UAFAssetSetProgress *)&v39 init];
  v12 = v11;
  if (v11)
  {
    v33 = statusCopy;
    objc_storeStrong(&v11->_name, name);
    v12->_completed = 0;
    v12->_total = 0;
    v12->_maxProgressBeforeComplete = complete;
    v13 = objc_opt_new();
    progresses = v12->_progresses;
    v12->_progresses = v13;

    v15 = objc_opt_new();
    statuses = v12->_statuses;
    v12->_statuses = v15;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [objc_opt_class() validProgressTypes];
    v17 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = objc_opt_new();
          [(NSMutableDictionary *)v12->_progresses setObject:v22 forKeyedSubscript:v21];

          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
          v24 = [(NSMutableDictionary *)v12->_progresses objectForKeyedSubscript:v21];
          [v24 setObject:v23 forKeyedSubscript:@"Completed"];

          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
          v26 = [(NSMutableDictionary *)v12->_progresses objectForKeyedSubscript:v21];
          [v26 setObject:v25 forKeyedSubscript:@"Total"];

          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
          [(NSMutableDictionary *)v12->_statuses setObject:v27 forKeyedSubscript:v21];
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v18);
    }

    *&v12->_reportedStatus = 0u;
    *&v12->_reportedComplete = 0u;
    statusCopy = v33;
    v28 = MEMORY[0x1BFB33950](v33);
    progressWithStatus = v12->_progressWithStatus;
    v12->_progressWithStatus = v28;

    v30 = v12;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)reportPercent:(unint64_t)percent status:(unint64_t)status totalKnown:(BOOL)known
{
  knownCopy = known;
  v47 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  validProgressTypes = [objc_opt_class() validProgressTypes];
  v8 = [validProgressTypes countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(validProgressTypes);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_progresses objectForKeyedSubscript:v12];
        v14 = [v13 objectForKeyedSubscript:@"Context"];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [validProgressTypes countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v9);
  }

  if (self->_reportedStatus == status && (!knownCopy || self->_reportedComplete == self->_completed && self->_reportedTotal == self->_total))
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      reportedComplete = self->_reportedComplete;
      reportedTotal = self->_reportedTotal;
      completed = self->_completed;
      total = self->_total;
      *buf = 136316418;
      v35 = "[UAFAssetSetProgress reportPercent:status:totalKnown:]";
      v36 = 2048;
      v37 = reportedComplete;
      v38 = 2048;
      percentCopy = completed;
      v40 = 2048;
      v41 = reportedTotal;
      v42 = 2048;
      v43 = total;
      v44 = 1024;
      LODWORD(v45) = status;
      _os_log_debug_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEBUG, "%s Progress and status has not changed, suppressing update: %llu/%llu %llu/%llu %u", buf, 0x3Au);
    }
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v17 = self->_completed;
      v18 = self->_total;
      v19 = UAFSubscriptionDownloadStatusDescription(status);
      *buf = 136316418;
      v35 = "[UAFAssetSetProgress reportPercent:status:totalKnown:]";
      v36 = 2114;
      v37 = name;
      v38 = 2048;
      percentCopy = percent;
      v40 = 2048;
      v41 = v17;
      v42 = 2048;
      v43 = v18;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Progress for %{public}@: %lu percent (%llu / %llu) . Status: %{public}@", buf, 0x3Eu);
    }
  }

  v20 = self->_total;
  self->_reportedComplete = self->_completed;
  self->_reportedTotal = v20;
  self->_reportedStatus = status;
  progressWithStatus = self->_progressWithStatus;
  if (progressWithStatus)
  {
    progressWithStatus[2](percent);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)summarize
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = +[UAFAssetSetProgress validProgressTypes];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = 0;
    v6 = 0;
    v7 = 0;
    obj = v3;
    v26 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_progresses objectForKeyedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:@"Completed"];
        unsignedLongLongValue = [v11 unsignedLongLongValue];

        v13 = [(NSMutableDictionary *)self->_progresses objectForKeyedSubscript:v9];
        v14 = [v13 objectForKeyedSubscript:@"Total"];
        unsignedLongLongValue2 = [v14 unsignedLongLongValue];

        if (!unsignedLongLongValue2)
        {
          v16 = [(NSMutableDictionary *)self->_statuses objectForKeyedSubscript:v9];
          if ([v16 unsignedIntegerValue] != 4)
          {
            v17 = [(NSMutableDictionary *)self->_statuses objectForKeyedSubscript:v9];
            v18 = [v17 unsignedIntegerValue] != 5;

            v24 |= v18;
          }
        }

        v7 += unsignedLongLongValue;
        v6 += unsignedLongLongValue2;
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);

    if (v7 > self->_completed)
    {
      self->_completed = v7;
    }

    p_total = &self->_total;
    if (v6 > self->_total)
    {
      *p_total = v6;
    }

    v20 = v24;
  }

  else
  {

    v20 = 0;
    p_total = &self->_total;
  }

  if (([UAFAssetSetManager coalesceDownloadStatus:self->_statuses]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    reportedPercent = 100;
  }

  else if ((*p_total == 0) | v20 & 1)
  {
    reportedPercent = 0;
  }

  else
  {
    v22 = self->_completed * self->_maxProgressBeforeComplete / *p_total;
    if (self->_reportedPercent <= v22)
    {
      reportedPercent = v22;
    }

    else
    {
      reportedPercent = self->_reportedPercent;
    }
  }

  self->_reportedPercent = reportedPercent;
  [UAFAssetSetProgress reportPercent:"reportPercent:status:totalKnown:" status:? totalKnown:?];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)progress:(id)progress completed:(unint64_t)completed total:(unint64_t)total status:(unint64_t)status context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  contextCopy = context;
  v14 = +[UAFAssetSetProgress validProgressTypes];
  v15 = [v14 containsObject:progressCopy];

  if (v15)
  {
    v16 = +[UAFAssetSetProgress getSerialQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__UAFAssetSetProgress_progress_completed_total_status_context___block_invoke;
    v20[3] = &unk_1E7FFEAB0;
    v20[4] = self;
    v21 = progressCopy;
    completedCopy = completed;
    totalCopy = total;
    v22 = contextCopy;
    statusCopy = status;
    dispatch_async(v16, v20);
  }

  else
  {
    v17 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      name = self->_name;
      *buf = 136315650;
      v27 = "[UAFAssetSetProgress progress:completed:total:status:context:]";
      v28 = 2114;
      v29 = progressCopy;
      v30 = 2114;
      v31 = name;
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Invalid progress type %{public}@ used for %{public}@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __63__UAFAssetSetProgress_progress_completed_total_status_context___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
  v3 = [*(a1 + 32) progresses];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  [v4 setObject:v2 forKeyedSubscript:@"Completed"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 64)];
  v6 = [*(a1 + 32) progresses];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  [v7 setObject:v5 forKeyedSubscript:@"Total"];

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) progresses];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  [v10 setObject:v8 forKeyedSubscript:@"Context"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v12 = [*(a1 + 32) statuses];
  [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];

  v13 = *(a1 + 32);

  return [v13 summarize];
}

- (void)updateFinished:(id)finished
{
  finishedCopy = finished;
  v4 = +[UAFAssetSetProgress getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UAFAssetSetProgress_updateFinished___block_invoke;
  block[3] = &unk_1E7FFD4E8;
  v7 = finishedCopy;
  v5 = finishedCopy;
  dispatch_async(v4, block);
}

@end