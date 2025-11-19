@interface _PXStoryAnalyticsSessionInfo
- (_PXStoryAnalyticsSessionInfo)initWithEvent:(id)a3;
@end

@implementation _PXStoryAnalyticsSessionInfo

- (_PXStoryAnalyticsSessionInfo)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXStoryAnalyticsSessionInfo;
  v6 = [(_PXStoryAnalyticsSessionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startEvent, a3);
  }

  return v7;
}

@end