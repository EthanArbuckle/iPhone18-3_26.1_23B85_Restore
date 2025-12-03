@interface SBFAuthenticationRequest
- (id)_initWithType:(unint64_t)type source:(int64_t)source passcode:(id)passcode skipSEKeepUserDataOperation:(BOOL)operation verifyOnly:(BOOL)only handler:(id)handler;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)publicDescription;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBFAuthenticationRequest

- (id)publicDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:self->_type withName:@"type"];
  v5 = [v3 appendInteger:self->_source withName:@"source"];
  v6 = MEMORY[0x1E698E680];
  v7 = MEMORY[0x1BFB4D9B0](self->_handler);
  v8 = [v6 builderWithObject:v7];
  build = [v8 build];
  [v3 appendString:build withName:@"handler"];

  v10 = [v3 appendBool:self->_passcode != 0 withName:@"hasPasscode"];
  build2 = [v3 build];

  return build2;
}

- (id)_initWithType:(unint64_t)type source:(int64_t)source passcode:(id)passcode skipSEKeepUserDataOperation:(BOOL)operation verifyOnly:(BOOL)only handler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = SBFAuthenticationRequest;
  v16 = [(SBFAuthenticationRequest *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_source = source;
    v18 = [passcodeCopy copy];
    passcode = v17->_passcode;
    v17->_passcode = v18;

    v20 = [handlerCopy copy];
    handler = v17->_handler;
    v17->_handler = v20;

    v17->_skipSEKeepUserDataOperation = operation;
    v17->_verifyOnly = only;
  }

  return v17;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFAuthenticationRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:self->_type withName:@"type"];
  v5 = [v3 appendInteger:self->_source withName:@"source"];
  v6 = MEMORY[0x1BFB4D9B0](self->_handler);
  v7 = [v3 appendObject:v6 withName:@"handler"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFAuthenticationRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end