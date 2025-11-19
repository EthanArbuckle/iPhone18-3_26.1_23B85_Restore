@interface _PSInteractionPredictor
+ (BOOL)cloneAdaptableModelURL:(id)a3 toFilePathURL:(id)a4;
+ (BOOL)removeMlmodelcFolderAtPath:(id)a3;
+ (id)clustersArchiveFileForDate:(id)a3 modelName:(id)a4;
+ (id)defaultClustersArchiveDirectory;
+ (id)getIntermediateModelURLForModelName:(id)a3;
+ (id)getModelURLfromName:(id)a3;
+ (id)loadModelFromUrl:(id)a3;
+ (void)deleteArchiveFileAtDate:(id)a3 modelName:(id)a4;
+ (void)deleteArchiveFiles;
- (_PSInteractionPredictor)initWithInteractionStore:(id)a3 atDate:(id)a4 withModelName:(id)a5 modelConfiguration:(id)a6;
- (double)getMinDistanceForPt:(id)a3 toClusters:(id)a4;
- (double)timeSinceLastContactTo:(id)a3 FromDate:(id)a4 inTrainArray:(id)a5;
- (id)convertLogToClusterPointArray:(id)a3;
- (id)createMLArrayProviderFromTrainArray:(id)a3;
- (id)findLatestArchiveDateBefore:(id)a3 modelName:(id)a4;
- (id)getClusterDictionaryFromTrainArray:(id)a3 usingDBSCANParamsMinPts:(int)a4 andEps:(double)a5;
- (id)getClusteringResultsForPoint:(id)a3 usingClusterDictionary:(id)a4;
- (id)getConversationIDFromInteraction:(id)a3;
- (id)getConversationIDLogFromTrainArray:(id)a3;
- (id)getDateNumDays:(int)a3 AfterDate:(id)a4;
- (id)getDictionaryFromClustersArchiveAtPath:(id)a3;
- (id)getLastContactedDictionaryFromTrainArray:(id)a3;
- (id)getOrMakeClusterDictionaryAtDate:(id)a3;
- (id)getRecencyResultsShowingNumValues:(int)a3 fromTrainArray:(id)a4;
- (id)getTrainArrayToDate:(id)a3 withStartDateAnchor:(id)a4;
- (id)rankedZkwSuggestionsFromPredictionArray:(id)a3 forBundleID:(id)a4;
- (void)printModelWeights:(id)a3;
- (void)trainAtDate:(id)a3 usingCompiledModelURL:(id)a4 andSaveToURL:(id)a5;
- (void)writeArchive:(id)a3 toFilePath:(id)a4;
- (void)writeClusterArchiveFromClusterDict:(id)a3 withDate:(id)a4;
@end

@implementation _PSInteractionPredictor

+ (id)defaultClustersArchiveDirectory
{
  v2 = [MEMORY[0x1E6997910] modelDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"InteractionModelClusters/"];

  return v3;
}

+ (id)clustersArchiveFileForDate:(id)a3 modelName:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AB78];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setDateFormat:@"MM-dd-yyyy"];
  v9 = [v8 stringFromDate:v7];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD60] stringWithString:v9];
    v11 = v10;
    if (v5)
    {
      [v10 appendString:@"_"];
      [v11 appendString:v5];
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

+ (id)getModelURLfromName:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"mlmodelc"];

  return v6;
}

+ (id)getIntermediateModelURLForModelName:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [@"/var/tmp/" stringByAppendingString:a3];
  v5 = [v4 stringByAppendingString:@".mlmodelc/"];
  v6 = [v3 fileURLWithPath:v5];

  return v6;
}

+ (id)loadModelFromUrl:(id)a3
{
  v3 = a3;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_PSInteractionPredictor *)v3 loadModelFromUrl:v4];
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
  v7 = [v5 modelWithContentsOfURL:v3 error:v13];
  v8 = v13[0];
  v9 = +[_PSLogging generalChannel];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionPredictor loadModelFromUrl:v3];
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

