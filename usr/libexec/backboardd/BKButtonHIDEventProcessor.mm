@interface BKButtonHIDEventProcessor
- (BKButtonHIDEventProcessor)initWithContext:(id)context;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_postEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destination:(id)destination cancelled:(BOOL)cancelled;
- (void)_processRingerSwitchEvent:(__IOHIDEvent *)event down:(BOOL)down sender:(id)sender dispatcher:(id)dispatcher;
- (void)cancelButtonForSenderID:(unint64_t)d uagePage:(unsigned __int16)page usage:(unsigned __int16)usage;
@end

@implementation BKButtonHIDEventProcessor

- (void)_processRingerSwitchEvent:(__IOHIDEvent *)event down:(BOOL)down sender:(id)sender dispatcher:(id)dispatcher
{
  downCopy = down;
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  self->_ringerState = downCopy;
  v12 = sub_100008528();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000209DC(self->_ringerState);
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ringer state changed to:%{public}@", buf, 0xCu);
  }

  v14 = [dispatcherCopy destinationsForEvent:event fromSender:senderCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(BKButtonHIDEventProcessor *)self _postEvent:event sender:senderCopy dispatcher:dispatcherCopy destination:*(*(&v19 + 1) + 8 * v18) cancelled:0];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)_postEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destination:(id)destination cancelled:(BOOL)cancelled
{
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  senderCopy = sender;
  Copy = IOHIDEventCreateCopy();
  keyboardEventProcessor = self->_keyboardEventProcessor;
  if (keyboardEventProcessor)
  {
    [(BKKeyboardHIDEventProcessor *)keyboardEventProcessor eventSourceForSender:senderCopy];
  }

  else
  {
    [senderCopy eventSource];
  }

  BKSHIDEventSetSimpleDeliveryInfo();
  if (Copy)
  {
    IOHIDEventGetTimeStamp();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
  }

  kdebug_trace();
  [dispatcherCopy postEvent:Copy toDestination:destinationCopy];

  CFRelease(Copy);
}

