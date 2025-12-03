@interface _PXStoryAnalyticsSessionInfo
- (_PXStoryAnalyticsSessionInfo)initWithEvent:(id)event;
@end

@implementation _PXStoryAnalyticsSessionInfo

- (_PXStoryAnalyticsSessionInfo)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = _PXStoryAnalyticsSessionInfo;
  v6 = [(_PXStoryAnalyticsSessionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startEvent, event);
  }

  return v7;
}

@end