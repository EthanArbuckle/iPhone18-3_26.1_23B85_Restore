@interface PPQuickTypeConnectionsServant
- (PPQuickTypeConnectionsServant)init;
- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set;
@end

@implementation PPQuickTypeConnectionsServant

- (id)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit explanationSet:(id)set
{
  queryCopy = query;
  setCopy = set;
  v10 = +[PPSettings sharedInstance];
  isAppConnectionsLocationsEnabled = [v10 isAppConnectionsLocationsEnabled];

  if (isAppConnectionsLocationsEnabled)
  {
    v12 = [PPConnectionsMetricsTracker consumerStringForConsumerType:1];
    v13 = [PPConnectionsMetricsTracker triggerFromCriteria:queryCopy];
    selfCopy = self;
    metricsTracker = self->_metricsTracker;
    bundleIdentifier = [queryCopy bundleIdentifier];
    v51 = v12;
    v53 = v13;
    [(PPConnectionsMetricsTracker *)metricsTracker trackOpportunityForConsumer:v12 trigger:v13 targetApp:bundleIdentifier];

    v16 = queryCopy;
    v52 = setCopy;
    v17 = [PPConnectionsUtils isValidLinguisticQuery:v16];
    v18 = +[PPConnectionsUtils supportedLocationSemanticTypes];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v16, "semanticTag")}];
    if ([v18 containsObject:v19] && +[PPConnectionsUtils isClientAuthorizedForSemanticTriggers:](PPConnectionsUtils, "isClientAuthorizedForSemanticTriggers:", v16))
    {
    }

    else
    {

      if (!v17)
      {
        v26 = v12;
        if ([v16 semanticTag])
        {
          v27 = +[PPConnectionsUtils supportedLocationSemanticTypes];
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v16, "semanticTag")}];
          v29 = [v27 containsObject:v28];

          v30 = v52;
          if ((v29 & 1) == 0)
          {
            [v52 push:3];
          }

          if (![PPConnectionsUtils isClientAuthorizedForSemanticTriggers:v16])
          {
            [v52 push:4];
          }

          firstObject = 0;
        }

        else
        {
          firstObject = 0;
          v30 = v52;
        }

LABEL_34:

        v39 = objc_opt_new();
        if (firstObject)
        {
          label = [firstObject label];
          value = [firstObject value];
          [firstObject setShouldAggregate:{+[PPConnectionsUtils shouldAggregateLabel:withValue:query:](PPConnectionsUtils, "shouldAggregateLabel:withValue:query:", label, value, v16)}];

          quickTypeItem = [firstObject quickTypeItem];
          if (!quickTypeItem)
          {
            [v52 push:2];
            v21 = 0;
            goto LABEL_39;
          }

          v43 = quickTypeItem;
          [v39 addObject:quickTypeItem];
          v44 = selfCopy->_metricsTracker;
          source = [firstObject source];
          originatingBundleID = [firstObject originatingBundleID];
          bundleIdentifier2 = [v16 bundleIdentifier];
          [(PPConnectionsMetricsTracker *)v44 trackConversionGoalForConsumer:v26 source:source trigger:v53 originatingApp:originatingBundleID targetApp:bundleIdentifier2 converted:0];
        }

        v21 = v39;
LABEL_39:

        goto LABEL_40;
      }
    }

    v22 = 90000000;
    if (v17)
    {
      v22 = 40000000;
    }

    v49 = v22;
    v23 = +[PPLocalConnectionsStore defaultStore];
    v24 = v16;
    if ([v24 semanticTag])
    {
      v25 = +[PPConnectionsUtils locationFieldFromSemanticTag:](PPConnectionsUtils, "locationFieldFromSemanticTag:", [v24 semanticTag]);
    }

    else if ([v24 type] == 3 && (objc_msgSend(v24, "subtype") == 6 || objc_msgSend(v24, "subtype") == 7) && (objc_msgSend(v24, "fields") & 4) != 0)
    {
      v25 = 1;
    }

    else if ([v24 type] == 3 && (objc_msgSend(v24, "subtype") == 6 || objc_msgSend(v24, "subtype") == 7))
    {
      v25 = (([v24 fields] << 31) >> 31) & 0xA;
    }

    else
    {
      v25 = 0;
    }

    v32 = objc_alloc(MEMORY[0x277D3A340]);
    bundleIdentifier3 = [v24 bundleIdentifier];
    v34 = [v32 initWithLocationField:v25 bundleIdentifier:bundleIdentifier3];

    v35 = +[PPConnectionsParameters sharedInstance];
    quickTypePredictionLimit = [v35 quickTypePredictionLimit];

    if (quickTypePredictionLimit <= limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = quickTypePredictionLimit;
    }

    v30 = v52;
    v38 = [v23 recentLocationsForConsumer:1 criteria:v34 limit:limitCopy explanationSet:v52 timeout:v49 error:0];
    firstObject = [v38 firstObject];

    v26 = v51;
    goto LABEL_34;
  }

  v20 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPQuickTypeConnectionsServant: Ignoring prediction request because Found Locations in Other Apps settings is off", buf, 2u);
  }

  v21 = 0;
LABEL_40:

  return v21;
}

- (PPQuickTypeConnectionsServant)init
{
  v9.receiver = self;
  v9.super_class = PPQuickTypeConnectionsServant;
  v2 = [(PPQuickTypeConnectionsServant *)&v9 init];
  if (v2)
  {
    v3 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPQuickTypeConnectionsServant initializing", v8, 2u);
    }

    v4 = +[PPConnectionsMetricsTracker sharedInstance];
    metricsTracker = v2->_metricsTracker;
    v2->_metricsTracker = v4;

    v6 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPQuickTypeConnectionsServant initialization complete", v8, 2u);
    }
  }

  return v2;
}

@end