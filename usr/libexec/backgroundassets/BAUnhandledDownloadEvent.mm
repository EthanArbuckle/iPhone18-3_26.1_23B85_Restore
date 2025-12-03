@interface BAUnhandledDownloadEvent
+ (id)classesForSerialization;
- (BAUnhandledDownloadEvent)initWithCoder:(id)coder;
- (BAUnhandledDownloadEvent)initWithEventType:(int64_t)type download:(id)download error:(id)error;
- (id)description;
- (id)typeString;
- (void)encodeWithCoder:(id)coder;
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

- (BAUnhandledDownloadEvent)initWithEventType:(int64_t)type download:(id)download error:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  v10 = errorCopy;
  if (type == 2 && !errorCopy)
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
      [(BAUnhandledDownloadEvent *)v11 setType:type];
      [(BAUnhandledDownloadEvent *)v12 setDownload:downloadCopy];
      [(BAUnhandledDownloadEvent *)v12 setEventError:v10];
    }

    return v12;
  }

  return result;
}

- (BAUnhandledDownloadEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BAUnhandledDownloadEvent;
  v5 = [(BAUnhandledDownloadEvent *)&v12 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  -[BAUnhandledDownloadEvent setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  v6 = +[BADownload classesForSerialization];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"download"];
  [(BAUnhandledDownloadEvent *)v5 setDownload:v7];

  if ([coderCopy containsValueForKey:@"eventError"])
  {
    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"eventError"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BAUnhandledDownloadEvent type](self forKey:{"type"), @"type"}];
  download = [(BAUnhandledDownloadEvent *)self download];
  [coderCopy encodeObject:download forKey:@"download"];

  eventError = [(BAUnhandledDownloadEvent *)self eventError];

  if (eventError)
  {
    eventError2 = [(BAUnhandledDownloadEvent *)self eventError];
    [coderCopy encodeObject:eventError2 forKey:@"eventError"];
  }
}

- (id)typeString
{
  type = [(BAUnhandledDownloadEvent *)self type];
  v3 = @"Unknown";
  if (type == 2)
  {
    v3 = @"Download Failed";
  }

  if (type == 1)
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
  type = [(BAUnhandledDownloadEvent *)self type];
  typeString = [(BAUnhandledDownloadEvent *)self typeString];
  if (type == 2)
  {
    eventError = [(BAUnhandledDownloadEvent *)self eventError];
    download = [(BAUnhandledDownloadEvent *)self download];
    v7 = [download description];
    v8 = [NSString stringWithFormat:@"Event: %@ - Error %@ - Download %@", typeString, eventError, v7];
  }

  else
  {
    eventError = [(BAUnhandledDownloadEvent *)self download];
    download = [eventError description];
    v8 = [NSString stringWithFormat:@"Event: %@ - Download %@", typeString, download];
  }

  return v8;
}

@end