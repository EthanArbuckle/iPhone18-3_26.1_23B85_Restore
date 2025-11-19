@interface SBCameraViewfinderMonitor
+ (id)sharedInstance;
- (id)addObserver:(id)a3;
- (void)_cancel;
- (void)_removeObserver:(id)a3;
- (void)_start;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionWillBegin:(id)a4;
- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3;
- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3;
- (void)dealloc;
@end

@implementation SBCameraViewfinderMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SBCameraViewfinderMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance___result;

  return v2;
}

void __43__SBCameraViewfinderMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___result;
  sharedInstance___result = v1;
}

- (void)dealloc
{
  [(SBCameraViewfinderMonitor *)self _cancel];
  v3.receiver = self;
  v3.super_class = SBCameraViewfinderMonitor;
  [(SBCameraViewfinderMonitor *)&v3 dealloc];
}

- (void)_start
{
  if (!self->_cameraViewFinder)
  {
    v4 = [MEMORY[0x277CF3B78] cameraViewfinder];
    cameraViewFinder = self->_cameraViewFinder;
    self->_cameraViewFinder = v4;

    [(FigCameraViewfinder *)self->_cameraViewFinder setDelegate:self queue:MEMORY[0x277D85CD0]];
    v6 = self->_cameraViewFinder;

    [(FigCameraViewfinder *)v6 startWithOptions:0];
  }
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  if (v4 && ![(NSHashTable *)self->_observers containsObject:v4])
  {
    observers = self->_observers;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v4];
    if (self->_activeSessionAuditToken)
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 cameraViewfinderMonitorSessionWillBegin:self auditToken:self->_activeSessionAuditToken];
      }

      if (objc_opt_respondsToSelector())
      {
        [v4 cameraViewfinderMonitorSessionDidBegin:self auditToken:self->_activeSessionAuditToken];
      }
    }

    if (self->_hasActiveMovieRecordingSession && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 cameraViewfinderMonitorSessionDidBeginMovieRecording:self];
    }

    if ([(NSHashTable *)self->_observers count]== 1)
    {
      [(SBCameraViewfinderMonitor *)self _start];
    }

    v5 = [[SBCameraViewfinderMonitorToken alloc] initWithMonitor:self observer:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;

    [(SBCameraViewfinderMonitor *)self _cancel];
  }
}

- (void)_cancel
{
  cameraViewFinder = self->_cameraViewFinder;
  if (cameraViewFinder)
  {
    [(FigCameraViewfinder *)cameraViewFinder stop];
    v4 = self->_cameraViewFinder;
    self->_cameraViewFinder = 0;
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionWillBegin:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CF0B98];
  if (v7)
  {
    [v7 clientAuditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v10 = [v9 tokenFromAuditToken:buf];
  if (v10)
  {
    v20 = v6;
    objc_storeStrong(&self->_activeSessionAuditToken, v10);
    v11 = SBLogCaptureViewfinderMonitor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 bundleID];
      v13 = [v10 pid];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "viewfinderSessionWillBegin: Camera Viewfinder Active for: %@, pid: %i", buf, 0x12u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(NSHashTable *)self->_observers copy];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v19 cameraViewfinderMonitorSessionWillBegin:self auditToken:v10];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    v6 = v20;
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CF0B98];
  if (v7)
  {
    [v7 clientAuditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v10 = [v9 tokenFromAuditToken:buf];
  v11 = v10;
  if (v10)
  {
    v21 = v6;
    if (([v10 hasSameProcessAsAuditToken:self->_activeSessionAuditToken] & 1) == 0)
    {
      v12 = SBLogCaptureViewfinderMonitor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 bundleID];
        v14 = [v11 pid];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "viewfinderSessionDidBegin: Camera Viewfinder Active for: %@, pid: %i", buf, 0x12u);
      }
    }

    objc_storeStrong(&self->_activeSessionAuditToken, v11);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [(NSHashTable *)self->_observers copy];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 cameraViewfinderMonitorSessionDidBegin:self auditToken:v11];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    v6 = v21;
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CF0B98];
  if (v7)
  {
    [v7 clientAuditToken];
  }

  else
  {
    *buf = 0u;
    v28 = 0u;
  }

  v10 = [v9 tokenFromAuditToken:buf];
  v11 = v10;
  if (v10)
  {
    if ([v10 hasSameProcessAsAuditToken:self->_activeSessionAuditToken])
    {
      activeSessionAuditToken = self->_activeSessionAuditToken;
      self->_activeSessionAuditToken = 0;

      v13 = SBLogCaptureViewfinderMonitor();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 bundleID];
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Camera Viewfinder Inactive for: %@", buf, 0xCu);
      }
    }

    v21 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [(NSHashTable *)self->_observers copy];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 cameraViewfinderMonitorSessionDidEnd:self auditToken:v11];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    v6 = v21;
  }
}

- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_hasActiveMovieRecordingSession = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 cameraViewfinderMonitorSessionDidBeginMovieRecording:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_hasActiveMovieRecordingSession = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 cameraViewfinderMonitorSessionDidEndMovieRecording:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end