- (id)getConversationIDFromInteraction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = [v4 bundleId];
  v7 = +[_PSConstants mobileFacetimeBundleId];
  if ([v6 isEqualToString:v7])
  {

    goto LABEL_5;
  }

  v8 = [v5 bundleId];
  v9 = +[_PSConstants macFacetimeBundleId];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    v17 = [v5 bundleId];
    v18 = +[_PSConstants mobileMessagesBundleId];
    if ([v17 isEqualToString:v18])
    {

      goto LABEL_11;
    }

    v19 = [v5 bundleId];
    v20 = +[_PSConstants macMessagesBundleId];
    v21 = [v19 isEqualToString:v20];

    if (v21)
    {
LABEL_11:
      v13 = [v5 domainIdentifier];
      if (!v13)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }

    v22 = [v5 bundleId];
    v23 = +[_PSConstants mobilePhoneBundleId];
    v24 = [v22 isEqualToString:v23];

    if (v24)
    {
      goto LABEL_5;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_5:
  v11 = MEMORY[0x1E69978D0];
  v12 = [v5 recipients];
  v13 = [v11 generateConversationIdFromInteractionRecipients:v12];

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_6:
  v14 = [(_PSInteractionPredictor *)self conversationIDMap];
  v15 = [v14 objectForKeyedSubscript:v13];

  if (!v15)
  {
    v16 = [(_PSInteractionPredictor *)self conversationIDMap];
    [v16 setObject:v5 forKeyedSubscript:v13];
  }

LABEL_15:

  return v13;
}

- (id)findLatestArchiveDateBefore:(id)a3 modelName:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = +[_PSInteractionPredictor defaultClustersArchiveDirectory];
  v9 = [v7 enumeratorAtPath:v8];

  v10 = [MEMORY[0x1E696AD60] stringWithString:@"MM-dd-yyyy"];
  v11 = v10;
  if (v6)
  {
    [v10 appendString:@"_"];
    [v11 appendString:v6];
  }

  [v11 appendString:{@".archive", v6}];
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
        [v5 timeIntervalSinceDate:v26];
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

- (_PSInteractionPredictor)initWithInteractionStore:(id)a3 atDate:(id)a4 withModelName:(id)a5 modelConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = _PSInteractionPredictor;
  v15 = [(_PSInteractionPredictor *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_interactionStore, a3);
    objc_storeStrong(&v16->_modelConfiguration, a6);
    v17 = [(_PSKNNModelConfiguration *)v16->_modelConfiguration modelName];
    v18 = [(_PSInteractionPredictor *)v16 findLatestArchiveDateBefore:v12 modelName:v17];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v12;
    }

    v20 = [(_PSInteractionPredictor *)v16 getOrMakeClusterDictionaryAtDate:v19];
    currentClusterDictionary = v16->_currentClusterDictionary;
    v16->_currentClusterDictionary = v20;

    v22 = [_PSInteractionPredictor getModelURLfromName:v13];
    compiledModelURL = v16->_compiledModelURL;
    v16->_compiledModelURL = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    conversationIDMap = v16->_conversationIDMap;
    v16->_conversationIDMap = v24;
  }

  return v16;
}

- (id)getDateNumDays:(int)a3 AfterDate:(id)a4
{
  v5 = MEMORY[0x1E695DF10];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  [v7 setDay:a3];
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 dateByAddingComponents:v7 toDate:v6 options:0];

  return v9;
}

