@interface WBSPasswordWarningTopFraudTargets
- (WBSPasswordWarningTopFraudTargets)initWithHighPriorityTargets:(id)targets targets:(id)a4 financialTargets:(id)financialTargets;
- (WBSPasswordWarningTopFraudTargets)initWithSnapshotData:(id)data error:(id *)error;
@end

@implementation WBSPasswordWarningTopFraudTargets

- (WBSPasswordWarningTopFraudTargets)initWithHighPriorityTargets:(id)targets targets:(id)a4 financialTargets:(id)financialTargets
{
  targetsCopy = targets;
  v9 = a4;
  financialTargetsCopy = financialTargets;
  v20.receiver = self;
  v20.super_class = WBSPasswordWarningTopFraudTargets;
  v11 = [(WBSPasswordWarningTopFraudTargets *)&v20 init];
  if (v11)
  {
    v12 = [targetsCopy copy];
    highPriorityFraudTargets = v11->_highPriorityFraudTargets;
    v11->_highPriorityFraudTargets = v12;

    v14 = [v9 copy];
    fraudTargets = v11->_fraudTargets;
    v11->_fraudTargets = v14;

    v16 = [financialTargetsCopy copy];
    financialFraudTargets = v11->_financialFraudTargets;
    v11->_financialFraudTargets = v16;

    v18 = v11;
  }

  return v11;
}

- (WBSPasswordWarningTopFraudTargets)initWithSnapshotData:(id)data error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF20] safari_dictionaryWithJSONOrPropertyListData:data];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"highPriorityFraudTargets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 objectForKeyedSubscript:@"fraudTargets"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v7 objectForKeyedSubscript:@"financialFraudTargets"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self = [(WBSPasswordWarningTopFraudTargets *)self initWithHighPriorityTargets:v8 targets:v9 financialTargets:v10];
          selfCopy = self;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v36 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(WBSPasswordWarningTopFraudTargets *)v36 initWithSnapshotData:v37 error:v38, v39, v40, v41, v42, v43];
          if (!error)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (error)
        {
LABEL_17:
          v44 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A250];
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"financialFraudTargets", *MEMORY[0x1E696A578]];
          v51 = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          *error = [v44 errorWithDomain:v45 code:259 userInfo:v47];
        }

LABEL_18:
        selfCopy = 0;
        goto LABEL_19;
      }

      v25 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordWarningTopFraudTargets *)v25 initWithSnapshotData:v26 error:v27, v28, v29, v30, v31, v32];
        if (error)
        {
          goto LABEL_14;
        }
      }

      else if (error)
      {
LABEL_14:
        v33 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A250];
        v52 = *MEMORY[0x1E696A578];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"fraudTargets"];
        v53 = v10;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *error = [v33 errorWithDomain:v34 code:259 userInfo:v35];

        goto LABEL_18;
      }

      selfCopy = 0;
      goto LABEL_20;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordWarningTopFraudTargets *)v15 initWithSnapshotData:v16 error:v17, v18, v19, v20, v21, v22];
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      v54 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"highPriorityFraudTargets"];
      v55 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [v23 errorWithDomain:v24 code:259 userInfo:v10];
      *error = selfCopy = 0;
      goto LABEL_19;
    }

    selfCopy = 0;
    goto LABEL_21;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [WBSPasswordWarningTopFraudTargets initWithSnapshotData:v12 error:?];
    if (error)
    {
      goto LABEL_8;
    }

LABEL_24:
    selfCopy = 0;
    goto LABEL_22;
  }

  if (!error)
  {
    goto LABEL_24;
  }

LABEL_8:
  v13 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A250];
  v56 = *MEMORY[0x1E696A578];
  v57[0] = @"Failed to decode topFraudTargets plist data.";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  [v13 errorWithDomain:v14 code:259 userInfo:v8];
  *error = selfCopy = 0;
LABEL_21:

LABEL_22:
  v48 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end