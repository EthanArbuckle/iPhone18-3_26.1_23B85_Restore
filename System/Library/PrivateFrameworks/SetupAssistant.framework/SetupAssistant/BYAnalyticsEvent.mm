@interface BYAnalyticsEvent
- (id)description;
@end

@implementation BYAnalyticsEvent

- (id)description
{
  if ([(BYAnalyticsEvent *)self persist])
  {
    v3 = @"persists";
  }

  else
  {
    v3 = @"does not persist";
  }

  v4 = MEMORY[0x1E696AEC0];
  name = [(BYAnalyticsEvent *)self name];
  payload = [(BYAnalyticsEvent *)self payload];
  v7 = [v4 stringWithFormat:@"%@ %@ (%@)", name, payload, v3];

  return v7;
}

@end