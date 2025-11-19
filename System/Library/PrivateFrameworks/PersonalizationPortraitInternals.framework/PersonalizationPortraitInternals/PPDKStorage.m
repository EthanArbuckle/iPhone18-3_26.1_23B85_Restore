@interface PPDKStorage
+ (PPDKStorage)sharedInstance;
- (BOOL)_isFutureCompatibilityVersionAttachedToEvent:(uint64_t)a1;
- (BOOL)deleteAllEventsInEventStream:(id)a3 error:(id *)a4;
- (BOOL)deleteAllEventsInEventStream:(id)a3 matchingPredicate:(id)a4 error:(id *)a5;
- (BOOL)deleteEvents:(id)a3 error:(id *)a4;
- (BOOL)iterEventBatchesMatchingPredicate:(id)a3 streams:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 readMetaData:(BOOL)a7 remoteOnly:(BOOL)a8 error:(id *)a9 block:(id)a10;
- (BOOL)saveEvents:(id)a3 stream:(id)a4 maxRetries:(int64_t)a5 retryInterval:(double)a6 shouldContinueBlock:(id)a7;
- (double)entityStreamCooldownTimeRemaining;
- (double)topicStreamCooldownTimeRemaining;
- (id)_readWriteKnowledgeStore;
- (id)entityStream;
- (id)eventForNamedEntityRecord:(id)a3 sourceDeviceID:(id)a4;
- (id)eventForTopicRecord:(id)a3 sourceDeviceID:(id)a4;
- (id)namedEntityRecordFromEvent:(id)a3;
- (id)registerForNamedEntitiesRemoteAdditionWithBlock:(id)a3;
- (id)registerForNamedEntitiesRemoteDeletionWithBlock:(id)a3;
- (id)registerForTopicsRemoteAdditionWithBlock:(id)a3;
- (id)registerForTopicsRemoteDeletionWithBlock:(id)a3;
- (id)tombstoneStream;
- (id)topicRecordFromEvent:(id)a3;
- (id)topicStream;
- (void)removeObserver:(id)a3;
@end

@implementation PPDKStorage

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA9A0];
    v4 = a3;
    v5 = [v3 defaultCenter];
    [v5 removeObserver:v4];
  }
}

- (id)registerForTopicsRemoteDeletionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = [(PPDKStorage *)self topicStream];
  v7 = [v6 name];

  if (v7)
  {
    v8 = *MEMORY[0x277CFE2F8];
    v9 = [v6 name];
    v10 = [v5 addObserverForName:v8 object:v9 queue:0 usingBlock:v4];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Failed to register CoreDuet notification listener due to missing topic stream name.", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)registerForTopicsRemoteAdditionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = [(PPDKStorage *)self topicStream];
  v7 = [v6 name];

  if (v7)
  {
    v8 = *MEMORY[0x277CFE2F0];
    v9 = [v6 name];
    v10 = [v5 addObserverForName:v8 object:v9 queue:0 usingBlock:v4];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Failed to register CoreDuet notification listener due to missing topic stream name.", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)registerForNamedEntitiesRemoteDeletionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = [(PPDKStorage *)self entityStream];
  v7 = [v6 name];

  if (v7)
  {
    v8 = *MEMORY[0x277CFE2F8];
    v9 = [v6 name];
    v10 = [v5 addObserverForName:v8 object:v9 queue:0 usingBlock:v4];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Failed to register CoreDuet notification listener due to missing entity stream name.", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)registerForNamedEntitiesRemoteAdditionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = [(PPDKStorage *)self entityStream];
  v7 = [v6 name];

  if (v7)
  {
    v8 = *MEMORY[0x277CFE2F0];
    v9 = [v6 name];
    v10 = [v5 addObserverForName:v8 object:v9 queue:0 usingBlock:v4];
  }

  else
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "Failed to register CoreDuet notification listener due to missing entity stream name.", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)eventForTopicRecord:(id)a3 sourceDeviceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CFE0F8] compatibilityVersion];
  [v7 setObject:&unk_284783C48 forKeyedSubscript:v8];

  [v7 setObject:&unk_284783C48 forKeyedSubscript:@"compatVersion"];
  v9 = MEMORY[0x277CCABB0];
  [v5 decayRate];
  v10 = [v9 numberWithDouble:?];
  v11 = [MEMORY[0x277CFE128] decayRate];
  [v7 setObject:v10 forKeyedSubscript:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "algorithm")}];
  v13 = [MEMORY[0x277CFE128] algorithm];
  [v7 setObject:v12 forKeyedSubscript:v13];

  v14 = MEMORY[0x277CCABB0];
  [v5 initialScore];
  v15 = [v14 numberWithDouble:?];
  v16 = [MEMORY[0x277CFE128] score];
  [v7 setObject:v15 forKeyedSubscript:v16];

  v17 = [v5 extractionOsBuild];

  if (v17)
  {
    v18 = [v5 extractionOsBuild];
    v19 = [MEMORY[0x277CFE128] osBuild];
    [v7 setObject:v18 forKeyedSubscript:v19];
  }

  [v5 extractionAssetVersion];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "extractionAssetVersion")}];
  v21 = [MEMORY[0x277CFE128] assetVersion];
  [v7 setObject:v20 forKeyedSubscript:v21];

  v22 = [v5 metadata];
  LODWORD(v21) = [v22 exactMatchInSourceText];

  if (v21)
  {
    v23 = MEMORY[0x277CCABB0];
    v24 = [v5 metadata];
    v25 = [v23 numberWithBool:{objc_msgSend(v24, "exactMatchInSourceText")}];
    [v7 setObject:v25 forKeyedSubscript:@"exactMatchInSourceText"];
  }

  v26 = [v5 source];
  v27 = [v26 relevanceDate];

  if (v27)
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [v5 source];
    v30 = [v29 relevanceDate];
    [v30 timeIntervalSince1970];
    v31 = [v28 numberWithDouble:?];
    [v7 setObject:v31 forKeyedSubscript:@"sourceRelevanceDate"];
  }

  v32 = [v5 source];
  v33 = [v32 language];

  if (v33)
  {
    v34 = [v5 source];
    v35 = [v34 language];
    [v7 setObject:v35 forKeyedSubscript:@"sourceLanguage"];
  }

  v36 = objc_alloc(MEMORY[0x277CFE268]);
  v37 = [v5 source];
  v38 = [v37 bundleId];
  [v5 source];
  v39 = v53 = v7;
  v40 = [v39 documentId];
  v41 = [v5 source];
  v42 = [v41 groupId];
  v43 = [v36 initWithIdentifier:@"portrait" bundleIdentifier:v38 itemIdentifier:v40 groupIdentifier:v42 deviceIdentifier:v6 userIdentifier:0];

  v44 = MEMORY[0x277CFE1D8];
  v45 = [(PPDKStorage *)self topicStream];
  v46 = [v5 source];
  v47 = [v46 date];
  v48 = [v5 source];
  v49 = [v48 date];
  v50 = [v5 topic];
  v51 = [v50 topicIdentifier];
  v55 = [v44 eventWithStream:v45 source:v43 startDate:v47 endDate:v49 identifierStringValue:v51 metadata:v53];

  return v55;
}

