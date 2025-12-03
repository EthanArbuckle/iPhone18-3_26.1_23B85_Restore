@interface WFSiriLocationAuthorizationResponse
- (WFSiriLocationAuthorizationResponse)initWithCoder:(id)coder;
- (WFSiriLocationAuthorizationResponse)initWithDidAuthorize:(BOOL)authorize;
- (WFSiriLocationAuthorizationResponse)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriLocationAuthorizationResponse

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFSiriLocationAuthorizationResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFSiriLocationAuthorizationResponse didAuthorize](self forKey:{"didAuthorize", v5.receiver, v5.super_class), @"didAuthorize"}];
}

- (WFSiriLocationAuthorizationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationResponse;
  v5 = [(WFSiriActionResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_didAuthorize = [coderCopy decodeBoolForKey:@"didAuthorize"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriLocationAuthorizationResponse)initWithDidAuthorize:(BOOL)authorize
{
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationResponse;
  v4 = [(WFSiriActionResponse *)&v8 initWithError:0];
  v5 = v4;
  if (v4)
  {
    v4->_didAuthorize = authorize;
    v6 = v4;
  }

  return v5;
}

- (WFSiriLocationAuthorizationResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = WFSiriLocationAuthorizationResponse;
  v3 = [(WFSiriActionResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    v3->_didAuthorize = 0;
    v5 = v3;
  }

  return v4;
}

@end