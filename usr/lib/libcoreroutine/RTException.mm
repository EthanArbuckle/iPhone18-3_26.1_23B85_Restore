@interface RTException
+ (void)coreDataExceptionLogging:(id)a3;
+ (void)dontOpenDeadInside;
+ (void)unknownExceptionHandlingPolicyDeadInside;
@end

@implementation RTException

+ (void)dontOpenDeadInside
{
  v3 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "A tombstoned object was modified when it shouldn't have been.\n%@", &v4, 0xCu);
  }

  __break(1u);
}

+ (void)unknownExceptionHandlingPolicyDeadInside
{
  v3 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "RTStore RTStoreExceptionHandlingPolicy did not have a policy handling.\n%@", &v4, 0xCu);
  }

  __break(1u);
}

+ (void)coreDataExceptionLogging:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_fault_impl(&dword_2304B3000, v4, OS_LOG_TYPE_FAULT, "Received exception in persistence stack, %@", buf, 0xCu);
  }

  v12 = v3;

  v5 = [MEMORY[0x277CCACC8] callStackSymbols];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end