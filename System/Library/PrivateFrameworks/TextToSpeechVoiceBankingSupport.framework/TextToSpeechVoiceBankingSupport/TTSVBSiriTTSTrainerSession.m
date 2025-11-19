@interface TTSVBSiriTTSTrainerSession
- (TTSVBSiriTTSTrainerSession)init;
- (id)_replyQueue:(id)a3;
- (id)getAllAvailableLocalesForTrainingVersion:(id)a3;
- (id)installableTrainingAssetsForLocaleID:(id)a3 name:(id)a4 type:(int64_t)a5;
- (id)installedTrainingAssetsForLocaleID:(id)a3 name:(id)a4 type:(int64_t)a5;
- (void)cancelTask:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5;
- (void)cancelTaskWithID:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5;
- (void)discardTrainingTasksReplyOnQueue:(id)a3 completionHandler:(id)a4;
- (void)fetchTrainingScriptsWithLocaleID:(id)a3 scriptType:(id)a4 replyOnQueue:(id)a5 completion:(id)a6;
- (void)getAllTasksReplyOnQueue:(id)a3 statusHandler:(id)a4;
- (void)getTaskByID:(id)a3 replyOnQueue:(id)a4 statusHandler:(id)a5;
- (void)getTasksByIDs:(id)a3 replyOnQueue:(id)a4 statusHandler:(id)a5;
- (void)installAsset:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)startTraining:(id)a3 replyOnQueue:(id)a4 trainingStartedHandler:(id)a5;
- (void)uninstallAsset:(id)a3;
@end

@implementation TTSVBSiriTTSTrainerSession

