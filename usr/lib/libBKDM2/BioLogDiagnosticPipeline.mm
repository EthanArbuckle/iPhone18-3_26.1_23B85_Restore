@interface BioLogDiagnosticPipeline
+ (void)initialize;
- (BOOL)scheduleSubmit;
- (BioLogDiagnosticPipeline)init;
- (void)init;
- (void)submit;
@end

@implementation BioLogDiagnosticPipeline

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "BioLogDiagnosticPipeline");
  v3 = __osLog_BioLogDiagnosticPipeline;
  __osLog_BioLogDiagnosticPipeline = v2;

  v4 = __osLog_BioLogDiagnosticPipeline;
  if (!__osLog_BioLogDiagnosticPipeline)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      +[BioLogDiagnosticPipeline initialize];
    }

    v4 = __osLog_BioLogDiagnosticPipeline;
  }

  objc_storeStrong(&__osLogTrace_BioLogDiagnosticPipeline, v4);
}

- (BioLogDiagnosticPipeline)init
{
  v38 = *MEMORY[0x29EDCA608];
  v35.receiver = self;
  v35.super_class = BioLogDiagnosticPipeline;
  v2 = [(BioLogDiagnosticPipeline *)&v35 init];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_create("com.apple.BioLog.DiagnosticPipeline", v4);
  v6 = v3[1];
  v3[1] = v5;

  v7 = v3[1];
  if (!v7)
  {
    [(BioLogDiagnosticPipeline *)v3 init];
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v8 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v7);
  v9 = v3[2];
  v3[2] = v8;

  v10 = v3[2];
  if (!v10)
  {
    [(BioLogDiagnosticPipeline *)v3 init];
    goto LABEL_23;
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = __32__BioLogDiagnosticPipeline_init__block_invoke;
  handler[3] = &unk_29EE54570;
  v11 = v3;
  v34 = v11;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v3[2]);

  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  userDefaults = v11->_userDefaults;
  v11->_userDefaults = mEMORY[0x29EDBFD50];

  v14 = v11->_userDefaults;
  if (!v14)
  {
    [(BioLogDiagnosticPipeline *)v11 init];
    goto LABEL_23;
  }

  v15 = [(BioUserDefaults *)v14 numberForKey:@"bioLogDiagnosticPipelineSubmitted"];
  v16 = v15;
  if (v15)
  {
    v17 = MEMORY[0x29EDB8DB0];
    [v15 doubleValue];
    v18 = [v17 dateWithTimeIntervalSince1970:?];
    submitFromDate = v11->_submitFromDate;
    v11->_submitFromDate = v18;

    if (__osLog_BioLogDiagnosticPipeline)
    {
      v20 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v20 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v11->_submitFromDate;
      *buf = 138412290;
      v37 = v21;
      _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEFAULT, "_submitFromDate: %@ (Last submit)\n", buf, 0xCu);
    }
  }

  else
  {
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v23 = [defaultManager attributesOfItemAtPath:@"/Library/Logs/BioLog" error:0];

    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x29EDB9E40]];
    v25 = v11->_submitFromDate;
    v11->_submitFromDate = v24;

    if (!v11->_submitFromDate)
    {
      v26 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
      v27 = v11->_submitFromDate;
      v11->_submitFromDate = v26;
    }

    if (__osLog_BioLogDiagnosticPipeline)
    {
      v28 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v28 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v11->_submitFromDate;
      *buf = 138412290;
      v37 = v29;
      _os_log_impl(&dword_296CA4000, v28, OS_LOG_TYPE_DEFAULT, "_submitFromDate: %@ (Never submitted)\n", buf, 0xCu);
    }
  }

  environment = v11->_environment;
  v11->_environment = @"development";

LABEL_24:
  v31 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t __32__BioLogDiagnosticPipeline_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 1;
  result = [*(a1 + 32) submit];
  *(*(a1 + 32) + 56) = 0;
  return result;
}

