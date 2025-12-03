@interface REMRegulatoryLogger
+ (id)sharedLogger;
+ (int64_t)attachmentTypeFromUTType:(id)type;
+ (void)attachmentAddedForType:(int64_t)type;
+ (void)attachmentAddedForUTType:(id)type;
- (REMRegulatoryLogger)init;
- (uint64_t)init;
@end

@implementation REMRegulatoryLogger

- (REMRegulatoryLogger)init
{
  v9.receiver = self;
  v9.super_class = REMRegulatoryLogger;
  v2 = [(REMRegulatoryLogger *)&v9 init];
  if (v2)
  {
    v3 = [*MEMORY[0x277D44908] cStringUsingEncoding:1];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v4 = getct_green_tea_logger_createSymbolLoc_ptr;
    v18 = getct_green_tea_logger_createSymbolLoc_ptr;
    if (!getct_green_tea_logger_createSymbolLoc_ptr)
    {
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __getct_green_tea_logger_createSymbolLoc_block_invoke;
      v13 = &unk_2788BC530;
      v14 = &v15;
      v5 = libCTGreenTeaLoggerLibrary();
      v6 = dlsym(v5, "ct_green_tea_logger_create");
      *(v14[1] + 24) = v6;
      getct_green_tea_logger_createSymbolLoc_ptr = *(v14[1] + 24);
      v4 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v4)
    {
      v8 = [REMRegulatoryLogger init];
      _Block_object_dispose(&v15, 8);
      _Unwind_Resume(v8);
    }

    v2->_greenTeaLogger = v4(v3);
  }

  return v2;
}

+ (id)sharedLogger
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__REMRegulatoryLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, block);
  }

  v2 = sharedLogger_logger;

  return v2;
}

uint64_t __35__REMRegulatoryLogger_sharedLogger__block_invoke()
{
  sharedLogger_logger = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (int64_t)attachmentTypeFromUTType:(id)type
{
  typeCopy = type;
  if ([typeCopy conformsToType:*MEMORY[0x277CE1DB0]])
  {
    v4 = 3;
  }

  else if ([typeCopy conformsToType:*MEMORY[0x277CE1D00]])
  {
    v4 = 1;
  }

  else if ([typeCopy conformsToType:*MEMORY[0x277CE1E00]])
  {
    v4 = 2;
  }

  else if ([typeCopy conformsToType:*MEMORY[0x277CE1EC0]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)attachmentAddedForUTType:(id)type
{
  v4 = [self attachmentTypeFromUTType:type];

  [self attachmentAddedForType:v4];
}

+ (void)attachmentAddedForType:(int64_t)type
{
  sharedLogger = [self sharedLogger];
  greenTeaLogger = [sharedLogger greenTeaLogger];

  if (type <= 1)
  {
    if (!type)
    {
      utility = [MEMORY[0x277D446E0] utility];
      if (os_log_type_enabled(utility, OS_LOG_TYPE_DEBUG))
      {
        +[REMRegulatoryLogger attachmentAddedForType:];
      }

      goto LABEL_24;
    }

    if (type != 1)
    {
      return;
    }

    utility2 = [MEMORY[0x277D446E0] utility];
    if (os_log_type_enabled(utility2, OS_LOG_TYPE_DEBUG))
    {
      +[REMRegulatoryLogger attachmentAddedForType:];
    }

    v7 = soft_getCTGreenTeaOsLogHandle(greenTeaLogger);
    utility = v7;
    if (!v7 || !os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v17 = 0;
    v9 = "Reading audio data";
    v10 = &v17;
    goto LABEL_23;
  }

  if (type == 2)
  {
    utility3 = [MEMORY[0x277D446E0] utility];
    if (os_log_type_enabled(utility3, OS_LOG_TYPE_DEBUG))
    {
      +[REMRegulatoryLogger attachmentAddedForType:];
    }

    v14 = soft_getCTGreenTeaOsLogHandle(greenTeaLogger);
    utility = v14;
    if (!v14 || !os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v9 = "Reading video data";
    v10 = buf;
    goto LABEL_23;
  }

  if (type != 3)
  {
    return;
  }

  utility4 = [MEMORY[0x277D446E0] utility];
  if (os_log_type_enabled(utility4, OS_LOG_TYPE_DEBUG))
  {
    +[REMRegulatoryLogger attachmentAddedForType:];
  }

  v12 = soft_getCTGreenTeaOsLogHandle(greenTeaLogger);
  utility = v12;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 0;
    v9 = "Reading image/photo data";
    v10 = &v15;
LABEL_23:
    _os_log_impl(&dword_230044000, utility, OS_LOG_TYPE_INFO, v9, v10, 2u);
  }

LABEL_24:
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return [REMRegulatoryLogger attachmentAddedForType:v0];
}

+ (void)attachmentAddedForType:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 2048;
  v3 = 0;
  _os_log_debug_impl(&dword_230044000, v0, OS_LOG_TYPE_DEBUG, "%{public}@: Reading other data {type: %ld}", v1, 0x16u);
}

@end