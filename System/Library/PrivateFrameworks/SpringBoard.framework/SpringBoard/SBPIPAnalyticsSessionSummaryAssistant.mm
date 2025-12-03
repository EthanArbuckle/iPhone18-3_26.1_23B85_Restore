@interface SBPIPAnalyticsSessionSummaryAssistant
- (SBPIPAnalyticsSessionSummaryAssistant)initWithBundleIdentifier:(id)identifier contentType:(int64_t)type isAutoPIPEnabled:(BOOL)enabled invalidationBlock:(id)block;
- (id)_generateMutableAnalyticsPayload;
- (void)invalidate;
- (void)noteBecameUnstashedAtTime:(double)time;
@end

@implementation SBPIPAnalyticsSessionSummaryAssistant

- (SBPIPAnalyticsSessionSummaryAssistant)initWithBundleIdentifier:(id)identifier contentType:(int64_t)type isAutoPIPEnabled:(BOOL)enabled invalidationBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  result = [(SBPIPAnalyticsAssistant *)&v7 initWithBundleIdentifier:identifier contentType:type isAutoPIPEnabled:enabled invalidationBlock:block];
  if (result)
  {
    result->_stashedTimestamp = NAN;
  }

  return result;
}

- (void)noteBecameUnstashedAtTime:(double)time
{
  self->_stashedDuration = time - self->_stashedTimestamp + self->_stashedDuration;
  ++self->_numberOfStashEvents;
  self->_stashedTimestamp = NAN;
}

- (id)_generateMutableAnalyticsPayload
{
  v14.receiver = self;
  v14.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  _generateMutableAnalyticsPayload = [(SBPIPAnalyticsAssistant *)&v14 _generateMutableAnalyticsPayload];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_startedAutomatically];
  [_generateMutableAnalyticsPayload setObject:v4 forKeyedSubscript:@"StartedAutomatically"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_restoredFullScreen];
  [_generateMutableAnalyticsPayload setObject:v5 forKeyedSubscript:@"RestoredFullScreen"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_stashedDuration];
  [_generateMutableAnalyticsPayload setObject:v6 forKeyedSubscript:@"StashedDuration"];

  v7 = [_generateMutableAnalyticsPayload objectForKeyedSubscript:@"ActiveDuration"];
  [_generateMutableAnalyticsPayload setObject:v7 forKeyedSubscript:@"Duration"];
  [v7 doubleValue];
  v9 = v8 < 8.0 && self->_startedAutomatically;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  [_generateMutableAnalyticsPayload setObject:v10 forKeyedSubscript:@"CanceledQuicklyAfterAutoPIP"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfStashEvents];
  [_generateMutableAnalyticsPayload setObject:v11 forKeyedSubscript:@"NumberOfStashEvents"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_appStoppedSession];
  [_generateMutableAnalyticsPayload setObject:v12 forKeyedSubscript:@"AppStoppedSession"];

  return _generateMutableAnalyticsPayload;
}

- (void)invalidate
{
  [(SBPIPAnalyticsSessionSummaryAssistant *)self noteBecameUnstashedAtTime:CFAbsoluteTimeGetCurrent()];
  v3.receiver = self;
  v3.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  [(SBPIPAnalyticsAssistant *)&v3 invalidate];
}

@end