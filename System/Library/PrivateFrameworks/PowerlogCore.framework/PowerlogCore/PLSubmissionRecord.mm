@interface PLSubmissionRecord
+ (id)getCKSubmissionDirPathForTag:(id)a3;
- (PLSubmissionRecord)initWithCKFilePath:(id)a3 tagUUID:(id)a4 tagConfig:(id)a5 configUUID:(id)a6 configDateReceived:(id)a7 configDateApplied:(id)a8;
- (PLSubmissionRecord)initWithCoder:(id)a3;
- (void)cleanup;
- (void)emitAttemptEvent;
- (void)emitSuccessEvent;
- (void)encodeWithCoder:(id)a3;
- (void)removeFileAtPath:(id)a3;
@end

@implementation PLSubmissionRecord

+ (id)getCKSubmissionDirPathForTag:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Powerlog_%@", a3];
  v4 = [@"/tmp/powerlog/cloud/" stringByAppendingPathComponent:v3];

  return v4;
}

- (PLSubmissionRecord)initWithCKFilePath:(id)a3 tagUUID:(id)a4 tagConfig:(id)a5 configUUID:(id)a6 configDateReceived:(id)a7 configDateApplied:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = PLSubmissionRecord;
  v20 = [(PLSubmissionRecord *)&v28 init];
  v21 = v20;
  if (v20)
  {
    [(PLSubmissionRecord *)v20 setFilePath:v14];
    [(PLSubmissionRecord *)v21 setTagUUID:v15];
    [(PLSubmissionRecord *)v21 setTagConfig:v16];
    [(PLSubmissionRecord *)v21 setInSubmission:0];
    v27 = v16;
    [PLSubmissionRecord getDASubmissionDirPathForTag:v15];
    v22 = v19;
    v24 = v23 = v17;
    [(PLSubmissionRecord *)v21 setDaFileDirPath:v24];

    v25 = [PLSubmissionRecord getCKSubmissionDirPathForTag:v15];
    [(PLSubmissionRecord *)v21 setCkFileDirPath:v25];

    v17 = v23;
    v19 = v22;
    objc_storeStrong(&v21->_configUUID, a6);
    objc_storeStrong(&v21->_configDateApplied, a8);
    v16 = v27;
    objc_storeStrong(&v21->_configDateReceived, a7);
  }

  return v21;
}

- (void)emitAttemptEvent
{
  v17 = [MEMORY[0x1E695DF00] monotonicDate];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"attempt" forKeyedSubscript:@"iCloudSubmissionState"];
  v4 = [(PLSubmissionRecord *)self tagConfig];
  v5 = [v4 objectForKeyedSubscript:@"Reason"];
  [v3 setObject:v5 forKeyedSubscript:@"TaskingReason"];

  v6 = [(PLSubmissionRecord *)self configUUID];

  if (v6)
  {
    v7 = [(PLSubmissionRecord *)self configUUID];
    v8 = [v7 UUIDString];
    [v3 setObject:v8 forKeyedSubscript:@"DPTaskingUUID"];

    v9 = MEMORY[0x1E696AD98];
    v10 = [(PLSubmissionRecord *)self configDateApplied];
    v11 = [(PLSubmissionRecord *)self configDateReceived];
    [v10 timeIntervalSinceDate:v11];
    v12 = [v9 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"TaskingDelayFromDPBlobReceivedTime"];
  }

  v13 = [(PLSubmissionRecord *)self configDateApplied];

  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [(PLSubmissionRecord *)self configDateApplied];
    [v17 timeIntervalSinceDate:v15];
    v16 = [v14 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"TaskingDurationStartToiCloudAttempt"];
  }

  _submitTaskingCAEventPayload(v3, @"Attempting log upload");
}

- (void)emitSuccessEvent
{
  v13 = [MEMORY[0x1E695DF00] monotonicDate];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"success" forKeyedSubscript:@"iCloudSubmissionState"];
  v4 = [(PLSubmissionRecord *)self tagConfig];
  v5 = [v4 objectForKeyedSubscript:@"Reason"];
  [v3 setObject:v5 forKeyedSubscript:@"TaskingReason"];

  v6 = [(PLSubmissionRecord *)self configUUID];

  if (v6)
  {
    v7 = [(PLSubmissionRecord *)self configUUID];
    v8 = [v7 UUIDString];
    [v3 setObject:v8 forKeyedSubscript:@"DPTaskingUUID"];
  }

  v9 = [(PLSubmissionRecord *)self configDateApplied];

  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(PLSubmissionRecord *)self configDateApplied];
    [v13 timeIntervalSinceDate:v11];
    v12 = [v10 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"TaskingDurationStartToiCloudSuccess"];
  }

  _submitTaskingCAEventPayload(v3, @"Successful log upload");
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(PLSubmissionRecord *)self filePath];
  [v14 encodeObject:v4 forKey:@"filePath"];

  v5 = [(PLSubmissionRecord *)self tagUUID];
  [v14 encodeObject:v5 forKey:@"tagUUID"];

  v6 = [(PLSubmissionRecord *)self tagConfig];
  [v14 encodeObject:v6 forKey:@"tagConfig"];

  v7 = [(PLSubmissionRecord *)self configUUID];

  if (v7)
  {
    v8 = [(PLSubmissionRecord *)self configUUID];
    [v14 encodeObject:v8 forKey:@"configUUID"];
  }

  v9 = [(PLSubmissionRecord *)self configDateApplied];

  if (v9)
  {
    v10 = [(PLSubmissionRecord *)self configDateApplied];
    [v14 encodeObject:v10 forKey:@"configDateApplied"];
  }

  v11 = [(PLSubmissionRecord *)self configDateReceived];

  v12 = v14;
  if (v11)
  {
    v13 = [(PLSubmissionRecord *)self configDateReceived];
    [v14 encodeObject:v13 forKey:@"configDateReceived"];

    v12 = v14;
  }
}

- (PLSubmissionRecord)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filePath"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tagUUID"];
  v7 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:3];
  v9 = [v7 setWithArray:{v8, v17, v18}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"tagConfig"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configUUID"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configDateReceived"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configDateApplied"];

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
      v13 = self;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up files for submission record %@", &v12, 0xCu);
    }

    v4 = [(PLSubmissionRecord *)self filePath];
    [(PLSubmissionRecord *)self removeFileAtPath:v4];

    v5 = [(PLSubmissionRecord *)self daFileDirPath];
    [(PLSubmissionRecord *)self removeFileAtPath:v5];

    v6 = [(PLSubmissionRecord *)self ckFileDirPath];
    [(PLSubmissionRecord *)self removeFileAtPath:v6];

    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:@"PLSubmissionConfig"];
    v9 = [(PLSubmissionRecord *)self tagUUID];
    v10 = [v8 stringByAppendingPathComponent:v9];
    [(PLSubmissionRecord *)self removeFileAtPath:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v12];
    v8 = v12;

    v9 = PLLogSubmission();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v3;
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