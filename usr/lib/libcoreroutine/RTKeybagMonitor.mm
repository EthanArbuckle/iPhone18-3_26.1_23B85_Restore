@interface RTKeybagMonitor
- (BOOL)getUnlockedSinceBoot;
- (BOOL)lockDevice;
@end

@implementation RTKeybagMonitor

- (BOOL)getUnlockedSinceBoot
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2 < 0)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Failed to determine unlocked since boot, %d", v5, 8u);
    }
  }

  return v2 > 0;
}

- (BOOL)lockDevice
{
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x23191AD60](v2, 1);
  return 1;
}

@end