- (id)topicRecordFromEvent:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 source];
  v6 = [v5 bundleID];

  v7 = [v4 source];
  v8 = [v7 itemID];

  v9 = [v4 value];
  v10 = [v9 stringValue];

  v11 = [v4 startDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (!v6 || !v8)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = v6;
      v85 = 2112;
      v86 = v8;
      v19 = "Warning: PPDKStorage failed to create topic record from _DKEvent with missing source field(s). bundleID: %@ documentID: %@";
LABEL_12:
      v20 = v18;
      v21 = 22;
LABEL_20:
      _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v14 = [v4 startDate];
  v15 = fabs(v13) != INFINITY;
  if (!v14 || !v15)
  {

    v18 = pp_default_log_handle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v84 = v6;
    v19 = "Warning: PPDKStorage failed to create topic record from _DKEvent with invalid start date. Source: %@";
LABEL_19:
    v20 = v18;
    v21 = 12;
    goto LABEL_20;
  }

  v16 = [v4 metadata];

  if (!v16)
  {
    v18 = pp_default_log_handle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v84 = v6;
    v19 = "Warning: PPDKStorage failed to create named entity record from _DKEvent with metadata==nil. Source: %@";
    goto LABEL_19;
  }

  if (!v10 || ([v10 hasPrefix:@"Q"] & 1) == 0)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v84 = v10;
      v85 = 2113;
      v86 = v6;
      v19 = "Warning: PPDKStorage failed to create topic record from _DKEvent due to invalid topic identifier %{sensitive}@. Source: %{private}@";
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if ([(PPDKStorage *)self _isFutureCompatibilityVersionAttachedToEvent:v4])
  {
    v17 = 0;
    goto LABEL_23;
  }

  v24 = [v4 metadata];
  v25 = [MEMORY[0x277CFE128] algorithm];
  v18 = [v24 objectForKeyedSubscript:v25];

  v26 = [v4 metadata];
  v27 = [MEMORY[0x277CFE128] score];
  v28 = [v26 objectForKeyedSubscript:v27];

  v29 = [v4 metadata];
  v30 = [MEMORY[0x277CFE128] decayRate];
  v31 = [v29 objectForKeyedSubscript:v30];

  v32 = [v4 metadata];
  v33 = [MEMORY[0x277CFE128] sentimentScore];
  v34 = [v32 objectForKeyedSubscript:v33];
  v35 = v34;
  v82 = v31;
  if (v34)
  {
    v81 = v34;
  }

  else
  {
    [v4 metadata];
    v37 = v36 = v28;
    v81 = [v37 objectForKeyedSubscript:@"sentimentScore"];

    v28 = v36;
  }

  v38 = [v4 metadata];
  v39 = [MEMORY[0x277CFE128] osBuild];
  v40 = [v38 objectForKeyedSubscript:v39];

  v41 = [v4 metadata];
  v42 = [MEMORY[0x277CFE128] assetVersion];
  v80 = [v41 objectForKeyedSubscript:v42];

  v43 = [v4 metadata];
  v77 = [v43 objectForKeyedSubscript:@"exactMatchInSourceText"];

  v44 = [v4 metadata];
  v79 = [v44 objectForKeyedSubscript:@"sourceLanguage"];

  v45 = [v4 metadata];
  v46 = [v45 objectForKeyedSubscript:@"sourceRelevanceDate"];

  v47 = [v18 unsignedIntegerValue];
  v48 = v82;
  v78 = v28;
  if (v18 && v28 && v82)
  {
    v72 = v47;
    [v28 doubleValue];
    if (v49 <= 2.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 1.0;
    }

    [v82 doubleValue];
    v52 = v51;
    [v81 doubleValue];
    v54 = v53;
    v76 = v40;
    v74 = v46;
    if (v46)
    {
      v55 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v46 doubleValue];
      v56 = [v55 initWithTimeIntervalSince1970:?];
    }

    else
    {
      v56 = 0;
    }

    v75 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v10];
    v63 = objc_alloc(MEMORY[0x277D3A4D8]);
    v64 = [v4 source];
    v65 = [v64 groupID];
    v66 = [v4 startDate];
    v73 = v56;
    v67 = [v63 initWithBundleId:v6 groupId:v65 documentId:v8 date:v66 relevanceDate:v56 contactHandles:0 language:v79 metadata:0];

    v17 = objc_opt_new();
    [v17 setTopic:v75];
    [v17 setSource:v67];
    [v17 setAlgorithm:v72];
    [v17 setInitialScore:v50];
    [v17 setDecayRate:v52];
    [v17 setSentimentScore:v54];
    v68 = [v4 source];
    v69 = [v68 deviceID];
    [v17 setIsLocal:v69 == 0];

    [v17 setExtractionOsBuild:v76];
    if (v80)
    {
      v70 = [v80 unsignedLongValue];
    }

    else
    {
      v70 = 0xFFFFFFFFLL;
    }

    v48 = v82;
    [v17 setExtractionAssetVersion:v70];
    v62 = v77;
    v71 = [objc_alloc(MEMORY[0x277D3A538]) initWithImpressionCount:1 occurrencesInSource:1 algorithmResultPosition:0 algorithmResultCount:0 exactMatchInSourceText:{objc_msgSend(v77, "BOOLValue")}];
    [v17 setMetadata:v71];

    v40 = v76;
    v46 = v74;
  }

  else
  {
    v57 = v47;
    v58 = pp_default_log_handle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277D3A548] describeAlgorithm:v57];
      v59 = v46;
      v61 = v60 = v40;
      *buf = 138412546;
      v84 = v6;
      v85 = 2112;
      v86 = v61;
      _os_log_impl(&dword_23224A000, v58, OS_LOG_TYPE_DEFAULT, "Warning: PPDKStorage failed to create topic record from _DKEvent with missing metadata field(s). Source: %@ (%@)", buf, 0x16u);

      v40 = v60;
      v46 = v59;
    }

    v17 = 0;
    v62 = v77;
  }

