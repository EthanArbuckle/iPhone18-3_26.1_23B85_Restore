@interface RTLocation(RTExtensions)
+ (uint64_t)convertLocationReferenceFrame:()RTExtensions;
- (double)distanceFromLocation:()RTExtensions locationShifter:error:;
- (id)initWithCLCircularRegion:()RTExtensions;
- (id)initWithCLLocation:()RTExtensions;
- (id)initWithCLLocationCoordinate2D:()RTExtensions;
- (id)initWithRTPair:()RTExtensions;
- (id)locationAtDistance:()RTExtensions course:;
- (uint64_t)initWithRTPLocation:()RTExtensions;
- (void)_distanceBetweenShiftedLocation:()RTExtensions unshiftedLocation:locationShifter:handler:;
- (void)distanceFromLocation:()RTExtensions locationShifter:handler:;
@end

@implementation RTLocation(RTExtensions)

+ (uint64_t)convertLocationReferenceFrame:()RTExtensions
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (uint64_t)initWithRTPLocation:()RTExtensions
{
  v4 = a3;
  [v4 latitude];
  v6 = v5;
  [v4 longitude];
  v8 = v7;
  [v4 uncertainty];
  v10 = v9;
  v11 = MEMORY[0x277CBEAA8];
  [v4 timestamp];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [MEMORY[0x277D01160] convertLocationReferenceFrame:{objc_msgSend(v4, "referenceFrame")}];
  [v4 speed];
  v15 = v14;

  v16 = [a1 initWithLatitude:v12 longitude:v13 horizontalUncertainty:v6 altitude:v8 verticalUncertainty:v10 date:-1.0 referenceFrame:-1.0 speed:v15];
  return v16;
}

- (id)initWithCLLocation:()RTExtensions
{
  if (a3)
  {
    v4 = a3;
    if ([v4 type] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [v4 coordinate];
    v7 = v6;
    [v4 coordinate];
    v9 = v8;
    [v4 horizontalAccuracy];
    v11 = v10;
    [v4 altitude];
    v13 = v12;
    [v4 verticalAccuracy];
    v15 = v14;
    v16 = [v4 timestamp];
    v17 = [v4 referenceFrame];
    [v4 speed];
    v19 = v18;

    a1 = [a1 initWithLatitude:v16 longitude:v17 horizontalUncertainty:v5 altitude:v7 verticalUncertainty:v9 date:v11 referenceFrame:v13 speed:v15 sourceAccuracy:v19];
    v20 = a1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)initWithRTPair:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v7 = [v5 secondObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v5 firstObject];
      [v6 doubleValue];
      v10 = v9;
      v11 = [v5 secondObject];
      [v11 doubleValue];
      v13 = v12;
      v14 = [MEMORY[0x277CBEAA8] date];
      a1 = [a1 initWithLatitude:v14 longitude:v10 horizontalUncertainty:v13 date:0.0];

      v15 = a1;
LABEL_7:

      goto LABEL_8;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)initWithCLLocationCoordinate2D:()RTExtensions
{
  if (a3)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = [MEMORY[0x277CBEAA8] date];
    a1 = [a1 initWithLatitude:v6 longitude:v4 horizontalUncertainty:v5 date:0.0];

    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initWithCLCircularRegion:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 geoCenter];
    v7 = v6;
    [v5 geoCenter];
    v9 = v8;
    [v5 geoRadius];
    a1 = [a1 initWithLatitude:0 longitude:objc_msgSend(v5 horizontalUncertainty:"geoReferenceFrame") date:v7 referenceFrame:{v9, v10}];
    v11 = a1;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: region", v14, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (double)distanceFromLocation:()RTExtensions locationShifter:error:
{
  v51[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    if (a5)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v50 = *MEMORY[0x277CCA450];
      v51[0] = @"Location is required.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      *a5 = [v14 errorWithDomain:v15 code:7 userInfo:v16];
    }

    goto LABEL_18;
  }

  v11 = [a1 referenceFrame] == 2;
  if ((v11 ^ ([v9 referenceFrame] != 2)))
  {
    [a1 latitude];
    [a1 longitude];
    [v9 latitude];
    [v9 longitude];
    RTCommonCalculateDistanceHighPrecision();
    v13 = v12;
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = v35;
      v46 = 1024;
      v47 = [a1 referenceFrame];
      v48 = 1024;
      v49 = [v9 referenceFrame];
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, reference frames don't match, self.referenceFrame, %d, location.referenceFrame, %d", buf, 0x18u);
    }
  }

  if (!v10)
  {
    if (a5)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277D01448];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Reference frames do not match and we do not have a location shifter.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a5 = [v23 errorWithDomain:v24 code:6 userInfo:v25];
    }

    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412290;
      v45 = v37;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "%@, Unable to shift, no location shifter", buf, 0xCu);
    }