- (TTSVBSiriTTSTrainerSession)init
{
  v11.receiver = self;
  v11.super_class = TTSVBSiriTTSTrainerSession;
  v2 = [(TTSVBSiriTTSTrainerSession *)&v11 init];
  if (v2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = getSiriTTSTrainerSessionClass_softClass;
    v16 = getSiriTTSTrainerSessionClass_softClass;
    if (!getSiriTTSTrainerSessionClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getSiriTTSTrainerSessionClass_block_invoke;
      v12[3] = &unk_2789C3AA0;
      v12[4] = &v13;
      __getSiriTTSTrainerSessionClass_block_invoke(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    v5 = objc_alloc_init(v3);
    [(TTSVBSiriTTSTrainerSession *)v2 setSession:v5];

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v8 = dispatch_queue_create("com.apple.voicebanking.SiriTraining", v7);
    [(TTSVBSiriTTSTrainerSession *)v2 setSiriTrainingQueue:v8];

    v9 = dispatch_queue_create("com.apple.voicebanking.trainersession.callout", v7);
    [(TTSVBSiriTTSTrainerSession *)v2 setCalloutQueue:v9];
  }

  return v2;
}

- (id)getAllAvailableLocalesForTrainingVersion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogTTSVBSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_233109000, v5, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for available locales for training version=%@", &v15, 0xCu);
  }

  v6 = [v4 isEqual:@"v2"];
  v7 = [(TTSVBSiriTTSTrainerSession *)self session];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (v6)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [(TTSVBSiriTTSTrainerSession *)self session];
    v11 = [v10 getAllAvailableLocalesWithVer:v9];
  }

  else if (v6)
  {
    v11 = &unk_28487D9D8;
  }

  else
  {
    v11 = &unk_28487D9C0;
  }

  v12 = LogTTSVBSiri();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_233109000, v12, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for available locales for training version=%@. %@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)installableTrainingAssetsForLocaleID:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = LogTTSVBSiri();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2048;
    v36 = a5;
    _os_log_impl(&dword_233109000, v10, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for installable assets language=%@ name=%@ type=%lu", buf, 0x20u);
  }

  v11 = [(TTSVBSiriTTSTrainerSession *)self session];
  v12 = [v11 installableTrainingAssetsForLanguage:v8 name:v9 type:a5];

  v13 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [TTSVBSiriTTSTrainingAsset alloc];
        v21 = [(TTSVBSiriTTSTrainingAsset *)v20 initWithSiriTTSTrainingAsset:v19, v26];
        [v13 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v22 = LogTTSVBSiri();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    *buf = 138412290;
    v32 = v23;
    _os_log_impl(&dword_233109000, v22, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for installable assets. Got %@ results", buf, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)installedTrainingAssetsForLocaleID:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = LogTTSVBSiri();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2048;
    v42 = a5;
    _os_log_impl(&dword_233109000, v10, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for installed assets language=%@ name=%@ type=%lu", buf, 0x20u);
  }

  v11 = [(TTSVBSiriTTSTrainerSession *)self session];
  v29 = v9;
  v30 = v8;
  v12 = [v11 installedTrainingAssetsForLanguage:v8 name:v9 type:a5];

  v13 = LogTTSVBSiri();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_233109000, v13, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for installed assets. Got %@ results", buf, 0xCu);
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    v31 = v16;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        v22 = [[TTSVBSiriTTSTrainingAsset alloc] initWithSiriTTSTrainingAsset:v21];
        [v15 addObject:v22];
        v23 = LogTTSVBSiri();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v21 name];
          v25 = [v21 factor];
          v26 = [v21 path];
          *buf = 138412802;
          v38 = v24;
          v39 = 2112;
          v40 = v25;
          v41 = 2112;
          v42 = v26;
          _os_log_debug_impl(&dword_233109000, v23, OS_LOG_TYPE_DEBUG, "Installed training asset: %@ - %@ - %@", buf, 0x20u);

          v16 = v31;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)installAsset:(id)a3 progress:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a3 asset];
  v11 = LogTTSVBSiri();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 name];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_DEFAULT, "About to request install of siri training asset=%@", buf, 0xCu);
  }

  v13 = [(TTSVBSiriTTSTrainerSession *)self session];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke;
  v19[3] = &unk_2789C3BF0;
  v20 = v8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32;
  v17[3] = &unk_2789C3C18;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  [v13 installTrainingAsset:v10 progress:v19 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke(uint64_t a1, float a2)
{
  v4 = LogTTSVBSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_cold_1(v4, a2);
  }

  return (*(*(a1 + 32) + 16))(a2);
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogTTSVBSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)uninstallAsset:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogTTSVBSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_233109000, v5, OS_LOG_TYPE_DEFAULT, "About to request uninstall of siri training asset=%@", &v10, 0xCu);
  }

  v7 = [(TTSVBSiriTTSTrainerSession *)self session];
  v8 = [v4 asset];
  [v7 uninstallTrainingAsset:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchTrainingScriptsWithLocaleID:(id)a3 scriptType:(id)a4 replyOnQueue:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = LogTTSVBSiri();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_233109000, v14, OS_LOG_TYPE_DEFAULT, "About to fetch training script data with locale: '%@' and script type: '%@'", buf, 0x16u);
  }

  v15 = [(TTSVBSiriTTSTrainerSession *)self session];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke;
  v20[3] = &unk_2789C3C68;
  v21 = v10;
  v22 = self;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  [v15 getRecordingMetadata:v18 name:v11 reply:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogTTSVBSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_233109000, v7, OS_LOG_TYPE_DEFAULT, "Did fetch training script data with locale: %@. Path=%@ Error=%@", buf, 0x20u);
  }

  v9 = [*(a1 + 40) _replyQueue:*(a1 + 48)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke_34;
  block[3] = &unk_2789C3C40;
  v10 = *(a1 + 56);
  v16 = v5;
  v17 = v10;
  v15 = v6;
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startTraining:(id)a3 replyOnQueue:(id)a4 trainingStartedHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke;
  v15[3] = &unk_2789C3CE0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) task];
    v4 = [*(a1 + 40) session];
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "Dispatching training task to session. task=%@. session=%@", buf, 0x16u);
  }

  v5 = [*(a1 + 40) session];
  v6 = [*(a1 + 32) task];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_37;
  v9[3] = &unk_2789C3CB8;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  [v5 startRequest:v6 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_2;
  block[3] = &unk_2789C3C90;
  v12 = v6;
  v8 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_2(void *a1)
{
  v3 = [[TTSVBSiriTTSTrainerTask alloc] initWithSiriTTSTrainerTask:a1[4]];
  v2 = a1[5];
  (*(a1[6] + 16))();
}

- (void)getTaskByID:(id)a3 replyOnQueue:(id)a4 statusHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke;
  v15[3] = &unk_2789C3CE0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "About to call getTaskById task=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) session];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_40;
  v8[3] = &unk_2789C3CB8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v6;
  v10 = *(a1 + 56);
  [v4 getTaskById:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_2;
  block[3] = &unk_2789C3C90;
  v12 = v6;
  v8 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [[TTSVBSiriTTSTrainerTask alloc] initWithSiriTTSTrainerTask:a1[4]];
  v3 = LogTTSVBSiri();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_233109000, v3, OS_LOG_TYPE_INFO, "getTaskById did finish. calling completion handler. task=%@", &v6, 0xCu);
  }

  v4 = a1[5];
  (*(a1[6] + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getTasksByIDs:(id)a3 replyOnQueue:(id)a4 statusHandler:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a4;
  v24 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = LogTTSVBSiri();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v41 = v12;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_INFO, "Will request tasks for IDs %@", buf, 0xCu);
  }

  v13 = dispatch_group_create();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        dispatch_group_enter(v13);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke;
        v31[3] = &unk_2789C3D08;
        v32 = v9;
        v33 = v10;
        v34 = v13;
        [(TTSVBSiriTTSTrainerSession *)self getTaskByID:v18 replyOnQueue:0 statusHandler:v31];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  v19 = [(TTSVBSiriTTSTrainerSession *)self _replyQueue:v25];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke_2;
  block[3] = &unk_2789C3D30;
  v28 = v9;
  v29 = v10;
  v30 = v24;
  v20 = v24;
  v21 = v10;
  v22 = v9;
  dispatch_group_notify(v13, v19, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObject:a2];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "Finished requesting getTasksByIDs. Calling completion handler. tasks=%@ errors=%@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getAllTasksReplyOnQueue:(id)a3 statusHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke;
  block[3] = &unk_2789C3D30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke(uint64_t a1)
{
  v2 = LogTTSVBSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "About to call getAllTasks", buf, 2u);
  }

  v3 = [*(a1 + 32) session];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_45;
  v5[3] = &unk_2789C3D80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 getAllTasks:v5];
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_2;
  v6[3] = &unk_2789C3D58;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [TTSVBSiriTTSTrainerTask alloc];
        v10 = [(TTSVBSiriTTSTrainerTask *)v9 initWithSiriTTSTrainerTask:v8, v14];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = LogTTSVBSiri();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_INFO, "getAllTasks did finish. calling completion handler. tasks=%@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)discardTrainingTasksReplyOnQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LogTTSVBSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v8, OS_LOG_TYPE_INFO, "About to call cleanUpTaskQueue", buf, 2u);
  }

  v9 = [(TTSVBSiriTTSTrainerSession *)self session];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke;
  v12[3] = &unk_2789C3DD0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 cleanUpTaskQueue:v12];
}

