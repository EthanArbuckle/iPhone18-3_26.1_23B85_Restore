@interface SPPersonalMetricManager
+ (id)sharedInstance;
- (SPPersonalMetricManager)init;
- (void)_clearState;
- (void)_populateMetricWithFirstResult:(id)a3;
- (void)_sendCAMetrics;
- (void)_updateTrialInfo;
- (void)didEngageResult:(id)a3;
- (void)didRankSections:(id)a3;
- (void)resultsDidBecomeVisible:(id)a3;
- (void)searchViewDidDisappear:(id)a3;
@end

@implementation SPPersonalMetricManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SPPersonalMetricManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __41__SPPersonalMetricManager_sharedInstance__block_invoke()
{
  sharedInstance_manager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SPPersonalMetricManager)init
{
  v9.receiver = self;
  v9.super_class = SPPersonalMetricManager;
  v2 = [(SPPersonalMetricManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.searchd.personalMetricManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    parsecRanker = v2->_parsecRanker;
    v2->_parsecRanker = v6;

    [(SPPersonalMetricManager *)v2 _clearState];
  }

  return v2;
}

- (void)_clearState
{
  metric = self->_metric;
  self->_metric = 0;

  v4 = objc_opt_new();
  topHitIdentifiers = self->_topHitIdentifiers;
  self->_topHitIdentifiers = v4;

  v6 = objc_opt_new();
  rankedPosition = self->_rankedPosition;
  self->_rankedPosition = v6;

  self->_lastQueryId = -1;
}

- (void)_updateTrialInfo
{
  v5 = SSDefaultsGetResources();
  v3 = [v5 getTrialTreatmentId];
  [(SPGeoPersonalizationEngagementMetric *)self->_metric setTrialTreatmentId:v3];

  v4 = [v5 getTrialExperimentId];
  [(SPGeoPersonalizationEngagementMetric *)self->_metric setTrialExperimentId:v4];
}

- (void)_populateMetricWithFirstResult:(id)a3
{
  v34 = a3;
  if ([v34 containsPersonalResult] && (objc_msgSend(v34, "mapsPersonalizationResult"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v34, "didRerankPersonalResult")}];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultWasReranked:v5];

    v6 = MEMORY[0x1E696AD98];
    v7 = [v34 mapsPersonalizationResult];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "resultType")}];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultPersonalizationType:v8];

    v9 = [v34 mapsPersonalizationResult];
    v10 = [v9 entityRelevanceScore];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultEntityRelevanceScore:v10];

    parsecRanker = self->_parsecRanker;
    if (parsecRanker)
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = [v34 mapsPersonalizationResult];
      v14 = [v12 numberWithBool:{-[PRSMapsParsecRanker isResultCandidateForPromotion:](parsecRanker, "isResultCandidateForPromotion:", v13)}];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultIsCandidateForPromotion:v14];
    }

    v15 = [v34 mapsPersonalizationResult];
    v16 = [v15 numberOfVisits];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultNumberOfVisits:v16];

    v17 = [v34 mapsPersonalizationResult];
    v18 = [v17 numberOfVisitsGivenLocation];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultNumberOfVisitsGivenLocation:v18];

    v19 = [v34 mapsPersonalizationResult];
    v20 = [v19 dateOfLastVisit];
    if (v20)
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = [v34 mapsPersonalizationResult];
      v23 = [v22 dateOfLastVisit];
      [v23 timeIntervalSinceNow];
      v25 = [v21 numberWithDouble:v24 / -3600.0];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeSinceLastVisit:v25];
    }

    else
    {
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeSinceLastVisit:0];
    }

    v27 = [v34 mapsPersonalizationResult];
    v28 = [v27 startEventDate];
    if (v28)
    {
      v29 = MEMORY[0x1E696AD98];
      v30 = [v34 mapsPersonalizationResult];
      v31 = [v30 startEventDate];
      [v31 timeIntervalSinceNow];
      v33 = [v29 numberWithDouble:v32 / 3600.0];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeUntilUpcomingEvent:v33];
    }

    else
    {
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeUntilUpcomingEvent:0];
    }
  }

  else
  {
    v26 = MEMORY[0x1E695E110];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultWasReranked:MEMORY[0x1E695E110]];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultIsCandidateForPromotion:v26];
  }
}

- (void)didRankSections:(id)a3
{
  v4 = a3;
  v5 = SPPersonalMetricManagerTransactionCreate(@"didRank");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SPPersonalMetricManager_didRankSections___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(queue, block);
}

