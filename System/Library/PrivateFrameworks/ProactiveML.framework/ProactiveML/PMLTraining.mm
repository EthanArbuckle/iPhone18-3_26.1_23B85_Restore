@interface PMLTraining
+ (id)sharedSingletonWithDirectory:(id)directory;
- (BOOL)isMultiLabelModel:(id)model;
- (PMLTraining)initWithStore:(id)store fidesStore:(id)fidesStore availableSessionsTracker:(id)tracker;
- (id)_trainWithRecipe:(id)recipe chunkData:(id)data args:(id)args error:(id *)error;
- (id)planReceivedWithPayload:(id)payload error:(id *)error;
- (id)planReceivedWithRecipe:(id)recipe attachments:(id)attachments error:(id *)error;
- (void)_deleteAllSavedRecordsFromFidesStoreSync;
- (void)_sendStatsToFidesForModel:(id)model sessionCount:(unint64_t)count positivesCount:(unint64_t)positivesCount negativesCount:(unint64_t)negativesCount support:(float)support;
- (void)_sendStatsToFidesForMultiLabelModel:(id)model sessionCount:(unint64_t)count labeledStats:(id)stats;
- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal;
- (void)deleteSessionsWithDomainIdentifiers:(id)identifiers bundleID:(id)d;
- (void)deleteSessionsWithIdentifiers:(id)identifiers bundleID:(id)d;
- (void)sendSessionStatsToFides;
- (void)trimDbWithDeferralBlock:(id)block;
@end

@implementation PMLTraining

- (id)planReceivedWithRecipe:(id)recipe attachments:(id)attachments error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  v10 = [recipeCopy objectForKeyedSubscript:@"isEspressoTraining"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v10 BOOLValue] & 1) == 0)
  {
    v30 = PML_LogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D68000, v30, OS_LOG_TYPE_FAULT, "Unable to train with Espresso because recipe flag IS_ESPRESSO_TRAINING is not set", buf, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:0];
      *error = v29 = 0;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_36;
  }

  errorCopy = error;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = attachmentsCopy;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (!v12)
  {

    v15 = 0;
    v14 = 0;
    errorCopy2 = error;
    goto LABEL_28;
  }

  v13 = v12;
  selfCopy = self;
  v40 = attachmentsCopy;
  v41 = recipeCopy;
  v42 = v10;
  v14 = 0;
  v15 = 0;
  v16 = *v45;
  do
  {
    v17 = v11;
    for (i = 0; i != v13; ++i)
    {
      if (*v45 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v44 + 1) + 8 * i);
      pathExtension = [v19 pathExtension];
      if ([pathExtension isEqualToString:@"chunk"])
      {
        v21 = v15;
        v22 = v14;
        v15 = v19;
      }

      else if ([pathExtension isEqualToString:@"bin"])
      {
        v21 = v14;
        v22 = v19;
      }

      else
      {
        v21 = v14;
        v22 = v19;
        if (![pathExtension isEqualToString:@"net"])
        {
          goto LABEL_15;
        }
      }

      v23 = v19;

      v14 = v22;
LABEL_15:
    }

    v11 = v17;
    v13 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
  }

  while (v13);

  if (v15)
  {
    attachmentsCopy = v40;
    recipeCopy = v41;
    v10 = v42;
    errorCopy2 = errorCopy;
    if (v14)
    {
      v25 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15];
      if ([v25 length])
      {
        v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D05620], "pluginShouldAddNoiseAndEncryptResult:", v41)}];
        store = selfCopy->_store;
        v48[0] = @"TRAINING_STORE";
        v48[1] = @"PML_ESPRESSO_TRAINING_NETWORK_PATH";
        v49[0] = store;
        v49[1] = v14;
        v48[2] = @"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT";
        v49[2] = v26;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
        v29 = [(PMLTraining *)selfCopy _trainWithRecipe:v41 chunkData:v25 args:v28 error:errorCopy];

        v10 = v42;
        goto LABEL_33;
      }

      v37 = PML_LogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_260D68000, v37, OS_LOG_TYPE_FAULT, "Unable to train because chunk file contents were empty", buf, 2u);
      }

      if (errorCopy)
      {
        v33 = MEMORY[0x277CCA9B8];
        v34 = 0;
LABEL_32:
        [v33 errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:v34];
        *errorCopy2 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

LABEL_33:

      goto LABEL_35;
    }
  }

  else
  {
    attachmentsCopy = v40;
    recipeCopy = v41;
    v10 = v42;
    errorCopy2 = errorCopy;
  }

