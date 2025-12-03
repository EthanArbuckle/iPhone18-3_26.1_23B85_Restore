@interface TYLogger
+ (id)openLogFile:(id)file;
+ (id)openLogFile:(id)file inDirectory:(id)directory;
+ (void)closeLogFile;
@end

@implementation TYLogger

+ (id)openLogFile:(id)file inDirectory:(id)directory
{
  fileCopy = file;
  directoryCopy = directory;
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 stringFromDate:date];

  v11 = directoryCopy;
  v12 = v11;
  if (![v11 length])
  {
    v13 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v14 = [v13 objectAtIndex:0];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [v14 stringByAppendingPathComponent:bundleIdentifier];

    if ([fileCopy length])
    {
      v17 = [v12 stringByAppendingPathComponent:fileCopy];

      v12 = v17;
    }
  }

  if ([fileCopy length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Console-%@.log", fileCopy, v10];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Console-%@.log", v10, v22];
  }
  v18 = ;
  v19 = [v12 stringByAppendingPathComponent:v18];

  v20 = [self openLogFile:v19];

  return v20;
}

+ (id)openLogFile:(id)file
{
  fileCopy = file;
  if (!fileCopy)
  {
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:fileCopy];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    [defaultManager2 removeItemAtPath:fileCopy error:&v14];
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  data = [MEMORY[0x277CBEA90] data];
  v9 = [defaultManager3 createFileAtPath:fileCopy contents:data attributes:0];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:fileCopy];
  v11 = _logFileHandle;
  _logFileHandle = v10;

  if (_logFileHandle)
  {
    v12 = fileCopy;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

+ (void)closeLogFile
{
  if (_logFileHandle)
  {
    TYLog(@"Closing log file", a2, v2, v3, v4, v5, v6, v7, v9);
    [_logFileHandle closeFile];
    v8 = _logFileHandle;
    _logFileHandle = 0;
  }
}

@end