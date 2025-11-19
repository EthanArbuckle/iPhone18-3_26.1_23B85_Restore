@interface UIKeyboardDiagnosticCollection
@end

@implementation UIKeyboardDiagnosticCollection

uint64_t __76___UIKeyboardDiagnosticCollection__processIsEntitledForDiagnosticCollection__block_invoke()
{
  result = UISelfHasEntitlement(@"com.apple.diagnosticpipeline.request");
  _MergedGlobals_974 = result;
  return result;
}

double __57___UIKeyboardDiagnosticCollection__matDurationToSeconds___block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 * 0.000000001;
  qword_1ED49C5F8 = *&result;
  return result;
}

void __51___UIKeyboardDiagnosticCollection__diagnosticQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.KeyboardDiagnosticQueue", v2);
  v1 = qword_1ED49C608;
  qword_1ED49C608 = v0;
}

void __105___UIKeyboardDiagnosticCollection__requestTailspinWithDescription_startMAT_endMAT_ifExceedsThresholdSec___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40) * 1000.0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v2 initWithObjectsAndKeys:{v3, @"durationms", v4, @"starttime", v5, @"endtime", @"239", @"bugtype", v6, @"workflow", &unk_1EFE2B278, @"exceededThresholds", v8, @"IncidentUUID", 0}];

  v17 = 0;
  LODWORD(v5) = DRTailspinRequest();
  v10 = 0;
  v11 = _UIKeyboardLog();
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) UTF8String];
      *buf = 136315138;
      v19 = v13;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "%s DiagnosticPipeline tailspin request successful.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 32) UTF8String];
    v15 = [v10 localizedDescription];
    v16 = [v15 UTF8String];
    *buf = 136315394;
    v19 = v14;
    v20 = 2080;
    v21 = v16;
    _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s DiagnosticPipeline tailspin request failed with error: %s.", buf, 0x16u);
  }
}

@end