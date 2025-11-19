@interface WFAssessmentModeManager
+ (BOOL)isAssessmentModeSupportedOnCurrentDevice;
- (BOOL)isInAssessmentMode;
- (BOOL)isObserving;
- (WFAssessmentModeManager)initWithQueue:(id)a3 delegate:(id)a4;
- (WFAssessmentModeManagerDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setIsObserving:(BOOL)a3;
- (void)startObservingForAssesmentModeChangesIfNeeded;
@end

@implementation WFAssessmentModeManager

+ (BOOL)isAssessmentModeSupportedOnCurrentDevice
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = ![v2 idiom] || objc_msgSend(v2, "idiom") == 1 || objc_msgSend(v2, "idiom") == 2;

  return v3;
}

- (WFAssessmentModeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsObserving:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isObservingLock);
  self->_isObserving = a3;

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
    v3 = [(WFAssessmentModeManager *)self assessmentGestalt];
    [v3 removeObserver:self forKeyPath:@"active" context:WFAssessmentModeActiveContext];
  }

  v4.receiver = self;
  v4.super_class = WFAssessmentModeManager;
  [(WFAssessmentModeManager *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(WFAssessmentModeManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WFAssessmentModeManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E837E2C0;
  v20 = v12;
  v21 = a6;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
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
    v3 = [(WFAssessmentModeManager *)self assessmentGestalt];
    [v3 addObserver:self forKeyPath:@"active" options:0 context:WFAssessmentModeActiveContext];

    [(WFAssessmentModeManager *)self setIsObserving:1];
  }
}

- (BOOL)isInAssessmentMode
{
  v2 = [(WFAssessmentModeManager *)self assessmentGestalt];
  v3 = [v2 isActive];

  return v3;
}

- (WFAssessmentModeManager)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFAssessmentModeManager;
  v9 = [(WFAssessmentModeManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [objc_alloc(MEMORY[0x1E6985E90]) initWithQueue:v7];
    assessmentGestalt = v10->_assessmentGestalt;
    v10->_assessmentGestalt = v11;

    objc_storeWeak(&v10->_delegate, v8);
    v10->_isObservingLock._os_unfair_lock_opaque = 0;
    v13 = v10;
  }

  return v10;
}

@end