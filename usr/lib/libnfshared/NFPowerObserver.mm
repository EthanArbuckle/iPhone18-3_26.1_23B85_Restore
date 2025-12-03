@interface NFPowerObserver
- (BOOL)registerForEvents;
- (NFPowerObserver)initWithDelegate:(id)delegate;
- (id)delegate;
- (void)_powerNotificationMessage:(unsigned int)message argument:(void *)argument;
- (void)allowSleep;
- (void)dealloc;
- (void)unregisterForEvents;
@end

@implementation NFPowerObserver

- (id)delegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (NFPowerObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = NFPowerObserver;
  v5 = [(NFPowerObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.stockholm.powerobserver", v7);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_unregisterForEvents(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NFPowerObserver;
  [(NFPowerObserver *)&v4 dealloc];
}

- (BOOL)registerForEvents
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_powerNotificationConnection)
  {
    goto LABEL_4;
  }

  v4 = IORegisterForSystemPower(self, &self->_powerNotificationPort, j__objc_msgSend__powerNotificationMessage_argument_, &self->_powerNotificationNotifier);
  self->_powerNotificationConnection = v4;
  if (v4)
  {
    IONotificationPortSetDispatchQueue(self->_powerNotificationPort, self->_workQueue);
LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (specific >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v9 = *(&off_27DA9DE50 + specific);
  if (v9)
  {
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Failed to register for PM notifications", v13, ClassName, Name, 67);
    v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v14 = dispatch_get_specific(v7);
  v15 = NFSharedLogGetLogger(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    *buf = 67109890;
    v20 = v17;
    v21 = 2082;
    v22 = object_getClassName(self);
    v23 = 2082;
    v24 = sel_getName(a2);
    v25 = 1024;
    v26 = 67;
    _os_log_impl(&dword_22EEC4000, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register for PM notifications", buf, 0x22u);
  }

  result = 0;
LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)unregisterForEvents
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_powerNotificationConnection)
  {
    v4 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v6 = *(&off_27DA9DE50 + specific);
    if (v6)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Unregistering Power notifications", v10, ClassName, Name, 82);
      v4 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v11 = dispatch_get_specific(v4);
    v12 = NFSharedLogGetLogger(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v18 = v14;
      v19 = 2082;
      v20 = object_getClassName(self);
      v21 = 2082;
      v22 = sel_getName(a2);
      v23 = 1024;
      v24 = 82;
      _os_log_impl(&dword_22EEC4000, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unregistering Power notifications", buf, 0x22u);
    }

    IODeregisterForSystemPower(&self->_powerNotificationNotifier);
    IONotificationPortDestroy(self->_powerNotificationPort);
    IOServiceClose(self->_powerNotificationConnection);
    self->_powerNotificationConnection = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_powerNotificationMessage:(unsigned int)message argument:(void *)argument
{
  v80 = *MEMORY[0x277D85DE8];
  HIDWORD(v7) = message + 536870288;
  LODWORD(v7) = message + 536870288;
  v6 = v7 >> 4;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_61;
      }

      if (!self->_willSleep)
      {
        v63 = _os_activity_create(&dword_22EEC4000, "system will sleep", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v63, state);
        os_activity_scope_leave(state);

        self->_willSleep = 1;
        self->_sleepMessageArgument = argument;
        v29 = objc_msgSend_delegate(self, v64, v65);
        objc_msgSend_powerObserverSystemWillSleep_(v29, v66, self);
        goto LABEL_60;
      }

      v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific < 5)
      {
        v12 = *(&off_27DA9DE50 + specific);
        if (v12)
        {
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v16 = 45;
          if (isMetaClass)
          {
            v16 = 43;
          }

          v12(3, "%c[%{public}s %{public}s]:%i System already sent a will sleep message ! Ignoring will sleep.", v16, ClassName, Name, 106);
          v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v17 = dispatch_get_specific(v10);
        v18 = NFSharedLogGetLogger(v17);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v19 = object_getClass(self);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *state = 67109890;
        *&state[4] = v20;
        *&state[8] = 2082;
        *&state[10] = object_getClassName(self);
        v74 = 2082;
        v75 = sel_getName(a2);
        v76 = 1024;
        v77 = 106;
        v21 = "%c[%{public}s %{public}s]:%i System already sent a will sleep message ! Ignoring will sleep.";
        goto LABEL_57;
      }
    }

    else
    {
      v31 = IOAllowPowerChange(self->_powerNotificationConnection, argument);
      if (!v31)
      {
        goto LABEL_61;
      }

      v32 = v31;
      v33 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v34 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v34 < 5)
      {
        v35 = *(&off_27DA9DE50 + v34);
        if (v35)
        {
          v36 = object_getClass(self);
          v37 = class_isMetaClass(v36);
          v68 = object_getClassName(self);
          v70 = sel_getName(a2);
          v38 = 45;
          if (v37)
          {
            v38 = 43;
          }

          v35(4, "%c[%{public}s %{public}s]:%i Returned %x", v38, v68, v70, 99, v32);
          v33 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v39 = dispatch_get_specific(v33);
        v40 = NFSharedLogGetLogger(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = object_getClass(self);
          if (class_isMetaClass(v41))
          {
            v42 = 43;
          }

          else
          {
            v42 = 45;
          }

          *state = 67110146;
          *&state[4] = v42;
          *&state[8] = 2082;
          *&state[10] = object_getClassName(self);
          v74 = 2082;
          v75 = sel_getName(a2);
          v76 = 1024;
          v77 = 99;
          v78 = 1024;
          v79 = v32;
          _os_log_impl(&dword_22EEC4000, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned %x", state, 0x28u);
        }

        goto LABEL_61;
      }
    }

LABEL_62:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  switch(v6)
  {
    case 2:
      if (self->_willSleep)
      {
        v8 = "system will not sleep";
LABEL_22:
        v22 = _os_activity_create(&dword_22EEC4000, v8, MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
        *state = 0;
        *&state[8] = 0;
        os_activity_scope_enter(v22, state);
        os_activity_scope_leave(state);

        self->_willSleep = 0;
        v25 = objc_msgSend_delegate(self, v23, v24);
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          v29 = objc_msgSend_delegate(self, v27, v28);
          objc_msgSend_powerObserverSystemHasPoweredOn_(v29, v30, self);
LABEL_60:

          break;
        }

        break;
      }

      v43 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v44 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v44 < 5)
      {
        v45 = *(&off_27DA9DE50 + v44);
        if (v45)
        {
          v46 = object_getClass(self);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(self);
          v71 = sel_getName(a2);
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(4, "%c[%{public}s %{public}s]:%i System never went to sleep ! Ignoring will not sleep message.", v49, v48, v71, 120);
          v43 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v50 = dispatch_get_specific(v43);
        v18 = NFSharedLogGetLogger(v50);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v51 = object_getClass(self);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        *state = 67109890;
        *&state[4] = v52;
        *&state[8] = 2082;
        *&state[10] = object_getClassName(self);
        v74 = 2082;
        v75 = sel_getName(a2);
        v76 = 1024;
        v77 = 120;
        v21 = "%c[%{public}s %{public}s]:%i System never went to sleep ! Ignoring will not sleep message.";
        goto LABEL_57;
      }

      goto LABEL_62;
    case 9:
      self->_willSleep = 0;
      break;
    case 11:
      if (self->_willSleep)
      {
        v8 = "system will power on";
        goto LABEL_22;
      }

      v53 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v54 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v54 < 5)
      {
        v55 = *(&off_27DA9DE50 + v54);
        if (v55)
        {
          v56 = object_getClass(self);
          v57 = class_isMetaClass(v56);
          v58 = object_getClassName(self);
          v72 = sel_getName(a2);
          v59 = 45;
          if (v57)
          {
            v59 = 43;
          }

          v55(3, "%c[%{public}s %{public}s]:%i System never went to sleep ! Ignoring will power on message.", v59, v58, v72, 135);
          v53 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v60 = dispatch_get_specific(v53);
        v18 = NFSharedLogGetLogger(v60);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v61 = object_getClass(self);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        *state = 67109890;
        *&state[4] = v62;
        *&state[8] = 2082;
        *&state[10] = object_getClassName(self);
        v74 = 2082;
        v75 = sel_getName(a2);
        v76 = 1024;
        v77 = 135;
        v21 = "%c[%{public}s %{public}s]:%i System never went to sleep ! Ignoring will power on message.";
LABEL_57:
        _os_log_impl(&dword_22EEC4000, v18, OS_LOG_TYPE_ERROR, v21, state, 0x22u);
LABEL_58:

        break;
      }

      goto LABEL_62;
  }

LABEL_61:
  v67 = *MEMORY[0x277D85DE8];
}

- (void)allowSleep
{
  v30 = *MEMORY[0x277D85DE8];
  sleepMessageArgument = self->_sleepMessageArgument;
  self->_sleepMessageArgument = 0;
  if (self->_willSleep)
  {
    v5 = IOAllowPowerChange(self->_powerNotificationConnection, sleepMessageArgument);
    if (v5)
    {
      v6 = v5;
      v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific >= 5)
      {
        __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
      }

      v9 = *(&off_27DA9DE50 + specific);
      if (v9)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(4, "%c[%{public}s %{public}s]:%i Returned %x", v12, ClassName, Name, 166, v6);
        v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v13 = dispatch_get_specific(v7);
      v14 = NFSharedLogGetLogger(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = object_getClass(self);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        *buf = 67110146;
        v21 = v16;
        v22 = 2082;
        v23 = object_getClassName(self);
        v24 = 2082;
        v25 = sel_getName(a2);
        v26 = 1024;
        v27 = 166;
        v28 = 1024;
        v29 = v6;
        _os_log_impl(&dword_22EEC4000, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned %x", buf, 0x28u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end