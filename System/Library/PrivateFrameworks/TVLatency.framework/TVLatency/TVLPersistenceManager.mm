@interface TVLPersistenceManager
+ (id)URLForRecording;
+ (id)allRecordingPaths;
+ (id)documentsDirectory:(id)directory;
+ (id)recordingsDirectory:(id)directory;
+ (void)URLForRecording;
+ (void)allRecordingPaths;
+ (void)eraseAllRecordings;
@end

@implementation TVLPersistenceManager

+ (id)documentsDirectory:(id)directory
{
  v3 = [directory URLsForDirectory:9 inDomains:1];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)recordingsDirectory:(id)directory
{
  v3 = [self documentsDirectory:directory];
  v4 = [v3 URLByAppendingPathComponent:@"tvlatency-recordings" isDirectory:1];

  return v4;
}

+ (id)URLForRecording
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [self recordingsDirectory:defaultManager];
  path = [v4 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = 0;
LABEL_4:
    v10 = MEMORY[0x277CCACA8];
    if (CurrentTimeStamp_onceToken != -1)
    {
      +[TVLPersistenceManager URLForRecording];
    }

    v11 = CurrentTimeStamp_ISO8601DateFormatter;
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [v11 stringFromDate:date];

    v14 = [v10 stringWithFormat:@"recording-%@.caf", v13];

    v15 = [v4 URLByAppendingPathComponent:v14 isDirectory:0];

    goto LABEL_12;
  }

  path2 = [v4 path];
  v18 = 0;
  v9 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v18];
  v7 = v18;

  if (v9)
  {
    goto LABEL_4;
  }

  if (_TVLLogDefault_onceToken_0 != -1)
  {
    +[TVLPersistenceManager URLForRecording];
  }

  v16 = _TVLLogDefault_log_0;
  if (os_log_type_enabled(_TVLLogDefault_log_0, OS_LOG_TYPE_ERROR))
  {
    +[(TVLPersistenceManager *)v16];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (id)allRecordingPaths
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [self recordingsDirectory:defaultManager];
  v10 = 0;
  v5 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    if (_TVLLogDefault_onceToken_0 != -1)
    {
      +[TVLPersistenceManager URLForRecording];
    }

    v7 = _TVLLogDefault_log_0;
    if (os_log_type_enabled(_TVLLogDefault_log_0, OS_LOG_TYPE_ERROR))
    {
      +[(TVLPersistenceManager *)v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (void)eraseAllRecordings
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  path = [a2 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CD78000, v5, v6, "Failed to remove directory at path %@ with error %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)URLForRecording
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  path = [a2 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CD78000, v5, v6, "Failed to create recordings directory at path %@ with error %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)allRecordingPaths
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  path = [a2 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CD78000, v5, v6, "Failed to retrieve contents of directory at path %@ with error %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end