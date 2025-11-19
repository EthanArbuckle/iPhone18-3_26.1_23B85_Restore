@interface BKKeyboardHIDEventProcessor
- (BKKeyboardHIDEventProcessor)initWithContext:(id)a3;
- (BKKeyboardHIDEventProcessor)initWithContext:(id)a3 server:(id)a4;
- (BOOL)_lock_anyKeyboardHasCapsLockActive;
- (BOOL)capsLockKeyHasLanguageSwitchLabel;
- (BOOL)isCapsLockLightOn;
- (BOOL)isCapsLockLightOnForSenderID:(unint64_t)a3;
- (BOOL)keyboardWantsStandardTypeOverrideForSenderID:(unint64_t)a3;
- (NSArray)allUsableDeviceProperties;
- (NSSet)keyCommandsToAuthenticate;
- (NSString)debugDescription;
- (NSString)keyboardLayout;
- (id)addGlobalKeyboardObserver:(id)a3;
- (id)devicePropertiesForSenderID:(unint64_t)a3;
- (id)keyboardLanguageForSenderID:(unint64_t)a3;
- (id)setObservingUsableKeyboardConnections:(id)a3;
- (int)_eventSourceForKeyboardInfo:(id)a3 sender:(id)a4;
- (int)eventSourceForSender:(id)a3;
- (int64_t)_lock_activeModifiers;
- (int64_t)activeModifiers;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (int64_t)processEvent:(__IOHIDEvent *)a3 withContext:(id)a4 buffer:(id)a5 sequence:(id)a6 sender:(id)a7 dispatcher:(id)a8 resolution:(id)a9;
- (void)_commonInitWithContext:(id)a3 server:(id)a4;
- (void)_lock_addModifierKeyDown:(id)a3;
- (void)_lock_applyDeliveryInformation:(id)a3 resolution:(id)a4 toEvent:(__IOHIDEvent *)a5;
- (void)_lock_cancelKeyDownEvents:(id)a3;
- (void)_lock_dispatchKeyEvent:(__IOHIDEvent *)a3 keyCommand:(id)a4 keyboardInfo:(id)a5 eventSource:(int)a6 fromSender:(id)a7 dispatcher:(id)a8;
- (void)_lock_handleKeyEvent:(__IOHIDEvent *)a3 fromSender:(id)a4 dispatcher:(id)a5 bypassCapsLockChecks:(BOOL)a6;
- (void)_lock_handleUnicodeEvent:(__IOHIDEvent *)a3 fromSender:(id)a4 dispatcher:(id)a5;
- (void)_lock_keyboardRemoved:(id)a3;
- (void)_lock_keyboardsDetected:(id)a3;
- (void)_lock_postSyntheticCapsLockPressForKeyboard:(id)a3;
- (void)_lock_publishUsableKeyboards:(id)a3 toServiceConnection:(id)a4;
- (void)_lock_publishUsableKeyboardsToServiceConnections;
- (void)_lock_removeCapsLockEntryIfNeeded:(id)a3;
- (void)_lock_removeModifierKeyDown:(id)a3;
- (void)_lock_removeSenderIDFromTracking:(unint64_t)a3;
- (void)_lock_restoreCapsLockStateToKeyboard:(id)a3;
- (void)_lock_setCapsLockActive:(BOOL)a3 onSenderID:(unint64_t)a4;
- (void)_lock_setKeyboardLightsSuspended:(BOOL)a3;
- (void)_lock_setPrimaryKeyboard:(id)a3;
- (void)_lock_smartKeyboardAttachmentStateDidChange:(id)a3;
- (void)_lock_stopWatchingForGestures:(id)a3;
- (void)_lock_updateGlobalModifierState;
- (void)_lock_usableKeyboardAttached:(id)a3;
- (void)_lock_usableKeyboardDetached:(id)a3;
- (void)_lock_watchForGestures:(id)a3;
- (void)_modifierRemappingsDidChange;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)bufferDidEndDraining:(id)a3;
- (void)bufferingDidAddNewBuffers:(id)a3;
- (void)dealloc;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)postEvent:(__IOHIDEvent *)a3 withContext:(id)a4 toResolution:(id)a5 fromSequence:(id)a6;
- (void)serviceDidDisappear:(id)a3;
- (void)setCapsLockDelayOverride:(double)a3;
- (void)setCapsLockDelayOverride:(double)a3 forSenderID:(unint64_t)a4;
- (void)setKeyCommandsToAuthenticate:(id)a3;
- (void)setKeyboardLayout:(id)a3;
- (void)setKeyboardLayout:(id)a3 forSenderID:(unint64_t)a4;
- (void)setRomanCapsLockSwitchModeActive:(BOOL)a3;
- (void)setRomanCapsLockSwitchModeActive:(BOOL)a3 forSenderID:(unint64_t)a4;
- (void)setStandardType:(unsigned int)a3 forSenderID:(unint64_t)a4;
- (void)smartKeyboardAttachmentStateDidChange:(id)a3;
@end

@implementation BKKeyboardHIDEventProcessor

