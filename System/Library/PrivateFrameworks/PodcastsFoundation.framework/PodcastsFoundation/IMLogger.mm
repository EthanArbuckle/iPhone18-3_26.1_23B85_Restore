@interface IMLogger
+ (id)sharedLogger;
+ (void)deleteRolledLogsForLogPath:(id)path maxAge:(double)age;
+ (void)rollLogPath:(id)path maxSize:(unint64_t)size;
- (BOOL)shouldOverrideCondition:(id)condition file:(id)file;
- (IMLogger)init;
- (void)addRuntimeOverride:(id)override;
- (void)logFunction:(const char *)function format:(id)format;
- (void)logString:(id)string;
- (void)removeRuntimeOverride:(id)override;
- (void)setAuxPath:(id)path;
@end

@implementation IMLogger

+ (id)sharedLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__IMLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v5 = [infoDictionary objectForKey:*MEMORY[0x1E695E4F8]];
    procName = v2->_procName;
    v2->_procName = v5;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];

    v9 = [environment objectForKey:@"IMLogFilter"];

    if (v9)
    {
      v10 = [environment objectForKey:@"IMLogFilter"];
      [(IMLogger *)v2 setFilter:v10];
    }

    v11 = [environment objectForKey:@"IMLogRuntimeOverride"];

    if (v11)
    {
      v12 = [environment objectForKey:@"IMLogRuntimeOverride"];
      [(IMLogger *)v2 setRuntimeOverride:v12];
    }

    v13 = [environment objectForKey:@"IMLogRuntimeOverridePattern"];

    if (v13)
    {
      v14 = [environment objectForKey:@"IMLogRuntimeOverridePattern"];
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

- (void)setAuxPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_auxPath, path);
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

- (BOOL)shouldOverrideCondition:(id)condition file:(id)file
{
  conditionCopy = condition;
  fileCopy = file;
  runtimeOverride = [(IMLogger *)self runtimeOverride];
  v9 = [runtimeOverride length];

  if (!v9)
  {
    goto LABEL_4;
  }

  lastPathComponent = [fileCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  runtimeOverride2 = [(IMLogger *)self runtimeOverride];
  if ([runtimeOverride2 rangeOfString:conditionCopy options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_8;
  }

  runtimeOverride3 = [(IMLogger *)self runtimeOverride];
  v14 = 1;
  v15 = [runtimeOverride3 rangeOfString:stringByDeletingPathExtension options:1];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    if (!self->_runtimeOverrideRegex)
    {
      v14 = 0;
      goto LABEL_11;
    }

    lastPathComponent2 = [fileCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];

    if (-[NSRegularExpression rangeOfFirstMatchInString:options:range:](self->_runtimeOverrideRegex, "rangeOfFirstMatchInString:options:range:", stringByDeletingPathExtension, 0, 0, [stringByDeletingPathExtension length]) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = -[NSRegularExpression rangeOfFirstMatchInString:options:range:](self->_runtimeOverrideRegex, "rangeOfFirstMatchInString:options:range:", conditionCopy, 0, 0, [conditionCopy length]) != 0x7FFFFFFFFFFFFFFFLL;
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

- (void)logFunction:(const char *)function format:(id)format
{
  formatCopy = format;
  if (formatCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v10];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s %@", function, v7];
    [(IMLogger *)self logString:v8];
  }

  else
  {
    function = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s <nil>", function];
    [(IMLogger *)self logString:function];
  }
}

- (void)logString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = stringCopy;
  if (!self->_filter || [stringCopy rangeOfString:?] != 0x7FFFFFFFFFFFFFFFLL)
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

- (void)addRuntimeOverride:(id)override
{
  overrideCopy = override;
  runtimeOverride = [(IMLogger *)self runtimeOverride];
  if ([runtimeOverride length])
  {
    runtimeOverride2 = [(IMLogger *)self runtimeOverride];
  }

  else
  {
    runtimeOverride2 = &stru_1F548B930;
  }

  if ([(__CFString *)runtimeOverride2 rangeOfString:overrideCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(__CFString *)runtimeOverride2 stringByAppendingString:overrideCopy];
    [(IMLogger *)self setRuntimeOverride:v6];
  }
}

- (void)removeRuntimeOverride:(id)override
{
  overrideCopy = override;
  runtimeOverride = [(IMLogger *)self runtimeOverride];
  v5 = [runtimeOverride stringByReplacingOccurrencesOfString:overrideCopy withString:&stru_1F548B930];

  [(IMLogger *)self setRuntimeOverride:v5];
}

+ (void)rollLogPath:(id)path maxSize:(unint64_t)size
{
  pathCopy = path;
  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = [v5 attributesOfItemAtPath:pathCopy error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:*MEMORY[0x1E696A3B8]];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    if (unsignedLongLongValue >= size)
    {
      lastPathComponent = [pathCopy lastPathComponent];
      v11 = MEMORY[0x1E696AEC0];
      v12 = +[IMLogger rolledLogPrefix];
      v13 = IMTimeStamp();
      v14 = [v11 stringWithFormat:@"%@%@-%@", v12, v13, lastPathComponent];

      stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
      v16 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v14];
      v17 = +[IMLogger sharedLogger];
      [v17 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Logging/IMLogger.m" lineNumber:228 format:{@"Rolling Log: %@ -> %@", pathCopy, v16}];

      [v5 moveItemAtPath:pathCopy toPath:v16 error:0];
    }
  }
}

+ (void)deleteRolledLogsForLogPath:(id)path maxAge:(double)age
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  lastPathComponent = [pathCopy lastPathComponent];
  v26 = pathCopy;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v9 = [v6 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];
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
          v16 = [v14 hasSuffix:lastPathComponent];

          if (!v16)
          {
            goto LABEL_13;
          }

          v15 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v14];
          v17 = [v6 attributesOfItemAtPath:v15 error:0];
          v18 = [v17 objectForKey:v28];
          v19 = v18;
          if (v17)
          {
            [v18 timeIntervalSinceNow];
            if (-v20 >= age)
            {
              +[IMLogger sharedLogger];
              v21 = stringByDeletingLastPathComponent;
              v22 = lastPathComponent;
              v24 = v23 = v6;
              [v24 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Logging/IMLogger.m" lineNumber:247 format:{@"Deleting Rolled Log: %@", v15}];

              v6 = v23;
              lastPathComponent = v22;
              stringByDeletingLastPathComponent = v21;
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