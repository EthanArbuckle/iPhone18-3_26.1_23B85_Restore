@interface WFLogger
+ (id)sharedWFLoggerSingleton;
- (NSNumber)getLogLifespanInDays;
- (WFLogger)init;
- (unint64_t)getLogLevelEnable;
- (unint64_t)getLogLevelPersist;
- (unint64_t)getLogPrivacy;
- (unint64_t)getMaxFileSizeInMB;
- (void)WFLog:(unint64_t)a3 message:(const char *)a4;
- (void)dump;
- (void)setDestinationCircularBuffer;
- (void)setDestinationFile:(__CFString *)a3 runLoopRef:(__CFRunLoop *)a4 runLoopMode:(__CFString *)a5 classC:(unsigned __int8)a6 dateFormatter:(__CFDateFormatter *)a7 maxFileSizeInMB:(unint64_t)a8 logLifespanInDays:(unint64_t)a9;
- (void)setDestinationFileLocation:(__CFString *)a3 fileNamePrefix:(__CFString *)a4 runLoopRef:(__CFRunLoop *)a5 runLoopMode:(__CFString *)a6 classC:(unsigned __int8)a7 dateFormatter:(__CFDateFormatter *)a8 maxFileSizeInMB:(unint64_t)a9 logLifespanInDays:(unint64_t)a10;
- (void)setDestinationOsLog:(__CFString *)a3 category:(__CFString *)a4 logLifespanInDays:(unint64_t)a5 logLevel:(unint64_t)a6 logPrivacy:(unint64_t)a7;
@end

@implementation WFLogger

+ (id)sharedWFLoggerSingleton
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = _sharedWFLoggerSingleton;
  if (!_sharedWFLoggerSingleton)
  {
    v4 = objc_alloc_init(a1);
    _sharedWFLoggerSingleton = v4;
  }

  objc_sync_exit(v3);
  return v4;
}

- (WFLogger)init
{
  v2 = _sharedWFLoggerSingleton;
  if (!_sharedWFLoggerSingleton)
  {
    v6.receiver = self;
    v6.super_class = WFLogger;
    v3 = [(WFLogger *)&v6 init];
    if (v3)
    {
      v4 = v3;
      v3->_destination = 1;
      v3->_dispatchQueue = dispatch_queue_create("com.apple.wflogger", 0);
      [(WFLogger *)v4 setDestinationOsLog:@"com.apple.WiFiPolicy" category:&stru_28487EF20 logLifespanInDays:7 logLevel:3 logPrivacy:2];
      _sharedWFLoggerSingleton = v4;
      v4->_wflRunningOnWatchClassDevice = MGGetSInt32Answer() == 6;
      v4->_wflEnableDualLoggingOnWatchClassDevice = 1;
    }

    return _sharedWFLoggerSingleton;
  }

  return v2;
}

- (void)setDestinationCircularBuffer
{
  if (self->_destination != 4)
  {
    loggerBase = self->_loggerBase;
    if (loggerBase)
    {

      self->_loggerBase = 0;
    }

    v4 = objc_alloc_init(WFLoggerCircularBuffer);
    if (v4)
    {
      self->_loggerBase = &v4->super;
      self->_destination = 4;
    }
  }
}

