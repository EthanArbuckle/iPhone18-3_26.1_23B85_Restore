@interface PSGCustomResponseHarvester
+ (void)clearCustomResponsesCheckpointForTesting;
+ (void)runHarvestSkipMessageCollection:(BOOL)a3 clearCheckpoint:(BOOL)a4 reportMetrics:(BOOL)a5 modelConfigPath:(id)a6 modelVocabPath:(id)a7 modelFilePath:(id)a8 storeDirectory:(id)a9 evalFraction:(id)a10;
- (BOOL)deferAfterWriteCheckpointForActivity:(id)a3;
- (BOOL)isSupportedLanguage:(id)a3;
- (PSGCustomResponseHarvester)initWithActivityManager:(id)a3 modelConfigPath:(id)a4 modelVocabPath:(id)a5 modelFilePath:(id)a6 storeDirectory:(id)a7;
- (id)_customResponseParametersWithConfigPath:(id)a3;
- (id)_customResponseParametersWithExperiment:(id)a3;
- (id)_getCustomResponseParameters;
- (id)modelForLanguage:(id)a3;
- (unint64_t)activityStateAfterFilterWithStore:(id)a3 forActivity:(id)a4 andCustomResponseParameters:(id)a5;
- (void)harvestWithActivity:(id)a3;
- (void)loadCustomResponsesCheckpoint;
- (void)writeCheckpoint;
@end

@implementation PSGCustomResponseHarvester

- (BOOL)deferAfterWriteCheckpointForActivity:(id)a3
{
  v4 = a3;
  [(PSGCustomResponseHarvester *)self writeCheckpoint];
  v5 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4];
  if (v5)
  {
    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:3];
  }

  return v5;
}

