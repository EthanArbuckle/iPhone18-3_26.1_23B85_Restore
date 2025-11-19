@interface SXComponentExposureTracking
+ (id)exposureTrackingWithComponent:(id)a3 traits:(unint64_t)a4 exposureStateChangeBlock:(id)a5 conditionBlock:(id)a6;
- (SXComponentExposureTracking)initWithComponent:(id)a3 traits:(unint64_t)a4 exposureStateChangeBlock:(id)a5 conditionBlock:(id)a6;
- (SXComponentView)componentView;
- (void)calculateVisibilityFactor;
- (void)setLastObservedVisibilityState:(int64_t)a3;
@end

@implementation SXComponentExposureTracking

+ (id)exposureTrackingWithComponent:(id)a3 traits:(unint64_t)a4 exposureStateChangeBlock:(id)a5 conditionBlock:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[SXComponentExposureTracking alloc] initWithComponent:v11 traits:a4 exposureStateChangeBlock:v10 conditionBlock:v9];

  return v12;
}

- (SXComponentExposureTracking)initWithComponent:(id)a3 traits:(unint64_t)a4 exposureStateChangeBlock:(id)a5 conditionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = SXComponentExposureTracking;
  v13 = [(SXComponentExposureTracking *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_componentView, v10);
    v14->_traits = a4;
    v15 = [v11 copy];
    exposureStateChangeBlock = v14->_exposureStateChangeBlock;
    v14->_exposureStateChangeBlock = v15;

    v14->_lastObservedVisibilityState = 0;
    v17 = MEMORY[0x1DA716BE0](v12);
    conditionBlock = v14->_conditionBlock;
    v14->_conditionBlock = v17;

    v19 = [MEMORY[0x1E695DF00] date];
    lastStateChange = v14->_lastStateChange;
    v14->_lastStateChange = v19;
  }

  return v14;
}

- (void)setLastObservedVisibilityState:(int64_t)a3
{
  self->_lastObservedVisibilityState = a3;
  self->_lastStateChange = [MEMORY[0x1E695DF00] date];

  MEMORY[0x1EEE66BB8]();
}

- (void)calculateVisibilityFactor
{
  v3 = [(SXComponentExposureTracking *)self componentView];
  [v3 bounds];
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
    v9 = [(SXComponentExposureTracking *)self componentView];
    [v9 bounds];
    self->_visibilityFactor = v8 / CGRectGetHeight(v12);
  }
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

@end