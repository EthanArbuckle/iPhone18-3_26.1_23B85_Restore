@interface SASActivationInstrumentation
- (SASActivationInstrumentation)initWithSender:(id)sender;
- (id)buttonDownWithIdentifier:(id)identifier;
- (id)buttonTapWithIdentifier:(id)identifier associateWithButtonDown:(BOOL)down;
- (id)buttonUpWithIdentifier:(id)identifier;
@end

@implementation SASActivationInstrumentation

- (SASActivationInstrumentation)initWithSender:(id)sender
{
  senderCopy = sender;
  v9.receiver = self;
  v9.super_class = SASActivationInstrumentation;
  v6 = [(SASActivationInstrumentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentationSender, sender);
  }

  return v7;
}

- (id)buttonDownWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v4);
  [(SASActivationInstrumentation *)self setActivationEventIdentifier:v6];

  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:1 buttonIdentifier:identifierCopy];

  return [(SASActivationInstrumentation *)self activationEventIdentifier];
}

- (id)buttonUpWithIdentifier:(id)identifier
{
  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:2 buttonIdentifier:identifier];

  return [(SASActivationInstrumentation *)self activationEventIdentifier];
}

- (id)buttonTapWithIdentifier:(id)identifier associateWithButtonDown:(BOOL)down
{
  identifierCopy = identifier;
  if (!down)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [(SASActivationInstrumentation *)self setActivationEventIdentifier:v7];
  }

  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:3 buttonIdentifier:identifierCopy];
  activationEventIdentifier = [(SASActivationInstrumentation *)self activationEventIdentifier];

  return activationEventIdentifier;
}

@end