LABEL_22:
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_isFutureCompatibilityVersionAttachedToEvent:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v5 = [v3 metadata];
  v6 = [MEMORY[0x277CFE0F8] compatibilityVersion];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 metadata];
  v9 = v8;
  if (v7)
  {
    v10 = [MEMORY[0x277CFE0F8] compatibilityVersion];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:@"compatVersion"];

    if (!v12)
    {
      v11 = &unk_284783C30;
      goto LABEL_7;
    }

    v9 = [v4 metadata];
    v11 = [v9 objectForKeyedSubscript:@"compatVersion"];
  }

LABEL_7:
  v13 = [v11 unsignedIntValue];
  v14 = v13 > 2;
  if (v13 >= 3)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 67109120;
      v18[1] = [v11 unsignedIntValue];
      _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "Rejecting _DKEvent with compatibility version %u from THE MYSTERIOUS FUTURE.", v18, 8u);
    }
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)eventForNamedEntityRecord:(id)a3 sourceDeviceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CFE0F8] compatibilityVersion];
  [v7 setObject:&unk_284783C48 forKeyedSubscript:v8];

  [v7 setObject:&unk_284783C48 forKeyedSubscript:@"compatVersion"];
  v9 = MEMORY[0x277CCABB0];
  [v5 decayRate];
  v10 = [v9 numberWithDouble:?];
  v11 = [MEMORY[0x277CFE090] decayRate];
  [v7 setObject:v10 forKeyedSubscript:v11];

  v12 = [v5 entity];
  v13 = [v12 name];
  v14 = [MEMORY[0x277CFE090] name];
  [v7 setObject:v13 forKeyedSubscript:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "algorithm")}];
  v16 = [MEMORY[0x277CFE090] algorithm];
  [v7 setObject:v15 forKeyedSubscript:v16];

  v17 = [v5 entity];
  v18 = [v17 bestLanguage];
  v19 = [MEMORY[0x277CFE090] bestLanguage];
  [v7 setObject:v18 forKeyedSubscript:v19];

  v20 = MEMORY[0x277CCABB0];
  [v5 initialScore];
  v21 = [v20 numberWithDouble:?];
  v22 = [MEMORY[0x277CFE090] score];
  [v7 setObject:v21 forKeyedSubscript:v22];

  v23 = MEMORY[0x277CCABB0];
  [v5 sentimentScore];
  v24 = [v23 numberWithDouble:?];
  v25 = [MEMORY[0x277CFE090] sentimentScore];
  [v7 setObject:v24 forKeyedSubscript:v25];

  v26 = [v5 extractionOsBuild];

  if (v26)
  {
    v27 = [v5 extractionOsBuild];
    v28 = [MEMORY[0x277CFE090] osBuild];
    [v7 setObject:v27 forKeyedSubscript:v28];
  }

  [v5 extractionAssetVersion];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "extractionAssetVersion")}];
  v30 = [MEMORY[0x277CFE090] assetVersion];
  [v7 setObject:v29 forKeyedSubscript:v30];

  v31 = [v5 source];
  v32 = [v31 relevanceDate];

  if (v32)
  {
    v33 = MEMORY[0x277CCABB0];
    v34 = [v5 source];
    v35 = [v34 relevanceDate];
    [v35 timeIntervalSince1970];
    v36 = [v33 numberWithDouble:?];
    [v7 setObject:v36 forKeyedSubscript:@"sourceRelevanceDate"];
  }

  v37 = [v5 source];
  v38 = [v37 language];

  if (v38)
  {
    v39 = [v5 source];
    v40 = [v39 language];
    [v7 setObject:v40 forKeyedSubscript:@"sourceLanguage"];
  }

  v41 = objc_alloc(MEMORY[0x277CFE268]);
  v42 = [v5 source];
  v43 = [v42 bundleId];
  v44 = [v5 source];
  v45 = [v44 documentId];
  v46 = [v5 source];
  v47 = [v46 groupId];
  v48 = [v41 initWithIdentifier:@"portrait" bundleIdentifier:v43 itemIdentifier:v45 groupIdentifier:v47 deviceIdentifier:v6 userIdentifier:0];

  v49 = MEMORY[0x277CFE1D8];
  v50 = [(PPDKStorage *)self entityStream];
  v51 = [v5 source];
  v52 = [v51 date];
  v53 = [v5 source];
  v54 = [v53 date];
  v55 = [v5 entity];
  v56 = [v49 eventWithStream:v50 source:v48 startDate:v52 endDate:v54 categoryIntegerValue:objc_msgSend(v55 confidence:"category") metadata:{v7, 1.0}];

  return v56;
}

