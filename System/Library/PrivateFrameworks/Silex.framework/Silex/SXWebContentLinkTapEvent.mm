@interface SXWebContentLinkTapEvent
- (SXWebContentLinkTapEvent)initWithIdentifier:(id)identifier destinationURL:(id)l;
@end

@implementation SXWebContentLinkTapEvent

- (SXWebContentLinkTapEvent)initWithIdentifier:(id)identifier destinationURL:(id)l
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SXWebContentLinkTapEvent;
  v7 = [(SXLinkTapEvent *)&v11 initWithDestinationURL:l analytics:0];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

@end