- (id)setObservingUsableKeyboardConnections:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  v6 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v5];
  v7 = [v4 BOOLValue];
  if (v7 == [v6 BOOLValue] || (-[BKHIDDomainServiceServer setUserInfo:forConnection:](self->_server, "setUserInfo:forConnection:", v4, v5), !v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_usableKeyboards bs_map:&stru_1000FB268];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 appendObject:self->_keyboardLayout withName:@"keyboardLayout"];
  v6 = [v4 appendObject:self->_primaryKeyboardInfo withName:@"primaryKeyboard"];
  v7 = [v4 appendObject:self->_usableKeyboards withName:@"usableKeyboards"];
  v8 = [v4 appendBool:self->_countOfKeyboardsRequiringAllSmartCoverHESDisengagedForOpen > 0 withName:@"StrictWakeHallEffectSensors"];
  v9 = [v4 appendObject:self->_keyDownToEventSequence withName:@"keyDownToEventSequence"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000429F8;
  v10[3] = &unk_1000FCF28;
  v10[4] = self;
  [v4 appendCustomFormatWithName:@"globalActiveModifiers" block:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)serviceDidDisappear:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKKeyboardHIDEventProcessor *)self _lock_keyboardRemoved:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v5 = a4;
  v7 = [v5 bs_compactMap:&stru_1000FB248];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKHIDSystemInterfacing *)self->_eventSystemInterface senderCache];
  [v6 addSenderInfo:v5];

  [(BKKeyboardHIDEventProcessor *)self _lock_keyboardsDetected:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)bufferDidEndDraining:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  keyDownToEventSequence = self->_keyDownToEventSequence;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000431F8;
  v7[3] = &unk_1000FB228;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)keyDownToEventSequence enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)bufferingDidAddNewBuffers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_downModifierKeys;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_keyDownToEventSequence objectForKey:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 repostFirstEventToBufferedTargets:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 withContext:(id)a4 buffer:(id)a5 sequence:(id)a6 sender:(id)a7 dispatcher:(id)a8 resolution:(id)a9
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a9;
  v17 = *a3;
  Type = IOHIDEventGetType();
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (Type == 30)
  {
    v19 = 1;
  }

  else if (IOHIDEventGetIntegerValue())
  {
    v19 = 1;
  }

  else
  {
    v19 = 3;
  }

  [v15 postEvent:v17 position:v19 additionalContext:v13 fromBuffer:v14 toResolution:v16];
  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (void)postEvent:(__IOHIDEvent *)a3 withContext:(id)a4 toResolution:(id)a5 fromSequence:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  Copy = IOHIDEventCreateCopy();
  v14 = [v11 display];
  v15 = [v14 _hardwareIdentifier];
  _BKHIDNoteUserEventOccurredOnDisplay();

  v16 = v10;
  if (!v16)
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"extras", v27];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v41 = v29;
      v42 = 2114;
      v43 = v31;
      v44 = 2048;
      v45 = self;
      v46 = 2114;
      v47 = @"BKKeyboardHIDEventProcessor.m";
      v48 = 1024;
      v49 = 1404;
      v50 = 2114;
      v51 = v28;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000437D8);
  }

  v17 = v16;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [v17 classForCoder];
    if (!v32)
    {
      v32 = objc_opt_class();
    }

    v33 = NSStringFromClass(v32);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"extras", v33, v35];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v41 = v37;
      v42 = 2114;
      v43 = v39;
      v44 = 2048;
      v45 = self;
      v46 = 2114;
      v47 = @"BKKeyboardHIDEventProcessor.m";
      v48 = 1024;
      v49 = 1404;
      v50 = 2114;
      v51 = v36;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100043914);
  }

  [(BKKeyboardHIDEventProcessor *)self _lock_applyDeliveryInformation:v17 resolution:v11 toEvent:Copy];
  IntegerValue = IOHIDEventGetIntegerValue();
  if ([BKSHIDEventKeyCommand _isModifierKeyWithPage:IntegerValue usage:IOHIDEventGetIntegerValue()])
  {
    v19 = BKLogKeyboard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = BKSHIDEventGetConciseDescription();
      v21 = [BSDescriptionStream descriptionForRootObject:v11];
      *buf = 138543618;
      v41 = v20;
      v42 = 2114;
      v43 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  v22 = sub_100052990();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = BKSHIDEventGetConciseDescription();
    v25 = [BSDescriptionStream descriptionForRootObject:v11];
    *buf = 138543618;
    v41 = v24;
    v42 = 2114;
    v43 = v25;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@ -> %{public}@", buf, 0x16u);
  }

  v23 = [v12 dispatcher];
  [v23 postEvent:Copy toDestination:v11];

  CFRelease(Copy);
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  Type = IOHIDEventGetType();
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (Type == 30)
  {
    [(BKKeyboardHIDEventProcessor *)self _lock_handleUnicodeEvent:v10 fromSender:v8 dispatcher:v9];
  }

  else
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v13 = IOHIDEventGetIntegerValue();
    if ((IntegerValue != 7 || v13 == 102) && !GSKeyboardIsGlobeKeyUsagePair())
    {
      v14 = 0;
      goto LABEL_8;
    }

    [(BKKeyboardHIDEventProcessor *)self _lock_handleKeyEvent:v10 fromSender:v8 dispatcher:v9 bypassCapsLockChecks:0];
    [(BKKeyboardHIDEventProcessor *)self _lock_updateGlobalModifierState];
  }

  v14 = 1;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (void)_modifierRemappingsDidChange
{
  os_unfair_lock_lock(&self->_lock);
  v3 = BKLogKeyboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_modifierRemappingsDidChange", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_usableKeyboards;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9 && *(v9 + 8) == 1 && (sub_1000761BC(*(*(&v13 + 1) + 8 * i)) & 1) == 0)
        {
          v10 = BKLogKeyboard();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(v9 + 24);
            v12 = [v11 senderID];
            *buf = 134217984;
            v18 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_modifierRemappingsDidChange: [senderID %llX] capslock unmapped", buf, 0xCu);
          }

          [(BKKeyboardHIDEventProcessor *)self _lock_postSyntheticCapsLockPressForKeyboard:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setCapsLockActive:(BOOL)a3 onSenderID:(unint64_t)a4
{
  v5 = a3;
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v8];

  if (v9)
  {
    if (*(v9 + 9) == 1)
    {
      v10 = BKLogKeyboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 134217984;
        v17 = a4;
        v11 = "setCapsLockActive: [senderID %llX] the caps lock key is a language switch -- you cannot modify caps lock state";
LABEL_16:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v16, 0xCu);
      }
    }

    else if (sub_1000761BC(v9))
    {
      v12 = @"off";
      if (v5)
      {
        v12 = @"active";
      }

      v10 = v12;
      v13 = *(v9 + 8);
      v14 = BKLogKeyboard();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13 == v5)
      {
        if (v15)
        {
          v16 = 134218242;
          v17 = a4;
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setCapsLockActive: [senderID %llX] caps lock is already %{public}@", &v16, 0x16u);
        }
      }

      else
      {
        if (v15)
        {
          v16 = 134218242;
          v17 = a4;
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setCapsLockActive: [senderID %llX] set caps lock to %{public}@", &v16, 0x16u);
        }

        [(BKKeyboardHIDEventProcessor *)self _lock_postSyntheticCapsLockPressForKeyboard:v9];
      }
    }

    else
    {
      v10 = BKLogKeyboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 134217984;
        v17 = a4;
        v11 = "setCapsLockActive: [senderID %llX] the capslock key on this keyboard has been remapped and there are no keys mapped to capslock";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = BKLogKeyboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      v17 = a4;
      v11 = "setCapsLockActive: [senderID %llX] no such keyboard";
      goto LABEL_16;
    }
  }
}

