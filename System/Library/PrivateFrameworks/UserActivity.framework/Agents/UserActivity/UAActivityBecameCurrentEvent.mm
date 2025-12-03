@interface UAActivityBecameCurrentEvent
- (id)eventPayload;
- (id)reportedActivityType;
@end

@implementation UAActivityBecameCurrentEvent

- (id)eventPayload
{
  v11[0] = @"activityType";
  reportedActivityType = [(UAActivityBecameCurrentEvent *)self reportedActivityType];
  v4 = reportedActivityType;
  if (reportedActivityType)
  {
    v5 = reportedActivityType;
  }

  else
  {
    v5 = @"-";
  }

  v11[1] = @"bundleIdentifier";
  v12[0] = v5;
  bundleIdentifier = [(UAActivityBecameCurrentEvent *)self bundleIdentifier];
  v7 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v8 = bundleIdentifier;
  }

  else
  {
    v8 = @"-";
  }

  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (id)reportedActivityType
{
  activityType = [(UAActivityBecameCurrentEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:activityType];

  return v4;
}

@end