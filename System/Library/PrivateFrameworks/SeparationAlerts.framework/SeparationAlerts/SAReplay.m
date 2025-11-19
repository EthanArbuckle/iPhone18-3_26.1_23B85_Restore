@interface SAReplay
- (BOOL)activityStream:(id)a3 deviceUDID:(id)a4 deviceID:(id)a5 status:(int64_t)a6 error:(id)a7;
- (BOOL)activityStream:(id)a3 results:(id)a4;
- (BOOL)persistence:(id)a3 results:(id)a4 error:(id)a5;
- (SAReplay)initWithLogArchive:(id)a3 outputPath:(id)a4 inputPersistencePath:(id)a5;
- (SAReplay)replayWithStartDate:(id)a3 endDate:(id)a4;
- (void)persistenceDidFinishReadingForStartDate:(id)a3 endDate:(id)a4;
- (void)replaySingleEventLogString:(id)a3;
- (void)streamDidStart:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation SAReplay

- (SAReplay)initWithLogArchive:(id)a3 outputPath:(id)a4 inputPersistencePath:(id)a5
{
  v47[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45.receiver = self;
  v45.super_class = SAReplay;
  v11 = [(SAReplay *)&v45 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outputPath, a4);
    objc_storeStrong(&v12->_inputPersistencePath, a5);
    v13 = [SAAnalytics alloc];
    v14 = [[SAAnalyticsSettings alloc] initWithEnableSubmission:0];
    v15 = [(SAAnalytics *)v13 initWithSettings:v14];
    analytics = v12->_analytics;
    v12->_analytics = v15;

    v17 = [[SAService alloc] initWithAnalytics:v12->_analytics isReplay:1 audioAccessoryManager:0];
    service = v12->_service;
    v12->_service = v17;

    v19 = objc_alloc_init(MEMORY[0x277D24448]);
    persistence = v12->_persistence;
    v12->_persistence = v19;

    [(OSLogPersistence *)v12->_persistence setLogArchive:v8];
    [(OSLogPersistence *)v12->_persistence setOptions:3];
    [(OSLogPersistence *)v12->_persistence setDelegate:v12];
    v44 = v9;
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"process == 'locationd'"];
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.TrackingAvoidance'"];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'SeparationAlertsEvents'"];
    v24 = MEMORY[0x277CCA920];
    v47[0] = v21;
    v47[1] = v22;
    v47[2] = v23;
    v43 = v10;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    v26 = [v24 andPredicateWithSubpredicates:v25];
    [(OSLogPersistence *)v12->_persistence setPredicate:v26];

    v27 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v12->_stream;
    v12->_stream = v27;

    [(OSActivityStream *)v12->_stream setDelegate:v12];
    [(OSActivityStream *)v12->_stream setDeviceDelegate:v12];
    [(OSActivityStream *)v12->_stream setOptions:772];
    v29 = MEMORY[0x277CCAC30];
    v30 = [MEMORY[0x277CCAC38] processInfo];
    v31 = [v29 predicateWithFormat:@"processID == %d", objc_msgSend(v30, "processIdentifier")];

    v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.TrackingAvoidance'"];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'SeparationAlerts'"];
    v34 = MEMORY[0x277CCA920];
    v46[0] = v31;
    v46[1] = v32;
    v46[2] = v33;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v36 = [v34 andPredicateWithSubpredicates:v35];
    [(OSActivityStream *)v12->_stream setPredicate:v36];

    v9 = v44;
    v10 = v43;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventOrder = v12->_eventOrder;
    v12->_eventOrder = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventMessages = v12->_eventMessages;
    v12->_eventMessages = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)activityStream:(id)a3 results:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  outputPath = self->_outputPath;
  if (outputPath)
  {
    v38 = 0;
    v10 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:outputPath error:&v38];
    v11 = v38;
    if (v11)
    {
      v12 = v11;
      NSLog(&cfstr_ErrorWritingRe.isa);

      v13 = 0;
      v10 = v12;
    }

    else
    {
      v29 = v6;
      [v10 seekToEndOfFile];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v34 + 1) + 8 * i) eventMessage];
            v25 = [v24 stringByAppendingString:@"\n"];
            v26 = [v25 dataUsingEncoding:4];
            [v10 writeData:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v21);
      }

      [v10 closeFile];
      v13 = 1;
      v6 = v29;
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = [*(*(&v30 + 1) + 8 * j) eventMessage];
          NSLog(&cfstr_ReplaystatusS.isa, [v18 UTF8String]);
        }

        v15 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v15);
    }

    v13 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)streamDidStop:(id)a3
{
  NSLog(&cfstr_LogStreamStopp.isa, a2, a3);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (void)streamDidStart:(id)a3
{
  NSLog(&cfstr_LogStreamStart.isa, a2, a3);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (BOOL)activityStream:(id)a3 deviceUDID:(id)a4 deviceID:(id)a5 status:(int64_t)a6 error:(id)a7
{
  if (!a6)
  {
    [a3 setDevice:{a5, a4}];
  }

  return 1;
}

- (SAReplay)replayWithStartDate:(id)a3 endDate:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v29 descriptionWithLocale:v7];
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v6 descriptionWithLocale:v9];
  NSLog(&cfstr_ReplayingWithS.isa, v8, v10);

  outputPath = self->_outputPath;
  if (outputPath)
  {
    v12 = [(NSURL *)outputPath absoluteString];
    NSLog(&cfstr_WritingOutputT.isa, v12);
  }

  v13 = dispatch_semaphore_create(0);
  streamWait = self->_streamWait;
  self->_streamWait = v13;

  [(OSActivityStream *)self->_stream start];
  v15 = self->_streamWait;
  v16 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    NSLog(&cfstr_StreamStartTim.isa);
  }

  else
  {
    v17 = self->_streamWait;
    self->_streamWait = 0;

    v18 = dispatch_semaphore_create(0);
    persistenceWait = self->_persistenceWait;
    self->_persistenceWait = v18;

    [(OSLogPersistence *)self->_persistence fetchFromStartDate:v29 toEndDate:v6];
    v20 = self->_persistenceWait;
    v21 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v20, v21))
    {
      NSLog(&cfstr_ReplayTimeout.isa);
    }

    v22 = self->_persistenceWait;
    self->_persistenceWait = 0;

    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    v23 = dispatch_semaphore_create(0);
    v24 = self->_streamWait;
    self->_streamWait = v23;

    [(OSActivityStream *)self->_stream stop];
    v25 = self->_streamWait;
    v26 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v25, v26))
    {
      NSLog(&cfstr_StreamStopTime.isa);
    }

    v27 = self->_streamWait;
    self->_streamWait = 0;
  }

  return result;
}

