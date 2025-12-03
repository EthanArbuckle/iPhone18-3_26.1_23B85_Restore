@interface _PSInteractionPredictor
+ (BOOL)cloneAdaptableModelURL:(id)l toFilePathURL:(id)rL;
+ (BOOL)removeMlmodelcFolderAtPath:(id)path;
+ (id)clustersArchiveFileForDate:(id)date modelName:(id)name;
+ (id)defaultClustersArchiveDirectory;
+ (id)getIntermediateModelURLForModelName:(id)name;
+ (id)getModelURLfromName:(id)name;
+ (id)loadModelFromUrl:(id)url;
+ (void)deleteArchiveFileAtDate:(id)date modelName:(id)name;
+ (void)deleteArchiveFiles;
- (_PSInteractionPredictor)initWithInteractionStore:(id)store atDate:(id)date withModelName:(id)name modelConfiguration:(id)configuration;
- (double)getMinDistanceForPt:(id)pt toClusters:(id)clusters;
- (double)timeSinceLastContactTo:(id)to FromDate:(id)date inTrainArray:(id)array;
- (id)convertLogToClusterPointArray:(id)array;
- (id)createMLArrayProviderFromTrainArray:(id)array;
- (id)findLatestArchiveDateBefore:(id)before modelName:(id)name;
- (id)getClusterDictionaryFromTrainArray:(id)array usingDBSCANParamsMinPts:(int)pts andEps:(double)eps;
- (id)getClusteringResultsForPoint:(id)point usingClusterDictionary:(id)dictionary;
- (id)getConversationIDFromInteraction:(id)interaction;
- (id)getConversationIDLogFromTrainArray:(id)array;
- (id)getDateNumDays:(int)days AfterDate:(id)date;
- (id)getDictionaryFromClustersArchiveAtPath:(id)path;
- (id)getLastContactedDictionaryFromTrainArray:(id)array;
- (id)getOrMakeClusterDictionaryAtDate:(id)date;
- (id)getRecencyResultsShowingNumValues:(int)values fromTrainArray:(id)array;
- (id)getTrainArrayToDate:(id)date withStartDateAnchor:(id)anchor;
- (id)rankedZkwSuggestionsFromPredictionArray:(id)array forBundleID:(id)d;
- (void)printModelWeights:(id)weights;
- (void)trainAtDate:(id)date usingCompiledModelURL:(id)l andSaveToURL:(id)rL;
- (void)writeArchive:(id)archive toFilePath:(id)path;
- (void)writeClusterArchiveFromClusterDict:(id)dict withDate:(id)date;
@end

@implementation _PSInteractionPredictor

+ (id)defaultClustersArchiveDirectory
{
  modelDirectory = [MEMORY[0x1E6997910] modelDirectory];
  v3 = [modelDirectory stringByAppendingPathComponent:@"InteractionModelClusters/"];

  return v3;
}

+ (id)clustersArchiveFileForDate:(id)date modelName:(id)name
{
  nameCopy = name;
  v6 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v8 = objc_alloc_init(v6);
  [v8 setDateFormat:@"MM-dd-yyyy"];
  v9 = [v8 stringFromDate:dateCopy];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD60] stringWithString:v9];
    v11 = v10;
    if (nameCopy)
    {
      [v10 appendString:@"_"];
      [v11 appendString:nameCopy];
    }

    [v11 appendString:@".archive"];
    v12 = +[_PSInteractionPredictor defaultClustersArchiveDirectory];
    v13 = [v12 stringByAppendingPathComponent:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)getModelURLfromName:(id)name
{
  v3 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:nameCopy withExtension:@"mlmodelc"];

  return v6;
}

+ (id)getIntermediateModelURLForModelName:(id)name
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [@"/var/tmp/" stringByAppendingString:name];
  v5 = [v4 stringByAppendingString:@".mlmodelc/"];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

+ (id)loadModelFromUrl:(id)url
{
  urlCopy = url;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_PSInteractionPredictor *)urlCopy loadModelFromUrl:v4];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getMLModelClass_softClass;
  v18 = getMLModelClass_softClass;
  if (!getMLModelClass_softClass)
  {
    v13[1] = MEMORY[0x1E69E9820];
    v13[2] = 3221225472;
    v13[3] = __getMLModelClass_block_invoke;
    v13[4] = &unk_1E7C23BF0;
    v14 = &v15;
    CoreMLLibraryCore();
    v16[3] = objc_getClass("MLModel");
    getMLModelClass_softClass = *(v14[1] + 24);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v13[0] = 0;
  v7 = [v5 modelWithContentsOfURL:urlCopy error:v13];
  v8 = v13[0];
  v9 = +[_PSLogging generalChannel];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionPredictor loadModelFromUrl:urlCopy];
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[_PSInteractionPredictor loadModelFromUrl:];
    }

    v11 = v7;
  }

  return v11;
}