- (id)namedEntityRecordFromEvent:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 source];
  v6 = [v5 bundleID];

  v7 = [v4 source];
  v8 = [v7 itemID];

  v9 = [v4 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if (!v6 || !v8)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v81 = v6;
      v82 = 2112;
      v83 = v8;
      v17 = "Warning: PPDKStorage failed to create topic record from _DKEvent with missing source field(s). bundleID: %@ documentID: %@";
      v18 = v16;
      v19 = 22;
LABEL_15:
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = [v4 metadata];

  if (!v12)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = v6;
      v17 = "Warning: PPDKStorage failed to create named entity record from _DKEvent with metadata==nil. Source: %@";
LABEL_14:
      v18 = v16;
      v19 = 12;
      goto LABEL_15;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v13 = [v4 startDate];
  v14 = fabs(v11) != INFINITY;
  if (!v13 || !v14)
  {

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = v6;
      v17 = "Warning: PPDKStorage failed to create named entity record from _DKEvent with invalid start date. Source: %@";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([(PPDKStorage *)self _isFutureCompatibilityVersionAttachedToEvent:v4])
  {
    v15 = 0;
    goto LABEL_18;
  }

  v22 = [v4 metadata];
  v23 = [MEMORY[0x277CFE090] name];
  v16 = [v22 objectForKeyedSubscript:v23];

  v24 = [v4 metadata];
  v25 = [MEMORY[0x277CFE090] bestLanguage];
  v79 = [v24 objectForKeyedSubscript:v25];

  v26 = [v4 metadata];
  v27 = [MEMORY[0x277CFE090] score];
  v28 = [v26 objectForKeyedSubscript:v27];

  v29 = [v4 metadata];
  v30 = [MEMORY[0x277CFE090] decayRate];
  v31 = [v29 objectForKeyedSubscript:v30];

  v32 = [v4 metadata];
  v33 = [MEMORY[0x277CFE090] algorithm];
  v34 = [v32 objectForKeyedSubscript:v33];

  v35 = [v4 metadata];
  v36 = [MEMORY[0x277CFE090] sentimentScore];
  v37 = [v35 objectForKeyedSubscript:v36];
  v38 = v37;
  v78 = v28;
  if (v37)
  {
    v77 = v37;
  }

  else
  {
    v39 = [v4 metadata];
    v77 = [v39 objectForKeyedSubscript:@"sentimentScore"];
  }

  v40 = [v4 metadata];
  v41 = [MEMORY[0x277CFE090] osBuild];
  v42 = [v40 objectForKeyedSubscript:v41];

  v43 = [v4 metadata];
  v44 = [MEMORY[0x277CFE090] assetVersion];
  v76 = [v43 objectForKeyedSubscript:v44];

  v45 = [v4 metadata];
  v75 = [v45 objectForKeyedSubscript:@"sourceLanguage"];

  v46 = [v4 metadata];
  v74 = [v46 objectForKeyedSubscript:@"sourceRelevanceDate"];

  v72 = [v34 unsignedIntegerValue];
  v48 = v78;
  v47 = v79;
  if (v16 && v79 && v34 && v78 && v31)
  {
    [v78 doubleValue];
    if (v49 <= 2.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 1.0;
    }

    [v31 doubleValue];
    v52 = v51;
    [v77 doubleValue];
    v54 = v53;
    v69 = v31;
    v70 = v42;
    v73 = v34;
    if (v74)
    {
      v55 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v74 doubleValue];
      v56 = [v55 initWithTimeIntervalSince1970:?];
    }

    else
    {
      v56 = 0;
    }

    v59 = [v4 value];
    v60 = [v59 integerValue];

    v61 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v16 category:v60 language:v79];
    v62 = objc_alloc(MEMORY[0x277D3A4D8]);
    v63 = [v4 source];
    v64 = [v63 groupID];
    v65 = [v4 startDate];
    v68 = v56;
    v66 = [v62 initWithBundleId:v6 groupId:v64 documentId:v8 date:v65 relevanceDate:v56 contactHandles:0 language:v75 metadata:0];

    v15 = objc_opt_new();
    [v15 setEntity:v61];
    [v15 setSource:v66];
    [v15 setAlgorithm:v72];
    [v15 setInitialScore:v50];
    [v15 setDecayRate:v52];
    [v15 setSentimentScore:v54];
    v42 = v70;
    [v15 setExtractionOsBuild:v70];
    if (v76)
    {
      v67 = [v76 unsignedLongValue];
    }

    else
    {
      v67 = 0xFFFFFFFFLL;
    }

    v31 = v69;
    [v15 setExtractionAssetVersion:v67];

    v48 = v78;
    v47 = v79;
    v34 = v73;
  }

  else
  {
    v57 = pp_default_log_handle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277D3A438] describeAlgorithm:v72];
      v58 = v71 = v42;
      *buf = 138412546;
      v81 = v6;
      v82 = 2112;
      v83 = v58;
      _os_log_impl(&dword_23224A000, v57, OS_LOG_TYPE_DEFAULT, "Warning: PPDKStorage failed to create named entity record from _DKEvent with missing metadata field(s). Source: %@ (%@)", buf, 0x16u);

      v42 = v71;
    }

    v15 = 0;
  }

