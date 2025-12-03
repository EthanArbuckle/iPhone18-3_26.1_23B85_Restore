@interface RTPlaceInferenceUpdateNotification
- (RTPlaceInferenceUpdateNotification)initWithPlaceInferences:(id)inferences;
@end

@implementation RTPlaceInferenceUpdateNotification

- (RTPlaceInferenceUpdateNotification)initWithPlaceInferences:(id)inferences
{
  inferencesCopy = inferences;
  if (inferencesCopy)
  {
    v11.receiver = self;
    v11.super_class = RTPlaceInferenceUpdateNotification;
    v5 = [(RTNotification *)&v11 init];
    if (v5)
    {
      v6 = [inferencesCopy copy];
      placeInferences = v5->_placeInferences;
      v5->_placeInferences = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInferences", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end