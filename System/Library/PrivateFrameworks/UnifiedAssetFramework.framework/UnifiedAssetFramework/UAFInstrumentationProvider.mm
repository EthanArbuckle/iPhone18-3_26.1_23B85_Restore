@interface UAFInstrumentationProvider
+ (BOOL)_assetSetsComplete:(id)complete assetSetCompleteness:(id)completeness;
+ (BOOL)isSiriAnalyticsAvailable;
+ (id)_getAssetSpecifiersForSubscription:(id)subscription assetSetUsages:(id)usages;
+ (id)_getMADownloadErrors:(id)errors assetSetName:(id)name assetSetID:(id)d;
+ (id)getSerialQueue;
+ (void)_emitAssetDailyStatusEvent:(id)event entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type;
+ (void)_emitSubscriptionComplete:(id)complete subscriber:(id)subscriber user:(id)user assetSets:(id)sets;
+ (void)_emitSubscriptionCompleteForAssetSet:(id)set;
+ (void)logAvailableAssetDailyStatus;
+ (void)logSubscriptionCompleteForSubscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user;
+ (void)logUAFAssetSetDailyStatus:(id)status entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type;
@end

@implementation UAFInstrumentationProvider

+ (id)getSerialQueue
{
  if (_MergedGlobals_16 != -1)
  {
    dispatch_once(&_MergedGlobals_16, &__block_literal_global_17);
  }

  v3 = qword_1ED7D1220;

  return v3;
}

void __44__UAFInstrumentationProvider_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFInstrumentationProvider.Serial", v2);
  v1 = qword_1ED7D1220;
  qword_1ED7D1220 = v0;
}

+ (id)_getAssetSpecifiersForSubscription:(id)subscription assetSetUsages:(id)usages
{
  v36 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [usagesCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = +[UAFConfigurationManager defaultManager];
        v12 = [v11 getAssetSet:v10];

        v33 = v10;
        v13 = [usagesCopy objectForKeyedSubscript:v10];
        v34 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v15 = [UAFAutoAssetManager getSpecifiers:v12 assetSetUsages:v14 experiment:0];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [v5 addObject:*(*(&v24 + 1) + 8 * j)];
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v18);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)logUAFAssetSetDailyStatus:(id)status entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  [self _emitAssetDailyStatusEvent:statusCopy entries:entries assetSetDailyStatusEventType:type];
  v9 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    assetSetIdentifier = [statusCopy assetSetIdentifier];
    v12 = 136315394;
    v13 = "+[UAFInstrumentationProvider logUAFAssetSetDailyStatus:entries:assetSetDailyStatusEventType:]";
    v14 = 2114;
    v15 = assetSetIdentifier;
    _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_INFO, "%s Emitted DailyStatusEvent message for asset set: %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_getMADownloadErrors:(id)errors assetSetName:(id)name assetSetID:(id)d
{
  v55 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  nameCopy = name;
  dCopy = d;
  v10 = objc_opt_new();
  availableForUseError = [errorsCopy availableForUseError];

  if (!availableForUseError)
  {
    goto LABEL_11;
  }

  availableForUseError2 = [errorsCopy availableForUseError];
  domain = [availableForUseError2 domain];
  if (![domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    goto LABEL_9;
  }

  availableForUseError3 = [errorsCopy availableForUseError];
  if ([availableForUseError3 code] != 6107)
  {

LABEL_9:
    goto LABEL_10;
  }

  [errorsCopy availableForUseError];
  v15 = dCopy;
  v17 = v16 = nameCopy;
  userInfo = [v17 userInfo];

  nameCopy = v16;
  dCopy = v15;

  if (!userInfo)
  {
LABEL_10:
    v24 = MEMORY[0x1E696AD98];
    availableForUseError4 = [errorsCopy availableForUseError];
    v26 = [v24 numberWithLong:{objc_msgSend(availableForUseError4, "code")}];
    [v10 addObject:v26];

    goto LABEL_11;
  }

  availableForUseError5 = [errorsCopy availableForUseError];
  userInfo2 = [availableForUseError5 userInfo];
  v21 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v22 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v21, "code")}];
  [v10 addObject:v22];

  v23 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v48 = "+[UAFInstrumentationProvider _getMADownloadErrors:assetSetName:assetSetID:]";
    v49 = 1024;
    code = [v21 code];
    v51 = 2114;
    v52 = nameCopy;
    v53 = 2114;
    v54 = v15;
    _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Underlying error: %u found while logging MA download error for asset set %{public}@ with ID: %{public}@:", buf, 0x26u);
  }

