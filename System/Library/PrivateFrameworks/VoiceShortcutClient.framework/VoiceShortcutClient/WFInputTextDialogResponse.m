@interface WFInputTextDialogResponse
- (WFInputTextDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFInputTextDialogResponse)initWithCoder:(id)a3;
- (WFInputTextDialogResponse)initWithResponseCode:(int64_t)a3;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFInputTextDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFInputTextDialogResponse *)self inputtedText:v6.receiver];
  [v4 encodeObject:v5 forKey:@"inputtedText"];

  [v4 encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFInputTextDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFInputTextDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputtedText"];
    inputtedText = v5->_inputtedText;
    v5->_inputtedText = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFInputTextDialogResponse *)self inputtedText:v6.receiver];
  [v4 encodeObject:v5 forKey:@"inputtedText"];
}

- (WFInputTextDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFInputTextDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputtedText"];
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
  v6 = [(WFInputTextDialogResponse *)self inputtedText];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, inputtedText: %@, cancelled: %@>", v5, self, v6, v7];

  return v8;
}

- (WFInputTextDialogResponse)initWithResponseCode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = WFInputTextDialogResponse;
  return [(WFDialogResponse *)&v4 initWithResponseCode:a3];
}

@end