@interface WiFiManager
+ (id)sharedWiFiManager;
- (NSString)IPAddress;
- (WiFiManager)init;
- (id)_wifiInterfaceName;
- (int)clientType;
- (void)_wifiClient;
- (void)dealloc;
- (void)setClientType:(int)a3;
@end

@implementation WiFiManager

+ (id)sharedWiFiManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100227C3C;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384180 != -1)
  {
    dispatch_once(&qword_100384180, block);
  }

  return qword_100384178;
}

- (WiFiManager)init
{
  v4.receiver = self;
  v4.super_class = WiFiManager;
  v2 = [(WiFiManager *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.WiFiManager", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  wifiClient = self->_wifiClient;
  if (wifiClient)
  {
    CFRelease(wifiClient);
  }

  v5.receiver = self;
  v5.super_class = WiFiManager;
  [(WiFiManager *)&v5 dealloc];
}

- (int)clientType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100227D0C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)IPAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100227E10;
  v10 = sub_100227E20;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100227E2C;
  v5[3] = &unk_10032A3C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setClientType:(int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100227F9C;
  v4[3] = &unk_10032CC10;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_wifiClient
{
  result = self->_wifiClient;
  if (!result)
  {
    [(WiFiManager *)self _wifiClientTypeForManagerType:self->_clientType];
    result = WiFiManagerClientCreate();
    self->_wifiClient = result;
  }

  return result;
}

- (id)_wifiInterfaceName
{
  if ([(WiFiManager *)self _wifiClient]&& (v2 = WiFiManagerClientCopyDevices()) != 0)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v4 = 0;
    }

    else
    {
      CFArrayGetValueAtIndex(v3, 0);
      v4 = WiFiDeviceClientGetInterfaceName();
    }

    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end