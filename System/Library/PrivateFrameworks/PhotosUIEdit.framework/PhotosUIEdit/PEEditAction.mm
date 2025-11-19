@interface PEEditAction
- (PEEditActionAnalyticsEventBuilderDelegate)analyticsEventBuilderDelegate;
@end

@implementation PEEditAction

- (PEEditActionAnalyticsEventBuilderDelegate)analyticsEventBuilderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsEventBuilderDelegate);

  return WeakRetained;
}

@end