@interface RTVisitPipelineMotionAccumulatorParams
+ (double)loadParameterFromDefaults:(id)a3 parameterName:(id)a4 defaultValue:(double)a5;
- (RTVisitPipelineMotionAccumulatorParams)init;
- (RTVisitPipelineMotionAccumulatorParams)initWithDefaultsManager:(id)a3;
@end

@implementation RTVisitPipelineMotionAccumulatorParams

+ (double)loadParameterFromDefaults:(id)a3 parameterName:(id)a4 defaultValue:(double)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 objectForKey:v8];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v16 = 138413314;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v8;
        v22 = 2048;
        v23 = a5;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@: Parameter updated: %@, original value, %f, overridden value, %@", &v16, 0x34u);
      }
    }

    [v9 doubleValue];
    a5 = v14;
  }

  return a5;
}

- (RTVisitPipelineMotionAccumulatorParams)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = [(RTVisitPipelineMotionAccumulatorParams *)self init];
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:v4 parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerTimeToTrim" defaultValue:v5->_maxTimeToTrim];
  v5->_maxTimeToTrim = v6;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:v4 parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerLookOutsideVisit" defaultValue:v5->_motionLookWindowOutsideVisit];
  v5->_motionLookWindowOutsideVisit = v7;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:v4 parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerDurationAtHighConfidence" defaultValue:v5->_minMotionDurationAtHighConfidence];
  v5->_minMotionDurationAtHighConfidence = v8;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:v4 parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerDurationAtMediumConfidence" defaultValue:v5->_minMotionDurationAtMediumConfidence];
  v5->_minMotionDurationAtMediumConfidence = v9;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:v4 parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerMaxAllowedMotionGap" defaultValue:v5->_maxAllowedGapBetweenActiveMotionStates];
  v11 = v10;

  v5->_maxAllowedGapBetweenActiveMotionStates = v11;
  return v5;
}

- (RTVisitPipelineMotionAccumulatorParams)init
{
  v3.receiver = self;
  v3.super_class = RTVisitPipelineMotionAccumulatorParams;
  result = [(RTVisitPipelineMotionAccumulatorParams *)&v3 init];
  if (result)
  {
    *&result->_maxTimeToTrim = vdupq_n_s64(0x4066800000000000uLL);
    *&result->_minMotionDurationAtHighConfidence = xmmword_230B01190;
    result->_maxAllowedGapBetweenActiveMotionStates = 30.0;
  }

  return result;
}

@end