- (id)getTrainArrayToDate:(id)a3 withStartDateAnchor:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v41 = a4;
  v6 = objc_opt_new();
  v7 = [(_PSInteractionPredictor *)self modelConfiguration];
  v8 = [v7 shouldExcludeInteractionBlock];

  v9 = [(_PSInteractionPredictor *)self modelConfiguration];
  v10 = [v9 interactionMechanisms];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      context = objc_autoreleasePoolPush();
      v13 = [(_PSInteractionPredictor *)self modelConfiguration];
      v14 = [v13 interactionHistoryRelativeStartDates];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v16 = [v15 intValue];

      if (v16)
      {
        v52 = [(_PSInteractionPredictor *)self getDateNumDays:v16 AfterDate:v41];
      }

      else
      {
        v52 = 0;
      }

      v51 = [(_PSInteractionPredictor *)self interactionStore];
      v48 = [(_PSInteractionPredictor *)self modelConfiguration];
      v47 = [v48 interactionMechanisms];
      v43 = [v47 objectAtIndexedSubscript:v12];
      v46 = [(_PSInteractionPredictor *)self modelConfiguration];
      v44 = [v46 bundleIds];
      v17 = [v44 objectAtIndexedSubscript:v12];
      v18 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8BF70];
      v19 = [(_PSInteractionPredictor *)self modelConfiguration];
      v20 = [v19 interactionCountMaxDepths];
      v50 = v12;
      v21 = [v20 objectAtIndexedSubscript:v12];
      LOBYTE(v40) = 0;
      v45 = +[_PSInteractionStoreUtils interactionsFromStore:startDate:tillDate:withMechanisms:withAccount:withBundleIds:withTargetBundleIds:withDirections:singleRecipient:fetchLimit:](_PSInteractionStoreUtils, "interactionsFromStore:startDate:tillDate:withMechanisms:withAccount:withBundleIds:withTargetBundleIds:withDirections:singleRecipient:fetchLimit:", v51, v52, v42, v43, 0, v17, 0, v18, v40, [v21 intValue]);

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
            if (v8 && v8[2](v8, *(*(&v53 + 1) + 8 * i)))
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
      v29 = [(_PSInteractionPredictor *)self modelConfiguration];
      v30 = [v29 interactionMechanisms];
      v31 = [v30 count];
    }

    while (v31 > v50 + 1);
  }

  v32 = [(_PSInteractionPredictor *)self modelConfiguration];
  v33 = [v32 interactionMechanisms];
  v34 = [v33 count];

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

- (id)getConversationIDLogFromTrainArray:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v4;
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
          v13 = [v11 startDate];
          v14 = [v5 objectForKey:v12];

          if (v14)
          {
            v15 = [v5 objectForKeyedSubscript:v12];
            [v15 addObject:v13];
          }

          else
          {
            v15 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
            [v5 setValue:v15 forKey:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v16 = [v5 allKeys];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62___PSInteractionPredictor_getConversationIDLogFromTrainArray___block_invoke;
  v27[3] = &unk_1E7C23B38;
  v17 = v5;
  v28 = v17;
  v18 = [v16 sortedArrayUsingComparator:v27];
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

- (id)convertLogToClusterPointArray:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

  v13 = [v4 allObjects];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)getClusterDictionaryFromTrainArray:(id)a3 usingDBSCANParamsMinPts:(int)a4 andEps:(double)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [(_PSInteractionPredictor *)self getConversationIDLogFromTrainArray:a3];
  v9 = [[_PSDBSCAN alloc] initWithMinimumPointsForClustering:a4 MaxNeighborDistance:a5];
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

        v19 = [(_PSDBSCAN *)v9 clusters];
        v20 = [v19 copy];
        [v10 setValue:v20 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

- (double)getMinDistanceForPt:(id)a3 toClusters:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) convexHull];
        [v5 distanceToHull:v12];
        v14 = v13;

        if (v14 < v10)
        {
          v10 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (double)timeSinceLastContactTo:(id)a3 FromDate:(id)a4 inTrainArray:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = a5;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v16, v25];
        v18 = [v17 isEqualToString:v8];

        if (v18)
        {
          v19 = [MEMORY[0x1E695DEE8] currentCalendar];
          v20 = [v16 startDate];
          v21 = [v19 components:192 fromDate:v20 toDate:v9 options:0];

          v22 = [v21 minute];
          v12 = [v21 second] / 60.0 + v22;

          goto LABEL_11;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (id)getLastContactedDictionaryFromTrainArray:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 count];
  if (v6 - 1 >= 0)
  {
    v7 = v6;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:--v7];
      v9 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v8];

      if (v9)
      {
        v10 = [v4 objectAtIndexedSubscript:v7];
        v11 = [v10 startDate];

        [v5 setObject:v11 forKeyedSubscript:v9];
      }
    }

    while (v7 > 0);
  }

  return v5;
}