- (id)getConversationIDFromInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = interactionCopy;
  if (!interactionCopy)
  {
    goto LABEL_14;
  }

  bundleId = [interactionCopy bundleId];
  v7 = +[_PSConstants mobileFacetimeBundleId];
  if ([bundleId isEqualToString:v7])
  {

    goto LABEL_5;
  }

  bundleId2 = [v5 bundleId];
  v9 = +[_PSConstants macFacetimeBundleId];
  v10 = [bundleId2 isEqualToString:v9];

  if (!v10)
  {
    bundleId3 = [v5 bundleId];
    v18 = +[_PSConstants mobileMessagesBundleId];
    if ([bundleId3 isEqualToString:v18])
    {

      goto LABEL_11;
    }

    bundleId4 = [v5 bundleId];
    v20 = +[_PSConstants macMessagesBundleId];
    v21 = [bundleId4 isEqualToString:v20];

    if (v21)
    {
LABEL_11:
      domainIdentifier = [v5 domainIdentifier];
      if (!domainIdentifier)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }

    bundleId5 = [v5 bundleId];
    v23 = +[_PSConstants mobilePhoneBundleId];
    v24 = [bundleId5 isEqualToString:v23];

    if (v24)
    {
      goto LABEL_5;
    }

LABEL_14:
    domainIdentifier = 0;
    goto LABEL_15;
  }

LABEL_5:
  v11 = MEMORY[0x1E69978D0];
  recipients = [v5 recipients];
  domainIdentifier = [v11 generateConversationIdFromInteractionRecipients:recipients];

  if (!domainIdentifier)
  {
    goto LABEL_15;
  }

LABEL_6:
  conversationIDMap = [(_PSInteractionPredictor *)self conversationIDMap];
  v15 = [conversationIDMap objectForKeyedSubscript:domainIdentifier];

  if (!v15)
  {
    conversationIDMap2 = [(_PSInteractionPredictor *)self conversationIDMap];
    [conversationIDMap2 setObject:v5 forKeyedSubscript:domainIdentifier];
  }

LABEL_15:

  return domainIdentifier;
}

- (id)findLatestArchiveDateBefore:(id)before modelName:(id)name
{
  v39 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  nameCopy = name;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = +[_PSInteractionPredictor defaultClustersArchiveDirectory];
  v9 = [defaultManager enumeratorAtPath:v8];

  v10 = [MEMORY[0x1E696AD60] stringWithString:@"MM-dd-yyyy"];
  v11 = v10;
  if (nameCopy)
  {
    [v10 appendString:@"_"];
    [v11 appendString:nameCopy];
  }

  [v11 appendString:{@".archive", nameCopy}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 length];
        v19 = [v11 length];
        if (v18 >= v19)
        {
          v21 = @"_";
        }

        else
        {
          v20 = [MEMORY[0x1E696AD60] stringWithString:@"MM-dd-yyyy.archive"];

          v19 = [v20 length];
          v21 = @".";
          v11 = v20;
        }

        v22 = [v17 substringFromIndex:v18 - v19];
        v23 = [v22 componentsSeparatedByString:v21];
        v24 = [v23 objectAtIndex:0];

        v25 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v25 setDateFormat:@"MM-dd-yyyy"];
        v26 = [v25 dateFromString:v24];
        [beforeCopy timeIntervalSinceDate:v26];
        if (v27 >= 0.0)
        {
          if (v14)
          {
            [v14 timeIntervalSinceDate:v26];
            if (v28 < 0.0)
            {
              v29 = v26;

              v14 = v29;
            }
          }

          else
          {
            v14 = v26;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v14;
}

- (_PSInteractionPredictor)initWithInteractionStore:(id)store atDate:(id)date withModelName:(id)name modelConfiguration:(id)configuration
{
  storeCopy = store;
  dateCopy = date;
  nameCopy = name;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = _PSInteractionPredictor;
  v15 = [(_PSInteractionPredictor *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_interactionStore, store);
    objc_storeStrong(&v16->_modelConfiguration, configuration);
    modelName = [(_PSKNNModelConfiguration *)v16->_modelConfiguration modelName];
    v18 = [(_PSInteractionPredictor *)v16 findLatestArchiveDateBefore:dateCopy modelName:modelName];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = dateCopy;
    }

    v20 = [(_PSInteractionPredictor *)v16 getOrMakeClusterDictionaryAtDate:v19];
    currentClusterDictionary = v16->_currentClusterDictionary;
    v16->_currentClusterDictionary = v20;

    v22 = [_PSInteractionPredictor getModelURLfromName:nameCopy];
    compiledModelURL = v16->_compiledModelURL;
    v16->_compiledModelURL = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    conversationIDMap = v16->_conversationIDMap;
    v16->_conversationIDMap = v24;
  }

  return v16;
}

- (id)getDateNumDays:(int)days AfterDate:(id)date
{
  v5 = MEMORY[0x1E695DF10];
  dateCopy = date;
  v7 = objc_alloc_init(v5);
  [v7 setDay:days];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar dateByAddingComponents:v7 toDate:dateCopy options:0];

  return v9;
}

