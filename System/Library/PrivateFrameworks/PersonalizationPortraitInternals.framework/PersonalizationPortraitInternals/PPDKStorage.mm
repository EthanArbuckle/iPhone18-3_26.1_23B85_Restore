@interface PPDKStorage
+ (PPDKStorage)sharedInstance;
- (BOOL)_isFutureCompatibilityVersionAttachedToEvent:(uint64_t)event;
- (BOOL)deleteAllEventsInEventStream:(id)stream error:(id *)error;
- (BOOL)deleteAllEventsInEventStream:(id)stream matchingPredicate:(id)predicate error:(id *)error;
- (BOOL)deleteEvents:(id)events error:(id *)error;
- (BOOL)iterEventBatchesMatchingPredicate:(id)predicate streams:(id)streams sortDescriptors:(id)descriptors batchSize:(unint64_t)size readMetaData:(BOOL)data remoteOnly:(BOOL)only error:(id *)error block:(id)self0;
- (BOOL)saveEvents:(id)events stream:(id)stream maxRetries:(int64_t)retries retryInterval:(double)interval shouldContinueBlock:(id)block;
- (double)entityStreamCooldownTimeRemaining;
- (double)topicStreamCooldownTimeRemaining;
- (id)_readWriteKnowledgeStore;
- (id)entityStream;
- (id)eventForNamedEntityRecord:(id)record sourceDeviceID:(id)d;
- (id)eventForTopicRecord:(id)record sourceDeviceID:(id)d;
- (id)namedEntityRecordFromEvent:(id)event;
- (id)registerForNamedEntitiesRemoteAdditionWithBlock:(id)block;
- (id)registerForNamedEntitiesRemoteDeletionWithBlock:(id)block;
- (id)registerForTopicsRemoteAdditionWithBlock:(id)block;
- (id)registerForTopicsRemoteDeletionWithBlock:(id)block;
- (id)tombstoneStream;
- (id)topicRecordFromEvent:(id)event;
- (id)topicStream;
- (void)removeObserver:(id)observer;
@end

@implementation PPDKStorage

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    v3 = MEMORY[0x277CCA9A0];
    observerCopy = observer;
    defaultCenter = [v3 defaultCenter];
    [defaultCenter removeObserver:observerCopy];
  }
}

