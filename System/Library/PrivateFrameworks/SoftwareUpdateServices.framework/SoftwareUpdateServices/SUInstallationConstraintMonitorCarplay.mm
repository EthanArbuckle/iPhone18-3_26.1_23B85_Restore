@interface SUInstallationConstraintMonitorCarplay
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_carplayDidChange;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation SUInstallationConstraintMonitorCarplay

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  downloadCopy = download;
  queueCopy = queue;
  BSDispatchQueueAssert();
  v41.receiver = self;
  v41.super_class = SUInstallationConstraintMonitorCarplay;
  v8 = [(SUInstallationConstraintMonitorBase *)&v41 initOnQueue:queueCopy withRepresentedInstallationConstraints:512 andDownload:downloadCopy];

  if (v8)
  {
    if (dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 261))
    {
      Class = objc_getClass("CARSessionStatus");
      if (Class)
      {
        v17 = Class;
        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 alloc];
          if (objc_opt_respondsToSelector())
          {
            v26 = v18;
            initAndWaitUntilSessionUpdated = [v26 initAndWaitUntilSessionUpdated];
            v28 = *(v8 + 7);
            *(v8 + 7) = initAndWaitUntilSessionUpdated;

            v29 = *(v8 + 7);
            if (v29)
            {
              [v29 setSessionObserver:v8];
              currentSession = [*(v8 + 7) currentSession];
              *(v8 + 48) = currentSession != 0;

              return v8;
            }
          }

          else
          {
            SULogInfo(@"dynamically loaded CARSessionStatus class does not respond to selector initAndWaitUntilSessionUpdated", v19, v20, v21, v22, v23, v24, v25, v41.receiver);
          }

LABEL_12:
          SULogInfo(@"Failed to dynamically load CARSessionStatus. Setting carplay enabled to NO", v32, v33, v34, v35, v36, v37, v38, v41.receiver);
          v39 = *(v8 + 7);
          *(v8 + 7) = 0;

          *(v8 + 48) = 0;
          return v8;
        }

        v31 = @"dynamically loaded CARSessionStatus class does not respond to selector alloc";
      }

      else
      {
        v31 = @"Failed to get class CARSessionStatus";
      }
    }

    else
    {
      v31 = @"Failed to open CarKit dylib";
    }

    SULogInfo(v31, v9, v10, v11, v12, v13, v14, v15, v41.receiver);
    goto LABEL_12;
  }

  return v8;
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (!self->_queue_CarplayConnected)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (void)_queue_carplayDidChange
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  queue_carSessionStatus = self->_queue_carSessionStatus;
  if (queue_carSessionStatus)
  {
    currentSession = [(CARSessionStatus *)queue_carSessionStatus currentSession];
    v6 = currentSession != 0;
  }

  else
  {
    v6 = 0;
  }

  if (self->_queue_CarplayConnected != v6)
  {
    self->_queue_CarplayConnected = v6;
    v7 = SULogInstallConstraints();
    self->_queue_CarplayConnected;
    SULogInfoForSubsystem(v7, @"%@ - carplay constraint changed (satisfied? %@)", v8, v9, v10, v11, v12, v13, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

- (void)sessionDidConnect:(id)connect
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUInstallationConstraintMonitorCarplay_sessionDidConnect___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUInstallationConstraintMonitorCarplay_sessionDidDisconnect___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

@end