LABEL_11:
  newerVersionError = [errorsCopy newerVersionError];

  if (!newerVersionError)
  {
    goto LABEL_20;
  }

  if (!availableForUseError)
  {
LABEL_18:
    [errorsCopy newerVersionError];
    v38 = v37 = dCopy;
    userInfo3 = [v38 userInfo];
    newerVersionError2 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v40 = MEMORY[0x1E696AD98];
    code2 = [newerVersionError2 code];
    v42 = v40;
    dCopy = v37;
    domain2 = [v42 numberWithLong:code2];
    [v10 addObject:domain2];
    goto LABEL_19;
  }

  newerVersionError2 = [errorsCopy newerVersionError];
  domain2 = [newerVersionError2 domain];
  availableForUseError6 = [errorsCopy availableForUseError];
  domain3 = [availableForUseError6 domain];
  if (![domain2 isEqualToString:domain3])
  {

    goto LABEL_19;
  }

  v45 = dCopy;
  v46 = nameCopy;
  newerVersionError3 = [errorsCopy newerVersionError];
  code3 = [newerVersionError3 code];
  availableForUseError7 = [errorsCopy availableForUseError];
  if (code3 != [availableForUseError7 code])
  {
    newerVersionError4 = [errorsCopy newerVersionError];
    userInfo4 = [newerVersionError4 userInfo];

    dCopy = v45;
    nameCopy = v46;
    if (!userInfo4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  dCopy = v45;
  nameCopy = v46;
LABEL_19:

LABEL_20:
  v43 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)logAvailableAssetDailyStatus
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[UAFInstrumentationProvider logAvailableAssetDailyStatus]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Logging asset daily status.", &v6, 0xCu);
  }

  [self _emitAssetDailyStatusEvent:0 entries:0 assetSetDailyStatusEventType:1];
  v4 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[UAFInstrumentationProvider logAvailableAssetDailyStatus]";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Emitted scheduled AvailableAssetDailyStatus message", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_emitAssetDailyStatusEvent:(id)event entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type
{
  v49 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  entriesCopy = entries;
  v10 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "+[UAFInstrumentationProvider _emitAssetDailyStatusEvent:entries:assetSetDailyStatusEventType:]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Using Biome for logging asset status", buf, 0xCu);
  }

  if (type != 3)
  {
    if (type == 1)
    {
      +[UAFBiomeInstrumenter logScheduledDailyAssetStatus];
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  assetSetIdentifier = [eventCopy assetSetIdentifier];
  v12 = [assetSetIdentifier isEqualToString:@"CAReportingAssetSet"];

  if (!v12)
  {
LABEL_15:
    v25 = objc_autoreleasePoolPush();
    v37 = 0;
    v26 = [eventCopy currentSetStatusSync:&v37];
    v27 = v37;
    if (v27)
    {
      v28 = UAFGetLogCategory(&UAFLogContextInstrumentation);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        assetSetIdentifier2 = [eventCopy assetSetIdentifier];
        *buf = 136315650;
        v43 = "+[UAFInstrumentationProvider _emitAssetDailyStatusEvent:entries:assetSetDailyStatusEventType:]";
        v44 = 2114;
        v45 = assetSetIdentifier2;
        v46 = 2114;
        v47 = v27;
        _os_log_debug_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEBUG, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v25);
    assetSetIdentifier3 = [eventCopy assetSetIdentifier];
    downloadedCatalogCachedAssetSetID = [v26 downloadedCatalogCachedAssetSetID];
    v31 = [self _getMADownloadErrors:v26 assetSetName:assetSetIdentifier3 assetSetID:downloadedCatalogCachedAssetSetID];

    downloadedCatalogCachedAssetSetID2 = [v26 downloadedCatalogCachedAssetSetID];
    +[UAFBiomeInstrumenter logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:](UAFBiomeInstrumenter, "logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:", eventCopy, downloadedCatalogCachedAssetSetID2, entriesCopy, v31, [v26 latestDownloadedAtomicInstanceFromPreSUStaging], type);

    if (type == 3)
    {
      assetSetIdentifier4 = [eventCopy assetSetIdentifier];
      [self _emitSubscriptionCompleteForAssetSet:assetSetIdentifier4];
    }

    goto LABEL_21;
  }

  v13 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = entriesCopy;
  v14 = entriesCopy;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        fullAssetSelector = [v19 fullAssetSelector];
        assetVersion = [fullAssetSelector assetVersion];
        fullAssetSelector2 = [v19 fullAssetSelector];
        assetSpecifier = [fullAssetSelector2 assetSpecifier];
        [v13 setObject:assetVersion forKeyedSubscript:assetSpecifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v16);
  }

  assetSetIdentifier5 = [eventCopy assetSetIdentifier];
  [UAFCoreAnalyticsInstrumenter logUAFAssetSetState:assetSetIdentifier5 assetSpecifiersAndVersions:v13];

  entriesCopy = v36;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSiriAnalyticsAvailable
{
  v2 = objc_opt_class();
  if (v2)
  {
    v2 = objc_opt_class();
    if (v2)
    {
      LOBYTE(v2) = objc_opt_class() != 0;
    }
  }

  return v2;
}

+ (BOOL)_assetSetsComplete:(id)complete assetSetCompleteness:(id)completeness
{
  v26 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  completenessCopy = completeness;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = completeCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [completenessCopy objectForKeyedSubscript:{v12, v21}];

        if (!v13)
        {
          v14 = [UAFAutoAssetManager assetSetComplete:v12];
          v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
          [completenessCopy setObject:v15 forKeyedSubscript:v12];
        }

        v16 = [completenessCopy objectForKeyedSubscript:v12];
        bOOLValue = [v16 BOOLValue];

        if (!bOOLValue)
        {
          v18 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (void)_emitSubscriptionComplete:(id)complete subscriber:(id)subscriber user:(id)user assetSets:(id)sets
{
  v28 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  subscriberCopy = subscriber;
  userCopy = user;
  setsCopy = sets;
  v13 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v21 = "+[UAFInstrumentationProvider _emitSubscriptionComplete:subscriber:user:assetSets:]";
    v22 = 2114;
    v23 = completeCopy;
    v24 = 2114;
    v25 = subscriberCopy;
    v26 = 2114;
    v27 = userCopy;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ complete", buf, 0x2Au);
  }

  v14 = objc_opt_new();
  [v14 setObject:completeCopy forKeyedSubscript:@"subscriptionName"];
  [v14 setObject:subscriberCopy forKeyedSubscript:@"subscriberName"];
  [v14 setObject:&unk_1F3B73230 forKeyedSubscript:@"downloadStatus"];
  [v14 setObject:setsCopy forKeyedSubscript:@"assetSetIdentifiers"];

  v19 = 0;
  v15 = [UAFUser uidForUser:userCopy error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "+[UAFInstrumentationProvider _emitSubscriptionComplete:subscriber:user:assetSets:]";
      v22 = 2114;
      v23 = v16;
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Error %{public}@ occurred while fetching the user, so not emitting subscription complete AIR event", buf, 0x16u);
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15, "unsignedIntValue")}];
    [v14 setObject:v17 forKeyedSubscript:@"userIdentifier"];
  }

  [UAFAppleIntelligenceReporting recordEvent:v14];
  v18 = *MEMORY[0x1E69E9840];
}

