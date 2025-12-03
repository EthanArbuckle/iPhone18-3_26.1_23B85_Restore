@interface WFConfirmInteractionDialogRequest
- (WFConfirmInteractionDialogRequest)initWithCoder:(id)coder;
- (WFConfirmInteractionDialogRequest)initWithInteraction:(id)interaction prompt:(id)prompt;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfirmInteractionDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFConfirmInteractionDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFConfirmInteractionDialogRequest *)self interaction:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"interaction"];

  confirmButton = [(WFConfirmInteractionDialogRequest *)self confirmButton];
  [coderCopy encodeObject:confirmButton forKey:@"confirmButton"];

  cancelButton = [(WFConfirmInteractionDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];
}

- (WFConfirmInteractionDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFConfirmInteractionDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmButton"];
    confirmButton = v5->_confirmButton;
    v5->_confirmButton = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
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
  attribution = [(WFDialogRequest *)self attribution];
  title = [attribution title];
  interaction = [(WFConfirmInteractionDialogRequest *)self interaction];
  confirmButton = [(WFConfirmInteractionDialogRequest *)self confirmButton];
  cancelButton = [(WFConfirmInteractionDialogRequest *)self cancelButton];
  v11 = [v3 stringWithFormat:@"<%@: %p, title: %@, interaction: %@, confirmButton: %@, cancelButton: %@>", v5, self, title, interaction, confirmButton, cancelButton];

  return v11;
}

- (WFConfirmInteractionDialogRequest)initWithInteraction:(id)interaction prompt:(id)prompt
{
  interactionCopy = interaction;
  promptCopy = prompt;
  intent = [interactionCopy intent];
  _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];

  v10 = [WFDialogAttribution attributionWithAppBundleIdentifier:_intents_bundleIdForDisplay];
  v22.receiver = self;
  v22.super_class = WFConfirmInteractionDialogRequest;
  v11 = [(WFDialogRequest *)&v22 initWithAttribution:v10 prompt:promptCopy];

  if (v11)
  {
    v12 = [interactionCopy copy];
    interaction = v11->_interaction;
    v11->_interaction = v12;

    intent2 = [interactionCopy intent];
    _categoryVerb = [intent2 _categoryVerb];
    v16 = [WFDialogButton defaultButtonWithTitle:_categoryVerb];
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