void __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogTTSVBSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v4, OS_LOG_TYPE_INFO, "cleanUpTaskQueue finished. calling completion handler", buf, 2u);
  }

  v5 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke_47;
  v8[3] = &unk_2789C3DA8;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)cancelTask:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogTTSVBSiri();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 taskID];
    *buf = 138412290;
    v25 = v12;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_INFO, "Will request cancel of training task: %@", buf, 0xCu);
  }

  v13 = [(TTSVBSiriTTSTrainerSession *)self session];
  v14 = [v8 task];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke;
  v19[3] = &unk_2789C3DF8;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v23 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v13 cancelTask:v14 reply:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogTTSVBSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) taskID];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_233109000, v4, OS_LOG_TYPE_INFO, "cancelTask finished id=%@. calling completion handler", buf, 0xCu);
  }

  v6 = [*(a1 + 40) _replyQueue:*(a1 + 48)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke_48;
  v10[3] = &unk_2789C3DA8;
  v7 = *(a1 + 56);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelTaskWithID:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke;
  v12[3] = &unk_2789C3E20;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(TTSVBSiriTTSTrainerSession *)self getTaskByID:a3 replyOnQueue:0 statusHandler:v12];
}

void __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 _replyQueue:*(a1 + 40)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke_2;
    v8[3] = &unk_2789C3DA8;
    v10 = *(a1 + 48);
    v9 = v5;
    dispatch_async(v7, v8);
  }

  else
  {
    [v6 cancelTask:a2 replyOnQueue:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (id)_replyQueue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TTSVBSiriTTSTrainerSession *)self calloutQueue];
  }

  v7 = v6;

  return v7;
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_cold_1(os_log_t log, float a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_233109000, log, OS_LOG_TYPE_DEBUG, "Siri training asset install progress=%.2f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_233109000, a2, OS_LOG_TYPE_DEBUG, "Siri training asset install finished. ErrorOrNil=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end