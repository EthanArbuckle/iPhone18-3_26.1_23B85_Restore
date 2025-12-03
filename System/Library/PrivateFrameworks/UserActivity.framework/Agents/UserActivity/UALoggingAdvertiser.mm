@interface UALoggingAdvertiser
- (BOOL)active;
- (BOOL)resume;
- (BOOL)shouldLog:(int)log;
- (BOOL)suspend;
- (UALoggingAdvertiser)initWithManager:(id)manager;
- (id)statusString;
- (void)logItem:(id)item;
- (void)setAdvertisableItems:(id)items;
@end

@implementation UALoggingAdvertiser

- (UALoggingAdvertiser)initWithManager:(id)manager
{
  v17.receiver = self;
  v17.super_class = UALoggingAdvertiser;
  v3 = [(UAAdvertiser *)&v17 initWithManager:manager name:@"Logging"];
  if (v3)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v5 = v4;
    if (v4)
    {
      if ([v4 count])
      {
        firstObject = [v5 firstObject];

        if (firstObject)
        {
          firstObject2 = [v5 firstObject];
          v8 = [NSString stringWithFormat:@"%@/Logs/Handoff/", firstObject2];
          [(UALoggingAdvertiser *)v3 setLogFileDirectoryPath:v8];

          logFileDirectoryPath = [(UALoggingAdvertiser *)v3 logFileDirectoryPath];
          v10 = [NSString stringWithFormat:@"%@/UALoggingAdvertiserItems.log", logFileDirectoryPath];
          [(UALoggingAdvertiser *)v3 setLogFilePath:v10];
        }
      }
    }

    logFilePath = [(UALoggingAdvertiser *)v3 logFilePath];
    v12 = [NSFileHandle fileHandleForUpdatingAtPath:logFilePath];
    [(UALoggingAdvertiser *)v3 setOutputFile:v12];

    logFilePath2 = [(UALoggingAdvertiser *)v3 logFilePath];
    v14 = open([logFilePath2 fileSystemRepresentation], 770, 420);

    if (v14)
    {
      v15 = [[NSFileHandle alloc] initWithFileDescriptor:v14 closeOnDealloc:1];
      [(UALoggingAdvertiser *)v3 setOutputFile:v15];
    }
  }

  return v3;
}

- (void)setAdvertisableItems:(id)items
{
  itemsCopy = items;
  v5 = [NSMutableString stringWithString:@"["];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:buf count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        activityType = [v11 activityType];
        uuid = [v11 uuid];
        uUIDString = [uuid UUIDString];
        [v5 appendFormat:@"(%@, %@)", activityType, uUIDString, v18];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:buf count:16];
    }

    while (v8);
  }

  [v5 appendString:@"]"];
  v15 = [v5 copy];

  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "AdvertisableItems:%{private}@", buf, 0xCu);
  }

  v17 = [NSString stringWithFormat:@"Advertisable:%@", v15];
  [(UALoggingAdvertiser *)self log:5 format:@"%@", v17];
}

- (void)logItem:(id)item
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000411CC;
  v5[3] = &unk_1000C4C98;
  itemCopy = item;
  selfCopy = self;
  v4 = itemCopy;
  [v4 requestPayloadWithCompletionHandler:v5];
}

- (id)statusString
{
  logFilePath = [(UALoggingAdvertiser *)self logFilePath];
  if (logFilePath)
  {
    logFilePath2 = [(UALoggingAdvertiser *)self logFilePath];
    v5 = [NSString stringWithFormat:@"ActivityLogger: Logging to %@.\n", logFilePath2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)active
{
  logFilePath = [(UALoggingAdvertiser *)self logFilePath];
  if (logFilePath)
  {
    v3 = +[UAUserActivityDefaults sharedDefaults];
    loggingAdvertiserEnabled = [v3 loggingAdvertiserEnabled];
  }

  else
  {
    loggingAdvertiserEnabled = 0;
  }

  return loggingAdvertiserEnabled;
}

- (BOOL)resume
{
  v5.receiver = self;
  v5.super_class = UALoggingAdvertiser;
  resume = [(UACornerActionManagerHandler *)&v5 resume];
  if (resume)
  {
    [(UALoggingAdvertiser *)self log:5 format:@"UALoggingAdvertiser: ADVERTISING RESUMED."];
  }

  return resume;
}

- (BOOL)suspend
{
  v5.receiver = self;
  v5.super_class = UALoggingAdvertiser;
  suspend = [(UACornerActionManagerHandler *)&v5 suspend];
  if (suspend)
  {
    [(UALoggingAdvertiser *)self log:5 format:@"UALoggingAdvertiser: ADVERTISING SUSPENDED."];
  }

  return suspend;
}

- (BOOL)shouldLog:(int)log
{
  outputFile = [(UALoggingAdvertiser *)self outputFile];

  return log < 7 && outputFile != 0;
}

@end