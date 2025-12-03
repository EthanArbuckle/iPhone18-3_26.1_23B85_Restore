@interface WFConfirmInteractionDialogResponse
- (NSString)description;
- (WFConfirmInteractionDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFConfirmInteractionDialogResponse)initWithCoder:(id)coder;
- (WFConfirmInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)code;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfirmInteractionDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFConfirmInteractionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFConfirmInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFConfirmInteractionDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_interactionResponseCode = [coderCopy decodeInt64ForKey:@"interactionResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFConfirmInteractionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFConfirmInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFConfirmInteractionDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_interactionResponseCode = [coderCopy decodeIntegerForKey:@"interactionResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  responseCode = [(WFDialogResponse *)self responseCode];
  if ((responseCode - 1) > 2)
  {
    v7 = @"Cancelled";
  }

  else
  {
    v7 = *(&off_1E7B01820 + responseCode - 1);
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, responseCode: %@>", v5, self, v7];

  return v8;
}

- (WFConfirmInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)code
{
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:code == 0];
  v5 = v4;
  if (v4)
  {
    v4->_interactionResponseCode = code;
    v6 = v4;
  }

  return v5;
}

@end