@interface PCPWorkout(RTFeatureExtractorExtension)
- (id)initWithWorkout:()RTFeatureExtractorExtension;
@end

@implementation PCPWorkout(RTFeatureExtractorExtension)

- (id)initWithWorkout:()RTFeatureExtractorExtension
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D3F8F8]);
    uUID = [v5 UUID];
    dataRepresentation = [uUID dataRepresentation];
    [v6 setHkObjectUUID:dataRepresentation];

    [v6 setWorkoutActivityType:{objc_msgSend(v5, "workoutActivityType")}];
    [v6 setSessionLocationType:{objc_msgSend(v5, "sessionLocation")}];
    [v6 setSwimmingLocationType:{objc_msgSend(v5, "swimmingLocation")}];
    startDate = [v5 startDate];
    [startDate timeIntervalSinceReferenceDate];
    [v6 setStartTimeCFAbsolute:?];

    endDate = [v5 endDate];
    [endDate timeIntervalSinceReferenceDate];
    [v6 setEndTimeCFAbsolute:?];

    sourceRevision = [v5 sourceRevision];
    source = [sourceRevision source];
    bundleIdentifier = [source bundleIdentifier];
    [v6 setSourceBundleIdentifier:bundleIdentifier];

    startingLocation = [v5 startingLocation];
    if (startingLocation)
    {
      v15 = objc_alloc(MEMORY[0x277D3F888]);
      startingLocation2 = [v5 startingLocation];
      v17 = [v15 initWithCLLocation:startingLocation2];
      [v6 setWorkoutStartLocation:v17];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = NSStringFromSelector(a2);
        uUID2 = [v5 UUID];
        uUIDString = [uUID2 UUIDString];
        workoutActivityType = [v5 workoutActivityType];
        sessionLocation = [v5 sessionLocation];
        swimmingLocation = [v5 swimmingLocation];
        sourceRevision2 = [v5 sourceRevision];
        source2 = [sourceRevision2 source];
        bundleIdentifier2 = [source2 bundleIdentifier];
        *buf = 138413570;
        v30 = v20;
        v31 = 2112;
        v32 = uUIDString;
        v33 = 2048;
        v34 = workoutActivityType;
        v35 = 1024;
        v36 = sessionLocation;
        v37 = 1024;
        v38 = swimmingLocation;
        v39 = 2112;
        v40 = bundleIdentifier2;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@ Loaded workout %@, type %lu, location type %d, swimming location type %d, bundle ID %@", buf, 0x36u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end