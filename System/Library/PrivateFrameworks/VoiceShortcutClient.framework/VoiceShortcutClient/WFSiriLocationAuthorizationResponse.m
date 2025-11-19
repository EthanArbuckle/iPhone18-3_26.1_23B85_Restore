@interface WFSiriLocationAuthorizationResponse
- (WFSiriLocationAuthorizationResponse)initWithCoder:(id)a3;
- (WFSiriLocationAuthorizationResponse)initWithDidAuthorize:(BOOL)a3;
- (WFSiriLocationAuthorizationResponse)initWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriLocationAuthorizationResponse

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFSiriLocationAuthorizationResponse;
  v4 = a3;
  [(WFSiriActionResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[WFSiriLocationAuthorizationResponse didAuthorize](self forKey:{"didAuthorize", v5.receiver, v5.super_class), @"didAuthorize"}];
}

- (WFSiriLocationAuthorizationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationResponse;
  v5 = [(WFSiriActionResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_didAuthorize = [v4 decodeBoolForKey:@"didAuthorize"];
    v6 = v5;
  }

  return v5;
}

- (WFSiriLocationAuthorizationResponse)initWithDidAuthorize:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WFSiriLocationAuthorizationResponse;
  v4 = [(WFSiriActionResponse *)&v8 initWithError:0];
  v5 = v4;
  if (v4)
  {
    v4->_didAuthorize = a3;
    v6 = v4;
  }

  return v5;
}

- (WFSiriLocationAuthorizationResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFSiriLocationAuthorizationResponse;
  v3 = [(WFSiriActionResponse *)&v7 initWithError:a3];
  v4 = v3;
  if (v3)
  {
    v3->_didAuthorize = 0;
    v5 = v3;
  }

  return v4;
}

@end