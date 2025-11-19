@interface WFConfirmInteractionDialogResponse
- (NSString)description;
- (WFConfirmInteractionDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFConfirmInteractionDialogResponse)initWithCoder:(id)a3;
- (WFConfirmInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfirmInteractionDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFConfirmInteractionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFConfirmInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFConfirmInteractionDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_interactionResponseCode = [v4 decodeInt64ForKey:@"interactionResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFConfirmInteractionDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFConfirmInteractionDialogResponse interactionResponseCode](self forKey:{"interactionResponseCode", v5.receiver, v5.super_class), @"interactionResponseCode"}];
}

- (WFConfirmInteractionDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v5 = [(WFDialogResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_interactionResponseCode = [v4 decodeIntegerForKey:@"interactionResponseCode"];
    v6 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogResponse *)self responseCode];
  if ((v6 - 1) > 2)
  {
    v7 = @"Cancelled";
  }

  else
  {
    v7 = *(&off_1E7B01820 + v6 - 1);
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, responseCode: %@>", v5, self, v7];

  return v8;
}

- (WFConfirmInteractionDialogResponse)initWithInteractionResponseCode:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogResponse;
  v4 = [(WFDialogResponse *)&v8 initWithCancelled:a3 == 0];
  v5 = v4;
  if (v4)
  {
    v4->_interactionResponseCode = a3;
    v6 = v4;
  }

  return v5;
}

@end