- (void)_lock_postSyntheticCapsLockPressForKeyboard:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;
  [v8 senderID];
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetSenderID();
  mach_absolute_time();
  v6 = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetSenderID();
  v7 = self->_eventDispatcher;
  [(BKKeyboardHIDEventProcessor *)self _lock_handleKeyEvent:KeyboardEvent fromSender:v8 dispatcher:v7 bypassCapsLockChecks:1];
  [(BKKeyboardHIDEventProcessor *)self _lock_handleKeyEvent:v6 fromSender:v8 dispatcher:v7 bypassCapsLockChecks:1];

  CFRelease(KeyboardEvent);
  CFRelease(v6);
}

- (void)_lock_smartKeyboardAttachmentStateDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = BKLogKeyboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "smartKeyboardAttachmentStateDidChange:%{public}@", &v6, 0xCu);
  }

  if (sub_100076354(v4))
  {
    [(BKKeyboardHIDEventProcessor *)self _lock_usableKeyboardAttached:v4];
  }

  else
  {
    [(BKKeyboardHIDEventProcessor *)self _lock_cancelKeyDownEvents:v4];
    [(BKKeyboardHIDEventProcessor *)self _lock_usableKeyboardDetached:v4];
  }
}

- (void)smartKeyboardAttachmentStateDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKKeyboardHIDEventProcessor *)self _lock_smartKeyboardAttachmentStateDidChange:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_stopWatchingForGestures:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 13);
    if (v4)
    {
      v7 = v4;
      [(NSMutableArray *)self->_eventRecognizers removeObject:v4];
      v5 = +[BKHIDEventProcessorRegistry sharedInstance];
      v6 = [v5 eventProcessorOfClass:objc_opt_class()];

      [v6 removeRecognizer:v7];
      v4 = v7;
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)_lock_watchForGestures:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && *(v4 + 14) == 1)
  {
    v6 = v4[14];
    if (v6)
    {
      v7 = v6;
LABEL_20:
      v23 = [BKHIDEventSequenceRecognizer recognizerForEventDescriptor:v7];
      [v23 setShouldConsumeEvents:1];
      objc_storeStrong(v5 + 13, v23);
      [(NSMutableArray *)self->_eventRecognizers addObject:v23];
      v24 = +[BKHIDEventProcessorRegistry sharedInstance];
      v25 = [v24 eventProcessorOfClass:objc_opt_class()];

      objc_initWeak(&location, self);
      objc_initWeak(&from, v5);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100044628;
      v26[3] = &unk_1000FB678;
      objc_copyWeak(&v27, &from);
      objc_copyWeak(&v28, &location);
      [v25 addRecognizer:v23 recognitionBlock:v26];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      goto LABEL_21;
    }

    v8 = [v4[3] propertyForKey:@"KeyboardEnabledEvent"];
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 objectForKeyedSubscript:@"EventType"];
    v14 = [v12 objectForKeyedSubscript:@"UsagePage"];
    v15 = [v12 objectForKeyedSubscript:@"Usage"];

    if (v13 && v14 && v15)
    {
      v16 = [v14 unsignedIntegerValue];
      v17 = [v15 unsignedIntegerValue];
      v18 = [v13 unsignedIntegerValue];
      v19 = [BKSHIDEventUsagePairDescriptor descriptorForHIDEventType:v18 page:v16 usage:v17];
      if (v19)
      {
        v20 = [v19 descriptorByAddingSenderIDToMatchCriteria:{objc_msgSend(v5[3], "senderID")}];
        v21 = v5[14];
        v5[14] = v20;
      }

      else
      {
        v22 = sub_1000526D8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location) = 67109378;
          HIDWORD(location) = v18;
          v31 = 2114;
          Name = IOHIDEventTypeGetName();
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "keyboardActivationChangeEventDescriptor: unsupported KeyboardEnabledEvent:EventType %d (%{public}@)", &location, 0x12u);
        }
      }
    }

    v7 = v5[14];
    if (v7)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_lock_handleKeyEvent:(__IOHIDEvent *)a3 fromSender:(id)a4 dispatcher:(id)a5 bypassCapsLockChecks:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 senderID]);
  v13 = [(NSMutableDictionary *)self->_allKeyboardsBySenderID objectForKeyedSubscript:v12];
  primaryKeyboardInfo = v13;
  if (!v13)
  {
    primaryKeyboardInfo = self->_primaryKeyboardInfo;
  }

  v15 = primaryKeyboardInfo;

  IntegerValue = IOHIDEventGetIntegerValue();
  v17 = IOHIDEventGetIntegerValue();
  v18 = [(BKKeyboardHIDEventProcessor *)self _eventSourceForKeyboardInfo:v15 sender:v10];
  if (IntegerValue == 57 && v17)
  {
    if (a6)
    {
      goto LABEL_10;
    }

    if (v15 && v15->_capsLockRomanSwitchMode)
    {
      v19 = v15;
LABEL_14:
      gsKeyboard = v15->_gsKeyboard;
      goto LABEL_15;
    }

    if (sub_1000761BC(v15))
    {
LABEL_10:
      if (v15)
      {
        v20 = !v15->_capsLockOn;
      }

      else
      {
        v20 = 1;
      }

      [(BKKeyboardHIDEventProcessor *)self _lock_setCapsLockState:v20 & 1 forKeyboard:v15 updateGS:0];
    }
  }

  if (v15)
  {
    goto LABEL_14;
  }

  gsKeyboard = 0;
LABEL_15:
  if ([BKSHIDEventKeyCommand _shouldMatchKeyCommandsForEvent:a3 gsKeyboard:gsKeyboard])
  {
    v25 = 0;
    v22 = [BKSHIDEventKeyCommand keyCommandForEvent:a3 gsKeyboard:gsKeyboard activeModifiers:&v25];
    if (v15)
    {
      v15->_activeModifiers = v25;
    }
  }

  else
  {
    v22 = 0;
  }

  [(BKKeyboardHIDEventProcessor *)self _lock_dispatchKeyEvent:a3 keyCommand:v22 keyboardInfo:v15 eventSource:v18 fromSender:v10 dispatcher:v11];
  v23 = [(NSMutableDictionary *)self->_senderIDToKeysDown objectForKey:v12];
  v24 = [v23 count];

  if (!v24)
  {
    [(NSMutableSet *)self->_senderIDsWithModifiersOnly removeObject:v12];
  }
}