- (unint64_t)activityStateAfterFilterWithStore:(id)a3 forActivity:(id)a4 andCustomResponseParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __104__PSGCustomResponseHarvester_activityStateAfterFilterWithStore_forActivity_andCustomResponseParameters___block_invoke;
  v82[3] = &unk_279ABE0F8;
  v82[4] = self;
  v12 = v10;
  v83 = v12;
  v84 = &v85;
  v71 = MEMORY[0x2666EDC40](v82);
  v13 = 0;
  while (self->_customResponsesStep >= 2u)
  {
    v14 = objc_autoreleasePoolPush();
    customResponsesStep = self->_customResponsesStep;
    if (customResponsesStep > 5)
    {
      if (customResponsesStep > 7)
      {
        switch(customResponsesStep)
        {
          case 8:
            v52 = pre_signpost_handle();
            v74 = 7;
            v53 = os_signpost_id_make_with_pointer(v52, &v74);

            v54 = pre_signpost_handle();
            v55 = v54;
            if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "SGCustomResponses-TruncateCustomResponsesTable", "Start", buf, 2u);
            }

            v56 = [v9 countCustomResponsesAfterTruncatingTable:{objc_msgSend(v11, "maxStoredCustomResponses")}];
            v21 = objc_opt_new();
            [v21 setCustomResponsesAfterPruning:v56];
            [(PETEventTracker2 *)self->_pet2tracker trackScalarForMessage:v21];
            v57 = pre_signpost_handle();
            v58 = v57;
            if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v58, OS_SIGNPOST_INTERVAL_END, v53, "SGCustomResponses-TruncateCustomResponsesTable", "Completed", buf, 2u);
            }

            v13 = 9;
            break;
          case 9:
            v64 = pre_signpost_handle();
            v73 = 7;
            v65 = os_signpost_id_make_with_pointer(v64, &v73);

            v66 = pre_signpost_handle();
            v67 = v66;
            if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v65, "SGCustomResponses-PrunePerRecipientTable", "Start", buf, 2u);
            }

            [v9 prunePerRecipientTableWithMaxRows:{objc_msgSend(v11, "maxRowsInPerRecipientTable")}];
            v68 = pre_signpost_handle();
            v21 = v68;
            if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v21, OS_SIGNPOST_INTERVAL_END, v65, "SGCustomResponses-PrunePerRecipientTable", "Completed", buf, 2u);
            }

            v13 = 10;
            break;
          case 10:
            v16 = pre_signpost_handle();
            ptr = 7;
            v17 = os_signpost_id_make_with_pointer(v16, &ptr);

            v18 = pre_signpost_handle();
            v19 = v18;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SGCustomResponses-CalculateUsageSpreads", "Start", buf, 2u);
            }

            [v9 calculateUsageSpreads];
            v20 = pre_signpost_handle();
            v21 = v20;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_260D36000, v21, OS_SIGNPOST_INTERVAL_END, v17, "SGCustomResponses-CalculateUsageSpreads", "Completed", buf, 2u);
            }

            v13 = 0;
            break;
          default:
            goto LABEL_86;
        }

        goto LABEL_85;
      }

      if (customResponsesStep != 6)
      {
        v35 = pre_signpost_handle();
        v75 = 7;
        v36 = os_signpost_id_make_with_pointer(v35, &v75);

        v37 = pre_signpost_handle();
        v38 = v37;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260D36000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "SGCustomResponses-DecayAllCustomResponses", "Start", buf, 2u);
        }

        [v11 timeDecayFactor];
        [v9 decayAllCustomResponsesWithDecayFactor:self->_batchSize filteringBatchSize:?];
        v39 = pre_signpost_handle();
        v21 = v39;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260D36000, v21, OS_SIGNPOST_INTERVAL_END, v36, "SGCustomResponses-DecayAllCustomResponses", "Completed", buf, 2u);
        }

        v13 = 8;
        goto LABEL_85;
      }

      v59 = pre_signpost_handle();
      v76 = 7;
      v60 = os_signpost_id_make_with_pointer(v59, &v76);

      v61 = pre_signpost_handle();
      v62 = v61;
      if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D36000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "SGCustomResponses-RecordAllRemainingMessagesAsCustomResponses", "Start", buf, 2u);
      }

      [v9 recordMessagesInBatchAsCustomResponsesWithEmbedder:v71 compatibilityVersion:{objc_msgSend(v11, "compatibilityVersion")}];
      if (*(v86 + 24))
      {
        v13 = 6;
      }

      else
      {
        v13 = 7;
      }

      v63 = pre_signpost_handle();
      v21 = v63;
      if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v63))
      {
        goto LABEL_85;
      }

      *buf = 0;
      v27 = v21;
      v28 = v60;
      v29 = "SGCustomResponses-RecordAllRemainingMessagesAsCustomResponses";
      goto LABEL_77;
    }

    if (customResponsesStep > 3)
    {
      if (customResponsesStep != 4)
      {
        v30 = pre_signpost_handle();
        v77 = 7;
        v31 = os_signpost_id_make_with_pointer(v30, &v77);

        v32 = pre_signpost_handle();
        v33 = v32;
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260D36000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "SGCustomResponses-FilterBatch", "Start", buf, 2u);
        }

        [v9 filterBatchWithMinimumDistinctRecipients:objc_msgSend(v11 minimumReplyOccurences:{"minimumDistinctRecipients"), objc_msgSend(v11, "minimumReplyOccurences")}];
        v34 = pre_signpost_handle();
        v21 = v34;
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_260D36000, v21, OS_SIGNPOST_INTERVAL_END, v31, "SGCustomResponses-FilterBatch", "Completed", buf, 2u);
        }

        v13 = 6;
        goto LABEL_85;
      }

      v46 = pre_signpost_handle();
      v78 = 7;
      v47 = os_signpost_id_make_with_pointer(v46, &v78);

      v48 = pre_signpost_handle();
      v49 = v48;
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D36000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "SGCustomResponses-PruningAllCustomResponses", "Start", buf, 2u);
      }

      [v11 minDecayedCountForPruning];
      v50 = [v9 countCustomResponsesAfterPruningWithMinimumCountThreshold:?];
      if (v50 >= [v11 maxStoredCustomResponses])
      {
        v13 = 7;
      }

      else
      {
        v13 = 5;
      }

      v51 = pre_signpost_handle();
      v21 = v51;
      if (v47 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v51))
      {
        goto LABEL_85;
      }

      *buf = 0;
      v27 = v21;
      v28 = v47;
      v29 = "SGCustomResponses-PruningAllCustomResponses";
      goto LABEL_77;
    }

    if (customResponsesStep == 2)
    {
      v40 = pre_signpost_handle();
      v81 = 7;
      v41 = os_signpost_id_make_with_pointer(v40, &v81);

      v42 = pre_signpost_handle();
      v43 = v42;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D36000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "SGCustomResponses-DesignateFilteringBatch", "Start", buf, 2u);
      }

      v44 = [v9 designateFilteringBatch:{objc_msgSend(v11, "filterBatchSize")}];
      if (v44)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      self->_batchSize = v44;
      v45 = pre_signpost_handle();
      v21 = v45;
      if (v41 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v45))
      {
        goto LABEL_85;
      }

      *buf = 0;
      v27 = v21;
      v28 = v41;
      v29 = "SGCustomResponses-DesignateFilteringBatch";
      goto LABEL_77;
    }

    if (customResponsesStep != 3)
    {
      goto LABEL_86;
    }

    v22 = pre_signpost_handle();
    v79 = 7;
    v23 = os_signpost_id_make_with_pointer(v22, &v79);

    v24 = pre_signpost_handle();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260D36000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "SGCustomResponses-RecordKnownCustomResponses", "Start", buf, 2u);
    }

    [v9 recordKnownCustomResponsesInBatchWithEmbedder:v71 compatibilityVersion:{objc_msgSend(v11, "compatibilityVersion")}];
    if (*(v86 + 24))
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    v26 = pre_signpost_handle();
    v21 = v26;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      v27 = v21;
      v28 = v23;
      v29 = "SGCustomResponses-RecordKnownCustomResponses";
