@interface SXWebContentLoadEvent
- (SXWebContentLoadEvent)initWithURL:(id)l;
@end

@implementation SXWebContentLoadEvent

- (SXWebContentLoadEvent)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SXWebContentLoadEvent;
  v5 = [(SXAnalyticsEvent *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

@end