- (id)registerForTopicsRemoteDeletionWithBlock:(id)block
{
  blockCopy = block;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  topicStream = [(PPDKStorage *)self topicStream];
  name = [topicStream name];

  if (name)
  {
    v8 = *MEMORY[0x277CFE2F8];
    name2 = [topicStream name];
    v10 = [defaultCenter addObserverForName:v8 object:name2 queue:0 usingBlock:blockCopy];
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

- (id)registerForTopicsRemoteAdditionWithBlock:(id)block
{
  blockCopy = block;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  topicStream = [(PPDKStorage *)self topicStream];
  name = [topicStream name];

  if (name)
  {
    v8 = *MEMORY[0x277CFE2F0];
    name2 = [topicStream name];
    v10 = [defaultCenter addObserverForName:v8 object:name2 queue:0 usingBlock:blockCopy];
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

- (id)registerForNamedEntitiesRemoteDeletionWithBlock:(id)block
{
  blockCopy = block;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  entityStream = [(PPDKStorage *)self entityStream];
  name = [entityStream name];

  if (name)
  {
    v8 = *MEMORY[0x277CFE2F8];
    name2 = [entityStream name];
    v10 = [defaultCenter addObserverForName:v8 object:name2 queue:0 usingBlock:blockCopy];
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

- (id)registerForNamedEntitiesRemoteAdditionWithBlock:(id)block
{
  blockCopy = block;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  entityStream = [(PPDKStorage *)self entityStream];
  name = [entityStream name];

  if (name)
  {
    v8 = *MEMORY[0x277CFE2F0];
    name2 = [entityStream name];
    v10 = [defaultCenter addObserverForName:v8 object:name2 queue:0 usingBlock:blockCopy];
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

- (id)eventForTopicRecord:(id)record sourceDeviceID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v7 = objc_opt_new();
  compatibilityVersion = [MEMORY[0x277CFE0F8] compatibilityVersion];
  [v7 setObject:&unk_284783C48 forKeyedSubscript:compatibilityVersion];

  [v7 setObject:&unk_284783C48 forKeyedSubscript:@"compatVersion"];
  v9 = MEMORY[0x277CCABB0];
  [recordCopy decayRate];
  v10 = [v9 numberWithDouble:?];
  decayRate = [MEMORY[0x277CFE128] decayRate];
  [v7 setObject:v10 forKeyedSubscript:decayRate];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "algorithm")}];
  algorithm = [MEMORY[0x277CFE128] algorithm];
  [v7 setObject:v12 forKeyedSubscript:algorithm];

  v14 = MEMORY[0x277CCABB0];
  [recordCopy initialScore];
  v15 = [v14 numberWithDouble:?];
  score = [MEMORY[0x277CFE128] score];
  [v7 setObject:v15 forKeyedSubscript:score];

  extractionOsBuild = [recordCopy extractionOsBuild];

  if (extractionOsBuild)
  {
    extractionOsBuild2 = [recordCopy extractionOsBuild];
    osBuild = [MEMORY[0x277CFE128] osBuild];
    [v7 setObject:extractionOsBuild2 forKeyedSubscript:osBuild];
  }

  [recordCopy extractionAssetVersion];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(recordCopy, "extractionAssetVersion")}];
  assetVersion = [MEMORY[0x277CFE128] assetVersion];
  [v7 setObject:v20 forKeyedSubscript:assetVersion];

  metadata = [recordCopy metadata];
  LODWORD(assetVersion) = [metadata exactMatchInSourceText];

  if (assetVersion)
  {
    v23 = MEMORY[0x277CCABB0];
    metadata2 = [recordCopy metadata];
    v25 = [v23 numberWithBool:{objc_msgSend(metadata2, "exactMatchInSourceText")}];
    [v7 setObject:v25 forKeyedSubscript:@"exactMatchInSourceText"];
  }

  source = [recordCopy source];
  relevanceDate = [source relevanceDate];

  if (relevanceDate)
  {
    v28 = MEMORY[0x277CCABB0];
    source2 = [recordCopy source];
    relevanceDate2 = [source2 relevanceDate];
    [relevanceDate2 timeIntervalSince1970];
    v31 = [v28 numberWithDouble:?];
    [v7 setObject:v31 forKeyedSubscript:@"sourceRelevanceDate"];
  }

  source3 = [recordCopy source];
  language = [source3 language];

  if (language)
  {
    source4 = [recordCopy source];
    language2 = [source4 language];
    [v7 setObject:language2 forKeyedSubscript:@"sourceLanguage"];
  }

  v36 = objc_alloc(MEMORY[0x277CFE268]);
  source5 = [recordCopy source];
  bundleId = [source5 bundleId];
  [recordCopy source];
  v39 = v53 = v7;
  documentId = [v39 documentId];
  source6 = [recordCopy source];
  groupId = [source6 groupId];
  v43 = [v36 initWithIdentifier:@"portrait" bundleIdentifier:bundleId itemIdentifier:documentId groupIdentifier:groupId deviceIdentifier:dCopy userIdentifier:0];

  v44 = MEMORY[0x277CFE1D8];
  topicStream = [(PPDKStorage *)self topicStream];
  source7 = [recordCopy source];
  date = [source7 date];
  source8 = [recordCopy source];
  date2 = [source8 date];
  topic = [recordCopy topic];
  topicIdentifier = [topic topicIdentifier];
  v55 = [v44 eventWithStream:topicStream source:v43 startDate:date endDate:date2 identifierStringValue:topicIdentifier metadata:v53];

  return v55;
}

- (id)topicRecordFromEvent:(id)event
{
  v87 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  source = [eventCopy source];
  bundleID = [source bundleID];

  source2 = [eventCopy source];
  itemID = [source2 itemID];

  value = [eventCopy value];
  stringValue = [value stringValue];

  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v13 = v12;

  if (!bundleID || !itemID)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = bundleID;
      v85 = 2112;
      v86 = itemID;
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

  startDate2 = [eventCopy startDate];
  v15 = fabs(v13) != INFINITY;
  if (!startDate2 || !v15)
  {

    v18 = pp_default_log_handle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v84 = bundleID;
    v19 = "Warning: PPDKStorage failed to create topic record from _DKEvent with invalid start date. Source: %@";
LABEL_19:
    v20 = v18;
    v21 = 12;
    goto LABEL_20;
  }

  metadata = [eventCopy metadata];

  if (!metadata)
  {
    v18 = pp_default_log_handle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v84 = bundleID;
    v19 = "Warning: PPDKStorage failed to create named entity record from _DKEvent with metadata==nil. Source: %@";
    goto LABEL_19;
  }

  if (!stringValue || ([stringValue hasPrefix:@"Q"] & 1) == 0)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v84 = stringValue;
      v85 = 2113;
      v86 = bundleID;
      v19 = "Warning: PPDKStorage failed to create topic record from _DKEvent due to invalid topic identifier %{sensitive}@. Source: %{private}@";
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if ([(PPDKStorage *)self _isFutureCompatibilityVersionAttachedToEvent:eventCopy])
  {
    v17 = 0;
    goto LABEL_23;
  }

  metadata2 = [eventCopy metadata];
  algorithm = [MEMORY[0x277CFE128] algorithm];
  v18 = [metadata2 objectForKeyedSubscript:algorithm];

  metadata3 = [eventCopy metadata];
  score = [MEMORY[0x277CFE128] score];
  v28 = [metadata3 objectForKeyedSubscript:score];

  metadata4 = [eventCopy metadata];
  decayRate = [MEMORY[0x277CFE128] decayRate];
  v31 = [metadata4 objectForKeyedSubscript:decayRate];

  metadata5 = [eventCopy metadata];
  sentimentScore = [MEMORY[0x277CFE128] sentimentScore];
  v34 = [metadata5 objectForKeyedSubscript:sentimentScore];
  v35 = v34;
  v82 = v31;
  if (v34)
  {
    v81 = v34;
  }

  else
  {
    [eventCopy metadata];
    v37 = v36 = v28;
    v81 = [v37 objectForKeyedSubscript:@"sentimentScore"];

    v28 = v36;
  }

  metadata6 = [eventCopy metadata];
  osBuild = [MEMORY[0x277CFE128] osBuild];
  v40 = [metadata6 objectForKeyedSubscript:osBuild];

  metadata7 = [eventCopy metadata];
  assetVersion = [MEMORY[0x277CFE128] assetVersion];
  v80 = [metadata7 objectForKeyedSubscript:assetVersion];

  metadata8 = [eventCopy metadata];
  v77 = [metadata8 objectForKeyedSubscript:@"exactMatchInSourceText"];

  metadata9 = [eventCopy metadata];
  v79 = [metadata9 objectForKeyedSubscript:@"sourceLanguage"];

  metadata10 = [eventCopy metadata];
  v46 = [metadata10 objectForKeyedSubscript:@"sourceRelevanceDate"];

  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v48 = v82;
  v78 = v28;
  if (v18 && v28 && v82)
  {
    v72 = unsignedIntegerValue;
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

    v75 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:stringValue];
    v63 = objc_alloc(MEMORY[0x277D3A4D8]);
    source3 = [eventCopy source];
    groupID = [source3 groupID];
    startDate3 = [eventCopy startDate];
    v73 = v56;
    v67 = [v63 initWithBundleId:bundleID groupId:groupID documentId:itemID date:startDate3 relevanceDate:v56 contactHandles:0 language:v79 metadata:0];

    v17 = objc_opt_new();
    [v17 setTopic:v75];
    [v17 setSource:v67];
    [v17 setAlgorithm:v72];
    [v17 setInitialScore:v50];
    [v17 setDecayRate:v52];
    [v17 setSentimentScore:v54];
    source4 = [eventCopy source];
    deviceID = [source4 deviceID];
    [v17 setIsLocal:deviceID == 0];

    [v17 setExtractionOsBuild:v76];
    if (v80)
    {
      unsignedLongValue = [v80 unsignedLongValue];
    }

    else
    {
      unsignedLongValue = 0xFFFFFFFFLL;
    }

    v48 = v82;
    [v17 setExtractionAssetVersion:unsignedLongValue];
    v62 = v77;
    v71 = [objc_alloc(MEMORY[0x277D3A538]) initWithImpressionCount:1 occurrencesInSource:1 algorithmResultPosition:0 algorithmResultCount:0 exactMatchInSourceText:{objc_msgSend(v77, "BOOLValue")}];
    [v17 setMetadata:v71];

    v40 = v76;
    v46 = v74;
  }

  else
  {
    v57 = unsignedIntegerValue;
    v58 = pp_default_log_handle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277D3A548] describeAlgorithm:v57];
      v59 = v46;
      v61 = v60 = v40;
      *buf = 138412546;
      v84 = bundleID;
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

- (BOOL)_isFutureCompatibilityVersionAttachedToEvent:(uint64_t)event
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!event)
  {
    v14 = 0;
    goto LABEL_12;
  }

  metadata = [v3 metadata];
  compatibilityVersion = [MEMORY[0x277CFE0F8] compatibilityVersion];
  v7 = [metadata objectForKeyedSubscript:compatibilityVersion];

  metadata2 = [v4 metadata];
  metadata3 = metadata2;
  if (v7)
  {
    compatibilityVersion2 = [MEMORY[0x277CFE0F8] compatibilityVersion];
    v11 = [metadata3 objectForKeyedSubscript:compatibilityVersion2];
  }

  else
  {
    v12 = [metadata2 objectForKeyedSubscript:@"compatVersion"];

    if (!v12)
    {
      v11 = &unk_284783C30;
      goto LABEL_7;
    }

    metadata3 = [v4 metadata];
    v11 = [metadata3 objectForKeyedSubscript:@"compatVersion"];
  }