LABEL_77:
      _os_signpost_emit_with_name_impl(&dword_260D36000, v27, OS_SIGNPOST_INTERVAL_END, v28, v29, "Completed", buf, 2u);
    }

LABEL_85:

LABEL_86:
    self->_customResponsesStep = v13;
    [(PSGCustomResponseHarvester *)self writeCheckpoint];
    if ((v86[3] & 1) != 0 || ([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v12]& 1) != 0)
    {
      v5 = 0;
      v69 = 0;
    }

    else if (v13 || self->_batchSize)
    {
      v69 = 1;
    }

    else
    {
      v69 = 0;
      v5 = 2;
    }

    objc_autoreleasePoolPop(v14);
    if ((v69 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v5 = 1;
LABEL_96:

  _Block_object_dispose(&v85, 8);
  return v5;
}

id __104__PSGCustomResponseHarvester_activityStateAfterFilterWithStore_forActivity_andCustomResponseParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 8) shouldDefer:*(a1 + 40)])
  {
    v7 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_15;
  }

  v8 = [*(a1 + 32) modelForLanguage:v6];
  v9 = [v8 featuresOf:v5];
  v10 = [v8 predict:v9];
  v11 = [v8 config];
  v12 = [v11 customResponsesParameters];
  if ([v12 useNonNegativeClassesOnly])
  {
    v13 = [v8 config];
    v14 = [v13 predictionParams];
    v15 = [v14 hasNegativeClass];

    if (v15)
    {
      v16 = 0.0;
      if ([v10 count] >= 2)
      {
        v17 = 1;
        do
        {
          v18 = [v10 objectAtIndexedSubscript:v17];
          [v18 doubleValue];
          v16 = v16 + v19;

          ++v17;
        }

        while ([v10 count] > v17);
      }

      v20 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];
      v7 = [v20 mutableCopy];

      if ([v7 count])
      {
        v21 = 0;
        do
        {
          v22 = MEMORY[0x277CCABB0];
          v23 = [v7 objectAtIndexedSubscript:v21];
          [v23 doubleValue];
          v25 = [v22 numberWithDouble:v24 / v16];
          [v7 setObject:v25 atIndexedSubscript:v21];

          ++v21;
        }

        while ([v7 count] > v21);
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = v10;
LABEL_14:

LABEL_15:

  return v7;
}

- (id)modelForLanguage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D025A0] modelForLanguage:v4 mode:1 chunkPath:self->_modelFilePath plistPath:self->_modelConfigPath vocabPath:self->_modelVocabPath];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_8:
    v9 = v7;
    goto LABEL_9;
  }

  if (![v4 isEqualToString:self->_preferredLanguage])
  {
    v7 = [(PSGCustomResponseHarvester *)self modelForLanguage:self->_preferredLanguage];
    goto LABEL_8;
  }

  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    preferredLanguage = self->_preferredLanguage;
    v13 = 138412290;
    v14 = preferredLanguage;
    _os_log_fault_impl(&dword_260D36000, v8, OS_LOG_TYPE_FAULT, "Model missing for preferred language %@", &v13, 0xCu);
  }

  v9 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isSupportedLanguage:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_modelExistsForLanguage objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277D02588] configWithLanguage:v4 mode:1 plistPath:self->_modelConfigPath vocabPath:self->_modelVocabPath];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 0];
    [(NSMutableDictionary *)self->_modelExistsForLanguage setObject:v5 forKeyedSubscript:v4];
  }

  v7 = [v5 BOOLValue];

  return v7;
}

