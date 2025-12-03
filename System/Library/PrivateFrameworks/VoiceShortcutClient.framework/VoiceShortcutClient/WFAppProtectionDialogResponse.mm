@interface WFAppProtectionDialogResponse
- (WFAppProtectionDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFAppProtectionDialogResponse)initWithCoder:(id)coder;
- (WFAppProtectionDialogResponse)initWithResponseCode:(unint64_t)code;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppProtectionDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAppProtectionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFAppProtectionDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v5.receiver, v5.super_class), @"requestResponseCode"}];
}

- (WFAppProtectionDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_requestResponseCode = [coderCopy decodeInt64ForKey:@"requestResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAppProtectionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFAppProtectionDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v5.receiver, v5.super_class), @"requestResponseCode"}];
}

- (WFAppProtectionDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_requestResponseCode = [coderCopy decodeIntegerForKey:@"requestResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, requestResponseCode: %lu>", v5, self, -[WFAppProtectionDialogResponse requestResponseCode](self, "requestResponseCode")];

  return v6;
}

- (WFAppProtectionDialogResponse)initWithResponseCode:(unint64_t)code
{
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:code == 0];
  v5 = v4;
  if (v4)
  {
    v4->_requestResponseCode = code;
    v6 = v4;
  }

  return v5;
}

@end