@interface CoreMediaDownloadMonitor
- (CoreMediaDownloadMonitor)initWithQueue:(id)a3;
- (id)getState;
- (void)_evaluateProperties;
- (void)_newCoreMediaAssetDownloadEvent:(id)a3;
- (void)_noteCoreMediaAssetDownloadEvent:(unint64_t)a3 downloadUUID:(id)a4 onBehalfOf:(id)a5 duration:(double)a6;
- (void)setConfiguration:(id)a3;
- (void)setUserInitiatedDownloadInHysteresis:(BOOL)a3;
- (void)setUserInitiatedDownloadInProgress:(BOOL)a3;
- (void)setUserInitiatedDownloadInProgressOrHysteresis:(BOOL)a3;
@end

@implementation CoreMediaDownloadMonitor

- (void)_evaluateProperties
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_downloads;
  v2 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v26 = *v29;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(NSMutableDictionary *)self->_downloads objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        v12 = [v11 originatedInForeground];
        v13 = [v11 downloadState];
        if (v13 == 4)
        {
          v14 = v7 + 1;
        }

        else
        {
          v14 = v7;
        }

        if (v13 == 3)
        {
          v15 = v6 + 1;
        }

        else
        {
          v15 = v6;
        }

        if (v13 == 3)
        {
          v14 = v7;
        }

        if (v13 == 2)
        {
          v16 = v7 + 1;
        }

        else
        {
          v16 = v7;
        }

        if (v13 == 1)
        {
          v17 = v5 + 1;
        }

        else
        {
          v17 = v5;
        }

        if (v13 == 1)
        {
          v16 = v7;
        }

        if (v13 <= 2)
        {
          v15 = v6;
        }

        else
        {
          v17 = v5;
        }

        if (v13 <= 2)
        {
          v14 = v16;
        }

        if (v13 == 4)
        {
          v18 = v4 + 1;
        }

        else
        {
          v18 = v4;
        }

        if (v13 == 3)
        {
          v18 = v4;
          v19 = v8 + 1;
        }

        else
        {
          v19 = v8;
        }

        if (v13 == 2)
        {
          v20 = v4 + 1;
        }

        else
        {
          v20 = v4;
        }

        if (v13 == 1)
        {
          v20 = v4;
          v21 = v9 + 1;
        }

        else
        {
          v21 = v9;
        }

        if (v13 > 2)
        {
          v22 = v9;
        }

        else
        {
          v18 = v20;
          v19 = v8;
          v22 = v21;
        }

        if (v12)
        {
          v4 = v18;
        }

        else
        {
          v5 = v17;
        }

        if (v12)
        {
          v8 = v19;
          v9 = v22;
        }

        else
        {
          v6 = v15;
          v7 = v14;
        }
      }

      v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  self->_numInProgressForegroundDownloads = v9;
  self->_numPausedForegroundDownloads = v8;
  self->_numInHysteresisForegroundDownloads = v4;
  self->_numInProgressBackgroundDownloads = v5;
  self->_numPausedBackgroundDownloads = v6;
  self->_numInHysteresisBackgroundDownloads = v7;
  [(CoreMediaDownloadMonitor *)self setUserInitiatedDownloadInProgress:v9 > 0];
  [(CoreMediaDownloadMonitor *)self setUserInitiatedDownloadInHysteresis:v4 > 0];
  if ((v9 + v4 < 0) ^ __OFADD__(v9, v4) | (v9 + v4 == 0))
  {
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  [(CoreMediaDownloadMonitor *)self setUserInitiatedDownloadInProgressOrHysteresis:v23];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_noteCoreMediaAssetDownloadEvent:(unint64_t)a3 downloadUUID:(id)a4 onBehalfOf:(id)a5 duration:(double)a6
{
  v9 = a4;
  v10 = a5;
  downloads = self->_downloads;
  if (v9)
  {
    v12 = [(NSMutableDictionary *)downloads objectForKeyedSubscript:v9];
    v13 = v12;
    if (a3 != 2 && !v12)
    {
      v13 = objc_alloc_init(MediaDownloadInstance);
      [(MediaDownloadInstance *)v13 setOriginatedInForeground:+[AppStateMonitor hasAnyForegroundApp]];
      [(MediaDownloadInstance *)v13 setOriginator:v10];
      [(NSMutableDictionary *)self->_downloads setObject:v13 forKeyedSubscript:v9];
    }

    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        [(MediaDownloadInstance *)v13 setDownloadState:1];
      }

      else if (a3 == 2)
      {
        [(MediaDownloadInstance *)v13 setDownloadState:4];
        v14 = dispatch_time(0, (self->_userInitiatedDownloadHysteresis * 1000000000.0));
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__CoreMediaDownloadMonitor__noteCoreMediaAssetDownloadEvent_downloadUUID_onBehalfOf_duration___block_invoke;
        block[3] = &unk_27898A7D0;
        block[4] = self;
        v29 = v9;
        dispatch_after(v14, queue, block);
        v16 = v29;
LABEL_15:
      }

LABEL_16:

      goto LABEL_17;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        [(MediaDownloadInstance *)v13 setDownloadState:1];
        [(MediaDownloadInstance *)v13 setResumeCount:[(MediaDownloadInstance *)v13 resumeCount]+ 1];
      }

      goto LABEL_16;
    }

    [(MediaDownloadInstance *)v13 setDownloadState:2];
    v17 = [(MediaDownloadInstance *)v13 resumeCount];
    v18 = dispatch_time(0, (self->_userInitiatedDownloadHysteresis * 1000000000.0));
    v19 = self->_queue;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __94__CoreMediaDownloadMonitor__noteCoreMediaAssetDownloadEvent_downloadUUID_onBehalfOf_duration___block_invoke_2;
    v23 = &unk_27898A758;
    v24 = self;
    v25 = v9;
    v26 = v13;
    v27 = v17;
    dispatch_after(v18, v19, &v20);

    v16 = v25;
    goto LABEL_15;
  }

  [(NSMutableDictionary *)downloads removeAllObjects];
