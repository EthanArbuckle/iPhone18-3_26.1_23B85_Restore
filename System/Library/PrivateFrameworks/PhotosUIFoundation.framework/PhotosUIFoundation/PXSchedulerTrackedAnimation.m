@interface PXSchedulerTrackedAnimation
- (PXSchedulerTrackedAnimation)initWithScheduler:(id)a3 label:(id)a4;
- (void)dealloc;
@end

@implementation PXSchedulerTrackedAnimation

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__PXSchedulerTrackedAnimation_dealloc__block_invoke;
    v6[3] = &unk_1E7BB8880;
    v7 = WeakRetained;
    px_perform_on_main_runloop(2, v6);
  }

  v5.receiver = self;
  v5.super_class = PXSchedulerTrackedAnimation;
  [(PXSchedulerTrackedAnimation *)&v5 dealloc];
}

- (PXSchedulerTrackedAnimation)initWithScheduler:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXSchedulerTrackedAnimation;
  v8 = [(PXSchedulerTrackedAnimation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scheduler, v6);
    objc_storeStrong(&v9->_label, a4);
  }

  return v9;
}

@end