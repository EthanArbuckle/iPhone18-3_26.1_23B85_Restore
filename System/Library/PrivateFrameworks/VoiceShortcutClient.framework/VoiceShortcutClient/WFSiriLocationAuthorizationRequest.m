@interface WFSiriLocationAuthorizationRequest
- (WFSiriLocationAuthorizationRequest)initWithCoder:(id)a3;
- (WFSiriLocationAuthorizationRequest)initWithNeedsPreciseLocation:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriLocationAuthorizationRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFSiriLocationAuthorizationRequest;
  v4 = a3;
  [(WFSiriActionRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[WFSiriLocationAuthorizationRequest needsPreciseLocation](self forKey:{"needsPreciseLocation", v5.receiver, v5.super_class), @"needsPreciseLocation"}];
}

- (WFSiriLocationAuthorizationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationRequest;
  v5 = [(WFSiriActionRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_needsPreciseLocation = [v4 decodeBoolForKey:@"needsPreciseLocation"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriLocationAuthorizationRequest)initWithNeedsPreciseLocation:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationRequest;
  v4 = [(WFSiriActionRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_needsPreciseLocation = a3;
    v6 = v4;
  }

  return v5;
}

@end