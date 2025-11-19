@interface WFHandleInteractionDialogRequest
- (WFHandleInteractionDialogRequest)initWithCoder:(id)a3;
- (WFHandleInteractionDialogRequest)initWithInteraction:(id)a3 attribution:(id)a4;
- (WFHandleInteractionDialogRequest)initWithInteraction:(id)a3 prompt:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHandleInteractionDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFHandleInteractionDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v7 encodeWithCoder:v4];
  v5 = [(WFHandleInteractionDialogRequest *)self interaction:v7.receiver];
  [v4 encodeObject:v5 forKey:@"interaction"];

  v6 = [(WFHandleInteractionDialogRequest *)self doneButton];
  [v4 encodeObject:v6 forKey:@"doneButton"];
}

- (WFHandleInteractionDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFHandleInteractionDialogRequest;
  v5 = [(WFDialogRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
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
  v6 = [(WFDialogRequest *)self attribution];
  v7 = [v6 title];
  v8 = [(WFHandleInteractionDialogRequest *)self interaction];
  v9 = [(WFHandleInteractionDialogRequest *)self doneButton];
  v10 = [v3 stringWithFormat:@"<%@: %p, title: %@, interaction: %@, doneButton: %@>", v5, self, v7, v8, v9];

  return v10;
}

- (WFHandleInteractionDialogRequest)initWithInteraction:(id)a3 attribution:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = WFHandleInteractionDialogRequest;
  v7 = [(WFDialogRequest *)&v14 initWithAttribution:a4 prompt:0];
  if (v7)
  {
    v8 = [v6 copy];
    interaction = v7->_interaction;
    v7->_interaction = v8;

    v10 = +[WFDialogButton doneButton];
    doneButton = v7->_doneButton;
    v7->_doneButton = v10;

    v12 = v7;
  }

  return v7;
}

- (WFHandleInteractionDialogRequest)initWithInteraction:(id)a3 prompt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 intent];
  v9 = [v8 _intents_bundleIdForDisplay];

  v10 = [(WFDialogRequest *)self initWithAppBundleIdentifier:v9 prompt:v7];
  if (v10)
  {
    v11 = [v6 copy];
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