@interface SUCoreEventReporterDelegate
- (SUCoreEventReporter)reporter;
- (SUCoreEventReporterDelegate)initWithReporter:(id)reporter;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation SUCoreEventReporterDelegate

- (SUCoreEventReporterDelegate)initWithReporter:(id)reporter
{
  reporterCopy = reporter;
  v8.receiver = self;
  v8.super_class = SUCoreEventReporterDelegate;
  v5 = [(SUCoreEventReporterDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reporter, reporterCopy);
  }

  return v6;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (!taskCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    reporter = [(SUCoreEventReporterDelegate *)self reporter];
    taskDescription2 = reporter;
    v24 = @"task nil or not NSURLSessionTask";
LABEL_18:
    [reporter handleSendFinishedInvalidFileUUID:v24 withError:errorCopy];
    goto LABEL_19;
  }

  taskDescription = [taskCopy taskDescription];
  if (!taskDescription || (v11 = taskDescription, [taskCopy taskDescription], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) == 0))
  {
    reporter = [(SUCoreEventReporterDelegate *)self reporter];
    taskDescription2 = reporter;
    v24 = @"task description nil or not NSString";
    goto LABEL_18;
  }

  taskDescription2 = [taskCopy taskDescription];
  if (taskDescription2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    response = [taskCopy response];

    if (response)
    {
      response2 = [taskCopy response];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        response3 = [taskCopy response];
        statusCode = [response3 statusCode];
        v20 = statusCode;
        v22 = statusCode == 206 || statusCode == 200;
      }

      else
      {
        v22 = 0;
        v20 = 8206;
      }
    }

    else
    {
      v22 = 0;
      v20 = 8205;
    }

    reporter2 = [(SUCoreEventReporterDelegate *)self reporter];
    [reporter2 handleSendFinishedWithFileUUID:taskDescription2 sendSucceeded:v22 withStatusCode:v20 withError:errorCopy];
  }

  else
  {
    reporter2 = [(SUCoreEventReporterDelegate *)self reporter];
    [reporter2 handleSendFinishedInvalidFileUUID:@"task descriptor nil or not NSString (after get)" withError:errorCopy];
  }

LABEL_19:
}

- (SUCoreEventReporter)reporter
{
  WeakRetained = objc_loadWeakRetained(&self->_reporter);

  return WeakRetained;
}

@end