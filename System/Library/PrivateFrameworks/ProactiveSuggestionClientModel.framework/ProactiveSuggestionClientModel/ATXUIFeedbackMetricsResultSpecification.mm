@interface ATXUIFeedbackMetricsResultSpecification
- (ATXUIFeedbackMetricsResultSpecification)init;
@end

@implementation ATXUIFeedbackMetricsResultSpecification

- (ATXUIFeedbackMetricsResultSpecification)init
{
  v3.receiver = self;
  v3.super_class = ATXUIFeedbackMetricsResultSpecification;
  result = [(ATXUIFeedbackMetricsResultSpecification *)&v3 init];
  if (result)
  {
    result->_trendPlotGranularity = 2;
  }

  return result;
}

@end