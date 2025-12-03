@interface SRSensorWriterWrapper
+ (id)writerInstance;
- (BOOL)isReady;
- (void)publishSessionStats:(id)stats withSessionStartTime:(BOOL)time;
- (void)write:(id)write;
- (void)write:(id)write withTimeStamp:(id)stamp;
@end

@implementation SRSensorWriterWrapper

- (void)publishSessionStats:(id)stats withSessionStartTime:(BOOL)time
{
  timeCopy = time;
  statsCopy = stats;
  generateDataForSR = [statsCopy generateDataForSR];
  if (timeCopy)
  {
    binarySampleRepresentation = [generateDataForSR binarySampleRepresentation];
    startTime = [statsCopy startTime];

    [(SRSensorWriterWrapper *)self write:binarySampleRepresentation withTimeStamp:startTime];
  }

  else
  {

    binarySampleRepresentation = [generateDataForSR binarySampleRepresentation];
    [(SRSensorWriterWrapper *)self write:binarySampleRepresentation];
  }
}

- (void)write:(id)write withTimeStamp:(id)stamp
{
  v22 = *MEMORY[0x277D85DE8];
  stampCopy = stamp;
  writeCopy = write;
  v8 = IXADefaultLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] sending sessionStats data to SensorKit", "-[SRSensorWriterWrapper write:withTimeStamp:]"];
    *buf = 138412290;
    v21 = v18;
    _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = +[SRSensorWriterWrapper writerInstance];
  [stampCopy srAbsoluteTime];
  v12 = v11;

  v19 = 0;
  [v10 provideSampleData:writeCopy timestamp:&v19 error:v12];

  v13 = v19;
  objc_sync_exit(selfCopy);

  v14 = IXADefaultLogFacility();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] Data send to SensorKit failed with error: %@", "-[SRSensorWriterWrapper write:withTimeStamp:]", v13];
      *buf = 138412290;
      v21 = v16;
      _os_log_error_impl(&dword_22CA55000, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] Data is sent to SensorKit", "-[SRSensorWriterWrapper write:withTimeStamp:]"];
    *buf = 138412290;
    v21 = v16;
    _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_9;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)write:(id)write
{
  v17 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] sending sessionStats data to SensorKit", "-[SRSensorWriterWrapper write:]"];
    *buf = 138412290;
    v16 = v13;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = +[SRSensorWriterWrapper writerInstance];
  v14 = 0;
  [v7 provideSampleData:writeCopy error:&v14];

  v8 = v14;
  objc_sync_exit(selfCopy);

  v9 = IXADefaultLogFacility();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] Data send to SensorKit failed with error: %@", "-[SRSensorWriterWrapper write:]", v8];
      *buf = 138412290;
      v16 = v11;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] Data is sent to SensorKit", "-[SRSensorWriterWrapper write:]"];
    *buf = 138412290;
    v16 = v11;
    _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReady
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[SRSensorWriterWrapper writerInstance];
  isMonitoring = [v2 isMonitoring];

  v4 = IXADefaultLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"not ready";
    if (isMonitoring)
    {
      v7 = @"ready";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] writer is %@", "-[SRSensorWriterWrapper isReady]", v7];
    *buf = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return isMonitoring;
}

+ (id)writerInstance
{
  if (+[SRSensorWriterWrapper writerInstance]::onceToken != -1)
  {
    dispatch_once(&+[SRSensorWriterWrapper writerInstance]::onceToken, &__block_literal_global);
  }

  v3 = +[SRSensorWriterWrapper writerInstance]::_instance;

  return v3;
}

uint64_t __39__SRSensorWriterWrapper_writerInstance__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = IXADefaultLogFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] creating SRSensorWriter for %@", "+[SRSensorWriterWrapper writerInstance]_block_invoke", @"com.apple.SensorKit.keyboardMetrics"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_debug_impl(&dword_22CA55000, v0, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v1 = getSRSensorWriterClass(void)::softClass;
  v13 = getSRSensorWriterClass(void)::softClass;
  if (!getSRSensorWriterClass(void)::softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v15 = ___ZL22getSRSensorWriterClassv_block_invoke;
    v16 = &unk_278733760;
    v17 = &v10;
    ___ZL22getSRSensorWriterClassv_block_invoke(&buf);
    v1 = v11[3];
  }

  v2 = v1;
  _Block_object_dispose(&v10, 8);
  v3 = [[v1 alloc] initWithIdentifier:@"com.apple.SensorKit.keyboardMetrics"];
  v4 = +[SRSensorWriterWrapper writerInstance]::_instance;
  +[SRSensorWriterWrapper writerInstance]::_instance = v3;

  v5 = objc_alloc_init(SRSensorWriterKeyboardDelegate);
  v6 = +[SRSensorWriterWrapper writerInstance]::_delegate;
  +[SRSensorWriterWrapper writerInstance]::_delegate = v5;

  result = [+[SRSensorWriterWrapper writerInstance]::_instance setDelegate:+[SRSensorWriterWrapper writerInstance]::_delegate];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end