- (id)getTrainArrayToDate:(id)date withStartDateAnchor:(id)anchor
{
  v61 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  anchorCopy = anchor;
  v6 = objc_opt_new();
  modelConfiguration = [(_PSInteractionPredictor *)self modelConfiguration];
  shouldExcludeInteractionBlock = [modelConfiguration shouldExcludeInteractionBlock];

  modelConfiguration2 = [(_PSInteractionPredictor *)self modelConfiguration];
  interactionMechanisms = [modelConfiguration2 interactionMechanisms];
  v11 = [interactionMechanisms count];

  if (v11)
  {
    v12 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      modelConfiguration3 = [(_PSInteractionPredictor *)self modelConfiguration];
      interactionHistoryRelativeStartDates = [modelConfiguration3 interactionHistoryRelativeStartDates];
      v15 = [interactionHistoryRelativeStartDates objectAtIndexedSubscript:v12];
      intValue = [v15 intValue];

      if (intValue)
      {
        v52 = [(_PSInteractionPredictor *)self getDateNumDays:intValue AfterDate:anchorCopy];
      }

      else
      {
        v52 = 0;
      }

      interactionStore = [(_PSInteractionPredictor *)self interactionStore];
      modelConfiguration4 = [(_PSInteractionPredictor *)self modelConfiguration];
      interactionMechanisms2 = [modelConfiguration4 interactionMechanisms];
      v43 = [interactionMechanisms2 objectAtIndexedSubscript:v12];
      modelConfiguration5 = [(_PSInteractionPredictor *)self modelConfiguration];
      bundleIds = [modelConfiguration5 bundleIds];
      v17 = [bundleIds objectAtIndexedSubscript:v12];
      v18 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8BF70];
      modelConfiguration6 = [(_PSInteractionPredictor *)self modelConfiguration];
      interactionCountMaxDepths = [modelConfiguration6 interactionCountMaxDepths];
      v50 = v12;
      v21 = [interactionCountMaxDepths objectAtIndexedSubscript:v12];
      LOBYTE(v40) = 0;
      v45 = +[_PSInteractionStoreUtils interactionsFromStore:startDate:tillDate:withMechanisms:withAccount:withBundleIds:withTargetBundleIds:withDirections:singleRecipient:fetchLimit:](_PSInteractionStoreUtils, "interactionsFromStore:startDate:tillDate:withMechanisms:withAccount:withBundleIds:withTargetBundleIds:withDirections:singleRecipient:fetchLimit:", interactionStore, v52, dateCopy, v43, 0, v17, 0, v18, v40, [v21 intValue]);

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v22 = v45;
      v23 = [v22 countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v54;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v54 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v53 + 1) + 8 * i);
            if (shouldExcludeInteractionBlock && shouldExcludeInteractionBlock[2](shouldExcludeInteractionBlock, *(*(&v53 + 1) + 8 * i)))
            {
              v28 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v59 = v27;
              }
            }

            else
            {
              v28 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v27];
              if (v28)
              {
                [v6 addObject:v27];
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v53 objects:v60 count:16];
        }

        while (v24);
      }

      objc_autoreleasePoolPop(context);
      v12 = v50 + 1;
      modelConfiguration7 = [(_PSInteractionPredictor *)self modelConfiguration];
      interactionMechanisms3 = [modelConfiguration7 interactionMechanisms];
      v31 = [interactionMechanisms3 count];
    }

    while (v31 > v50 + 1);
  }

  modelConfiguration8 = [(_PSInteractionPredictor *)self modelConfiguration];
  interactionMechanisms4 = [modelConfiguration8 interactionMechanisms];
  v34 = [interactionMechanisms4 count];

  if (v34 <= 1)
  {
    v37 = v6;
  }

  else
  {
    v35 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v57 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    v37 = [v6 sortedArrayUsingDescriptors:v36];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)getConversationIDLogFromTrainArray:(id)array
{
  v34 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v11];
        if (v12)
        {
          startDate = [v11 startDate];
          v14 = [v5 objectForKey:v12];

          if (v14)
          {
            v15 = [v5 objectForKeyedSubscript:v12];
            [v15 addObject:startDate];
          }

          else
          {
            v15 = [MEMORY[0x1E695DF70] arrayWithObject:startDate];
            [v5 setValue:v15 forKey:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  allKeys = [v5 allKeys];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62___PSInteractionPredictor_getConversationIDLogFromTrainArray___block_invoke;
  v27[3] = &unk_1E7C23B38;
  v17 = v5;
  v28 = v17;
  v18 = [allKeys sortedArrayUsingComparator:v27];
  v19 = objc_opt_new();
  if ([v18 count])
  {
    v20 = 0;
    do
    {
      v21 = [v18 objectAtIndexedSubscript:v20];
      v22 = [v17 objectForKeyedSubscript:v21];
      v23 = [v18 objectAtIndexedSubscript:v20];
      [v19 setValue:v22 forKey:v23];

      v24 = [v18 count];
      if (v20 > 3)
      {
        break;
      }

      ++v20;
    }

    while (v24 > v20);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)convertLogToClusterPointArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [_PSClusterPoint alloc];
        v12 = [(_PSClusterPoint *)v11 initWithDate:v10, v17];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];
  v14 = [allObjects mutableCopy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)getClusterDictionaryFromTrainArray:(id)array usingDBSCANParamsMinPts:(int)pts andEps:(double)eps
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [(_PSInteractionPredictor *)self getConversationIDLogFromTrainArray:array];
  v9 = [[_PSDBSCAN alloc] initWithMinimumPointsForClustering:pts MaxNeighborDistance:eps];
  v10 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        [(_PSDBSCAN *)v9 emptyCollections];
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = [(_PSInteractionPredictor *)self convertLogToClusterPointArray:v17];
        [(_PSDBSCAN *)v9 fitData:v18];

        clusters = [(_PSDBSCAN *)v9 clusters];
        v20 = [clusters copy];
        [v10 setValue:v20 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

- (double)getMinDistanceForPt:(id)pt toClusters:(id)clusters
{
  v22 = *MEMORY[0x1E69E9840];
  ptCopy = pt;
  clustersCopy = clusters;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [clustersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 14.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(clustersCopy);
        }

        convexHull = [*(*(&v17 + 1) + 8 * i) convexHull];
        [ptCopy distanceToHull:convexHull];
        v14 = v13;

        if (v14 < v10)
        {
          v10 = v14;
        }
      }

      v8 = [clustersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 14.0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (double)timeSinceLastContactTo:(id)to FromDate:(id)date inTrainArray:(id)array
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dateCopy = date;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  arrayCopy = array;
  v11 = [arrayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  v12 = 4320.0;
  if (v11)
  {
    v13 = v11;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v16, v25];
        v18 = [v17 isEqualToString:toCopy];

        if (v18)
        {
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          startDate = [v16 startDate];
          v21 = [currentCalendar components:192 fromDate:startDate toDate:dateCopy options:0];

          minute = [v21 minute];
          v12 = [v21 second] / 60.0 + minute;

          goto LABEL_11;
        }
      }

      v13 = [arrayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)getLastContactedDictionaryFromTrainArray:(id)array
{
  arrayCopy = array;
  v5 = objc_opt_new();
  v6 = [arrayCopy count];
  if (v6 - 1 >= 0)
  {
    v7 = v6;
    do
    {
      v8 = [arrayCopy objectAtIndexedSubscript:--v7];
      v9 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v8];

      if (v9)
      {
        v10 = [arrayCopy objectAtIndexedSubscript:v7];
        startDate = [v10 startDate];

        [v5 setObject:startDate forKeyedSubscript:v9];
      }
    }

    while (v7 > 0);
  }

  return v5;
}

- (void)writeArchive:(id)archive toFilePath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = pathCopy;
  if (archive && pathCopy)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:archive requiringSecureCoding:1 error:&v17];
    v8 = v17;
    if (v8)
    {
      v9 = v8;
      stringByDeletingLastPathComponent = +[_PSLogging generalChannel];
      if (os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
      {
        [_PSInteractionPredictor writeArchive:toFilePath:];
      }
    }

    else
    {
      stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v16 = 0;
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
      v9 = v16;

      if (v9)
      {
        v12 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_PSInteractionPredictor writeArchive:toFilePath:];
        }
      }

      else
      {
        v15 = 0;
        [v7 writeToFile:v6 options:1073741825 error:&v15];
        v9 = v15;
        v13 = +[_PSLogging generalChannel];
        v12 = v13;
        if (v9)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [_PSInteractionPredictor writeArchive:toFilePath:];
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v6;
            _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "Successfully persisted dictionary: %@", buf, 0xCu);
          }

          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Empty archive or filePath when trying to persist Cluster Dictionary", buf, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)writeClusterArchiveFromClusterDict:(id)dict withDate:(id)date
{
  dateCopy = date;
  dictCopy = dict;
  v11 = [[_PSClustersArchive alloc] initWithClustersDictionary:dictCopy archiveDate:dateCopy];

  modelConfiguration = [(_PSInteractionPredictor *)self modelConfiguration];
  modelName = [modelConfiguration modelName];
  v10 = [_PSInteractionPredictor clustersArchiveFileForDate:dateCopy modelName:modelName];

  [(_PSInteractionPredictor *)self writeArchive:v11 toFilePath:v10];
}

- (id)getDictionaryFromClustersArchiveAtPath:(id)path
{
  v13 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path options:2 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = v5;
    v7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionPredictor getDictionaryFromClustersArchiveAtPath:];
    }

