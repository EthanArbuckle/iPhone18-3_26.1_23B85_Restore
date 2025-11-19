@interface WFAppProtectionDialogResponse
- (WFAppProtectionDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFAppProtectionDialogResponse)initWithCoder:(id)a3;
- (WFAppProtectionDialogResponse)initWithResponseCode:(unint64_t)a3;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppProtectionDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAppProtectionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFAppProtectionDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v5.receiver, v5.super_class), @"requestResponseCode"}];
}

- (WFAppProtectionDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_requestResponseCode = [v4 decodeInt64ForKey:@"requestResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAppProtectionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFAppProtectionDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v5.receiver, v5.super_class), @"requestResponseCode"}];
}

- (WFAppProtectionDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_requestResponseCode = [v4 decodeIntegerForKey:@"requestResponseCode"];
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

- (WFAppProtectionDialogResponse)initWithResponseCode:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFAppProtectionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:a3 == 0];
  v5 = v4;
  if (v4)
  {
    v4->_requestResponseCode = a3;
    v6 = v4;
  }

  return v5;
}

@end