LABEL_17:
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)deleteAllEventsInEventStream:(id)a3 matchingPredicate:(id)a4 error:(id *)a5
{
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277CFE260];
  v10 = [a3 name];
  v11 = [v9 predicateForEventsWithStreamName:v10];

  v12 = MEMORY[0x277CCA920];
  v24[0] = v11;
  v24[1] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  if (a5)
  {
    *a5 = 0;
  }

  v15 = [(PPDKStorage *)self _readWriteKnowledgeStore];
  v21 = 0;
  v16 = [v15 deleteAllEventsMatchingPredicate:v14 error:&v21];
  v17 = v21;

  v18 = pp_default_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v16;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPDKStorage deleteAllEventsInEventStream:matchingPredicate delete %lu items", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

- (id)_readWriteKnowledgeStore
{
  if (a1)
  {
    if (_readWriteKnowledgeStore__pasOnceToken8 != -1)
    {
      dispatch_once(&_readWriteKnowledgeStore__pasOnceToken8, &__block_literal_global_108);
    }

    a1 = _readWriteKnowledgeStore__pasExprOnceResult;
    v1 = vars8;
  }

  return a1;
}

void __39__PPDKStorage__readWriteKnowledgeStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v2 = _readWriteKnowledgeStore__pasExprOnceResult;
  _readWriteKnowledgeStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)deleteAllEventsInEventStream:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PPDKStorage *)self _readWriteKnowledgeStore];
  v14 = 0;
  v8 = [v7 deleteAllEventsInEventStream:v6 error:&v14];

  v9 = v14;
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  v11 = pp_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPDKStorage deleteAllEventsInEventStream delete %lu items", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (BOOL)deleteEvents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PPDKStorage *)self _readWriteKnowledgeStore];
  LOBYTE(a4) = [v7 deleteObjects:v6 error:a4];

  return a4;
}

