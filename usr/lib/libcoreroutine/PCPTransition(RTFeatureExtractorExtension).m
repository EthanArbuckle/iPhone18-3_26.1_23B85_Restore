@interface PCPTransition(RTFeatureExtractorExtension)
- (id)initWithTransition:()RTFeatureExtractorExtension;
@end

@implementation PCPTransition(RTFeatureExtractorExtension)

- (id)initWithTransition:()RTFeatureExtractorExtension
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3F8E8]);
    v6 = [v4 visitIdentifierOrigin];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = [v4 visitIdentifierOrigin];
      v9 = [v7 initWithUUID:v8];
      [v5 setVisitIdentifierOrigin:v9];
    }

    v10 = [v4 visitIdentifierDestination];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CBEA90]);
      v12 = [v4 visitIdentifierDestination];
      v13 = [v11 initWithUUID:v12];
      [v5 setVisitIdentifierDestination:v13];
    }

    v14 = [v4 startDate];

    if (v14)
    {
      v15 = [v4 startDate];
      [v15 timeIntervalSinceReferenceDate];
      [v5 setStartTimeCFAbsolute:?];
    }

    v16 = [v4 stopDate];

    if (v16)
    {
      v17 = [v4 stopDate];
      [v17 timeIntervalSinceReferenceDate];
      [v5 setStopTimeCFAbsolute:?];
    }

    if ([v4 predominantMotionActivityType])
    {
      v18 = objc_alloc_init(MEMORY[0x277D3F8C8]);
      [v18 setMotionActivityType:{objc_msgSend(v4, "predominantMotionActivityType")}];
      [v5 setPredominantMotionActivity:v18];
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transition", v21, 2u);
    }

    v5 = 0;
  }

  return v5;
}

@end