LABEL_8:
    clustersDictionary = 0;
    goto LABEL_9;
  }

  v12 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];
  v6 = v12;
  if (v6)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionPredictor getDictionaryFromClustersArchiveAtPath:];
    }

    goto LABEL_8;
  }

  archiveDate = [v7 archiveDate];
  [(_PSInteractionPredictor *)self setCurrentArchiveDate:archiveDate];

  clustersDictionary = [v7 clustersDictionary];
LABEL_9:

  return clustersDictionary;
}

- (id)getOrMakeClusterDictionaryAtDate:(id)date
{
  dateCopy = date;
  modelConfiguration = [(_PSInteractionPredictor *)self modelConfiguration];
  modelName = [modelConfiguration modelName];
  v7 = [_PSInteractionPredictor clustersArchiveFileForDate:dateCopy modelName:modelName];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(modelName) = [defaultManager fileExistsAtPath:v7];

  if (modelName)
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "DBSCAN cluster dictionary read from archive", buf, 2u);
    }

    v10 = [(_PSInteractionPredictor *)self getDictionaryFromClustersArchiveAtPath:v7];
  }

  else
  {
    v11 = [(_PSInteractionPredictor *)self getTrainArrayToDate:dateCopy withStartDateAnchor:dateCopy];
    v10 = [(_PSInteractionPredictor *)self getClusterDictionaryFromTrainArray:v11 usingDBSCANParamsMinPts:3 andEps:1.2];
    [(_PSInteractionPredictor *)self writeClusterArchiveFromClusterDict:v10 withDate:dateCopy];
    [(_PSInteractionPredictor *)self setCurrentArchiveDate:dateCopy];
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "DBSCAN cluster dictionary is generated", v14, 2u);
    }
  }

  return v10;
}

