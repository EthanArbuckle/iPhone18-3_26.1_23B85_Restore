@interface SXLinkTapEvent
- (SXLinkTapEvent)initWithDestinationURL:(id)l analytics:(id)analytics;
@end

@implementation SXLinkTapEvent

- (SXLinkTapEvent)initWithDestinationURL:(id)l analytics:(id)analytics
{
  lCopy = l;
  analyticsCopy = analytics;
  v12.receiver = self;
  v12.super_class = SXLinkTapEvent;
  v8 = [(SXAnalyticsEvent *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    destinationURL = v8->_destinationURL;
    v8->_destinationURL = v9;

    objc_storeStrong(&v8->_analytics, analytics);
  }

  return v8;
}

@end