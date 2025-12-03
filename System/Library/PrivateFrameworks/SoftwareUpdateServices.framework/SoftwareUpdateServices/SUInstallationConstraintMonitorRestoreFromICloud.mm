@interface SUInstallationConstraintMonitorRestoreFromICloud
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_restoreStateChanged;
- (void)dealloc;
@end

@implementation SUInstallationConstraintMonitorRestoreFromICloud

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  queueCopy = queue;
  downloadCopy = download;
  BSDispatchQueueAssert();
  v16.receiver = self;
  v16.super_class = SUInstallationConstraintMonitorRestoreFromICloud;
  v8 = [(SUInstallationConstraintMonitorBase *)&v16 initOnQueue:queueCopy withRepresentedInstallationConstraints:8 andDownload:downloadCopy];
  v9 = v8;
  if (v8)
  {
    v8[13] = -1;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__5;
    v14[4] = __Block_byref_object_dispose__5;
    v10 = v8;
    v15 = v10;
    uTF8String = [*MEMORY[0x277D28AA0] UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__SUInstallationConstraintMonitorRestoreFromICloud_initOnQueue_withDownload___block_invoke;
    handler[3] = &unk_279CAB718;
    handler[4] = v14;
    notify_register_dispatch(uTF8String, v9 + 13, queueCopy, handler);
    [v10 _queue_restoreStateChanged];
    _Block_object_dispose(v14, 8);
  }

  return v9;
}

- (void)dealloc
{
  notify_cancel(self->_queue_restoreToken);
  self->_queue_restoreToken = -1;
  v3.receiver = self;
  v3.super_class = SUInstallationConstraintMonitorRestoreFromICloud;
  [(SUInstallationConstraintMonitorRestoreFromICloud *)&v3 dealloc];
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (!self->_queue_isRestoring)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (void)_queue_restoreStateChanged
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  state64 = 0;
  notify_get_state(self->_queue_restoreToken, &state64);
  v4 = state64 - 1 < 2;
  if (self->_queue_isRestoring != v4)
  {
    self->_queue_isRestoring = v4;
    v5 = SULogInstallConstraints();
    self->_queue_isRestoring;
    SULogInfoForSubsystem(v5, @"%@ - iCloud restore constraint changed (satisfied? %@)", v6, v7, v8, v9, v10, v11, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

@end