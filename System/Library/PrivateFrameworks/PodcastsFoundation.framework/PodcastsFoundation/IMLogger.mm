@interface IMLogger
+ (id)sharedLogger;
+ (void)deleteRolledLogsForLogPath:(id)a3 maxAge:(double)a4;
+ (void)rollLogPath:(id)a3 maxSize:(unint64_t)a4;
- (BOOL)shouldOverrideCondition:(id)a3 file:(id)a4;
- (IMLogger)init;
- (void)addRuntimeOverride:(id)a3;
- (void)logFunction:(const char *)a3 format:(id)a4;
- (void)logString:(id)a3;
- (void)removeRuntimeOverride:(id)a3;
- (void)setAuxPath:(id)a3;
@end

@implementation IMLogger

+ (id)sharedLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__IMLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, block);
  }

  v2 = sharedLogger__sharedLogger;

  return v2;
}

uint64_t __24__IMLogger_sharedLogger__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedLogger__sharedLogger = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (IMLogger)init
{
  v21.receiver = self;
  v21.super_class = IMLogger;
  v2 = [(IMLogger *)&v21 init];
  if (v2)
  {
    v2->_pid = getpid();
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKey:*MEMORY[0x1E695E4F8]];
    procName = v2->_procName;
    v2->_procName = v5;

    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 environment];

    v9 = [v8 objectForKey:@"IMLogFilter"];

    if (v9)
    {
      v10 = [v8 objectForKey:@"IMLogFilter"];
      [(IMLogger *)v2 setFilter:v10];
    }

    v11 = [v8 objectForKey:@"IMLogRuntimeOverride"];

    if (v11)
    {
      v12 = [v8 objectForKey:@"IMLogRuntimeOverride"];
      [(IMLogger *)v2 setRuntimeOverride:v12];
    }

    v13 = [v8 objectForKey:@"IMLogRuntimeOverridePattern"];

    if (v13)
    {
      v14 = [v8 objectForKey:@"IMLogRuntimeOverridePattern"];
      v20 = 0;
      v15 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v14 options:0 error:&v20];
      v16 = v20;
      runtimeOverrideRegex = v2->_runtimeOverrideRegex;
      v2->_runtimeOverrideRegex = v15;

      if (!v2->_runtimeOverrideRegex)
      {
        [(IMLogger *)v2 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Logging/IMLogger.m" lineNumber:75 format:@"Invalid RegexPattern: %@ -- Error: %@", v14, v16];
      }
    }

    v18 = v2;
  }

  return v2;
}

- (void)setAuxPath:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_auxPath, a3);
  [(NSFileHandle *)self->_fileHandle closeFile];
  fileHandle = self->_fileHandle;
  self->_fileHandle = 0;

  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if (([v6 fileExistsAtPath:self->_auxPath] & 1) == 0)
  {
    [v6 createFileAtPath:self->_auxPath contents:0 attributes:0];
  }

  v7 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:self->_auxPath];
  v8 = self->_fileHandle;
  self->_fileHandle = v7;

  [(NSFileHandle *)self->_fileHandle seekToEndOfFile];
}

- (BOOL)shouldOverrideCondition:(id)a3 file:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMLogger *)self runtimeOverride];
  v9 = [v8 length];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = [v7 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];

  v12 = [(IMLogger *)self runtimeOverride];
  if ([v12 rangeOfString:v6 options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_8;
  }

  v13 = [(IMLogger *)self runtimeOverride];
  v14 = 1;
  v15 = [v13 rangeOfString:v11 options:1];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    if (!self->_runtimeOverrideRegex)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v16 = [v7 lastPathComponent];
    v11 = [v16 stringByDeletingPathExtension];

    if (-[NSRegularExpression rangeOfFirstMatchInString:options:range:](self->_runtimeOverrideRegex, "rangeOfFirstMatchInString:options:range:", v11, 0, 0, [v11 length]) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = -[NSRegularExpression rangeOfFirstMatchInString:options:range:](self->_runtimeOverrideRegex, "rangeOfFirstMatchInString:options:range:", v6, 0, 0, [v6 length]) != 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:

      goto LABEL_11;
    }

LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

LABEL_11:

  return v14;
}

