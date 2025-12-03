@interface AHTDeviceNotification
- (BOOL)startWithDispatchQueue:(id)queue error:(id *)error;
- (BOOL)startWithRunLoop:(id)loop error:(id *)error;
- (BOOL)stop:(id *)stop;
- (void)dealloc;
@end

@implementation AHTDeviceNotification

- (void)dealloc
{
  [(AHTDeviceNotification *)self stop:0];
  v3.receiver = self;
  v3.super_class = AHTDeviceNotification;
  [(AHTDeviceNotification *)&v3 dealloc];
}

- (BOOL)startWithRunLoop:(id)loop error:(id *)error
{
  loopCopy = loop;
  runLoop = [(AHTDeviceNotification *)self runLoop];

  if (runLoop)
  {
    v8 = 3758097109;
LABEL_3:
    v9 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v8 error:error];
    goto LABEL_4;
  }

  if (!loopCopy)
  {
    v8 = 3758097090;
    goto LABEL_3;
  }

  v11 = IONotificationPortCreate(0);
  if (!v11)
  {
    v8 = 3758097086;
    goto LABEL_3;
  }

  v12 = v11;
  RunLoopSource = IONotificationPortGetRunLoopSource(v11);
  if (RunLoopSource)
  {
    v14 = RunLoopSource;
    CFRunLoopAddSource([loopCopy getCFRunLoop], RunLoopSource, kCFRunLoopDefaultMode);
    [(AHTDeviceNotification *)self setPort:v12];
    [(AHTDeviceNotification *)self setRunLoop:loopCopy];
    [(AHTDeviceNotification *)self setRunLoopSource:v14];
    v9 = 1;
  }

  else
  {
    [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097097 error:error];
    IONotificationPortDestroy(v12);
    v9 = 0;
  }

LABEL_4:

  return v9;
}

- (BOOL)startWithDispatchQueue:(id)queue error:(id *)error
{
  queueCopy = queue;
  dispatchQueue = [(AHTDeviceNotification *)self dispatchQueue];

  if (dispatchQueue)
  {
    v8 = 3758097109;
  }

  else if (queueCopy)
  {
    v11 = IONotificationPortCreate(0);
    if (v11)
    {
      v12 = v11;
      IONotificationPortSetDispatchQueue(v11, queueCopy);
      [(AHTDeviceNotification *)self setPort:v12];
      [(AHTDeviceNotification *)self setDispatchQueue:queueCopy];
      v9 = 1;
      goto LABEL_4;
    }

    v8 = 3758097086;
  }

  else
  {
    v8 = 3758097090;
  }

  v9 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v8 error:error];
LABEL_4:

  return v9;
}

- (BOOL)stop:(id *)stop
{
  runLoop = [(AHTDeviceNotification *)self runLoop];
  if (runLoop)
  {

LABEL_4:
    runLoop2 = [(AHTDeviceNotification *)self runLoop];

    if (runLoop2)
    {
      runLoop3 = [(AHTDeviceNotification *)self runLoop];
      CFRunLoopRemoveSource([runLoop3 getCFRunLoop], -[AHTDeviceNotification runLoopSource](self, "runLoopSource"), kCFRunLoopDefaultMode);
    }

    IONotificationPortDestroy([(AHTDeviceNotification *)self port]);
    [(AHTDeviceNotification *)self setRunLoopSource:0];
    [(AHTDeviceNotification *)self setRunLoop:0];
    [(AHTDeviceNotification *)self setPort:0];
    [(AHTDeviceNotification *)self setDispatchQueue:0];
    return 1;
  }

  dispatchQueue = [(AHTDeviceNotification *)self dispatchQueue];

  if (dispatchQueue)
  {
    goto LABEL_4;
  }

  return [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097101 error:stop];
}

@end