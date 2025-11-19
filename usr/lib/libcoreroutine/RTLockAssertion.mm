@interface RTLockAssertion
- (RTLockAssertion)init;
- (void)dealloc;
@end

@implementation RTLockAssertion

- (RTLockAssertion)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = RTLockAssertion;
  v2 = [(RTLockAssertion *)&v7 init];
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "acquiring lock assertion", buf, 2u);
      }
    }

    v9 = @"MKBAssertionKey";
    v10[0] = @"SBTransient";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v2->_lockAssertion = MKBDeviceLockAssertion();
  }

  v5 = v2;

  return v5;
}

- (void)dealloc
{
  lockAssertion = self->_lockAssertion;
  if (lockAssertion)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "releasing lock assertion", buf, 2u);
      }

      lockAssertion = self->_lockAssertion;
    }

    CFRelease(lockAssertion);
    self->_lockAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = RTLockAssertion;
  [(RTLockAssertion *)&v5 dealloc];
}

@end