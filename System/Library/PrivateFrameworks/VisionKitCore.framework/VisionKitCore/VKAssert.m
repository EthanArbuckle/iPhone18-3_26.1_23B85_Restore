@interface VKAssert
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8;
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7;
@end

@implementation VKAssert

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8
{
  v9 = a6;
  v10 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = MEMORY[0x1E696AEC0];
  v15 = a8;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&v36];

  v17 = os_log_create("com.apple.VisionKit", "Assert");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v30 = a3;
    v31 = 2080;
    v32 = a4;
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_1B4335000, v17, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (v10)
  {
    v18 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [VKAssert handleFailedAssertWithCondition:v16 functionName:v18 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (v9)
  {
    isInternalBuild = vk_isInternalBuild();
    v20 = [MEMORY[0x1E696AE30] processInfo];
    [v20 environment];
    v22 = v21 = a4;
    v23 = [v22 objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    v24 = [v23 BOOLValue];

    if (isInternalBuild && (v24 & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notes TTR: %@", v16];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed assertion (%s) in %s:\n%@", a3, v21, v16];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I got this alert right after I...\n\n%@", v26];
      if (!v10)
      {
        v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [VKAssert handleFailedAssertWithCondition:v16 functionName:v28 simulateCrash:? showAlert:? alertMessage:? format:?];
        }
      }

      [VKRadarUtilities promptUserToFileBugWithAlertMessage:v13 bugTitle:v25 bugDescription:v27];
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = a7;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&v15];

  [a1 handleFailedAssertWithCondition:a3 functionName:a4 simulateCrash:v8 showAlert:v7 alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B4335000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end