- (void)_lock_dispatchKeyEvent:(__IOHIDEvent *)a3 keyCommand:(id)a4 keyboardInfo:(id)a5 eventSource:(int)a6 fromSender:(id)a7 dispatcher:(id)a8
{
  v50 = a4;
  v53 = a5;
  v13 = a7;
  v52 = a8;
  v54 = [(BKHIDSystemInterfacing *)self->_eventSystemInterface deliveryManager];
  IntegerValue = IOHIDEventGetIntegerValue();
  v15 = IOHIDEventGetIntegerValue();
  v57 = a3;
  v16 = IOHIDEventGetIntegerValue();
  v58 = v13;
  v17 = [v13 senderID];
  v18 = [NSNumber numberWithUnsignedLongLong:v17];
  objc_opt_self();
  v19 = objc_alloc_init(_BKKeyDownKey);
  v19->_senderID = v17;
  v19->_page = IntegerValue;
  v19->_usage = v15;
  v20 = v19;
  v55 = [(NSMutableDictionary *)self->_keyDownToEventSequence objectForKey:?];
  v21 = [(NSMutableDictionary *)self->_senderIDToKeysDown objectForKey:v18];
  v59 = v16;
  if (![BKSHIDEventKeyCommand _isModifierKeyWithPage:IntegerValue usage:v15])
  {
    v22 = self;
    v23 = v18;
    [(NSMutableSet *)self->_senderIDsWithModifiersOnly removeObject:v18];
    v25 = v50;
    v24 = v52;
    v27 = v53;
    v26 = v54;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_11:
    v51 = v21;
    [v21 removeObject:v20];
    v28 = v57;
    goto LABEL_12;
  }

  v22 = self;
  v23 = v18;
  if (![v21 count])
  {
    [(NSMutableSet *)self->_senderIDsWithModifiersOnly addObject:v18];
  }

  v25 = v50;
  v24 = v52;
  v26 = v54;
  if (!v16)
  {
    [(BKKeyboardHIDEventProcessor *)self _lock_removeModifierKeyDown:v20];
    v27 = v53;
    goto LABEL_11;
  }

  [(BKKeyboardHIDEventProcessor *)self _lock_addModifierKeyDown:v20];
  v27 = v53;
LABEL_7:
  v28 = v57;
  if (!v21)
  {
    v21 = objc_alloc_init(NSMutableSet);
    [(NSMutableDictionary *)v22->_senderIDToKeysDown setObject:v21 forKey:v23];
  }

  v51 = v21;
  [v21 addObject:v20];
LABEL_12:
  v29 = v55;
  v30 = objc_alloc_init(_BKKeyboardEventExtras);
  v31 = v30;
  if (v30)
  {
    v30->_eventSource = a6;
    v30->_modifiersOnly = [(NSMutableSet *)v22->_senderIDsWithModifiersOnly containsObject:v23];
    if (!v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [(NSMutableSet *)v22->_senderIDsWithModifiersOnly containsObject:v23];
    if (!v27)
    {
      goto LABEL_17;
    }
  }

  if (v27[11])
  {
    ModifierState = GSKeyboardGetModifierState();
    if (v31)
    {
      v31->_GSModifierState = ModifierState;
    }
  }

LABEL_17:
  if (v55)
  {
    if (v59)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    goto LABEL_47;
  }

  if (v59)
  {
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v34 = BKLogKeyboard();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v66 = v20;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "missing a sequence for %{public}@", buf, 0xCu);
    }

    v28 = v57;
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  v35 = [v26 sequenceForKeyCommand:v25 sender:v58 processor:v22 dispatcher:v24 additionalContext:v31];
  if (v35)
  {
    v29 = v35;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v36 = v22->_keyCommandsToAuthenticate;
    v37 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v37)
    {
      v38 = v37;
      v47 = v20;
      v49 = v23;
      v56 = v29;
      v39 = v25;
      v40 = *v61;
      while (2)
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v60 + 1) + 8 * i);
          v43 = [v42 keyCommand];
          if ([v43 describes:v39] == 3)
          {
            if (v31)
            {
              objc_storeStrong(&v31->_authenticationSpecification, v42);
            }

            goto LABEL_41;
          }
        }

        v38 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }

LABEL_41:

      v25 = v39;
      v24 = v52;
      v27 = v53;
      v26 = v54;
      v29 = v56;
      v20 = v47;
      v23 = v49;
    }

    else
    {

      v26 = v54;
    }

    v28 = v57;
    goto LABEL_44;
  }

LABEL_37:
  v29 = [v26 sequenceForFirstEvent:v28 sender:v58 processor:v22 dispatcher:v24 additionalContext:v31];
LABEL_44:
  [(NSMutableDictionary *)v22->_keyDownToEventSequence setObject:v29 forKey:v20];
  if (v59)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

LABEL_47:
  [v29 postEvent:v28 position:v33 additionalContext:v31];
  if (v29 && !v59)
  {
    [(NSMutableDictionary *)v22->_keyDownToEventSequence removeObjectForKey:v20];
  }

  v44 = sub_100052990();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    [BSDescriptionStream descriptionForRootObject:v22->_keyDownToEventSequence];
    v46 = v45 = v23;
    *buf = 138543362;
    v66 = v46;
    _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "keys down: %{public}@", buf, 0xCu);

    v23 = v45;
  }
}

- (void)_lock_applyDeliveryInformation:(id)a3 resolution:(id)a4 toEvent:(__IOHIDEvent *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [BKSHIDEventKeyboardAttributes baseAttributesFromProvider:v8];
  v10 = [(BKHIDSystemInterfacing *)self->_eventSystemInterface deliveryManager];
  if (v7)
  {
    if (v7[8] == 1)
    {
      [v9 setOptions:128];
    }

    [v9 setSource:*(v7 + 3)];
    [v9 setGSModifierState:*(v7 + 4)];
    v11 = *(v7 + 3);
  }

  else
  {
    [v9 setSource:0];
    [v9 setGSModifierState:0];
    v11 = 0;
  }

  v12 = v11;
  IntegerValue = IOHIDEventGetIntegerValue();
  v14 = IntegerValue;
  v15 = 0;
  if (v12 && IntegerValue)
  {
    v21 = v10;
    v16 = [v12 context];
    v17 = [(BKHIDSystemInterfacing *)self->_eventSystemInterface clientConnectionManager];
    v18 = [v17 versionedPIDForPID:{objc_msgSend(v8, "pid")}];

    if (v18 == -1)
    {
      v19 = BKLogKeyboard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v7;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "invalid audit token for destination:%{public}@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v19 = [v21 authenticationOriginator];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100045104;
      v24[3] = &unk_1000FB1D8;
      v24[4] = v16;
      v24[5] = v18;
      v15 = [v19 buildMessage:v24];
    }

    v10 = v21;
  }

  if (v14 && !v15)
  {
    v20 = [v10 simpleProvenanceOriginator];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004518C;
    v22[3] = &unk_1000FB200;
    v22[4] = self;
    v23 = v8;
    v15 = [v20 buildProvenance:v22];
  }

  if (v15)
  {
    [v9 setProvenance:v15];
  }

  BKSHIDEventSetAttributes();
}

