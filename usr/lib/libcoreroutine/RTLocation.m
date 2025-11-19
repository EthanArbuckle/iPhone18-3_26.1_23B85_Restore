@interface RTLocation
@end

@implementation RTLocation

void __102__RTLocation_RTExtensions___distanceBetweenShiftedLocation_unshiftedLocation_locationShifter_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v15 = v11;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, Unable to shift, location shifter error", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D01448];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Reference frames do not match and we encounted an error when trying to shift.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [v5 errorWithDomain:v6 code:6 userInfo:v7];
    (*(v4 + 16))(v4, v8, INFINITY);
  }

  else
  {
    v9 = *(a1 + 40);
    [*(a1 + 32) latitude];
    [*(a1 + 32) longitude];
    RTCommonCalculateDistanceHighPrecision();
    v10 = *(v9 + 16);

    v10(v9, 0);
  }
}

@end