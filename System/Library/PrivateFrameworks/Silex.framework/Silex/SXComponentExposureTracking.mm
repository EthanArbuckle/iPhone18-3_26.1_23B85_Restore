@interface SXComponentExposureTracking
+ (id)exposureTrackingWithComponent:(id)component traits:(unint64_t)traits exposureStateChangeBlock:(id)block conditionBlock:(id)conditionBlock;
- (SXComponentExposureTracking)initWithComponent:(id)component traits:(unint64_t)traits exposureStateChangeBlock:(id)block conditionBlock:(id)conditionBlock;
- (SXComponentView)componentView;
- (void)calculateVisibilityFactor;
- (void)setLastObservedVisibilityState:(int64_t)state;
@end

@implementation SXComponentExposureTracking

+ (id)exposureTrackingWithComponent:(id)component traits:(unint64_t)traits exposureStateChangeBlock:(id)block conditionBlock:(id)conditionBlock
{
  conditionBlockCopy = conditionBlock;
  blockCopy = block;
  componentCopy = component;
  v12 = [[SXComponentExposureTracking alloc] initWithComponent:componentCopy traits:traits exposureStateChangeBlock:blockCopy conditionBlock:conditionBlockCopy];

  return v12;
}

- (SXComponentExposureTracking)initWithComponent:(id)component traits:(unint64_t)traits exposureStateChangeBlock:(id)block conditionBlock:(id)conditionBlock
{
  componentCopy = component;
  blockCopy = block;
  conditionBlockCopy = conditionBlock;
  v22.receiver = self;
  v22.super_class = SXComponentExposureTracking;
  v13 = [(SXComponentExposureTracking *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_componentView, componentCopy);
    v14->_traits = traits;
    v15 = [blockCopy copy];
    exposureStateChangeBlock = v14->_exposureStateChangeBlock;
    v14->_exposureStateChangeBlock = v15;

    v14->_lastObservedVisibilityState = 0;
    v17 = MEMORY[0x1DA716BE0](conditionBlockCopy);
    conditionBlock = v14->_conditionBlock;
    v14->_conditionBlock = v17;

    date = [MEMORY[0x1E695DF00] date];
    lastStateChange = v14->_lastStateChange;
    v14->_lastStateChange = date;
  }

  return v14;
}

- (void)setLastObservedVisibilityState:(int64_t)state
{
  self->_lastObservedVisibilityState = state;
  self->_lastStateChange = [MEMORY[0x1E695DF00] date];

  MEMORY[0x1EEE66BB8]();
}

- (void)calculateVisibilityFactor
{
  componentView = [(SXComponentExposureTracking *)self componentView];
  [componentView bounds];
  Height = CGRectGetHeight(v11);

  if (Height <= 0.0)
  {
    self->_visibilityFactor = 0.0;
  }

  else
  {
    [(SXComponentExposureTracking *)self maximumVisibleY];
    v6 = v5;
    [(SXComponentExposureTracking *)self minimumVisibleY];
    v8 = v6 - v7;
    componentView2 = [(SXComponentExposureTracking *)self componentView];
    [componentView2 bounds];
    self->_visibilityFactor = v8 / CGRectGetHeight(v12);
  }
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end