LABEL_7:
  unsignedIntValue = [v11 unsignedIntValue];
  v14 = unsignedIntValue > 2;
  if (unsignedIntValue >= 3)
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

- (id)eventForNamedEntityRecord:(id)record sourceDeviceID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v7 = objc_opt_new();
  compatibilityVersion = [MEMORY[0x277CFE0F8] compatibilityVersion];
  [v7 setObject:&unk_284783C48 forKeyedSubscript:compatibilityVersion];

  [v7 setObject:&unk_284783C48 forKeyedSubscript:@"compatVersion"];
  v9 = MEMORY[0x277CCABB0];
  [recordCopy decayRate];
  v10 = [v9 numberWithDouble:?];
  decayRate = [MEMORY[0x277CFE090] decayRate];
  [v7 setObject:v10 forKeyedSubscript:decayRate];

  entity = [recordCopy entity];
  name = [entity name];
  name2 = [MEMORY[0x277CFE090] name];
  [v7 setObject:name forKeyedSubscript:name2];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "algorithm")}];
  algorithm = [MEMORY[0x277CFE090] algorithm];
  [v7 setObject:v15 forKeyedSubscript:algorithm];

  entity2 = [recordCopy entity];
  bestLanguage = [entity2 bestLanguage];
  bestLanguage2 = [MEMORY[0x277CFE090] bestLanguage];
  [v7 setObject:bestLanguage forKeyedSubscript:bestLanguage2];

  v20 = MEMORY[0x277CCABB0];
  [recordCopy initialScore];
  v21 = [v20 numberWithDouble:?];
  score = [MEMORY[0x277CFE090] score];
  [v7 setObject:v21 forKeyedSubscript:score];

  v23 = MEMORY[0x277CCABB0];
  [recordCopy sentimentScore];
  v24 = [v23 numberWithDouble:?];
  sentimentScore = [MEMORY[0x277CFE090] sentimentScore];
  [v7 setObject:v24 forKeyedSubscript:sentimentScore];

  extractionOsBuild = [recordCopy extractionOsBuild];

  if (extractionOsBuild)
  {
    extractionOsBuild2 = [recordCopy extractionOsBuild];
    osBuild = [MEMORY[0x277CFE090] osBuild];
    [v7 setObject:extractionOsBuild2 forKeyedSubscript:osBuild];
  }

  [recordCopy extractionAssetVersion];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(recordCopy, "extractionAssetVersion")}];
  assetVersion = [MEMORY[0x277CFE090] assetVersion];
  [v7 setObject:v29 forKeyedSubscript:assetVersion];

  source = [recordCopy source];
  relevanceDate = [source relevanceDate];

  if (relevanceDate)
  {
    v33 = MEMORY[0x277CCABB0];
    source2 = [recordCopy source];
    relevanceDate2 = [source2 relevanceDate];
    [relevanceDate2 timeIntervalSince1970];
    v36 = [v33 numberWithDouble:?];
    [v7 setObject:v36 forKeyedSubscript:@"sourceRelevanceDate"];
  }

  source3 = [recordCopy source];
  language = [source3 language];

  if (language)
  {
    source4 = [recordCopy source];
    language2 = [source4 language];
    [v7 setObject:language2 forKeyedSubscript:@"sourceLanguage"];
  }

  v41 = objc_alloc(MEMORY[0x277CFE268]);
  source5 = [recordCopy source];
  bundleId = [source5 bundleId];
  source6 = [recordCopy source];
  documentId = [source6 documentId];
  source7 = [recordCopy source];
  groupId = [source7 groupId];
  v48 = [v41 initWithIdentifier:@"portrait" bundleIdentifier:bundleId itemIdentifier:documentId groupIdentifier:groupId deviceIdentifier:dCopy userIdentifier:0];

  v49 = MEMORY[0x277CFE1D8];
  entityStream = [(PPDKStorage *)self entityStream];
  source8 = [recordCopy source];
  date = [source8 date];
  source9 = [recordCopy source];
  date2 = [source9 date];
  entity3 = [recordCopy entity];
  v56 = [v49 eventWithStream:entityStream source:v48 startDate:date endDate:date2 categoryIntegerValue:objc_msgSend(entity3 confidence:"category") metadata:{v7, 1.0}];

  return v56;
}

