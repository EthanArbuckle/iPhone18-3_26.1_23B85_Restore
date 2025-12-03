@interface RTNotifier
- (BOOL)observer:(id)observer observingNotificationName:(id)name;
- (RTNotifier)init;
- (RTNotifier)initWithName:(id)name;
- (RTNotifier)initWithQueue:(id)queue;
- (unint64_t)getNumberOfObservers:(id)observers;
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name;
- (void)postNotification:(id)notification;
- (void)postNotification:(id)notification toObserver:(id)observer;
- (void)removeAllObservers;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer fromNotification:(id)notification;
@end

@implementation RTNotifier

- (RTNotifier)init
{
  selfCopy = self;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [(RTNotifier *)selfCopy UTF8String];
  }

  else
  {
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), selfCopy];
    uTF8String = [selfCopy UTF8String];
  }

  v6 = dispatch_queue_create(uTF8String, v3);

  v7 = [(RTNotifier *)selfCopy initWithQueue:v6];
  return v7;
}

- (RTNotifier)initWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTNotifier initWithName:]";
      v15 = 1024;
      v16 = 58;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name (in %s:%d)", buf, 0x12u);
    }
  }

  selfCopy = self;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [(RTNotifier *)selfCopy UTF8String];
  }

  else
  {
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), selfCopy];
    uTF8String = [selfCopy UTF8String];
  }

  v10 = dispatch_queue_create(uTF8String, v7);

  v11 = [(RTNotifier *)selfCopy initWithQueue:v10];
  return v11;
}

- (RTNotifier)initWithQueue:(id)queue
{
  v16 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (!queueCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTNotifier initWithQueue:]";
      v14 = 1024;
      v15 = 66;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

  v11.receiver = self;
  v11.super_class = RTNotifier;
  v7 = [(RTNotifier *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersMap = v7->_observersMap;
    v7->_observersMap = v8;

    objc_storeStrong(&v7->_queue, queue);
  }

  return v7;
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  if (!nameCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTNotifier addObserver:selector:name:]";
      v21 = 1024;
      v22 = 79;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__RTNotifier_addObserver_selector_name___block_invoke;
  v14[3] = &unk_2788C4C70;
  v15 = observerCopy;
  selfCopy = self;
  v17 = nameCopy;
  selectorCopy = selector;
  v12 = nameCopy;
  v13 = observerCopy;
  dispatch_sync(queue, v14);
}

void __40__RTNotifier_addObserver_selector_name___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [[RTObserverRecord alloc] initWithObserver:*(a1 + 32) selector:*(a1 + 56)];
  v3 = [*(a1 + 40) observersMap];
  v4 = [v3 objectForKey:*(a1 + 48)];

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v22) = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__RTNotifier_addObserver_selector_name___block_invoke_2;
    v17[3] = &unk_2788C9B70;
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v19 = buf;
    v20 = v6;
    v18 = v5;
    [v4 enumerateObjectsUsingBlock:v17];
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [v4 addObject:v2];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = [*(a1 + 40) observersMap];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v2, 0}];
    [v7 setObject:v8 forKey:*(a1 + 48)];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = [*(a1 + 40) getNumberOfObservers:v15];
      *buf = 138413314;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2048;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, add observer, %@(%p), notification, %@, numberOfObservers, %ld", buf, 0x34u);
    }
  }

  [*(a1 + 40) internalAddObserver:*(a1 + 32) name:*(a1 + 48)];
}

void __40__RTNotifier_addObserver_selector_name___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 observer];
  v7 = v6;
  if (v6 == a1[4])
  {
    v8 = [v10 selector];
    v9 = a1[6];

    if (v8 == v9)
    {
      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (!observerCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTNotifier removeObserver:]";
      v12 = 1024;
      v13 = 119;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationObserver (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__RTNotifier_removeObserver___block_invoke;
  v8[3] = &unk_2788C4A70;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, v8);
}

void __29__RTNotifier_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersMap];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__RTNotifier_removeObserver___block_invoke_2;
  v5[3] = &unk_2788C9B98;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __29__RTNotifier_removeObserver___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [v8 count];
  if (v9 - 1 >= 0)
  {
    v11 = v9;
    v12 = MEMORY[0x277D86220];
    *&v10 = 138413314;
    v21 = v10;
    do
    {
      v13 = [v8 objectAtIndex:{--v11, v21}];
      v14 = [v13 observer];
      if (*(a1 + 32) == v14)
      {
        [v8 removeObjectAtIndex:v11];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = objc_opt_class();
            v22 = NSStringFromClass(v16);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = *(a1 + 32);
            v20 = [*(a1 + 40) getNumberOfObservers:v7];
            *buf = v21;
            v24 = v22;
            v25 = 2112;
            v26 = v18;
            v27 = 2048;
            v28 = v19;
            v12 = MEMORY[0x277D86220];
            v29 = 2112;
            v30 = v7;
            v31 = 2048;
            v32 = v20;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, remove observer, %@(%p), notification, %@, numberOfObservers, %ld", buf, 0x34u);
          }
        }

        [*(a1 + 40) internalRemoveObserver:v14 name:v7];
      }
    }

    while (v11 > 0);
  }
}

