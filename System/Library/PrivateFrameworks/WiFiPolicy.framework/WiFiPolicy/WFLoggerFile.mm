@interface WFLoggerFile
- (WFLoggerFile)initWithDirectoryPath:(id)a3 dirPath:(__CFString *)a4 fileNamePrefix:(__CFString *)a5 runLoopRef:(__CFRunLoop *)a6 runLoopMode:(__CFString *)a7 classC:(unsigned __int8)a8 dateFormatter:(__CFDateFormatter *)a9 maxFileSizeInMB:(unint64_t)a10 logLifespanInDays:(unint64_t)a11 dispatchQueue:(id)a12;
- (__CFString)createDateString;
- (__CFString)generateLogFileName;
- (id)mapLogLevelEnum:(unint64_t)a3;
- (unint64_t)getLogLevelPersist;
- (unsigned)checkLogFileUpdate:(__CFString *)a3;
- (unsigned)doesLogFileExist:(__CFString *)a3;
- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6;
- (void)cleanStaleLogs;
- (void)createDateString;
- (void)createLogFile:(__CFString *)a3 fileClassC:(unsigned __int8)a4;
- (void)dealloc;
- (void)generateLogFileName;
- (void)init:(id)a3 runLoopRef:(__CFRunLoop *)a4 runLoopMode:(__CFString *)a5 classC:(unsigned __int8)a6 dateFormatter:(__CFDateFormatter *)a7 maxFileSizeInMB:(unint64_t)a8 logLifespanInDays:(unint64_t)a9;
- (void)removeLogFile:(const char *)a3 maxAge:(double)a4;
- (void)removeLogFilesFromDir:(const char *)a3;
- (void)rotateLogFile:(__CFString *)a3;
- (void)schedule:(unsigned __int8)a3;
- (void)setLogLevelEnable:(unint64_t)a3;
- (void)setLogLevelPersist:(unint64_t)a3;
- (void)setLogLifespanInDays:(id)a3;
- (void)setLogPrivacy:(unint64_t)a3;
- (void)setMaxFileSizeInMB:(unint64_t)a3;
- (void)startWatchingLogFile;
- (void)stopWatchingLogFile;
- (void)writeToFile:(unint64_t)a3 cfStrMsg:(__CFString *)a4;
@end

@implementation WFLoggerFile

- (id)mapLogLevelEnum:(unint64_t)a3
{
  if (a3 == 4)
  {
    return @"ERROR";
  }

  else
  {
    return @"NOTICE";
  }
}

- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6
{
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a5];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:a6];
  [(WFLoggerFile *)self writeToFile:a3 cfStrMsg:v10];
}

- (void)writeToFile:(unint64_t)a3 cfStrMsg:(__CFString *)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_filePtr)
  {
    SCPrint();
  }

  else
  {
    if (writeToFile_cfStrMsg__onceToken != -1)
    {
      [WFLoggerFile writeToFile:cfStrMsg:];
    }

    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __37__WFLoggerFile_writeToFile_cfStrMsg___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s FAILED. _filePtr is nil", "-[WFLoggerFile writeToFile:cfStrMsg:]_block_invoke"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v4 = v1;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v0);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(WFLoggerFile *)self stopWatchingLogFile];
  loggingTimer = self->_loggingTimer;
  if (loggingTimer)
  {
    dispatch_source_cancel(loggingTimer);
    dispatch_release(self->_loggingTimer);
    self->_loggingTimer = 0;
  }

  filePtr = self->_filePtr;
  if (filePtr)
  {
    fclose(filePtr);
    self->_filePtr = 0;
  }

  logFilePath = self->_logFilePath;
  if (logFilePath)
  {
    CFRelease(logFilePath);
    self->_logFilePath = 0;
  }

  presetFilePath = self->_presetFilePath;
  if (presetFilePath)
  {
    CFRelease(presetFilePath);
    self->_presetFilePath = 0;
  }

  directoryPath = self->_directoryPath;
  if (directoryPath)
  {
    CFRelease(directoryPath);
    self->_directoryPath = 0;
  }

  fileNamePrefix = self->_fileNamePrefix;
  if (fileNamePrefix)
  {
    CFRelease(fileNamePrefix);
    self->_fileNamePrefix = 0;
  }

  fileCreationDate = self->_fileCreationDate;
  if (fileCreationDate)
  {
    CFRelease(fileCreationDate);
    self->_fileCreationDate = 0;
  }

  v10.receiver = self;
  v10.super_class = WFLoggerFile;
  [(WFLoggerFile *)&v10 dealloc];
}