- (id)namedEntityRecordFromEvent:(id)event
{
  v84 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  source = [eventCopy source];
  bundleID = [source bundleID];

  source2 = [eventCopy source];
  itemID = [source2 itemID];

  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v11 = v10;

  if (!bundleID || !itemID)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v81 = bundleID;
      v82 = 2112;
      v83 = itemID;
      v17 = "Warning: PPDKStorage failed to create topic record from _DKEvent with missing source field(s). bundleID: %@ documentID: %@";
      v18 = v16;
      v19 = 22;
LABEL_15:
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  metadata = [eventCopy metadata];

  if (!metadata)
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = bundleID;
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

  startDate2 = [eventCopy startDate];
  v14 = fabs(v11) != INFINITY;
  if (!startDate2 || !v14)
  {

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = bundleID;
      v17 = "Warning: PPDKStorage failed to create named entity record from _DKEvent with invalid start date. Source: %@";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([(PPDKStorage *)self _isFutureCompatibilityVersionAttachedToEvent:eventCopy])
  {
    v15 = 0;
    goto LABEL_18;
  }

  metadata2 = [eventCopy metadata];
  name = [MEMORY[0x277CFE090] name];
  v16 = [metadata2 objectForKeyedSubscript:name];

  metadata3 = [eventCopy metadata];
  bestLanguage = [MEMORY[0x277CFE090] bestLanguage];
  v79 = [metadata3 objectForKeyedSubscript:bestLanguage];

  metadata4 = [eventCopy metadata];
  score = [MEMORY[0x277CFE090] score];
  v28 = [metadata4 objectForKeyedSubscript:score];

  metadata5 = [eventCopy metadata];
  decayRate = [MEMORY[0x277CFE090] decayRate];
  v31 = [metadata5 objectForKeyedSubscript:decayRate];

  metadata6 = [eventCopy metadata];
  algorithm = [MEMORY[0x277CFE090] algorithm];
  v34 = [metadata6 objectForKeyedSubscript:algorithm];

  metadata7 = [eventCopy metadata];
  sentimentScore = [MEMORY[0x277CFE090] sentimentScore];
  v37 = [metadata7 objectForKeyedSubscript:sentimentScore];
  v38 = v37;
  v78 = v28;
  if (v37)
  {
    v77 = v37;
  }

  else
  {
    metadata8 = [eventCopy metadata];
    v77 = [metadata8 objectForKeyedSubscript:@"sentimentScore"];
  }

  metadata9 = [eventCopy metadata];
  osBuild = [MEMORY[0x277CFE090] osBuild];
  v42 = [metadata9 objectForKeyedSubscript:osBuild];

  metadata10 = [eventCopy metadata];
  assetVersion = [MEMORY[0x277CFE090] assetVersion];
  v76 = [metadata10 objectForKeyedSubscript:assetVersion];

  metadata11 = [eventCopy metadata];
  v75 = [metadata11 objectForKeyedSubscript:@"sourceLanguage"];

  metadata12 = [eventCopy metadata];
  v74 = [metadata12 objectForKeyedSubscript:@"sourceRelevanceDate"];

  unsignedIntegerValue = [v34 unsignedIntegerValue];
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

    value = [eventCopy value];
    integerValue = [value integerValue];

    v61 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v16 category:integerValue language:v79];
    v62 = objc_alloc(MEMORY[0x277D3A4D8]);
    source3 = [eventCopy source];
    groupID = [source3 groupID];
    startDate3 = [eventCopy startDate];
    v68 = v56;
    v66 = [v62 initWithBundleId:bundleID groupId:groupID documentId:itemID date:startDate3 relevanceDate:v56 contactHandles:0 language:v75 metadata:0];

    v15 = objc_opt_new();
    [v15 setEntity:v61];
    [v15 setSource:v66];
    [v15 setAlgorithm:unsignedIntegerValue];
    [v15 setInitialScore:v50];
    [v15 setDecayRate:v52];
    [v15 setSentimentScore:v54];
    v42 = v70;
    [v15 setExtractionOsBuild:v70];
    if (v76)
    {
      unsignedLongValue = [v76 unsignedLongValue];
    }

    else
    {
      unsignedLongValue = 0xFFFFFFFFLL;
    }

    v31 = v69;
    [v15 setExtractionAssetVersion:unsignedLongValue];

    v48 = v78;
    v47 = v79;
    v34 = v73;
  }

  else
  {
    v57 = pp_default_log_handle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277D3A438] describeAlgorithm:unsignedIntegerValue];
      v58 = v71 = v42;
      *buf = 138412546;
      v81 = bundleID;
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

