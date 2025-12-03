@interface SymptomsTrialManager
- (SymptomsTrialManager)initWithTrialProjectID:(int)d namespaceName:(id)name factorName:(id)factorName queue:(id)queue;
- (id)readParametersFromPlist:(id)plist;
- (void)addDelegate:(id)delegate;
- (void)notifyRegisteredClientsForExperimentEnd;
- (void)notifyRegisteredClientsForExperimentStart:(id)start trialExperimentIdentifiers:(id)identifiers;
- (void)removeDelegate:(id)delegate;
- (void)subscribeToTrialUpdates;
- (void)unsubscribeFromTrialUpdates;
- (void)updateTreatment;
@end

@implementation SymptomsTrialManager

- (SymptomsTrialManager)initWithTrialProjectID:(int)d namespaceName:(id)name factorName:(id)factorName queue:(id)queue
{
  nameCopy = name;
  factorNameCopy = factorName;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = SymptomsTrialManager;
  v14 = [(SymptomsTrialManager *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_trialProjectID = d;
    objc_storeStrong(&v14->_trialNamespaceName, name);
    objc_storeStrong(&v15->_trialFactorName, factorName);
    objc_storeStrong(&v15->_queue, queue);
    v16 = [MEMORY[0x277D73660] clientWithIdentifier:v15->_trialProjectID];
    trialClient = v15->_trialClient;
    v15->_trialClient = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    delegates = v15->_delegates;
    v15->_delegates = v18;
  }

  return v15;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates addObject:delegateCopy];
    if ([(NSMutableSet *)self->_delegates count]== 1)
    {
      [(SymptomsTrialManager *)self subscribeToTrialUpdates];
    }
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
    if (![(NSMutableSet *)self->_delegates count])
    {
      [(SymptomsTrialManager *)self unsubscribeFromTrialUpdates];
    }
  }

  objc_sync_exit(v4);
}

