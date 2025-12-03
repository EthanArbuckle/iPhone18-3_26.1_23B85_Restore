@interface UAActivityWasSuggestedEvent
- (UAActivityWasSuggestedEvent)initWithAnalyticsInfo:(id)info;
- (id)eventPayload;
- (id)reportedActivityType;
- (void)sendEvent;
@end

@implementation UAActivityWasSuggestedEvent

- (UAActivityWasSuggestedEvent)initWithAnalyticsInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = UAActivityWasSuggestedEvent;
  v5 = [(UAActivityWasSuggestedEvent *)&v9 init];
  if (v5)
  {
    activityType = [infoCopy activityType];
    [(UAActivityWasSuggestedEvent *)v5 setActivityType:activityType];

    bundleIdentifier = [infoCopy bundleIdentifier];
    [(UAActivityWasSuggestedEvent *)v5 setBundleIdentifier:bundleIdentifier];
  }

  return v5;
}

- (id)eventPayload
{
  v11[0] = @"activityType";
  reportedActivityType = [(UAActivityWasSuggestedEvent *)self reportedActivityType];
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
  bundleIdentifier = [(UAActivityWasSuggestedEvent *)self bundleIdentifier];
  v7 = bundleIdentifier;
  v8 = @"?";
  if (bundleIdentifier)
  {
    v8 = bundleIdentifier;
  }

  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)sendEvent
{
  bundleIdentifier = [(UAActivityWasSuggestedEvent *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    v4.receiver = self;
    v4.super_class = UAActivityWasSuggestedEvent;
    [(UAAnalyticsEvent *)&v4 sendEvent];
  }
}

- (id)reportedActivityType
{
  activityType = [(UAActivityWasSuggestedEvent *)self activityType];
  v4 = [(UAAnalyticsEvent *)self firstPartyActivityTypeOrUnknown:activityType];

  return v4;
}

@end