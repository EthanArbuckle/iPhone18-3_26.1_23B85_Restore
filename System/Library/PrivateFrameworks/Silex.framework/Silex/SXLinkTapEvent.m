@interface SXLinkTapEvent
- (SXLinkTapEvent)initWithDestinationURL:(id)a3 analytics:(id)a4;
@end

@implementation SXLinkTapEvent

- (SXLinkTapEvent)initWithDestinationURL:(id)a3 analytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SXLinkTapEvent;
  v8 = [(SXAnalyticsEvent *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    destinationURL = v8->_destinationURL;
    v8->_destinationURL = v9;

    objc_storeStrong(&v8->_analytics, a4);
  }

  return v8;
}

@end