@interface RTStateTransitionMotionActivityHistogram
- (RTStateTransitionMotionActivityHistogram)initWithMotionActivities:(id)activities fromStartDate:(id)date toEndDate:(id)endDate;
- (unint64_t)getDominantMotionActivityType;
- (void)addActivity:(id)activity withInterval:(double)interval;
- (void)show;
@end

@implementation RTStateTransitionMotionActivityHistogram

- (RTStateTransitionMotionActivityHistogram)initWithMotionActivities:(id)activities fromStartDate:(id)date toEndDate:(id)endDate
{
  activitiesCopy = activities;
  dateCopy = date;
  endDateCopy = endDate;
  v27.receiver = self;
  v27.super_class = RTStateTransitionMotionActivityHistogram;
  v11 = [(RTStateTransitionMotionActivityHistogram *)&v27 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    histogramBins = v11->_histogramBins;
    v11->_histogramBins = v12;

    v11->_activityChangeCount = 0;
    v11->_cumulativeInterval = 0.0;
    [dateCopy timeIntervalSinceReferenceDate];
    v15 = v14;
    [endDateCopy timeIntervalSinceReferenceDate];
    v17 = v16;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__129;
    v25[4] = __Block_byref_object_dispose__129;
    v26 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__RTStateTransitionMotionActivityHistogram_initWithMotionActivities_fromStartDate_toEndDate___block_invoke;
    v19[3] = &unk_2788CF2D8;
    v22 = v25;
    v23 = v15;
    v20 = activitiesCopy;
    v24 = v17;
    v21 = v11;
    [v20 enumerateObjectsUsingBlock:v19];

    _Block_object_dispose(v25, 8);
  }

  return v11;
}

void __93__RTStateTransitionMotionActivityHistogram_initWithMotionActivities_fromStartDate_toEndDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  v26 = v5;
  if (v5 && v7)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4233600.0];
    v9 = [*(*(*(a1 + 48) + 8) + 40) startDate];
    v10 = [v9 laterDate:v8];
    v11 = [*(*(*(a1 + 48) + 8) + 40) startDate];
    if ([v10 isEqual:v11])
    {
      v12 = [v26 startDate];
      v13 = [v12 laterDate:v8];
      v14 = [v26 startDate];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        v16 = *(a1 + 56);
        v17 = [*(*(*(a1 + 48) + 8) + 40) startDate];
        [v17 timeIntervalSinceReferenceDate];
        v19 = v18;

        if (v16 <= v19)
        {
          v21 = [*(*(*(a1 + 48) + 8) + 40) startDate];
          [v21 timeIntervalSinceReferenceDate];
          v20 = v22;
        }

        else
        {
          v20 = *(a1 + 56);
        }

        if ([*(a1 + 32) count] - 1 == a3)
        {
          v23 = *(a1 + 64);
        }

        else
        {
          v24 = [v26 startDate];
          [v24 timeIntervalSinceReferenceDate];
          v23 = v25;
        }

        [*(a1 + 40) addActivity:*(*(*(a1 + 48) + 8) + 40) withInterval:v23 - v20];
      }
    }

    else
    {
    }

    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
  }

  *(v6 + 40) = v26;
}

- (void)addActivity:(id)activity withInterval:(double)interval
{
  activityCopy = activity;
  if (activityCopy)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__129;
    v27 = __Block_byref_object_dispose__129;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    histogramBins = [(RTStateTransitionMotionActivityHistogram *)self histogramBins];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__RTStateTransitionMotionActivityHistogram_addActivity_withInterval___block_invoke;
    v15[3] = &unk_2788CA750;
    v8 = activityCopy;
    v16 = v8;
    v17 = &v23;
    v18 = &v19;
    [histogramBins enumerateObjectsUsingBlock:v15];

    v9 = v24[5];
    if (!v9)
    {
      v10 = [[RTStateTransitionActivityHistogramElement alloc] initWithActivity:v8];
      v11 = v24[5];
      v24[5] = v10;

      v9 = v24[5];
    }

    [v9 interval];
    [v9 setInterval:v12 + interval];
    [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval];
    [(RTStateTransitionMotionActivityHistogram *)self setCumulativeInterval:v13 + interval];
    [(RTStateTransitionMotionActivityHistogram *)self setActivityChangeCount:[(RTStateTransitionMotionActivityHistogram *)self activityChangeCount]+ 1];
    if ((v20[3] & 1) == 0)
    {
      histogramBins2 = [(RTStateTransitionMotionActivityHistogram *)self histogramBins];
      [histogramBins2 addObject:v24[5]];
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }
}

void __69__RTStateTransitionMotionActivityHistogram_addActivity_withInterval___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 activity];
  v8 = [v7 isEqual:a1[4]];

  if (v8)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)show
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    histogramBins = [(RTStateTransitionMotionActivityHistogram *)self histogramBins];
    v4 = [histogramBins count];

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          activityChangeCount = [(RTStateTransitionMotionActivityHistogram *)self activityChangeCount];
          [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval];
          v9 = 134218240;
          v10 = activityChangeCount;
          v11 = 2048;
          v12 = v8;
          _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "change count, %ld, cumulative interval, %f", &v9, 0x16u);
        }
      }

      histogramBins2 = [(RTStateTransitionMotionActivityHistogram *)self histogramBins];
      [histogramBins2 enumerateObjectsUsingBlock:&__block_literal_global_62];
    }
  }
}

void __48__RTStateTransitionMotionActivityHistogram_show__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v2 activity];
      [v2 interval];
      v6 = 138412546;
      v7 = v4;
      v8 = 2048;
      v9 = v5;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%@, interval, %f", &v6, 0x16u);
    }
  }
}

- (unint64_t)getDominantMotionActivityType
{
  [(RTStateTransitionMotionActivityHistogram *)self show];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  histogramBins = [(RTStateTransitionMotionActivityHistogram *)self histogramBins];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__RTStateTransitionMotionActivityHistogram_getDominantMotionActivityType__block_invoke;
  v17[3] = &unk_2788CF300;
  v17[4] = &v26;
  v17[5] = &v18;
  v17[6] = &v22;
  [histogramBins enumerateObjectsUsingBlock:v17];

  [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval];
  v4 = 0.0;
  v5 = 0.0;
  if (v6 <= 0.0 || (v7 = v27[3], [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval], v9 = v8, v10 = v19[3], [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval], v12 = v11, v13 = v23[3], [(RTStateTransitionMotionActivityHistogram *)self cumulativeInterval], v5 = v10 / v12, v4 = v13 / v14, v7 / v9 <= 0.2) || v5 >= 0.4 || v4 >= 0.4)
  {
    if (v5 > 0.4 || v4 > 0.4)
    {
      if (v5 <= v4)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 4;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v15;
}

void __73__RTStateTransitionMotionActivityHistogram_getDominantMotionActivityType__block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 activity];
  v4 = [v3 automotive];

  if (v4)
  {
    [v12 interval];
    *(*(a1[4] + 8) + 24) = v5 + *(*(a1[4] + 8) + 24);
  }

  v6 = [v12 activity];
  v7 = [v6 walking];

  if (v7)
  {
    [v12 interval];
    *(*(a1[5] + 8) + 24) = v8 + *(*(a1[5] + 8) + 24);
  }

  v9 = [v12 activity];
  v10 = [v9 running];

  if (v10)
  {
    [v12 interval];
    *(*(a1[6] + 8) + 24) = v11 + *(*(a1[6] + 8) + 24);
  }
}

@end