- (void)_lock_handleUnicodeEvent:(__IOHIDEvent *)a3 fromSender:(id)a4 dispatcher:(id)a5
{
  v8 = a5;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 senderID]);
  v16 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKeyedSubscript:v11];

  v12 = [(BKHIDSystemInterfacing *)self->_eventSystemInterface deliveryManager];
  v13 = objc_alloc_init(_BKKeyboardEventExtras);
  v14 = [(BKKeyboardHIDEventProcessor *)self _eventSourceForKeyboardInfo:v16 sender:v9];
  if (v13)
  {
    v13->_eventSource = v14;
  }

  v15 = [v12 sequenceForFirstEvent:a3 sender:v9 processor:self dispatcher:v8 additionalContext:v13];

  [v15 postEvent:a3 position:1 additionalContext:v13];
}

- (int)_eventSourceForKeyboardInfo:(id)a3 sender:(id)a4
{
  if (a3)
  {
    if ([a4 isAuthenticated])
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return [a4 eventSource];
  }
}

- (void)_lock_cancelKeyDownEvents:(id)a3
{
  v4 = a3;
  v5 = mach_absolute_time();
  if (v4)
  {
    v6 = v4[3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 senderID];
  keyDownToEventSequence = self->_keyDownToEventSequence;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004544C;
  v10[3] = &unk_1000FB1B8;
  v10[4] = v8;
  v10[5] = v5;
  [(NSMutableDictionary *)keyDownToEventSequence enumerateKeysAndObjectsUsingBlock:v10];
  [(BKKeyboardHIDEventProcessor *)self _lock_removeSenderIDFromTracking:v8];
}

- (void)_lock_usableKeyboardDetached:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [(BKKeyboardHIDEventProcessor *)self _lock_removeCapsLockEntryIfNeeded:v4];
  if ([(NSMutableArray *)self->_usableKeyboards containsObject:v4])
  {
    v5 = BKLogKeyboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Usable keyboard detached: %{public}@", &v9, 0xCu);
    }

    [(NSMutableArray *)self->_usableKeyboards removeObject:v4];
    if (v4)
    {
      v6 = v4[3];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    -[BKKeyboardHIDEventProcessor _lock_removeSenderIDFromTracking:](self, "_lock_removeSenderIDFromTracking:", [v7 senderID]);

    if ([(BKKeyboardInfo *)self->_primaryKeyboardInfo isEqual:v4])
    {
      [(BKKeyboardHIDEventProcessor *)self _lock_setPrimaryKeyboard:0];
      if ([(NSMutableArray *)self->_usableKeyboards count])
      {
        v8 = [(NSMutableArray *)self->_usableKeyboards firstObject];
        [(BKKeyboardHIDEventProcessor *)self _lock_setPrimaryKeyboard:v8];
      }
    }

    [(BKKeyboardHIDEventProcessor *)self _lock_publishUsableKeyboardsToServiceConnections];
    if (v4 && *(v4 + 14) == 1)
    {
      [v4[3] setElementValue:0 forUsagePage:8 usage:2];
      BKLogEvent();
    }
  }
}

- (void)_lock_removeCapsLockEntryIfNeeded:(id)a3
{
  v4 = sub_100076938(a3);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_productIdentifierWithCapsLockActiveToGeneration objectForKeyedSubscript:v4];
    v6 = [v5 integerValue];

    if (v6)
    {
      v7 = dispatch_time(0, 30000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000457B8;
      block[3] = &unk_1000FCA90;
      block[4] = self;
      v9 = v4;
      v10 = v6;
      dispatch_after(v7, &_dispatch_main_q, block);
    }
  }
}

- (void)_lock_removeSenderIDFromTracking:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_keyDownToEventSequence allKeys];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        if (v11 == a3)
        {
          [(NSMutableDictionary *)self->_keyDownToEventSequence removeObjectForKey:?];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [(NSMutableSet *)self->_downModifierKeys copy];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        if (v18)
        {
          v19 = *(v18 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (v19 == a3)
        {
          [(BKKeyboardHIDEventProcessor *)self _lock_removeModifierKeyDown:?];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v20 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v15 = v20;
    }

    while (v20);
  }

  v21 = [NSNumber numberWithUnsignedLongLong:a3];
  [(NSMutableSet *)self->_senderIDsWithModifiersOnly removeObject:v21];
  [(NSMutableDictionary *)self->_senderIDToKeysDown removeObjectForKey:v21];
}

- (void)_lock_removeModifierKeyDown:(id)a3
{
  v4 = a3;
  v5 = sub_100052990();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "modifier key up: %{public}@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_downModifierKeys removeObject:v4];
}

- (void)_lock_addModifierKeyDown:(id)a3
{
  v4 = a3;
  v5 = sub_100052990();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "modifier key down: %{public}@", &v6, 0xCu);
  }

  [(NSMutableSet *)self->_downModifierKeys addObject:v4];
}

