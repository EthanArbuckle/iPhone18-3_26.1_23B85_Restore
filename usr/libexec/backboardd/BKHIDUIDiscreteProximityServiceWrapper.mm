@interface BKHIDUIDiscreteProximityServiceWrapper
- (BKHIDUIDiscreteProximityServiceWrapper)initWithIOHIDService:(id)service;
- (void)applyUIMode:(id)mode;
@end

@implementation BKHIDUIDiscreteProximityServiceWrapper

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  senderID = [(BKIOHIDService *)self->_proximityService senderID];
  if (!modeCopy)
  {
    goto LABEL_6;
  }

  if ([modeCopy estimatedProximityMode])
  {
    v6 = 3;
    goto LABEL_7;
  }

  v7 = [modeCopy proximityDetectionMode] - 1;
  if (v7 <= 0xC)
  {
    v6 = dword_1000BFC0C[v7];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:
  if ([modeCopy postEventWithCurrentDetectionMask])
  {
    v8 = BKLogUISensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"pocket";
      v18 = 138543874;
      v19 = @"pocket";
      v20 = 1024;
      v21 = 3;
      v22 = 2048;
      v23 = senderID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "  send mode %{public}@/%d to proximity service %llX", &v18, 0x1Cu);
    }

    [(BKIOHIDService *)self->_proximityService asyncSetProperty:&off_100107940 forKey:@"DetectionMode" andDelayForSeconds:0.06];
  }

  v10 = BKLogUISensor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 5)
    {
      v11 = @"<unknown>";
    }

    else
    {
      v11 = *(&off_1000FCFC0 + v6);
    }

    v12 = v11;
    v18 = 138543874;
    v19 = v12;
    v20 = 1024;
    v21 = v6;
    v22 = 2048;
    v23 = senderID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "  send mode %{public}@/%d to proximity service %llX", &v18, 0x1Cu);
  }

  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v14 = [NSNumber numberWithUnsignedInt:v6];
  [v13 setObject:v14 forKey:@"DetectionMode"];

  pocketTouchesExpected = [modeCopy pocketTouchesExpected];
  if (-[BKSHIDUISensorMode pocketTouchesExpected](self->_prevailingMode, "pocketTouchesExpected") && (pocketTouchesExpected & 1) == 0 && [modeCopy digitizerEnabled])
  {
    v16 = BKLogUISensor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = senderID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "  send kAppleProxScreenUnlockedKey to service %llX", &v18, 0xCu);
    }

    [v13 setObject:&__kCFBooleanTrue forKey:@"ScreenUnlocked"];
  }

  [(BKIOHIDService *)self->_proximityService asyncSetProperties:v13];
  prevailingMode = self->_prevailingMode;
  self->_prevailingMode = modeCopy;
}

- (BKHIDUIDiscreteProximityServiceWrapper)initWithIOHIDService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BKHIDUIDiscreteProximityServiceWrapper;
  v6 = [(BKHIDUIDiscreteProximityServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proximityService, service);
  }

  return v7;
}

@end