- (WFLoggerFile)initWithDirectoryPath:(id)a3 dirPath:(__CFString *)a4 fileNamePrefix:(__CFString *)a5 runLoopRef:(__CFRunLoop *)a6 runLoopMode:(__CFString *)a7 classC:(unsigned __int8)a8 dateFormatter:(__CFDateFormatter *)a9 maxFileSizeInMB:(unint64_t)a10 logLifespanInDays:(unint64_t)a11 dispatchQueue:(id)a12
{
  v12 = a8;
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WFLoggerFile;
  v18 = [(WFLoggerFile *)&v25 init];
  v19 = v18;
  if (a9 && a7 && a6 && a5 && a4 && a3 && v18)
  {
    v18->_presetFilePath = 0;
    v20 = *MEMORY[0x277CBECE8];
    v18->_directoryPath = CFStringCreateCopy(*MEMORY[0x277CBECE8], a4);
    v19->_fileNamePrefix = CFStringCreateCopy(v20, a5);
    v19->super._dispatchQueue = a12;
    [(WFLoggerFile *)v19 init:a3 runLoopRef:a6 runLoopMode:a7 classC:v12 dateFormatter:a9 maxFileSizeInMB:a10 logLifespanInDays:a11];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Failed to init: %p %p %p %p %p %p %p", "-[WFLoggerFile initWithDirectoryPath:dirPath:fileNamePrefix:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:dispatchQueue:]", v19, a3, a4, a5, a6, a7, a9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);

    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)init:(id)a3 runLoopRef:(__CFRunLoop *)a4 runLoopMode:(__CFString *)a5 classC:(unsigned __int8)a6 dateFormatter:(__CFDateFormatter *)a7 maxFileSizeInMB:(unint64_t)a8 logLifespanInDays:(unint64_t)a9
{
  v23 = *MEMORY[0x277D85DE8];
  self->super._ctxt = a3;
  self->_runLoopRef = a4;
  self->_runLoopMode = a5;
  self->_classC = a6;
  self->_privacy = 2;
  self->_level = 3;
  self->_fileCreationDate = 0;
  self->_dateFormatter = a7;
  self->_logLifespanInDays = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a9];
  v11 = 5000000;
  if (a8 - 6 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v11 = 1000000 * a8;
  }

  self->_maxFileSizeInBytes = v11;
  self->_timerInterval = 600;
  v12 = [(NSNumber *)self->_logLifespanInDays unsignedLongValue];
  self->_fileAgeOutInterval = 86400 * v12;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: _timerInterval %lu  _fileAgeOutInterval %lu", "-[WFLoggerFile init:runLoopRef:runLoopMode:classC:dateFormatter:maxFileSizeInMB:logLifespanInDays:]", self->_timerInterval, 86400 * v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v13, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->super._dispatchQueue);
  self->_loggingTimer = v14;
  if (v14)
  {
    dispatch_set_context(v14, self);
    dispatch_source_set_event_handler_f(self->_loggingTimer, WFLoggerTimerTmoCallBack);
    loggingTimer = self->_loggingTimer;
    v16 = dispatch_time(0, 1000000000 * self->_timerInterval);
    dispatch_source_set_timer(loggingTimer, v16, 1000000000 * self->_timerInterval, 0);
    self->_loggingTimerStarted = 1;
    dispatch_activate(self->_loggingTimer);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"FILE LOGGING TIMER NOT CREATED"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  if ([(WFLoggerFile *)self checkLogFileUpdate:0])
  {
    v19 = [(WFLoggerFile *)self changeLogFile:self->_classC];
    if (v19)
    {
      CFRelease(v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)schedule:(unsigned __int8)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (!self->_loggingTimerStarted)
    {
      loggingTimer = self->_loggingTimer;
      v5 = dispatch_time(0, 1000000000 * self->_timerInterval);
      dispatch_source_set_timer(loggingTimer, v5, 1000000000 * self->_timerInterval, 0);
      self->_loggingTimerStarted = 1;
    }

    v6 = "started";
  }

  else
  {
    dispatch_source_set_timer(self->_loggingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    self->_loggingTimerStarted = 0;
    v6 = "stopped";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: WFLoggerTimer %s.", "-[WFLoggerFile schedule:]", v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v7, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (__CFString)createDateString
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], 0, kCFDateFormatterShortStyle, kCFDateFormatterMediumStyle);
  if (v3)
  {
    v4 = v3;
    CFDateFormatterSetFormat(v3, @"MM-dd-yyyy__HH:mm:ss");
    Current = CFAbsoluteTimeGetCurrent();
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v2, v4, Current);
    CFRelease(v4);
    return StringWithAbsoluteTime;
  }

  else
  {
    [(WFLoggerFile *)&v8 createDateString];
    return v8;
  }
}

- (__CFString)generateLogFileName
{
  v3 = [(WFLoggerFile *)self createDateString];
  v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s/%s-%@%s", [(__CFString *)self->_directoryPath UTF8String], [(__CFString *)self->_fileNamePrefix UTF8String], v3, ".log");
  if (v3)
  {
    CFRelease(v3);
  }

  if (!v4)
  {
    [WFLoggerFile generateLogFileName];
  }

  return v4;
}

- (void)startWatchingLogFile
{
  [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s: No log file specified", "-[WFLoggerFile startWatchingLogFile]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = OUTLINED_FUNCTION_4_0();
    [objc_msgSend(v0 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v1, "%{public}s", v2, v3, v4, v5, v7, v8, v9);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __36__WFLoggerFile_startWatchingLogFile__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Log file deletion detected, cleaning up and re-creating...", "-[WFLoggerFile startWatchingLogFile]_block_invoke"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v7 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 120))
  {
    fclose(*(v3 + 120));
    *(*(a1 + 32) + 120) = 0;
    v3 = *(a1 + 32);
  }

  v4 = [v3 changeLogFile:*(v3 + 64)];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopWatchingLogFile
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_eventSource)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Stopped watching log file", "-[WFLoggerFile stopWatchingLogFile]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    dispatch_source_cancel(self->_eventSource);
    dispatch_release(self->_eventSource);
    self->_eventSource = 0;
    [(WFLoggerFile *)self schedule:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (unsigned)checkLogFileUpdate:(__CFString *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 1;
  if (a3)
  {
    if (self->_fileCreationDate)
    {
      v8 = v6;
      if ([(WFLoggerFile *)self doesLogFileExist:a3])
      {
        v9 = [objc_msgSend(v8 attributesOfItemAtPath:a3 error:{0), "fileSize"}];
        if (v9 >= 0x4C4B41)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s File Size: %llu File path is %@", "-[WFLoggerFile checkLogFileUpdate:]", v9, a3];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v18 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v10, "UTF8String")), "UTF8String"];
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }

        v11 = objc_autoreleasePoolPush();
        v12 = [objc_msgSend(v8 attributesOfItemAtPath:a3 error:{0), "fileCreationDate"}];
        [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
        v7 = v13 >= (86400 * [(NSNumber *)self->_logLifespanInDays unsignedIntValue]) || v9 > 0x4C4B40;
        objc_autoreleasePoolPop(v11);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)cleanStaleLogs
{
  v3 = [(__CFString *)self->_directoryPath UTF8String];

  [(WFLoggerFile *)self removeLogFilesFromDir:v3];
}

- (void)removeLogFilesFromDir:(const char *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = opendir(a3);
  if (v5)
  {
    v6 = v5;
    for (i = readdir(v5); i; i = readdir(v6))
    {
      snprintf(__str, 0x100uLL, "%s/%s", a3, i->d_name);
      if (strstr(__str, ".log"))
      {
        [(WFLoggerFile *)self removeLogFile:__str maxAge:self->_fileAgeOutInterval];
      }
    }

    closedir(v6);
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Can't open %s", "-[WFLoggerFile removeLogFilesFromDir:]", a3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 136446210;
      v11 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v8, "UTF8String")), "UTF8String"];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", __str, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)createLogFile:(__CFString *)a3 fileClassC:(unsigned __int8)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v30, 0, sizeof(v30));
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *v33 = 0u;
  v34 = 0u;
  v7 = objc_autoreleasePoolPush();
  v8 = [(__CFString *)a3 stringByDeletingLastPathComponent];
  if ([(__CFString *)v8 UTF8String])
  {
    [(__CFString *)v8 UTF8String];
    __strlcpy_chk();
  }

  directoryPath = self->_directoryPath;
  if (directoryPath)
  {
    CFRelease(directoryPath);
    self->_directoryPath = 0;
  }

  v10 = *MEMORY[0x277CBECE8];
  self->_directoryPath = CFStringCreateCopy(*MEMORY[0x277CBECE8], v8);
  objc_autoreleasePoolPop(v7);
  if (!v33[0] || stat(v33, &v30) != -1)
  {
    v11 = 0;
    goto LABEL_8;
  }

  if (!mkdir(v33, 0x1FDu))
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Re-created missing log directory %s", "-[WFLoggerFile createLogFile:fileClassC:]", v33];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v28, "UTF8String")), "UTF8String"];
      *buf = 136446210;
      v32 = v29;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v11 = 1;
LABEL_8:
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
    v13 = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    CFStringGetFileSystemRepresentation(a3, v13, MaximumSizeOfFileSystemRepresentation);
    if (!v4 || !self->_isFileLoggingEnabled && MKBUserUnlockedSinceBoot())
    {
      logFilePath = self->_logFilePath;
      if (!logFilePath || (!CFEqual(a3, logFilePath) ? (v15 = 1) : (v15 = v11), (v15 & 1) != 0 || !self->_filePtr))
      {
        if (v4)
        {
          v16 = open_dprotected_np(v13, 514, 3, 0, 384);
          if (v16 < 0)
          {
            [WFLoggerFile createLogFile:v13 fileClassC:?];
          }

          else
          {
            v17 = fdopen(v16, "ab");
            if (v17)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Device unlocked since boot, will log to class C file: %s", "-[WFLoggerFile createLogFile:fileClassC:]", v13];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            [WFLoggerFile createLogFile:v13 fileClassC:?];
          }
        }

        else
        {
          v17 = fopen(v13, "a");
          if (v17)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Will log to file: %s", "-[WFLoggerFile createLogFile:fileClassC:]", v13];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_27:
              v21 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v18, "UTF8String")), "UTF8String"];
              *buf = 136446210;
              v32 = v21;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }

LABEL_28:
            Current = CFAbsoluteTimeGetCurrent();
            fileCreationDate = self->_fileCreationDate;
            if (fileCreationDate)
            {
              CFRelease(fileCreationDate);
              self->_fileCreationDate = 0;
            }

            self->_fileCreationDate = CFDateCreate(v10, Current);
            self->_isFileLoggingEnabled = 1;
            self->_filePtr = v17;
            v24 = self->_logFilePath;
            if (v24)
            {
              CFRelease(v24);
              self->_logFilePath = 0;
            }

            self->_logFilePath = CFStringCreateCopy(v10, a3);
            [(WFLoggerFile *)self stopWatchingLogFile];
            [(WFLoggerFile *)self startWatchingLogFile];
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: fileCreationDate %@", "-[WFLoggerFile createLogFile:fileClassC:]", self->_fileCreationDate];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v26 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v25, "UTF8String")), "UTF8String"];
              *buf = 136446210;
              v32 = v26;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }

            goto LABEL_34;
          }

          [WFLoggerFile createLogFile:v13 fileClassC:?];
        }
      }
    }