- (void)replaySingleEventLogString:(id)a3
{
  v16[19] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringByReplacingOccurrencesOfString:@"'" withString:&stru_287709218];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_287709218];

  v7 = [MEMORY[0x277CBEA90] dataWithHexString:v6];
  v8 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v16[3] = objc_opt_class();
  v16[4] = objc_opt_class();
  v16[5] = objc_opt_class();
  v16[6] = objc_opt_class();
  v16[7] = objc_opt_class();
  v16[8] = objc_opt_class();
  v16[9] = objc_opt_class();
  v16[10] = objc_opt_class();
  v16[11] = objc_opt_class();
  v16[12] = objc_opt_class();
  v16[13] = objc_opt_class();
  v16[14] = objc_opt_class();
  v16[15] = objc_opt_class();
  v16[16] = objc_opt_class();
  v16[17] = objc_opt_class();
  v16[18] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:19];
  v10 = [v8 setWithArray:v9];

  v15 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v7 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v12);
  }

  else
  {
    [(SAService *)self->_service ingestTAEvent:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)persistence:(id)a3 results:(id)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  NSLog(&cfstr_GotActivityEve.isa);
  if (v8)
  {
    NSLog(&cfstr_ErrorInReplayi.isa, v8);
  }

  else
  {
    v23 = v7;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 eventMessage];
          v15 = [SALoggingUtilities extractUniqueIdentifierFromMessage:v14];

          v16 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v15];

          if (v16)
          {
            v17 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v15];
            v18 = [v13 eventMessage];
            [v17 addObject:v18];
          }

          else
          {
            [(NSMutableArray *)self->_eventOrder addObject:v15];
            eventMessages = self->_eventMessages;
            v20 = objc_alloc(MEMORY[0x277CBEB18]);
            v17 = [v13 eventMessage];
            v18 = [v20 initWithObjects:{v17, 0}];
            [(NSMutableDictionary *)eventMessages setObject:v18 forKey:v15];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v8 = 0;
    v7 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (void)persistenceDidFinishReadingForStartDate:(id)a3 endDate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_FinishedFetchi.isa, a2, a3, a4);
  persistenceWait = self->_persistenceWait;
  if (persistenceWait)
  {
    dispatch_semaphore_signal(persistenceWait);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_eventOrder;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        NSLog(&cfstr_Replaying.isa, v11);
        v12 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v11];
        v13 = [SALoggingUtilities extractEventFromMessages:v12];

        if (v13)
        {
          [(SAService *)self->_service ingestTAEvent:v13];
        }

        else
        {
          NSLog(&cfstr_CouldNotReplay.isa, v11);
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end