- (id)getRecencyResultsShowingNumValues:(int)values fromTrainArray:(id)array
{
  arrayCopy = array;
  array = [MEMORY[0x1E695DF70] array];
  if (values >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ([arrayCopy count] <= v8)
      {
        goto LABEL_10;
      }

      v9 = [arrayCopy objectAtIndexedSubscript:v8];
      v10 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v9];
      if (!v10)
      {
        goto LABEL_8;
      }

      if (![array containsObject:v10])
      {
        break;
      }

      ++v8;
LABEL_9:

      if (values <= 0)
      {
        goto LABEL_10;
      }
    }

    [array addObject:v10];
LABEL_8:
    --values;
    goto LABEL_9;
  }

LABEL_10:

  return array;
}

- (id)getClusteringResultsForPoint:(id)point usingClusterDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  dictionaryCopy = dictionary;
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = dictionaryCopy;
  v24 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [[_PSAlter alloc] initWithName:v10];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = [v8 objectForKeyedSubscript:v10];
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              convexHull = [*(*(&v25 + 1) + 8 * j) convexHull];
              [pointCopy distanceToHull:convexHull];
              v19 = v18;

              [(_PSAlter *)v11 distanceToCluster];
              if (v20 > v19)
              {
                [(_PSAlter *)v11 setDistanceToCluster:v19];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }

        [array addObject:v11];
      }

      v24 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  [array sortUsingComparator:&__block_literal_global];
  v21 = *MEMORY[0x1E69E9840];

  return array;
}

+ (BOOL)removeMlmodelcFolderAtPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v12 = 0;
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ([v4 fileExistsAtPath:pathCopy isDirectory:&v12] && v12 == 1)
  {
    v11 = 0;
    [v4 removeItemAtPath:pathCopy error:&v11];
    v5 = v11;
    v6 = v5 == 0;
    v7 = +[_PSLogging generalChannel];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionPredictor removeMlmodelcFolderAtPath:];
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = pathCopy;
        _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_INFO, "Remove file succeeded at path:%@", buf, 0xCu);
      }

      v5 = v8;
    }
  }

  else
  {
    v6 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)cloneAdaptableModelURL:(id)l toFilePathURL:(id)rL
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  path = [rLCopy path];
  v8 = [_PSInteractionPredictor removeMlmodelcFolderAtPath:path];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v17 = 0;
    v10 = [v9 copyItemAtURL:lCopy toURL:rLCopy error:&v17];
    v11 = v17;
    v12 = (v11 == 0) & v10;
    v13 = +[_PSLogging generalChannel];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = lCopy;
        v20 = 2112;
        v21 = rLCopy;
        _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "copying folder from path:%@ to path:%@ success.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = lCopy;
      v20 = 2112;
      v21 = rLCopy;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_ERROR, "While cloning adaptable model, copying folder from path:%@ to path:%@ failed with error：%@", buf, 0x20u);
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionPredictor cloneAdaptableModelURL:toFilePathURL:];
    }

    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)createMLArrayProviderFromTrainArray:(id)array
{
  arrayCopy = array;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [arrayCopy count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    v7 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v69 = 0;
    v59 = 0;
    v60 = arrayCopy;
    while (1)
    {
      v8 = v6 - 1;
      v9 = [arrayCopy objectAtIndexedSubscript:v6 - 1];
      v10 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v9];
      if (v10)
      {
        break;
      }

LABEL_39:

      v6 = v8;
      if (v8 <= 0)
      {
        goto LABEL_42;
      }
    }

    v70 = v6 - 1;
    startDate = [v9 startDate];
    v12 = [startDate dateByAddingTimeInterval:-1.0];
    v13 = [(_PSInteractionPredictor *)self getTrainArrayToDate:v12 withStartDateAnchor:startDate];

    v71 = v13;
    if (v6 == [arrayCopy count])
    {
      v67 = [(_PSInteractionPredictor *)self getLastContactedDictionaryFromTrainArray:v13];

      modelConfiguration = [(_PSInteractionPredictor *)self modelConfiguration];
      modelName = [modelConfiguration modelName];
      v16 = [(_PSInteractionPredictor *)self findLatestArchiveDateBefore:startDate modelName:modelName];

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = startDate;
      }

      v18 = [(_PSInteractionPredictor *)self getOrMakeClusterDictionaryAtDate:v17];

      v19 = [startDate dateByAddingTimeInterval:86400.0];
      modelConfiguration2 = [(_PSInteractionPredictor *)self modelConfiguration];
      modelName2 = [modelConfiguration2 modelName];
      v22 = [(_PSInteractionPredictor *)self findLatestArchiveDateBefore:v19 modelName:modelName2];

      arrayCopy = v60;
      v23 = [(_PSInteractionPredictor *)self getOrMakeClusterDictionaryAtDate:v22];

      v69 = v22;
      v64 = v16;
      v65 = v23;
      v66 = v18;
      v7 = v67;
    }

    if ([v9 direction] != 1)
    {
      [v7 setObject:startDate forKey:v10];
LABEL_38:

      v8 = v70;
      goto LABEL_39;
    }

    v63 = [(_PSInteractionPredictor *)self getRecencyResultsShowingNumValues:5 fromTrainArray:v71];
    v24 = [v63 containsObject:v10];
    [startDate timeIntervalSinceDate:v69];
    v68 = v7;
    if (v25 >= 0.0)
    {
      currentArchiveDate = [(_PSInteractionPredictor *)self currentArchiveDate];
      [startDate timeIntervalSinceDate:currentArchiveDate];
      v29 = v28;

      if (v29 >= 0.0)
      {
        currentClusterDictionary = [(_PSInteractionPredictor *)self currentClusterDictionary];
LABEL_17:
        v31 = currentClusterDictionary;
        v32 = [currentClusterDictionary objectForKey:v10];

        v62 = v31;
        if (v32)
        {
          v33 = [[_PSClusterPoint alloc] initWithDate:startDate];
          v34 = [v31 objectForKeyedSubscript:v10];
          [(_PSInteractionPredictor *)self getMinDistanceForPt:v33 toClusters:v34];
          v36 = v35;
        }

        else
        {
          v36 = 14.0;
        }

        v37 = [v68 objectForKey:v10];
        v38 = 4320.0;
        if (v37)
        {
          v39 = [v68 objectForKeyedSubscript:v10];
          [startDate timeIntervalSinceDate:v39];
          v38 = v40 / 60.0;
        }

        v41 = objc_alloc(getMLMultiArrayClass());
        v77[0] = 0;
        v42 = [v41 initWithShape:&unk_1F2D8BF88 dataType:65600 error:v77];
        v61 = v77[0];
        if (v61)
        {
          v43 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [(_PSInteractionPredictor *)&v75 createMLArrayProviderFromTrainArray:v76];
          }
        }

        v44 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
        [v42 setObject:v44 atIndexedSubscript:0];

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
        [v42 setObject:v45 atIndexedSubscript:1];

        v46 = [getMLFeatureValueClass() featureValueWithMultiArray:v42];
        if ((v32 == 0) | v24 & 1)
        {
          v7 = v68;
          if (v24)
          {
            v47 = [getMLFeatureValueClass() featureValueWithString:@"recency"];
            LODWORD(v59) = v59 + 1;
            if (!v47)
            {
              goto LABEL_37;
            }

LABEL_31:
            v48 = objc_opt_new();
            [v48 setObject:v46 forKey:@"input1"];
            [v48 setObject:v47 forKey:@"classLabel"];
            v49 = objc_alloc(getMLDictionaryFeatureProviderClass());
            v74 = 0;
            v50 = [v49 initWithDictionary:v48 error:&v74];
            if (v74)
            {
              v51 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                [(_PSInteractionPredictor *)&v72 createMLArrayProviderFromTrainArray:v73];
              }

              v7 = v68;
            }

            [array addObject:v50];

            arrayCopy = v60;
            goto LABEL_37;
          }

          v47 = 0;
        }

        else
        {
          v47 = [getMLFeatureValueClass() featureValueWithString:@"clustering"];
          ++HIDWORD(v59);
          v7 = v68;
          if (v47)
          {
            goto LABEL_31;
          }
        }

