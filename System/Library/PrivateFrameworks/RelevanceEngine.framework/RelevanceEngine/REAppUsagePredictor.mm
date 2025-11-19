@interface REAppUsagePredictor
+ (id)supportedFeatures;
- (id)_nextTimelineTransitionDateAfter:(id)a3;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
- (void)_scheduleTimelineProgressionTimerAfter:(id)a3;
- (void)update;
@end

@implementation REAppUsagePredictor

+ (id)supportedFeatures
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature appUsageFeature];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(REFeatureSet *)v2 initWithFeatures:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)update
{
  [(REPredictor *)self beginFetchingData];
  v3 = +[(RESingleton *)REDuetKnowledgeStore];
  v4 = [v3 queryForTopNApplications:20 withLikelihoodGreaterThan:300 withTemporalResolution:0.0];

  objc_initWeak(&location, self);
  v5 = +[(RESingleton *)REDuetKnowledgeStore];
  v6 = [(REPredictor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__REAppUsagePredictor_update__block_invoke;
  v7[3] = &unk_2785FA308;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v5 executeQuery:v4 responseQueue:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __29__REAppUsagePredictor_update__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = v7;
    [WeakRetained finishFetchingData];
    if (v5)
    {
      v6 = [WeakRetained[9] isEqual:v5];
      objc_storeStrong(WeakRetained + 9, a2);
      if ((v6 & 1) == 0)
      {
        [WeakRetained updateObservers];
      }
    }

    [*(a1 + 32) _scheduleTimelineProgressionTimerAfter:0];
  }
}

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v8 = a6;
  v9 = [a4 applicationBundleIdentifier];
  if (v9)
  {
    v10 = [v8 attributeForKey:@"RETrainingContextDateKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v10)
      {
LABEL_8:
        v12 = [(RETimeline *)self->_timeline valueForDate:v10];
        v13 = [v12 objectForKeyedSubscript:v9];

        if (v13)
        {
          [v13 doubleValue];
        }

        else
        {
          v14 = 0.0;
        }

        v11 = [REFeatureValue featureValueWithDouble:v14];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)_nextTimelineTransitionDateAfter:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = [(RETimeline *)self->_timeline transitionDates];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__REAppUsagePredictor__nextTimelineTransitionDateAfter___block_invoke;
  v9[3] = &unk_2785FA330;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__REAppUsagePredictor__nextTimelineTransitionDateAfter___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 compare:*(a1 + 32)] == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_scheduleTimelineProgressionTimerAfter:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
  }

  [(REUpNextTimer *)self->_timelineProgressionTimer invalidate];
  timelineProgressionTimer = self->_timelineProgressionTimer;
  self->_timelineProgressionTimer = 0;

  v6 = [(REAppUsagePredictor *)self _nextTimelineTransitionDateAfter:v4];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] distantFuture];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v9 = [(REPredictor *)self queue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__REAppUsagePredictor__scheduleTimelineProgressionTimerAfter___block_invoke;
      v12[3] = &unk_2785FA358;
      objc_copyWeak(&v14, &location);
      v13 = v6;
      v10 = [REUpNextTimer timerWithFireDate:v13 queue:v9 block:v12];

      v11 = self->_timelineProgressionTimer;
      self->_timelineProgressionTimer = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __62__REAppUsagePredictor__scheduleTimelineProgressionTimerAfter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateObservers];
    [v3 _scheduleTimelineProgressionTimerAfter:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end