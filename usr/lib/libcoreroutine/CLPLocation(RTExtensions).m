@interface CLPLocation(RTExtensions)
- (void)initWithRTLocation:()RTExtensions rtMotionActivity:;
@end

@implementation CLPLocation(RTExtensions)

- (void)initWithRTLocation:()RTExtensions rtMotionActivity:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_opt_new();
    [v6 latitude];
    [v8 setLatitude:?];
    [v6 longitude];
    [v8 setLongitude:?];
    v9 = [v6 date];
    [v9 timeIntervalSinceReferenceDate];
    [v8 setTimestamp:?];

    [v6 horizontalUncertainty];
    *&v10 = v10;
    [v8 setHorizontalAccuracy:v10];
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CFFE80]) initWithRTMotionActivity:v7];
      [v8 setMotionActivity:v11];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CLPLocation(RTExtensions) initWithRTLocation:rtMotionActivity:]";
      v16 = 1024;
      v17 = 209;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: rtLocation (in %s:%d)", &v14, 0x12u);
    }

    v8 = 0;
  }

  return v8;
}

@end