@interface NFXPCEventPublisher
- (NFXPCEventPublisher)initWithStreamName:(id)a3 queue:(id)a4;
- (void)sendXpcNotificationEvent:(id)a3;
- (void)sendXpcNotificationEventWithDictionary:(id)a3;
- (void)sendXpcNotificationEventWithString:(id)a3;
@end

@implementation NFXPCEventPublisher

- (NFXPCEventPublisher)initWithStreamName:(id)a3 queue:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v47.receiver = self;
  v47.super_class = NFXPCEventPublisher;
  v10 = [(NFXPCEventPublisher *)&v47 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v10->_streamName, a3);
  objc_storeStrong(&v11->_queue, a4);
  v12 = v8;
  objc_msgSend_UTF8String(v12, v13, v14);
  queue = v11->_queue;
  v16 = xpc_event_publisher_create();
  publisher = v11->_publisher;
  v11->_publisher = v16;

  v18 = objc_opt_new();
  pendingSendEvents = v11->_pendingSendEvents;
  v11->_pendingSendEvents = v18;

  v20 = objc_opt_new();
  tokens = v11->_tokens;
  v11->_tokens = v20;

  if (v11->_publisher)
  {
    objc_initWeak(&location, v11);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22EEC837C;
    v45[3] = &unk_2788729B8;
    objc_copyWeak(&v46, &location);
    v22 = MEMORY[0x2318FA9A0](v45);
    v23 = v11->_publisher;
    xpc_event_publisher_set_handler();
    v24 = v11->_publisher;
    objc_copyWeak(v44, &location);
    v44[1] = a2;
    v43 = v8;
    xpc_event_publisher_set_error_handler();
    v25 = v11->_publisher;
    xpc_event_publisher_activate();

    objc_destroyWeak(v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
LABEL_4:
    v26 = v11;
    goto LABEL_16;
  }

  v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (specific >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v29 = *(&off_27DA9DE50 + specific);
  if (v29)
  {
    Class = object_getClass(v11);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v11);
    Name = sel_getName(a2);
    v33 = 45;
    if (isMetaClass)
    {
      v33 = 43;
    }

    v29(3, "%c[%{public}s %{public}s]:%i Could not create the Publisher!!!", v33, ClassName, Name, 65);
    v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v34 = dispatch_get_specific(v27);
  v35 = NFSharedLogGetLogger(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = object_getClass(v11);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(v11);
    v39 = sel_getName(a2);
    LODWORD(location) = 67109890;
    HIDWORD(location) = v37;
    v49 = 2082;
    v50 = v38;
    v51 = 2082;
    v52 = v39;
    v53 = 1024;
    v54 = 65;
    _os_log_impl(&dword_22EEC4000, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create the Publisher!!!", &location, 0x22u);
  }

  v26 = 0;
LABEL_16:

  v40 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)sendXpcNotificationEvent:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22EEC8B20;
  block[3] = &unk_278872A08;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)sendXpcNotificationEventWithString:(id)a3
{
  v4 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);

  xpc_dictionary_set_string(xdict, "Payload", v8);
  objc_msgSend_sendXpcNotificationEvent_(self, v9, xdict);
}

- (void)sendXpcNotificationEventWithDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = v5;
  if (v5)
  {
    if (xpc_dictionary_get_count(v5))
    {
      objc_msgSend_sendXpcNotificationEvent_(self, v7, v6);
    }
  }

  else
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = *(&off_27DA9DE50 + specific);
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Unable to create event dictionary; dropping event", v14, ClassName, Name, 132);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v15 = dispatch_get_specific(v8);
    v16 = NFSharedLogGetLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 132;
      _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to create event dictionary; dropping event", buf, 0x22u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end