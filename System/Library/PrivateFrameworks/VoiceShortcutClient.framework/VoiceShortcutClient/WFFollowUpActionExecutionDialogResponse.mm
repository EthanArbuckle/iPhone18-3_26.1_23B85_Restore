@interface WFFollowUpActionExecutionDialogResponse
- (WFFollowUpActionExecutionDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFFollowUpActionExecutionDialogResponse)initWithCoder:(id)coder;
- (WFFollowUpActionExecutionDialogResponse)initWithshouldRunFollowUpAction:(BOOL)action;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFollowUpActionExecutionDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFFollowUpActionExecutionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeBool:-[WFFollowUpActionExecutionDialogResponse shouldRunFollowUpAction](self forKey:{"shouldRunFollowUpAction", v5.receiver, v5.super_class), @"shouldRunFollowUpAction"}];
}

- (WFFollowUpActionExecutionDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_shouldRunFollowUpAction = [coderCopy decodeBoolForKey:@"shouldRunFollowUpAction"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFFollowUpActionExecutionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[WFFollowUpActionExecutionDialogResponse shouldRunFollowUpAction](self forKey:{"shouldRunFollowUpAction", v5.receiver, v5.super_class), @"shouldRunFollowUpAction"}];
}

- (WFFollowUpActionExecutionDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldRunFollowUpAction = [coderCopy decodeBoolForKey:@"shouldRunFollowUpAction"];
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

- (WFFollowUpActionExecutionDialogResponse)initWithshouldRunFollowUpAction:(BOOL)action
{
  v8.receiver = self;
  v8.super_class = WFFollowUpActionExecutionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:0];
  v5 = v4;
  if (v4)
  {
    v4->_shouldRunFollowUpAction = action;
    v6 = v4;
  }

  return v5;
}

@end