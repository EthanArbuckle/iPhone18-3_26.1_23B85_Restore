@interface PLFSEventAgent
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (PLFSEventAgent)init;
- (void)addLogFileNameEntry:(BOOL)a3 withType:(id)a4 withName:(id)a5;
- (void)dealloc;
- (void)initOperatorDependancies;
- (void)logLogFileName:(id)a3 withName:(id)a4;
- (void)registerforFSEventNotification;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PLFSEventAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLFSEventAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventIntervalDefinitions
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = @"LogFile";
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1C4A8;
  v18[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"timestampEnd";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v16[0] = v5;
  v15[1] = @"FileType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[1] = v7;
  v15[2] = @"FilePath";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLFSEventAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLFSEventAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)dealloc
{
  [(PLFSEventAgent *)self stopMonitoring];
  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  v4.receiver = self;
  v4.super_class = PLFSEventAgent;
  [(PLAgent *)&v4 dealloc];
}

- (void)stopMonitoring
{
  v9 = *MEMORY[0x277D85DE8];
  FSEventStreamStop(self->_stream);
  stream = self->_stream;
  Current = CFRunLoopGetCurrent();
  FSEventStreamUnscheduleFromRunLoop(stream, Current, *MEMORY[0x277CBF058]);
  v5 = PLLogFSEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = &unk_282C14BB0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Stopped monitoring paths %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoring
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PLFSEventAgent_startMonitoring__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__PLFSEventAgent_startMonitoring__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogFSEvent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = &unk_282C14BC8;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "StartMonitoring paths: %@", &v7, 0xCu);
  }

  if ([*(a1 + 32) stream])
  {
    v3 = [*(a1 + 32) stream];
    Current = CFRunLoopGetCurrent();
    FSEventStreamScheduleWithRunLoop(v3, Current, *MEMORY[0x277CBF058]);
    if (!FSEventStreamStart([*(a1 + 32) stream]))
    {
      v5 = PLLogFSEvent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v7) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Failed to start monitoring fsevents.", &v7, 2u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerforFSEventNotification
{
  context.version = 0;
  context.info = self;
  context.retain = MEMORY[0x277CBE558];
  context.release = MEMORY[0x277CBE550];
  context.copyDescription = MEMORY[0x277CBE530];
  v3 = FSEventStreamCreate(*MEMORY[0x277CBECE8], fsEventsHandler, &context, &unk_282C14BE0, 0xFFFFFFFFFFFFFFFFLL, 1.0, 0x11u);
  self->_stream = v3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(2, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__PLFSEventAgent_registerforFSEventNotification__block_invoke;
    v5[3] = &unk_2782591D0;
    v5[4] = self;
    dispatch_sync(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = [v3 initWithWorkQueue:v4 withRegistration:&unk_282C18490 withBlock:&__block_literal_global_49];
  [(PLFSEventAgent *)self setFileListResponder:v5];

  [(PLFSEventAgent *)self registerforFSEventNotification];
}

id __42__PLFSEventAgent_initOperatorDependancies__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = [v7 stringWithFormat:@"Received log files request from %d, %@", a2, a3];
  v10 = MEMORY[0x277D3F178];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLFSEventAgent.m"];
  v12 = [v11 lastPathComponent];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLFSEventAgent initOperatorDependancies]_block_invoke"];
  [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:177];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277D3F238] sharedInstance];
  v16 = [v15 generateMSSSubmissionWithPayload:v8];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)addLogFileNameEntry:(BOOL)a3 withType:(id)a4 withName:(id)a5
{
  v6 = a3;
  v8 = *MEMORY[0x277D3F5D8];
  v9 = a5;
  v10 = a4;
  v15 = [(PLOperator *)PLFSEventAgent entryKeyForType:v8 andName:@"LogFile"];
  v11 = objc_alloc(MEMORY[0x277D3F190]);
  if (v6)
  {
    v12 = [v11 initWithEntryKey:v15];
    [v12 setObject:0 forKeyedSubscript:@"timestampEnd"];
  }

  else
  {
    v13 = [v11 initWithEntryKey:v15 withDate:0];
    v14 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v13 setObject:v14 forKeyedSubscript:@"timestampEnd"];

    v12 = 0;
  }

  [v12 setObject:v10 forKeyedSubscript:@"FileType"];

  [v12 setObject:v9 forKeyedSubscript:@"FilePath"];
  [(PLOperator *)self logEntry:v12];
}

- (void)logLogFileName:(id)a3 withName:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = PLLogFSEvent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v44 = v6;
      v45 = 2112;
      v46 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logLogFileName(%@, %@)\n", buf, 0x16u);
    }

    v10 = [v8 componentsSeparatedByString:@"."];
    if ([v10 count] == 4)
    {
      v11 = [v10 objectAtIndexedSubscript:2];
      v12 = [v11 isEqualToString:@"XXXXXX"];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(PLOperator *)PLFSEventAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"LogFile"];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"FileType", v6];
    v15 = [(PLOperator *)self storage];
    v42 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v17 = [v15 lastEntryForKey:v13 withFilters:v16];

    if (!v17)
    {
      [(PLFSEventAgent *)self addLogFileNameEntry:v12 withType:v6 withName:v8];
      v19 = v10;
LABEL_22:

      goto LABEL_23;
    }

    v18 = [v17 objectForKeyedSubscript:@"FilePath"];
    v19 = [v18 componentsSeparatedByString:@"."];

    v34 = v13;
    if ([v19 count] == 4)
    {
      v20 = [v19 objectAtIndexedSubscript:2];
      v21 = [v20 isEqualToString:@"XXXXXX"];
    }

    else
    {
      v21 = 0;
    }

    v22 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v21)
    {
      if (v12)
      {
        v23 = [v17 objectForKeyedSubscript:@"FilePath"];
        v24 = [v8 isEqualToString:v23];

        if (v24)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __42__PLFSEventAgent_logLogFileName_withName___block_invoke;
          v39[3] = &unk_278259658;
          v25 = &v40;
          v26 = v17;
          v27 = &v41;
          v40 = v26;
          v41 = v22;
          v28 = v22;
          [(PLOperator *)self updateEntry:v26 withBlock:v39];
LABEL_19:

LABEL_21:
          v13 = v34;
          goto LABEL_22;
        }
      }

      else
      {
        v29 = [v17 entryDate];
        v30 = [v22 compare:v29];

        if (v30 == 1)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __42__PLFSEventAgent_logLogFileName_withName___block_invoke_2;
          v35[3] = &unk_27825D6E8;
          v25 = &v36;
          v31 = v17;
          v27 = &v37;
          v36 = v31;
          v37 = v22;
          v38 = v8;
          v32 = v22;
          [(PLOperator *)self updateEntry:v31 withBlock:v35];

          goto LABEL_19;
        }
      }
    }

    [(PLFSEventAgent *)self addLogFileNameEntry:v12 withType:v6 withName:v8];
    goto LABEL_21;
  }

LABEL_23:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLFSEventAgent_logLogFileName_withName___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setObject:v2 forKeyedSubscript:@"FilePath"];
}

@end