- (BOOL)deleteAllEventsInEventStream:(id)stream matchingPredicate:(id)predicate error:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v9 = MEMORY[0x277CFE260];
  name = [stream name];
  v11 = [v9 predicateForEventsWithStreamName:name];

  v12 = MEMORY[0x277CCA920];
  v24[0] = v11;
  v24[1] = predicateCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  if (error)
  {
    *error = 0;
  }

  _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
  v21 = 0;
  v16 = [_readWriteKnowledgeStore deleteAllEventsMatchingPredicate:v14 error:&v21];
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
  if (self)
  {
    if (_readWriteKnowledgeStore__pasOnceToken8 != -1)
    {
      dispatch_once(&_readWriteKnowledgeStore__pasOnceToken8, &__block_literal_global_108);
    }

    self = _readWriteKnowledgeStore__pasExprOnceResult;
    v1 = vars8;
  }

  return self;
}

void __39__PPDKStorage__readWriteKnowledgeStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v2 = _readWriteKnowledgeStore__pasExprOnceResult;
  _readWriteKnowledgeStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)deleteAllEventsInEventStream:(id)stream error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
  v14 = 0;
  v8 = [_readWriteKnowledgeStore deleteAllEventsInEventStream:streamCopy error:&v14];

  v9 = v14;
  if (error)
  {
    v10 = v9;
    *error = v9;
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

- (BOOL)deleteEvents:(id)events error:(id *)error
{
  eventsCopy = events;
  _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
  LOBYTE(error) = [_readWriteKnowledgeStore deleteObjects:eventsCopy error:error];

  return error;
}

- (BOOL)saveEvents:(id)events stream:(id)stream maxRetries:(int64_t)retries retryInterval:(double)interval shouldContinueBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  streamCopy = stream;
  blockCopy = block;
  if (![eventsCopy count])
  {
    v30 = 1;
    goto LABEL_55;
  }

  entityStream = [(PPDKStorage *)self entityStream];
  v16 = [streamCopy isEqual:entityStream];

  if (v16)
  {
    v17 = eventsCopy;
    v18 = blockCopy;
    if (self)
    {
      v52 = blockCopy;
      v53 = streamCopy;
      v54 = eventsCopy;
      if (interval <= 1.0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__saveEntityEvents_maxRetries_retryInterval_shouldContinueBlock_ object:self file:@"PPDKStorage.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"retryInterval > 1.0"}];
      }

      v19 = 0;
      if ((retries & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v19 < retries)
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

            _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
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
          *(&buf + 4) = interval;
          _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_INFO, "PPDKStorage: duet write sleeping to stay within rate limits. Retrying in %f seconds.", &buf, 0xCu);
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:interval];
        if ((retries & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_56:
    v30 = 0;
    goto LABEL_53;
  }

  topicStream = [(PPDKStorage *)self topicStream];
  v32 = [streamCopy isEqual:topicStream];

  if (!v32)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = streamCopy;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPDKStorage: attempted save to unknown stream: %@", &buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_54;
  }

  v17 = eventsCopy;
  v18 = blockCopy;
  if (!self)
  {
    goto LABEL_56;
  }

  v52 = blockCopy;
  v53 = streamCopy;
  v54 = eventsCopy;
  if (interval <= 1.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__saveTopicEvents_maxRetries_retryInterval_shouldContinueBlock_ object:self file:@"PPDKStorage.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"retryInterval > 1.0"}];
  }

  v33 = 0;
  if ((retries & 0x8000000000000000) == 0)
  {
LABEL_27:
    if (v33 < retries)
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
      *(&buf + 4) = interval;
      _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_INFO, "PPDKStorage: duet write sleeping to stay within rate limits. Retrying in %f seconds.", &buf, 0xCu);
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:interval];
    if ((retries & 0x8000000000000000) == 0)
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

  _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v45 = __32__PPDKStorage__saveTopicEvents___block_invoke;
LABEL_51:
  v56 = v45;
  v57 = &unk_278973890;
  v47 = v20;
  v58 = v47;
  selfCopy = self;
  [_readWriteKnowledgeStore saveObjects:v47 responseQueue:0 withCompletion:&buf];

  v30 = 1;
LABEL_52:
  streamCopy = v53;
  eventsCopy = v54;
  blockCopy = v52;
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

- (BOOL)iterEventBatchesMatchingPredicate:(id)predicate streams:(id)streams sortDescriptors:(id)descriptors batchSize:(unint64_t)size readMetaData:(BOOL)data remoteOnly:(BOOL)only error:(id *)error block:(id)self0
{
  dataCopy = data;
  v28 = a2;
  predicateCopy = predicate;
  streamsCopy = streams;
  descriptorsCopy = descriptors;
  blockCopy = block;
  v14 = 0;
  v15 = 0;
  if (size <= 1)
  {
    sizeCopy = 1;
  }

  else
  {
    sizeCopy = size;
  }

  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:predicateCopy eventStreams:streamsCopy offset:v14 limit:sizeCopy sortDescriptors:descriptorsCopy];
    [v18 setReadMetadata:dataCopy];
    if (!v18)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v28 object:self file:@"PPDKStorage.m" lineNumber:238 description:@"unexpectedly nil query"];
    }

    if (only)
    {
      [MEMORY[0x277CFE1E0] onlyRemoteDevice];
    }

    else
    {
      [MEMORY[0x277CFE1E0] allDevices];
    }
    v19 = ;
    [v18 setDeviceIDs:{v19, v28}];

    _readWriteKnowledgeStore = [(PPDKStorage *)self _readWriteKnowledgeStore];
    v36 = v15;
    v21 = [_readWriteKnowledgeStore executeQuery:v18 error:&v36];
    v22 = v36;

    v23 = v21 != 0;
    if (!v21)
    {
      break;
    }

    v24 = [v21 _pas_filteredArrayWithTest:&__block_literal_global_116];

    v35 = 0;
    blockCopy[2](blockCopy, v24, &v35);
    if (v35 == 1)
    {
      goto LABEL_15;
    }

    v14 += [v24 count];
    v25 = [v24 count];

    objc_autoreleasePoolPop(v17);
    v15 = v22;
    if (v25 < sizeCopy)
    {
      v23 = 1;
      goto LABEL_17;
    }
  }

  if (error)
  {
    v22 = v22;
    v24 = *error;
    *error = v22;
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