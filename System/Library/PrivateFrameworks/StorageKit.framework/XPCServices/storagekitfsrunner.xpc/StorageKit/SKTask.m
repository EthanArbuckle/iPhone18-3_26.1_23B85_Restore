@interface SKTask
- (BOOL)endedSuccessfully;
- (BOOL)waitWithError:(id *)a3;
- (SKTask)initWithExecutable:(id)a3 arguments:(id)a4;
@end

@implementation SKTask

- (SKTask)initWithExecutable:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SKTask;
  v8 = [(SKTask *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSTask);
    task = v8->_task;
    v8->_task = v9;

    [(NSTask *)v8->_task setExecutableURL:v6];
    [(NSTask *)v8->_task setArguments:v7];
    v11 = v8->_task;
    v12 = +[NSPipe pipe];
    [(NSTask *)v11 setStandardOutput:v12];

    v13 = v8->_task;
    v14 = +[NSPipe pipe];
    [(NSTask *)v13 setStandardError:v14];

    v15 = [(NSTask *)v8->_task standardOutput];
    v16 = [v15 fileHandleForReading];
    stdoutHandle = v8->_stdoutHandle;
    v8->_stdoutHandle = v16;

    v18 = [(NSTask *)v8->_task standardError];
    v19 = [v18 fileHandleForReading];
    stderrHandle = v8->_stderrHandle;
    v8->_stderrHandle = v19;

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
  v3 = [(SKTask *)self task];
  if ([v3 isRunning])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SKTask *)self task];
    v4 = [v5 terminationStatus] == 0;
  }

  return v4;
}

- (BOOL)waitWithError:(id *)a3
{
  v5 = [(SKTask *)self task];
  [v5 waitUntilExit];

  v6 = [(SKTask *)self task];
  v7 = [v6 terminationStatus];

  if (a3 && v7)
  {
    v8 = [(SKTask *)self task];
    *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSPOSIXErrorDomain, [v8 terminationStatus], 0);
  }

  v9 = [(SKTask *)self task];
  v10 = [v9 terminationStatus] == 0;

  return v10;
}

@end