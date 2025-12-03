@interface SBFAuthenticationAssertion
- (BOOL)isValid;
- (SBFAuthenticationAssertion)initWithIdentifier:(id)identifier type:(int64_t)type withController:(id)controller;
- (SBFUserAuthenticationController)controller;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFAuthenticationAssertion

- (BOOL)isValid
{
  if (!self->_activated || self->_invalidated)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained _isAssertionValid:self];

  return v5;
}

- (void)activate
{
  if (!self->_activated && !self->_invalidated)
  {
    self->_activated = 1;
    date = [MEMORY[0x1E695DF00] date];
    activationDate = self->_activationDate;
    self->_activationDate = date;

    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained _addAuthenticationAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFAuthenticationAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"reason"];
  type = self->_type;
  if (type > 2)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E807F8C0[type];
  }

  [v3 appendString:v6 withName:@"type"];
  if (self->_activated)
  {
    v7 = [v3 appendBool:-[SBFAuthenticationAssertion isValid](self withName:{"isValid"), @"valid"}];
    if (self->_activationDate)
    {
      mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
      v9 = [mEMORY[0x1E698E670] formatDateAsLongYMDHMSZPosixLocaleWithDate:self->_activationDate];
      [v3 appendString:v9 withName:@"activationDate"];
    }
  }

  return v3;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_activated)
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      [WeakRetained _removeAuthenticationAssertion:self];
    }

    objc_storeWeak(&self->_controller, 0);
  }
}

- (SBFAuthenticationAssertion)initWithIdentifier:(id)identifier type:(int64_t)type withController:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  if (type)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBFAuthenticationAssertion initWithIdentifier:type:withController:];
    if (controllerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBFAuthenticationAssertion initWithIdentifier:type:withController:];
  if (!identifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (controllerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBFAuthenticationAssertion initWithIdentifier:type:withController:];
LABEL_4:
  v14.receiver = self;
  v14.super_class = SBFAuthenticationAssertion;
  v10 = [(SBFAuthenticationAssertion *)&v14 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_type = type;
    objc_storeWeak(&v10->_controller, controllerCopy);
  }

  return v10;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *(self + 24);
  if (v3 > 2)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E807F8C0[v3];
  }

  v6 = v4;
  v7 = *(self + 32);
  v8 = currentHandler;
  OUTLINED_FUNCTION_1_0();
  [v5 handleFailureInMethod:v6 object:v7 file:? lineNumber:? description:?];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFAuthenticationAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBFUserAuthenticationController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)initWithIdentifier:type:withController:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"type != SBFAuthenticationAssertionTypeUndefined" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:type:withController:.cold.2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:type:withController:.cold.3()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"controller != nil" object:? file:? lineNumber:? description:?];
}

@end