- (void)writeCheckpoint
{
  v13[3] = *MEMORY[0x277D85DE8];
  [(NSDate *)self->_latestProcessedDate timeIntervalSinceReferenceDate];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v13[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_customResponsesStep];
  v13[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_batchSize];
  v13[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  v10 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&v10];
  v8 = v10;
  if (v8 || !v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_fault_impl(&dword_260D36000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Error serializing CustomResponses checkpoint: %@", buf, 0xCu);
    }
  }

  else
  {
    [(NSFileManager *)self->_fManager createFileAtPath:self->_checkpointFullPath contents:v7 attributes:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)loadCustomResponsesCheckpoint
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSFileManager *)self->_fManager fileExistsAtPath:self->_checkpointFullPath])
  {
    v3 = [(NSFileManager *)self->_fManager contentsAtPath:self->_checkpointFullPath];
    if (v3)
    {
      v14 = 0;
      v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v14];
      v5 = v14;
      if ((v5 || !v4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_fault_impl(&dword_260D36000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Error deserializing CustomResponses checkpoint: %@", buf, 0xCu);
      }

      v6 = [v4 objectAtIndexedSubscript:0];
      [v6 doubleValue];
      v8 = v7;

      v9 = [v4 objectAtIndexedSubscript:1];
      self->_customResponsesStep = [v9 unsignedIntegerValue];

      v10 = 0;
      if (v8 != 0.0)
      {
        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
      }

      latestProcessedDate = self->_latestProcessedDate;
      self->_latestProcessedDate = v10;

      if ([v4 count] < 3 || self->_customResponsesStep < 3u)
      {
        self->_batchSize = 0;
      }

      else
      {
        v12 = [v4 objectAtIndexedSubscript:2];
        self->_batchSize = [v12 integerValue];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D36000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unable to read CustomResponses data", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)harvestWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(PSGCustomResponseHarvester *)self _getCustomResponseParameters];
  if (!v5)
  {
    xpcActivityManager = self->_xpcActivityManager;
    goto LABEL_6;
  }

  v6 = [(PSGCustomResponseHarvester *)self modelForLanguage:self->_preferredLanguage];

  xpcActivityManager = self->_xpcActivityManager;
  if (!v6)
  {
LABEL_6:
    v8 = v4;
    v9 = 5;
    goto LABEL_7;
  }

  if ([(SGXPCActivityManagerProtocol *)xpcActivityManager shouldDefer:v4])
  {
    xpcActivityManager = self->_xpcActivityManager;
    v8 = v4;
    v9 = 3;
LABEL_7:
    [(SGXPCActivityManagerProtocol *)xpcActivityManager setState:v8 state:v9];
    goto LABEL_8;
  }

  v48[7] = 0;
  v48[5] = @"com.apple.suggestd.custom-response-harvest";
  v48[6] = mach_absolute_time();
  v10 = objc_autoreleasePoolPush();
  if ([(NSString *)self->_storeDirectory length])
  {
    v41 = [objc_alloc(MEMORY[0x277D025B8]) initInDirectory:self->_storeDirectory inMemory:0 withMigration:1];
  }

  else
  {
    v41 = [MEMORY[0x277D025B8] sharedInstance];
  }

  if (self->_customResponsesStep >= 2u && ![(PSGCustomResponseHarvester *)self activityStateAfterFilterWithStore:v41 forActivity:v4 andCustomResponseParameters:v5]|| (self->_customResponsesStep = 1, [(PSGCustomResponseHarvester *)self writeCheckpoint], [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4]))
  {
    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:3];
    PRERecordMeasurementState();
    v11 = 0;
    goto LABEL_55;
  }

  v44 = v5;
  v38 = v10;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __50__PSGCustomResponseHarvester_harvestWithActivity___block_invoke;
  v48[3] = &unk_279ABE0D0;
  v48[4] = self;
  v12 = 0;
  v39 = MEMORY[0x2666EDC40](v48);
  v45 = v4;
LABEL_17:
  if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4]& 1) == 0)
  {
    v13 = (v39)[2](v39, v44);

    if (!v13)
    {
      v12 = 0;
      goto LABEL_44;
    }

    context = objc_autoreleasePoolPush();
    while (1)
    {
      if (-[SGXPCActivityManagerProtocol shouldDefer:](self->_xpcActivityManager, "shouldDefer:", v4) & 1) != 0 || ([v13 isDoneIterating])
      {
LABEL_42:
        v33 = [v13 latestProcessedDate];
        latestProcessedDate = self->_latestProcessedDate;
        self->_latestProcessedDate = v33;

        [(PSGCustomResponseHarvester *)self writeCheckpoint];
        objc_autoreleasePoolPop(context);
        v12 = v13;
        goto LABEL_17;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = pre_signpost_handle();
      ptr = 7;
      v16 = os_signpost_id_make_with_pointer(v15, &ptr);

      v17 = pre_signpost_handle();
      v18 = v17;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D36000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SGCustomResponses-NextMessagePair", "Start", buf, 2u);
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v13;
      v21 = [v13 nextMessagePair];
      objc_autoreleasePoolPop(v19);
      v22 = pre_signpost_handle();
      v23 = v22;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_260D36000, v23, OS_SIGNPOST_INTERVAL_END, v16, "SGCustomResponses-NextMessagePair", "Completed", buf, 2u);
      }

      if (v21)
      {
        break;
      }

      v32 = 0;
LABEL_39:

      objc_autoreleasePoolPop(v14);
      v13 = v20;
      if (v32)
      {
        goto LABEL_42;
      }
    }

    v24 = MEMORY[0x277D3A248];
    v25 = [v21 prompt];
    v26 = [v24 detectLanguageFromText:v25];

    if (v26)
    {
      v27 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v26];
      if (v27)
      {
        if ([(PSGCustomResponseHarvester *)self isSupportedLanguage:v27])
        {
          v42 = [v44 filterBatchSize];
          v28 = [v44 maxStoredMessages];
          v43 = [v21 reply];
          v29 = [v21 prompt];
          v30 = [v21 handle];
          v31 = [v21 sentAt];
          LOBYTE(v28) = [v41 addingMessageExceedsBatchLimit:v42 tableLimit:v28 message:v43 language:v27 prompt:v29 recipientHandle:v30 sentAt:v31];

          if (v28)
          {
            self->_customResponsesStep = 2;
            [(PSGCustomResponseHarvester *)self writeCheckpoint];
            if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v45]& 1) != 0)
            {
              v32 = 1;
LABEL_38:

              v4 = v45;
              goto LABEL_39;
            }

            [(PSGCustomResponseHarvester *)self activityStateAfterFilterWithStore:v41 forActivity:v45 andCustomResponseParameters:v44];
          }
        }
      }
    }

    else
    {
      v27 = 0;
    }

    v32 = 0;
    goto LABEL_38;
  }