- (void)setDestinationFile:(__CFString *)a3 runLoopRef:(__CFRunLoop *)a4 runLoopMode:(__CFString *)a5 classC:(unsigned __int8)a6 dateFormatter:(__CFDateFormatter *)a7 maxFileSizeInMB:(unint64_t)a8 logLifespanInDays:(unint64_t)a9
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a3 isEmpty])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s filePath is empty", "-[WFLogger setDestinationFile:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v27 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v16, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else if (self->_destination != 3 || (loggerBase = self->_loggerBase) == 0 || (v18 = [(WFLoggerBase *)loggerBase getLogFilePath]) == 0 || CFStringCompare(a3, v18, 4uLL))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Logging destination will change to file: %s", "-[WFLogger setDestinationFile:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]", -[__CFString UTF8String](a3, "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v19, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    if (self->_wflRunningOnWatchClassDevice)
    {
      if (!self->_wflEnableDualLoggingOnWatchClassDevice)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Dual logging suppressed on watch class device. WiFi logs will not be present in the system log while file logging is configured", "-[WFLogger setDestinationFile:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v21 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v20, "UTF8String")), "UTF8String"];
          *buf = 136446210;
          v27 = v21;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__WFLogger_setDestinationFile_runLoopRef_runLoopMode_classC_dateFormatter_maxFileSizeInMB_logLifespanInDays___block_invoke;
    block[3] = &unk_2789C74B0;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    v25 = a6;
    block[8] = a7;
    block[9] = a8;
    block[10] = a9;
    dispatch_sync(dispatchQueue, block);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __109__WFLogger_setDestinationFile_runLoopRef_runLoopMode_classC_dateFormatter_maxFileSizeInMB_logLifespanInDays___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 stopWatchingLogFile];
  }

  v3 = [WFLoggerFile alloc];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = [WFLoggerFile initWithFilePath:v3 filePath:"initWithFilePath:filePath:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:dispatchQueue:" runLoopRef:*(a1 + 72) runLoopMode:v9 classC:*(*(a1 + 32) + 32) dateFormatter:? maxFileSizeInMB:? logLifespanInDays:? dispatchQueue:?];
  if (v10)
  {
    v11 = v10;
    v12 = *(*(a1 + 32) + 8);
    if (v12)
    {

      *(*(a1 + 32) + 8) = 0;
    }

    [v11 schedule:1];
    *(*(a1 + 32) + 8) = v11;
    v13 = *(a1 + 40);
    *(*(a1 + 32) + 16) = 3;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Logging destination changed to file: %s", "-[WFLogger setDestinationFile:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]_block_invoke", objc_msgSend(v13, "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v14, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDestinationFileLocation:(__CFString *)a3 fileNamePrefix:(__CFString *)a4 runLoopRef:(__CFRunLoop *)a5 runLoopMode:(__CFString *)a6 classC:(unsigned __int8)a7 dateFormatter:(__CFDateFormatter *)a8 maxFileSizeInMB:(unint64_t)a9 logLifespanInDays:(unint64_t)a10
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a3 isEmpty])
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s dirPath is empty", "-[WFLogger setDestinationFileLocation:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }
  }

  else if ([(__CFString *)a4 isEmpty])
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s fileNamePrefix is empty", "-[WFLogger setDestinationFileLocation:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      *buf = 136446210;
      v30 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v17, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else if (self->_destination != 3 || (loggerBase = self->_loggerBase) == 0 || (v19 = [(WFLoggerBase *)loggerBase getLogDirPath], v20 = [(WFLoggerBase *)self->_loggerBase getLogFileNamePrefix], !v19) || (v21 = v20) == 0 || ([(__CFString *)v19 isEmpty]& 1) != 0 || ([(__CFString *)v21 isEmpty]& 1) != 0 || CFStringCompare(a3, v19, 4uLL) || CFStringCompare(a4, v21, 4uLL))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Logging destination will change to directory: %s FileNamePrefix: %s", "-[WFLogger setDestinationFileLocation:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]", -[__CFString UTF8String](a3, "UTF8String"), -[__CFString UTF8String](a4, "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v22, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    if (self->_wflRunningOnWatchClassDevice)
    {
      if (!self->_wflEnableDualLoggingOnWatchClassDevice)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Dual logging suppressed on watch class device. WiFi logs will not be present in the system log while file logging is configured", "-[WFLogger setDestinationFileLocation:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v24 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v23, "UTF8String")), "UTF8String"];
          *buf = 136446210;
          v30 = v24;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__WFLogger_setDestinationFileLocation_fileNamePrefix_runLoopRef_runLoopMode_classC_dateFormatter_maxFileSizeInMB_logLifespanInDays___block_invoke;
    block[3] = &unk_2789C74D8;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    v28 = a7;
    block[8] = a6;
    block[9] = a8;
    block[10] = a9;
    block[11] = a10;
    dispatch_sync(dispatchQueue, block);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __132__WFLogger_setDestinationFileLocation_fileNamePrefix_runLoopRef_runLoopMode_classC_dateFormatter_maxFileSizeInMB_logLifespanInDays___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 stopWatchingLogFile];
  }

  v3 = [WFLoggerFile alloc];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 88);
  v10 = [WFLoggerFile initWithDirectoryPath:v3 dirPath:"initWithDirectoryPath:dirPath:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:dispatchQueue:" fileNamePrefix:*(a1 + 72) runLoopRef:*(a1 + 80) runLoopMode:v9 classC:*(*(a1 + 32) + 32) dateFormatter:? maxFileSizeInMB:? logLifespanInDays:? dispatchQueue:?];
  if (v10)
  {
    v11 = v10;
    v12 = *(*(a1 + 32) + 8);
    if (v12)
    {

      *(*(a1 + 32) + 8) = 0;
    }

    [v11 schedule:1];
    *(*(a1 + 32) + 8) = v11;
    v13 = *(a1 + 40);
    *(*(a1 + 32) + 16) = 3;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Logging destination changed to directory: %s FileNamePrefix: %s", "-[WFLogger setDestinationFileLocation:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]_block_invoke", objc_msgSend(v13, "UTF8String"), objc_msgSend(*(a1 + 48), "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v14, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDestinationOsLog:(__CFString *)a3 category:(__CFString *)a4 logLifespanInDays:(unint64_t)a5 logLevel:(unint64_t)a6 logPrivacy:(unint64_t)a7
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a3 isEmpty])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s subSystem is empty", "-[WFLogger setDestinationOsLog:category:logLifespanInDays:logLevel:logPrivacy:]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v13, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else if (self->_destination != 2)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__WFLogger_setDestinationOsLog_category_logLifespanInDays_logLevel_logPrivacy___block_invoke;
    block[3] = &unk_2789C7500;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    block[9] = a7;
    dispatch_sync(dispatchQueue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __79__WFLogger_setDestinationOsLog_category_logLifespanInDays_logLevel_logPrivacy___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 8);
  if (v2)
  {
    [v2 stopWatchingLogFile];
  }

  v3 = [WFLoggerOsLog alloc];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  result = [WFLoggerOsLog init:v3 subSystem:"init:subSystem:category:logLifespanInDays:logLevel:logPrivacy:dispatchQueue:" category:*(a1[4] + 32) logLifespanInDays:? logLevel:? logPrivacy:? dispatchQueue:?];
  if (result)
  {
    v10 = result;
    v11 = a1[4];
    if (*(v11 + 8))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Logging destination changed to system wide logging (os_log)", "-[WFLogger setDestinationOsLog:category:logLifespanInDays:logLevel:logPrivacy:]_block_invoke"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v15 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v12, "UTF8String")), "UTF8String"];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      *(a1[4] + 8) = 0;
      v11 = a1[4];
    }

    *(v11 + 8) = v10;
    *(a1[4] + 16) = 2;
    result = [*(a1[4] + 8) getLogPrivacy];
    *(a1[4] + 24) = result;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)WFLog:(unint64_t)a3 message:(const char *)a4
{
  objc_sync_enter(self);
  if (self->_loggerBase && self->_destination != 1)
  {
    v21 = 0;
    v22 = &v23;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v7 = *MEMORY[0x277CBECE8];
    v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4, 0x8000100u);
    if (v8 || (v8 = CFStringCreateWithCString(v7, a4, 0)) != 0)
    {
      if (self->_destination == 2)
      {
        v9 = CFStringCreateWithFormatAndArguments(v7, 0, v8, v22);
        v19[3] = v9;
      }

      else
      {
        memset(&v17, 0, sizeof(v17));
        v16.tv_sec = 0;
        *&v16.tv_usec = 0;
        gettimeofday(&v16, 0);
        localtime_r(&v16.tv_sec, &v17);
        Mutable = CFStringCreateMutable(v7, 0);
        v19[3] = Mutable;
        CFStringAppendFormat(Mutable, 0, @"%02d/%02d/%04d %2d:%02d:%02d.%03d ", (v17.tm_mon + 1), v17.tm_mday, (v17.tm_year + 1900), v17.tm_hour, v17.tm_min, v17.tm_sec, (v16.tv_usec / 1000));
        CFStringAppendFormatAndArguments(v19[3], 0, v8, v22);
      }

      if (self->_destination != 2 && (!self->_wflRunningOnWatchClassDevice || self->_wflEnableDualLoggingOnWatchClassDevice))
      {
        *&v17.tm_sec = 0;
        *&v17.tm_hour = &v17;
        *&v17.tm_mon = 0x2020000000;
        *&v17.tm_wday = 0;
        v11 = CFStringCreateWithFormatAndArguments(v7, 0, v8, v22);
        *(*&v17.tm_hour + 24) = v11;
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __26__WFLogger_WFLog_message___block_invoke;
        block[3] = &unk_2789C7528;
        block[4] = &v17;
        block[5] = a3;
        dispatch_async(dispatchQueue, block);
        _Block_object_dispose(&v17, 8);
      }

      CFRelease(v8);
      v13 = self->_dispatchQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __26__WFLogger_WFLog_message___block_invoke_2;
      v14[3] = &unk_2789C7550;
      v14[4] = self;
      v14[5] = &v18;
      v14[6] = a3;
      dispatch_async(v13, v14);
    }

    _Block_object_dispose(&v18, 8);
  }

  objc_sync_exit(self);
}

