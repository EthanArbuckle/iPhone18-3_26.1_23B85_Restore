@interface MDARSessionObserver
- (ARSession)session;
- (MDARSessionObserver)initWithObserver:(ARSessionObserver *)a3 onQueue:(id)a4;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didUpdateAnchors:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)setSession:(id)a3;
@end

@implementation MDARSessionObserver

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  observer = self->_observer;
  if (observer)
  {
    v7 = a4;
    v8 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v9 = *(observer->var0 + 1);

    v9(observer, WeakRetained);
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  observer = self->_observer;
  if (observer)
  {
    (*observer->var0)(observer, v6);
  }
}

- (void)session:(id)a3 didUpdateAnchors:(id)a4
{
  v8 = a3;
  v6 = a4;
  observer = self->_observer;
  if (observer)
  {
    (*(observer->var0 + 2))(observer, v8, v6);
  }
}

- (void)setSession:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained != v4)
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

    v11 = objc_storeWeak(&self->_session, v4);

    if (v4)
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

- (MDARSessionObserver)initWithObserver:(ARSessionObserver *)a3 onQueue:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MDARSessionObserver;
  v8 = [(MDARSessionObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_observer = a3;
    objc_storeStrong(&v8->_delegateQueue, a4);
  }

  return v9;
}

@end