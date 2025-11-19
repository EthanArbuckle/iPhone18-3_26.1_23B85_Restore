@interface BKSmartCoverHIDEventProcessor
+ (BOOL)isSmartCoverSupported;
- (BKSmartCoverHIDEventProcessor)initWithContext:(id)a3;
- (BKSmartCoverHIDEventProcessor)initWithSupportedHES:(unint64_t)a3 disengagedHES:(unint64_t)a4 attached:(BOOL)a5 unknownState:(BOOL)a6;
- (id)addSmartCoverObserver:(id)a3;
- (int)_smartCoverSensorsDidDisengage:(unint64_t)a3;
- (int)_smartCoverSensorsDidEngage:(unint64_t)a3;
- (int)_wakeAnimationStyle;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (unint64_t)_currentMaskForUsage:(unsigned int)a3 HIDSystem:(id)a4 mask:(unint64_t *)a5 maskIfEngaged:(unint64_t *)a6;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)serviceDidDisappear:(id)a3;
- (void)setAttachedCoverRequiresWorkaroundForOpenState:(BOOL)a3;
@end

@implementation BKSmartCoverHIDEventProcessor

- (void)appendDescriptionToFormatter:(id)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007917C;
  v12[3] = &unk_1000FCF28;
  v12[4] = self;
  v4 = a3;
  [v4 appendCustomFormatWithName:@"disengagedSensors" block:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100079190;
  v11[3] = &unk_1000FCF28;
  v11[4] = self;
  [v4 appendCustomFormatWithName:@"supportedSensors" block:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000791A4;
  v10[3] = &unk_1000FCF28;
  v10[4] = self;
  [v4 appendCustomFormatWithName:@"sensorsRequiredForOpenState" block:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000791B8;
  v9[3] = &unk_1000FCF28;
  v9[4] = self;
  [v4 appendCustomFormatWithName:@"sensorsRequiredForAmbiguousState" block:v9];
  v5 = [v4 appendBool:self->_attached withName:@"a"];
  v6 = [v4 appendBool:self->_unknownState withName:@"u"];
  state = self->_state;
  if (state >= 4)
  {
    v8 = [NSString stringWithFormat:@"<invalid:%d>", self->_state];
  }

  else
  {
    v8 = *(&off_1000FC608 + state);
  }

  [v4 appendString:v8 withName:@"state"];
}

- (id)addSmartCoverObserver:(id)a3
{
  v4 = a3;
  observerAssertion = self->_observerAssertion;
  if (!observerAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"backboardd.smart-cover-observer"];
    v7 = self->_observerAssertion;
    self->_observerAssertion = v6;

    observerAssertion = self->_observerAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)observerAssertion acquireForReason:v8 withContext:v4];

  return v9;
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  if (IOHIDEventGetIntegerValue() == 65289)
  {
    if ([(BKSmartCoverHIDEventProcessor *)self sensorsRequiredForOpenState])
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      v12 = IOHIDEventGetIntegerValue();
      v13 = IntegerValue | 0xFF090000;
      if ((IntegerValue | 0xFF090000) + 16187391 < 4)
      {
        v14 = 8;
        v15 = 16;
        v16 = 32;
        if (IntegerValue != 32)
        {
          v16 = 0;
        }

        if (IntegerValue != 4)
        {
          v15 = v16;
        }

        if (IntegerValue != 3)
        {
          v14 = v15;
        }

        v17 = 1;
        v18 = 4;
        if (IntegerValue != 2)
        {
          v18 = 0;
        }

        if (IntegerValue != 1)
        {
          v17 = v18;
        }

        if (IntegerValue <= 2)
        {
          v19 = v17;
        }

        else
        {
          v19 = v14;
        }

        if (([(BKSmartCoverHIDEventProcessor *)self supportedSensors]& v19) != 0)
        {
          if (v12)
          {
            v20 = [(BKSmartCoverHIDEventProcessor *)self _smartCoverSensorsDidEngage:v19];
          }

          else
          {
            v20 = [(BKSmartCoverHIDEventProcessor *)self _smartCoverSensorsDidDisengage:v19];
          }

          v28 = v20;
          if (v20)
          {
            [(BKSmartCoverHIDEventProcessor *)self _wakeAnimationStyle];
            BKSHIDEventSetSmartCoverInfo();
            v29 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = 1;
LABEL_42:
        v30 = sub_100008528();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v12 != 0;
          v40 = sub_100079A28(self->_disengagedSensors);
          v42 = sub_100079A28(self->_supportedSensors);
          v41 = sub_100079A28(self->_sensorsRequiredForOpenState);
          v31 = sub_100079A28(self->_sensorsRequiredForAmbiguousState);
          if (v29)
          {
            v32 = @"<none>";
          }

          else
          {
            v32 = NSStringFromBKSHIDEventSmartCoverState();
          }

          *buf = 67110658;
          v49 = IntegerValue;
          v50 = 1024;
          v51 = v39;
          v52 = 2114;
          v53 = v40;
          v54 = 2114;
          v55 = v42;
          v56 = 2114;
          v57 = v41;
          v58 = 2114;
          v59 = v31;
          v60 = 2114;
          v61 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SmartCover event usage:%X engage:%{BOOL}u -> disengaged:%{public}@ all:%{public}@ trig:%{public}@ maybe:%{public}@ -> change:%{public}@", buf, 0x40u);
          if ((v29 & 1) == 0)
          {
          }
        }

        if (!v10)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if (v13 != -16187376)
      {
        if (v13 != -16187360)
        {
          v22 = sub_100008528();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v49 = IntegerValue;
            v50 = 1024;
            v51 = v12 != 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "SmertCover unknown usage: %X down:%{BOOL}u", buf, 0xEu);
          }

          goto LABEL_59;
        }

        v26 = sub_100008528();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v49 = v12 != 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SmartCover StateUnknown:%{BOOL}u", buf, 8u);
        }

        if (v12)
        {
          self->_state = 3;
          [(BKSmartCoverHIDEventProcessor *)self _wakeAnimationStyle];
          BKSHIDEventSetSmartCoverInfo();
          v27 = sub_100008528();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sending BKSHIDEventSmartCoverAmbiguousOpen", buf, 2u);
          }

          v28 = 2;
          if (!v10)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (self->_state == 3 && (self->_sensorsRequiredForOpenState & self->_disengagedSensors) == 0)
          {
            v38 = sub_100008528();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Recovering from unknown smart cover state; Sending BKSHIDEventSmartCoverClosed", buf, 2u);
            }

            [(BKSmartCoverHIDEventProcessor *)self _smartCoverSensorsDidEngage:self->_sensorsRequiredForOpenState];
            [(BKSmartCoverHIDEventProcessor *)self _wakeAnimationStyle];
            BKSHIDEventSetSmartCoverInfo();
          }

          v28 = 0;
          if (!v10)
          {
            goto LABEL_51;
          }
        }

