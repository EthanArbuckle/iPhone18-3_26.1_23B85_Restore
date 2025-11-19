@interface WFInputDateDialogResponse
- (NSString)description;
- (WFInputDateDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFInputDateDialogResponse)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFInputDateDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFInputDateDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFInputDateDialogResponse *)self inputtedDate:v6.receiver];
  [v4 encodeObject:v5 forKey:@"inputtedDate"];

  [v4 encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFInputDateDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFInputDateDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputtedDate"];
    inputtedDate = v5->_inputtedDate;
    v5->_inputtedDate = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFInputDateDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFInputDateDialogResponse *)self inputtedDate:v6.receiver];
  [v4 encodeObject:v5 forKey:@"inputtedDate"];
}

- (WFInputDateDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFInputDateDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputtedDate"];
    inputtedDate = v5->_inputtedDate;
    v5->_inputtedDate = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFInputDateDialogResponse *)self inputtedDate];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, inputtedDate: %@, cancelled: %@>", v5, self, v6, v7];

  return v8;
}

@end