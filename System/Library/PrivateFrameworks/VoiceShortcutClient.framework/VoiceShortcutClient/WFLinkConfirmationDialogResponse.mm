@interface WFLinkConfirmationDialogResponse
- (WFLinkConfirmationDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFLinkConfirmationDialogResponse)initWithCoder:(id)a3;
- (WFLinkConfirmationDialogResponse)initWithConfirmationResponseCode:(unint64_t)a3 value:(id)a4;
- (WFLinkConfirmationDialogResponse)initWithRequestedOpenURL:(id)a3;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkConfirmationDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkConfirmationDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFLinkConfirmationDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v6.receiver, v6.super_class), @"requestResponseCode"}];
  v5 = [(WFLinkConfirmationDialogResponse *)self value];
  [v4 encodeObject:v5 forKey:@"value"];
}

- (WFLinkConfirmationDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_requestResponseCode = [v4 decodeInt64ForKey:@"requestResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFLinkConfirmationDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFLinkConfirmationDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v6.receiver, v6.super_class), @"requestResponseCode"}];
  v5 = [(WFLinkConfirmationDialogResponse *)self value];
  [v4 encodeObject:v5 forKey:@"value"];
}

- (WFLinkConfirmationDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_requestResponseCode = [v4 decodeIntegerForKey:@"requestResponseCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, requestResponseCode: %lu>", v5, self, -[WFLinkConfirmationDialogResponse requestResponseCode](self, "requestResponseCode")];

  return v6;
}

- (WFLinkConfirmationDialogResponse)initWithRequestedOpenURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFLinkConfirmationDialogResponse;
  v3 = [(WFLinkSnippetDialogResponse *)&v7 initWithRequestedOpenURL:a3];
  v4 = v3;
  if (v3)
  {
    v3->_requestResponseCode = 2;
    v5 = v3;
  }

  return v4;
}

- (WFLinkConfirmationDialogResponse)initWithConfirmationResponseCode:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WFLinkConfirmationDialogResponse;
  v8 = [(WFLinkSnippetDialogResponse *)&v12 initWithCancelled:a3 == 0];
  v9 = v8;
  if (v8)
  {
    v8->_requestResponseCode = a3;
    objc_storeStrong(&v8->_value, a4);
    v10 = v9;
  }

  return v9;
}

@end