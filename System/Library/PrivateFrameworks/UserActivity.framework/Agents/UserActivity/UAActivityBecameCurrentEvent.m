@interface UAActivityBecameCurrentEvent
- (id)eventPayload;
- (id)reportedActivityType;
@end

@implementation UAActivityBecameCurrentEvent

- (id)eventPayload
{
  v11[0] = @"activityType";
  v3 = [(UAActivityBecameCurrentEvent *)self reportedActivityType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"-";
  }

  v11[1] = @"bundleIdentifier";
  v12[0] = v5;
  v6 = [(UAActivityBecameCurrentEvent *)self bundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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
  v3 = [(UAActivityBecameCurrentEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:v3];

  return v4;
}

@end