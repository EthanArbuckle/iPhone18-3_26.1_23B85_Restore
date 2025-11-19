@interface STMSizeCacheEvent
- (int64_t)eventIDCompare:(id)a3;
@end

@implementation STMSizeCacheEvent

- (int64_t)eventIDCompare:(id)a3
{
  v4 = a3;
  v5 = [v4 evtID];
  if (v5 <= [(STMSizeCacheEvent *)self evtID])
  {
    v7 = [v4 evtID];
    v6 = v7 < [(STMSizeCacheEvent *)self evtID];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

@end