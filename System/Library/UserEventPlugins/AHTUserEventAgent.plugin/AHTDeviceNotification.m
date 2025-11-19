@interface AHTDeviceNotification
- (BOOL)startWithDispatchQueue:(id)a3 error:(id *)a4;
- (BOOL)startWithRunLoop:(id)a3 error:(id *)a4;
- (BOOL)stop:(id *)a3;
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

- (BOOL)startWithRunLoop:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AHTDeviceNotification *)self runLoop];

  if (v7)
  {
    v8 = 3758097109;
LABEL_3:
    v9 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v8 error:a4];
    goto LABEL_4;
  }

  if (!v6)
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
    CFRunLoopAddSource([v6 getCFRunLoop], RunLoopSource, kCFRunLoopDefaultMode);
    [(AHTDeviceNotification *)self setPort:v12];
    [(AHTDeviceNotification *)self setRunLoop:v6];
    [(AHTDeviceNotification *)self setRunLoopSource:v14];
    v9 = 1;
  }

  else
  {
    [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097097 error:a4];
    IONotificationPortDestroy(v12);
    v9 = 0;
  }

LABEL_4:

  return v9;
}

- (BOOL)startWithDispatchQueue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AHTDeviceNotification *)self dispatchQueue];

  if (v7)
  {
    v8 = 3758097109;
  }

  else if (v6)
  {
    v11 = IONotificationPortCreate(0);
    if (v11)
    {
      v12 = v11;
      IONotificationPortSetDispatchQueue(v11, v6);
      [(AHTDeviceNotification *)self setPort:v12];
      [(AHTDeviceNotification *)self setDispatchQueue:v6];
      v9 = 1;
      goto LABEL_4;
    }

    v8 = 3758097086;
  }

  else
  {
    v8 = 3758097090;
  }

  v9 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v8 error:a4];
LABEL_4:

  return v9;
}

- (BOOL)stop:(id *)a3
{
  v5 = [(AHTDeviceNotification *)self runLoop];
  if (v5)
  {

LABEL_4:
    v7 = [(AHTDeviceNotification *)self runLoop];

    if (v7)
    {
      v8 = [(AHTDeviceNotification *)self runLoop];
      CFRunLoopRemoveSource([v8 getCFRunLoop], -[AHTDeviceNotification runLoopSource](self, "runLoopSource"), kCFRunLoopDefaultMode);
    }

    IONotificationPortDestroy([(AHTDeviceNotification *)self port]);
    [(AHTDeviceNotification *)self setRunLoopSource:0];
    [(AHTDeviceNotification *)self setRunLoop:0];
    [(AHTDeviceNotification *)self setPort:0];
    [(AHTDeviceNotification *)self setDispatchQueue:0];
    return 1;
  }

  v6 = [(AHTDeviceNotification *)self dispatchQueue];

  if (v6)
  {
    goto LABEL_4;
  }

  return [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097101 error:a3];
}

@end