- (void)subscribeToTrialUpdates
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (self->_trialClient)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      trialNamespaceName = self->_trialNamespaceName;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = trialNamespaceName;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "checkTreatmentUpdate:subcribing to %@ trial", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    trialClient = self->_trialClient;
    v7 = self->_trialNamespaceName;
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SymptomsTrialManager_subscribeToTrialUpdates__block_invoke;
    v12[3] = &unk_27898F2B0;
    objc_copyWeak(&v13, &location);
    v12[4] = &buf;
    v9 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:v7 queue:queue usingBlock:v12];
    trialToken = self->_trialToken;
    self->_trialToken = v9;

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [(SymptomsTrialManager *)self updateTreatment];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v5);
    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "checkTreatmentUpdate: nil _trialClient", &buf, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__SymptomsTrialManager_subscribeToTrialUpdates__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = WeakRetained[2];
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "checkTreatmentUpdate:%@ Trial update noted", buf, 0xCu);
  }

  v5 = WeakRetained[4];
  v12 = WeakRetained[3];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v7 = WeakRetained[2];
  v8 = WeakRetained[7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SymptomsTrialManager_subscribeToTrialUpdates__block_invoke_3;
  v11[3] = &unk_27898F288;
  v9 = *(a1 + 32);
  v11[4] = WeakRetained;
  v11[5] = v9;
  [v5 downloadLevelsForFactors:v6 withNamespace:v7 queue:v8 options:0 progress:0 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __47__SymptomsTrialManager_subscribeToTrialUpdates__block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = otherLogHandle;
  if (a2)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 16);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "subscribeToTrialUpdates:%@ Trial updated with new assets", &v10, 0xCu);
    }

    [*(a1 + 32) updateTreatment];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = *(*(a1 + 32) + 16);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "subscribeToTrialUpdates:%@ Trial not updated with new assets because %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromTrialUpdates
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_trialToken)
  {
    v3 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      trialNamespaceName = self->_trialNamespaceName;
      v6 = 138412290;
      v7 = trialNamespaceName;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "unsubscribeFromTrialUpdates:%@", &v6, 0xCu);
    }

    [(TRIClient *)self->_trialClient removeUpdateHandlerForToken:self->_trialToken];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTreatment
{
  v37 = *MEMORY[0x277D85DE8];
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_trialNamespaceName];
  v4 = otherLogHandle;
  v5 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      trialNamespaceName = self->_trialNamespaceName;
      *v36 = 138412546;
      *&v36[4] = trialNamespaceName;
      *&v36[12] = 2112;
      *&v36[14] = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "updateTreatment:%@ experimentIdentifiers is valid: %@", v36, 0x16u);
    }

    v7 = [(TRIClient *)self->_trialClient levelForFactor:self->_trialFactorName withNamespaceName:self->_trialNamespaceName];
    v8 = v7;
    if (v7)
    {
      fileValue = [v7 fileValue];
      if (fileValue)
      {
        v10 = fileValue;
        fileValue2 = [v8 fileValue];
        path = [fileValue2 path];
        if (path)
        {
          v13 = path;
          fileValue3 = [v8 fileValue];
          path2 = [fileValue3 path];
          v16 = [path2 length];

          if (v16)
          {
            v17 = MEMORY[0x277CBEBC0];
            fileValue4 = [v8 fileValue];
            path3 = [fileValue4 path];
            v20 = [v17 fileURLWithPath:path3];

            v21 = otherLogHandle;
            if (v20)
            {
              if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v22 = self->_trialNamespaceName;
                *v36 = 138412546;
                *&v36[4] = v22;
                *&v36[12] = 2112;
                *&v36[14] = v20;
                _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "updateTreatment:%@ Valid Bundle Path (%@)", v36, 0x16u);
              }

              fileValue5 = [(SymptomsTrialManager *)self readParametersFromPlist:v20];
              [(SymptomsTrialManager *)self notifyRegisteredClientsForExperimentStart:fileValue5 trialExperimentIdentifiers:v3];
            }

            else
            {
              if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
              {
LABEL_27:

                goto LABEL_22;
              }

              v33 = self->_trialNamespaceName;
              v34 = v21;
              fileValue5 = [v8 fileValue];
              path4 = [fileValue5 path];
              *v36 = 138412546;
              *&v36[4] = v33;
              *&v36[12] = 2112;
              *&v36[14] = path4;
              _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "updateTreatment:%@ Invalid Bundle Path (%@)", v36, 0x16u);
            }

            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      v30 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_trialNamespaceName;
        *v36 = 138412290;
        *&v36[4] = v31;
        v27 = "updateTreatment:%@ Invalid Asset Path. Treatment ended. Clear trial plist.";
        v28 = v30;
        v29 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_20;
      }
    }

    else
    {
      v25 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v26 = self->_trialNamespaceName;
        *v36 = 138412290;
        *&v36[4] = v26;
        v27 = "updateTreatment:%@ invalid Trial Level";
        v28 = v25;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_23255B000, v28, v29, v27, v36, 0xCu);
      }
    }

    [(SymptomsTrialManager *)self notifyRegisteredClientsForExperimentEnd];
LABEL_22:

    goto LABEL_23;
  }

  if (v5)
  {
    v24 = self->_trialNamespaceName;
    *v36 = 138412290;
    *&v36[4] = v24;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "updateTreatment:%@ experimentIdentifiers nil. Experiment has ended", v36, 0xCu);
  }

  [(SymptomsTrialManager *)self notifyRegisteredClientsForExperimentEnd];
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)readParametersFromPlist:(id)plist
{
  v15 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:plistCopy error:&v12];
  v5 = v12;
  v6 = [v4 count];
  v7 = otherLogHandle;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "trial dictionary is %@", buf, 0xCu);
    }

    v9 = [v4 objectForKeyedSubscript:@"com.apple.symptomsd"];
  }

  else
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = plistCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "unable to read contents of trialBundlePathURL: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)notifyRegisteredClientsForExperimentStart:(id)start trialExperimentIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  startCopy = start;
  identifiersCopy = identifiers;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_delegates;
  v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          trialProjectID = self->_trialProjectID;
          trialNamespaceName = self->_trialNamespaceName;
          trialFactorName = self->_trialFactorName;
          treatmentId = [identifiersCopy treatmentId];
          [v10 trialExperimentWithProjectIDHasBegun:trialProjectID namespaceName:trialNamespaceName factorName:trialFactorName treatmentID:treatmentId trialConfiguration:startCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyRegisteredClientsForExperimentEnd
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_delegates;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 trialExperimentWithProjectIDHasEnded:self->_trialProjectID namespaceName:self->_trialNamespaceName factorName:{self->_trialFactorName, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end