- (void)_lock_usableKeyboardAttached:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_usableKeyboards containsObject:v4]& 1) == 0)
  {
    v5 = BKLogKeyboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Usable keyboard attached: %{public}@", &v10, 0xCu);
    }

    keyboardGeneration = self->_keyboardGeneration;
    if (keyboardGeneration >= 0)
    {
      v7 = keyboardGeneration + 1;
    }

    else
    {
      v7 = 1;
    }

    self->_keyboardGeneration = v7;
    if (v4)
    {
      v4[12] = v7;
    }

    [(NSMutableArray *)self->_usableKeyboards addObject:v4];
    if (!self->_primaryKeyboardInfo)
    {
      [(BKKeyboardHIDEventProcessor *)self _lock_setPrimaryKeyboard:v4];
    }

    if (self->_keyboardLayout)
    {
      v8 = v4 ? v4[6] : 0;
      v9 = v8;

      if (!v9)
      {
        sub_100076410(v4, self->_keyboardLayout);
      }
    }

    [(BKKeyboardHIDEventProcessor *)self _lock_restoreCapsLockStateToKeyboard:v4];
    [(BKKeyboardHIDEventProcessor *)self _lock_publishUsableKeyboardsToServiceConnections];
    if (v4 && *(v4 + 14) == 1)
    {
      BKLogEvent();
    }
  }
}

- (void)_lock_publishUsableKeyboardsToServiceConnections
{
  ++self->_lock_keyboardPublicationSeed;
  v3 = [(NSMutableArray *)self->_usableKeyboards bs_map:&stru_1000FB170];
  server = self->_server;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045DD8;
  v6[3] = &unk_1000FB198;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(BKHIDDomainServiceServer *)server enumerateUserInfoWithBlock:v6];
}

- (void)_lock_publishUsableKeyboards:(id)a3 toServiceConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(BKHIDDomainServiceServer *)self->_server responsePendingForConnection:v7]& 1) == 0)
  {
    v8 = [(BKHIDDomainServiceServer *)self->_server didRespondBlockForConnection:v7];
    lock_keyboardPublicationSeed = self->_lock_keyboardPublicationSeed;
    objc_initWeak(&location, self);
    v10 = [v7 remoteTarget];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100045F9C;
    v12[3] = &unk_1000FB150;
    objc_copyWeak(v15, &location);
    v11 = v8;
    v14 = v11;
    v15[1] = lock_keyboardPublicationSeed;
    v13 = v7;
    [v10 setConnectedKeyboards:v6 withReply:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

- (void)_lock_restoreCapsLockStateToKeyboard:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = sub_1000761BC(v4);
    v6 = v13;
    if (v5)
    {
      if ((*(v13 + 9) & 1) == 0)
      {
        v7 = [v13[3] isVirtualService];
        v6 = v13;
        if ((v7 & 1) == 0)
        {
          v8 = sub_100076938(v13);
          if (v8)
          {
            v9 = [(NSMutableDictionary *)self->_productIdentifierWithCapsLockActiveToGeneration objectForKey:v8];

            if (v9)
            {
              v10 = v13[3];
              -[BKKeyboardHIDEventProcessor _lock_setCapsLockActive:onSenderID:](self, "_lock_setCapsLockActive:onSenderID:", 1, [v10 senderID]);

              productIdentifierWithCapsLockActiveToGeneration = self->_productIdentifierWithCapsLockActiveToGeneration;
              v12 = [NSNumber numberWithInteger:v13[12]];
              [(NSMutableDictionary *)productIdentifierWithCapsLockActiveToGeneration setObject:v12 forKey:v8];

LABEL_10:
              v4 = v13;
              goto LABEL_11;
            }
          }

          v6 = v13;
        }
      }
    }

    [v6[3] setElementValue:0 forUsagePage:8 usage:2];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_lock_setPrimaryKeyboard:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v6 = self->_primaryKeyboardInfo;
  if (v6 != v5)
  {
    objc_storeStrong(&self->_primaryKeyboardInfo, a3);
    if (v5)
    {
      sub_100076410(v5, self->_keyboardLayout);
      keyboardType = v5->_keyboardType;
      v8 = [NSNumber numberWithUnsignedChar:v5->_countryCode];
      gsKeyboard = v5->_gsKeyboard;
      GSKeyboardSetHardwareKeyboardAttached();
      v10 = BKLogKeyboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 unsignedIntValue];
        keyboardLayout = self->_keyboardLayout;
        v13 = v5->_gsKeyboard;
        v15[0] = 67109890;
        v15[1] = v11;
        v16 = 1024;
        v17 = keyboardType;
        v18 = 2114;
        v19 = keyboardLayout;
        v20 = 2048;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Hardware keyboard attached (countryCode:%d type:%d layout:%{public}@) GS:%p", v15, 0x22u);
      }
    }

    else if (v6)
    {
      v14 = v6->_gsKeyboard;
      GSKeyboardSetHardwareKeyboardAttached();
    }
  }
}

- (void)_lock_keyboardRemoved:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 senderID]);
  v6 = [(NSMutableDictionary *)self->_allKeyboardsBySenderID objectForKeyedSubscript:v5];
  v7 = BKLogKeyboard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Keyboard detached: %{public}@", &v15, 0xCu);
    }

    v9 = [v4 propertyForKey:@"VendorID"];
    v10 = [v9 unsignedIntValue];
    v11 = [v4 propertyForKey:@"ProductID"];
    v12 = sub_100046580(v10, [v11 unsignedIntValue]);

    if (v12)
    {
      v13 = self->_countOfKeyboardsRequiringAllSmartCoverHESDisengagedForOpen - 1;
      self->_countOfKeyboardsRequiringAllSmartCoverHESDisengagedForOpen = v13;
      if (!v13)
      {
        v14 = [(BKHIDEventProcessorRegistering *)self->_eventProcessorRegistry eventProcessorOfClass:objc_opt_class()];
        [v14 setAttachedCoverRequiresWorkaroundForOpenState:0];
      }
    }

    [(BKKeyboardHIDEventProcessor *)self _lock_stopWatchingForGestures:v6];
    [(BKKeyboardHIDEventProcessor *)self _lock_usableKeyboardDetached:v6];
    [(NSMutableDictionary *)self->_allKeyboardsBySenderID removeObjectForKey:v5];
  }

  else
  {
    if (v8)
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Keyboard not found for IOHIDService: %{public}@", &v15, 0xCu);
    }
  }
}

