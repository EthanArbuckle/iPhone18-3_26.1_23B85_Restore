@interface DDWatchMessageReceiver
- (BOOL)isDeviceLocked;
- (BOOL)respondsToMessage:(id)a3;
- (DDWatchMessageReceiver)initWithDestination:(id)a3;
- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7;
@end

@implementation DDWatchMessageReceiver

- (DDWatchMessageReceiver)initWithDestination:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDWatchMessageReceiver;
  v6 = [(DDWatchMessageReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destination, a3);
  }

  return v7;
}

- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = a5;
  v13 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[DDWatchMessageReceiver receiveMessage:data:fromDestination:expectsResponse:response:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DDWatchMessageReceiver] %s", &v19, 0xCu);
  }

  v14 = [(DDWatchMessageReceiver *)self destination];
  v15 = [v12 isEqual:v14];

  if (v15)
  {
    if ([v10 isEqualToString:@"wakeDevice"])
    {
      v16 = @"messageReceived";
      if ([(DDWatchMessageReceiver *)self isDeviceLocked])
      {
        v17 = @"deviceIsLocked";

        v16 = v17;
      }

      v11[2](v11, v16, 0);
      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"requestDeviceState"])
    {
      v16 = objc_alloc_init(DADeviceState);
      v18 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
      [(__CFString *)v16 setTimestamp:v18];

      (v11)[2](v11, @"messageReceived", v16);
LABEL_10:
    }
  }
}

- (BOOL)isDeviceLocked
{
  v2 = MKBGetDeviceLockState();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current device lock state: %i", v6, 8u);
  }

  return v2 == -1 || (v2 - 1) < 2;
}

- (BOOL)respondsToMessage:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithObjects:@"wakeDevice", @"requestDeviceState", 0];
  v5 = [v4 containsObject:v3];

  return v5;
}

@end