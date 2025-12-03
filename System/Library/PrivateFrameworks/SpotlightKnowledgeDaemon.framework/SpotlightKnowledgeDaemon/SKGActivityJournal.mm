@interface SKGActivityJournal
+ (id)sharedJournal;
+ (id)testJournal;
- (SKGActivityJournal)initWithParentPath:(id)path fileName:(id)name;
- (id)_createEventData:(unsigned __int8)data params:(id)params;
- (void)clearJournalWithSize:(int64_t)size limit:(int64_t)limit;
- (void)dealloc;
- (void)logInit;
@end

@implementation SKGActivityJournal

+ (id)sharedJournal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKGActivityJournal_sharedJournal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedJournal_onceToken != -1)
  {
    dispatch_once(&sharedJournal_onceToken, block);
  }

  v2 = sharedJournal__sharedJournal;

  return v2;
}

void __35__SKGActivityJournal_sharedJournal__block_invoke(uint64_t a1)
{
  v4 = activityJournalRootPath();
  v2 = [objc_alloc(*(a1 + 32)) initWithParentPath:v4 fileName:@"SKGActivityJournal.log"];
  v3 = sharedJournal__sharedJournal;
  sharedJournal__sharedJournal = v2;
}

- (SKGActivityJournal)initWithParentPath:(id)path fileName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v8 = isAppleInternalInstall();
  self->_isInternalInstall = v8;
  if (v8)
  {
    v9 = dispatch_queue_attr_make_initially_inactive(0);
    v10 = dispatch_queue_create("com.apple.spotlightknowledged.SKGActivityJournal", v9);
    queue = self->_queue;
    self->_queue = v10;

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", pathCopy, nameCopy];
    path = self->_path;
    self->_path = nameCopy;

    self->_fd = 0;
    v14 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke;
    block[3] = &unk_27893D928;
    v20 = pathCopy;
    selfCopy = self;
    v21 = selfCopy;
    v22 = nameCopy;
    dispatch_async(v14, block);

    v16 = v22;
    v17 = selfCopy;
  }

  return self;
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *(a1 + 32);
    v18 = 0;
    v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
    v7 = v18;

    if ((v6 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_1(v7, (a1 + 32), v8);
      }
    }
  }

  open([*(a1 + 32) fileSystemRepresentation], 0x100000);
  [*(a1 + 48) UTF8String];
  *(*(a1 + 40) + 24) = fd_create_protected();
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGActivityJournal"];
  v10 = [v9 objectForKey:@"journalSize"];

  if (v10)
  {
    v11 = [v9 integerForKey:@"journalSize"];
    if (*(*(a1 + 40) + 24))
    {
      if (!v11)
      {
        goto LABEL_20;
      }

LABEL_14:
      v12 = fd_lseek();
      if (v12 > v11)
      {
        v13 = v12;
        [*(a1 + 40) clearJournalWithSize:v12 limit:v11];
        v14 = *(a1 + 40);
        v19 = &unk_2846E7B00;
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
        v20[0] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        [v14 _addEventWithTypeOffQueue:2 params:v16];

LABEL_19:
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else if (*(*(a1 + 40) + 24))
  {
    v11 = 52428800;
    goto LABEL_14;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v15 = SKGLogInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_2((a1 + 32), (a1 + 48), v15);
    }

    goto LABEL_19;
  }

LABEL_20:
  [*(a1 + 40) logInit];
  dispatch_activate(*(*(a1 + 40) + 32));

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  fd = self->_fd;
  self->_fd = 0;
  if (fd)
  {
    fd_release();
  }

  v4.receiver = self;
  v4.super_class = SKGActivityJournal;
  [(SKGActivityJournal *)&v4 dealloc];
}

- (void)logInit
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x277CBEC70]);
    if (Value)
    {
      v26 = 0u;
      memset(v27, 0, sizeof(v27));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *buffer = 0u;
      CFStringGetCString(Value, buffer, 255, 0x8000100u);
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:buffer encoding:4];
    }

    else
    {
      v6 = &stru_2846CE8D8;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = &stru_2846CE8D8;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{getpid(), &unk_2846E7B18}];
  v11[1] = &unk_2846E7B30;
  v12[0] = v7;
  v8 = @"<empty>";
  if (v6)
  {
    v8 = v6;
  }

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(SKGActivityJournal *)self _addEventWithTypeOffQueue:1 params:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearJournalWithSize:(int64_t)size limit:(int64_t)limit
{
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SKGActivityJournal *)size clearJournalWithSize:limit limit:v7];
    }
  }

  fd = self->_fd;
  fd_zero_truncate();
}