- (BOOL)saveEvents:(id)a3 stream:(id)a4 maxRetries:(int64_t)a5 retryInterval:(double)a6 shouldContinueBlock:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (![v12 count])
  {
    v30 = 1;
    goto LABEL_55;
  }

  v15 = [(PPDKStorage *)self entityStream];
  v16 = [v13 isEqual:v15];

  if (v16)
  {
    v17 = v12;
    v18 = v14;
    if (self)
    {
      v52 = v14;
      v53 = v13;
      v54 = v12;
      if (a6 <= 1.0)
      {
        v50 = [MEMORY[0x277CCA890] currentHandler];
        [v50 handleFailureInMethod:sel__saveEntityEvents_maxRetries_retryInterval_shouldContinueBlock_ object:self file:@"PPDKStorage.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"retryInterval > 1.0"}];
      }

      v19 = 0;
      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v19 < a5)
        {
          ++v19;
          goto LABEL_9;
        }

LABEL_41:
        v30 = 0;
        goto LABEL_52;
      }

      while (1)
      {
LABEL_9:
        v20 = v17;
        [(PPDKStorage *)self entityStreamCooldownTimeRemaining];
        if (v21 <= 0.0)
        {
          v27 = [MEMORY[0x277D425A0] waitForSemaphore:self->_entityWriteSem timeoutSeconds:0.0];
          v28 = pp_default_log_handle();
          v22 = v28;
          if (!v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v43 = [v20 count];
              *v60 = 134217984;
              v61 = v43;
              _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_INFO, "PPDKStorage sending %tu events to named entity stream.", v60, 0xCu);
            }

            v44 = [(PPDKStorage *)self _readWriteKnowledgeStore];
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v45 = __33__PPDKStorage__saveEntityEvents___block_invoke;
            goto LABEL_51;
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *v60 = 0;
            v24 = v22;
            v25 = "PPDKStorage: writing to the named entity stream failed because another write already in progress.";
            v26 = 2;
            goto LABEL_20;
          }
        }

        else
        {
          v22 = pp_default_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [(PPDKStorage *)self entityStreamCooldownTimeRemaining];
            *v60 = 134217984;
            v61 = v23;
            v24 = v22;
            v25 = "PPDKStorage: rate limit blocked write to the named entity stream. %f seconds remaining.";
            v26 = 12;
LABEL_20:
            _os_log_debug_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEBUG, v25, v60, v26);
          }
        }

        if (!v18[2](v18))
        {
          goto LABEL_41;
        }

        v29 = pp_default_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = a6;
          _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_INFO, "PPDKStorage: duet write sleeping to stay within rate limits. Retrying in %f seconds.", &buf, 0xCu);
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:a6];
        if ((a5 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_56:
    v30 = 0;
    goto LABEL_53;
  }

  v31 = [(PPDKStorage *)self topicStream];
  v32 = [v13 isEqual:v31];

  if (!v32)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPDKStorage: attempted save to unknown stream: %@", &buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_54;
  }

  v17 = v12;
  v18 = v14;
  if (!self)
  {
    goto LABEL_56;
  }

  v52 = v14;
  v53 = v13;
  v54 = v12;
  if (a6 <= 1.0)
  {
    v51 = [MEMORY[0x277CCA890] currentHandler];
    [v51 handleFailureInMethod:sel__saveTopicEvents_maxRetries_retryInterval_shouldContinueBlock_ object:self file:@"PPDKStorage.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"retryInterval > 1.0"}];
  }

  v33 = 0;
  if ((a5 & 0x8000000000000000) == 0)
  {
LABEL_27:
    if (v33 < a5)
    {
      ++v33;
      goto LABEL_29;
    }

    goto LABEL_41;
  }

  while (1)
  {
LABEL_29:
    v20 = v17;
    [(PPDKStorage *)self topicStreamCooldownTimeRemaining];
    if (v34 > 0.0)
    {
      v35 = pp_default_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [(PPDKStorage *)self topicStreamCooldownTimeRemaining];
        *v60 = 134217984;
        v61 = v36;
        v37 = v35;
        v38 = "PPDKStorage: rate limit blocked write to the topic stream. %f seconds remaining.";
        v39 = 12;
LABEL_40:
        _os_log_debug_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEBUG, v38, v60, v39);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v40 = [MEMORY[0x277D425A0] waitForSemaphore:self->_topicWriteSem timeoutSeconds:0.0];
    v41 = pp_default_log_handle();
    v35 = v41;
    if (!v40)
    {
      break;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *v60 = 0;
      v37 = v35;
      v38 = "PPDKStorage: writing to the topic stream failed because another write is already in progress.";
      v39 = 2;
      goto LABEL_40;
    }

LABEL_34:

    if (!v18[2](v18))
    {
      goto LABEL_41;
    }

    v42 = pp_default_log_handle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a6;
      _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_INFO, "PPDKStorage: duet write sleeping to stay within rate limits. Retrying in %f seconds.", &buf, 0xCu);
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:a6];
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v46 = [v20 count];
    *v60 = 134217984;
    v61 = v46;
    _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPDKStorage sending %tu events to topic stream", v60, 0xCu);
  }

  v44 = [(PPDKStorage *)self _readWriteKnowledgeStore];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v45 = __32__PPDKStorage__saveTopicEvents___block_invoke;