LABEL_18:
    v13 = INFINITY;
    goto LABEL_28;
  }

  v18 = a1;
  v19 = v9;
  if ([v18 referenceFrame] == 2)
  {
    v38 = 0;
    v20 = [v10 shiftedLocation:v19 allowNetwork:0 error:&v38];
    v21 = v19;
    v22 = v38;
    v19 = v20;
  }

  else
  {
    v39 = 0;
    v27 = [v10 shiftedLocation:v18 allowNetwork:0 error:&v39];
    v21 = v18;
    v22 = v39;
    v18 = v27;
  }

  v28 = v22;

  if (v28)
  {
    if (a5)
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277D01448];
      v40 = *MEMORY[0x277CCA450];
      v41 = @"Reference frames do not match and we encounted an error when trying to shift.";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a5 = [v29 errorWithDomain:v30 code:6 userInfo:v31];
    }

    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      *buf = 138412290;
      v45 = v36;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, Unable to shift, location shifter error", buf, 0xCu);
    }

    v13 = INFINITY;
  }

  else
  {
    [v18 latitude];
    [v18 longitude];
    [v19 latitude];
    [v19 longitude];
    RTCommonCalculateDistanceHighPrecision();
    v13 = v33;
  }

LABEL_28:
  return v13;
}

- (void)distanceFromLocation:()RTExtensions locationShifter:handler:
{
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      v12 = [a1 referenceFrame] == 2;
      if ((v12 ^ ([v9 referenceFrame] != 2)))
      {
        [a1 latitude];
        [a1 longitude];
        [v9 latitude];
        [v9 longitude];
        RTCommonCalculateDistanceHighPrecision();
        v11[2](v11, 0);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = NSStringFromSelector(a2);
            *buf = 138412802;
            v32 = v19;
            v33 = 1024;
            v34 = [a1 referenceFrame];
            v35 = 1024;
            v36 = [v9 referenceFrame];
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, reference frames don't match, self.referenceFrame, %d, location.referenceFrame, %d", buf, 0x18u);
          }
        }

        if (v10)
        {
          if ([a1 referenceFrame] == 2)
          {
            v20 = a1;
            v21 = a1;
            v22 = v9;
          }

          else
          {
            v20 = a1;
            v21 = v9;
            v22 = a1;
          }

          [v20 _distanceBetweenShiftedLocation:v21 unshiftedLocation:v22 locationShifter:v10 handler:v11];
        }

        else
        {
          v23 = MEMORY[0x277CCA9B8];
          v24 = *MEMORY[0x277D01448];
          v29 = *MEMORY[0x277CCA450];
          v30 = @"Reference frames do not match and we do not have a location shifter.";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v26 = [v23 errorWithDomain:v24 code:6 userInfo:v25];
          (v11[2])(v11, v26, INFINITY);

          v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = NSStringFromSelector(a2);
            *buf = 138412290;
            v32 = v28;
            _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, Unable to shift, no location shifter", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"Location is required.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v17 = [v14 errorWithDomain:v15 code:7 userInfo:v16];
      (v11[2])(v11, v17, INFINITY);
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[RTLocation(RTExtensions) distanceFromLocation:locationShifter:handler:]";
      v33 = 1024;
      v34 = 173;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_distanceBetweenShiftedLocation:()RTExtensions unshiftedLocation:locationShifter:handler:
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  [v13 latitude];
  v15 = v14;
  [v13 longitude];
  v17 = CLLocationCoordinate2DMake(v15, v16);
  [v13 horizontalUncertainty];
  v19 = v18;

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__RTLocation_RTExtensions___distanceBetweenShiftedLocation_unshiftedLocation_locationShifter_handler___block_invoke;
  v22[3] = &unk_2788CCB80;
  v24 = v11;
  v25 = a2;
  v23 = v10;
  v20 = v10;
  v21 = v11;
  [v12 shiftCoordinate:v22 accuracy:v17.latitude handler:{v17.longitude, v19}];
}

- (id)locationAtDistance:()RTExtensions course:
{
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  [a1 latitude];
  v9 = v8;
  [a1 longitude];
  v11 = CLLocationCoordinate2DMake(v9, v10);
  [a1 horizontalUncertainty];
  v13 = [v7 initWithCoordinate:v6 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 course:v12 speed:-1.0 timestamp:{a3, a2}];
  v14 = [v13 propagateLocationToTime:1.0];
  v15 = objc_alloc(MEMORY[0x277D01160]);
  [v14 coordinate];
  v17 = v16;
  [v14 coordinate];
  v19 = v18;
  [a1 horizontalUncertainty];
  v21 = v20;
  v22 = [a1 date];
  v23 = [v15 initWithLatitude:v22 longitude:objc_msgSend(a1 horizontalUncertainty:"referenceFrame") date:v17 referenceFrame:{v19, v21}];

  return v23;
}

@end