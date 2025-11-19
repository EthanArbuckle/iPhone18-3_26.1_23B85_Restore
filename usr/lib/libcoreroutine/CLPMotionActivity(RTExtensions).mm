@interface CLPMotionActivity(RTExtensions)
+ (uint64_t)convertRTMotionActivtyConfidence:()RTExtensions;
+ (uint64_t)convertRTMotionActivtyType:()RTExtensions;
- (void)initWithRTMotionActivity:()RTExtensions;
@end

@implementation CLPMotionActivity(RTExtensions)

+ (uint64_t)convertRTMotionActivtyType:()RTExtensions
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_230AFE0FC[a3 - 1];
  }
}

+ (uint64_t)convertRTMotionActivtyConfidence:()RTExtensions
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (void)initWithRTMotionActivity:()RTExtensions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setType:{objc_msgSend(objc_opt_class(), "convertRTMotionActivtyType:", objc_msgSend(v4, "type"))}];
    [v5 setConfidence:{objc_msgSend(objc_opt_class(), "convertRTMotionActivtyConfidence:", objc_msgSend(v4, "confidence"))}];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[CLPMotionActivity(RTExtensions) initWithRTMotionActivity:]";
      v10 = 1024;
      v11 = 191;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: rtMotionActivity (in %s:%d)", &v8, 0x12u);
    }

    v5 = 0;
  }

  return v5;
}

@end