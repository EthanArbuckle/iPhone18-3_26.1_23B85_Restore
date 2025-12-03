@interface PLSubmissionRecord
+ (id)getCKSubmissionDirPathForTag:(id)tag;
- (PLSubmissionRecord)initWithCKFilePath:(id)path tagUUID:(id)d tagConfig:(id)config configUUID:(id)iD configDateReceived:(id)received configDateApplied:(id)applied;
- (PLSubmissionRecord)initWithCoder:(id)coder;
- (void)cleanup;
- (void)emitAttemptEvent;
- (void)emitSuccessEvent;
- (void)encodeWithCoder:(id)coder;
- (void)removeFileAtPath:(id)path;
@end

@implementation PLSubmissionRecord

+ (id)getCKSubmissionDirPathForTag:(id)tag
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Powerlog_%@", tag];
  v4 = [@"/tmp/powerlog/cloud/" stringByAppendingPathComponent:v3];

  return v4;
}

- (PLSubmissionRecord)initWithCKFilePath:(id)path tagUUID:(id)d tagConfig:(id)config configUUID:(id)iD configDateReceived:(id)received configDateApplied:(id)applied
{
  pathCopy = path;
  dCopy = d;
  configCopy = config;
  iDCopy = iD;
  receivedCopy = received;
  appliedCopy = applied;
  v28.receiver = self;
  v28.super_class = PLSubmissionRecord;
  v20 = [(PLSubmissionRecord *)&v28 init];
  v21 = v20;
  if (v20)
  {
    [(PLSubmissionRecord *)v20 setFilePath:pathCopy];
    [(PLSubmissionRecord *)v21 setTagUUID:dCopy];
    [(PLSubmissionRecord *)v21 setTagConfig:configCopy];
    [(PLSubmissionRecord *)v21 setInSubmission:0];
    v27 = configCopy;
    [PLSubmissionRecord getDASubmissionDirPathForTag:dCopy];
    v22 = appliedCopy;
    v24 = v23 = iDCopy;
    [(PLSubmissionRecord *)v21 setDaFileDirPath:v24];

    v25 = [PLSubmissionRecord getCKSubmissionDirPathForTag:dCopy];
    [(PLSubmissionRecord *)v21 setCkFileDirPath:v25];

    iDCopy = v23;
    appliedCopy = v22;
    objc_storeStrong(&v21->_configUUID, iD);
    objc_storeStrong(&v21->_configDateApplied, applied);
    configCopy = v27;
    objc_storeStrong(&v21->_configDateReceived, received);
  }

  return v21;
}

- (void)emitAttemptEvent
{
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"attempt" forKeyedSubscript:@"iCloudSubmissionState"];
  tagConfig = [(PLSubmissionRecord *)self tagConfig];
  v5 = [tagConfig objectForKeyedSubscript:@"Reason"];
  [dictionary setObject:v5 forKeyedSubscript:@"TaskingReason"];

  configUUID = [(PLSubmissionRecord *)self configUUID];

  if (configUUID)
  {
    configUUID2 = [(PLSubmissionRecord *)self configUUID];
    uUIDString = [configUUID2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"DPTaskingUUID"];

    v9 = MEMORY[0x1E696AD98];
    configDateApplied = [(PLSubmissionRecord *)self configDateApplied];
    configDateReceived = [(PLSubmissionRecord *)self configDateReceived];
    [configDateApplied timeIntervalSinceDate:configDateReceived];
    v12 = [v9 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:@"TaskingDelayFromDPBlobReceivedTime"];
  }

  configDateApplied2 = [(PLSubmissionRecord *)self configDateApplied];

  if (configDateApplied2)
  {
    v14 = MEMORY[0x1E696AD98];
    configDateApplied3 = [(PLSubmissionRecord *)self configDateApplied];
    [monotonicDate timeIntervalSinceDate:configDateApplied3];
    v16 = [v14 numberWithDouble:?];
    [dictionary setObject:v16 forKeyedSubscript:@"TaskingDurationStartToiCloudAttempt"];
  }

  _submitTaskingCAEventPayload(dictionary, @"Attempting log upload");
}

