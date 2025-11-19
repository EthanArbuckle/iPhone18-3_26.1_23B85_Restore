@interface SPCorrectionProxy
+ (id)dateFormatter;
+ (id)dateFromFileURL:(id)a3;
+ (id)inputFileURLForCurrentTime;
+ (id)inputFilesURL;
+ (id)inputFilesURLForUser:(id)a3;
+ (id)sharedHandler;
- (BOOL)dateIsExpired:(id)a3;
- (SPCorrectionProxy)init;
- (void)deleteExpiredInputFiles;
- (void)processCorrectionsWithHandle:(id)a3;
- (void)updateWithFileHandle:(id)a3;
@end

@implementation SPCorrectionProxy

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[SPCorrectionProxy sharedHandler];
  }

  v3 = sharedHandler_handler;

  return v3;
}

uint64_t __34__SPCorrectionProxy_sharedHandler__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedHandler_handler;
  sharedHandler_handler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)inputFileURLForCurrentTime
{
  v2 = [objc_opt_class() inputFilesURL];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [objc_opt_class() dateFormatter];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 stringFromDate:v7];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v11 = [v5 stringWithFormat:@"%@_%@_%@", v4, v8, v10];

  v12 = [v2 URLByAppendingPathComponent:v11];

  return v12;
}

+ (id)inputFilesURLForUser:(id)a3
{
  v3 = NSHomeDirectoryForUser(a3);
  v4 = [v3 stringByAppendingString:@"/Library/Spotlight/CorrectionInputFiles"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SPCorrectionProxy_inputFilesURLForUser___block_invoke;
  block[3] = &unk_1E82F8F28;
  v10 = v4;
  v5 = inputFilesURLForUser__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&inputFilesURLForUser__onceToken, block);
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v7;
}

void __42__SPCorrectionProxy_inputFilesURLForUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)inputFilesURL
{
  v2 = objc_opt_class();
  v3 = NSUserName();
  v4 = [v2 inputFilesURLForUser:v3];

  return v4;
}

+ (id)dateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

+ (id)dateFromFileURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 componentsSeparatedByString:@"_"];
  v5 = v4;
  if (v4 && [v4 count] == 3)
  {
    v6 = [v5 objectAtIndex:1];
    v7 = [objc_opt_class() dateFormatter];
    v8 = [v7 dateFromString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SPCorrectionProxy)init
{
  v5.receiver = self;
  v5.super_class = SPCorrectionProxy;
  v2 = [(SPCorrectionProxy *)&v5 init];
  if (v2)
  {
    v3 = [objc_opt_class() inputFilesURL];
    [(SPCorrectionProxy *)v2 setInputFilesURL:v3];
  }

  return v2;
}

- (BOOL)dateIsExpired:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 dateWithTimeIntervalSinceNow:-172800.0];
  v6 = [v4 earlierDate:v5];

  return v6 == v4;
}

- (void)deleteExpiredInputFiles
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SPCorrectionProxy *)self inputFilesURL];
  v24[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v22 = 0;
  v6 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v22];
  v7 = v22;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [objc_opt_class() dateFromFileURL:v13];
        if ([(SPCorrectionProxy *)self dateIsExpired:v14])
        {
          v17 = v7;
          [v3 removeItemAtURL:v13 error:&v17];
          v15 = v17;

          v7 = v15;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateWithFileHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = SPLogForSPLogCategoryDefault();
  v7 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v6, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v6, ((v7 & 1) == 0), "Processing corrections begin", buf, 2u);
  }

  [(SPCorrectionProxy *)v5 processCorrectionsWithHandle:v4];
  v8 = SPLogForSPLogCategoryDefault();
  v9 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v8, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C81BF000, v8, ((v9 & 1) == 0), "Processing corrections complete", v10, 2u);
  }

  objc_sync_exit(v5);
}

- (void)processCorrectionsWithHandle:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = [a3 readDataToEndOfFileAndReturnError:&v22];
  v5 = v22;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = SPLogForSPLogCategoryDefault();
      v8 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v7, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v9 = [v6 debugDescription];
        v10 = [v9 UTF8String];
        *buf = 136315138;
        v24 = v10;
        _os_log_impl(&dword_1C81BF000, v7, ((v8 & 1) == 0), "inputFile write error: %s\n", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_9;
    }

    v11 = [objc_opt_class() inputFileURLForCurrentTime];
    if ([v4 writeToURL:v11 atomically:1])
    {
      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __50__SPCorrectionProxy_processCorrectionsWithHandle___block_invoke;
      v20 = &unk_1E82F95A8;
      v21 = v12;
      v7 = v12;
      v13 = MEMORY[0x1CCA71310](&v17);
      v14 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      v15 = [v11 path];
      [v14 updateCorrectionsWithFilePath:v15 completionHandler:v13];
      dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

LABEL_9:
    }
  }

  else
  {
    v11 = 0;
  }

  [(SPCorrectionProxy *)self deleteExpiredInputFiles];

  v16 = *MEMORY[0x1E69E9840];
}

void __50__SPCorrectionProxy_processCorrectionsWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    v5 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v4, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v6 = [v3 debugDescription];
      v8 = 136315138;
      v9 = [v6 UTF8String];
      _os_log_impl(&dword_1C81BF000, v4, ((v5 & 1) == 0), "updateCompletionHandler error: %s\n", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

@end