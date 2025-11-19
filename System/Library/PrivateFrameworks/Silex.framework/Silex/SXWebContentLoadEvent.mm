@interface SXWebContentLoadEvent
- (SXWebContentLoadEvent)initWithURL:(id)a3;
@end

@implementation SXWebContentLoadEvent

- (SXWebContentLoadEvent)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXWebContentLoadEvent;
  v5 = [(SXAnalyticsEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

@end