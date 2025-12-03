@interface PPSSubmissionRecord
- (BOOL)isValid;
- (id)description;
- (void)cleanup;
@end

@implementation PPSSubmissionRecord

- (void)cleanup
{
  if ([PLDefaults BOOLForKey:@"PLSubmissionCleanup" ifNotSet:1])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    filePath = [(PPSSubmissionRecord *)self filePath];
    [defaultManager removeItemAtURL:filePath error:0];
  }
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  filePath = [(PPSSubmissionRecord *)self filePath];
  v6 = [v4 stringWithFormat:@"filePath='%@'", filePath];
  [array addObject:v6];

  v7 = MEMORY[0x1E696AEC0];
  fileType = [(PPSSubmissionRecord *)self fileType];
  v9 = [v7 stringWithFormat:@"fileType='%@'", fileType];
  [array addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  issueCategory = [(PPSSubmissionRecord *)self issueCategory];
  v12 = [v10 stringWithFormat:@"issueCategory='%@'", issueCategory];
  [array addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  issueDescription = [(PPSSubmissionRecord *)self issueDescription];
  v15 = [v13 stringWithFormat:@"issueDescription='%@'", issueDescription];
  [array addObject:v15];

  v16 = MEMORY[0x1E696AEC0];
  recordType = [(PPSSubmissionRecord *)self recordType];
  v18 = [v16 stringWithFormat:@"recordType='%@'", recordType];
  [array addObject:v18];

  v19 = MEMORY[0x1E696AEC0];
  targetContainer = [(PPSSubmissionRecord *)self targetContainer];
  v21 = [v19 stringWithFormat:@"targetContainer='%@'", targetContainer];
  [array addObject:v21];

  contextDictionary = [(PPSSubmissionRecord *)self contextDictionary];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __34__PPSSubmissionRecord_description__block_invoke;
  v31 = &unk_1E8519700;
  v32 = array;
  v23 = array;
  [contextDictionary enumerateKeysAndObjectsUsingBlock:&v28];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [v23 componentsJoinedByString:{@", "}];
  v26 = [v24 stringWithFormat:@"<PPSSubmissionRecord: %@>", v25, v28, v29, v30, v31];

  return v26;
}

void __34__PPSSubmissionRecord_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@='%@'", a2, a3];
  [v3 addObject:v4];
}

- (BOOL)isValid
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  filePath = [(PPSSubmissionRecord *)self filePath];
  path = [filePath path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (!v6)
  {
    return 0;
  }

  fileType = [(PPSSubmissionRecord *)self fileType];
  if (fileType)
  {
    issueCategory = [(PPSSubmissionRecord *)self issueCategory];
    if (issueCategory)
    {
      recordType = [(PPSSubmissionRecord *)self recordType];
      if (recordType)
      {
        targetContainer = [(PPSSubmissionRecord *)self targetContainer];
        v11 = targetContainer != 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end