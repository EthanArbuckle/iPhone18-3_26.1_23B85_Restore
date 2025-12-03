@interface BKHIDUIHostStateProximityServiceWrapper
- (BKHIDUIHostStateProximityServiceWrapper)initWithIOHIDService:(id)service;
- (BOOL)supportsProximityLPAEventTransitions;
- (void)applyUIMode:(id)mode;
- (void)updateCharacteristics:(id)characteristics;
@end

@implementation BKHIDUIHostStateProximityServiceWrapper

- (BOOL)supportsProximityLPAEventTransitions
{
  v2 = [(BKIOHIDService *)self->_proximityService propertyOfClass:objc_opt_class() forKey:@"ProximitySupportsLPAEventTransitions"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)updateCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  [characteristicsCopy setHasDiscreteProximitySensor:1];
  v4 = [(BKIOHIDService *)self->_proximityService propertyOfClass:objc_opt_class() forKey:@"SuggestedLPAScreenOffHysteresisMs"];
  v5 = v4;
  if (v4)
  {
    [characteristicsCopy setSuggestedSystemApertureGracePeriodForScreenOff:{objc_msgSend(v4, "integerValue")}];
  }
}

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_100008AE4(modeCopy, 0);
  senderID = [(BKIOHIDService *)self->_proximityService senderID];
  previousHostStateDictionary = self->_previousHostStateDictionary;
  if (BSEqualObjects())
  {
    v8 = BKLogUISensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = senderID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "  ignoring redundant mode change for proximity service %llX", &v19, 0xCu);
    }
  }

  else
  {
    v9 = [v5 copy];
    v10 = self->_previousHostStateDictionary;
    self->_previousHostStateDictionary = v9;

    if ([modeCopy postEventWithCurrentDetectionMask])
    {
      v11 = sub_100008AE4(modeCopy, 1);
      v12 = BKLogUISensor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543874;
        v20 = v11;
        v21 = 2048;
        v22 = senderID;
        v23 = 2114;
        v24 = modeCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  send %{public}@ to proximity service %llX for mode %{public}@", &v19, 0x20u);
      }

      [(BKIOHIDService *)self->_proximityService asyncSetProperty:v11 forKey:@"HostStateNotification" andDelayForSeconds:0.06];
    }

    v13 = BKLogUISensor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543874;
      v20 = v5;
      v21 = 2048;
      v22 = senderID;
      v23 = 2114;
      v24 = modeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  send %{public}@ to proximity service %llX for mode %{public}@", &v19, 0x20u);
    }

    [(BKIOHIDService *)self->_proximityService asyncSetProperty:v5 forKey:@"HostStateNotification"];
  }

  digitizerEnabled = [modeCopy digitizerEnabled];
  pocketTouchesExpected = [modeCopy pocketTouchesExpected];
  pocketTouchesExpected2 = [(BKSHIDUISensorMode *)self->_prevailingMode pocketTouchesExpected];
  if (digitizerEnabled && pocketTouchesExpected2 && (pocketTouchesExpected & 1) == 0)
  {
    v17 = BKLogUISensor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = senderID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "  send ScreenUnlocked to proximity service %llX", &v19, 0xCu);
    }

    [(BKIOHIDService *)self->_proximityService asyncSetProperty:&__kCFBooleanTrue forKey:@"ScreenUnlocked"];
  }

  prevailingMode = self->_prevailingMode;
  self->_prevailingMode = modeCopy;
}

- (BKHIDUIHostStateProximityServiceWrapper)initWithIOHIDService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BKHIDUIHostStateProximityServiceWrapper;
  v6 = [(BKHIDUIHostStateProximityServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proximityService, service);
  }

  return v7;
}

@end