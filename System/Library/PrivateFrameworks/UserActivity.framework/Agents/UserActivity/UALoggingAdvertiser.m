@interface UALoggingAdvertiser
- (BOOL)active;
- (BOOL)resume;
- (BOOL)shouldLog:(int)a3;
- (BOOL)suspend;
- (UALoggingAdvertiser)initWithManager:(id)a3;
- (id)statusString;
- (void)logItem:(id)a3;
- (void)setAdvertisableItems:(id)a3;
@end

@implementation UALoggingAdvertiser

- (UALoggingAdvertiser)initWithManager:(id)a3
{
  v17.receiver = self;
  v17.super_class = UALoggingAdvertiser;
  v3 = [(UAAdvertiser *)&v17 initWithManager:a3 name:@"Logging"];
  if (v3)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v5 = v4;
    if (v4)
    {
      if ([v4 count])
      {
        v6 = [v5 firstObject];

        if (v6)
        {
          v7 = [v5 firstObject];
          v8 = [NSString stringWithFormat:@"%@/Logs/Handoff/", v7];
          [(UALoggingAdvertiser *)v3 setLogFileDirectoryPath:v8];

          v9 = [(UALoggingAdvertiser *)v3 logFileDirectoryPath];
          v10 = [NSString stringWithFormat:@"%@/UALoggingAdvertiserItems.log", v9];
          [(UALoggingAdvertiser *)v3 setLogFilePath:v10];
        }
      }
    }

    v11 = [(UALoggingAdvertiser *)v3 logFilePath];
    v12 = [NSFileHandle fileHandleForUpdatingAtPath:v11];
    [(UALoggingAdvertiser *)v3 setOutputFile:v12];

    v13 = [(UALoggingAdvertiser *)v3 logFilePath];
    v14 = open([v13 fileSystemRepresentation], 770, 420);

    if (v14)
    {
      v15 = [[NSFileHandle alloc] initWithFileDescriptor:v14 closeOnDealloc:1];
      [(UALoggingAdvertiser *)v3 setOutputFile:v15];
    }
  }

  return v3;
}

- (void)setAdvertisableItems:(id)a3
{
  v4 = a3;
  v5 = [NSMutableString stringWithString:@"["];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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
        v12 = [v11 activityType];
        v13 = [v11 uuid];
        v14 = [v13 UUIDString];
        [v5 appendFormat:@"(%@, %@)", v12, v14, v18];
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

- (void)logItem:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000411CC;
  v5[3] = &unk_1000C4C98;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 requestPayloadWithCompletionHandler:v5];
}

- (id)statusString
{
  v3 = [(UALoggingAdvertiser *)self logFilePath];
  if (v3)
  {
    v4 = [(UALoggingAdvertiser *)self logFilePath];
    v5 = [NSString stringWithFormat:@"ActivityLogger: Logging to %@.\n", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)active
{
  v2 = [(UALoggingAdvertiser *)self logFilePath];
  if (v2)
  {
    v3 = +[UAUserActivityDefaults sharedDefaults];
    v4 = [v3 loggingAdvertiserEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)resume
{
  v5.receiver = self;
  v5.super_class = UALoggingAdvertiser;
  v3 = [(UACornerActionManagerHandler *)&v5 resume];
  if (v3)
  {
    [(UALoggingAdvertiser *)self log:5 format:@"UALoggingAdvertiser: ADVERTISING RESUMED."];
  }

  return v3;
}

- (BOOL)suspend
{
  v5.receiver = self;
  v5.super_class = UALoggingAdvertiser;
  v3 = [(UACornerActionManagerHandler *)&v5 suspend];
  if (v3)
  {
    [(UALoggingAdvertiser *)self log:5 format:@"UALoggingAdvertiser: ADVERTISING SUSPENDED."];
  }

  return v3;
}

- (BOOL)shouldLog:(int)a3
{
  v4 = [(UALoggingAdvertiser *)self outputFile];

  return a3 < 7 && v4 != 0;
}

@end