LABEL_37:
        [v7 setObject:startDate forKey:v10];

        goto LABEL_38;
      }

      v26 = v65;
    }

    else
    {
      v26 = v66;
    }

    currentClusterDictionary = v26;
    goto LABEL_17;
  }

  v59 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v7 = 0;
LABEL_42:
  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v52 = getMLArrayBatchProviderClass_softClass;
  v82 = getMLArrayBatchProviderClass_softClass;
  if (!getMLArrayBatchProviderClass_softClass)
  {
    v77[1] = MEMORY[0x1E69E9820];
    v77[2] = 3221225472;
    v77[3] = __getMLArrayBatchProviderClass_block_invoke;
    v77[4] = &unk_1E7C23BF0;
    v78 = &v79;
    CoreMLLibraryCore();
    Class = objc_getClass("MLArrayBatchProvider");
    *(v78[1] + 24) = Class;
    getMLArrayBatchProviderClass_softClass = *(v78[1] + 24);
    v52 = v80[3];
  }

  v54 = v52;
  _Block_object_dispose(&v79, 8);
  v55 = [[v52 alloc] initWithFeatureProviderArray:array];
  v56 = [[_PSMLArrayProvider alloc] initWithProvider:v55 clusteringCount:HIDWORD(v59) recencyCount:v59];

  return v56;
}

- (void)printModelWeights:(id)weights
{
  weightsCopy = weights;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getMLParameterKeyClass_softClass;
  v17 = getMLParameterKeyClass_softClass;
  if (!getMLParameterKeyClass_softClass)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = __getMLParameterKeyClass_block_invoke;
    v12[4] = &unk_1E7C23BF0;
    v13 = &v14;
    CoreMLLibraryCore();
    v15[3] = objc_getClass("MLParameterKey");
    getMLParameterKeyClass_softClass = *(v13[1] + 24);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  weights = [v4 weights];
  v7 = [weights scopedTo:@"dense_1"];

  v12[0] = 0;
  v8 = [weightsCopy parameterValueForKey:v7 error:v12];
  v9 = v12[0];
  v10 = +[_PSLogging generalChannel];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      [_PSInteractionPredictor printModelWeights:];
    }
  }

  else if (v11)
  {
    [_PSInteractionPredictor printModelWeights:v8];
  }
}

