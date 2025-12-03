@interface TestProbe
+ (id)testProbeStatusString:(unsigned int)string;
+ (void)autoBugCapturePath:(id *)path autoBugCaptureUID:(id *)d autoBugCaptureGID:(id *)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval;
- (TestProbe)initWithQueue:(id)queue;
- (void)cancelTest:(id)test;
- (void)removeProbeOutputFiles;
- (void)stopPeriodicTimer;
@end

@implementation TestProbe

+ (void)autoBugCapturePath:(id *)path autoBugCaptureUID:(id *)d autoBugCaptureGID:(id *)iD
{
  if (autoBugCapturePath)
  {
    v8 = autoBugCaptureUID == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || autoBugCaptureGID == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__16;
    v16 = __Block_byref_object_dispose__16;
    v17 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    v10 = v13[5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__TestProbe_autoBugCapturePath_autoBugCaptureUID_autoBugCaptureGID___block_invoke;
    v11[3] = &unk_27898FDB0;
    v11[4] = &v12;
    [v10 getAutoBugCaptureConfiguration:v11];
    _Block_object_dispose(&v12, 8);
  }

  if (path)
  {
    *path = autoBugCapturePath;
  }

  if (d)
  {
    *d = autoBugCaptureUID;
  }

  if (iD)
  {
    *iD = autoBugCaptureGID;
  }
}

void __68__TestProbe_autoBugCapturePath_autoBugCaptureUID_autoBugCaptureGID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"logArchivePath"];
  v5 = autoBugCapturePath;
  autoBugCapturePath = v4;

  v6 = [v3 objectForKeyedSubscript:@"logArchiveUID"];
  v7 = autoBugCaptureUID;
  autoBugCaptureUID = v6;

  v8 = [v3 objectForKeyedSubscript:@"logArchiveGID"];

  v9 = autoBugCaptureGID;
  autoBugCaptureGID = v8;

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (TestProbe)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = TestProbe;
  v6 = [(TestProbe *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = uUID;

    v7->_status = -1;
    array = [MEMORY[0x277CBEB18] array];
    probeOutputFilePaths = v7->_probeOutputFilePaths;
    v7->_probeOutputFilePaths = array;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(TestProbe *)equalCopy uuid];
      v6 = [uuid isEqual:self->_uuid];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)cancelTest:(id)test
{
  testCopy = test;
  [(TestProbe *)self stopTest];
  v4 = testCopy;
  if (testCopy)
  {
    (*(testCopy + 2))(testCopy, 4);
    v4 = testCopy;
  }
}

+ (id)testProbeStatusString:(unsigned int)string
{
  if (string + 1 > 6)
  {
    return @"UNEXPECTED PROBE STATUS!";
  }

  else
  {
    return off_27898FDF8[string + 1];
  }
}

- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval
{
  queue = [(TestProbe *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  if (v8)
  {
    dispatch_source_set_timer(v8, at, interval, 0);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__TestProbe_startPeriodicTimerAt_repeatInterval___block_invoke;
    v14 = &unk_27898A7D0;
    selfCopy = self;
    v9 = v8;
    v16 = v9;
    dispatch_source_set_event_handler(v9, &v11);
    [(TestProbe *)self setPeriodicTimer:v9, v11, v12, v13, v14, selfCopy];
    dispatch_resume(v9);
  }

  return v8 != 0;
}

- (void)stopPeriodicTimer
{
  periodicTimer = [(TestProbe *)self periodicTimer];

  if (periodicTimer)
  {
    periodicTimer2 = [(TestProbe *)self periodicTimer];
    dispatch_source_cancel(periodicTimer2);

    [(TestProbe *)self setPeriodicTimer:0];
  }
}

- (void)removeProbeOutputFiles
{
  queue = [(TestProbe *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TestProbe_removeProbeOutputFiles__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__TestProbe_removeProbeOutputFiles__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) probeOutputFilePaths];
  if ([v1 count])
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    if ([autoBugCapturePath length])
    {
      v3 = [MEMORY[0x277CBEB18] array];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = v1;
      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        v6 = *v22;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v22 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v21 + 1) + 8 * i);
            if ([v2 fileExistsAtPath:v8])
            {
              v9 = [v8 rangeOfString:autoBugCapturePath];
              if (v9 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v11 = [v8 substringFromIndex:v10 + v9 + 1];
                [v3 addObject:v11];
              }
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v5);
      }

      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__16;
      v19 = __Block_byref_object_dispose__16;
      v20 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v12 = v16[5];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__TestProbe_removeProbeOutputFiles__block_invoke_2;
      v14[3] = &unk_27898FDD8;
      v14[4] = &v15;
      [v12 purgeAutoBugCaptureFilesWithSubPaths:v3 reply:v14];
      _Block_object_dispose(&v15, 8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __35__TestProbe_removeProbeOutputFiles__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end