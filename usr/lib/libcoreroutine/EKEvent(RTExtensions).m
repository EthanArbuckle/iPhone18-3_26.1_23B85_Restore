@interface EKEvent(RTExtensions)
- (BOOL)hasUserSpecifiedLocation;
- (uint64_t)hasSuggestedLocation;
@end

@implementation EKEvent(RTExtensions)

- (uint64_t)hasSuggestedLocation
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[EKEvent(RTExtensions) hasSuggestedLocation]";
    v9 = 1024;
    v10 = 32;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "hasSuggestedLocation has an issue. Use EventModelProvider._hasSuggestedLocationForEvent (in %s:%d)", &v7, 0x12u);
  }

  v3 = [a1 structuredLocation];
  if (v3)
  {
    v4 = [a1 structuredLocation];
    v5 = [v4 isPrediction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasUserSpecifiedLocation
{
  v2 = [a1 preferredLocationWithoutPrediction];
  if (v2)
  {
    v3 = [a1 preferredLocationWithoutPrediction];
    v4 = [v3 geoLocation];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end