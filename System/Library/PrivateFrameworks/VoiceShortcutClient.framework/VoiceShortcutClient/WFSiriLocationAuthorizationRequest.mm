@interface WFSiriLocationAuthorizationRequest
- (WFSiriLocationAuthorizationRequest)initWithCoder:(id)coder;
- (WFSiriLocationAuthorizationRequest)initWithNeedsPreciseLocation:(BOOL)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriLocationAuthorizationRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFSiriLocationAuthorizationRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFSiriLocationAuthorizationRequest needsPreciseLocation](self forKey:{"needsPreciseLocation", v5.receiver, v5.super_class), @"needsPreciseLocation"}];
}

- (WFSiriLocationAuthorizationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationRequest;
  v5 = [(WFSiriActionRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_needsPreciseLocation = [coderCopy decodeBoolForKey:@"needsPreciseLocation"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriLocationAuthorizationRequest)initWithNeedsPreciseLocation:(BOOL)location
{
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationRequest;
  v4 = [(WFSiriActionRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_needsPreciseLocation = location;
    v6 = v4;
  }

  return v5;
}

@end