- (void)cancelButtonForSenderID:(unint64_t)d uagePage:(unsigned __int16)page usage:(unsigned __int16)usage
{
  usageCopy = usage;
  pageCopy = page;
  os_unfair_lock_lock(&self->_eventRecordsLock);
  eventRecords = self->_eventRecords;
  if (eventRecords)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:d];
    v11 = [NSNumber numberWithUnsignedInt:usageCopy | (pageCopy << 16)];
    v12 = [(NSMutableDictionary *)eventRecords->_usagePairsPerSenderID objectForKeyedSubscript:v10];
    v13 = [v12 objectForKeyedSubscript:v11];
    sub_1000141C0(eventRecords, v12, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_eventRecordsLock);
  v14 = sub_100008528();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_10000857C(v13);
      *buf = 67109890;
      v30 = pageCopy;
      v31 = 1024;
      v32 = usageCopy;
      v33 = 2048;
      dCopy2 = d;
      v35 = 2114;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " 0x%X/0x%X/%llX soft cancel: %{public}@", buf, 0x22u);
    }

    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    IOHIDEventSetSenderID();
    v15 = v13[2];
    v18 = v13[3];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v13[4];
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(BKButtonHIDEventProcessor *)self _postEvent:KeyboardEvent sender:v15 dispatcher:v18 destination:*(*(&v24 + 1) + 8 * v23) cancelled:1, v24];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v21);
    }

    CFRelease(KeyboardEvent);
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109632;
    v30 = pageCopy;
    v31 = 1024;
    v32 = usageCopy;
    v33 = 2048;
    dCopy2 = d;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "0x%X/0x%X/%llX soft cancel: no event found, ignoring request", buf, 0x18u);
  }
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  if (!self->_keyboardEventProcessor)
  {
    v11 = +[BKHIDEventProcessorRegistry sharedInstance];
    v12 = [v11 eventProcessorOfClass:objc_opt_class()];
    keyboardEventProcessor = self->_keyboardEventProcessor;
    self->_keyboardEventProcessor = v12;
  }

  v14 = *event;
  SenderID = IOHIDEventGetSenderID();
  IntegerValue = IOHIDEventGetIntegerValue();
  v17 = IOHIDEventGetIntegerValue();
  v65 = IOHIDEventGetIntegerValue();
  Phase = IOHIDEventGetPhase();
  if (IntegerValue == 11 && v17 == 46)
  {
    [(BKButtonHIDEventProcessor *)self _processRingerSwitchEvent:v14 down:v65 != 0 sender:senderCopy dispatcher:dispatcherCopy];
    goto LABEL_59;
  }

  obj = dispatcher;
  LODWORD(v61) = IntegerValue;
  os_unfair_lock_lock(&self->_eventRecordsLock);
  eventRecords = self->_eventRecords;
  HIDWORD(v61) = v17;
  v20 = v17 | (IntegerValue << 16);
  v64 = SenderID;
  v63 = v17 | (IntegerValue << 16);
  if (eventRecords)
  {
    usagePairsPerSenderID = eventRecords->_usagePairsPerSenderID;
    v22 = [NSNumber numberWithUnsignedLongLong:SenderID];
    v23 = [(NSMutableDictionary *)usagePairsPerSenderID objectForKeyedSubscript:v22];

    v24 = [NSNumber numberWithUnsignedInt:v20];
    v25 = [v23 objectForKeyedSubscript:v24];
  }

  else
  {
    v25 = 0;
  }

  if (!v65 || v25)
  {
    v35 = v64;
    if (v65)
    {
      if (v25)
      {
        *(v25 + 10) = 0;
        v36 = IOHIDEventGetPhase();
        if (v36)
        {
          if ((*(v25 + 8) & 1) == 0)
          {
            *(v25 + 8) = v36 & 1;
          }

          if ((*(v25 + 9) & 1) == 0)
          {
            *(v25 + 9) = (v36 & 4) != 0;
          }
        }
      }

      else
      {
        IOHIDEventGetPhase();
      }
    }

    else
    {
      v37 = IOHIDEventGetPhase();
      if (!v25)
      {
        goto LABEL_37;
      }

      *(v25 + 10) = 1;
      v38 = *(v25 + 8);
      if (v37)
      {
        if ((*(v25 + 8) & 1) == 0)
        {
          *(v25 + 8) = v37 & 1;
          v38 = v37;
        }

        if ((*(v25 + 9) & 1) == 0)
        {
          *(v25 + 9) = (v37 & 4) != 0;
        }
      }

      if ((v38 & 1) == 0 || *(v25 + 9) == 1)
      {
LABEL_37:
        v39 = self->_eventRecords;
        if (v39)
        {
          v40 = [NSNumber numberWithUnsignedLongLong:v64];
          v41 = [NSNumber numberWithUnsignedInt:v63];
          v42 = [(NSMutableDictionary *)v39->_usagePairsPerSenderID objectForKeyedSubscript:v40];
          sub_1000141C0(v39, v42, v40, v41);

          v35 = v64;
        }

        v43 = sub_100008528();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = sub_10000857C(v25);
          *buf = 67109890;
          v73 = v61;
          v74 = 1024;
          v75 = HIDWORD(v61);
          v76 = 2048;
          v77 = v35;
          v78 = 2114;
          v79 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " 0x%X/0x%X/%llX finished: %{public}@", buf, 0x22u);
        }
      }
    }

    goto LABEL_49;
  }

  v26 = [dispatcherCopy destinationsForEvent:v14 fromSender:senderCopy];
  if (!v26)
  {
    v26 = +[NSSet set];
  }

  v27 = objc_alloc_init(_BKButtonEventRecord);
  v25 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_eventDispatcher, obj);
    objc_storeStrong((v25 + 16), sender);
    +[NSDate timeIntervalSinceReferenceDate];
    *(v25 + 40) = v28;
    objc_storeStrong((v25 + 32), v26);
    v29 = IOHIDEventGetPhase();
    if (v29)
    {
      if ((*(v25 + 8) & 1) == 0)
      {
        *(v25 + 8) = v29 & 1;
      }

      if ((*(v25 + 9) & 1) == 0)
      {
        *(v25 + 9) = (v29 & 4) != 0;
      }
    }
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    IOHIDEventGetPhase();
  }

  v66 = v26;
  v30 = sub_100008528();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = sub_10000857C(v25);
    *buf = 67109890;
    v73 = v61;
    v74 = 1024;
    v75 = HIDWORD(v61);
    v76 = 2048;
    v77 = v64;
    v78 = 2114;
    v79 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " 0x%X/0x%X/%llX began: %{public}@", buf, 0x22u);
  }

  v32 = self->_eventRecords;
  if (v32)
  {
    v33 = v25;
    v34 = v63;
LABEL_43:
    v48 = [NSNumber numberWithUnsignedLongLong:v64, v61];
    v49 = [NSNumber numberWithUnsignedInt:v34];
    v50 = v32->_usagePairsPerSenderID;
    if (!v50)
    {
      v51 = objc_alloc_init(NSMutableDictionary);
      v52 = v32->_usagePairsPerSenderID;
      v32->_usagePairsPerSenderID = v51;

      v50 = v32->_usagePairsPerSenderID;
    }

    v53 = [(NSMutableDictionary *)v50 objectForKeyedSubscript:v48];
    if (!v53)
    {
      v53 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)v32->_usagePairsPerSenderID setObject:v53 forKeyedSubscript:v48];
    }

    [v53 setObject:v25 forKeyedSubscript:v49];

    goto LABEL_48;
  }

  v45 = objc_alloc_init(BKEventSenderUsagePairDictionary);
  v46 = self->_eventRecords;
  self->_eventRecords = v45;

  v32 = self->_eventRecords;
  v47 = v25;
  v34 = v63;
  if (v32)
  {
    goto LABEL_43;
  }

LABEL_48:

LABEL_49:
  os_unfair_lock_unlock(&self->_eventRecordsLock);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  if (v25)
  {
    v54 = *(v25 + 32);
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  v56 = [v55 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v68;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v68 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(BKButtonHIDEventProcessor *)self _postEvent:v14 sender:senderCopy dispatcher:dispatcherCopy destination:*(*(&v67 + 1) + 8 * i) cancelled:Phase == 8];
      }

      v57 = [v55 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v57);
  }

LABEL_59:
  return 1;
}

- (BKButtonHIDEventProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = BKButtonHIDEventProcessor;
  v5 = [(BKButtonHIDEventProcessor *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_eventRecordsLock._os_unfair_lock_opaque = 0;
    systemInterface = [contextCopy systemInterface];
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    if (KeyboardEvent)
    {
      v9 = KeyboardEvent;
      v10 = [systemInterface systemEventOfType:3 matchingEvent:KeyboardEvent options:0];
      if (v10)
      {
        v11 = v10;
        v6->_ringerState = IOHIDEventGetIntegerValue() != 0;
        v12 = sub_100008528();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = sub_1000209DC(v6->_ringerState);
          *buf = 138543362;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "initial ringer state:%{public}@", buf, 0xCu);
        }

        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }

  return v6;
}

@end