LABEL_34:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_36;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Failed to create directory %s, errno = %d", "-[WFLoggerFile createLogFile:fileClassC:]", v33, *__error()];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v19, "UTF8String")), "UTF8String"];
    *buf = 136446210;
    v32 = v20;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

LABEL_36:
  [(WFLoggerFile *)self cleanStaleLogs];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)removeLogFile:(const char *)a3 maxAge:(double)a4
{
  memset(&v8, 0, sizeof(v8));
  if (!stat(a3, &v8))
  {
    v6 = time(0);
    if (difftime(v6, v8.st_mtimespec.tv_sec) > a4)
    {
      remove(a3, v7);
    }
  }
}

- (unsigned)doesLogFileExist:(__CFString *)a3
{
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
  v5 = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  CFStringGetFileSystemRepresentation(a3, v5, MaximumSizeOfFileSystemRepresentation);
  memset(&v9, 0, sizeof(v9));
  v7 = stat(v6, &v9) == 0;
  free(v6);
  return v7;
}

- (void)rotateLogFile:(__CFString *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  maxFileSizeInBytes = self->_maxFileSizeInBytes;
  memset(&v35, 0, sizeof(v35));
  isFileLoggingEnabled = self->_isFileLoggingEnabled;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
  v8 = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (v8)
  {
    v9 = v8;
    CFStringGetFileSystemRepresentation(a3, v8, MaximumSizeOfFileSystemRepresentation);
    if (stat(v9, &v35))
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = __error();
      v12 = [v10 stringWithFormat:@"%s: #error File status on %s returned non-zero (%s)", "-[WFLoggerFile rotateLogFile:]", v9, strerror(*v11)];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        free(v9);
        self->_isFileLoggingEnabled = isFileLoggingEnabled;
        goto LABEL_8;
      }

LABEL_4:
      v13 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v12, "UTF8String")), "UTF8String"];
      *buf = 136446210;
      v37 = v13;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      goto LABEL_5;
    }

    v16 = self->_maxFileSizeInBytes;
    if (!v16)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: #error Max size is 0", "-[WFLoggerFile rotateLogFile:]"];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v35.st_size < v16)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: #error Nothing to do. CurrentSize:%lld MaxSize:%lu", "-[WFLoggerFile rotateLogFile:]", v35.st_size, v16];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v17 = llround(maxFileSizeInBytes * 0.5);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Rotating log file %s from %lld to %ld bytes", "-[WFLoggerFile rotateLogFile:]", v9, v35.st_size, v17];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v18, "UTF8String")), "UTF8String"];
      *buf = 136446210;
      v37 = v19;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    self->_isFileLoggingEnabled = 0;
    v20 = fopen(v9, "r");
    if (!v20)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = __error();
      v12 = [v27 stringWithFormat:@"%s: #error opening log file %s (%s) for reading", "-[WFLoggerFile rotateLogFile:]", v9, strerror(*v28)];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v21 = v20;
    if (fseek(v20, -v17, 2))
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = __error();
      v24 = strerror(*v23);
      v25 = [v22 stringWithFormat:@"%s: #error fseeking log file %s (%s), file size %lld, SEEK_END offset %ld", "-[WFLoggerFile rotateLogFile:]", v9, v24, v35.st_size, v17];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        fclose(v21);
        goto LABEL_5;
      }
    }

    else
    {
      v29 = fopen(v9, "r+");
      if (v29)
      {
        v30 = v29;
        v31 = fread(buf, 1uLL, 0x400uLL, v21);
        if (v31)
        {
          v32 = v31;
          do
          {
            fwrite(buf, 1uLL, v32, v30);
            v32 = fread(buf, 1uLL, 0x400uLL, v21);
          }

          while (v32);
        }

        fclose(v21);
        fflush(v30);
        fclose(v30);
        truncate(v9, v17);
        goto LABEL_5;
      }

      v33 = MEMORY[0x277CCACA8];
      v34 = __error();
      v25 = [v33 stringWithFormat:@"%s: #error opening log file %s (%s) for writing", "-[WFLoggerFile rotateLogFile:]", v9, strerror(*v34)];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

    v26 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v25, "UTF8String")), "UTF8String"];
    *buf = 136446210;
    v37 = v26;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    goto LABEL_21;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: alloc failed", "-[WFLoggerFile rotateLogFile:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v37 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v14, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setMaxFileSizeInMB:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile setMaxFileSizeInMB:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLogLifespanInDays:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile setLogLifespanInDays:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLogPrivacy:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile setLogPrivacy:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLogLevelEnable:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile setLogLevelEnable:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLogLevelPersist:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile setLogLevelPersist:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getLogLevelPersist
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerFile getLogLevelPersist]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")), "UTF8String"];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 3;
}