LABEL_28:
  v31 = PML_LogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    v38 = [v11 count];
    *buf = 138412802;
    v53 = v15;
    v54 = 2112;
    v55 = v14;
    v56 = 2048;
    v57 = v38;
    _os_log_fault_impl(&dword_260D68000, v31, OS_LOG_TYPE_FAULT, "Unable to train because chunk path %@ or training network path %@ not found in %lu attachments", buf, 0x20u);
  }

  if (errorCopy2)
  {
    v32 = MEMORY[0x277CCA9B8];
    v50 = @"attachments";
    v51 = v11;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v33 = v32;
    v34 = v25;
    goto LABEL_32;
  }

  v29 = 0;
LABEL_35:

LABEL_36:
  v35 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)planReceivedWithPayload:(id)payload error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  store = self->_store;
  v13 = @"TRAINING_STORE";
  v14[0] = store;
  v7 = MEMORY[0x277CBEAC0];
  payloadCopy = payload;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [(PMLTraining *)self _trainWithRecipe:MEMORY[0x277CBEC10] chunkData:payloadCopy args:v9 error:error];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_trainWithRecipe:(id)recipe chunkData:(id)data args:(id)args error:(id *)error
{
  v38[3] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  dataCopy = data;
  argsCopy = args;
  v13 = [PMLPlanSerialization planFromData:dataCopy withArgs:argsCopy];
  if (!v13)
  {
    v17 = PML_LogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v31) = 0;
      _os_log_fault_impl(&dword_260D68000, v17, OS_LOG_TYPE_FAULT, "Training plan deserialized without exception but is nil", &v31, 2u);
    }

    if (!error)
    {
      v13 = 0;
      goto LABEL_22;
    }

    v18 = MEMORY[0x277CCA9B8];
    v37 = @"isEspressoTraining";
    v19 = [recipeCopy objectForKeyedSubscript:?];
    v20 = v19;
    v21 = MEMORY[0x277CBEC28];
    if (v19)
    {
      v21 = v19;
    }

    v38[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    *error = [v18 errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:v22];

    v13 = 0;
LABEL_20:
    error = 0;
    goto LABEL_22;
  }

  if ([(PMLTrainingStore *)self->_store isDbOpen])
  {
    v14 = PML_LogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v13;
      _os_log_impl(&dword_260D68000, v14, OS_LOG_TYPE_DEFAULT, "Running %@ synchronously", &v31, 0xCu);
    }

    error = [v13 runWithError:error];
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      planId = [v13 planId];
      v31 = 138412546;
      v32 = planId;
      v33 = 1024;
      v34 = error != 0;
      _os_log_impl(&dword_260D68000, v15, OS_LOG_TYPE_DEFAULT, "Plan %@ completed run. Result present? %d.", &v31, 0x12u);
    }

    goto LABEL_22;
  }

  [(PMLTrainingStore *)self->_store logDbNotOpenEvent];
  v23 = PML_LogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v13;
    _os_log_impl(&dword_260D68000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring synchronous plan %@ because the db is not open.", &v31, 0xCu);
  }

  if (error)
  {
    v24 = MEMORY[0x277CCA9B8];
    v35 = @"isEspressoTraining";
    v25 = [recipeCopy objectForKeyedSubscript:?];
    v26 = v25;
    v27 = MEMORY[0x277CBEC28];
    if (v25)
    {
      v27 = v25;
    }

    v36 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    *error = [v24 errorWithDomain:@"ProactiveMLErrorDomain" code:5 userInfo:v28];

    goto LABEL_20;
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)trimDbWithDeferralBlock:(id)block
{
  blockCopy = block;
  isDbOpen = [(PMLTrainingStore *)self->_store isDbOpen];
  v6 = PML_LogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!isDbOpen)
  {
    if (v7)
    {
      *buf = 0;
      v13 = "Won't trim training db because the db is not open.";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEFAULT, "Trimming training db.", buf, 2u);
  }

  [(PMLTrainingStore *)self->_store limitSessionsByLastUsedTTL:15552000.0];
  v8 = PML_LogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v8, OS_LOG_TYPE_DEFAULT, "DONE limitSessionsByLastUsedTTL", buf, 2u);
  }

  if (blockCopy[2](blockCopy))
  {
    goto LABEL_14;
  }

  [(PMLTrainingStore *)self->_store limitSessionsByMaxTimesAccessed];
  v9 = PML_LogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v9, OS_LOG_TYPE_DEFAULT, "DONE limitSessionsByMaxTimesAccessed", buf, 2u);
  }

  if (blockCopy[2](blockCopy))
  {
    goto LABEL_14;
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__PMLTraining_trimDbWithDeferralBlock___block_invoke;
  v14[3] = &unk_279AC0650;
  v14[4] = self;
  v11 = blockCopy;
  v15 = v11;
  v16 = buf;
  [(PMLTrainingStore *)store enumerateSessionDescriptorsUsingBlock:v14];
  LOBYTE(store) = v18[24];

  _Block_object_dispose(buf, 8);
  if (store)
  {
    goto LABEL_14;
  }

  v12 = PML_LogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v12, OS_LOG_TYPE_DEFAULT, "Vacuuming training db.", buf, 2u);
  }

  [(PMLTrainingStore *)self->_store vacuumDbWithDeferralBlock:v11];
  if (blockCopy[2](v11))
  {
LABEL_14:
    v6 = PML_LogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "We've been asked to defer. Skipping remaining work.";
LABEL_18:
      _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __39__PMLTraining_trimDbWithDeferralBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Removing training samples for %@", &v13, 0xCu);
  }

  v7 = [v5 name];
  v8 = [v7 isEqualToString:@"QuickResponsesClassification"];

  v9 = *(a1[4] + 32);
  if (v8)
  {
    [v9 limitSessionsWithSessionDescriptor:v5 withLabel:0 limit:1000];
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = 138412290;
    v14 = v5;
    v11 = "DONE limitSessionsWithSessionDescriptor:(%@) withLabel:nil";
  }

  else
  {
    [v9 limitSessionsForEachLabelWithSessionDescriptor:v5 totalSessionLimit:1000];
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = 138412290;
    v14 = v5;
    v11 = "DONE limitSessionsForEachLabelWithSessionDescriptor:(%@)";
  }

  _os_log_impl(&dword_260D68000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
LABEL_9:

  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteSessionsWithDomainIdentifiers:(id)identifiers bundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(PMLTrainingStore *)self->_store deleteSessionsWithBundleId:dCopy domainId:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteSessionsWithIdentifiers:(id)identifiers bundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(PMLTrainingStore *)self->_store deleteSessionsWithBundleId:dCopy itemId:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllSavedRecordsFromFidesStoreSync
{
  v3 = dispatch_semaphore_create(0);
  fidesStore = self->_fidesStore;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__PMLTraining__deleteAllSavedRecordsFromFidesStoreSync__block_invoke;
  v6[3] = &unk_279AC0628;
  v7 = v3;
  v5 = v3;
  [(DESRecordStore *)fidesStore deleteAllSavedRecordsWithCompletion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __55__PMLTraining__deleteAllSavedRecordsFromFidesStoreSync__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = PML_LogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Failed to delete existing records in DESRecordStore. Error: %@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendStatsToFidesForMultiLabelModel:(id)model sessionCount:(unint64_t)count labeledStats:(id)stats
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21[0] = @"modelName";
  statsCopy = stats;
  modelCopy = model;
  name = [modelCopy name];
  v22[0] = name;
  v21[1] = @"modelVersion";
  version = [modelCopy version];
  v22[1] = version;
  v21[2] = @"modelLocale";
  locale = [modelCopy locale];

  v22[2] = locale;
  v21[3] = @"sessionsCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v21[4] = @"labeledStats";
  v22[3] = v13;
  v22[4] = statsCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  fidesStore = self->_fidesStore;
  v16 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PMLTraining__sendStatsToFidesForMultiLabelModel_sessionCount_labeledStats___block_invoke;
  v19[3] = &unk_279AC0600;
  v20 = v14;
  v17 = v14;
  [(DESRecordStore *)fidesStore saveRecordWithData:v16 recordInfo:v17 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __77__PMLTraining__sendStatsToFidesForMultiLabelModel_sessionCount_labeledStats___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PML_LogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendStatsToFidesForModel:(id)model sessionCount:(unint64_t)count positivesCount:(unint64_t)positivesCount negativesCount:(unint64_t)negativesCount support:(float)support
{
  v29[7] = *MEMORY[0x277D85DE8];
  v28[0] = @"modelName";
  modelCopy = model;
  name = [modelCopy name];
  v29[0] = name;
  v28[1] = @"modelVersion";
  version = [modelCopy version];
  v29[1] = version;
  v28[2] = @"modelLocale";
  locale = [modelCopy locale];

  v29[2] = locale;
  v28[3] = @"sessionsCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v29[3] = v16;
  v28[4] = @"positivesCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:positivesCount];
  v29[4] = v17;
  v28[5] = @"negativesCount";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:negativesCount];
  v29[5] = v18;
  v28[6] = @"support";
  *&v19 = support;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v29[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];

  fidesStore = self->_fidesStore;
  v23 = objc_opt_new();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__PMLTraining__sendStatsToFidesForModel_sessionCount_positivesCount_negativesCount_support___block_invoke;
  v26[3] = &unk_279AC0600;
  v27 = v21;
  v24 = v21;
  [(DESRecordStore *)fidesStore saveRecordWithData:v23 recordInfo:v24 completion:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __92__PMLTraining__sendStatsToFidesForModel_sessionCount_positivesCount_negativesCount_support___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PML_LogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendSessionStatsToFides
{
  if ([(PMLTrainingStore *)self->_store isDbOpen])
  {
    [(PMLTraining *)self _deleteAllSavedRecordsFromFidesStoreSync];
    sessionStats = [(PMLTrainingStore *)self->_store sessionStats];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__PMLTraining_sendSessionStatsToFides__block_invoke;
    v4[3] = &unk_279AC05D8;
    v4[4] = self;
    [sessionStats enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __38__PMLTraining_sendSessionStatsToFides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v53 + 1) + 8 * i) second];
        v9 += [v12 unsignedIntegerValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v45 = a1;
  v46 = v6;
  if ([*(a1 + 32) isMultiLabelModel:v5])
  {
    v44 = v5;
    v48 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * j);
          v18 = [v17 first];
          v19 = [v18 unsignedIntegerValue];

          if (v19)
          {
            v20 = [v17 second];
            [v20 floatValue];
            v22 = v21 / v9;

            v23 = [v17 second];
            v24 = [v23 unsignedIntegerValue];

            v57[0] = @"positivesCount";
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
            v57[1] = @"support";
            v58[0] = v25;
            *&v26 = v22;
            v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
            v58[1] = v27;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
            v29 = objc_alloc(MEMORY[0x277CCACA8]);
            v30 = [v17 first];
            v31 = [v29 initWithFormat:@"label%tu", objc_msgSend(v30, "unsignedLongValue")];
            [v48 setObject:v28 forKey:v31];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v14);
    }

    v5 = v44;
    [*(v45 + 32) _sendStatsToFidesForMultiLabelModel:v44 sessionCount:v9 labeledStats:v48];
  }

  else
  {
    v32 = v6;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = 0;
      v36 = *v54;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v54 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v53 + 1) + 8 * k);
          v39 = [v38 first];
          v40 = [v39 integerValue];

          if (v40 >= 1)
          {
            v41 = [v38 second];
            v35 += [v41 unsignedIntegerValue];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v34);
    }

    else
    {
      v35 = 0;
    }

    *&v42 = v35 / v9;
    [*(v45 + 32) _sendStatsToFidesForModel:v5 sessionCount:v9 positivesCount:v35 negativesCount:v9 - v35 support:v42];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMultiLabelModel:(id)model
{
  v15 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  isMultiLabel = self->_isMultiLabel;
  name = [modelCopy name];
  v7 = [(NSDictionary *)isMultiLabel objectForKeyedSubscript:name];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v9 = PML_LogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      name2 = [modelCopy name];
      v13 = 138412290;
      v14 = name2;
      _os_log_fault_impl(&dword_260D68000, v9, OS_LOG_TYPE_FAULT, "No isMultiLabel information for %@", &v13, 0xCu);
    }

    bOOLValue = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal
{
  v28 = *MEMORY[0x277D85DE8];
  covariatesCopy = covariates;
  descriptorCopy = descriptor;
  referenceCopy = reference;
  v15 = PML_LogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = descriptorCopy;
    v24 = 2048;
    labelCopy = label;
    v26 = 2048;
    v27 = [covariatesCopy length];
    _os_log_debug_impl(&dword_260D68000, v15, OS_LOG_TYPE_DEBUG, "Adding session for %@ (label: %tu, length: %tu)", buf, 0x20u);
  }

  store = self->_store;
  bundleIdentifier = [referenceCopy bundleIdentifier];
  domainIdentifier = [referenceCopy domainIdentifier];
  itemIdentifiers = [referenceCopy itemIdentifiers];

  LOBYTE(v21) = internal;
  [(PMLTrainingStore *)store storeSession:covariatesCopy label:label model:descriptorCopy bundleId:bundleIdentifier domainId:domainIdentifier itemIds:itemIdentifiers isAppleInternal:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (PMLTraining)initWithStore:(id)store fidesStore:(id)fidesStore availableSessionsTracker:(id)tracker
{
  storeCopy = store;
  fidesStoreCopy = fidesStore;
  trackerCopy = tracker;
  v16.receiver = self;
  v16.super_class = PMLTraining;
  v12 = [(PMLTraining *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_fidesStore, fidesStore);
    objc_storeStrong(&v13->_availableSessionsTracker, tracker);
    [(PMLAWDAvailableSessionsTracker *)v13->_availableSessionsTracker setAWDMetricQueryDelegate:v13];
    isMultiLabel = v13->_isMultiLabel;
    v13->_isMultiLabel = &unk_287358508;
  }

  return v13;
}

+ (id)sharedSingletonWithDirectory:(id)directory
{
  v25 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  pthread_mutex_lock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
  if (sharedSingletonWithDirectory__sharedInstance)
  {
    goto LABEL_6;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = PML_LogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_260D68000, v5, OS_LOG_TYPE_INFO, "Instantiating PMLTraining singleton.", &v21, 2u);
  }

  v6 = [PMLTrainingStore alloc];
  v7 = [(__CFString *)directoryCopy stringByAppendingPathComponent:@"training.db"];
  v8 = [(PMLTrainingStore *)v6 initWithPath:v7];

  v9 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.proactive.PMLDESPlugin"];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [[PMLTraining alloc] initWithStore:v8 fidesStore:v10 availableSessionsTracker:v11];
    v13 = sharedSingletonWithDirectory__sharedInstance;
    sharedSingletonWithDirectory__sharedInstance = v12;

    v14 = [(__CFString *)directoryCopy copy];
    v15 = sharedSingletonWithDirectory__sharedInstanceDirectory;
    sharedSingletonWithDirectory__sharedInstanceDirectory = v14;

    objc_autoreleasePoolPop(v4);
LABEL_6:
    if (sharedSingletonWithDirectory__sharedInstanceDirectory && ([(__CFString *)directoryCopy isEqualToString:?]& 1) == 0)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = directoryCopy;
        v23 = 2112;
        v24 = sharedSingletonWithDirectory__sharedInstanceDirectory;
        _os_log_impl(&dword_260D68000, v16, OS_LOG_TYPE_DEFAULT, "Can't instantiate PMLTraining in %@, becacuse there is already an instance in %@.", &v21, 0x16u);
      }
    }

    pthread_mutex_unlock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
    v17 = sharedSingletonWithDirectory__sharedInstance;
    goto LABEL_12;
  }

  v20 = PML_LogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v21 = 138412290;
    v22 = @"com.apple.proactive.PMLDESPlugin";
    _os_log_fault_impl(&dword_260D68000, v20, OS_LOG_TYPE_FAULT, "PMLTraining failed to get a DESRecordStore for %@", &v21, 0xCu);
  }

  pthread_mutex_unlock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
  objc_autoreleasePoolPop(v4);
  v17 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end