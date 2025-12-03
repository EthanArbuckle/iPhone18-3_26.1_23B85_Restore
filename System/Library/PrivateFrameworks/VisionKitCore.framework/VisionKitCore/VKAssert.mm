@interface VKAssert
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format;
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format;
@end

@implementation VKAssert

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v35 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v16 = [[v14 alloc] initWithFormat:formatCopy arguments:&v36];

  v17 = os_log_create("com.apple.VisionKit", "Assert");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    conditionCopy = condition;
    v31 = 2080;
    nameCopy = name;
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_1B4335000, v17, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (crashCopy)
  {
    v18 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [VKAssert handleFailedAssertWithCondition:v16 functionName:v18 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (alertCopy)
  {
    isInternalBuild = vk_isInternalBuild();
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo environment];
    v22 = v21 = name;
    v23 = [v22 objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    bOOLValue = [v23 BOOLValue];

    if (isInternalBuild && (bOOLValue & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notes TTR: %@", v16];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed assertion (%s) in %s:\n%@", condition, v21, v16];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I got this alert right after I...\n\n%@", v26];
      if (!crashCopy)
      {
        v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [VKAssert handleFailedAssertWithCondition:v16 functionName:v28 simulateCrash:? showAlert:? alertMessage:? format:?];
        }
      }

      [VKRadarUtilities promptUserToFileBugWithAlertMessage:messageCopy bugTitle:v25 bugDescription:v27];
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v12 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v14 = [[v12 alloc] initWithFormat:formatCopy arguments:&v15];

  [self handleFailedAssertWithCondition:condition functionName:name simulateCrash:crashCopy showAlert:alertCopy alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B4335000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end