@interface SASActivationInstrumentation
- (SASActivationInstrumentation)initWithSender:(id)a3;
- (id)buttonDownWithIdentifier:(id)a3;
- (id)buttonTapWithIdentifier:(id)a3 associateWithButtonDown:(BOOL)a4;
- (id)buttonUpWithIdentifier:(id)a3;
@end

@implementation SASActivationInstrumentation

- (SASActivationInstrumentation)initWithSender:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SASActivationInstrumentation;
  v6 = [(SASActivationInstrumentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentationSender, a3);
  }

  return v7;
}

- (id)buttonDownWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(SASActivationInstrumentation *)self setActivationEventIdentifier:v6];

  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:1 buttonIdentifier:v5];

  return [(SASActivationInstrumentation *)self activationEventIdentifier];
}

- (id)buttonUpWithIdentifier:(id)a3
{
  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:2 buttonIdentifier:a3];

  return [(SASActivationInstrumentation *)self activationEventIdentifier];
}

- (id)buttonTapWithIdentifier:(id)a3 associateWithButtonDown:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [(SASActivationInstrumentation *)self setActivationEventIdentifier:v7];
  }

  [(SASActivationInstrumentation *)self _instrumentButtonInteractionType:3 buttonIdentifier:v6];
  v8 = [(SASActivationInstrumentation *)self activationEventIdentifier];

  return v8;
}

@end