- (void)submit
{
  v79[11] = *MEMORY[0x29EDCA608];
  date = [MEMORY[0x29EDB8DB0] date];
  lastSubmitTry = self->_lastSubmitTry;
  self->_lastSubmitTry = date;

  v68 = date;
  location = &self->_submitFromDate;
  v70 = self->_submitFromDate;
  uUID = [MEMORY[0x29EDBA140] UUID];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = +[BLHelper deviceSerialNumberString];
  [(NSDate *)v68 timeIntervalSince1970];
  v8 = v7;
  uUIDString = [uUID UUIDString];
  v64 = [v5 stringWithFormat:@"BioLogMeta_%@_%lu_%@.zip", v6, v8, uUIDString];

  v10 = NSTemporaryDirectory();
  v65 = [v10 stringByAppendingPathComponent:v64];

  pipe = [MEMORY[0x29EDBA098] pipe];
  v11 = objc_alloc_init(MEMORY[0x29EDBA100]);
  v12 = objc_alloc_init(MEMORY[0x29EDBA100]);
  v13 = [MEMORY[0x29EDB8E70] fileURLWithPath:@"/Library/Logs/BioLog"];
  [v11 setCurrentDirectoryURL:v13];

  v14 = [MEMORY[0x29EDB8E70] fileURLWithPath:@"/Library/Logs/BioLog"];
  [v12 setCurrentDirectoryURL:v14];

  [v11 setLaunchPath:@"/usr/bin/find"];
  v79[0] = @".";
  v79[1] = CFSTR("(");
  v79[2] = @"-name";
  v79[3] = @"seq-*.json";
  v79[4] = @"-or";
  v79[5] = @"-name";
  v79[6] = @"sec-*.json";
  v79[7] = @"");
  v79[8] = @"-Btime";
  v15 = MEMORY[0x29EDBA0F8];
  [(NSDate *)v70 timeIntervalSinceNow];
  v17 = [v15 stringWithFormat:@"%lds", v16];
  v79[9] = v17;
  v79[10] = @"-print0";
  v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:v79 count:11];
  [v11 setArguments:v18];

  [v11 setStandardOutput:pipe];
  obj = [MEMORY[0x29EDB8DB0] date];
  if (__osLog_BioLogDiagnosticPipeline)
  {
    v19 = __osLog_BioLogDiagnosticPipeline;
  }

  else
  {
    v19 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v78 = v70;
    *&v78[8] = 2112;
    *&v78[10] = obj;
    _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEFAULT, "submit <- (submitFromDate: %@, submitToDate: %@)\n", buf, 0x16u);
  }

  v75[0] = @"bundle_type";
  v75[1] = @"bundle_version";
  v76[0] = @"com.apple.pearl.biolog_meta";
  v76[1] = &unk_2A1E038A0;
  v75[2] = @"bundle_id";
  uUIDString2 = [uUID UUIDString];
  v76[2] = uUIDString2;
  v76[3] = @"iOS";
  v75[3] = @"device_category";
  v75[4] = @"device_serial";
  v21 = +[BLHelper deviceSerialNumberString];
  v76[4] = v21;
  v75[5] = @"build_version";
  v22 = +[BLHelper buildVersionString];
  v76[5] = v22;
  v75[6] = @"start_time_seconds";
  v23 = MEMORY[0x29EDBA070];
  [(NSDate *)v70 timeIntervalSince1970];
  v24 = [v23 numberWithDouble:?];
  v76[6] = v24;
  v75[7] = @"end_time_seconds";
  v25 = MEMORY[0x29EDBA070];
  [obj timeIntervalSince1970];
  v26 = [v25 numberWithDouble:?];
  v76[7] = v26;
  v75[8] = @"creation_time_seconds";
  v27 = MEMORY[0x29EDBA070];
  [(NSDate *)v68 timeIntervalSince1970];
  v28 = [v27 numberWithDouble:?];
  v76[8] = v28;
  v75[9] = @"environment";
  v76[9] = self->_environment;
  v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v76 forKeys:v75 count:10];

  v73 = 0;
  v30 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v29 options:1 error:&v73];
  v31 = v73;
  if (v30)
  {
    v32 = [@"/Library/Logs/BioLog" stringByAppendingPathComponent:@"DRContext.json"];
    v33 = [v30 writeToFile:v32 atomically:0];

    if ((v33 & 1) == 0)
    {
      v34 = (__osLog_BioLogDiagnosticPipeline ? __osLog_BioLogDiagnosticPipeline : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v35 = "ERROR: writeToFile(DRContext.json) -> NO\n";
        v36 = v34;
        v37 = 2;
LABEL_18:
        _os_log_impl(&dword_296CA4000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      }
    }
  }

  else
  {
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v38 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v38 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v78 = v31;
      v35 = "ERROR: dataWithJSONObject(contextDictionary) -> nil (%@)\n";
      v36 = v38;
      v37 = 12;
      goto LABEL_18;
    }
  }

  [v12 setLaunchPath:@"/usr/bin/login"];
  v74[0] = @"-f";
  v74[1] = @"mobile";
  v74[2] = @"tar";
  v74[3] = @"--cd";
  v74[4] = @"/Library/Logs/BioLog";
  v74[5] = @"--create";
  v74[6] = @"--auto-compress";
  v74[7] = @"--file";
  v74[8] = v65;
  v74[9] = @"--null";
  v74[10] = @"--files-from";
  v74[11] = @"-";
  v74[12] = @"DRContext.json";
  v39 = [MEMORY[0x29EDB8D80] arrayWithObjects:v74 count:13];
  [v12 setArguments:v39];

  [v12 setStandardInput:pipe];
  v72 = 0;
  LOBYTE(v39) = [v12 launchAndReturnError:&v72];
  v40 = v72;

  if (v39)
  {
    v71 = 0;
    v41 = [v11 launchAndReturnError:&v71];
    v42 = v71;

    if (v41)
    {
      [v12 waitUntilExit];
    }

    else
    {
      if (__osLog_BioLogDiagnosticPipeline)
      {
        v44 = __osLog_BioLogDiagnosticPipeline;
      }

      else
      {
        v44 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v78 = v42;
        _os_log_impl(&dword_296CA4000, v44, OS_LOG_TYPE_ERROR, "ERROR: findTask -> %@\n", buf, 0xCu);
      }
    }

    v40 = v42;
  }

  else
  {
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v43 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v43 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v78 = v40;
      _os_log_impl(&dword_296CA4000, v43, OS_LOG_TYPE_ERROR, "ERROR: tarTask -> %@\n", buf, 0xCu);
    }
  }

  if ([v12 terminationStatus])
  {
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v45 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v45 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = v45;
      terminationStatus = [v12 terminationStatus];
      terminationReason = [v12 terminationReason];
      *buf = 67109376;
      *v78 = terminationStatus;
      *&v78[4] = 2048;
      *&v78[6] = terminationReason;
      _os_log_impl(&dword_296CA4000, v46, OS_LOG_TYPE_ERROR, "ERROR: tarTask(find) -> %d (terminationReason:%ld)\n", buf, 0x12u);
    }

