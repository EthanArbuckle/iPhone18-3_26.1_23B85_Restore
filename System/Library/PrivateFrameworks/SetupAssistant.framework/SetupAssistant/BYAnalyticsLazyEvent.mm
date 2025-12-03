@interface BYAnalyticsLazyEvent
- (id)description;
@end

@implementation BYAnalyticsLazyEvent

- (id)description
{
  payloadBlock = [(BYAnalyticsLazyEvent *)self payloadBlock];
  v4 = payloadBlock[2]();

  if ([(BYAnalyticsLazyEvent *)self persist])
  {
    v5 = @"persists";
  }

  else
  {
    v5 = @"does not persist";
  }

  v6 = MEMORY[0x1E696AEC0];
  name = [(BYAnalyticsLazyEvent *)self name];
  v8 = [v6 stringWithFormat:@"%@ %@ (%@)", name, v4, v5];

  return v8;
}

@end