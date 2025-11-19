@interface WFSiriExecutionMetrics
- (WFSiriExecutionMetrics)init;
@end

@implementation WFSiriExecutionMetrics

- (WFSiriExecutionMetrics)init
{
  v6.receiver = self;
  v6.super_class = WFSiriExecutionMetrics;
  v2 = [(WFSiriExecutionMetrics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_siriInteractionCount = 0;
    v2->_shortcutActionCount = 0;
    v4 = v2;
  }

  return v3;
}

@end