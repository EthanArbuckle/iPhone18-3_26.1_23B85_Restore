@interface CMActivityAlarm(RTMotionActivityManager)
+ (__CFString)triggerToString:()RTMotionActivityManager;
- (id)description;
@end

@implementation CMActivityAlarm(RTMotionActivityManager)

+ (__CFString)triggerToString:()RTMotionActivityManager
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 < 0x1D && ((0x10003FDFu >> a3) & 1) != 0)
  {
    v4 = off_2788D2EB0[a3];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a3;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unrecognized trigger for description %d", v8, 8u);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    v4 = [v6 stringValue];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  [a1 duration];
  v4 = v3;
  v5 = [MEMORY[0x277CC1C10] triggerToString:{objc_msgSend(a1, "trigger")}];
  v6 = [v2 stringWithFormat:@"CMActivityAlarm, duration, %f, trigger, %@", v4, v5];

  return v6;
}

@end