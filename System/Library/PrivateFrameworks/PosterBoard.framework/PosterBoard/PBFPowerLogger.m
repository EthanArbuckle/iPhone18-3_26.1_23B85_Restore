@interface PBFPowerLogger
+ (void)logUpdate:(int64_t)a3 reason:(int64_t)a4 inServiceOfBundleIdentifier:(id)a5;
@end

@implementation PBFPowerLogger

+ (void)logUpdate:(int64_t)a3 reason:(int64_t)a4 inServiceOfBundleIdentifier:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (v9)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPowerLogger logUpdate:a2 reason:a1 inServiceOfBundleIdentifier:?];
    }
  }

  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 setObject:v11 forKeyedSubscript:@"updateType"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v10 setObject:v12 forKeyedSubscript:@"Reason"];

  if (![v9 length])
  {
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];

    v9 = v14;
  }

  [v10 setObject:v9 forKeyedSubscript:@"BundleID"];
  v15 = PBFLogPower();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 3)
    {
      v16 = @"PBFPowerLogUpdateTypeStaticDescriptors";
    }

    else
    {
      v16 = off_2782C79E8[a3 - 1];
    }

    v17 = NSStringFromPBFPowerLogReason(a4);
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v25 = v9;
    _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "logUpdate:%{public}@ reason:%{public}@ inServiceOfBundleIdentifier:%@", buf, 0x20u);
  }

  v18 = [a1 powerLogClientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v19 = getPLLogRegisteredEventSymbolLoc_ptr;
  v23 = getPLLogRegisteredEventSymbolLoc_ptr;
  if (!getPLLogRegisteredEventSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPLLogRegisteredEventSymbolLoc_block_invoke;
    v25 = &unk_2782C5CB0;
    v26 = &v20;
    __getPLLogRegisteredEventSymbolLoc_block_invoke(buf);
    v19 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v19)
  {
    +[PBFPowerLogger logUpdate:reason:inServiceOfBundleIdentifier:];
  }

  v19(v18, @"PosterUpdates", v10, 0);
}

+ (void)logUpdate:(const char *)a1 reason:(uint64_t)a2 inServiceOfBundleIdentifier:.cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"PBFPowerLogger.m";
    v17 = 1024;
    v18 = 73;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)logUpdate:reason:inServiceOfBundleIdentifier:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void Soft_PLLogRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
  [v0 handleFailureInFunction:v1 file:@"PBFPowerLogger.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

@end