- (void)_lock_keyboardsDetected:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100046A1C;
  v5[3] = &unk_1000FB108;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)_lock_setKeyboardLightsSuspended:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_usableKeyboards;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 && *(v10 + 8) == 1)
        {
          [*(v10 + 24) setElementValue:!v3 forUsagePage:8 usage:{2, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_lock_anyKeyboardHasCapsLockActive
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_usableKeyboards;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && (*(v6 + 8) & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (int64_t)_lock_activeModifiers
{
  v2 = [(NSMutableArray *)self->_usableKeyboards bs_reduce:&off_100107958 block:&stru_1000FB0E0];
  v3 = [v2 integerValue];

  return v3;
}

- (void)_lock_updateGlobalModifierState
{
  globalActiveModifiers = self->_globalActiveModifiers;
  v4 = [(BKKeyboardHIDEventProcessor *)self _lock_activeModifiers];
  if (globalActiveModifiers != v4)
  {
    v5 = v4;
    self->_globalActiveModifiers = v4;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(BSCompoundAssertion *)self->_keyboardObserverAssertion context];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 globalKeyboardModifiersDidChange:v5];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (NSSet)keyCommandsToAuthenticate
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_keyCommandsToAuthenticate copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)capsLockKeyHasLanguageSwitchLabel
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  primaryKeyboardInfo = self->_primaryKeyboardInfo;
  if (primaryKeyboardInfo)
  {
    capsLockKeyHasLanguageSwitchLabel = primaryKeyboardInfo->_capsLockKeyHasLanguageSwitchLabel;
  }

  else
  {
    capsLockKeyHasLanguageSwitchLabel = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return capsLockKeyHasLanguageSwitchLabel;
}

- (BOOL)isCapsLockLightOn
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKKeyboardHIDEventProcessor *)self _lock_anyKeyboardHasCapsLockActive];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setStandardType:(unsigned int)a3 forSenderID:(unint64_t)a4
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v16 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v8];

  if (v16 && *(v16 + 4) != a3)
  {
    *(v16 + 4) = a3;
    v9 = v16[3];
    v10 = [NSNumber numberWithUnsignedInt:*(v16 + 4)];
    [v9 setProperty:v10 forKey:@"StandardType"];

    v11 = +[BKSDefaults localDefaults];
    v12 = sub_100075E20(v16);
    v13 = v12;
    if (v12)
    {
      v17 = v12;
      v14 = [NSNumber numberWithUnsignedInt:*(v16 + 4)];
      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v11 setKeyboardTypeRemap:v15];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCapsLockDelayOverride:(double)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_usableKeyboards;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_10007680C(*(*(&v10 + 1) + 8 * v9), a3);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRomanCapsLockSwitchModeActive:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_usableKeyboards;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_100076730(*(*(&v10 + 1) + 8 * v9), v3);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)allUsableDeviceProperties
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_usableKeyboards bs_map:&stru_1000FB0A0];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)devicePropertiesForSenderID:(unint64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!a3)
  {
    goto LABEL_3;
  }

  v5 = +[BKHIDAccessibilitySender accessibilityHIDServices];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000476E4;
  v12[3] = &unk_1000FB060;
  v12[4] = a3;
  v6 = [v5 bs_containsObjectPassingTest:v12];

  if (!v6)
  {
    allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
    v10 = [NSNumber numberWithUnsignedLongLong:a3];
    v7 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v10];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
LABEL_3:
    v7 = self->_primaryKeyboardInfo;
    if (v7)
    {
LABEL_4:
      v8 = sub_100076968(v7);
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)keyboardWantsStandardTypeOverrideForSenderID:(unint64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (a3)
  {
    allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
    v6 = [NSNumber numberWithUnsignedLongLong:a3];
    v7 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v6];

    if (v7)
    {
      LOBYTE(v8) = v7[13];
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSMutableDictionary *)self->_allKeyboardsBySenderID allValues];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (v11 && (*(v11 + 13) & 1) != 0)
          {
            LOBYTE(v8) = 1;
            goto LABEL_15;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:

  os_unfair_lock_unlock(&self->_lock);
  return v8 & 1;
}

- (BOOL)isCapsLockLightOnForSenderID:(unint64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v6];

  if (v7)
  {
    v8 = v7[8];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8 & 1;
}

