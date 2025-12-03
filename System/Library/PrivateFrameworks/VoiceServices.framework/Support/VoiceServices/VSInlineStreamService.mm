@interface VSInlineStreamService
+ (id)sharedService;
- (BOOL)hasInlineStreamRequestForSpeakRequest:(id)request;
- (VSInlineStreamService)init;
- (_opaque_pthread_mutex_t)lock;
- (_opaque_pthread_mutexattr_t)recursiveLockAttr;
- (id)popInlineStreamRequestForSpeakRequest:(id)request;
- (void)addInlineStreamRequest:(id)request;
- (void)dealloc;
- (void)enqueueStreamId:(id)id withObject:(id)object;
- (void)removeStreamId:(id)id;
- (void)setLock:(_opaque_pthread_mutex_t *)lock;
- (void)startStreamingWithId:(id)id;
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

- (void)setLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[24];
  *&self->_lock.__opaque[40] = *&lock->__opaque[40];
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

- (void)removeStreamId:(id)id
{
  v11 = *MEMORY[0x277D85DE8];
  idCopy = id;
  pthread_mutex_lock(&self->_lock);
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = idCopy;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Remove notification %@", &v9, 0xCu);
  }

  ongoingNotifications = [(VSInlineStreamService *)self ongoingNotifications];
  [ongoingNotifications removeObject:idCopy];

  queuedNotification = [(VSInlineStreamService *)self queuedNotification];
  [queuedNotification removeObjectForKey:idCopy];

  pthread_mutex_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startStreamingWithId:(id)id
{
  v32 = *MEMORY[0x277D85DE8];
  idCopy = id;
  selfCopy = self;
  pthread_mutex_lock(&self->_lock);
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v31 = idCopy;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Start notifying for: %@", buf, 0xCu);
  }

  ongoingNotifications = [(VSInlineStreamService *)self ongoingNotifications];
  [ongoingNotifications addObject:idCopy];

  queuedNotification = [(VSInlineStreamService *)self queuedNotification];
  v8 = [queuedNotification objectForKeyedSubscript:idCopy];

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
      *&v31[6] = idCopy;
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
          notifyQueue = [(VSInlineStreamService *)selfCopy notifyQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__VSInlineStreamService_startStreamingWithId___block_invoke;
          block[3] = &unk_279E4BC28;
          v23 = idCopy;
          v24 = v17;
          dispatch_async(notifyQueue, block);
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
      *v31 = idCopy;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "No cached object found for notification %@.", buf, 0xCu);
    }
  }

  pthread_mutex_unlock(&selfCopy->_lock);

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

- (void)enqueueStreamId:(id)id withObject:(id)object
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  objectCopy = object;
  pthread_mutex_lock(&self->_lock);
  ongoingNotifications = [(VSInlineStreamService *)self ongoingNotifications];
  v9 = [ongoingNotifications containsObject:idCopy];

  v10 = VSGetLogDefault();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412546;
      v21 = idCopy;
      v22 = 2112;
      v23 = objectCopy;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Notification for %@ is on-going. Posting object immediately %@", buf, 0x16u);
    }

    notifyQueue = [(VSInlineStreamService *)self notifyQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__VSInlineStreamService_enqueueStreamId_withObject___block_invoke;
    v17[3] = &unk_279E4BC28;
    v18 = idCopy;
    v19 = objectCopy;
    dispatch_async(notifyQueue, v17);

    pthread_mutex_unlock(&self->_lock);
    v13 = v18;
  }

  else
  {
    if (v11)
    {
      *buf = 138412546;
      v21 = idCopy;
      v22 = 2112;
      v23 = objectCopy;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Notification for %@ has not started. Cache object %@", buf, 0x16u);
    }

    queuedNotification = [(VSInlineStreamService *)self queuedNotification];
    v13 = [queuedNotification objectForKeyedSubscript:idCopy];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      queuedNotification2 = [(VSInlineStreamService *)self queuedNotification];
      [queuedNotification2 setObject:v13 forKeyedSubscript:idCopy];
    }

    [v13 addObject:objectCopy];
    pthread_mutex_unlock(&self->_lock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __52__VSInlineStreamService_enqueueStreamId_withObject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

- (BOOL)hasInlineStreamRequestForSpeakRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  pthread_mutex_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  streamRequestQueue = [(VSInlineStreamService *)self streamRequestQueue];
  v6 = [streamRequestQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(streamRequestQueue);
        }

        text = [*(*(&v14 + 1) + 8 * i) text];
        text2 = [requestCopy text];
        v11 = [text isEqualToString:text2];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [streamRequestQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)popInlineStreamRequestForSpeakRequest:(id)request
{
  requestCopy = request;
  pthread_mutex_lock(&self->_lock);
  streamRequestQueue = [(VSInlineStreamService *)self streamRequestQueue];
  firstObject = [streamRequestQueue firstObject];

  if (firstObject)
  {
    do
    {
      streamRequestQueue2 = [(VSInlineStreamService *)self streamRequestQueue];
      [streamRequestQueue2 removeObjectAtIndex:0];

      text = [firstObject text];
      text2 = [requestCopy text];
      v10 = [text isEqualToString:text2];

      if (v10)
      {
        break;
      }

      identifier = [firstObject identifier];
      [(VSInlineStreamService *)self removeStreamId:identifier];

      streamRequestQueue3 = [(VSInlineStreamService *)self streamRequestQueue];
      firstObject2 = [streamRequestQueue3 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
  }

  pthread_mutex_unlock(&self->_lock);

  return firstObject;
}

- (void)addInlineStreamRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  pthread_mutex_lock(&self->_lock);
  streamRequestQueue = [(VSInlineStreamService *)self streamRequestQueue];
  [streamRequestQueue addObject:requestCopy];

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    logText = [requestCopy logText];
    v10 = 138412546;
    v11 = identifier;
    v12 = 2112;
    v13 = logText;
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

    array = [MEMORY[0x277CBEB18] array];
    streamRequestQueue = v2->_streamRequestQueue;
    v2->_streamRequestQueue = array;

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