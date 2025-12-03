@interface SKTask
- (BOOL)endedSuccessfully;
- (BOOL)waitWithError:(id *)error;
- (SKTask)initWithExecutable:(id)executable arguments:(id)arguments;
@end

@implementation SKTask

- (SKTask)initWithExecutable:(id)executable arguments:(id)arguments
{
  executableCopy = executable;
  argumentsCopy = arguments;
  v26.receiver = self;
  v26.super_class = SKTask;
  v8 = [(SKTask *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSTask);
    task = v8->_task;
    v8->_task = v9;

    [(NSTask *)v8->_task setExecutableURL:executableCopy];
    [(NSTask *)v8->_task setArguments:argumentsCopy];
    v11 = v8->_task;
    v12 = +[NSPipe pipe];
    [(NSTask *)v11 setStandardOutput:v12];

    v13 = v8->_task;
    v14 = +[NSPipe pipe];
    [(NSTask *)v13 setStandardError:v14];

    standardOutput = [(NSTask *)v8->_task standardOutput];
    fileHandleForReading = [standardOutput fileHandleForReading];
    stdoutHandle = v8->_stdoutHandle;
    v8->_stdoutHandle = fileHandleForReading;

    standardError = [(NSTask *)v8->_task standardError];
    fileHandleForReading2 = [standardError fileHandleForReading];
    stderrHandle = v8->_stderrHandle;
    v8->_stderrHandle = fileHandleForReading2;

    v21 = objc_opt_new();
    [(SKTask *)v8 setStderrParser:v21];

    v22 = objc_opt_new();
    [(SKTask *)v8 setStdoutParser:v22];

    v23 = [NSProgress progressWithTotalUnitCount:100];
    progress = v8->_progress;
    v8->_progress = v23;
  }

  return v8;
}

- (BOOL)endedSuccessfully
{
  task = [(SKTask *)self task];
  if ([task isRunning])
  {
    v4 = 0;
  }

  else
  {
    task2 = [(SKTask *)self task];
    v4 = [task2 terminationStatus] == 0;
  }

  return v4;
}

- (BOOL)waitWithError:(id *)error
{
  task = [(SKTask *)self task];
  [task waitUntilExit];

  task2 = [(SKTask *)self task];
  terminationStatus = [task2 terminationStatus];

  if (error && terminationStatus)
  {
    task3 = [(SKTask *)self task];
    *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSPOSIXErrorDomain, [task3 terminationStatus], 0);
  }

  task4 = [(SKTask *)self task];
  v10 = [task4 terminationStatus] == 0;

  return v10;
}

@end