LABEL_44:
  if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4]& 1) != 0)
  {
    goto LABEL_53;
  }

  v35 = 1;
  do
  {
    if (v35 != 1)
    {
      break;
    }

    v36 = objc_autoreleasePoolPush();
    self->_customResponsesStep = 2;
    [(PSGCustomResponseHarvester *)self writeCheckpoint];
    v37 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4];
    v35 = (v37 & 1) != 0 ? 0 : [(PSGCustomResponseHarvester *)self activityStateAfterFilterWithStore:v41 forActivity:v4 andCustomResponseParameters:v44];
    objc_autoreleasePoolPop(v36);
  }

  while (!v37);
  if (!v35)
  {
LABEL_53:
    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:3];
    PRERecordMeasurementState();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v10 = v38;
  v5 = v44;
LABEL_55:

  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:5];
    PRERecordMeasurementState();
  }

  PRERecordMeasurementState();
LABEL_8:
}

id __50__PSGCustomResponseHarvester_harvestWithActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D02550];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(*(a1 + 32) + 56);
  v7 = [v4 knowledgeStoreQueryLimit];
  v8 = [v4 maxReplyLength];
  [v4 maxReplyGapSecs];
  v10 = v9;

  v11 = [v5 initWithStartDate:v6 maxBatchSize:v7 maxReplyLength:v8 maxReplyGap:v10];

  return v11;
}