LABEL_57:
    ++self->_submitPostponeHours;
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v60 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v60 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      submitPostponeHours = self->_submitPostponeHours;
      *buf = 134217984;
      *v78 = submitPostponeHours;
      _os_log_impl(&dword_296CA4000, v60, OS_LOG_TYPE_INFO, "submit -> FAILED: Will retry in %lu hours.\n", buf, 0xCu);
    }

    v52 = v40;
    goto LABEL_63;
  }

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  v50 = [defaultManager fileExistsAtPath:v65];

  if ((v50 & 1) == 0)
  {
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v58 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v58 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v78 = v65;
      _os_log_impl(&dword_296CA4000, v58, OS_LOG_TYPE_ERROR, "ERROR: tarTask(find) failed to create log bundle file: %@\n", buf, 0xCu);
    }

    goto LABEL_57;
  }

  v51 = DRSubmitLog();
  v52 = v40;

  if ((v51 & 1) == 0)
  {
    if (__osLog_BioLogDiagnosticPipeline)
    {
      v59 = __osLog_BioLogDiagnosticPipeline;
    }

    else
    {
      v59 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v78 = v52;
      _os_log_impl(&dword_296CA4000, v59, OS_LOG_TYPE_ERROR, "ERROR: DRSubmitLog -> %@\n", buf, 0xCu);
    }

    v40 = v52;
    goto LABEL_57;
  }

  self->_submitPostponeHours = 0;
  objc_storeStrong(location, obj);
  userDefaults = self->_userDefaults;
  v54 = MEMORY[0x29EDBA070];
  [obj timeIntervalSince1970];
  v55 = [v54 numberWithDouble:?];
  [(BioUserDefaults *)userDefaults setObject:v55 forKey:@"bioLogDiagnosticPipelineSubmitted"];

  if (__osLog_BioLogDiagnosticPipeline)
  {
    v56 = __osLog_BioLogDiagnosticPipeline;
  }

  else
  {
    v56 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = *location;
    *buf = 138412290;
    *v78 = v57;
    _os_log_impl(&dword_296CA4000, v56, OS_LOG_TYPE_INFO, "submit -> DONE (_submitFromDate: %@)\n", buf, 0xCu);
  }

LABEL_63:

  v62 = *MEMORY[0x29EDCA608];
}

- (BOOL)scheduleSubmit
{
  if (self->_submitPostponeHours)
  {
    [(NSDate *)self->_lastSubmitTry timeIntervalSinceNow];
    if (-v3 <= (3600 * self->_submitPostponeHours))
    {
      return 0;
    }
  }

  [(NSDate *)self->_submitFromDate timeIntervalSinceNow];
  if (-v4 <= (3600 * self->_submitPeriod))
  {
    return 0;
  }

  if (!self->_running)
  {
    timerSource = self->_timerSource;
    v6 = dispatch_time(0, 1000000000 * self->_scheduleDelay);
    dispatch_source_set_timer(timerSource, v6, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * self->_scheduleDelay / 0xA);
  }

  return 1;
}

- (void)init
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLogDiagnosticPipeline))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

@end