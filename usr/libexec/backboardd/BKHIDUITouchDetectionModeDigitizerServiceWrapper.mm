@interface BKHIDUITouchDetectionModeDigitizerServiceWrapper
- (BKHIDUITouchDetectionModeDigitizerServiceWrapper)initWithIOHIDService:(id)service;
- (void)applyUIMode:(id)mode;
@end

@implementation BKHIDUITouchDetectionModeDigitizerServiceWrapper

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  digitizerEnabled = [modeCopy digitizerEnabled];
  proximityDetectionMode = [modeCopy proximityDetectionMode];
  if (proximityDetectionMode > 6 || ((1 << proximityDetectionMode) & 0x4C) == 0)
  {
    if (digitizerEnabled)
    {
      LODWORD(v8) = [modeCopy pocketTouchesExpected];
    }

    else if ([modeCopy tapToWakeEnabled])
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

  v9 = [modeCopy changeSource] & 0xFFFFFFFFFFFFFFFDLL;
  if (v9 == 1)
  {
    v8 = v8 | 0x100;
  }

  else
  {
    v8 = v8;
  }

  senderID = [(BKIOHIDService *)self->_digitizerService senderID];
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
    v21 = senderID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  send mode (%{public}@/0x%X) to digitizer service %llX", buf, 0x1Cu);
  }

  digitizerService = self->_digitizerService;
  v15 = [NSNumber numberWithUnsignedInt:v8];
  [(BKIOHIDService *)digitizerService asyncSetProperty:v15 forKey:@"TouchDetectionMode"];
}

- (BKHIDUITouchDetectionModeDigitizerServiceWrapper)initWithIOHIDService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BKHIDUITouchDetectionModeDigitizerServiceWrapper;
  v6 = [(BKHIDUITouchDetectionModeDigitizerServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digitizerService, service);
  }

  return v7;
}

@end