@interface BAUnhandledDownloadEvent
+ (id)classesForSerialization;
- (BAUnhandledDownloadEvent)initWithCoder:(id)a3;
- (BAUnhandledDownloadEvent)initWithEventType:(int64_t)a3 download:(id)a4 error:(id)a5;
- (id)description;
- (id)typeString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAUnhandledDownloadEvent

+ (id)classesForSerialization
{
  if (qword_100089CA0 != -1)
  {
    sub_10004BBCC();
  }

  v3 = qword_100089C98;

  return v3;
}

- (BAUnhandledDownloadEvent)initWithEventType:(int64_t)a3 download:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 == 2 && !v9)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_10004BBE0();
    }

    qword_100089A98 = "BUG IN BackgroundAssets: BAUnhandledDownloadEvent initialized with a failure event but a nil error.";
    qword_100089AC8 = 6;
    __break(0xB001u);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BAUnhandledDownloadEvent;
    v11 = [(BAUnhandledDownloadEvent *)&v14 init];
    v12 = v11;
    if (v11)
    {
      [(BAUnhandledDownloadEvent *)v11 setType:a3];
      [(BAUnhandledDownloadEvent *)v12 setDownload:v8];
      [(BAUnhandledDownloadEvent *)v12 setEventError:v10];
    }

    return v12;
  }

  return result;
}

- (BAUnhandledDownloadEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BAUnhandledDownloadEvent;
  v5 = [(BAUnhandledDownloadEvent *)&v12 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  -[BAUnhandledDownloadEvent setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
  v6 = +[BADownload classesForSerialization];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"download"];
  [(BAUnhandledDownloadEvent *)v5 setDownload:v7];

  if ([v4 containsValueForKey:@"eventError"])
  {
    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"eventError"];
    [(BAUnhandledDownloadEvent *)v5 setEventError:v9];
  }

  if ([(BAUnhandledDownloadEvent *)v5 type]== 2 && ([(BAUnhandledDownloadEvent *)v5 eventError], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_10004BC68();
    }

    qword_100089A98 = "BUG IN BackgroundAssets: BAUnhandledDownloadEvent initialized from coder as a failure event but with a nil error.";
    qword_100089AC8 = 6;
    __break(0xB001u);
  }

  else
  {
LABEL_6:

    return v5;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[BAUnhandledDownloadEvent type](self forKey:{"type"), @"type"}];
  v4 = [(BAUnhandledDownloadEvent *)self download];
  [v7 encodeObject:v4 forKey:@"download"];

  v5 = [(BAUnhandledDownloadEvent *)self eventError];

  if (v5)
  {
    v6 = [(BAUnhandledDownloadEvent *)self eventError];
    [v7 encodeObject:v6 forKey:@"eventError"];
  }
}

- (id)typeString
{
  v2 = [(BAUnhandledDownloadEvent *)self type];
  v3 = @"Unknown";
  if (v2 == 2)
  {
    v3 = @"Download Failed";
  }

  if (v2 == 1)
  {
    return @"Download Finished";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = [(BAUnhandledDownloadEvent *)self type];
  v4 = [(BAUnhandledDownloadEvent *)self typeString];
  if (v3 == 2)
  {
    v5 = [(BAUnhandledDownloadEvent *)self eventError];
    v6 = [(BAUnhandledDownloadEvent *)self download];
    v7 = [v6 description];
    v8 = [NSString stringWithFormat:@"Event: %@ - Error %@ - Download %@", v4, v5, v7];
  }

  else
  {
    v5 = [(BAUnhandledDownloadEvent *)self download];
    v6 = [v5 description];
    v8 = [NSString stringWithFormat:@"Event: %@ - Download %@", v4, v6];
  }

  return v8;
}

@end