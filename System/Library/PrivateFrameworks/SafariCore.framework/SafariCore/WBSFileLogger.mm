@interface WBSFileLogger
+ (BOOL)collectLogsInDirectory:(id)directory withName:(id)name intoFile:(id)file error:(id *)error;
- (WBSFileLogger)initWithDirectoryURL:(id)l logName:(id)name maximumLogAge:(unint64_t)age;
- (void)_closeStream;
- (void)_logMessage:(id)message date:(id)date;
- (void)_removeOldLogs;
- (void)dealloc;
- (void)logFormat:(id)format;
- (void)logMessage:(id)message;
- (void)tearDown;
@end

@implementation WBSFileLogger

- (void)_removeOldLogs
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v4 = -self->_maximumLogAgeInDays;
  date = [MEMORY[0x1E695DF00] date];
  v25 = [v3 dateByAddingUnit:16 value:v4 toDate:date options:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v26 = v3;
  [v7 setCalendar:v3];
  v30 = v7;
  [v7 setDateFormat:@"_yyyy-MM-dd"];
  v8 = [(NSString *)self->_logName length];
  v9 = [@"_yyyy-MM-dd" length];
  v10 = [@".log" length];
  v29 = [(NSString *)self->_logName length];
  v28 = [@"_yyyy-MM-dd" length];
  v24 = defaultManager;
  v11 = [defaultManager contentsOfDirectoryAtURL:self->_directoryURL includingPropertiesForKeys:0 options:0 error:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v9 + v10 + v8;
    v15 = *v32;
    v16 = @".log";
    v27 = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        lastPathComponent = [v18 lastPathComponent];
        if ([lastPathComponent length] == v14 && objc_msgSend(lastPathComponent, "hasPrefix:", self->_logName) && objc_msgSend(lastPathComponent, "hasSuffix:", v16))
        {
          v20 = v16;
          v21 = [lastPathComponent substringWithRange:{v29, v28}];
          v22 = [v30 dateFromString:v21];
          if (v22 && [v26 compareDate:v22 toDate:v25 toUnitGranularity:16] == -1)
          {
            [v24 removeItemAtURL:v18 error:0];
          }

          v16 = v20;
          v11 = v27;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (WBSFileLogger)initWithDirectoryURL:(id)l logName:(id)name maximumLogAge:(unint64_t)age
{
  lCopy = l;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = WBSFileLogger;
  v11 = [(WBSFileLogger *)&v23 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    logName = v11->_logName;
    v11->_logName = v12;

    v11->_maximumLogAgeInDays = age;
    objc_storeStrong(&v11->_directoryURL, l);
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("com.apple.SafariShared.Logger", v14);
    logQueue = v11->_logQueue;
    v11->_logQueue = v15;

    v17 = v11->_logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSFileLogger_initWithDirectoryURL_logName_maximumLogAge___block_invoke;
    block[3] = &unk_1E7CF16E0;
    v18 = v11;
    v22 = v18;
    dispatch_async(v17, block);
    v19 = v18;
  }

  return v11;
}

uint64_t __60__WBSFileLogger_initWithDirectoryURL_logName_maximumLogAge___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 createDirectoryAtURL:*(*(a1 + 32) + 8) withIntermediateDirectories:1 attributes:0 error:0];

  v3 = *(a1 + 32);

  return [v3 _removeOldLogs];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_closeStreamTimer);
  [WeakRetained invalidate];

  outputStream = self->_outputStream;
  if (outputStream)
  {
    v5 = outputStream;
    logQueue = self->_logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__WBSFileLogger_dealloc__block_invoke;
    block[3] = &unk_1E7CF16E0;
    v10 = v5;
    v7 = v5;
    dispatch_async(logQueue, block);
  }

  v8.receiver = self;
  v8.super_class = WBSFileLogger;
  [(WBSFileLogger *)&v8 dealloc];
}

- (void)tearDown
{
  if (self->_outputStream)
  {
    logQueue = self->_logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__WBSFileLogger_tearDown__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_sync(logQueue, block);
  }
}

- (void)logFormat:(id)format
{
  v4 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(WBSFileLogger *)self logMessage:v6];
}

