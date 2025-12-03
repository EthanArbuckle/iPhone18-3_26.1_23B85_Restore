@interface WFAssessmentModeManager
+ (BOOL)isAssessmentModeSupportedOnCurrentDevice;
- (BOOL)isInAssessmentMode;
- (BOOL)isObserving;
- (WFAssessmentModeManager)initWithQueue:(id)queue delegate:(id)delegate;
- (WFAssessmentModeManagerDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setIsObserving:(BOOL)observing;
- (void)startObservingForAssesmentModeChangesIfNeeded;
@end

@implementation WFAssessmentModeManager

+ (BOOL)isAssessmentModeSupportedOnCurrentDevice
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = ![currentDevice idiom] || objc_msgSend(currentDevice, "idiom") == 1 || objc_msgSend(currentDevice, "idiom") == 2;

  return v3;
}

- (WFAssessmentModeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsObserving:(BOOL)observing
{
  os_unfair_lock_lock(&self->_isObservingLock);
  self->_isObserving = observing;

  os_unfair_lock_unlock(&self->_isObservingLock);
}

- (BOOL)isObserving
{
  os_unfair_lock_lock(&self->_isObservingLock);
  isObserving = self->_isObserving;
  os_unfair_lock_unlock(&self->_isObservingLock);
  return isObserving;
}

- (void)dealloc
{
  if ([(WFAssessmentModeManager *)self isObserving])
  {
    assessmentGestalt = [(WFAssessmentModeManager *)self assessmentGestalt];
    [assessmentGestalt removeObserver:self forKeyPath:@"active" context:WFAssessmentModeActiveContext];
  }

  v4.receiver = self;
  v4.super_class = WFAssessmentModeManager;
  [(WFAssessmentModeManager *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = [(WFAssessmentModeManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WFAssessmentModeManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E837E2C0;
  v20 = changeCopy;
  contextCopy = context;
  block[4] = self;
  v18 = pathCopy;
  v19 = objectCopy;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, block);
}

void __74__WFAssessmentModeManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 == WFAssessmentModeActiveContext)
  {
    if ([v3 isInAssessmentMode])
    {
      v7 = [*(a1 + 32) delegate];
      [v7 assessmentModeManagerDidBecomeActive:*(a1 + 32)];
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8.receiver = v3;
    v8.super_class = WFAssessmentModeManager;
    objc_msgSendSuper2(&v8, sel_observeValueForKeyPath_ofObject_change_context_, v4, v5, v6);
  }
}

- (void)startObservingForAssesmentModeChangesIfNeeded
{
  if (![(WFAssessmentModeManager *)self isObserving])
  {
    assessmentGestalt = [(WFAssessmentModeManager *)self assessmentGestalt];
    [assessmentGestalt addObserver:self forKeyPath:@"active" options:0 context:WFAssessmentModeActiveContext];

    [(WFAssessmentModeManager *)self setIsObserving:1];
  }
}

- (BOOL)isInAssessmentMode
{
  assessmentGestalt = [(WFAssessmentModeManager *)self assessmentGestalt];
  isActive = [assessmentGestalt isActive];

  return isActive;
}

- (WFAssessmentModeManager)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = WFAssessmentModeManager;
  v9 = [(WFAssessmentModeManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [objc_alloc(MEMORY[0x1E6985E90]) initWithQueue:queueCopy];
    assessmentGestalt = v10->_assessmentGestalt;
    v10->_assessmentGestalt = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_isObservingLock._os_unfair_lock_opaque = 0;
    v13 = v10;
  }

  return v10;
}

@end