- (id)_getCustomResponseParameters
{
  if ([(NSString *)self->_modelConfigPath length]&& [(NSFileManager *)self->_fManager isReadableFileAtPath:self->_modelConfigPath])
  {
    v3 = [(PSGCustomResponseHarvester *)self _customResponseParametersWithConfigPath:self->_modelConfigPath];
  }

  else
  {
    v4 = +[PSGExperimentResolver sharedInstance];
    v5 = [v4 getResponseSuggestionsExperimentConfig:self->_preferredLanguage shouldDownloadAssets:1];

    v3 = [(PSGCustomResponseHarvester *)self _customResponseParametersWithExperiment:v5];
  }

  return v3;
}

- (id)_customResponseParametersWithConfigPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D02588] configWithLanguage:self->_preferredLanguage mode:1 plistPath:v4 vocabPath:0];
  v6 = [v5 customResponsesParameters];
  if ([v6 isCustomResponsesEnabled])
  {
    if ([(NSString *)self->_modelFilePath length]&& [(NSFileManager *)self->_fManager isReadableFileAtPath:self->_modelFilePath])
    {
      v7 = v6;
      goto LABEL_12;
    }

    v9 = psg_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      modelFilePath = self->_modelFilePath;
      v14 = 138412290;
      v15 = modelFilePath;
      _os_log_fault_impl(&dword_260D36000, v9, OS_LOG_TYPE_FAULT, "[CRH] Model file path invalid: %@", &v14, 0xCu);
    }

    v10 = self->_modelFilePath;
    self->_modelFilePath = 0;
  }

  else
  {
    v8 = psg_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_debug_impl(&dword_260D36000, v8, OS_LOG_TYPE_DEBUG, "[CRH] Custom responses not enabled in this config: %@", &v14, 0xCu);
    }
  }

  v7 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_customResponseParametersWithExperiment:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isMLModelEnabled] & 1) == 0)
  {
    v9 = psg_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      preferredLanguage = self->_preferredLanguage;
      v34 = 138412290;
      v35 = preferredLanguage;
      _os_log_debug_impl(&dword_260D36000, v9, OS_LOG_TYPE_DEBUG, "[CRH] ML is not enabled for custom response harvesting (preferred language: %@).", &v34, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = [v4 inferenceModelConfigPath];
  modelConfigPath = self->_modelConfigPath;
  self->_modelConfigPath = v5;

  if (![(NSString *)self->_modelConfigPath length]|| ![(NSFileManager *)self->_fManager isReadableFileAtPath:self->_modelConfigPath])
  {
    v15 = self->_modelConfigPath;
    self->_modelConfigPath = 0;

    v9 = psg_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v28 = [v4 treatmentName];
      v29 = [v4 experimentIdentifiers];
      v30 = [v29 experimentId];
      v31 = [v4 experimentIdentifiers];
      v32 = [v31 treatmentId];
      v34 = 138412802;
      v35 = v28;
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      v39 = v32;
      _os_log_fault_impl(&dword_260D36000, v9, OS_LOG_TYPE_FAULT, "[CRH] Config file invalid while ML is enabled. Name: %@, Exp: %@; Trt: %@", &v34, 0x20u);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v7 = [v4 vocabFilePath];
  modelVocabPath = self->_modelVocabPath;
  self->_modelVocabPath = v7;

  v9 = [MEMORY[0x277D02588] configWithLanguage:self->_preferredLanguage mode:1 plistPath:self->_modelConfigPath vocabPath:self->_modelVocabPath];
  v10 = [v9 customResponsesParameters];
  if (([v10 isCustomResponsesEnabled] & 1) == 0)
  {
    v12 = psg_default_log_handle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_26:
      v16 = 0;
      goto LABEL_27;
    }

    v19 = [v4 treatmentName];
    v34 = 138412290;
    v35 = v19;
    _os_log_debug_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEBUG, "[CRH] Custom responses not enabled in this treatment (name: %@).", &v34, 0xCu);
    goto LABEL_25;
  }

  v11 = [v9 predictionParams];
  v12 = [v11 modelTypeName];

  if ([v12 isEqualToString:@"quickResponsesBinaryLogisticMultiLabel"])
  {
    v13 = [v4 inferenceModelFilePath];
  }

  else
  {
    if (![v12 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"])
    {
      modelFilePath = self->_modelFilePath;
      self->_modelFilePath = 0;

      v19 = psg_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v22 = [v4 treatmentName];
        v23 = [v4 experimentIdentifiers];
        v24 = [v23 experimentId];
        v25 = [v4 experimentIdentifiers];
        v26 = [v25 treatmentId];
        v34 = 138413058;
        v35 = v12;
        v36 = 2112;
        v37 = v22;
        v38 = 2112;
        v39 = v24;
        v40 = 2112;
        v41 = v26;
        v27 = "[CRH] Unexpected model type %@, and experiment (Name: %@, Exp: %@ Trt: %@).";
        goto LABEL_29;
      }

LABEL_25:

      goto LABEL_26;
    }

    v13 = [v4 espressoBinFilePath];
  }

  v20 = self->_modelFilePath;
  self->_modelFilePath = v13;

  if (![(NSString *)self->_modelFilePath length]|| ![(NSFileManager *)self->_fManager isReadableFileAtPath:self->_modelFilePath])
  {
    v21 = self->_modelFilePath;
    self->_modelFilePath = 0;

    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v22 = [v4 treatmentName];
      v23 = [v4 experimentIdentifiers];
      v24 = [v23 experimentId];
      v25 = [v4 experimentIdentifiers];
      v26 = [v25 treatmentId];
      v34 = 138413058;
      v35 = v12;
      v36 = 2112;
      v37 = v22;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v26;
      v27 = "[CRH] Model file invalid for ModelType: %@ and Experiment (Name: %@, Exp: %@ Trt: %@).";
LABEL_29:
      _os_log_fault_impl(&dword_260D36000, v19, OS_LOG_TYPE_FAULT, v27, &v34, 0x2Au);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v16 = v10;
LABEL_27:

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PSGCustomResponseHarvester)initWithActivityManager:(id)a3 modelConfigPath:(id)a4 modelVocabPath:(id)a5 modelFilePath:(id)a6 storeDirectory:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v42 = a7;
  v44.receiver = self;
  v44.super_class = PSGCustomResponseHarvester;
  v17 = [(PSGCustomResponseHarvester *)&v44 init];
  v18 = v17;
  if (!v17)
  {
LABEL_16:
    v32 = v18;
    goto LABEL_17;
  }

  objc_storeStrong(&v17->_xpcActivityManager, a3);
  v19 = [MEMORY[0x277D41DA8] sharedInstance];
  pet2tracker = v18->_pet2tracker;
  v18->_pet2tracker = v19;

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  fManager = v18->_fManager;
  v18->_fManager = v21;

  v23 = [MEMORY[0x277D3A258] suggestionsDirectory];
  if (v23)
  {
    v24 = v23;
    v40 = v16;
    v41 = v15;
    v25 = v14;
    v26 = v13;
    v27 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v28 = [v27 firstObject];

    if (v28)
    {
      v29 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:v28];
      preferredLanguage = v18->_preferredLanguage;
      v18->_preferredLanguage = v29;
    }

    v13 = v26;
    if (v18->_preferredLanguage)
    {
      objc_storeStrong(&v18->_modelConfigPath, a4);
      objc_storeStrong(&v18->_modelVocabPath, a5);
      objc_storeStrong(&v18->_modelFilePath, a6);
      objc_storeStrong(&v18->_storeDirectory, a7);
      v14 = v25;
      if ([(NSString *)v18->_storeDirectory length])
      {
        storeDirectory = v18->_storeDirectory;
      }

      else
      {
        storeDirectory = v24;
      }

      v34 = [(NSString *)storeDirectory stringByAppendingPathComponent:@"custom-response-ckpt"];
      v15 = v41;
      checkpointFullPath = v18->_checkpointFullPath;
      v18->_checkpointFullPath = v34;

      v18->_customResponsesStep = 0;
      latestProcessedDate = v18->_latestProcessedDate;
      v18->_latestProcessedDate = 0;

      v18->_batchSize = 0;
      [(PSGCustomResponseHarvester *)v18 loadCustomResponsesCheckpoint];
      v37 = objc_opt_new();
      modelExistsForLanguage = v18->_modelExistsForLanguage;
      v18->_modelExistsForLanguage = v37;

      v16 = v40;
      goto LABEL_16;
    }

    v33 = psg_default_log_handle();
    v14 = v25;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D36000, v33, OS_LOG_TYPE_DEBUG, "SGCustomResponseHarvester: No preferred language is set.", buf, 2u);
    }

    v32 = 0;
    v16 = v40;
    v15 = v41;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D36000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGDManagerForCTS: Unable to create directory for custom responses checkpoint.", buf, 2u);
    }

    v32 = 0;
  }

