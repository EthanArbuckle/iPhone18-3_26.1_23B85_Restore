@interface SBPIPAnalyticsSourceSummaryAssistant
- (SBPIPAnalyticsSourceSummaryAssistant)initWithBundleIdentifier:(id)identifier contentType:(int64_t)type isAutoPIPEnabled:(BOOL)enabled invalidationBlock:(id)block;
- (id)_generateMutableAnalyticsPayload;
- (void)invalidate;
- (void)noteBecameActiveAtTime:(double)time;
@end

@implementation SBPIPAnalyticsSourceSummaryAssistant

- (SBPIPAnalyticsSourceSummaryAssistant)initWithBundleIdentifier:(id)identifier contentType:(int64_t)type isAutoPIPEnabled:(BOOL)enabled invalidationBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = SBPIPAnalyticsSourceSummaryAssistant;
  result = [(SBPIPAnalyticsAssistant *)&v7 initWithBundleIdentifier:identifier contentType:type isAutoPIPEnabled:enabled invalidationBlock:block];
  if (result)
  {
    result->_possibleTimestamp = NAN;
  }

  return result;
}

- (void)noteBecameActiveAtTime:(double)time
{
  self->_PIPBecameActive = 1;
  v3.receiver = self;
  v3.super_class = SBPIPAnalyticsSourceSummaryAssistant;
  [(SBPIPAnalyticsAssistant *)&v3 noteBecameActiveAtTime:time];
}

- (id)_generateMutableAnalyticsPayload
{
  v7.receiver = self;
  v7.super_class = SBPIPAnalyticsSourceSummaryAssistant;
  _generateMutableAnalyticsPayload = [(SBPIPAnalyticsAssistant *)&v7 _generateMutableAnalyticsPayload];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_PIPBecameActive];
  [_generateMutableAnalyticsPayload setObject:v4 forKeyedSubscript:@"PIPBecameActive"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_possibleDuration];
  [_generateMutableAnalyticsPayload setObject:v5 forKeyedSubscript:@"PossibleOrActiveDuration"];

  return _generateMutableAnalyticsPayload;
}

- (void)invalidate
{
  [(SBPIPAnalyticsSourceSummaryAssistant *)self notePIPBecameProhibitedAtTime:CFAbsoluteTimeGetCurrent()];
  v3.receiver = self;
  v3.super_class = SBPIPAnalyticsSourceSummaryAssistant;
  [(SBPIPAnalyticsAssistant *)&v3 invalidate];
}

@end