- (void)logMessage:(id)message
{
  v4 = MEMORY[0x1E695DF00];
  messageCopy = message;
  date = [v4 date];
  v7 = [messageCopy copy];

  logQueue = self->_logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WBSFileLogger_logMessage___block_invoke;
  block[3] = &unk_1E7CF2308;
  block[4] = self;
  v12 = v7;
  v13 = date;
  v9 = date;
  v10 = v7;
  dispatch_async(logQueue, block);
}

- (void)_logMessage:(id)message date:(id)date
{
  messageCopy = message;
  dateCopy = date;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v9 = v8;
  if (!self->_logStartDate || ([v8 isDate:dateCopy inSameDayAsDate:?] & 1) == 0)
  {
    [(WBSFileLogger *)self _closeStream];
    [(WBSFileLogger *)self _removeOldLogs];
    date = [MEMORY[0x1E695DF00] date];
    logStartDate = self->_logStartDate;
    self->_logStartDate = date;
  }

  if (!self->_outputStream)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setCalendar:v9];
    [v12 setDateFormat:@"_yyyy-MM-dd"];
    v13 = MEMORY[0x1E696AEC0];
    logName = self->_logName;
    v15 = [v12 stringFromDate:dateCopy];
    v16 = [v13 stringWithFormat:@"%@%@%@", logName, v15, @".log"];

    v17 = MEMORY[0x1E695DFC0];
    v18 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:v16 isDirectory:0];
    v19 = [v17 outputStreamWithURL:v18 append:1];
    outputStream = self->_outputStream;
    self->_outputStream = v19;

    [(NSOutputStream *)self->_outputStream open];
  }

  messageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@\n", dateCopy, messageCopy];
  v22 = [messageCopy dataUsingEncoding:4];
  -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v22 bytes], objc_msgSend(v22, "length"));
  WeakRetained = objc_loadWeakRetained(&self->_closeStreamTimer);
  [WeakRetained invalidate];

  v24 = MEMORY[0x1E695DFF0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __34__WBSFileLogger__logMessage_date___block_invoke;
  v27[3] = &unk_1E7CF2330;
  objc_copyWeak(&v28, &location);
  v25 = [v24 timerWithTimeInterval:0 repeats:v27 block:5.0];
  objc_storeWeak(&self->_closeStreamTimer, v25);
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [mainRunLoop addTimer:v25 forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __34__WBSFileLogger__logMessage_date___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__WBSFileLogger__logMessage_date___block_invoke_2;
    block[3] = &unk_1E7CF16E0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)_closeStream
{
  WeakRetained = objc_loadWeakRetained(&self->_closeStreamTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_closeStreamTimer, 0);
  [(NSOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;
}

+ (BOOL)collectLogsInDirectory:(id)directory withName:(id)name intoFile:(id)file error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  nameCopy = name;
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:0 error:error];
  if (v13)
  {
    v14 = [nameCopy length];
    v15 = [@"_yyyy-MM-dd" length] + v14;
    v16 = [@".log" length];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __64__WBSFileLogger_collectLogsInDirectory_withName_intoFile_error___block_invoke;
    v35[3] = &unk_1E7CF2358;
    v37 = v15 + v16;
    v36 = nameCopy;
    v17 = [v13 safari_filterObjectsUsingBlock:v35];
    v18 = [v17 count];
    v19 = v18 != 0;
    if (v18)
    {
      v29 = defaultManager;
      v30 = directoryCopy;
      v20 = [v17 sortedArrayUsingComparator:&__block_literal_global_16];

      v21 = [MEMORY[0x1E695DFC0] outputStreamWithURL:fileCopy append:1];
      [v21 open];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v20;
      v22 = [v17 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v17);
            }

            v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(&v31 + 1) + 8 * i)];
            [v21 write:objc_msgSend(v26 maxLength:{"bytes"), objc_msgSend(v26, "length")}];
          }

          v23 = [v17 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v23);
      }

      [v21 close];
      directoryCopy = v30;
      defaultManager = v29;
    }

    else if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __64__WBSFileLogger_collectLogsInDirectory_withName_intoFile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if ([v3 length] == *(a1 + 40) && objc_msgSend(v3, "hasPrefix:", *(a1 + 32)))
  {
    v4 = [v3 hasSuffix:@".log"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __64__WBSFileLogger_collectLogsInDirectory_withName_intoFile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 compare:v6];
  return v7;
}

@end