+ (void)_emitSubscriptionCompleteForAssetSet:(id)set
{
  v67 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = objc_autoreleasePoolPush();
  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v53 = 0;
  v7 = [v6 getAllSubscriptions:&v53];
  v8 = v53;

  if (!v8)
  {
    selfCopy = self;
    log = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v28 = v7;
    obj = v7;
    v30 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (!v30)
    {
      goto LABEL_33;
    }

    v29 = *v50;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v9;
        v10 = *(*(&v49 + 1) + 8 * v9);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v39 = v10;
        v32 = [obj objectForKeyedSubscript:?];
        v35 = [v32 countByEnumeratingWithState:&v45 objects:v65 count:16];
        if (v35)
        {
          v33 = *v46;
          do
          {
            v11 = 0;
            do
            {
              if (*v46 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v36 = v11;
              v12 = *(*(&v45 + 1) + 8 * v11);
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v13 = [obj objectForKeyedSubscript:v39];
              v38 = v12;
              v14 = [v13 objectForKeyedSubscript:v12];

              v15 = [v14 countByEnumeratingWithState:&v41 objects:v64 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v42;
                do
                {
                  v18 = 0;
                  do
                  {
                    if (*v42 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v41 + 1) + 8 * v18);
                    v20 = +[UAFConfigurationManager defaultManager];
                    v63 = v19;
                    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
                    v22 = [v20 applySubscriptions:v21];

                    v23 = [v22 objectForKeyedSubscript:setCopy];

                    if (v23)
                    {
                      if ([UAFInstrumentationProvider _assetSetsComplete:v22 assetSetCompleteness:log])
                      {
                        name = [v19 name];
                        v54 = setCopy;
                        name2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                        [selfCopy _emitSubscriptionComplete:name subscriber:v38 user:v39 assetSets:name2];
                        goto LABEL_22;
                      }

                      name = UAFGetLogCategory(&UAFLogContextInstrumentation);
                      if (os_log_type_enabled(name, OS_LOG_TYPE_DEBUG))
                      {
                        name2 = [v19 name];
                        *buf = 136315906;
                        v56 = "+[UAFInstrumentationProvider _emitSubscriptionCompleteForAssetSet:]";
                        v57 = 2114;
                        v58 = name2;
                        v59 = 2114;
                        v60 = v38;
                        v61 = 2114;
                        v62 = v39;
                        _os_log_debug_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_DEBUG, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ not yet complete", buf, 0x2Au);
LABEL_22:
                      }
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v26 = [v14 countByEnumeratingWithState:&v41 objects:v64 count:16];
                  v16 = v26;
                }

                while (v26);
              }

              v11 = v36 + 1;
            }

            while (v36 + 1 != v35);
            v35 = [v32 countByEnumeratingWithState:&v45 objects:v65 count:16];
          }

          while (v35);
        }

        v9 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
      if (!v30)
      {
LABEL_33:

        v7 = v28;
        v8 = 0;
        goto LABEL_34;
      }
    }
  }

  log = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v56 = "+[UAFInstrumentationProvider _emitSubscriptionCompleteForAssetSet:]";
    v57 = 2114;
    v58 = v8;
    _os_log_error_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
  }

LABEL_34:

  objc_autoreleasePoolPop(v5);
  v27 = *MEMORY[0x1E69E9840];
}

+ (void)logSubscriptionCompleteForSubscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user
{
  v41 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  subscriberCopy = subscriber;
  userCopy = user;
  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = subscriptionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    *&v11 = 136315906;
    v23 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = +[UAFConfigurationManager defaultManager];
        v39 = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        v18 = [v16 applySubscriptions:v17];

        if ([UAFInstrumentationProvider _assetSetsComplete:v18 assetSetCompleteness:v8])
        {
          name = [v15 name];
          allKeys = [v18 allKeys];
          [self _emitSubscriptionComplete:name subscriber:subscriberCopy user:userCopy assetSets:allKeys];
LABEL_8:

          goto LABEL_10;
        }

        name = UAFGetLogCategory(&UAFLogContextInstrumentation);
        if (os_log_type_enabled(name, OS_LOG_TYPE_DEBUG))
        {
          allKeys = [v15 name];
          *buf = v23;
          v32 = "+[UAFInstrumentationProvider logSubscriptionCompleteForSubscriptions:subscriber:user:]";
          v33 = 2114;
          v34 = allKeys;
          v35 = 2114;
          v36 = subscriberCopy;
          v37 = 2114;
          v38 = userCopy;
          _os_log_debug_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_DEBUG, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ not yet complete", buf, 0x2Au);
          goto LABEL_8;
        }

LABEL_10:

        ++v14;
      }

      while (v12 != v14);
      v21 = [v9 countByEnumeratingWithState:&v27 objects:v40 count:16];
      v12 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end