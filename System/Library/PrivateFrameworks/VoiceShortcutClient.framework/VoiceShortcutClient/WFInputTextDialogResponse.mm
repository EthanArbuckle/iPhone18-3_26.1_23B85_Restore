@interface WFInputTextDialogResponse
- (WFInputTextDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFInputTextDialogResponse)initWithCoder:(id)coder;
- (WFInputTextDialogResponse)initWithResponseCode:(int64_t)code;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFInputTextDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFInputTextDialogResponse *)self inputtedText:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputtedText"];

  [coderCopy encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFInputTextDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFInputTextDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputtedText"];
    inputtedText = v5->_inputtedText;
    v5->_inputtedText = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFInputTextDialogResponse *)self inputtedText:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputtedText"];
}

- (WFInputTextDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFInputTextDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputtedText"];
    inputtedText = v5->_inputtedText;
    v5->_inputtedText = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inputtedText = [(WFInputTextDialogResponse *)self inputtedText];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, inputtedText: %@, cancelled: %@>", v5, self, inputtedText, v7];

  return v8;
}

- (WFInputTextDialogResponse)initWithResponseCode:(int64_t)code
{
  v4.receiver = self;
  v4.super_class = WFInputTextDialogResponse;
  return [(WFDialogResponse *)&v4 initWithResponseCode:code];
}

@end