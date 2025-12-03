@interface ATXUIFeedbackMetrics
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUIFeedbackMetrics:(id)metrics;
- (double)engagementRate;
- (double)rejectionRate;
- (void)engagementRate;
- (void)rejectionRate;
@end

@implementation ATXUIFeedbackMetrics

- (double)engagementRate
{
  impressionCount = self->_impressionCount;
  engagementCount = self->_engagementCount;
  if (impressionCount)
  {
    return engagementCount / impressionCount;
  }

  v4 = 0.0;
  if (engagementCount)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXUIFeedbackMetrics *)v5 engagementRate];
    }
  }

  return v4;
}

- (double)rejectionRate
{
  impressionCount = self->_impressionCount;
  rejectionCount = self->_rejectionCount;
  if (impressionCount)
  {
    return rejectionCount / impressionCount;
  }

  v4 = 0.0;
  if (rejectionCount)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXUIFeedbackMetrics *)v5 rejectionRate];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackMetrics *)self isEqualToATXUIFeedbackMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = *&self->_impressionCount == *(metricsCopy + 8) && self->_rejectionCount == *(metricsCopy + 3);

  return v5;
}

- (void)engagementRate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[ATXUIFeedbackMetrics engagementRate]";
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "%s: _engagementCount != 0 while _impressionCount == 0.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)rejectionRate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[ATXUIFeedbackMetrics rejectionRate]";
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "%s: _rejectionCount != 0 while _impressionCount == 0.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end