void __26__WFLogger_WFLog_message___block_invoke(uint64_t a1)
{
  [WFLoggerOsLog WFLogOsLog:*(a1 + 40) cfStrMsg:*(*(*(a1 + 32) + 8) + 24)];
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __26__WFLogger_WFLog_message___block_invoke_2(void *a1)
{
  [*(a1[4] + 8) WFLog:a1[6] privacy:*(a1[4] + 24) cfStrMsg:*(*(a1[5] + 8) + 24)];
  v2 = *(*(a1[5] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1[5] + 8) + 24) = 0;
  }
}

- (void)dump
{
  loggerBase = self->_loggerBase;
  if (loggerBase)
  {
    [(WFLoggerBase *)loggerBase dump];
  }
}

- (NSNumber)getLogLifespanInDays
{
  result = self->_loggerBase;
  if (result)
  {
    return [(NSNumber *)result getLogLifespanInDays];
  }

  return result;
}

- (unint64_t)getLogPrivacy
{
  loggerBase = self->_loggerBase;
  if (loggerBase)
  {
    return [(WFLoggerBase *)loggerBase getLogPrivacy];
  }

  else
  {
    return 1;
  }
}

- (unint64_t)getLogLevelEnable
{
  loggerBase = self->_loggerBase;
  if (loggerBase)
  {
    return [(WFLoggerBase *)loggerBase getLogLevelEnable];
  }

  else
  {
    return 3;
  }
}

- (unint64_t)getLogLevelPersist
{
  loggerBase = self->_loggerBase;
  if (loggerBase)
  {
    return [(WFLoggerBase *)loggerBase getLogLevelPersist];
  }

  else
  {
    return 3;
  }
}

- (unint64_t)getMaxFileSizeInMB
{
  result = self->_loggerBase;
  if (result)
  {
    return [result getMaxFileSizeInMB];
  }

  return result;
}

@end