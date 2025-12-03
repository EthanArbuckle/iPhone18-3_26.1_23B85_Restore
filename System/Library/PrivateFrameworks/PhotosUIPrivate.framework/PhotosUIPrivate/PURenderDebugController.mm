@interface PURenderDebugController
+ (id)debugFilesDirectory;
+ (id)getDebugFiles;
+ (id)listDebugFilesViewController;
+ (id)shareSheetViewController;
+ (void)deleteDebugDirectory;
+ (void)setCoreImageDebugMode:(BOOL)mode dumpInputs:(BOOL)inputs dumpOutputs:(BOOL)outputs dumpIntermediates:(BOOL)intermediates dumpTiming:(BOOL)timing;
@end

@implementation PURenderDebugController

+ (id)shareSheetViewController
{
  v3 = objc_alloc(MEMORY[0x1E69CD9F8]);
  getDebugFiles = [self getDebugFiles];
  v5 = [v3 initWithActivityItems:getDebugFiles applicationActivities:0];

  return v5;
}

+ (id)listDebugFilesViewController
{
  v2 = objc_alloc_init(PUDebugImageTableViewController);

  return v2;
}

+ (void)deleteDebugDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  debugFilesDirectory = [self debugFilesDirectory];
  v5 = [defaultManager contentsOfDirectoryAtPath:debugFilesDirectory error:0];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PURenderDebugController_deleteDebugDirectory__block_invoke;
  v6[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __47__PURenderDebugController_deleteDebugDirectory__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 debugFilesDirectory];
  v6 = [v4 stringByAppendingPathComponent:v3];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 removeItemAtPath:v6 error:0];
}

+ (id)getDebugFiles
{
  debugFilesDirectory = [self debugFilesDirectory];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:debugFilesDirectory error:0];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__PURenderDebugController_getDebugFiles__block_invoke;
  v11[3] = &unk_1E7B74D80;
  v12 = debugFilesDirectory;
  v6 = v5;
  v13 = v6;
  v7 = debugFilesDirectory;
  [v4 enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __40__PURenderDebugController_getDebugFiles__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 containsString:@"pdf"] & 1) != 0 || objc_msgSend(v6, "containsString:", @"txt"))
  {
    v3 = [*(a1 + 32) stringByAppendingPathComponent:v6];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    [v4 addObject:v5];
  }
}

+ (id)debugFilesDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingString:@"NURenderDebug/"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  return v3;
}

+ (void)setCoreImageDebugMode:(BOOL)mode dumpInputs:(BOOL)inputs dumpOutputs:(BOOL)outputs dumpIntermediates:(BOOL)intermediates dumpTiming:(BOOL)timing
{
  if (!mode)
  {
    return;
  }

  timingCopy = timing;
  intermediatesCopy = intermediates;
  outputsCopy = outputs;
  inputsCopy = inputs;
  v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v14 appendString:@"4 pdf"];
  if (!inputsCopy)
  {
    if (!outputsCopy)
    {
      goto LABEL_4;
    }

LABEL_10:
    [v14 appendString:@" dump-outputs"];
    if (!timingCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v14 appendString:@" dump-inputs"];
  if (outputsCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (timingCopy)
  {
LABEL_5:
    [v14 appendString:@" dump-timing"];
  }

LABEL_6:
  if (intermediatesCopy)
  {
    setenv("CI_DISABLE_MERGING", "1", 1);
    [v14 appendString:@" dump-intermediates"];
  }

  else
  {
    unsetenv("CI_DISABLE_MERGING");
  }

  v12 = v14;
  setenv("CI_PRINT_TREE", [v14 cStringUsingEncoding:1], 1);
  debugFilesDirectory = [self debugFilesDirectory];
  setenv("CI_TEMP_DIR", [debugFilesDirectory UTF8String], 1);
}

@end