id __43__SPPersonalMetricManager_didRankSections___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: didRankSections", buf, 2u);
  }

  [*(a1 + 32) _clearState];
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  [*(a1 + 32) _updateTrialInfo];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [*(a1 + 40) sections];
  v7 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_37;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v53;
  v12 = *MEMORY[0x1E69D3F68];
  v44 = *MEMORY[0x1E69D3F08];
  v39 = *MEMORY[0x1E69D3F68];
  v40 = *v53;
  do
  {
    v13 = 0;
    v41 = v8;
    do
    {
      v14 = v11;
      if (*v53 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v45 = v13;
      v15 = [*(*(&v52 + 1) + 8 * v13) section];
      v16 = [v15 bundleIdentifier];
      v17 = v12;
      v18 = [v16 isEqualToString:v12];

      v19 = v15;
      v20 = [v15 bundleIdentifier];
      v21 = [v20 isEqualToString:v44];

      v46 = v21;
      if ((v21 & 1) == 0 && !v18)
      {
        v11 = v14;
        v12 = v17;
        goto LABEL_33;
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v19;
      v47 = [v19 results];
      v22 = [v47 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = v22;
      v24 = *v49;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v47);
          }

          v26 = *(*(&v48 + 1) + 8 * i);
          v27 = [v26 identifier];
          if ([v27 length])
          {
            if (v18)
            {
              [*(*(a1 + 32) + 24) addObject:v27];
              v28 = *(*(a1 + 32) + 48);
              if ((v46 & 1) == 0)
              {
                [v28 setGeoResultWasTopHit:0];
                goto LABEL_30;
              }

              [v28 setGeoResultWasTopHit:1];
            }

            v29 = [v26 containsPersonalResult];
            if (!v10)
            {
              [*(a1 + 32) _populateMetricWithFirstResult:v26];
            }

            v9 += v29;
            v30 = *(*(a1 + 32) + 8);
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
            [v30 setObject:v31 forKey:v27];

            ++v10;
          }

          else
          {
            v32 = SPLogForSPLogCategoryDefault();
            v33 = v32;
            if (gSPLogDebugAsDefault)
            {
              v34 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v34 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v32, v34))
            {
              *buf = 0;
              _os_log_impl(&dword_1C81BF000, v33, v34, "SPPersonalMetricManager: Ignoring ranked result with empty identifier.", buf, 2u);
            }
          }

LABEL_30:
        }

        v23 = [v47 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v23);
LABEL_32:

      v12 = v39;
      v11 = v40;
      v8 = v41;
      v19 = v43;
LABEL_33:

      v13 = v45 + 1;
    }

    while (v45 + 1 != v8);
    v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  }

  while (v8);