- (void)emitSuccessEvent
{
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"success" forKeyedSubscript:@"iCloudSubmissionState"];
  tagConfig = [(PLSubmissionRecord *)self tagConfig];
  v5 = [tagConfig objectForKeyedSubscript:@"Reason"];
  [dictionary setObject:v5 forKeyedSubscript:@"TaskingReason"];

  configUUID = [(PLSubmissionRecord *)self configUUID];

  if (configUUID)
  {
    configUUID2 = [(PLSubmissionRecord *)self configUUID];
    uUIDString = [configUUID2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"DPTaskingUUID"];
  }

  configDateApplied = [(PLSubmissionRecord *)self configDateApplied];

  if (configDateApplied)
  {
    v10 = MEMORY[0x1E696AD98];
    configDateApplied2 = [(PLSubmissionRecord *)self configDateApplied];
    [monotonicDate timeIntervalSinceDate:configDateApplied2];
    v12 = [v10 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:@"TaskingDurationStartToiCloudSuccess"];
  }

  _submitTaskingCAEventPayload(dictionary, @"Successful log upload");
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  filePath = [(PLSubmissionRecord *)self filePath];
  [coderCopy encodeObject:filePath forKey:@"filePath"];

  tagUUID = [(PLSubmissionRecord *)self tagUUID];
  [coderCopy encodeObject:tagUUID forKey:@"tagUUID"];

  tagConfig = [(PLSubmissionRecord *)self tagConfig];
  [coderCopy encodeObject:tagConfig forKey:@"tagConfig"];

  configUUID = [(PLSubmissionRecord *)self configUUID];

  if (configUUID)
  {
    configUUID2 = [(PLSubmissionRecord *)self configUUID];
    [coderCopy encodeObject:configUUID2 forKey:@"configUUID"];
  }

  configDateApplied = [(PLSubmissionRecord *)self configDateApplied];

  if (configDateApplied)
  {
    configDateApplied2 = [(PLSubmissionRecord *)self configDateApplied];
    [coderCopy encodeObject:configDateApplied2 forKey:@"configDateApplied"];
  }

  configDateReceived = [(PLSubmissionRecord *)self configDateReceived];

  v12 = coderCopy;
  if (configDateReceived)
  {
    configDateReceived2 = [(PLSubmissionRecord *)self configDateReceived];
    [coderCopy encodeObject:configDateReceived2 forKey:@"configDateReceived"];

    v12 = coderCopy;
  }
}

- (PLSubmissionRecord)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tagUUID"];
  v7 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:3];
  v9 = [v7 setWithArray:{v8, v17, v18}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"tagConfig"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configUUID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configDateReceived"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configDateApplied"];

  v14 = [(PLSubmissionRecord *)self initWithCKFilePath:v5 tagUUID:v6 tagConfig:v10 configUUID:v11 configDateReceived:v12 configDateApplied:v13];
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)cleanup
{
  v14 = *MEMORY[0x1E69E9840];
  if ([PLDefaults BOOLForKey:@"PLSubmissionCleanup" ifNotSet:1])
  {
    v3 = PLLogSubmission();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up files for submission record %@", &v12, 0xCu);
    }

    filePath = [(PLSubmissionRecord *)self filePath];
    [(PLSubmissionRecord *)self removeFileAtPath:filePath];

    daFileDirPath = [(PLSubmissionRecord *)self daFileDirPath];
    [(PLSubmissionRecord *)self removeFileAtPath:daFileDirPath];

    ckFileDirPath = [(PLSubmissionRecord *)self ckFileDirPath];
    [(PLSubmissionRecord *)self removeFileAtPath:ckFileDirPath];

    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"PLSubmissionConfig"];
    tagUUID = [(PLSubmissionRecord *)self tagUUID];
    v10 = [v8 stringByAppendingPathComponent:tagUUID];
    [(PLSubmissionRecord *)self removeFileAtPath:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v7 = [defaultManager2 removeItemAtPath:pathCopy error:&v12];
    v8 = v12;

    v9 = PLLogSubmission();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = pathCopy;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Removed item at %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionRecord removeFileAtPath:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Failed to remove item at %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end