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
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [(PPSSubmissionRecord *)self filePath];
    [v4 removeItemAtURL:v3 error:0];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PPSSubmissionRecord *)self filePath];
  v6 = [v4 stringWithFormat:@"filePath='%@'", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(PPSSubmissionRecord *)self fileType];
  v9 = [v7 stringWithFormat:@"fileType='%@'", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(PPSSubmissionRecord *)self issueCategory];
  v12 = [v10 stringWithFormat:@"issueCategory='%@'", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(PPSSubmissionRecord *)self issueDescription];
  v15 = [v13 stringWithFormat:@"issueDescription='%@'", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(PPSSubmissionRecord *)self recordType];
  v18 = [v16 stringWithFormat:@"recordType='%@'", v17];
  [v3 addObject:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [(PPSSubmissionRecord *)self targetContainer];
  v21 = [v19 stringWithFormat:@"targetContainer='%@'", v20];
  [v3 addObject:v21];

  v22 = [(PPSSubmissionRecord *)self contextDictionary];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __34__PPSSubmissionRecord_description__block_invoke;
  v31 = &unk_1E8519700;
  v32 = v3;
  v23 = v3;
  [v22 enumerateKeysAndObjectsUsingBlock:&v28];

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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PPSSubmissionRecord *)self filePath];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PPSSubmissionRecord *)self fileType];
  if (v7)
  {
    v8 = [(PPSSubmissionRecord *)self issueCategory];
    if (v8)
    {
      v9 = [(PPSSubmissionRecord *)self recordType];
      if (v9)
      {
        v10 = [(PPSSubmissionRecord *)self targetContainer];
        v11 = v10 != 0;
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