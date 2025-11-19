@interface VSInlineStreamService
+ (id)sharedService;
- (BOOL)hasInlineStreamRequestForSpeakRequest:(id)a3;
- (VSInlineStreamService)init;
- (_opaque_pthread_mutex_t)lock;
- (_opaque_pthread_mutexattr_t)recursiveLockAttr;
- (id)popInlineStreamRequestForSpeakRequest:(id)a3;
- (void)addInlineStreamRequest:(id)a3;
- (void)dealloc;
- (void)enqueueStreamId:(id)a3 withObject:(id)a4;
- (void)removeStreamId:(id)a3;
- (void)setLock:(_opaque_pthread_mutex_t *)a3;
- (void)startStreamingWithId:(id)a3;
@end

@implementation VSInlineStreamService

- (_opaque_pthread_mutexattr_t)recursiveLockAttr
{
  v2 = *self->_recursiveLockAttr.__opaque;
  sig = self->_recursiveLockAttr.__sig;
  *result.__opaque = v2;
  result.__sig = sig;
  return result;
}

- (void)setLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_lock.__opaque[40] = *&a3->__opaque[40];
  *&self->_lock.__opaque[24] = v5;
  *&self->_lock.__opaque[8] = v4;
  *&self->_lock.__sig = v3;
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *self[1].__opaque;
  *&retstr->__sig = *&self->__opaque[48];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[32];
  *&retstr->__opaque[24] = *&self[1].__opaque[16];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)removeStreamId:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Remove notification %@", &v9, 0xCu);
  }

  v6 = [(VSInlineStreamService *)self ongoingNotifications];
  [v6 removeObject:v4];

  v7 = [(VSInlineStreamService *)self queuedNotification];
  [v7 removeObjectForKey:v4];

  pthread_mutex_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startStreamingWithId:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = self;
  pthread_mutex_lock(&self->_lock);
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v31 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Start notifying for: %@", buf, 0xCu);
  }

  v6 = [(VSInlineStreamService *)self ongoingNotifications];
  [v6 addObject:v4];

  v7 = [(VSInlineStreamService *)self queuedNotification];
  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = VSGetLogDefault();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [v8 count];
      *buf = 67109378;
      *v31 = v11;
      *&v31[4] = 2112;
      *&v31[6] = v4;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "%d cached objects found for notification: %@", buf, 0x12u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [(VSInlineStreamService *)v21 notifyQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__VSInlineStreamService_startStreamingWithId___block_invoke;
          block[3] = &unk_279E4BC28;
          v23 = v4;
          v24 = v17;
          dispatch_async(v18, block);
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [v12 removeAllObjects];
    v8 = v20;
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      *v31 = v4;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "No cached object found for notification %@.", buf, 0xCu);
    }
  }

  pthread_mutex_unlock(&v21->_lock);

  v19 = *MEMORY[0x277D85DE8];
}

void __46__VSInlineStreamService_startStreamingWithId___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "Notify %@ with cached object %@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:*(a1 + 32) object:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enqueueStreamId:(id)a3 withObject:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_lock);
  v8 = [(VSInlineStreamService *)self ongoingNotifications];
  v9 = [v8 containsObject:v6];

  v10 = VSGetLogDefault();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Notification for %@ is on-going. Posting object immediately %@", buf, 0x16u);
    }

    v12 = [(VSInlineStreamService *)self notifyQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__VSInlineStreamService_enqueueStreamId_withObject___block_invoke;
    v17[3] = &unk_279E4BC28;
    v18 = v6;
    v19 = v7;
    dispatch_async(v12, v17);

    pthread_mutex_unlock(&self->_lock);
    v13 = v18;
  }

  else
  {
    if (v11)
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Notification for %@ has not started. Cache object %@", buf, 0x16u);
    }

    v14 = [(VSInlineStreamService *)self queuedNotification];
    v13 = [v14 objectForKeyedSubscript:v6];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = [(VSInlineStreamService *)self queuedNotification];
      [v15 setObject:v13 forKeyedSubscript:v6];
    }

    [v13 addObject:v7];
    pthread_mutex_unlock(&self->_lock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __52__VSInlineStreamService_enqueueStreamId_withObject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

- (BOOL)hasInlineStreamRequestForSpeakRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(VSInlineStreamService *)self streamRequestQueue];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) text];
        v10 = [v4 text];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  pthread_mutex_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)popInlineStreamRequestForSpeakRequest:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(VSInlineStreamService *)self streamRequestQueue];
  v6 = [v5 firstObject];

  if (v6)
  {
    do
    {
      v7 = [(VSInlineStreamService *)self streamRequestQueue];
      [v7 removeObjectAtIndex:0];

      v8 = [v6 text];
      v9 = [v4 text];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        break;
      }

      v11 = [v6 identifier];
      [(VSInlineStreamService *)self removeStreamId:v11];

      v12 = [(VSInlineStreamService *)self streamRequestQueue];
      v13 = [v12 firstObject];

      v6 = v13;
    }

    while (v13);
  }

  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (void)addInlineStreamRequest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(VSInlineStreamService *)self streamRequestQueue];
  [v5 addObject:v4];

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 identifier];
    v8 = [v4 logText];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Received inline streaming TTS with id %@, text: %@", &v10, 0x16u);
  }

  pthread_mutex_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = VSInlineStreamService;
  [(VSInlineStreamService *)&v3 dealloc];
}

- (VSInlineStreamService)init
{
  v13.receiver = self;
  v13.super_class = VSInlineStreamService;
  v2 = [(VSInlineStreamService *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queuedNotification = v2->_queuedNotification;
    v2->_queuedNotification = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    streamRequestQueue = v2->_streamRequestQueue;
    v2->_streamRequestQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    ongoingNotifications = v2->_ongoingNotifications;
    v2->_ongoingNotifications = v7;

    pthread_mutexattr_init(&v2->_recursiveLockAttr);
    pthread_mutexattr_settype(&v2->_recursiveLockAttr, 2);
    pthread_mutex_init(&v2->_lock, &v2->_recursiveLockAttr);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.voiced.VSInlineStreamService", v9);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v10;
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken_2888 != -1)
  {
    dispatch_once(&sharedService_onceToken_2888, &__block_literal_global_2889);
  }

  v3 = sharedService___sharedQueue;

  return v3;
}

uint64_t __38__VSInlineStreamService_sharedService__block_invoke()
{
  sharedService___sharedQueue = objc_alloc_init(VSInlineStreamService);

  return MEMORY[0x2821F96F8]();
}

@end