LABEL_51:
  v56 = v45;
  v57 = &unk_278973890;
  v47 = v20;
  v58 = v47;
  v59 = self;
  [v44 saveObjects:v47 responseQueue:0 withCompletion:&buf];

  v30 = 1;
LABEL_52:
  v13 = v53;
  v12 = v54;
  v14 = v52;
LABEL_53:

LABEL_54:
LABEL_55:

  v48 = *MEMORY[0x277D85DE8];
  return v30;
}

void __32__PPDKStorage__saveTopicEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) count];
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "_DKKnowledgeStore finished writing %tu events to the topic stream", &v10, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "_DKKnowledgeStore failed to save topic events with error: %@", &v10, 0xCu);
    }
  }

  [*(*(a1 + 40) + 16) runWithLockAcquired:&__block_literal_global_130];
  dispatch_semaphore_signal(*(*(a1 + 40) + 32));

  v9 = *MEMORY[0x277D85DE8];
}

void __32__PPDKStorage__saveTopicEvents___block_invoke_128(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];
  v2[1] = v3;
}

void __33__PPDKStorage__saveEntityEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) count];
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "_DKKnowledgeStore finished writing %tu events to the named entity stream.", &v10, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "_DKKnowledgeStore failed to save named entity events with error: %@", &v10, 0xCu);
    }
  }

  [*(*(a1 + 40) + 8) runWithLockAcquired:&__block_literal_global_136];
  dispatch_semaphore_signal(*(*(a1 + 40) + 24));

  v9 = *MEMORY[0x277D85DE8];
}

void __33__PPDKStorage__saveEntityEvents___block_invoke_134(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];
  v2[1] = v3;
}

- (BOOL)iterEventBatchesMatchingPredicate:(id)a3 streams:(id)a4 sortDescriptors:(id)a5 batchSize:(unint64_t)a6 readMetaData:(BOOL)a7 remoteOnly:(BOOL)a8 error:(id *)a9 block:(id)a10
{
  v29 = a7;
  v28 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v13 = a10;
  v14 = 0;
  v15 = 0;
  if (a6 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a6;
  }

  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:v34 eventStreams:v33 offset:v14 limit:v16 sortDescriptors:v32];
    [v18 setReadMetadata:v29];
    if (!v18)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:v28 object:self file:@"PPDKStorage.m" lineNumber:238 description:@"unexpectedly nil query"];
    }

    if (a8)
    {
      [MEMORY[0x277CFE1E0] onlyRemoteDevice];
    }

    else
    {
      [MEMORY[0x277CFE1E0] allDevices];
    }
    v19 = ;
    [v18 setDeviceIDs:{v19, v28}];

    v20 = [(PPDKStorage *)self _readWriteKnowledgeStore];
    v36 = v15;
    v21 = [v20 executeQuery:v18 error:&v36];
    v22 = v36;

    v23 = v21 != 0;
    if (!v21)
    {
      break;
    }

    v24 = [v21 _pas_filteredArrayWithTest:&__block_literal_global_116];

    v35 = 0;
    v13[2](v13, v24, &v35);
    if (v35 == 1)
    {
      goto LABEL_15;
    }

    v14 += [v24 count];
    v25 = [v24 count];

    objc_autoreleasePoolPop(v17);
    v15 = v22;
    if (v25 < v16)
    {
      v23 = 1;
      goto LABEL_17;
    }
  }

  if (a9)
  {
    v22 = v22;
    v24 = *a9;
    *a9 = v22;
LABEL_15:

    goto LABEL_16;
  }

  v23 = 0;
LABEL_16:

  objc_autoreleasePoolPop(v17);
LABEL_17:

  return v23;
}

uint64_t __119__PPDKStorage_iterEventBatchesMatchingPredicate_streams_sortDescriptors_batchSize_readMetaData_remoteOnly_error_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PPSettings sharedInstance];
  v4 = [v2 source];

  v5 = [v4 bundleID];
  v6 = [v3 bundleIdentifierIsEnabledForDonation:v5];

  return v6;
}

