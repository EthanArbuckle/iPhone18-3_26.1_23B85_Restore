@interface PXHUDTimeIntervalVisualization
+ (PXHUDTimeIntervalVisualization)visualizationWithTimeInterval:(id)interval;
- (void)setTimeInterval:(id)interval;
@end

@implementation PXHUDTimeIntervalVisualization

- (void)setTimeInterval:(id)interval
{
  intervalCopy = interval;
  timeInterval = self->_timeInterval;
  if (timeInterval != intervalCopy)
  {
    [(PXTimeInterval *)timeInterval removeStateTransitionHandler:self->_stateTransitionHandlerToken];
    objc_storeStrong(&self->_timeInterval, interval);
    objc_initWeak(&location, self);
    v7 = self->_timeInterval;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__PXHUDTimeIntervalVisualization_setTimeInterval___block_invoke;
    v13 = &unk_1E774B0F8;
    objc_copyWeak(&v14, &location);
    v8 = [(PXTimeInterval *)v7 addStateTransitionHandler:&v10];
    stateTransitionHandlerToken = self->_stateTransitionHandlerToken;
    self->_stateTransitionHandlerToken = v8;

    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __50__PXHUDTimeIntervalVisualization_setTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateVisualizationDidChange];
}

+ (PXHUDTimeIntervalVisualization)visualizationWithTimeInterval:(id)interval
{
  intervalCopy = interval;
  v4 = objc_alloc_init(PXHUDTimeIntervalVisualization);
  [(PXHUDTimeIntervalVisualization *)v4 setTimeInterval:intervalCopy];

  return v4;
}

@end