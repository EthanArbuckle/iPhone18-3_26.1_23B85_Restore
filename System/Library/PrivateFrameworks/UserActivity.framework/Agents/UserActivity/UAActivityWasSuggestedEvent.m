@interface UAActivityWasSuggestedEvent
- (UAActivityWasSuggestedEvent)initWithAnalyticsInfo:(id)a3;
- (id)eventPayload;
- (id)reportedActivityType;
- (void)sendEvent;
@end

@implementation UAActivityWasSuggestedEvent

- (UAActivityWasSuggestedEvent)initWithAnalyticsInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UAActivityWasSuggestedEvent;
  v5 = [(UAActivityWasSuggestedEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 activityType];
    [(UAActivityWasSuggestedEvent *)v5 setActivityType:v6];

    v7 = [v4 bundleIdentifier];
    [(UAActivityWasSuggestedEvent *)v5 setBundleIdentifier:v7];
  }

  return v5;
}

- (id)eventPayload
{
  v11[0] = @"activityType";
  v3 = [(UAActivityWasSuggestedEvent *)self reportedActivityType];
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
  v6 = [(UAActivityWasSuggestedEvent *)self bundleIdentifier];
  v7 = v6;
  v8 = @"?";
  if (v6)
  {
    v8 = v6;
  }

  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)sendEvent
{
  v3 = [(UAActivityWasSuggestedEvent *)self bundleIdentifier];

  if (v3)
  {
    v4.receiver = self;
    v4.super_class = UAActivityWasSuggestedEvent;
    [(UAAnalyticsEvent *)&v4 sendEvent];
  }
}

- (id)reportedActivityType
{
  v3 = [(UAActivityWasSuggestedEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:v3];

  return v4;
}

@end