@interface SUInstallationConstraintMonitorRestoreFromITunes
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_beganRestoring;
- (void)_queue_endedRestoring;
- (void)_queue_setRestoring:(BOOL)restoring;
- (void)dealloc;
@end

@implementation SUInstallationConstraintMonitorRestoreFromITunes

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  queueCopy = queue;
  downloadCopy = download;
  BSDispatchQueueAssert();
  v21.receiver = self;
  v21.super_class = SUInstallationConstraintMonitorRestoreFromITunes;
  v8 = [(SUInstallationConstraintMonitorBase *)&v21 initOnQueue:queueCopy withRepresentedInstallationConstraints:64 andDownload:downloadCopy];
  v9 = v8;
  if (v8)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__3;
    v19[4] = __Block_byref_object_dispose__3;
    v10 = v8;
    v20 = v10;
    uTF8String = [*MEMORY[0x277D28A28] UTF8String];
    v12 = *(v10 + 1);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__SUInstallationConstraintMonitorRestoreFromITunes_initOnQueue_withDownload___block_invoke;
    handler[3] = &unk_279CAB718;
    handler[4] = v19;
    notify_register_dispatch(uTF8String, v10 + 13, v12, handler);
    uTF8String2 = [*MEMORY[0x277D28A20] UTF8String];
    v14 = *(v10 + 1);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__SUInstallationConstraintMonitorRestoreFromITunes_initOnQueue_withDownload___block_invoke_2;
    v17[3] = &unk_279CAB718;
    v17[4] = v19;
    notify_register_dispatch(uTF8String2, v10 + 14, v14, v17);
    state64 = 0;
    notify_get_state(*(v10 + 13), &state64);
    if (state64)
    {
      [v10 _queue_beganRestoring];
    }

    _Block_object_dispose(v19, 8);
  }

  return v9;
}

- (void)dealloc
{
  notify_cancel(self->_queue_startNotifyToken);
  self->_queue_startNotifyToken = -1;
  notify_cancel(self->_queue_endNotifyToken);
  self->_queue_endNotifyToken = -1;
  v3.receiver = self;
  v3.super_class = SUInstallationConstraintMonitorRestoreFromITunes;
  [(SUInstallationConstraintMonitorRestoreFromITunes *)&v3 dealloc];
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

- (void)_queue_beganRestoring
{
  queue = self->super._queue;
  BSDispatchQueueAssert();

  [(SUInstallationConstraintMonitorRestoreFromITunes *)self _queue_setRestoring:1];
}

- (void)_queue_endedRestoring
{
  queue = self->super._queue;
  BSDispatchQueueAssert();

  [(SUInstallationConstraintMonitorRestoreFromITunes *)self _queue_setRestoring:0];
}

- (void)_queue_setRestoring:(BOOL)restoring
{
  restoringCopy = restoring;
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_isRestoring != restoringCopy)
  {
    self->_queue_isRestoring = restoringCopy;
    v6 = SULogInstallConstraints();
    self->_queue_isRestoring;
    SULogInfoForSubsystem(v6, @"%@ - iTunes restore constraint changed (satisfied? %@)", v7, v8, v9, v10, v11, v12, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

@end