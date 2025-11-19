@interface TYLogger
+ (id)openLogFile:(id)a3;
+ (id)openLogFile:(id)a3 inDirectory:(id)a4;
+ (void)closeLogFile;
@end

@implementation TYLogger

+ (id)openLogFile:(id)a3 inDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 stringFromDate:v9];

  v11 = v7;
  v12 = v11;
  if (![v11 length])
  {
    v13 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v14 = [v13 objectAtIndex:0];
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 bundleIdentifier];
    v12 = [v14 stringByAppendingPathComponent:v16];

    if ([v6 length])
    {
      v17 = [v12 stringByAppendingPathComponent:v6];

      v12 = v17;
    }
  }

  if ([v6 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Console-%@.log", v6, v10];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Console-%@.log", v10, v22];
  }
  v18 = ;
  v19 = [v12 stringByAppendingPathComponent:v18];

  v20 = [a1 openLogFile:v19];

  return v20;
}

+ (id)openLogFile:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    [v6 removeItemAtPath:v3 error:&v14];
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CBEA90] data];
  v9 = [v7 createFileAtPath:v3 contents:v8 attributes:0];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v3];
  v11 = _logFileHandle;
  _logFileHandle = v10;

  if (_logFileHandle)
  {
    v12 = v3;
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