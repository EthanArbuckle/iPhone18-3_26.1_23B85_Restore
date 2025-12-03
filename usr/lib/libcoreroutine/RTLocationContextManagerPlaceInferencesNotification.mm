@interface RTLocationContextManagerPlaceInferencesNotification
- (RTLocationContextManagerPlaceInferencesNotification)initWithPlaceInferences:(id)inferences;
@end

@implementation RTLocationContextManagerPlaceInferencesNotification

- (RTLocationContextManagerPlaceInferencesNotification)initWithPlaceInferences:(id)inferences
{
  v15 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  if (!inferencesCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTLocationContextManagerPlaceInferencesNotification initWithPlaceInferences:]";
      v13 = 1024;
      v14 = 79;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInferences (in %s:%d)", buf, 0x12u);
    }
  }

  v10.receiver = self;
  v10.super_class = RTLocationContextManagerPlaceInferencesNotification;
  v6 = [(RTNotification *)&v10 init];
  if (v6)
  {
    v7 = [inferencesCopy copy];
    placeInferences = v6->_placeInferences;
    v6->_placeInferences = v7;
  }

  return v6;
}

@end