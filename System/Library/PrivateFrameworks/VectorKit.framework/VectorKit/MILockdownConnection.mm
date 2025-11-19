@interface MILockdownConnection
- (MILockdownConnection)initWithLockdownInfo:(void *)a3;
- (void)handleCancel;
- (void)readFromService;
- (void)sendData:(id)a3;
@end

@implementation MILockdownConnection

- (MILockdownConnection)initWithLockdownInfo:(void *)a3
{
  v10.receiver = self;
  v10.super_class = MILockdownConnection;
  v4 = [(MIConnection *)&v10 initWithType:1];
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, a3);
    v6 = secure_lockdown_checkin();
    CFRelease(Mutable);
    if (!v6)
    {
      if (v4->_lockdown)
      {
        v7 = [[NSThread alloc] initWithTarget:v4 selector:"readFromService" object:0];
        readThread = v4->_readThread;
        v4->_readThread = v7;

        [(NSThread *)v4->_readThread start];
      }
    }
  }

  return v4;
}

- (void)readFromService
{
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    cf = 0;
    lockdown = self->_lockdown;
    v5 = lockdown_receive_message();
    v6 = cf;
    v7 = +[NSThread currentThread];
    v8 = [v7 isCancelled];

    if (v8)
    {
      break;
    }

    if (v5)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100000EF0;
      v22[3] = &unk_100004290;
      v22[4] = self;
      dispatch_async(&_dispatch_main_q, v22);
      break;
    }

    Value = CFDictionaryGetValue(v6, @"MIPartialMessageKey");
    if (Value)
    {
      v10 = Value;
      incomingData = self->_incomingData;
      if (incomingData)
      {
        [(NSMutableData *)incomingData appendData:v10];
      }

      else
      {
        v15 = [[NSMutableData alloc] initWithData:v10];
        v16 = self->_incomingData;
        self->_incomingData = v15;
      }

      CFRelease(cf);
    }

    else
    {
      v12 = CFDictionaryGetValue(v6, @"MIFinalMessageKey");
      v13 = self->_incomingData;
      if (v12)
      {
        if (v13)
        {
          [(NSMutableData *)v13 appendData:v12];
          v14 = self->_incomingData;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          v14 = v12;
        }

        v17 = v14;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100000EF8;
        block[3] = &unk_1000042B8;
        block[4] = self;
        v21 = v17;
        v18 = v17;
        dispatch_async(&_dispatch_main_q, block);

        CFRelease(cf);
        v19 = self->_incomingData;
        self->_incomingData = 0;
      }

      else
      {
        self->_incomingData = 0;
      }
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)handleCancel
{
  readThread = self->_readThread;
  if (readThread)
  {
    [(NSThread *)readThread cancel];
    v4 = self->_readThread;
    self->_readThread = 0;
  }

  if (self->_lockdown)
  {
    lockdown_disconnect();
    self->_lockdown = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001004;
  block[3] = &unk_100004290;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sendData:(id)a3
{
  v16 = a3;
  v4 = [v16 length];
  v5 = v16;
  v6 = [v16 bytes];
  if (v4 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      if (v4 - v8 >= 8096)
      {
        v9 = 8096;
      }

      else
      {
        v9 = v4 - v8;
      }

      v10 = [NSData dataWithBytesNoCopy:&v7[v8] length:v9 freeWhenDone:0];
      v8 += v9;
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v12 = Mutable;
      if (v8 >= v4)
      {
        v13 = @"MIFinalMessageKey";
      }

      else
      {
        v13 = @"MIPartialMessageKey";
      }

      CFDictionarySetValue(Mutable, v13, v10);
      lockdown = self->_lockdown;
      v15 = lockdown_send_message();
      if (v12)
      {
        CFRelease(v12);
      }

      if (v15)
      {
        break;
      }

      if (v8 >= v4)
      {
        goto LABEL_15;
      }
    }

    [(MILockdownConnection *)self handleCancel];
  }

LABEL_15:
}

@end