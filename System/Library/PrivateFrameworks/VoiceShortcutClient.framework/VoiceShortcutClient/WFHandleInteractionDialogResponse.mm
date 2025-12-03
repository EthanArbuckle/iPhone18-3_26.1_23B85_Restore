@interface WFHandleInteractionDialogResponse
- (NSString)description;
- (WFHandleInteractionDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFHandleInteractionDialogResponse)initWithCoder:(id)coder;
- (WFHandleInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)code;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHandleInteractionDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFHandleInteractionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFHandleInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFHandleInteractionDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFHandleInteractionDialogResponse;
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
  v5.super_class = WFHandleInteractionDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFHandleInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFHandleInteractionDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFHandleInteractionDialogResponse;
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
  v7 = @"ContinueInApp";
  if (!responseCode)
  {
    v7 = @"Dismissed";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, responseCode: %@>", v5, self, v7];

  return v8;
}

- (WFHandleInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)code
{
  v8.receiver = self;
  v8.super_class = WFHandleInteractionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:0];
  v5 = v4;
  if (v4)
  {
    v4->_interactionResponseCode = code;
    v6 = v4;
  }

  return v5;
}

@end