- (void)removeObserver:(id)observer fromNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  notificationCopy = notification;
  v8 = notificationCopy;
  if (observerCopy)
  {
    if (notificationCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTNotifier removeObserver:fromNotification:]";
    v19 = 1024;
    v20 = 148;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationObserver (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTNotifier removeObserver:fromNotification:]";
      v19 = 1024;
      v20 = 149;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTNotifier_removeObserver_fromNotification___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v15 = v8;
  v16 = observerCopy;
  v12 = observerCopy;
  v13 = v8;
  dispatch_sync(queue, block);
}

void __46__RTNotifier_removeObserver_fromNotification___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__60;
  v22 = __Block_byref_object_dispose__60;
  v2 = [*(a1 + 32) observersMap];
  v23 = [v2 objectForKey:*(a1 + 40)];

  v3 = v19[5];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __46__RTNotifier_removeObserver_fromNotification___block_invoke_26;
  v15 = &unk_2788C9BC0;
  v16 = *(a1 + 48);
  v17 = &v18;
  [v3 enumerateObjectsUsingBlock:&v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) getNumberOfObservers:{v9, v12, v13, v14, v15}];
      *buf = 138413314;
      v25 = v6;
      v26 = 2112;
      v27 = v8;
      v28 = 2048;
      v29 = v10;
      v30 = 2112;
      v31 = v9;
      v32 = 2048;
      v33 = v11;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, remove observer, %@(%p), notification, %@, numberOfObservers, %ld", buf, 0x34u);
    }
  }

  [*(a1 + 32) internalRemoveObserver:*(a1 + 48) name:{*(a1 + 40), v12, v13, v14, v15}];

  _Block_object_dispose(&v18, 8);
}

void __46__RTNotifier_removeObserver_fromNotification___block_invoke_26(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 observer];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObjectAtIndex:a3];
    *a4 = 1;
  }
}

- (void)postNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTNotifier postNotification:]";
      v16 = 1024;
      v17 = 173;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification (in %s:%d)", buf, 0x12u);
    }
  }

  name = [notificationCopy name];

  if (!name)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTNotifier postNotification:]";
      v16 = 1024;
      v17 = 174;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "nil notification name (in %s:%d)", buf, 0x12u);
    }
  }

  observersMap = [(RTNotifier *)self observersMap];
  name2 = [notificationCopy name];
  v10 = [observersMap objectForKey:name2];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__RTNotifier_postNotification___block_invoke;
  v12[3] = &unk_2788C9BE8;
  v13 = notificationCopy;
  v11 = notificationCopy;
  [v10 enumerateObjectsUsingBlock:v12];
}

void __31__RTNotifier_postNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 observer];
  v4 = [v3 selector];

  [v5 performSelector:v4 withObject:*(a1 + 32)];
}

- (void)postNotification:(id)notification toObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  observerCopy = observer;
  if (!notificationCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTNotifier postNotification:toObserver:]";
      v21 = 1024;
      v22 = 189;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification (in %s:%d)", buf, 0x12u);
    }
  }

  name = [notificationCopy name];

  if (!name)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTNotifier postNotification:toObserver:]";
      v21 = 1024;
      v22 = 190;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "nil notification name (in %s:%d)", buf, 0x12u);
    }
  }

  observersMap = [(RTNotifier *)self observersMap];
  name2 = [notificationCopy name];
  v13 = [observersMap objectForKey:name2];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__RTNotifier_postNotification_toObserver___block_invoke;
  v16[3] = &unk_2788C9C10;
  v17 = observerCopy;
  v18 = notificationCopy;
  v14 = notificationCopy;
  v15 = observerCopy;
  [v13 enumerateObjectsUsingBlock:v16];
}

void __42__RTNotifier_postNotification_toObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 observer];
  if (v6 == *(a1 + 32))
  {
    [v6 performSelector:objc_msgSend(v7 withObject:{"selector"), *(a1 + 40)}];
    *a4 = 1;
  }
}

- (unint64_t)getNumberOfObservers:(id)observers
{
  observersCopy = observers;
  observersMap = [(RTNotifier *)self observersMap];
  v6 = [observersMap objectForKey:observersCopy];

  v7 = [v6 count];
  return v7;
}

- (void)removeAllObservers
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__RTNotifier_removeAllObservers__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __32__RTNotifier_removeAllObservers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observersMap];
  [v1 removeAllObjects];
}

- (BOOL)observer:(id)observer observingNotificationName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = nameCopy;
  if (!observerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTNotifier observer:observingNotificationName:]";
      *&buf[12] = 1024;
      *&buf[14] = 226;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!nameCopy)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTNotifier observer:observingNotificationName:]";
      *&buf[12] = 1024;
      *&buf[14] = 227;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notificationName (in %s:%d)", buf, 0x12u);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0;
  queue = [(RTNotifier *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__RTNotifier_observer_observingNotificationName___block_invoke;
  v14[3] = &unk_2788C9C38;
  v14[4] = self;
  v15 = v8;
  v16 = observerCopy;
  v17 = buf;
  dispatch_sync(queue, v14);

  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_11:

  return v10 & 1;
}

void __49__RTNotifier_observer_observingNotificationName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersMap];
  v7 = [v2 objectForKey:*(a1 + 40)];

  if ([v7 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v7 objectAtIndex:v3];
      v5 = *(a1 + 48);
      v6 = [v4 observer];

      if (v5 == v6)
      {
        break;
      }

      if (++v3 >= [v7 count])
      {
        goto LABEL_7;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_7:
}

@end