LABEL_37:

  [*(*(a1 + 32) + 48) setNumberOfPersonalGeoResults:v9];
  if (![*(*(a1 + 32) + 8) count])
  {
    v35 = SPLogForSPLogCategoryDefault();
    v36 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v35, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81BF000, v35, ((v36 & 1) == 0), "SPPersonalMetricManager: didRankSections: No geo results were found!", buf, 2u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = objc_opt_self();
  }

  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resultsDidBecomeVisible:(id)a3
{
  v4 = SPPersonalMetricManagerTransactionCreate(@"didBecomeVisible");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SPPersonalMetricManager_resultsDidBecomeVisible___block_invoke;
  block[3] = &unk_1E82F8F28;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

id __51__SPPersonalMetricManager_resultsDidBecomeVisible___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: resultsDidBecomeVisible", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)didEngageResult:(id)a3
{
  v4 = a3;
  v5 = SPPersonalMetricManagerTransactionCreate(@"didEngageResult");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SPPersonalMetricManager_didEngageResult___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(queue, block);
}

void __43__SPPersonalMetricManager_didEngageResult___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: didEngageResult", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 48) && [*(v4 + 8) count])
  {
    v5 = [*(a1 + 48) result];
    v6 = [v5 sectionBundleIdentifier];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69D3F08]];

    v8 = [v5 identifier];
    if ([v8 length])
    {
      v9 = [*(*(a1 + 32) + 8) objectForKey:v8];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "containsObject:", v8)}];
      [*(*(a1 + 32) + 48) setEngagedResultWasTopHit:v10];

      if (v9)
      {
        v11 = v7;
      }

      else
      {
        v11 = 0;
      }

      if (v11 == 1)
      {
        [*(*(a1 + 32) + 48) setEngagedGeoResultPosition:v9];
        if ([v5 containsPersonalResult] && (objc_msgSend(v5, "mapsPersonalizationResult"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
        {
          v13 = [v5 mapsPersonalizationResult];
          v14 = [v13 entityRelevanceScore];
          [*(*(a1 + 32) + 48) setEngagedGeoResultEntityRelevanceScore:v14];

          v15 = [v5 mapsPersonalizationResult];
          v16 = [v15 numberOfVisits];
          [*(*(a1 + 32) + 48) setEngagedGeoResultNumberOfVisits:v16];

          v17 = [v5 mapsPersonalizationResult];
          v18 = [v17 numberOfVisitsGivenLocation];
          [*(*(a1 + 32) + 48) setEngagedGeoResultNumberOfVisitsGivenLocation:v18];

          v19 = MEMORY[0x1E696AD98];
          v20 = [v5 mapsPersonalizationResult];
          v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "resultType")}];
          [*(*(a1 + 32) + 48) setEngagedGeoResultPersonalizationType:v21];

          v22 = [v5 mapsPersonalizationResult];
          v23 = [v22 dateOfLastVisit];
          if (v23)
          {
            v24 = MEMORY[0x1E696AD98];
            v25 = [v5 mapsPersonalizationResult];
            v26 = [v25 dateOfLastVisit];
            [v26 timeIntervalSinceNow];
            v28 = [v24 numberWithDouble:v27 / -3600.0];
            [*(*(a1 + 32) + 48) setEngagedGeoResultTimeSinceLastVisit:v28];
          }

          else
          {
            [*(*(a1 + 32) + 48) setEngagedGeoResultTimeSinceLastVisit:0];
          }

          v36 = [v5 mapsPersonalizationResult];
          v37 = [v36 startEventDate];
          if (v37)
          {
            v38 = MEMORY[0x1E696AD98];
            v39 = [v5 mapsPersonalizationResult];
            v40 = [v39 startEventDate];
            [v40 timeIntervalSinceNow];
            v42 = [v38 numberWithDouble:v41 / 3600.0];
            [*(*(a1 + 32) + 48) setEngagedGeoResultTimeUntilUpcomingEvent:v42];
          }

          else
          {
            [*(*(a1 + 32) + 48) setEngagedGeoResultTimeUntilUpcomingEvent:0];
          }

          v43 = [v5 didRerankPersonalResult];
          v33 = *(*(a1 + 32) + 48);
          if (v43)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }
        }

        else
        {
          v33 = *(*(a1 + 32) + 48);
          v34 = 3;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = *(*(a1 + 32) + 48);
    v34 = 4;
LABEL_24:
    [v33 setInteraction:v34];
    [*(a1 + 32) _sendCAMetrics];
    [*(a1 + 32) _clearState];
    if (*(a1 + 40))
    {
      v35 = objc_opt_self();
    }

    return;
  }

  v29 = SPLogForSPLogCategoryDefault();
  v30 = v29;
  if (gSPLogDebugAsDefault)
  {
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v31 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v29, v31))
  {
    *v44 = 0;
    _os_log_impl(&dword_1C81BF000, v30, v31, "SPPersonalMetricManager: Missing ranked feedback. Exiting early.", v44, 2u);
  }

  if (*(a1 + 40))
  {
    v32 = objc_opt_self();
  }
}

- (void)searchViewDidDisappear:(id)a3
{
  v4 = SPPersonalMetricManagerTransactionCreate(@"didDisappear");
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SPPersonalMetricManager_searchViewDidDisappear___block_invoke;
  v7[3] = &unk_1E82F8E68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

id __50__SPPersonalMetricManager_searchViewDidDisappear___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: searchViewDidDisappear", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 48) && [*(v4 + 8) count])
  {
    [*(*(a1 + 32) + 48) setInteraction:5];
    [*(a1 + 32) _sendCAMetrics];
    [*(a1 + 32) _clearState];
  }

  else
  {
    v5 = SPLogForSPLogCategoryDefault();
    v6 = v5;
    if (gSPLogDebugAsDefault)
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v5, v7))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C81BF000, v6, v7, "SPPersonalMetricManager: Missing ranked feedback. Exiting early.", v9, 2u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)_sendCAMetrics
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v3, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v5 = [(SPGeoPersonalizationEngagementMetric *)self->_metric serializedMetric];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1C81BF000, v3, ((v4 & 1) == 0), "SPPersonalMetricManager: _sendCAMetrics: %@", &v9, 0xCu);
  }

  metric = self->_metric;
  if (metric)
  {
    v7 = [(SPGeoPersonalizationEngagementMetric *)metric serializedMetric];
    AnalyticsSendEvent();
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end