- (void)trainAtDate:(id)date usingCompiledModelURL:(id)l andSaveToURL:(id)rL
{
  dateCopy = date;
  lCopy = l;
  rLCopy = rL;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy_;
  v41[4] = __Block_byref_object_dispose_;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = dispatch_semaphore_create(0);
  v10 = [(_PSInteractionPredictor *)self getTrainArrayToDate:dateCopy withStartDateAnchor:dateCopy];
  v11 = [(_PSInteractionPredictor *)self getClusterDictionaryFromTrainArray:v10 usingDBSCANParamsMinPts:3 andEps:1.2];
  [(_PSInteractionPredictor *)self writeClusterArchiveFromClusterDict:v11 withDate:dateCopy];

  v12 = [(_PSInteractionPredictor *)self createMLArrayProviderFromTrainArray:v10];
  mLArrayProvider = [v12 MLArrayProvider];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke;
  v34[3] = &unk_1E7C23B80;
  v34[4] = self;
  v13 = MEMORY[0x1B8C8C060](v34);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74___PSInteractionPredictor_trainAtDate_usingCompiledModelURL_andSaveToURL___block_invoke_145;
  v29[3] = &unk_1E7C23BA8;
  v14 = rLCopy;
  v30 = v14;
  selfCopy = self;
  v32 = v41;
  v33 = &v35;
  v15 = MEMORY[0x1B8C8C060](v29);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v16 = getMLUpdateProgressHandlersClass_softClass;
  v51 = getMLUpdateProgressHandlersClass_softClass;
  if (!getMLUpdateProgressHandlersClass_softClass)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getMLUpdateProgressHandlersClass_block_invoke;
    v46 = &unk_1E7C23BF0;
    v47 = &v48;
    CoreMLLibraryCore();
    Class = objc_getClass("MLUpdateProgressHandlers");
    *(v47[1] + 24) = Class;
    getMLUpdateProgressHandlersClass_softClass = *(v47[1] + 24);
    v16 = v49[3];
  }

  v18 = v16;
  _Block_object_dispose(&v48, 8);
  v19 = [[v16 alloc] initForEvents:3 progressHandler:v13 completionHandler:v15];
  if (v12 && [v12 clusteringCount] >= 1 && objc_msgSend(v12, "recencyCount") >= 1)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v20 = getMLUpdateTaskClass_softClass;
    v51 = getMLUpdateTaskClass_softClass;
    if (!getMLUpdateTaskClass_softClass)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getMLUpdateTaskClass_block_invoke;
      v46 = &unk_1E7C23BF0;
      v47 = &v48;
      CoreMLLibraryCore();
      v21 = objc_getClass("MLUpdateTask");
      *(v47[1] + 24) = v21;
      getMLUpdateTaskClass_softClass = *(v47[1] + 24);
      v20 = v49[3];
    }

    v22 = v20;
    _Block_object_dispose(&v48, 8);
    v28 = 0;
    v23 = [v20 updateTaskForModelAtURL:lCopy trainingData:mLArrayProvider progressHandlers:v19 error:&v28];
    v24 = v28;
    if (v24)
    {
      v25 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_PSInteractionPredictor trainAtDate:usingCompiledModelURL:andSaveToURL:];
      }
    }

    [v23 resume];
  }

  else
  {
    dispatch_semaphore_signal(v36[5]);
    v24 = 0;
  }

  dispatch_semaphore_wait(v36[5], 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v41, 8);
}