LABEL_17:
  [(CoreMediaDownloadMonitor *)self _evaluateProperties:v20];
}

void __94__CoreMediaDownloadMonitor__noteCoreMediaAssetDownloadEvent_downloadUUID_onBehalfOf_duration___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 downloadState] == 4;
    v2 = v4;
    if (v3)
    {
      [*(*(a1 + 32) + 40) setObject:0 forKeyedSubscript:*(a1 + 40)];
      [*(a1 + 32) _evaluateProperties];
      v2 = v4;
    }
  }
}

void __94__CoreMediaDownloadMonitor__noteCoreMediaAssetDownloadEvent_downloadUUID_onBehalfOf_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 downloadState] == 2;
    v2 = v4;
    if (v3)
    {
      v3 = [*(a1 + 48) resumeCount] == *(a1 + 56);
      v2 = v4;
      if (v3)
      {
        [*(a1 + 48) setDownloadState:3];
        [*(a1 + 32) _evaluateProperties];
        v2 = v4;
      }
    }
  }
}

- (void)_newCoreMediaAssetDownloadEvent:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v34 = [a3 userInfo];
  v4 = [v34 keyEnumerator];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v34;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "_newCoreMediaAssetDownloadEvent receive %@", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v33 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (!v33)
  {
    goto LABEL_42;
  }

  v7 = 0;
  v32 = *v43;
  *&v6 = 134218242;
  v30 = v6;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      v9 = v7;
      if (*v43 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * i);

      v10 = [v34 objectForKeyedSubscript:v7];
      v11 = [v10 eventKey];
      v12 = [v10 eventData];
      v13 = [SymptomStore keyFromSymptomName:@"SYMPTOM_TRANSPORT_DISCONNECT"];
      v14 = [v11 isEqualToString:v13];

      if (v14)
      {
        if ([v10 processName] && (!strcmp(objc_msgSend(v10, "processName"), "mediaserverd") || !strcmp(objc_msgSend(v10, "processName"), "mediaplaybackd")))
        {
          queue = self->_queue;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __60__CoreMediaDownloadMonitor__newCoreMediaAssetDownloadEvent___block_invoke;
          v41[3] = &unk_27898A0C8;
          v41[4] = self;
          dispatch_async(queue, v41);
        }

        goto LABEL_40;
      }

      if ((*(v12 + 4) & 4) == 0)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 40);
      if ((v15 & 1) == 0)
      {
        v28 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v10;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "CoreMediaDownloadMonitor, asset download prohibits cell, event ignored %@", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if ((~*(v12 + 40) & 6) != 0)
      {
        v16 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = v30;
          v47 = v15;
          v48 = 2112;
          v49 = v10;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "CoreMediaDownloadMonitor, asset download with (0x%llx) restrictions, continue %@", buf, 0x16u);
        }
      }

LABEL_14:
      v17 = [v10 eventQualifierStringForKey:{@"1", v30}];
      v18 = [v10 processId];
      if (self->_assetDownloadProcessId != v18)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__CoreMediaDownloadMonitor__newCoreMediaAssetDownloadEvent___block_invoke_39;
        block[3] = &unk_27898AFE0;
        block[4] = self;
        block[5] = v18;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      v19 = [v10 eventQualifiers];
      v20 = [v19 objectForKeyedSubscript:@"2"];

      if (v20 && [v20 length] == 16)
      {
        v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v20, "bytes")}];
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v12 + 4);
      if (v22)
      {
        v23 = *(v12 + 24);
      }

      else
      {

        v23 = 0;
        v21 = 0;
        v22 = *(v12 + 4);
      }

      v24 = 86400.0;
      if ((v22 & 2) != 0)
      {
        v24 = *(v12 + 32) / 1000.0;
      }

      v25 = outrankLogHandle;
      if (v21)
      {
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 134218754;
          v47 = v23;
          v48 = 2112;
          v49 = v17;
          v50 = 2112;
          v51 = v21;
          v52 = 2048;
          v53 = v24;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "CoreMediaDownloadMonitor, Download event %lld on behalf of %@ download UUID %@ duration %.3f", buf, 0x2Au);
        }

        v26 = self->_queue;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __60__CoreMediaDownloadMonitor__newCoreMediaAssetDownloadEvent___block_invoke_45;
        v35[3] = &unk_27898D0E0;
        v35[4] = self;
        v38 = v23;
        v36 = v21;
        v37 = v17;
        v39 = v24;
        dispatch_async(v26, v35);
      }

      else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v10;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "CoreMediaDownloadMonitor, incorrect asset download symptom format %@", buf, 0xCu);
      }
    }

    v33 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_41:

