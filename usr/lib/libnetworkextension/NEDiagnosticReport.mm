@interface NEDiagnosticReport
+ (void)logInternalError:(id)error subType:(id)type context:(id)context;
@end

@implementation NEDiagnosticReport

+ (void)logInternalError:(id)error subType:(id)type context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  typeCopy = type;
  contextCopy = context;
  if (errorCopy && typeCopy)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (processName)
    {
      v12 = processName;
    }

    else
    {
      v12 = @"<unknown>";
    }

    os_unfair_lock_lock(&logInternalError_subType_context__lock);
    [logInternalError_subType_context__timestampLoggedError timeIntervalSinceNow];
    if (v13 == 0.0 || fabs(v13) >= *&logInternalError_subType_context__frequencyLoggedError)
    {
      date = [MEMORY[0x1E695DF00] date];
      v15 = logInternalError_subType_context__timestampLoggedError;
      logInternalError_subType_context__timestampLoggedError = date;

      logInternalError_subType_context__frequencyLoggedError = 0x40F5180000000000;
      os_unfair_lock_unlock(&logInternalError_subType_context__lock);
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412802;
        v24 = typeCopy;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = contextCopy;
        _os_log_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_DEFAULT, "NEDiagnosticReport - subType <%@> for %@ with context <%@>", &v23, 0x20u);
      }

      v17 = objc_alloc_init(MEMORY[0x1E69D4F78]);
      v18 = v17;
      if (v17)
      {
        v19 = [v17 signatureWithDomain:@"NetworkExtension" type:errorCopy subType:typeCopy detectedProcess:v12 triggerThresholdValues:0];
        v20 = v19;
        if (v19)
        {
          if (contextCopy)
          {
            [v19 setObject:contextCopy forKeyedSubscript:*MEMORY[0x1E69D50E0]];
          }

          [v18 snapshotWithSignature:v20 delay:0 events:0 payload:0 actions:&__block_literal_global reply:0.0];
        }

        else
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_ERROR, "NEDiagnosticReport - failed to get signature", &v23, 2u);
          }
        }
      }
    }

    else
    {
      os_unfair_lock_unlock(&logInternalError_subType_context__lock);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __55__NEDiagnosticReport_logInternalError_subType_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEFAULT, "NEDiagnosticReport - submission response = %@", &v6, 0xCu);
  }

  v4 = [v2 objectForKeyedSubscript:@"success"];
  if ([v4 intValue] != 1)
  {
    os_unfair_lock_lock(&logInternalError_subType_context__lock);
    logInternalError_subType_context__frequencyLoggedError = 0x40AC200000000000;
    os_unfair_lock_unlock(&logInternalError_subType_context__lock);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end