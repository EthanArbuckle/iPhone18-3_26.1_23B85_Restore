@interface MDARSessionObserver
- (ARSession)session;
- (MDARSessionObserver)initWithObserver:(ARSessionObserver *)observer onQueue:(id)queue;
- (void)session:(id)session didChangeGeoTrackingStatus:(id)status;
- (void)session:(id)session didUpdateAnchors:(id)anchors;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)setSession:(id)session;
@end

@implementation MDARSessionObserver

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)session:(id)session didChangeGeoTrackingStatus:(id)status
{
  observer = self->_observer;
  if (observer)
  {
    statusCopy = status;
    sessionCopy = session;
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v9 = *(observer->var0 + 1);

    v9(observer, WeakRetained);
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  observer = self->_observer;
  if (observer)
  {
    (*observer->var0)(observer, sessionCopy);
  }
}

- (void)session:(id)session didUpdateAnchors:(id)anchors
{
  sessionCopy = session;
  anchorsCopy = anchors;
  observer = self->_observer;
  if (observer)
  {
    (*(observer->var0 + 2))(observer, sessionCopy, anchorsCopy);
  }
}

- (void)setSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained != sessionCopy)
  {
    v6 = objc_loadWeakRetained(&self->_session);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_session);
      [v7 setDelegate:0];

      v8 = objc_loadWeakRetained(&self->_session);
      [v8 setDelegateQueue:0];

      v9 = GEOGetVectorKitARSessionObserverLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_loadWeakRetained(&self->_session);
        v17 = 134217984;
        v18 = v10;
        _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "Did stop observing session:%p", &v17, 0xCu);
      }
    }

    v11 = objc_storeWeak(&self->_session, sessionCopy);

    if (sessionCopy)
    {
      v12 = objc_loadWeakRetained(&self->_session);
      [v12 setDelegate:self];

      delegateQueue = self->_delegateQueue;
      v14 = objc_loadWeakRetained(&self->_session);
      [v14 setDelegateQueue:delegateQueue];

      v15 = GEOGetVectorKitARSessionObserverLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_loadWeakRetained(&self->_session);
        v17 = 134217984;
        v18 = v16;
        _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "Did start observing session:%p", &v17, 0xCu);
      }
    }
  }
}

- (MDARSessionObserver)initWithObserver:(ARSessionObserver *)observer onQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MDARSessionObserver;
  v8 = [(MDARSessionObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_observer = observer;
    objc_storeStrong(&v8->_delegateQueue, queue);
  }

  return v9;
}

@end