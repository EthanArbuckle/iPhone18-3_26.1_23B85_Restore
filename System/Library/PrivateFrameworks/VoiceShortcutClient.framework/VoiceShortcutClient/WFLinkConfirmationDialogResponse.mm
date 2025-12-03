@interface WFLinkConfirmationDialogResponse
- (WFLinkConfirmationDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFLinkConfirmationDialogResponse)initWithCoder:(id)coder;
- (WFLinkConfirmationDialogResponse)initWithConfirmationResponseCode:(unint64_t)code value:(id)value;
- (WFLinkConfirmationDialogResponse)initWithRequestedOpenURL:(id)l;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkConfirmationDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkConfirmationDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFLinkConfirmationDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v6.receiver, v6.super_class), @"requestResponseCode"}];
  value = [(WFLinkConfirmationDialogResponse *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (WFLinkConfirmationDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_requestResponseCode = [coderCopy decodeInt64ForKey:@"requestResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFLinkConfirmationDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFLinkConfirmationDialogResponse requestResponseCode](self forKey:{"requestResponseCode", v6.receiver, v6.super_class), @"requestResponseCode"}];
  value = [(WFLinkConfirmationDialogResponse *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (WFLinkConfirmationDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFLinkConfirmationDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_requestResponseCode = [coderCopy decodeIntegerForKey:@"requestResponseCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
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

- (WFLinkConfirmationDialogResponse)initWithRequestedOpenURL:(id)l
{
  v7.receiver = self;
  v7.super_class = WFLinkConfirmationDialogResponse;
  v3 = [(WFLinkSnippetDialogResponse *)&v7 initWithRequestedOpenURL:l];
  v4 = v3;
  if (v3)
  {
    v3->_requestResponseCode = 2;
    v5 = v3;
  }

  return v4;
}

- (WFLinkConfirmationDialogResponse)initWithConfirmationResponseCode:(unint64_t)code value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = WFLinkConfirmationDialogResponse;
  v8 = [(WFLinkSnippetDialogResponse *)&v12 initWithCancelled:code == 0];
  v9 = v8;
  if (v8)
  {
    v8->_requestResponseCode = code;
    objc_storeStrong(&v8->_value, value);
    v10 = v9;
  }

  return v9;
}

@end