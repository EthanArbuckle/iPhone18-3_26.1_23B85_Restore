@interface PPSSubmissionUtilities
+ (BOOL)submit:(id)submit;
+ (id)taskingTables;
@end

@implementation PPSSubmissionUtilities

+ (BOOL)submit:(id)submit
{
  v30 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if ([submitCopy isValid])
  {
    issueCategory = [submitCopy issueCategory];
    issueDescription = [submitCopy issueDescription];
    fileType = [submitCopy fileType];
    filePath = [submitCopy filePath];
    path = [filePath path];
    targetContainer = [submitCopy targetContainer];
    recordType = [submitCopy recordType];
    [submitCopy contextDictionary];
    v21 = v23 = 0;
    v11 = DRSubmitLogToCKContainer();
    v22 = 0;

    v12 = PLLogSubmission();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        issueCategory2 = [submitCopy issueCategory];
        *buf = 138412802;
        v25 = @"com.apple.perfpowerservices";
        v26 = 2112;
        v27 = issueCategory2;
        v28 = 2112;
        v29 = submitCopy;
        _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_INFO, "Submitted record for '%@:%@'  to DiagnosticPipeline: %@", buf, 0x20u);
      }

      if (![submitCopy isExpedited])
      {
        v18 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v15 = _DRCTriggerCloudKitWork();
      v13 = 0;
      v16 = PLLogSubmission();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "Successfully triggered DiagnosticPipeline upload session", buf, 2u);
        }

        v18 = 1;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(PPSSubmissionUtilities *)v13 submit:v17];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PPSSubmissionUtilities *)submitCopy submit:v13];
    }

    v18 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)taskingTables
{
  if (!+[PLDefaults taskMode])
  {
    goto LABEL_5;
  }

  if (taskingTables_onceToken != -1)
  {
    +[PPSSubmissionUtilities taskingTables];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = 0;
  }

  else
  {
LABEL_5:
    v2 = taskingTables_result;
  }

  return v2;
}

void __39__PPSSubmissionUtilities_taskingTables__block_invoke()
{
  v0 = [PLDefaults objectForKey:@"PPSTaskingTables" ifNotSet:0];
  v1 = taskingTables_result;
  taskingTables_result = v0;

  if (+[PLDefaults debugEnabled])
  {
    v2 = PLLogSubmission();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __39__PPSSubmissionUtilities_taskingTables__block_invoke_cold_1(v2);
    }
  }
}

+ (void)submit:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 issueCategory];
  v6 = 138412802;
  v7 = @"com.apple.perfpowerservices";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to submit record for '%@:%@' to DiagnosticPipeline: %@", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)submit:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to trigger DiagnosticPipeline upload session with error '%@'", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __39__PPSSubmissionUtilities_taskingTables__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = taskingTables_result;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "PPSTaskingTables=%@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end