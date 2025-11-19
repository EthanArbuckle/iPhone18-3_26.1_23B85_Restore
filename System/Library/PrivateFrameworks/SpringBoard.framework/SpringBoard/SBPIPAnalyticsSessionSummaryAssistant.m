@interface SBPIPAnalyticsSessionSummaryAssistant
- (SBPIPAnalyticsSessionSummaryAssistant)initWithBundleIdentifier:(id)a3 contentType:(int64_t)a4 isAutoPIPEnabled:(BOOL)a5 invalidationBlock:(id)a6;
- (id)_generateMutableAnalyticsPayload;
- (void)invalidate;
- (void)noteBecameUnstashedAtTime:(double)a3;
@end

@implementation SBPIPAnalyticsSessionSummaryAssistant

- (SBPIPAnalyticsSessionSummaryAssistant)initWithBundleIdentifier:(id)a3 contentType:(int64_t)a4 isAutoPIPEnabled:(BOOL)a5 invalidationBlock:(id)a6
{
  v7.receiver = self;
  v7.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  result = [(SBPIPAnalyticsAssistant *)&v7 initWithBundleIdentifier:a3 contentType:a4 isAutoPIPEnabled:a5 invalidationBlock:a6];
  if (result)
  {
    result->_stashedTimestamp = NAN;
  }

  return result;
}

- (void)noteBecameUnstashedAtTime:(double)a3
{
  self->_stashedDuration = a3 - self->_stashedTimestamp + self->_stashedDuration;
  ++self->_numberOfStashEvents;
  self->_stashedTimestamp = NAN;
}

- (id)_generateMutableAnalyticsPayload
{
  v14.receiver = self;
  v14.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  v3 = [(SBPIPAnalyticsAssistant *)&v14 _generateMutableAnalyticsPayload];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_startedAutomatically];
  [v3 setObject:v4 forKeyedSubscript:@"StartedAutomatically"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_restoredFullScreen];
  [v3 setObject:v5 forKeyedSubscript:@"RestoredFullScreen"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_stashedDuration];
  [v3 setObject:v6 forKeyedSubscript:@"StashedDuration"];

  v7 = [v3 objectForKeyedSubscript:@"ActiveDuration"];
  [v3 setObject:v7 forKeyedSubscript:@"Duration"];
  [v7 doubleValue];
  v9 = v8 < 8.0 && self->_startedAutomatically;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  [v3 setObject:v10 forKeyedSubscript:@"CanceledQuicklyAfterAutoPIP"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfStashEvents];
  [v3 setObject:v11 forKeyedSubscript:@"NumberOfStashEvents"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_appStoppedSession];
  [v3 setObject:v12 forKeyedSubscript:@"AppStoppedSession"];

  return v3;
}

- (void)invalidate
{
  [(SBPIPAnalyticsSessionSummaryAssistant *)self noteBecameUnstashedAtTime:CFAbsoluteTimeGetCurrent()];
  v3.receiver = self;
  v3.super_class = SBPIPAnalyticsSessionSummaryAssistant;
  [(SBPIPAnalyticsAssistant *)&v3 invalidate];
}

@end