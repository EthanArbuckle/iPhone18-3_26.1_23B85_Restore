@interface TIMecabraIMLogger
+ (BOOL)isLoggingEnabled;
- (NSMutableString)loggedMessage;
- (id)logFilePath;
- (void)beginLogging;
- (void)endLoggingForInput:(id)a3 atFinalTimeMark:(unint64_t)a4;
- (void)markTime:(unint64_t)a3;
- (void)writeLogToFile;
@end

@implementation TIMecabraIMLogger

+ (BOOL)isLoggingEnabled
{
  if (isLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&isLoggingEnabled_onceToken, &__block_literal_global_23940);
  }

  return isLoggingEnabled_logLevel != 0;
}

CFIndex __37__TIMecabraIMLogger_isLoggingEnabled__block_invoke()
{
  result = CFPreferencesGetAppIntegerValue(@"MecabraIMLogLevel", @"com.apple.keyboard", 0);
  isLoggingEnabled_logLevel = result;
  return result;
}

- (void)writeLogToFile
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(TIMecabraIMLogger *)self loggedMessage];
  v4 = [(TIMecabraIMLogger *)self logFilePath];
  [v3 writeToFile:v4 atomically:1 encoding:4 error:0];

  [(TIMecabraIMLogger *)self setLoggedMessage:0];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(TIMecabraIMLogger *)self logFilePath];
      v9 = [v7 stringWithFormat:@"%s TIMecabraIM: Log is written to file %@!", "-[TIMecabraIMLogger writeLogToFile]", v8];
      *buf = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)endLoggingForInput:(id)a3 atFinalTimeMark:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 0xA)
  {
    v23 = v6;
    [(TIMecabraIMLogger *)self markTime:a4];
    v7 = *gTimeStamps;
    v8 = 0.0;
    if (*gTimeStamps != 0.0)
    {
      v9 = *&gTimeStamps[a4];
      if (v9 != 0.0)
      {
        v7 = v9 - *gTimeStamps;
        *&v7 = v9 - *gTimeStamps;
        v8 = *&v7 * 1000.0;
      }
    }

    v10 = [MEMORY[0x277CCAB68] string];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v23];;
    [v10 appendString:v11];

    if (a4)
    {
      v12 = &xmmword_27D9EDE80;
      do
      {
        v13 = *(v12 - 1);
        v14 = 0.0;
        if (v13 != 0.0 && *v12 != 0.0)
        {
          v15 = *v12 - v13;
          v14 = v15 * 1000.0;
        }

        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f(%.1f%%)", v14, ((v14 / v8) * 100.0)];
        v18 = [v16 stringWithFormat:@"%@ ", v17];;
        [v10 appendString:v18];

        ++v12;
        --a4;
      }

      while (a4);
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f(%.1f%%)", v8, ((v8 / v8) * 100.0)];
    v21 = [v19 stringWithFormat:@"%@\n", v20];
    [v10 appendString:v21];

    v22 = [(TIMecabraIMLogger *)self loggedMessage];
    [v22 appendString:v10];

    v6 = v23;
  }
}

- (id)logFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"mecabraIMLog.txt"];

  return v3;
}

- (void)markTime:(unint64_t)a3
{
  if (a3 >= 0xA)
  {
    v3 = 10;
  }

  else
  {
    v3 = a3;
  }

  *&gTimeStamps[v3] = CFAbsoluteTimeGetCurrent();
}

- (void)beginLogging
{
  qword_27D9EDEC0 = 0;
  xmmword_27D9EDEA0 = 0u;
  unk_27D9EDEB0 = 0u;
  xmmword_27D9EDE80 = 0u;
  *algn_27D9EDE90 = 0u;
  [(TIMecabraIMLogger *)self markTime:0];
}

- (NSMutableString)loggedMessage
{
  loggedMessage = self->_loggedMessage;
  if (!loggedMessage)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = self->_loggedMessage;
    self->_loggedMessage = v4;

    loggedMessage = self->_loggedMessage;
  }

  return loggedMessage;
}

@end