LABEL_42:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __60__CoreMediaDownloadMonitor__newCoreMediaAssetDownloadEvent___block_invoke_39(uint64_t a1)
{
  result = [TransportHandler requestExplicitDisconnectSymptom:*(a1 + 40)];
  *(*(a1 + 32) + 16) = *(a1 + 40);
  return result;
}

- (void)setUserInitiatedDownloadInProgress:(BOOL)a3
{
  if (self->_userInitiatedDownloadInProgress != a3)
  {
    [(CoreMediaDownloadMonitor *)self willChangeValueForKey:@"userInitiatedDownloadInProgress"];
    self->_userInitiatedDownloadInProgress = a3;

    [(CoreMediaDownloadMonitor *)self didChangeValueForKey:@"userInitiatedDownloadInProgress"];
  }
}

- (void)setUserInitiatedDownloadInProgressOrHysteresis:(BOOL)a3
{
  if (self->_userInitiatedDownloadInProgressOrHysteresis != a3)
  {
    [(CoreMediaDownloadMonitor *)self willChangeValueForKey:@"userInitiatedDownloadInProgressOrHysteresis"];
    self->_userInitiatedDownloadInProgressOrHysteresis = a3;

    [(CoreMediaDownloadMonitor *)self didChangeValueForKey:@"userInitiatedDownloadInProgressOrHysteresis"];
  }
}

- (void)setUserInitiatedDownloadInHysteresis:(BOOL)a3
{
  if (self->_userInitiatedDownloadInHysteresis != a3)
  {
    [(CoreMediaDownloadMonitor *)self willChangeValueForKey:@"userInitiatedDownloadInHysteresis"];
    self->_userInitiatedDownloadInHysteresis = a3;

    [(CoreMediaDownloadMonitor *)self didChangeValueForKey:@"userInitiatedDownloadInHysteresis"];
  }
}

- (id)getState
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CoreMediaDownloadMonitor foreground active %d paused %d hysteresis %d background active %d paused %d hysteresis %d", self->_numInProgressForegroundDownloads, self->_numPausedForegroundDownloads, self->_numInHysteresisForegroundDownloads, self->_numInProgressBackgroundDownloads, self->_numPausedBackgroundDownloads, self->_numInHysteresisBackgroundDownloads];
  [v3 addObject:v4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_downloads;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = [(NSMutableDictionary *)self->_downloads objectForKeyedSubscript:v10];
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        v13 = [v11 originatedInForeground];
        v14 = [v11 downloadState] - 1;
        v15 = "unknown";
        if (v14 <= 3)
        {
          v15 = off_278990068[v14];
        }

        v4 = [v12 initWithFormat:@"CoreMediaDownloadMonitor   d/l with UUID %@  fg %d state %s", v10, v13, v15];

        [v3 addObject:v4];
        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if (self->_userInitiatedDownloadHysteresis != 10.0)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CoreMediaDownloadMonitor   Overriding    %@  %f  ->  %f", @"fgMediaDownloadReportHysteresis", 0x4024000000000000, *&self->_userInitiatedDownloadHysteresis];

    [v3 addObject:v16];
    v4 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  [v4 extractKey:@"fgMediaDownloadReportHysteresis" toDouble:&self->_userInitiatedDownloadHysteresis defaultTo:10.0];
  v5 = [v4 objectForKey:@"restoreDefaults"];

  if (v5)
  {

    [(CoreMediaDownloadMonitor *)self restoreDefaults];
  }
}

- (CoreMediaDownloadMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CoreMediaDownloadMonitor;
  v6 = [(CoreMediaDownloadMonitor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    downloads = v7->_downloads;
    v7->_downloads = v8;

    [(CoreMediaDownloadMonitor *)v7 restoreDefaults];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__CoreMediaDownloadMonitor_initWithQueue___block_invoke;
    v15[3] = &unk_27898A690;
    v11 = v7;
    v16 = v11;
    v12 = [v10 addObserverForName:@"kNotificationCoreMediaAssetDownload" object:0 queue:0 usingBlock:v15];
    assetDownloadObserver = v11->_assetDownloadObserver;
    v11->_assetDownloadObserver = v12;
  }

  return v7;
}

void __42__CoreMediaDownloadMonitor_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreMediaDownloadMonitor_initWithQueue___block_invoke_2;
  v7[3] = &unk_27898A7D0;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __42__CoreMediaDownloadMonitor_initWithQueue___block_invoke_2(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CoreMediaDownloadMonitor received notification", v4, 2u);
  }

  return [*(a1 + 32) _newCoreMediaAssetDownloadEvent:*(a1 + 40)];
}

@end