@interface TAReplay
- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error;
- (BOOL)activityStream:(id)stream results:(id)results;
- (BOOL)persistence:(id)persistence results:(id)results error:(id)error;
- (TAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath settings:(id)settings;
- (TAReplay)replayWithStartDate:(id)date endDate:(id)endDate;
- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate;
- (void)replaySingleEventLogString:(id)string;
- (void)streamDidStart:(id)start;
- (void)streamDidStop:(id)stop;
@end

@implementation TAReplay

- (TAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath settings:(id)settings
{
  v48[3] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  pathCopy = path;
  persistencePathCopy = persistencePath;
  settingsCopy = settings;
  v46.receiver = self;
  v46.super_class = TAReplay;
  v14 = [(TAReplay *)&v46 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_outputPath, path);
    objc_storeStrong(&v15->_inputPersistencePath, persistencePath);
    v16 = [[TATrackingAvoidanceService alloc] initWithSettings:settingsCopy];
    service = v15->_service;
    v15->_service = v16;

    v18 = [TAAnalyticsManager alloc];
    v19 = [[TAAnalyticsManagerSettings alloc] initWithEnableSubmissionOrDefault:&unk_287F6FEF0 andSettingsVersion:1];
    v20 = [(TAAnalyticsManager *)v18 initWithSettings:v19];
    analyticsManager = v15->_analyticsManager;
    v15->_analyticsManager = v20;

    [(TATrackingAvoidanceService *)v15->_service addObserver:v15->_analyticsManager];
    v22 = objc_alloc_init(MEMORY[0x277D24448]);
    persistence = v15->_persistence;
    v15->_persistence = v22;

    [(OSLogPersistence *)v15->_persistence setLogArchive:archiveCopy];
    [(OSLogPersistence *)v15->_persistence setOptions:3];
    [(OSLogPersistence *)v15->_persistence setDelegate:v15];
    v45 = archiveCopy;
    v43 = [MEMORY[0x277CCAC30] predicateWithFormat:@"process == 'locationd'"];
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.tracking-avoidance'"];
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'Events'"];
    v26 = MEMORY[0x277CCA920];
    v48[0] = v43;
    v48[1] = v24;
    v48[2] = v25;
    [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    v27 = v44 = pathCopy;
    v28 = [v26 andPredicateWithSubpredicates:v27];
    [(OSLogPersistence *)v15->_persistence setPredicate:v28];

    v29 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v15->_stream;
    v15->_stream = v29;

    [(OSActivityStream *)v15->_stream setDelegate:v15];
    [(OSActivityStream *)v15->_stream setDeviceDelegate:v15];
    [(OSActivityStream *)v15->_stream setOptions:772];
    v31 = MEMORY[0x277CCAC30];
    [MEMORY[0x277CCAC38] processInfo];
    v32 = settingsCopy;
    v34 = v33 = persistencePathCopy;
    v35 = [v31 predicateWithFormat:@"processID == %d", objc_msgSend(v34, "processIdentifier")];

    v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.tracking-avoidance'"];
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'Status'"];
    v38 = MEMORY[0x277CCA920];
    v47[0] = v35;
    v47[1] = v36;
    v47[2] = v37;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    v40 = [v38 andPredicateWithSubpredicates:v39];
    [(OSActivityStream *)v15->_stream setPredicate:v40];

    archiveCopy = v45;
    persistencePathCopy = v33;
    settingsCopy = v32;

    pathCopy = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)activityStream:(id)stream results:(id)results
{
  v41 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  resultsCopy = results;
  v8 = resultsCopy;
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
      v29 = streamCopy;
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

            eventMessage = [*(*(&v34 + 1) + 8 * i) eventMessage];
            v25 = [eventMessage stringByAppendingString:@"\n"];
            v26 = [v25 dataUsingEncoding:4];
            [v10 writeData:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v21);
      }

      [v10 closeFile];
      v13 = 1;
      streamCopy = v29;
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [resultsCopy countByEnumeratingWithState:&v30 objects:v39 count:16];
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

          eventMessage2 = [*(*(&v30 + 1) + 8 * j) eventMessage];
          NSLog(&cfstr_ReplaystatusS.isa, [eventMessage2 UTF8String]);
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

- (void)streamDidStop:(id)stop
{
  NSLog(&cfstr_LogStreamStopp.isa, a2, stop);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (void)streamDidStart:(id)start
{
  NSLog(&cfstr_LogStreamStart.isa, a2, start);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error
{
  if (!status)
  {
    [stream setDevice:{iD, d}];
  }

  return 1;
}

- (TAReplay)replayWithStartDate:(id)date endDate:(id)endDate
{
  v43[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [dateCopy descriptionWithLocale:currentLocale];
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [endDateCopy descriptionWithLocale:currentLocale2];
  NSLog(&cfstr_ReplayingWithS.isa, v9, v11);

  outputPath = self->_outputPath;
  if (outputPath)
  {
    absoluteString = [(NSURL *)outputPath absoluteString];
    NSLog(&cfstr_WritingOutputT.isa, absoluteString);
  }

  v14 = dispatch_semaphore_create(0);
  streamWait = self->_streamWait;
  self->_streamWait = v14;

  [(OSActivityStream *)self->_stream start];
  v16 = self->_streamWait;
  v17 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v16, v17))
  {
    NSLog(&cfstr_StreamStartTim.isa);
  }

  else
  {
    v18 = self->_streamWait;
    self->_streamWait = 0;

    if (self->_inputPersistencePath)
    {
      v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
      v20 = MEMORY[0x277CBEB98];
      v43[0] = objc_opt_class();
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      v22 = [v20 setWithArray:v21];

      v42 = 0;
      v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v22 fromData:v19 error:&v42];
      v24 = v42;
      v25 = v24;
      if (v24)
      {
        NSLog(&cfstr_ErrorFailedToD.isa, v24);
      }

      else
      {
        NSLog(&cfstr_BootstrappingO.isa);
        service = self->_service;
        visitState = [v23 visitState];
        [(TATrackingAvoidanceService *)service bootstrapVisitState:visitState];

        v28 = self->_service;
        deviceRecord = [v23 deviceRecord];
        [(TATrackingAvoidanceService *)v28 bootstrapDeviceRecord:deviceRecord];
      }
    }

    v30 = dispatch_semaphore_create(0);
    persistenceWait = self->_persistenceWait;
    self->_persistenceWait = v30;

    [(OSLogPersistence *)self->_persistence fetchFromStartDate:dateCopy toEndDate:endDateCopy];
    v32 = self->_persistenceWait;
    v33 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v32, v33))
    {
      NSLog(&cfstr_ReplayTimeout.isa);
    }

    v34 = self->_persistenceWait;
    self->_persistenceWait = 0;

    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    v35 = dispatch_semaphore_create(0);
    v36 = self->_streamWait;
    self->_streamWait = v35;

    [(OSActivityStream *)self->_stream stop];
    v37 = self->_streamWait;
    v38 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v37, v38))
    {
      NSLog(&cfstr_StreamStopTime.isa);
    }

    v39 = self->_streamWait;
    self->_streamWait = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)replaySingleEventLogString:(id)string
{
  v16[15] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [stringCopy stringByReplacingOccurrencesOfString:@"'" withString:&stru_287F632C0];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_287F632C0];

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
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:15];
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
    [(TATrackingAvoidanceService *)self->_service ingestTAEvent:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)persistence:(id)persistence results:(id)results error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  NSLog(&cfstr_GotActivityEve.isa);
  if (errorCopy)
  {
    NSLog(&cfstr_ErrorInReplayi.isa, errorCopy);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = resultsCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          eventMessage = [*(*(&v17 + 1) + 8 * v13) eventMessage];
          [(TAReplay *)self replaySingleEventLogString:eventMessage];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return errorCopy == 0;
}

- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate
{
  NSLog(&cfstr_FinishedFetchi.isa, a2, date, endDate);
  persistenceWait = self->_persistenceWait;
  if (persistenceWait)
  {

    dispatch_semaphore_signal(persistenceWait);
  }
}

@end