LABEL_17:

  return v32;
}

+ (void)runHarvestSkipMessageCollection:(BOOL)a3 clearCheckpoint:(BOOL)a4 reportMetrics:(BOOL)a5 modelConfigPath:(id)a6 modelVocabPath:(id)a7 modelFilePath:(id)a8 storeDirectory:(id)a9 evalFraction:(id)a10
{
  v13 = a4;
  v14 = a3;
  v25 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  if (v13)
  {
    if ([v17 length])
    {
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [v17 stringByAppendingPathComponent:@"custom-response-ckpt"];
      [v19 removeItemAtPath:v20 error:0];
    }

    else
    {
      +[PSGCustomResponseHarvester clearCustomResponsesCheckpointForTesting];
    }
  }

  v21 = [[PSGCustomResponseHarvester alloc] initWithActivityManager:0 modelConfigPath:v25 modelVocabPath:v15 modelFilePath:v16 storeDirectory:v17];
  v22 = v21;
  if (!a5)
  {
    [(PSGCustomResponseHarvester *)v21 setPet2TrackerForTesting:0];
  }

  if (v14)
  {
    [(PSGCustomResponseHarvester *)v22 setCustomResponsesStepForTesting:2];
  }

  [(PSGCustomResponseHarvester *)v22 harvestWithActivity:0];
  if (v18)
  {
    [v18 doubleValue];
    if (v23 > 0.0)
    {
      v24 = [objc_alloc(MEMORY[0x277D025B8]) initInDirectory:v17 inMemory:0 withMigration:1];
      [v24 resetCustomResponsesForEval:v18];
    }
  }

  [(PSGCustomResponseHarvester *)v22 harvestWithActivity:0];
}

+ (void)clearCustomResponsesCheckpointForTesting
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [MEMORY[0x277D3A258] suggestionsDirectoryFile:@"custom-response-ckpt"];
  [v3 removeItemAtPath:v2 error:0];
}

@end