@interface WFFollowUpActionExecutionDialogResponse
- (WFFollowUpActionExecutionDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFFollowUpActionExecutionDialogResponse)initWithCoder:(id)a3;
- (WFFollowUpActionExecutionDialogResponse)initWithshouldRunFollowUpAction:(BOOL)a3;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFollowUpActionExecutionDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFFollowUpActionExecutionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeBool:-[WFFollowUpActionExecutionDialogResponse shouldRunFollowUpAction](self forKey:{"shouldRunFollowUpAction", v5.receiver, v5.super_class), @"shouldRunFollowUpAction"}];
}

- (WFFollowUpActionExecutionDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_shouldRunFollowUpAction = [v4 decodeBoolForKey:@"shouldRunFollowUpAction"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFFollowUpActionExecutionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[WFFollowUpActionExecutionDialogResponse shouldRunFollowUpAction](self forKey:{"shouldRunFollowUpAction", v5.receiver, v5.super_class), @"shouldRunFollowUpAction"}];
}

- (WFFollowUpActionExecutionDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldRunFollowUpAction = [v4 decodeBoolForKey:@"shouldRunFollowUpAction"];
    v6 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, shouldRunFollowUpAction: %d>", v5, self, -[WFFollowUpActionExecutionDialogResponse shouldRunFollowUpAction](self, "shouldRunFollowUpAction")];

  return v6;
}

- (WFFollowUpActionExecutionDialogResponse)initWithshouldRunFollowUpAction:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:0];
  v5 = v4;
  if (v4)
  {
    v4->_shouldRunFollowUpAction = a3;
    v6 = v4;
  }

  return v5;
}

@end