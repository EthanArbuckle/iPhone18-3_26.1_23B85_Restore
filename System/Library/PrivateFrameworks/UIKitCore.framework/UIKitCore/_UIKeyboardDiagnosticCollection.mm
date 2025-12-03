@interface _UIKeyboardDiagnosticCollection
+ (BOOL)_processIsEntitledForDiagnosticCollection;
+ (double)_matDurationToSeconds:(unint64_t)seconds;
+ (id)_diagnosticQueue;
+ (void)_requestTailspinWithDescription:(id)description startMAT:(unint64_t)t endMAT:(unint64_t)aT ifExceedsThresholdSec:(double)sec;
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

+ (double)_matDurationToSeconds:(unint64_t)seconds
{
  if (qword_1ED49C5F0 != -1)
  {
    dispatch_once(&qword_1ED49C5F0, &__block_literal_global_7);
  }

  return *&qword_1ED49C5F8 * seconds;
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

+ (void)_requestTailspinWithDescription:(id)description startMAT:(unint64_t)t endMAT:(unint64_t)aT ifExceedsThresholdSec:(double)sec
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (MEMORY[0x1EEE86BF0])
  {
    if (+[_UIKeyboardDiagnosticCollection _processIsEntitledForDiagnosticCollection])
    {
      [_UIKeyboardDiagnosticCollection _matDurationToSeconds:aT - t];
      if (v10 > sec)
      {
        v11 = v10;
        v12 = _UIKeyboardLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          uTF8String = [descriptionCopy UTF8String];
          v21 = 2048;
          v22 = v11;
          v23 = 2048;
          secCopy = sec;
          _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s took %f which exceeded the threshold of %f. Attempting to save tailspin using DiagnosticPipeline.", buf, 0x20u);
        }

        v13 = +[_UIKeyboardDiagnosticCollection _diagnosticQueue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __105___UIKeyboardDiagnosticCollection__requestTailspinWithDescription_startMAT_endMAT_ifExceedsThresholdSec___block_invoke;
        v14[3] = &unk_1E70F38C0;
        v16 = v11;
        tCopy = t;
        aTCopy = aT;
        v15 = descriptionCopy;
        dispatch_async(v13, v14);
      }
    }
  }
}

@end