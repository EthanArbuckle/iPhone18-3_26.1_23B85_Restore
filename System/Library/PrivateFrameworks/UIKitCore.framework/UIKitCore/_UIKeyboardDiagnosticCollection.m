@interface _UIKeyboardDiagnosticCollection
+ (BOOL)_processIsEntitledForDiagnosticCollection;
+ (double)_matDurationToSeconds:(unint64_t)a3;
+ (id)_diagnosticQueue;
+ (void)_requestTailspinWithDescription:(id)a3 startMAT:(unint64_t)a4 endMAT:(unint64_t)a5 ifExceedsThresholdSec:(double)a6;
@end

@implementation _UIKeyboardDiagnosticCollection

+ (BOOL)_processIsEntitledForDiagnosticCollection
{
  if (qword_1ED49C600 != -1)
  {
    dispatch_once(&qword_1ED49C600, &__block_literal_global_9);
  }

  return _MergedGlobals_974;
}

+ (double)_matDurationToSeconds:(unint64_t)a3
{
  if (qword_1ED49C5F0 != -1)
  {
    dispatch_once(&qword_1ED49C5F0, &__block_literal_global_7);
  }

  return *&qword_1ED49C5F8 * a3;
}

+ (id)_diagnosticQueue
{
  if (qword_1ED49C610 != -1)
  {
    dispatch_once(&qword_1ED49C610, &__block_literal_global_14);
  }

  v3 = qword_1ED49C608;

  return v3;
}

+ (void)_requestTailspinWithDescription:(id)a3 startMAT:(unint64_t)a4 endMAT:(unint64_t)a5 ifExceedsThresholdSec:(double)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (MEMORY[0x1EEE86BF0])
  {
    if (+[_UIKeyboardDiagnosticCollection _processIsEntitledForDiagnosticCollection])
    {
      [_UIKeyboardDiagnosticCollection _matDurationToSeconds:a5 - a4];
      if (v10 > a6)
      {
        v11 = v10;
        v12 = _UIKeyboardLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v20 = [v9 UTF8String];
          v21 = 2048;
          v22 = v11;
          v23 = 2048;
          v24 = a6;
          _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s took %f which exceeded the threshold of %f. Attempting to save tailspin using DiagnosticPipeline.", buf, 0x20u);
        }

        v13 = +[_UIKeyboardDiagnosticCollection _diagnosticQueue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __105___UIKeyboardDiagnosticCollection__requestTailspinWithDescription_startMAT_endMAT_ifExceedsThresholdSec___block_invoke;
        v14[3] = &unk_1E70F38C0;
        v16 = v11;
        v17 = a4;
        v18 = a5;
        v15 = v9;
        dispatch_async(v13, v14);
      }
    }
  }
}

@end