- (void)writeArchive:(id)a3 toFilePath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v17];
    v8 = v17;
    if (v8)
    {
      v9 = v8;
      v10 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_PSInteractionPredictor writeArchive:toFilePath:];
      }
    }

    else
    {
      v10 = [v6 stringByDeletingLastPathComponent];
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = 0;
      [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v16];
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

- (void)writeClusterArchiveFromClusterDict:(id)a3 withDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [[_PSClustersArchive alloc] initWithClustersDictionary:v7 archiveDate:v6];

  v8 = [(_PSInteractionPredictor *)self modelConfiguration];
  v9 = [v8 modelName];
  v10 = [_PSInteractionPredictor clustersArchiveFileForDate:v6 modelName:v9];

  [(_PSInteractionPredictor *)self writeArchive:v11 toFilePath:v10];
}

- (id)getDictionaryFromClustersArchiveAtPath:(id)a3
{
  v13 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a3 options:2 error:&v13];
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
    v9 = 0;
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

  v11 = [v7 archiveDate];
  [(_PSInteractionPredictor *)self setCurrentArchiveDate:v11];

  v9 = [v7 clustersDictionary];
LABEL_9:

  return v9;
}

- (id)getOrMakeClusterDictionaryAtDate:(id)a3
{
  v4 = a3;
  v5 = [(_PSInteractionPredictor *)self modelConfiguration];
  v6 = [v5 modelName];
  v7 = [_PSInteractionPredictor clustersArchiveFileForDate:v4 modelName:v6];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v6) = [v8 fileExistsAtPath:v7];

  if (v6)
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
    v11 = [(_PSInteractionPredictor *)self getTrainArrayToDate:v4 withStartDateAnchor:v4];
    v10 = [(_PSInteractionPredictor *)self getClusterDictionaryFromTrainArray:v11 usingDBSCANParamsMinPts:3 andEps:1.2];
    [(_PSInteractionPredictor *)self writeClusterArchiveFromClusterDict:v10 withDate:v4];
    [(_PSInteractionPredictor *)self setCurrentArchiveDate:v4];
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "DBSCAN cluster dictionary is generated", v14, 2u);
    }
  }

  return v10;
}

- (id)getRecencyResultsShowingNumValues:(int)a3 fromTrainArray:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if (a3 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ([v6 count] <= v8)
      {
        goto LABEL_10;
      }

      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [(_PSInteractionPredictor *)self getConversationIDFromInteraction:v9];
      if (!v10)
      {
        goto LABEL_8;
      }

      if (![v7 containsObject:v10])
      {
        break;
      }

      ++v8;
LABEL_9:

      if (a3 <= 0)
      {
        goto LABEL_10;
      }
    }

    [v7 addObject:v10];
LABEL_8:
    --a3;
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (id)getClusteringResultsForPoint:(id)a3 usingClusterDictionary:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
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

              v17 = [*(*(&v25 + 1) + 8 * j) convexHull];
              [v5 distanceToHull:v17];
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

        [v7 addObject:v11];
      }

      v24 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  [v7 sortUsingComparator:&__block_literal_global];
  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)removeMlmodelcFolderAtPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ([v4 fileExistsAtPath:v3 isDirectory:&v12] && v12 == 1)
  {
    v11 = 0;
    [v4 removeItemAtPath:v3 error:&v11];
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
        v14 = v3;
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

+ (BOOL)cloneAdaptableModelURL:(id)a3 toFilePathURL:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 path];
  v8 = [_PSInteractionPredictor removeMlmodelcFolderAtPath:v7];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v17 = 0;
    v10 = [v9 copyItemAtURL:v5 toURL:v6 error:&v17];
    v11 = v17;
    v12 = (v11 == 0) & v10;
    v13 = +[_PSLogging generalChannel];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "copying folder from path:%@ to path:%@ success.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
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