LABEL_50:
        IOHIDEventGetTimeStamp();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
LABEL_51:
        kdebug_trace();
        [v9 postEvent:v10 fromSender:v8];
        if (!v28)
        {
LABEL_60:
          v21 = 1;
          goto LABEL_61;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v22 = [(BSCompoundAssertion *)self->_observerAssertion context];
        v33 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v44;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v44 != v35)
              {
                objc_enumerationMutation(v22);
              }

              [*(*(&v43 + 1) + 8 * i) smartCoverStateDidChange:v28];
            }

            v34 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v34);
        }

LABEL_59:

        goto LABEL_60;
      }

      v22 = sub_100008528();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 67109120;
      v49 = v12 != 0;
      v23 = "SmartCover attach:%{BOOL}u";
      v24 = v22;
      v25 = 8;
    }

    else
    {
      v22 = sub_100008528();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 0;
      v23 = "dropping smart cover event because we don't have any HES sensors";
      v24 = v22;
      v25 = 2;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    goto LABEL_59;
  }

  v21 = 0;
LABEL_61:

  return v21;
}

- (int)_smartCoverSensorsDidDisengage:(unint64_t)a3
{
  state = self->_state;
  disengagedSensors = self->_disengagedSensors;
  sensorsRequiredForOpenState = self->_sensorsRequiredForOpenState;
  v6 = disengagedSensors | a3;
  self->_disengagedSensors = disengagedSensors | a3;
  if ((sensorsRequiredForOpenState & ~(disengagedSensors | a3)) != 0)
  {
    sensorsRequiredForAmbiguousState = self->_sensorsRequiredForAmbiguousState;
    if (v6 != disengagedSensors && sensorsRequiredForAmbiguousState != 0 && (sensorsRequiredForAmbiguousState & v6) == sensorsRequiredForAmbiguousState)
    {
      v10 = 2;
      v9 = 3;
LABEL_20:
      self->_state = v9;
      return v10;
    }
  }

  else
  {
    v8 = v6 == disengagedSensors || state != 2;
    v9 = 1;
    v10 = 1;
    if (state == 3 || !v8)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

- (int)_smartCoverSensorsDidEngage:(unint64_t)a3
{
  supportedSensors = self->_supportedSensors;
  disengagedSensors = self->_disengagedSensors;
  v5 = disengagedSensors & ~a3;
  self->_disengagedSensors = v5;
  if ((supportedSensors & v5) != 0)
  {
    return 0;
  }

  if (v5 == disengagedSensors && self->_state != 3)
  {
    return 0;
  }

  self->_state = 2;
  return 3;
}

- (void)setAttachedCoverRequiresWorkaroundForOpenState:(BOOL)a3
{
  if (self->_attachedCoverRequiresWorkaroundForOpenState != a3)
  {
    self->_attachedCoverRequiresWorkaroundForOpenState = a3;
    if (LODWORD(self->_supportedSensors))
    {
      v4 = 4;
      if (a3)
      {
        v5 = 1;
      }

      else
      {
        v5 = 4;
      }

      if (!a3)
      {
        v4 = 1;
      }

      self->_sensorsRequiredForOpenState = v5;
      self->_sensorsRequiredForAmbiguousState = v4;
      v6 = sub_100008528();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sensorsRequiredForOpenState = self->_sensorsRequiredForOpenState;
        v8[0] = 67109120;
        v8[1] = sensorsRequiredForOpenState;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HES required for open state is now:%x", v8, 8u);
      }
    }
  }
}

- (int)_wakeAnimationStyle
{
  magicKeyboardExtendedServices = self->_magicKeyboardExtendedServices;
  if (magicKeyboardExtendedServices)
  {
    LODWORD(magicKeyboardExtendedServices) = [(NSMutableSet *)magicKeyboardExtendedServices count]!= 0;
  }

  return magicKeyboardExtendedServices;
}

- (void)serviceDidDisappear:(id)a3
{
  magicKeyboardExtendedServices = self->_magicKeyboardExtendedServices;
  if (magicKeyboardExtendedServices)
  {
    [(NSMutableSet *)magicKeyboardExtendedServices removeObject:a3];
  }
}

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (!self->_magicKeyboardExtendedServices)
  {
    v7 = objc_opt_new();
    magicKeyboardExtendedServices = self->_magicKeyboardExtendedServices;
    self->_magicKeyboardExtendedServices = v7;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 propertyForKey:@"MKWakeAnimation"];
        v16 = objc_opt_class();
        v17 = v15;
        if (v16)
        {
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (v19 && [v19 isEqualToString:@"extended"] && (-[NSMutableSet containsObject:](self->_magicKeyboardExtendedServices, "containsObject:", v14) & 1) == 0)
        {
          [v14 addDisappearanceObserver:self queue:self->_matcherQueue];
          [(NSMutableSet *)self->_magicKeyboardExtendedServices addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (BKSmartCoverHIDEventProcessor)initWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 systemInterface];
  if (+[BKSmartCoverHIDEventProcessor isSmartCoverSupported])
  {
    v17 = 0;
    v18 = 0;
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:1 HIDSystem:v5 mask:&v18 maskIfEngaged:&v17];
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:2 HIDSystem:v5 mask:&v18 maskIfEngaged:&v17];
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:3 HIDSystem:v5 mask:&v18 maskIfEngaged:&v17];
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:4 HIDSystem:v5 mask:&v18 maskIfEngaged:&v17];
    v16 = 0;
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:16 HIDSystem:v5 mask:0 maskIfEngaged:&v16];
    v6 = v16 != 0;
    v15 = 0;
    [(BKSmartCoverHIDEventProcessor *)self _currentMaskForUsage:32 HIDSystem:v5 mask:0 maskIfEngaged:&v15];
    v7 = v15 != 0;
    v8 = dispatch_queue_create("BKHIDEventSmartCoverMatcherQueue", 0);
    matcherQueue = self->_matcherQueue;
    self->_matcherQueue = v8;

    v10 = [v4 serviceMatcherDataProvider];
    v11 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:65280 usage:11 builtIn:0 dataProvider:v10];
    magicKeyboardExtendedMatcher = self->_magicKeyboardExtendedMatcher;
    self->_magicKeyboardExtendedMatcher = v11;

    [(BKIOHIDServiceMatcher *)self->_magicKeyboardExtendedMatcher startObserving:self queue:self->_matcherQueue];
    self = [(BKSmartCoverHIDEventProcessor *)self initWithSupportedHES:v18 disengagedHES:v18 & ~v17 attached:v6 unknownState:v7];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_currentMaskForUsage:(unsigned int)a3 HIDSystem:(id)a4 mask:(unint64_t *)a5 maskIfEngaged:(unint64_t *)a6
{
  v9 = a4;
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  if (KeyboardEvent)
  {
    v11 = KeyboardEvent;
    v12 = [v9 systemEventOfType:3 matchingEvent:KeyboardEvent options:0];
    if (!v12)
    {
      v14 = 0;
LABEL_24:
      CFRelease(v11);
      goto LABEL_25;
    }

    v13 = v12;
    v14 = 0;
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v14 = 1;
        if (a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_18;
        }

        v14 = 4;
        if (a5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v14 = 16;
        }

        else if (a3 == 32)
        {
          v14 = 32;
          if (!a5)
          {
            goto LABEL_20;
          }

LABEL_19:
          *a5 |= v14;
          goto LABEL_20;
        }

LABEL_18:
        if (!a5)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v14 = 8;
      if (a5)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    if (a6 && IOHIDEventGetIntegerValue())
    {
      *a6 |= v14;
    }

    CFRelease(v13);
    goto LABEL_24;
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (BKSmartCoverHIDEventProcessor)initWithSupportedHES:(unint64_t)a3 disengagedHES:(unint64_t)a4 attached:(BOOL)a5 unknownState:(BOOL)a6
{
  v6 = a6;
  v29.receiver = self;
  v29.super_class = BKSmartCoverHIDEventProcessor;
  v10 = [(BKSmartCoverHIDEventProcessor *)&v29 init];
  v11 = v10;
  if (v10)
  {
    v10->_supportedSensors = a3;
    v10->_disengagedSensors = a4;
    v10->_attached = a5;
    if ((a3 ^ (a3 - 1)) <= a3 - 1)
    {
      if (!a3)
      {
        v24 = 3;
        if (!v6)
        {
          v24 = 1;
        }

        v10->_state = v24;
        goto LABEL_21;
      }

      v12 = 1;
      v13 = 4;
    }

    else
    {
      v12 = 0;
      v13 = a3;
    }

    v10->_sensorsRequiredForOpenState = v13;
    v10->_sensorsRequiredForAmbiguousState = v12;
    if (v6)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
      if (a3 && (a3 & a4) == 0)
      {
        v10->_state = 2;
        goto LABEL_13;
      }
    }

    v10->_state = v14;
    if (!a3)
    {
LABEL_21:
      v15 = sub_100008528();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No SmartCover sensors detected", &buf, 2u);
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_13:
    v15 = sub_100008528();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      supportedSensors = v11->_supportedSensors;
      v17 = sub_100079A28(supportedSensors);
      v18 = sub_100079A28(v11->_disengagedSensors);
      v19 = sub_100079A28(v11->_sensorsRequiredForOpenState);
      v20 = v19;
      LODWORD(buf) = 67110146;
      v21 = vcnt_s8(supportedSensors);
      v21.i16[0] = vaddlv_u8(v21);
      state = v11->_state;
      HIDWORD(buf) = v21.i32[0];
      v31 = 2114;
      v32 = v17;
      if (state == 2)
      {
        v23 = @"closed";
      }

      else
      {
        v23 = @"open";
      }

      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      v37 = 2114;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SmartCover sensor count:%d available:%{public}@ disengaged:%{public}@ trigger:%{public}@; effective state:%{public}@", &buf, 0x30u);
    }

    goto LABEL_23;
  }

LABEL_24:
  objc_initWeak(&buf, v11);
  v25 = &_dispatch_main_q;
  objc_copyWeak(&v28, &buf);
  v26 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v28);
  objc_destroyWeak(&buf);
  return v11;
}

+ (BOOL)isSmartCoverSupported
{
  if (qword_1001260A0 != -1)
  {
    dispatch_once(&qword_1001260A0, &stru_1000FC5E8);
  }

  return byte_100126098;
}

@end