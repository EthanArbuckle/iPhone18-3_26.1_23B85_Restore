@interface WFRequestAuthorizationDialogResponse
- (WFRequestAuthorizationDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFRequestAuthorizationDialogResponse)initWithCoder:(id)a3;
- (WFRequestAuthorizationDialogResponse)initWithResponseCode:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFRequestAuthorizationDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFRequestAuthorizationDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFRequestAuthorizationDialogResponse result](self forKey:{"result", v5.receiver, v5.super_class), @"result"}];
}

- (WFRequestAuthorizationDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFRequestAuthorizationDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_result = [v4 decodeInt64ForKey:@"result"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFRequestAuthorizationDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFRequestAuthorizationDialogResponse result](self forKey:{"result", v5.receiver, v5.super_class), @"result"}];
}

- (WFRequestAuthorizationDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFRequestAuthorizationDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_result = [v4 decodeIntegerForKey:@"result"];
    v6 = v5;
  }

  return v5;
}

- (WFRequestAuthorizationDialogResponse)initWithResponseCode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WFRequestAuthorizationDialogResponse;
  v3 = [(WFDialogResponse *)&v7 initWithResponseCode:a3];
  v4 = v3;
  if (v3)
  {
    v3->_result = 0;
    v5 = v3;
  }

  return v4;
}

@end