@interface HDSHBreathingDisturbanceAnalysisAnalyticsEvent
- (HDSHBreathingDisturbanceAnalysisAnalyticsEvent)initWithDefaultAnalyticsPayload:(id)payload;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDSHBreathingDisturbanceAnalysisAnalyticsEvent

- (HDSHBreathingDisturbanceAnalysisAnalyticsEvent)initWithDefaultAnalyticsPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = HDSHBreathingDisturbanceAnalysisAnalyticsEvent;
  v6 = [(HDSHBreathingDisturbanceAnalysisAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultAnalyticsPayload, payload);
  }

  return v7;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v7 = objc_alloc_init(v5);
  v8 = [(NSDictionary *)self->_defaultAnalyticsPayload objectForKeyedSubscript:@"bd_count"];
  [v7 setObject:v8 forKeyedSubscript:@"bd_count"];

  v9 = MEMORY[0x277CCABB0];
  environmentDataSource = [sourceCopy environmentDataSource];

  v11 = [v9 numberWithBool:{objc_msgSend(environmentDataSource, "isImproveHealthAndActivityEnabled")}];
  [v7 setObject:v11 forKeyedSubscript:@"is_improve_health_and_activity_allowed"];

  v12 = [v7 copy];

  return v12;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v7 = [[v5 alloc] initWithDictionary:self->_defaultAnalyticsPayload];
  v8 = MEMORY[0x277CCABB0];
  environmentDataSource = [sourceCopy environmentDataSource];

  v10 = [v8 numberWithBool:{objc_msgSend(environmentDataSource, "isImproveHealthAndActivityEnabled")}];
  [v7 setObject:v10 forKeyedSubscript:@"is_improve_health_and_activity_allowed"];

  v11 = [v7 copy];

  return v11;
}

@end