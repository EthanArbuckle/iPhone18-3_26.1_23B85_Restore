@interface PXBackgroundSystemSchedulerWrapper
+ (BOOL)signalTaskStartedWithError:(id *)error;
+ (BOOL)signalTaskStoppedWithError:(id *)error;
+ (NSDictionary)taskParameters;
@end

@implementation PXBackgroundSystemSchedulerWrapper

+ (NSDictionary)taskParameters
{
  v10[3] = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  v4 = *MEMORY[0x1E698E4F0];
  v9[0] = *MEMORY[0x1E698E4D8];
  v9[1] = v4;
  v10[0] = &unk_1F190D270;
  v10[1] = @"com.apple.photos:memoryCreation";
  v9[2] = *MEMORY[0x1E698E4E0];
  v8 = processName;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v6;
}

+ (BOOL)signalTaskStoppedWithError:(id *)error
{
  taskParameters = [self taskParameters];
  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  LOBYTE(error) = [mEMORY[0x1E698E4B8] taskStoppedWithParameters:taskParameters error:error];

  return error;
}

+ (BOOL)signalTaskStartedWithError:(id *)error
{
  taskParameters = [self taskParameters];
  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  LOBYTE(error) = [mEMORY[0x1E698E4B8] taskStartedWithParameters:taskParameters error:error];

  return error;
}

@end