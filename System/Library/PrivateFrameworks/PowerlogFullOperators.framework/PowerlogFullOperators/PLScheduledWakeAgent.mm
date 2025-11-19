@interface PLScheduledWakeAgent
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLScheduledWakeAgent)init;
- (id)humanReadableScheduledWakeString:(id)a3;
- (void)initOperatorDependancies;
- (void)logEventForwardScheduledEvent;
@end

@implementation PLScheduledWakeAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLScheduledWakeAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = @"ScheduledEvent";
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4C8];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_2870FEF70;
  v18[1] = &unk_2870FF298;
  v17[2] = *MEMORY[0x277D3F4C0];
  v18[2] = &unk_2870FF2B0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[0] = v3;
  v19[1] = *MEMORY[0x277D3F540];
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v16[0] = v5;
  v15[1] = @"Type";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[1] = v7;
  v15[2] = @"AppName";
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

- (PLScheduledWakeAgent)init
{
  v6.receiver = self;
  v6.super_class = PLScheduledWakeAgent;
  v2 = [(PLAgent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    previousScheduleWakeEvents = v2->_previousScheduleWakeEvents;
    v2->_previousScheduleWakeEvents = v3;
  }

  return v2;
}

- (void)initOperatorDependancies
{
  v3 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
  [(PLScheduledWakeAgent *)self setCanSleepSemaphore:v3];

  v4 = [(PLScheduledWakeAgent *)self canSleepSemaphore];
  [v4 signalInterestByObject:self];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PLScheduledWakeAgent_initOperatorDependancies__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v6];
  [(PLScheduledWakeAgent *)self setCanSleepNotification:v5];
}

- (void)logEventForwardScheduledEvent
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [(PLOperator *)PLScheduledWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScheduledEvent"];
  v3 = IOPMCopyScheduledPowerEvents();
  v42 = v2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke;
    v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v56[4] = v4;
    if (logEventForwardScheduledEvent_defaultOnce != -1)
    {
      dispatch_once(&logEventForwardScheduledEvent_defaultOnce, v56);
    }

    if (logEventForwardScheduledEvent_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", self];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScheduledWakeAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScheduledWakeAgent logEventForwardScheduledEvent]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:120];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLAWDNetworkUsage *)v5 handleNameConnectionCallback:v10];
      }

      v2 = v42;
    }
  }

  v11 = [(PLScheduledWakeAgent *)self canSleepSemaphore];
  [v11 signalDoneByObject:self];

  v44 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
  v12 = [(__CFArray *)obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      v15 = 0;
      do
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v52 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"time"];
        [v17 timeIntervalSinceNow];
        if (v18 >= 0.0)
        {
          v19 = [v16 objectForKey:@"scheduledby"];
          v20 = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
          v21 = [v20 valueForKey:v19];

          if (v21 && [v21 isEqualToDate:v17])
          {
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v22 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke_48;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v22;
              if (logEventForwardScheduledEvent_defaultOnce_46 != -1)
              {
                dispatch_once(&logEventForwardScheduledEvent_defaultOnce_46, block);
              }

              if (logEventForwardScheduledEvent_classDebugEnabled_47 == 1)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skip logging event %@", v16];
                v43 = MEMORY[0x277D3F178];
                v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLScheduledWakeAgent.m"];
                v25 = [v24 lastPathComponent];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLScheduledWakeAgent logEventForwardScheduledEvent]"];
                [v43 logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:136];

                v27 = PLLogCommon();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v61 = v23;
                  _os_log_debug_impl(&dword_25EE16000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v2 = v42;
LABEL_24:
              }
            }

            goto LABEL_26;
          }

          v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v2];
          v28 = [v16 objectForKey:@"eventtype"];
          v27 = [(PLScheduledWakeAgent *)self humanReadableScheduledWakeString:v28];

          [v23 setObject:v17 forKeyedSubscript:@"EventTime"];
          [v23 setObject:v27 forKeyedSubscript:@"Type"];
          [v23 setObject:v19 forKeyedSubscript:@"AppName"];
          [v44 addObject:v23];
          goto LABEL_24;
        }

LABEL_26:

        ++v15;
      }

      while (v13 != v15);
      v13 = [(__CFArray *)obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v13);
  }

  v29 = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
  [v29 removeAllObjects];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = obj;
  v31 = [(__CFArray *)v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v47 + 1) + 8 * i);
        v36 = [v35 objectForKey:@"time"];
        [v36 timeIntervalSinceNow];
        if (v37 >= 0.0)
        {
          v38 = [v35 objectForKey:@"scheduledby"];
          v39 = [(PLScheduledWakeAgent *)self previousScheduleWakeEvents];
          [v39 setValue:v36 forKey:v38];
        }
      }

      v32 = [(__CFArray *)v30 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v32);
  }

  if ([v44 count])
  {
    v57 = v42;
    v58 = v44;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    [(PLOperator *)self logEntries:v40 withGroupID:v42];
  }

  else
  {
    v40 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v42];
    [v40 setIsErrorEntry:1];
    [v40 setObject:@"No scheduled events" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)self logEntry:v40];
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardScheduledEvent_classDebugEnabled = result;
  return result;
}

uint64_t __53__PLScheduledWakeAgent_logEventForwardScheduledEvent__block_invoke_48(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardScheduledEvent_classDebugEnabled_47 = result;
  return result;
}

- (id)humanReadableScheduledWakeString:(id)a3
{
  v3 = a3;
  if (CFStringCompare(v3, @"wake", 0))
  {
    if (CFStringCompare(v3, @"wakepoweron", 0))
    {
      if (CFStringCompare(v3, @"poweron", 0))
      {
        if (CFStringCompare(v3, @"sleep", 0))
        {
          if (CFStringCompare(v3, @"shutdown", 0))
          {
            if (CFStringCompare(v3, @"restart", 0))
            {
              v4 = v3;
            }

            else
            {
              v4 = @"Scheduled Restart";
            }
          }

          else
          {
            v4 = @"Scheduled Shutdown";
          }
        }

        else
        {
          v4 = @"Scheduled Sleep";
        }
      }

      else
      {
        v4 = @"Power On from Off state";
      }
    }

    else
    {
      v4 = @"Scheduled Wake or Power On";
    }
  }

  else
  {
    v4 = @"Scheduled Wake";
  }

  return v4;
}

@end