- (void)createDateString
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: null wifiLoggingDateFormatter", "-[WFLoggerFile createDateString]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x277CCACA8];
    v10 = [v2 UTF8String];
    [objc_msgSend(v3 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v4, "%{public}s", v5, v6, v7, v8, v10, v11, v12);
  }

  *a1 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)generateLogFileName
{
  [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s: null logFileName", "-[WFLoggerFile generateLogFileName]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = OUTLINED_FUNCTION_4_0();
    [objc_msgSend(v0 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v1, "%{public}s", v2, v3, v4, v5, v7, v8, v9);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)createLogFile:(void *)a1 fileClassC:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v14 = a2;
  v15 = strerror(*v4);
  v5 = [a1 stringWithFormat:@"%s: fdopen failed %s (%s)", "-[WFLoggerFile createLogFile:fileClassC:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x277CCACA8];
    v13 = [v5 UTF8String];
    [objc_msgSend(v6 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_3_0(&dword_2332D7000, MEMORY[0x277D86220], v7, "%{public}s", v8, v9, v10, v11, v13, v14, v15, v16, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createLogFile:(uint64_t)a1 fileClassC:.cold.2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = __error();
  v13 = a1;
  v14 = strerror(*v3);
  v4 = [v2 stringWithFormat:@"%s: open_dprotected_np failed with %s (%s)", "-[WFLoggerFile createLogFile:fileClassC:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x277CCACA8];
    v12 = [v4 UTF8String];
    [objc_msgSend(v5 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_3_0(&dword_2332D7000, MEMORY[0x277D86220], v6, "%{public}s", v7, v8, v9, v10, v12, v13, v14, v15, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)createLogFile:(void *)a1 fileClassC:(uint64_t)a2 .cold.3(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v14 = a2;
  v15 = strerror(*v4);
  v5 = [a1 stringWithFormat:@"%s: fopen failed %s (%s)", "-[WFLoggerFile createLogFile:fileClassC:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x277CCACA8];
    v13 = [v5 UTF8String];
    [objc_msgSend(v6 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
    OUTLINED_FUNCTION_3_0(&dword_2332D7000, MEMORY[0x277D86220], v7, "%{public}s", v8, v9, v10, v11, v13, v14, v15, v16, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end