- (id)_createEventData:(unsigned __int8)data params:(id)params
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  paramsCopy = params;
  data = [MEMORY[0x277CBEB28] data];
  [data appendBytes:&dataCopy length:1];
  if (dataCopy >= 0x37u)
  {
    [SKGActivityJournal _createEventData:params:];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [data appendBytes:&Current length:8];
  allKeys = [paramsCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        unsignedIntValue = [v13 unsignedIntValue];
        DataTypeForParamType = getDataTypeForParamType(unsignedIntValue);
        if (unsignedIntValue >= 0x10)
        {
          [SKGActivityJournal _createEventData:params:];
        }

        v15 = DataTypeForParamType;
        if (DataTypeForParamType >= 6)
        {
          [SKGActivityJournal _createEventData:params:];
        }

        [data appendBytes:&unsignedIntValue length:4];
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
              continue;
            }

            v18 = [paramsCopy objectForKeyedSubscript:v13];
            longLongValue = [v18 longLongValue];
LABEL_19:
            v22 = longLongValue;

            v28 = v22;
            v23 = data;
            v24 = 8;
LABEL_22:
            [v23 appendBytes:&v28 length:{v24, v28}];
            continue;
          }

          v20 = [paramsCopy objectForKeyedSubscript:v13];
          intValue = [v20 intValue];
LABEL_21:
          v25 = intValue;

          LODWORD(v28) = v25;
          v23 = data;
          v24 = 4;
          goto LABEL_22;
        }

        switch(v15)
        {
          case 3:
            v20 = [paramsCopy objectForKeyedSubscript:v13];
            intValue = [v20 unsignedIntValue];
            goto LABEL_21;
          case 4:
            v18 = [paramsCopy objectForKeyedSubscript:v13];
            longLongValue = [v18 unsignedLongLongValue];
            goto LABEL_19;
          case 5:
            v16 = [paramsCopy objectForKeyedSubscript:v13];
            LODWORD(v28) = [v16 lengthOfBytesUsingEncoding:4];
            [data appendBytes:&v28 length:4];
            uTF8String = [v16 UTF8String];
            [data appendBytes:uTF8String length:v28];

            break;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  v26 = *MEMORY[0x277D85DE8];

  return data;
}

uint64_t __46__SKGActivityJournal_addEventWithType_params___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    fd_write();
    v3 = *(*(a1 + 32) + 24);
    fd_write();
    v4 = *(*(a1 + 32) + 24);
    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    fd_write();
    v5 = *(*(a1 + 32) + 24);

    return fd_write();
  }

  return result;
}

void __34__SKGActivityJournal_flushUpdates__block_invoke()
{
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v0 = SKGLogInit();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __34__SKGActivityJournal_flushUpdates__block_invoke_cold_1(v0);
    }
  }
}

+ (id)testJournal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKGActivityJournal_Test__testJournal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (testJournal_onceToken != -1)
  {
    dispatch_once(&testJournal_onceToken, block);
  }

  v2 = testJournal__testJournal;

  return v2;
}

void __39__SKGActivityJournal_Test__testJournal__block_invoke(uint64_t a1)
{
  v4 = NSTemporaryDirectory();
  v2 = [objc_alloc(*(a1 + 32)) initWithParentPath:v4 fileName:@"testActivityJournal.log"];
  v3 = testJournal__testJournal;
  testJournal__testJournal = v2;
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_2_0(&dword_231B25000, a2, a3, "### SKGActivityJournal#initWithParentPath Error %@ creating %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_2(id *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7 = [*a1 stringByAppendingString:*a2];
  v9[0] = 67109378;
  v9[1] = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_231B25000, a3, OS_LOG_TYPE_ERROR, "### SKGActivityJournal#initWithParentPath error opening errno %d creating %@", v9, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearJournalWithSize:(NSObject *)a3 limit:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = a1;
  WORD6(v4) = 2048;
  HIWORD(v4) = a2;
  OUTLINED_FUNCTION_2_0(&dword_231B25000, a2, a3, "kSKGActivityJournalReset: Journal size %lld is > %lld\n", v4, *(&v4 + 1));
  v3 = *MEMORY[0x277D85DE8];
}

@end