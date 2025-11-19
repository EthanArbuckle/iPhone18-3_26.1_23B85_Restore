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
    v7 = [v5 UUID];
    v8 = [v7 dataRepresentation];
    [v6 setHkObjectUUID:v8];

    [v6 setWorkoutActivityType:{objc_msgSend(v5, "workoutActivityType")}];
    [v6 setSessionLocationType:{objc_msgSend(v5, "sessionLocation")}];
    [v6 setSwimmingLocationType:{objc_msgSend(v5, "swimmingLocation")}];
    v9 = [v5 startDate];
    [v9 timeIntervalSinceReferenceDate];
    [v6 setStartTimeCFAbsolute:?];

    v10 = [v5 endDate];
    [v10 timeIntervalSinceReferenceDate];
    [v6 setEndTimeCFAbsolute:?];

    v11 = [v5 sourceRevision];
    v12 = [v11 source];
    v13 = [v12 bundleIdentifier];
    [v6 setSourceBundleIdentifier:v13];

    v14 = [v5 startingLocation];
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277D3F888]);
      v16 = [v5 startingLocation];
      v17 = [v15 initWithCLLocation:v16];
      [v6 setWorkoutStartLocation:v17];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = NSStringFromSelector(a2);
        v28 = [v5 UUID];
        v21 = [v28 UUIDString];
        v27 = [v5 workoutActivityType];
        v26 = [v5 sessionLocation];
        v25 = [v5 swimmingLocation];
        v22 = [v5 sourceRevision];
        v23 = [v22 source];
        v24 = [v23 bundleIdentifier];
        *buf = 138413570;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        v33 = 2048;
        v34 = v27;
        v35 = 1024;
        v36 = v26;
        v37 = 1024;
        v38 = v25;
        v39 = 2112;
        v40 = v24;
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