@interface RTVisitPipelineMotionAccumulatorParams
+ (double)loadParameterFromDefaults:(id)defaults parameterName:(id)name defaultValue:(double)value;
- (RTVisitPipelineMotionAccumulatorParams)init;
- (RTVisitPipelineMotionAccumulatorParams)initWithDefaultsManager:(id)manager;
@end

@implementation RTVisitPipelineMotionAccumulatorParams

+ (double)loadParameterFromDefaults:(id)defaults parameterName:(id)name defaultValue:(double)value
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = [defaults objectForKey:nameCopy];
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
        v21 = nameCopy;
        v22 = 2048;
        valueCopy = value;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@: Parameter updated: %@, original value, %f, overridden value, %@", &v16, 0x34u);
      }
    }

    [v9 doubleValue];
    value = v14;
  }

  return value;
}

- (RTVisitPipelineMotionAccumulatorParams)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = [(RTVisitPipelineMotionAccumulatorParams *)self init];
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:managerCopy parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerTimeToTrim" defaultValue:v5->_maxTimeToTrim];
  v5->_maxTimeToTrim = v6;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:managerCopy parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerLookOutsideVisit" defaultValue:v5->_motionLookWindowOutsideVisit];
  v5->_motionLookWindowOutsideVisit = v7;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:managerCopy parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerDurationAtHighConfidence" defaultValue:v5->_minMotionDurationAtHighConfidence];
  v5->_minMotionDurationAtHighConfidence = v8;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:managerCopy parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerDurationAtMediumConfidence" defaultValue:v5->_minMotionDurationAtMediumConfidence];
  v5->_minMotionDurationAtMediumConfidence = v9;
  [RTVisitPipelineMotionAccumulatorParams loadParameterFromDefaults:managerCopy parameterName:@"RTDefaultsVisitPipelineMotionStateTrimmerMaxAllowedMotionGap" defaultValue:v5->_maxAllowedGapBetweenActiveMotionStates];
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