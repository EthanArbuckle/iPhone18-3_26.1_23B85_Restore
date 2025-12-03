@interface UAActivityWasDiscoveredEvent
- (id)eventPayload;
- (id)reportedActivityType;
@end

@implementation UAActivityWasDiscoveredEvent

- (id)eventPayload
{
  v7 = @"activityType";
  reportedActivityType = [(UAActivityWasDiscoveredEvent *)self reportedActivityType];
  v3 = reportedActivityType;
  v4 = @"-";
  if (reportedActivityType)
  {
    v4 = reportedActivityType;
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (id)reportedActivityType
{
  activityType = [(UAActivityWasDiscoveredEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:activityType];

  return v4;
}

@end