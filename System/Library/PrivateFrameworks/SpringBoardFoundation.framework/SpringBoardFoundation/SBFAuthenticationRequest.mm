@interface SBFAuthenticationRequest
- (id)_initWithType:(unint64_t)a3 source:(int64_t)a4 passcode:(id)a5 skipSEKeepUserDataOperation:(BOOL)a6 verifyOnly:(BOOL)a7 handler:(id)a8;
- (id)descriptionWithMultilinePrefix:(id)a3;
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
  v9 = [v8 build];
  [v3 appendString:v9 withName:@"handler"];

  v10 = [v3 appendBool:self->_passcode != 0 withName:@"hasPasscode"];
  v11 = [v3 build];

  return v11;
}

- (id)_initWithType:(unint64_t)a3 source:(int64_t)a4 passcode:(id)a5 skipSEKeepUserDataOperation:(BOOL)a6 verifyOnly:(BOOL)a7 handler:(id)a8
{
  v14 = a5;
  v15 = a8;
  v23.receiver = self;
  v23.super_class = SBFAuthenticationRequest;
  v16 = [(SBFAuthenticationRequest *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    v16->_source = a4;
    v18 = [v14 copy];
    passcode = v17->_passcode;
    v17->_passcode = v18;

    v20 = [v15 copy];
    handler = v17->_handler;
    v17->_handler = v20;

    v17->_skipSEKeepUserDataOperation = a6;
    v17->_verifyOnly = a7;
  }

  return v17;
}

- (id)succinctDescription
{
  v2 = [(SBFAuthenticationRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFAuthenticationRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end