- (id)rankedZkwSuggestionsFromPredictionArray:(id)array forBundleID:(id)d
{
  v73 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  modelConfiguration = [(_PSInteractionPredictor *)self modelConfiguration];
  modelName = [modelConfiguration modelName];

  if (modelName)
  {
    modelConfiguration2 = [(_PSInteractionPredictor *)self modelConfiguration];
    modelType = [modelConfiguration2 modelType];

    if (modelType > 2)
    {
      v11 = &stru_1F2D6CE98;
    }

    else
    {
      v11 = off_1E7C23C48[modelType];
    }

    v12 = MEMORY[0x1E696AEC0];
    modelConfiguration3 = [(_PSInteractionPredictor *)self modelConfiguration];
    modelName2 = [modelConfiguration3 modelName];
    v53 = [v12 stringWithFormat:@"%@%@", modelName2, v11];
  }

  else
  {
    v53 = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = arrayCopy;
  v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v58)
  {
    v56 = *v68;
    selfCopy = self;
    do
    {
      v15 = 0;
      do
      {
        if (*v68 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v67 + 1) + 8 * v15);
        conversationIDMap = [(_PSInteractionPredictor *)self conversationIDMap];
        v18 = [conversationIDMap objectForKey:v16];

        if (v18)
        {
          v60 = v15;
          conversationIDMap2 = [(_PSInteractionPredictor *)self conversationIDMap];
          v62 = v16;
          v20 = [conversationIDMap2 objectForKeyedSubscript:v16];
          recipients = [v20 recipients];

          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v23 = recipients;
          v24 = [v23 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v64;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v64 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v63 + 1) + 8 * i);
                v29 = [_PSRecipient alloc];
                identifier = [v28 identifier];
                handle = [v28 handle];
                displayName = [v28 displayName];
                v33 = [(_PSRecipient *)v29 initWithIdentifier:identifier handle:handle displayName:displayName contact:0];

                [v22 addObject:v33];
              }

              v25 = [v23 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v25);
          }

          v34 = [_PSSuggestion alloc];
          self = selfCopy;
          conversationIDMap3 = [(_PSInteractionPredictor *)selfCopy conversationIDMap];
          v36 = [conversationIDMap3 objectForKeyedSubscript:v62];
          groupName = [v36 groupName];
          v59 = [(_PSSuggestion *)v34 initWithBundleID:dCopy conversationIdentifier:v62 groupName:groupName recipients:v22 reason:v53 reasonType:0];

          if (rankedZkwSuggestionsFromPredictionArray_forBundleID___pasOnceToken46 != -1)
          {
            [_PSInteractionPredictor rankedZkwSuggestionsFromPredictionArray:forBundleID:];
          }

          v38 = rankedZkwSuggestionsFromPredictionArray_forBundleID___pasExprOnceResult;
          conversationIDMap4 = [(_PSInteractionPredictor *)selfCopy conversationIDMap];
          v40 = [conversationIDMap4 objectForKeyedSubscript:v62];
          bundleId = [v40 bundleId];
          if (bundleId)
          {
            v42 = bundleId;
            conversationIDMap5 = [(_PSInteractionPredictor *)selfCopy conversationIDMap];
            v44 = [conversationIDMap5 objectForKeyedSubscript:v62];
            [v44 bundleId];
            v45 = v61 = v38;
            v46 = [v61 containsObject:v45];

            v38 = v61;
            self = selfCopy;

            v47 = v59;
            v15 = v60;
            if (v46)
            {
              conversationIDMap4 = [(_PSInteractionPredictor *)selfCopy conversationIDMap];
              v40 = [conversationIDMap4 objectForKeyedSubscript:v62];
              account = [v40 account];
              [(_PSSuggestion *)v59 setMessagesGroupIdentifier:account];

              v38 = v61;
              goto LABEL_26;
            }
          }

          else
          {
            v47 = v59;
            v15 = v60;
LABEL_26:
          }

          [array addObject:v47];
        }

        ++v15;
      }

      while (v15 != v58);
      v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v58);
  }

  v49 = [array copy];
  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (void)deleteArchiveFileAtDate:(id)date modelName:(id)name
{
  v5 = MEMORY[0x1E696AC08];
  nameCopy = name;
  dateCopy = date;
  defaultManager = [v5 defaultManager];
  v9 = [_PSInteractionPredictor clustersArchiveFileForDate:dateCopy modelName:nameCopy];

  if ([defaultManager fileExistsAtPath:v9])
  {
    v13 = 0;
    [defaultManager removeItemAtPath:v9 error:&v13];
    v10 = v13;
    v11 = +[_PSLogging generalChannel];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionPredictor deleteArchiveFileAtDate:modelName:];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[_PSInteractionPredictor deleteArchiveFileAtDate:modelName:];
    }
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionPredictor deleteArchiveFileAtDate:modelName:];
    }
  }
}

+ (void)deleteArchiveFiles
{
  v27 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[_PSInteractionPredictor defaultClustersArchiveDirectory];
  v4 = [defaultManager contentsOfDirectoryAtPath:v3 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412290;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 stringByAppendingPathComponent:{v10, v16}];
        v17 = 0;
        [defaultManager removeItemAtPath:v11 error:&v17];
        v12 = v17;

        v13 = +[_PSLogging generalChannel];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v10;
            v24 = 2112;
            v25 = v12;
            _os_log_error_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_ERROR, "error in deleting file %@: %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v23 = v10;
          _os_log_debug_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEBUG, "file deleted: %@", buf, 0xCu);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)loadModelFromUrl:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 absoluteString];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "compiledURL %@ : %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)loadModelFromUrl:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)writeArchive:toFilePath:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeArchive:toFilePath:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeArchive:toFilePath:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getDictionaryFromClustersArchiveAtPath:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDictionaryFromClustersArchiveAtPath:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)removeMlmodelcFolderAtPath:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)cloneAdaptableModelURL:toFilePathURL:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createMLArrayProviderFromTrainArray:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)createMLArrayProviderFromTrainArray:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)printModelWeights:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)printModelWeights:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 numberArray];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)trainAtDate:usingCompiledModelURL:andSaveToURL:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)predictAtDate:usingModelAtURL:showNumSuggestions:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "trainArray %{sensitive}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)predictAtDate:usingModelAtURL:showNumSuggestions:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "recencyPredictions %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)predictAtDate:(void *)a3 usingModelAtURL:(NSObject *)a4 showNumSuggestions:.cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B5ED1000, a4, OS_LOG_TYPE_DEBUG, "clusteringPredictions %@", a1, 0xCu);
}

- (void)predictAtDate:(_BYTE *)a1 usingModelAtURL:(_BYTE *)a2 showNumSuggestions:.cold.4(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)predictAtDate:(_BYTE *)a1 usingModelAtURL:(_BYTE *)a2 showNumSuggestions:.cold.5(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)predictAtDate:usingModelAtURL:showNumSuggestions:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "results %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)deleteArchiveFileAtDate:modelName:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deleteArchiveFileAtDate:modelName:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deleteArchiveFileAtDate:modelName:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "file deleted: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end