@interface SXWebContentLinkTapEvent
- (SXWebContentLinkTapEvent)initWithIdentifier:(id)a3 destinationURL:(id)a4;
@end

@implementation SXWebContentLinkTapEvent

- (SXWebContentLinkTapEvent)initWithIdentifier:(id)a3 destinationURL:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SXWebContentLinkTapEvent;
  v7 = [(SXLinkTapEvent *)&v11 initWithDestinationURL:a4 analytics:0];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

@end