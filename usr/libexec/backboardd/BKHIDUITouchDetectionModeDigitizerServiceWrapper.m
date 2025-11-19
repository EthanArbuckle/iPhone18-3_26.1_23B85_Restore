@interface BKHIDUITouchDetectionModeDigitizerServiceWrapper
- (BKHIDUITouchDetectionModeDigitizerServiceWrapper)initWithIOHIDService:(id)a3;
- (void)applyUIMode:(id)a3;
@end

@implementation BKHIDUITouchDetectionModeDigitizerServiceWrapper

- (void)applyUIMode:(id)a3
{
  v4 = a3;
  v5 = [v4 digitizerEnabled];
  v6 = [v4 proximityDetectionMode];
  if (v6 > 6 || ((1 << v6) & 0x4C) == 0)
  {
    if (v5)
    {
      LODWORD(v8) = [v4 pocketTouchesExpected];
    }

    else if ([v4 tapToWakeEnabled])
    {
      LODWORD(v8) = 254;
    }

    else
    {
      LODWORD(v8) = 255;
    }
  }

  else
  {
    LODWORD(v8) = 2;
  }

  v9 = [v4 changeSource] & 0xFFFFFFFFFFFFFFFDLL;
  if (v9 == 1)
  {
    v8 = v8 | 0x100;
  }

  else
  {
    v8 = v8;
  }

  v10 = [(BKIOHIDService *)self->_digitizerService senderID];
  v11 = BKLogUISensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((v8 + 2) >= 5u)
    {
      v12 = [NSString stringWithFormat:@"<unknown:0x%X>", v8];
    }

    else
    {
      v12 = *(&off_1000FD070 + (v8 + 2));
    }

    if (v9 == 1)
    {
      v13 = [v12 stringByAppendingString:@" | fromHardwareButton"];

      v12 = v13;
    }

    *buf = 138543874;
    v17 = v12;
    v18 = 1024;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  send mode (%{public}@/0x%X) to digitizer service %llX", buf, 0x1Cu);
  }

  digitizerService = self->_digitizerService;
  v15 = [NSNumber numberWithUnsignedInt:v8];
  [(BKIOHIDService *)digitizerService asyncSetProperty:v15 forKey:@"TouchDetectionMode"];
}

- (BKHIDUITouchDetectionModeDigitizerServiceWrapper)initWithIOHIDService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKHIDUITouchDetectionModeDigitizerServiceWrapper;
  v6 = [(BKHIDUITouchDetectionModeDigitizerServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digitizerService, a3);
  }

  return v7;
}

@end