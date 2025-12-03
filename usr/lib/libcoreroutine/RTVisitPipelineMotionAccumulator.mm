@interface RTVisitPipelineMotionAccumulator
- (RTVisitPipelineMotionAccumulator)initWithParams:(id)params processInReverse:(BOOL)reverse;
- (id)getTrimDate;
- (void)finishMotionObservations:(id)observations;
- (void)processMotionActivity:(id)activity;
@end

@implementation RTVisitPipelineMotionAccumulator

- (RTVisitPipelineMotionAccumulator)initWithParams:(id)params processInReverse:(BOOL)reverse
{
  v17 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (!paramsCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTVisitPipelineMotionAccumulator initWithParams:processInReverse:]";
      v15 = 1024;
      v16 = 25;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: motionAccumulatorParams (in %s:%d)", buf, 0x12u);
    }
  }

  v12.receiver = self;
  v12.super_class = RTVisitPipelineMotionAccumulator;
  v9 = [(RTVisitPipelineMotionAccumulator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_params, params);
    v10->_processActivitiesReverse = reverse;
    v10->_foundIntervalToTrim = 0;
    v10->_runningScoreHighConfidence = 0.0;
    v10->_runningScoreMediumConfidence = 0.0;
  }

  return v10;
}

- (void)processMotionActivity:(id)activity
{
  v34 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v6 = activityCopy;
  if (!self->_foundIntervalToTrim)
  {
    p_lastObservedMotionActivity = &self->_lastObservedMotionActivity;
    if (self->_lastObservedMotionActivity)
    {
      startDate = [activityCopy startDate];
      startDate2 = [(RTMotionActivity *)self->_lastObservedMotionActivity startDate];
      [startDate timeIntervalSinceDate:startDate2];
      v11 = v10;

      if (self->_processActivitiesReverse)
      {
        v11 = -v11;
      }

      if (v11 < 0.0)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          processActivitiesReverse = self->_processActivitiesReverse;
          startDate3 = [(RTMotionActivity *)self->_lastObservedMotionActivity startDate];
          startDate4 = [v6 startDate];
          v26 = 67110146;
          *v27 = processActivitiesReverse;
          *&v27[4] = 2112;
          *&v27[6] = startDate3;
          v28 = 2112;
          v29 = startDate4;
          v30 = 2080;
          v31 = "[RTVisitPipelineMotionAccumulator processMotionActivity:]";
          v32 = 1024;
          v33 = 63;
          _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Observed motion activity is out of expected order. Running in reverse: %u. Previous time %@, current time %@ (in %s:%d)", &v26, 0x2Cu);
        }
      }

      if ([RTVisitPipelineMotionAccumulator isActivityTypeMotionTrimmable:[(RTMotionActivity *)*p_lastObservedMotionActivity type]])
      {
        if ([(RTMotionActivity *)*p_lastObservedMotionActivity confidence]>= 2)
        {
          if (!self->_intervalStartDate)
          {
            startDate5 = [(RTMotionActivity *)self->_lastObservedMotionActivity startDate];
            intervalStartDate = self->_intervalStartDate;
            self->_intervalStartDate = startDate5;
          }

          if ([(RTMotionActivity *)*p_lastObservedMotionActivity confidence]== 2)
          {
            self->_runningScoreMediumConfidence = v11 + self->_runningScoreMediumConfidence;
          }

          else if ([(RTMotionActivity *)*p_lastObservedMotionActivity confidence]== 3)
          {
            self->_runningScoreHighConfidence = v11 + self->_runningScoreHighConfidence;
          }
        }
      }

      else
      {
        [(RTVisitPipelineMotionAccumulatorParams *)self->_params maxAllowedGapBetweenActiveMotionStates];
        if (v11 > v15)
        {
          self->_runningScoreHighConfidence = 0.0;
          self->_runningScoreMediumConfidence = 0.0;
          v16 = self->_intervalStartDate;
          self->_intervalStartDate = 0;
        }
      }

      runningScoreMediumConfidence = self->_runningScoreMediumConfidence;
      [(RTVisitPipelineMotionAccumulatorParams *)self->_params minMotionDurationAtMediumConfidence];
      runningScoreHighConfidence = self->_runningScoreHighConfidence;
      v20 = runningScoreMediumConfidence / v19;
      [(RTVisitPipelineMotionAccumulatorParams *)self->_params minMotionDurationAtHighConfidence];
      if (v20 + runningScoreHighConfidence / v21 >= 1.0)
      {
        self->_foundIntervalToTrim = 1;
        if (!self->_intervalStartDate)
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v26 = 136315394;
            *v27 = "[RTVisitPipelineMotionAccumulator processMotionActivity:]";
            *&v27[8] = 1024;
            *&v27[10] = 93;
            _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Interval start not set (in %s:%d)", &v26, 0x12u);
          }
        }
      }
    }

    else
    {
      objc_storeStrong(&self->_lastObservedMotionActivity, activity);
      if (!+[RTVisitPipelineMotionAccumulator isActivityTypeMotionTrimmable:](RTVisitPipelineMotionAccumulator, "isActivityTypeMotionTrimmable:", [v6 type]))
      {
        goto LABEL_25;
      }
    }

    objc_storeStrong(p_lastObservedMotionActivity, activity);
  }

LABEL_25:
}

- (void)finishMotionObservations:(id)observations
{
  v4 = MEMORY[0x277D011B8];
  observationsCopy = observations;
  v6 = [[v4 alloc] initWithType:0 confidence:2 startDate:observationsCopy];

  [(RTVisitPipelineMotionAccumulator *)self processMotionActivity:v6];
}

- (id)getTrimDate
{
  if (self->_foundIntervalToTrim)
  {
    return self->_intervalStartDate;
  }

  else
  {
    return 0;
  }
}

@end