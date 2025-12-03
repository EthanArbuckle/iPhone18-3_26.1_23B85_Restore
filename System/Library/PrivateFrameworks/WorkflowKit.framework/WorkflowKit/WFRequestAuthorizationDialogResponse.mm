@interface WFRequestAuthorizationDialogResponse
- (WFRequestAuthorizationDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFRequestAuthorizationDialogResponse)initWithCoder:(id)coder;
- (WFRequestAuthorizationDialogResponse)initWithResponseCode:(int64_t)code;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRequestAuthorizationDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFRequestAuthorizationDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFRequestAuthorizationDialogResponse result](self forKey:{"result", v5.receiver, v5.super_class), @"result"}];
}

- (WFRequestAuthorizationDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFRequestAuthorizationDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_result = [coderCopy decodeInt64ForKey:@"result"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFRequestAuthorizationDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFRequestAuthorizationDialogResponse result](self forKey:{"result", v5.receiver, v5.super_class), @"result"}];
}

- (WFRequestAuthorizationDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFRequestAuthorizationDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_result = [coderCopy decodeIntegerForKey:@"result"];
    v6 = v5;
  }

  return v5;
}

- (WFRequestAuthorizationDialogResponse)initWithResponseCode:(int64_t)code
{
  v7.receiver = self;
  v7.super_class = WFRequestAuthorizationDialogResponse;
  v3 = [(WFDialogResponse *)&v7 initWithResponseCode:code];
  v4 = v3;
  if (v3)
  {
    v3->_result = 0;
    v5 = v3;
  }

  return v4;
}

@end