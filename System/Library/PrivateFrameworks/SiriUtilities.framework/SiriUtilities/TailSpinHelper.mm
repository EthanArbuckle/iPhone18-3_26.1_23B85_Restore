@interface TailSpinHelper
+ (BOOL)isValidToCreateTailSpin:(id)spin;
+ (BOOL)isValidToDeleteTailSpinDir:(id)dir;
+ (id)getLastSuccessfulTailSpinDate:(id)date;
+ (id)getLogger;
+ (id)getTailSpinDir:(id)dir;
+ (void)setSuccessfulTailSpinDate:(id)date date:(id)a4;
- (void)clearDirectory:(id)directory queue:(id)queue;
- (void)dumpTailSpinOutputToFile:(id)file suiteName:(id)name options:(id)options queue:(id)queue handler:(id)handler;
@end

@implementation TailSpinHelper

+ (id)getLogger
{
  if (getLogger_onceToken != -1)
  {
    +[TailSpinHelper getLogger];
  }

  v3 = getLogger__logger;

  return v3;
}

uint64_t __27__TailSpinHelper_getLogger__block_invoke()
{
  getLogger__logger = os_log_create("com.apple.siri.sirikit", "TailSpinHelper");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)getLastSuccessfulTailSpinDate:(id)date
{
  v3 = MEMORY[0x1E695E000];
  dateCopy = date;
  v5 = [[v3 alloc] initWithSuiteName:dateCopy];

  v6 = [v5 objectForKey:@"siri_tailspin"];

  return v6;
}

+ (void)setSuccessfulTailSpinDate:(id)date date:(id)a4
{
  v5 = MEMORY[0x1E695E000];
  v6 = a4;
  dateCopy = date;
  v8 = [[v5 alloc] initWithSuiteName:dateCopy];

  [v8 setObject:v6 forKey:@"siri_tailspin"];
}

+ (BOOL)isValidToCreateTailSpin:(id)spin
{
  v3 = [TailSpinHelper getLastSuccessfulTailSpinDate:spin];
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5;

    v7 = v6 >= 120.0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)isValidToDeleteTailSpinDir:(id)dir
{
  v3 = [TailSpinHelper getLastSuccessfulTailSpinDate:dir];
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5;

    v7 = v6 >= 172800.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getTailSpinDir:(id)dir
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tailspins/siri/%@/", dir];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

- (void)dumpTailSpinOutputToFile:(id)file suiteName:(id)name options:(id)options queue:(id)queue handler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  nameCopy = name;
  optionsCopy = options;
  queue = queue;
  handlerCopy = handler;
  v15 = [TailSpinHelper getTailSpinDir:nameCopy];
  date = [MEMORY[0x1E695DF00] date];
  v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v17 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v39 = *MEMORY[0x1E696A370];
  v40[0] = &unk_1F5898380;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v38 = 0;
  [defaultManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:v19 error:&v38];
  v20 = v38;

  if (v20)
  {
    queueCopy2 = queue;
    v22 = +[TailSpinHelper getLogger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [TailSpinHelper dumpTailSpinOutputToFile:suiteName:options:queue:handler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    v31 = [fileCopy stringByReplacingOccurrencesOfString:@" " withString:@"-"];

    v23 = MEMORY[0x1E696AEC0];
    [v17 stringFromDate:date];
    v25 = v24 = handlerCopy;
    v30 = [v23 stringWithFormat:@"SiriUtils_%@_%@.tailspin", v31, v25];

    v26 = [v15 stringByAppendingPathComponent:v30];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__TailSpinHelper_dumpTailSpinOutputToFile_suiteName_options_queue_handler___block_invoke;
    block[3] = &unk_1E8650280;
    v34 = nameCopy;
    v35 = v26;
    v27 = v24;
    v37 = v24;
    v36 = optionsCopy;
    v28 = v26;
    dispatch_async(queue, block);

    fileCopy = v31;
    queueCopy2 = queue;
    handlerCopy = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __75__TailSpinHelper_dumpTailSpinOutputToFile_suiteName_options_queue_handler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [TailSpinHelper isValidToCreateTailSpin:*(a1 + 32)];
  v3 = +[TailSpinHelper getLogger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1DD1FF000, v4, OS_LOG_TYPE_INFO, "TailSpinHelper#dumpTailSpinOutputToFile dir: %@", buf, 0xCu);
    }

    v6 = open([*(a1 + 40) cStringUsingEncoding:1], 514, 484);
    v7 = *(a1 + 48);
    if (tailspin_dump_output_with_options_sync())
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E695DF00] date];
      [TailSpinHelper setSuccessfulTailSpinDate:v8 date:v9];
    }

    close(v6);
    result = *(a1 + 56);
    if (result)
    {
      v11 = *(a1 + 40);
      v12 = *(result + 16);
LABEL_12:
      result = v12();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __75__TailSpinHelper_dumpTailSpinOutputToFile_suiteName_options_queue_handler___block_invoke_cold_1(a1);
    }

    result = *(a1 + 56);
    if (result)
    {
      v12 = *(result + 16);
      goto LABEL_12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clearDirectory:(id)directory queue:(id)queue
{
  directoryCopy = directory;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__TailSpinHelper_clearDirectory_queue___block_invoke;
  block[3] = &unk_1E86502A8;
  v8 = directoryCopy;
  v6 = directoryCopy;
  dispatch_async(queue, block);
}

void __39__TailSpinHelper_clearDirectory_queue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [TailSpinHelper getTailSpinDir:*(a1 + 32)];
  if ([TailSpinHelper isValidToDeleteTailSpinDir:*(a1 + 32)])
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 removeItemAtPath:v2 error:0];

    v5 = +[TailSpinHelper getLogger];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&dword_1DD1FF000, v6, OS_LOG_TYPE_INFO, "TailSpinHelper#clearDirectory cleaned up directory: %@", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__TailSpinHelper_clearDirectory_queue___block_invoke_cold_2();
    }
  }

  else
  {
    v6 = +[TailSpinHelper getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__TailSpinHelper_clearDirectory_queue___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dumpTailSpinOutputToFile:suiteName:options:queue:handler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__TailSpinHelper_dumpTailSpinOutputToFile_suiteName_options_queue_handler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__TailSpinHelper_clearDirectory_queue___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __39__TailSpinHelper_clearDirectory_queue___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end