@interface BYAnalyticsLazyEvent
- (id)description;
@end

@implementation BYAnalyticsLazyEvent

- (id)description
{
  v3 = [(BYAnalyticsLazyEvent *)self payloadBlock];
  v4 = v3[2]();

  if ([(BYAnalyticsLazyEvent *)self persist])
  {
    v5 = @"persists";
  }

  else
  {
    v5 = @"does not persist";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(BYAnalyticsLazyEvent *)self name];
  v8 = [v6 stringWithFormat:@"%@ %@ (%@)", v7, v4, v5];

  return v8;
}

@end