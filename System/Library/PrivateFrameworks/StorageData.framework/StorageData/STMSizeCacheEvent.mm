@interface STMSizeCacheEvent
- (int64_t)eventIDCompare:(id)compare;
@end

@implementation STMSizeCacheEvent

- (int64_t)eventIDCompare:(id)compare
{
  compareCopy = compare;
  evtID = [compareCopy evtID];
  if (evtID <= [(STMSizeCacheEvent *)self evtID])
  {
    evtID2 = [compareCopy evtID];
    v6 = evtID2 < [(STMSizeCacheEvent *)self evtID];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

@end