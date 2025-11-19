@interface IPPControlLogging
- (IPPControlLogging)initWithIdentifier:(id)a3;
- (void)_now:(id)a3 appendString:(id)a4;
- (void)_withFile:(id)a3;
- (void)onQueueAsyncIfPreserving:(id)a3;
- (void)preserveRequest:(id)a3 forSequence:(int)a4;
- (void)preserveResponse:(id)a3 forSequence:(int)a4;
- (void)preserveResponseFailure:(id)a3 forSequence:(int)a4;
@end

@implementation IPPControlLogging

- (IPPControlLogging)initWithIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IPPControlLogging;
  v5 = [(IPPControlLogging *)&v14 init];
  if (v5)
  {
    v6 = NSTemporaryDirectory();
    v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

    v8 = [NSString stringWithFormat:@"control-%d-%@.txt", getpid(), v4];
    v9 = [v7 URLByAppendingPathComponent:v8];
    controlFilePath = v5->_controlFilePath;
    v5->_controlFilePath = v9;

    v11 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v11;

    [(NSDateFormatter *)v5->_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSz"];
  }

  return v5;
}

- (void)_withFile:(id)a3
{
  v4 = a3;
  v5 = open([(NSURL *)self->_controlFilePath fileSystemRepresentation], 521, 438);
  if (v5 == -1)
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      controlFilePath = self->_controlFilePath;
      v13 = *__error();
      *buf = 138543618;
      v16 = controlFilePath;
      v17 = 1024;
      v18 = v13;
      v9 = "Could not create serialization for %{public}@ - %d";
      v10 = v7;
      v11 = 18;
      goto LABEL_7;
    }

LABEL_8:

    v14 = self->_controlFilePath;
    self->_controlFilePath = 0;

    goto LABEL_9;
  }

  v6 = v4[2](v4, v5);
  close(v5);
  if ((v6 & 1) == 0)
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_controlFilePath;
      *buf = 138543362;
      v16 = v8;
      v9 = "No longer serializing for %{public}@";
      v10 = v7;
      v11 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_now:(id)a3 appendString:(id)a4
{
  v5 = a4;
  dateFormatter = self->_dateFormatter;
  v7 = +[NSDate date];
  v8 = [(NSDateFormatter *)dateFormatter stringFromDate:v7];
  v9 = [NSString stringWithFormat:@"[%@]\n", v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045828;
  v12[3] = &unk_1000A3380;
  v13 = v9;
  v10 = v5;
  v14 = v10;
  v11 = v9;
  [(IPPControlLogging *)self _withFile:v12];
}

- (void)onQueueAsyncIfPreserving:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (qword_1000C7C68 != -1)
  {
    v7 = v4;
    sub_1000604F8();
    v5 = v7;
  }

  if (self->_controlFilePath)
  {
    v6 = v5;
    dispatch_async(qword_1000C7C60, v5);
    v5 = v6;
  }
}

- (void)preserveRequest:(id)a3 forSequence:(int)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045B40;
  v10[3] = &unk_1000A33C8;
  v14 = a4;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

- (void)preserveResponse:(id)a3 forSequence:(int)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045CF0;
  v10[3] = &unk_1000A33C8;
  v14 = a4;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

- (void)preserveResponseFailure:(id)a3 forSequence:(int)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045EA0;
  v10[3] = &unk_1000A33C8;
  v14 = a4;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

@end