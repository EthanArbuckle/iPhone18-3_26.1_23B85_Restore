@interface WFConfirmInteractionDialogRequest
- (WFConfirmInteractionDialogRequest)initWithCoder:(id)a3;
- (WFConfirmInteractionDialogRequest)initWithInteraction:(id)a3 prompt:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfirmInteractionDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFConfirmInteractionDialogRequest *)self interaction:v8.receiver];
  [v4 encodeObject:v5 forKey:@"interaction"];

  v6 = [(WFConfirmInteractionDialogRequest *)self confirmButton];
  [v4 encodeObject:v6 forKey:@"confirmButton"];

  v7 = [(WFConfirmInteractionDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];
}

- (WFConfirmInteractionDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFConfirmInteractionDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmButton"];
    confirmButton = v5->_confirmButton;
    v5->_confirmButton = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogRequest *)self attribution];
  v7 = [v6 title];
  v8 = [(WFConfirmInteractionDialogRequest *)self interaction];
  v9 = [(WFConfirmInteractionDialogRequest *)self confirmButton];
  v10 = [(WFConfirmInteractionDialogRequest *)self cancelButton];
  v11 = [v3 stringWithFormat:@"<%@: %p, title: %@, interaction: %@, confirmButton: %@, cancelButton: %@>", v5, self, v7, v8, v9, v10];

  return v11;
}

- (WFConfirmInteractionDialogRequest)initWithInteraction:(id)a3 prompt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 intent];
  v9 = [v8 _intents_bundleIdForDisplay];

  v10 = [WFDialogAttribution attributionWithAppBundleIdentifier:v9];
  v22.receiver = self;
  v22.super_class = WFConfirmInteractionDialogRequest;
  v11 = [(WFDialogRequest *)&v22 initWithAttribution:v10 prompt:v7];

  if (v11)
  {
    v12 = [v6 copy];
    interaction = v11->_interaction;
    v11->_interaction = v12;

    v14 = [v6 intent];
    v15 = [v14 _categoryVerb];
    v16 = [WFDialogButton defaultButtonWithTitle:v15];
    confirmButton = v11->_confirmButton;
    v11->_confirmButton = v16;

    v18 = +[WFDialogButton cancelButton];
    cancelButton = v11->_cancelButton;
    v11->_cancelButton = v18;

    v20 = v11;
  }

  return v11;
}

@end