- (id)createMLArrayProviderFromTrainArray:(id)a3
{
  v4 = a3;
  v58 = [MEMORY[0x1E695DF70] array];
  v5 = [v4 count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    v7 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v69 = 0;
    v59 = 0;
    v60 = v4;
    while (1)
    {
      v8 = v6 - 1;
      v9 = [v4 objectAtIndexedSubscript:v6 - 1];
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
    v11 = [v9 startDate];
    v12 = [v11 dateByAddingTimeInterval:-1.0];
    v13 = [(_PSInteractionPredictor *)self getTrainArrayToDate:v12 withStartDateAnchor:v11];

    v71 = v13;
    if (v6 == [v4 count])
    {
      v67 = [(_PSInteractionPredictor *)self getLastContactedDictionaryFromTrainArray:v13];

      v14 = [(_PSInteractionPredictor *)self modelConfiguration];
      v15 = [v14 modelName];
      v16 = [(_PSInteractionPredictor *)self findLatestArchiveDateBefore:v11 modelName:v15];

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v11;
      }

      v18 = [(_PSInteractionPredictor *)self getOrMakeClusterDictionaryAtDate:v17];

      v19 = [v11 dateByAddingTimeInterval:86400.0];
      v20 = [(_PSInteractionPredictor *)self modelConfiguration];
      v21 = [v20 modelName];
      v22 = [(_PSInteractionPredictor *)self findLatestArchiveDateBefore:v19 modelName:v21];

      v4 = v60;
      v23 = [(_PSInteractionPredictor *)self getOrMakeClusterDictionaryAtDate:v22];

      v69 = v22;
      v64 = v16;
      v65 = v23;
      v66 = v18;
      v7 = v67;
    }

    if ([v9 direction] != 1)
    {
      [v7 setObject:v11 forKey:v10];
LABEL_38:

      v8 = v70;
      goto LABEL_39;
    }

    v63 = [(_PSInteractionPredictor *)self getRecencyResultsShowingNumValues:5 fromTrainArray:v71];
    v24 = [v63 containsObject:v10];
    [v11 timeIntervalSinceDate:v69];
    v68 = v7;
    if (v25 >= 0.0)
    {
      v27 = [(_PSInteractionPredictor *)self currentArchiveDate];
      [v11 timeIntervalSinceDate:v27];
      v29 = v28;

      if (v29 >= 0.0)
      {
        v30 = [(_PSInteractionPredictor *)self currentClusterDictionary];
LABEL_17:
        v31 = v30;
        v32 = [v30 objectForKey:v10];

        v62 = v31;
        if (v32)
        {
          v33 = [[_PSClusterPoint alloc] initWithDate:v11];
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
          [v11 timeIntervalSinceDate:v39];
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

            [v58 addObject:v50];

            v4 = v60;
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
        [v7 setObject:v11 forKey:v10];

        goto LABEL_38;
      }

      v26 = v65;
    }

    else
    {
      v26 = v66;
    }

    v30 = v26;
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
  v55 = [[v52 alloc] initWithFeatureProviderArray:v58];
  v56 = [[_PSMLArrayProvider alloc] initWithProvider:v55 clusteringCount:HIDWORD(v59) recencyCount:v59];

  return v56;
}

- (void)printModelWeights:(id)a3
{
  v3 = a3;
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
  v6 = [v4 weights];
  v7 = [v6 scopedTo:@"dense_1"];

  v12[0] = 0;
  v8 = [v3 parameterValueForKey:v7 error:v12];
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

- (void)trainAtDate:(id)a3 usingCompiledModelURL:(id)a4 andSaveToURL:(id)a5
{
  v8 = a3;
  v27 = a4;
  v9 = a5;
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
  v10 = [(_PSInteractionPredictor *)self getTrainArrayToDate:v8 withStartDateAnchor:v8];
  v11 = [(_PSInteractionPredictor *)self getClusterDictionaryFromTrainArray:v10 usingDBSCANParamsMinPts:3 andEps:1.2];
  [(_PSInteractionPredictor *)self writeClusterArchiveFromClusterDict:v11 withDate:v8];

  v12 = [(_PSInteractionPredictor *)self createMLArrayProviderFromTrainArray:v10];
  v26 = [v12 MLArrayProvider];
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
  v14 = v9;
  v30 = v14;
  v31 = self;
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
    v23 = [v20 updateTaskForModelAtURL:v27 trainingData:v26 progressHandlers:v19 error:&v28];
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

- (id)rankedZkwSuggestionsFromPredictionArray:(id)a3 forBundleID:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v55 = a4;
  v54 = [MEMORY[0x1E695DF70] array];
  v7 = [(_PSInteractionPredictor *)self modelConfiguration];
  v8 = [v7 modelName];

  if (v8)
  {
    v9 = [(_PSInteractionPredictor *)self modelConfiguration];
    v10 = [v9 modelType];

    if (v10 > 2)
    {
      v11 = &stru_1F2D6CE98;
    }

    else
    {
      v11 = off_1E7C23C48[v10];
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [(_PSInteractionPredictor *)self modelConfiguration];
    v14 = [v13 modelName];
    v53 = [v12 stringWithFormat:@"%@%@", v14, v11];
  }

  else
  {
    v53 = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v6;
  v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v58)
  {
    v56 = *v68;
    v57 = self;
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
        v17 = [(_PSInteractionPredictor *)self conversationIDMap];
        v18 = [v17 objectForKey:v16];

        if (v18)
        {
          v60 = v15;
          v19 = [(_PSInteractionPredictor *)self conversationIDMap];
          v62 = v16;
          v20 = [v19 objectForKeyedSubscript:v16];
          v21 = [v20 recipients];

          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v23 = v21;
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
                v30 = [v28 identifier];
                v31 = [v28 handle];
                v32 = [v28 displayName];
                v33 = [(_PSRecipient *)v29 initWithIdentifier:v30 handle:v31 displayName:v32 contact:0];

                [v22 addObject:v33];
              }

              v25 = [v23 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v25);
          }

          v34 = [_PSSuggestion alloc];
          self = v57;
          v35 = [(_PSInteractionPredictor *)v57 conversationIDMap];
          v36 = [v35 objectForKeyedSubscript:v62];
          v37 = [v36 groupName];
          v59 = [(_PSSuggestion *)v34 initWithBundleID:v55 conversationIdentifier:v62 groupName:v37 recipients:v22 reason:v53 reasonType:0];

          if (rankedZkwSuggestionsFromPredictionArray_forBundleID___pasOnceToken46 != -1)
          {
            [_PSInteractionPredictor rankedZkwSuggestionsFromPredictionArray:forBundleID:];
          }

          v38 = rankedZkwSuggestionsFromPredictionArray_forBundleID___pasExprOnceResult;
          v39 = [(_PSInteractionPredictor *)v57 conversationIDMap];
          v40 = [v39 objectForKeyedSubscript:v62];
          v41 = [v40 bundleId];
          if (v41)
          {
            v42 = v41;
            v43 = [(_PSInteractionPredictor *)v57 conversationIDMap];
            v44 = [v43 objectForKeyedSubscript:v62];
            [v44 bundleId];
            v45 = v61 = v38;
            v46 = [v61 containsObject:v45];

            v38 = v61;
            self = v57;

            v47 = v59;
            v15 = v60;
            if (v46)
            {
              v39 = [(_PSInteractionPredictor *)v57 conversationIDMap];
              v40 = [v39 objectForKeyedSubscript:v62];
              v48 = [v40 account];
              [(_PSSuggestion *)v59 setMessagesGroupIdentifier:v48];

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

          [v54 addObject:v47];
        }

        ++v15;
      }

      while (v15 != v58);
      v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v58);
  }

  v49 = [v54 copy];
  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (void)deleteArchiveFileAtDate:(id)a3 modelName:(id)a4
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultManager];
  v9 = [_PSInteractionPredictor clustersArchiveFileForDate:v7 modelName:v6];

  if ([v8 fileExistsAtPath:v9])
  {
    v13 = 0;
    [v8 removeItemAtPath:v9 error:&v13];
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
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[_PSInteractionPredictor defaultClustersArchiveDirectory];
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:0];
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
        [v2 removeItemAtPath:v11 error:&v17];
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