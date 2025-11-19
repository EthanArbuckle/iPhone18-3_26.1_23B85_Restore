@interface SUInstallationConstraintMonitorPhoneCalls
- (id)initOnQueue:(id)a3 withDownload:(id)a4;
- (unint64_t)unsatisfiedConstraints;
- (void)_callStatusChanged;
- (void)_queue_noteOnExistingPhoneCallDidChange:(BOOL)a3;
- (void)dealloc;
@end

@implementation SUInstallationConstraintMonitorPhoneCalls

- (id)initOnQueue:(id)a3 withDownload:(id)a4
{
  v6 = MEMORY[0x277D6EDF8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 callCenterWithQueue:v8];
  v10 = -[SUInstallationConstraintMonitorPhoneCalls initOnQueue:withDownload:callCenter:inSpringBoard:onExistingPhoneCall:](self, "initOnQueue:withDownload:callCenter:inSpringBoard:onExistingPhoneCall:", v8, v7, v9, 0, [v9 currentAudioAndVideoCallCount] != 0);

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUInstallationConstraintMonitorPhoneCalls;
  [(SUInstallationConstraintMonitorPhoneCalls *)&v4 dealloc];
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_satisfied)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (void)_callStatusChanged
{
  if (self->_inSpringBoard)
  {
    BSDispatchQueueAssertMain();
    v3 = [(TUCallCenter *)self->_queue_callCenter currentAudioAndVideoCallCount]!= 0;
    queue = self->super._queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__SUInstallationConstraintMonitorPhoneCalls__callStatusChanged__block_invoke;
    v7[3] = &unk_279CAAD00;
    v7[4] = self;
    v8 = v3;
    v5 = v7;
  }

  else
  {
    queue = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUInstallationConstraintMonitorPhoneCalls__callStatusChanged__block_invoke_2;
    block[3] = &unk_279CAA708;
    block[4] = self;
    v5 = block;
  }

  dispatch_async(queue, v5);
}

uint64_t __63__SUInstallationConstraintMonitorPhoneCalls__callStatusChanged__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) currentAudioAndVideoCallCount] != 0;
  v3 = *(a1 + 32);

  return [v3 _queue_noteOnExistingPhoneCallDidChange:v2];
}

- (void)_queue_noteOnExistingPhoneCallDidChange:(BOOL)a3
{
  v3 = a3;
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_satisfied != !v3)
  {
    self->_queue_satisfied = !v3;
    v6 = SULogInstallConstraints();
    self->_queue_satisfied;
    SULogInfoForSubsystem(v6, @"%@ - phone call constraint changed (satisfied? %@)", v7, v8, v9, v10, v11, v12, self);

    v13 = [(SUInstallationConstraintMonitorBase *)self delegate];
    [v13 installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

@end