- (void)setCapsLockDelayOverride:(double)a3 forSenderID:(unint64_t)a4
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v8];

  sub_10007680C(v9, a3);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRomanCapsLockSwitchModeActive:(BOOL)a3 forSenderID:(unint64_t)a4
{
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v8];

  if (v9)
  {
    if (v5)
    {
      [(BKKeyboardHIDEventProcessor *)self _lock_setCapsLockState:0 forKeyboard:v9 updateGS:1];
    }

    sub_100076730(v9, v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setKeyboardLayout:(id)a3 forSenderID:(unint64_t)a4
{
  v14 = a3;
  if (!v14)
  {
    v10 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"keyboardLayout != ((void *)0)"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"BKKeyboardHIDEventProcessor.m";
      v23 = 1024;
      v24 = 462;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100047CBCLL);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v8];

  sub_100076410(v9, v14);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)keyboardLanguageForSenderID:(unint64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKey:v6];

  if (v7)
  {
    v8 = v7[7];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)setKeyCommandsToAuthenticate:(id)a3
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_keyCommandsToAuthenticate != v6)
  {
    v4 = [(NSMutableSet *)v6 copy];
    keyCommandsToAuthenticate = self->_keyCommandsToAuthenticate;
    self->_keyCommandsToAuthenticate = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)addGlobalKeyboardObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  keyboardObserverAssertion = self->_keyboardObserverAssertion;
  if (!keyboardObserverAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"backboardd.keyboards.global-observers"];
    v7 = self->_keyboardObserverAssertion;
    self->_keyboardObserverAssertion = v6;

    keyboardObserverAssertion = self->_keyboardObserverAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)keyboardObserverAssertion acquireForReason:v8 withContext:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (int64_t)activeModifiers
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKKeyboardHIDEventProcessor *)self _lock_activeModifiers];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setKeyboardLayout:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"keyboardLayout != ((void *)0)"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v24 = v15;
      v25 = 2114;
      v26 = v17;
      v27 = 2048;
      v28 = self;
      v29 = 2114;
      v30 = @"BKKeyboardHIDEventProcessor.m";
      v31 = 1024;
      v32 = 396;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100048130);
  }

  v6 = v5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [v6 copy];
  keyboardLayout = self->_keyboardLayout;
  self->_keyboardLayout = v7;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableDictionary *)self->_allKeyboardsBySenderID allValues];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        sub_100076410(*(*(&v18 + 1) + 8 * v13), v6);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(BKKeyboardHIDEventProcessor *)self _lock_publishUsableKeyboardsToServiceConnections];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)keyboardLayout
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_keyboardLayout copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int)eventSourceForSender:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 senderID]);
  v7 = [(NSMutableDictionary *)allKeyboardsBySenderID objectForKeyedSubscript:v6];
  v8 = [(BKKeyboardHIDEventProcessor *)self _eventSourceForKeyboardInfo:v7 sender:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (NSString)debugDescription
{
  v2 = [BSDescriptionStream descriptionForRootObject:self];
  v3 = [v2 description];

  return v3;
}

- (void)dealloc
{
  v3 = +[BKHIDEventProcessorRegistry sharedInstance];
  v4 = [v3 eventProcessorOfClass:objc_opt_class()];

  eventRecognizers = self->_eventRecognizers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048438;
  v8[3] = &unk_1000FB040;
  v9 = v4;
  v6 = v4;
  [(NSMutableArray *)eventRecognizers enumerateObjectsUsingBlock:v8];
  [(BKIOHIDServiceMatcher *)self->_keyboardServiceMatcher invalidate];

  v7.receiver = self;
  v7.super_class = BKKeyboardHIDEventProcessor;
  [(BKKeyboardHIDEventProcessor *)&v7 dealloc];
}

- (void)_commonInitWithContext:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_lock._os_unfair_lock_opaque = 0;
  v8 = objc_alloc_init(NSMutableDictionary);
  productIdentifierWithCapsLockActiveToGeneration = self->_productIdentifierWithCapsLockActiveToGeneration;
  self->_productIdentifierWithCapsLockActiveToGeneration = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  allKeyboardsBySenderID = self->_allKeyboardsBySenderID;
  self->_allKeyboardsBySenderID = v10;

  v12 = objc_alloc_init(NSMutableArray);
  usableKeyboards = self->_usableKeyboards;
  self->_usableKeyboards = v12;

  v14 = objc_alloc_init(NSMutableArray);
  eventRecognizers = self->_eventRecognizers;
  self->_eventRecognizers = v14;

  v16 = [v6 eventDispatcher];
  eventDispatcher = self->_eventDispatcher;
  self->_eventDispatcher = v16;

  v18 = [v6 systemInterface];
  eventSystemInterface = self->_eventSystemInterface;
  self->_eventSystemInterface = v18;

  v20 = [v6 eventProcessorRegistry];
  eventProcessorRegistry = self->_eventProcessorRegistry;
  self->_eventProcessorRegistry = v20;

  v22 = +[BKDisplayController sharedInstance];
  displayController = self->_displayController;
  self->_displayController = v22;

  v24 = [(BKDisplayController *)self->_displayController addDisplayBlankingObserver:self];
  displayBlankingObservationAssertion = self->_displayBlankingObservationAssertion;
  self->_displayBlankingObservationAssertion = v24;

  keyboardLayout = self->_keyboardLayout;
  self->_keyboardLayout = @"US";

  v53[0] = @"DeviceUsagePage";
  v53[1] = @"DeviceUsage";
  *&buf = &off_100107970;
  *(&buf + 1) = &off_100107988;
  v27 = [NSDictionary dictionaryWithObjects:&buf forKeys:v53 count:2];
  v28 = [BKIOHIDServiceMatcher alloc];
  v29 = [v6 serviceMatcherDataProvider];
  v30 = [v28 initWithMatchingDictionary:v27 dataProvider:v29];
  keyboardServiceMatcher = self->_keyboardServiceMatcher;
  self->_keyboardServiceMatcher = v30;

  v32 = [(BKIOHIDServiceMatcher *)self->_keyboardServiceMatcher startObservingSynchronously:self];
  if ([v32 count])
  {
    [(BKKeyboardHIDEventProcessor *)self matcher:self->_keyboardServiceMatcher servicesDidMatch:v32];
  }

  v33 = objc_alloc_init(NSMutableDictionary);
  keyDownToEventSequence = self->_keyDownToEventSequence;
  self->_keyDownToEventSequence = v33;

  v35 = objc_alloc_init(NSMutableDictionary);
  senderIDToKeysDown = self->_senderIDToKeysDown;
  self->_senderIDToKeysDown = v35;

  v37 = objc_alloc_init(NSMutableSet);
  senderIDsWithModifiersOnly = self->_senderIDsWithModifiersOnly;
  self->_senderIDsWithModifiersOnly = v37;

  v39 = objc_alloc_init(NSMutableSet);
  downModifierKeys = self->_downModifierKeys;
  self->_downModifierKeys = v39;

  v41 = +[BKSDefaults externalDefaults];
  v42 = [v41 keyboardDefaults];

  [v42 migrateIfNeeded];
  v43 = BKLogKeyboard();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v42;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "external defaults: %@", &buf, 0xCu);
  }

  v44 = &_dispatch_main_q;
  v45 = [NSString stringWithUTF8String:"modifierKeyRemapping"];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000488C0;
  v50[3] = &unk_1000FD128;
  v46 = v42;
  v51 = v46;
  v52 = self;
  v47 = [v46 observeDefault:v45 onQueue:&_dispatch_main_q withBlock:v50];

  objc_storeStrong(&self->_server, a4);
  [(BKHIDDomainServiceServer *)self->_server activate];
  objc_initWeak(&buf, self);
  objc_copyWeak(&v49, &buf);
  v48 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v49);
  objc_destroyWeak(&buf);
}

- (BKKeyboardHIDEventProcessor)initWithContext:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKKeyboardHIDEventProcessor;
  v8 = [(BKKeyboardHIDEventProcessor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BKKeyboardHIDEventProcessor *)v8 _commonInitWithContext:v6 server:v7];
  }

  return v9;
}

- (BKKeyboardHIDEventProcessor)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKKeyboardHIDEventProcessor;
  v5 = [(BKKeyboardHIDEventProcessor *)&v11 init];
  if (v5)
  {
    v6 = [BKHIDDomainServiceServer alloc];
    v7 = BKSKeyboardBSServiceName;
    v8 = BKLogKeyboard();
    v9 = [v6 initWithDelegate:v5 incomingServiceConnectionHandler:0 serverTarget:v5 serverProtocol:&OBJC_PROTOCOL___BKSKeyboardServiceClientToServerIPC clientProtocol:&OBJC_PROTOCOL___BKSKeyboardServiceServerToClientIPC serviceName:v7 queue:0 log:v8 entitlement:0];

    [(BKKeyboardHIDEventProcessor *)v5 _commonInitWithContext:v4 server:v9];
  }

  return v5;
}

@end