- (void)logFunction:(const char *)a3 format:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v6 arguments:&v10];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", a3, v7];
    [(IMLogger *)self logString:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s <nil>", a3];
    [(IMLogger *)self logString:v9];
  }
}

- (void)logString:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_filter || [v4 rangeOfString:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_fileHandle && self->_logTofileOnly)
    {
      goto LABEL_10;
    }

    if (IMInitializeLogCategories_onceToken[0] != -1)
    {
      [IMLogger logString:];
    }

    v6 = IMLogCategoryDefault;
    if (os_log_type_enabled(IMLogCategoryDefault, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = pthread_self();
      *buf = 67109378;
      v19 = pthread_mach_thread_np(v8);
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "(%x) %@\n", buf, 0x12u);
    }

    if (self->_fileHandle)
    {
LABEL_10:
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = IMTimeStamp();
      procName = self->_procName;
      pid = self->_pid;
      v13 = pthread_self();
      v14 = [v9 initWithFormat:@"%@ %@[%d:%x] %@\n", v10, procName, pid, pthread_mach_thread_np(v13), v5];

      fileHandle = self->_fileHandle;
      v16 = [v14 dataUsingEncoding:4];
      [(NSFileHandle *)fileHandle writeData:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addRuntimeOverride:(id)a3
{
  v7 = a3;
  v4 = [(IMLogger *)self runtimeOverride];
  if ([v4 length])
  {
    v5 = [(IMLogger *)self runtimeOverride];
  }

  else
  {
    v5 = &stru_1F548B930;
  }

  if ([(__CFString *)v5 rangeOfString:v7]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(__CFString *)v5 stringByAppendingString:v7];
    [(IMLogger *)self setRuntimeOverride:v6];
  }
}

- (void)removeRuntimeOverride:(id)a3
{
  v4 = a3;
  v6 = [(IMLogger *)self runtimeOverride];
  v5 = [v6 stringByReplacingOccurrencesOfString:v4 withString:&stru_1F548B930];

  [(IMLogger *)self setRuntimeOverride:v5];
}

+ (void)rollLogPath:(id)a3 maxSize:(unint64_t)a4
{
  v18 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = [v5 attributesOfItemAtPath:v18 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:*MEMORY[0x1E696A3B8]];
    v9 = [v8 unsignedLongLongValue];

    if (v9 >= a4)
    {
      v10 = [v18 lastPathComponent];
      v11 = MEMORY[0x1E696AEC0];
      v12 = +[IMLogger rolledLogPrefix];
      v13 = IMTimeStamp();
      v14 = [v11 stringWithFormat:@"%@%@-%@", v12, v13, v10];

      v15 = [v18 stringByDeletingLastPathComponent];
      v16 = [v15 stringByAppendingPathComponent:v14];
      v17 = +[IMLogger sharedLogger];
      [v17 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Logging/IMLogger.m" lineNumber:228 format:{@"Rolling Log: %@ -> %@", v18, v16}];

      [v5 moveItemAtPath:v18 toPath:v16 error:0];
    }
  }
}

+ (void)deleteRolledLogsForLogPath:(id)a3 maxAge:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v7 = [v5 lastPathComponent];
  v26 = v5;
  v8 = [v5 stringByDeletingLastPathComponent];
  v9 = [v6 contentsOfDirectoryAtPath:v8 error:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v27 = v9;
    v28 = *MEMORY[0x1E696A350];
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v15 = +[IMLogger rolledLogPrefix];
        if ([v14 hasPrefix:v15])
        {
          v16 = [v14 hasSuffix:v7];

          if (!v16)
          {
            goto LABEL_13;
          }

          v15 = [v8 stringByAppendingPathComponent:v14];
          v17 = [v6 attributesOfItemAtPath:v15 error:0];
          v18 = [v17 objectForKey:v28];
          v19 = v18;
          if (v17)
          {
            [v18 timeIntervalSinceNow];
            if (-v20 >= a4)
            {
              +[IMLogger sharedLogger];
              v21 = v8;
              v22 = v7;
              v24 = v23 = v6;
              [v24 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Logging/IMLogger.m" lineNumber:247 format:{@"Deleting Rolled Log: %@", v15}];

              v6 = v23;
              v7 = v22;
              v8 = v21;
              v9 = v27;
              [v6 removeItemAtPath:v15 error:0];
            }
          }
        }

LABEL_13:
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end