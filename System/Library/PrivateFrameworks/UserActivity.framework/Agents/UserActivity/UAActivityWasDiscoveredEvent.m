@interface UAActivityWasDiscoveredEvent
- (id)eventPayload;
- (id)reportedActivityType;
@end

@implementation UAActivityWasDiscoveredEvent

- (id)eventPayload
{
  v7 = @"activityType";
  v2 = [(UAActivityWasDiscoveredEvent *)self reportedActivityType];
  v3 = v2;
  v4 = @"-";
  if (v2)
  {
    v4 = v2;
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (id)reportedActivityType
{
  v3 = [(UAActivityWasDiscoveredEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:v3];

  return v4;
}

@end