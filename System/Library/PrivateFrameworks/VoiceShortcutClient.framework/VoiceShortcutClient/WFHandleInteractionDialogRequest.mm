@interface WFHandleInteractionDialogRequest
- (WFHandleInteractionDialogRequest)initWithCoder:(id)coder;
- (WFHandleInteractionDialogRequest)initWithInteraction:(id)interaction attribution:(id)attribution;
- (WFHandleInteractionDialogRequest)initWithInteraction:(id)interaction prompt:(id)prompt;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFHandleInteractionDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFHandleInteractionDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFHandleInteractionDialogRequest *)self interaction:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"interaction"];

  doneButton = [(WFHandleInteractionDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];
}

- (WFHandleInteractionDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFHandleInteractionDialogRequest;
  v5 = [(WFDialogRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v8;

    v10 = v5;
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
  interaction = [(WFHandleInteractionDialogRequest *)self interaction];
  doneButton = [(WFHandleInteractionDialogRequest *)self doneButton];
  v10 = [v3 stringWithFormat:@"<%@: %p, title: %@, interaction: %@, doneButton: %@>", v5, self, title, interaction, doneButton];

  return v10;
}

- (WFHandleInteractionDialogRequest)initWithInteraction:(id)interaction attribution:(id)attribution
{
  interactionCopy = interaction;
  v14.receiver = self;
  v14.super_class = WFHandleInteractionDialogRequest;
  v7 = [(WFDialogRequest *)&v14 initWithAttribution:attribution prompt:0];
  if (v7)
  {
    v8 = [interactionCopy copy];
    interaction = v7->_interaction;
    v7->_interaction = v8;

    v10 = +[WFDialogButton doneButton];
    doneButton = v7->_doneButton;
    v7->_doneButton = v10;

    v12 = v7;
  }

  return v7;
}

- (WFHandleInteractionDialogRequest)initWithInteraction:(id)interaction prompt:(id)prompt
{
  interactionCopy = interaction;
  promptCopy = prompt;
  intent = [interactionCopy intent];
  _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];

  v10 = [(WFDialogRequest *)self initWithAppBundleIdentifier:_intents_bundleIdForDisplay prompt:promptCopy];
  if (v10)
  {
    v11 = [interactionCopy copy];
    interaction = v10->_interaction;
    v10->_interaction = v11;

    v13 = +[WFDialogButton doneButton];
    doneButton = v10->_doneButton;
    v10->_doneButton = v13;

    v15 = v10;
  }

  return v10;
}

@end