- (double)entityStreamCooldownTimeRemaining
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6531;
  v14 = __Block_byref_object_dispose__6532;
  v15 = 0;
  entityLock = self->_entityLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PPDKStorage_entityStreamCooldownTimeRemaining__block_invoke;
  v9[3] = &unk_278973828;
  v9[4] = &v10;
  [(_PASLock *)entityLock runWithLockAcquired:v9];
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  [v4 timeIntervalSinceNow];
  v6 = v5;

  [(PPDKStorage *)self namedEntityWriteBatchInterval];
  result = v6 + v7;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)topicStreamCooldownTimeRemaining
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6531;
  v14 = __Block_byref_object_dispose__6532;
  v15 = 0;
  topicLock = self->_topicLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PPDKStorage_topicStreamCooldownTimeRemaining__block_invoke;
  v9[3] = &unk_278973828;
  v9[4] = &v10;
  [(_PASLock *)topicLock runWithLockAcquired:v9];
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  [v4 timeIntervalSinceNow];
  v6 = v5;

  [(PPDKStorage *)self topicWriteBatchInterval];
  result = v6 + v7;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (id)tombstoneStream
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__PPDKStorage_tombstoneStream__block_invoke;
  v3[3] = &unk_278977B20;
  v3[4] = self;
  v3[5] = a2;
  if (tombstoneStream__pasOnceToken5 != -1)
  {
    dispatch_once(&tombstoneStream__pasOnceToken5, v3);
  }

  return tombstoneStream__pasExprOnceResult;
}

void __30__PPDKStorage_tombstoneStream__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CFE298] tombstoneStream];
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPDKStorage.m" lineNumber:177 description:@"Unable to resolve _DKEventStream /event/tombstone"];
  }

  v4 = tombstoneStream__pasExprOnceResult;
  tombstoneStream__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (id)topicStream
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__PPDKStorage_topicStream__block_invoke;
  v3[3] = &unk_278977B20;
  v3[4] = self;
  v3[5] = a2;
  if (topicStream__pasOnceToken4 != -1)
  {
    dispatch_once(&topicStream__pasOnceToken4, v3);
  }

  return topicStream__pasExprOnceResult;
}

void __26__PPDKStorage_topicStream__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CFE100] topicStream];
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPDKStorage.m" lineNumber:168 description:@"Unable to resolve _DKEventStream /portrait/topic"];
  }

  v4 = topicStream__pasExprOnceResult;
  topicStream__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (id)entityStream
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__PPDKStorage_entityStream__block_invoke;
  v3[3] = &unk_278977B20;
  v3[4] = self;
  v3[5] = a2;
  if (entityStream__pasOnceToken3 != -1)
  {
    dispatch_once(&entityStream__pasOnceToken3, v3);
  }

  return entityStream__pasExprOnceResult;
}

void __27__PPDKStorage_entityStream__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CFE100] entityStream];
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPDKStorage.m" lineNumber:159 description:@"Unable to resolve _DKEventStream /portrait/entity"];
  }

  v4 = entityStream__pasExprOnceResult;
  entityStream__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

+ (PPDKStorage)sharedInstance
{
  if (sharedInstance__pasOnceToken2_6545 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_6545, &__block_literal_global_6546);
  }

  v3 = sharedInstance__pasExprOnceResult_6547;

  return v3;
}

void __29__PPDKStorage_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PPDKStorage alloc];
  if (v1 && (v23.receiver = v1, v23.super_class = PPDKStorage, (v2 = objc_msgSendSuper2(&v23, sel_init)) != 0))
  {
    v3 = v2;
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = v4[1];
    v4[1] = v5;

    v7 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v4];
    v8 = v3[1];
    v3[1] = v7;

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = v9[1];
    v9[1] = v10;

    v12 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    v13 = v3[2];
    v3[2] = v12;

    v14 = dispatch_semaphore_create(1);
    v15 = v3[3];
    v3[3] = v14;

    v16 = dispatch_semaphore_create(1);
    v17 = v3[4];
    v3[4] = v16;

    v18 = [v3 registerForNamedEntitiesRemoteAdditionWithBlock:&__block_literal_global_164];
    v19 = [v3 registerForNamedEntitiesRemoteDeletionWithBlock:&__block_literal_global_167];
    v20 = [v3 registerForTopicsRemoteAdditionWithBlock:&__block_literal_global_169];
    v21 = [v3 registerForTopicsRemoteDeletionWithBlock:&__block_literal_global_172];
  }

  else
  {
    v3 = 0;
  }

  v22 = sharedInstance__pasExprOnceResult_6547;
  sharedInstance__pasExprOnceResult_6547 = v3;

  objc_autoreleasePoolPop(v0);
}

@end