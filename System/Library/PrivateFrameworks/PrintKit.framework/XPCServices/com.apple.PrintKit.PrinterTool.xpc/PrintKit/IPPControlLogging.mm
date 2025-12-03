@interface IPPControlLogging
- (IPPControlLogging)initWithIdentifier:(id)identifier;
- (void)_now:(id)_now appendString:(id)string;
- (void)_withFile:(id)file;
- (void)onQueueAsyncIfPreserving:(id)preserving;
- (void)preserveRequest:(id)request forSequence:(int)sequence;
- (void)preserveResponse:(id)response forSequence:(int)sequence;
- (void)preserveResponseFailure:(id)failure forSequence:(int)sequence;
@end

@implementation IPPControlLogging

- (IPPControlLogging)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IPPControlLogging;
  v5 = [(IPPControlLogging *)&v14 init];
  if (v5)
  {
    v6 = NSTemporaryDirectory();
    v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

    identifierCopy = [NSString stringWithFormat:@"control-%d-%@.txt", getpid(), identifierCopy];
    v9 = [v7 URLByAppendingPathComponent:identifierCopy];
    controlFilePath = v5->_controlFilePath;
    v5->_controlFilePath = v9;

    v11 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v11;

    [(NSDateFormatter *)v5->_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSz"];
  }

  return v5;
}

- (void)_withFile:(id)file
{
  fileCopy = file;
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

  v6 = fileCopy[2](fileCopy, v5);
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

- (void)_now:(id)_now appendString:(id)string
{
  stringCopy = string;
  dateFormatter = self->_dateFormatter;
  v7 = +[NSDate date];
  v8 = [(NSDateFormatter *)dateFormatter stringFromDate:v7];
  v9 = [NSString stringWithFormat:@"[%@]\n", v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045828;
  v12[3] = &unk_1000A3380;
  v13 = v9;
  v10 = stringCopy;
  v14 = v10;
  v11 = v9;
  [(IPPControlLogging *)self _withFile:v12];
}

- (void)onQueueAsyncIfPreserving:(id)preserving
{
  preservingCopy = preserving;
  v5 = preservingCopy;
  if (qword_1000C7C68 != -1)
  {
    v7 = preservingCopy;
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

- (void)preserveRequest:(id)request forSequence:(int)sequence
{
  requestCopy = request;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045B40;
  v10[3] = &unk_1000A33C8;
  sequenceCopy = sequence;
  v8 = requestCopy;
  v11 = v8;
  selfCopy = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

- (void)preserveResponse:(id)response forSequence:(int)sequence
{
  responseCopy = response;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045CF0;
  v10[3] = &unk_1000A33C8;
  sequenceCopy = sequence;
  v8 = responseCopy;
  v11 = v8;
  selfCopy = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

- (void)preserveResponseFailure:(id)failure forSequence:(int)sequence
{
  failureCopy = failure;
  v7 = +[NSDate date];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100045EA0;
  v10[3] = &unk_1000A33C8;
  sequenceCopy = sequence;
  v8 = failureCopy;
  v11 = v8;
  selfCopy = self;
  v13 = v7;
  v9 = v7;
  [(IPPControlLogging *)self onQueueAsyncIfPreserving:v10];
}

@end