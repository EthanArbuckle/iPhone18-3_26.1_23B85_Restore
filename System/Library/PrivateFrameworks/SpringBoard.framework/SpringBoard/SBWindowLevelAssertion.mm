@interface SBWindowLevelAssertion
- (SBWindowLevelAssertion)initWithPriority:(int64_t)a3 windowLevel:(double)a4 reason:(id)a5 invalidationHandler:(id)a6;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
@end

@implementation SBWindowLevelAssertion

- (SBWindowLevelAssertion)initWithPriority:(int64_t)a3 windowLevel:(double)a4 reason:(id)a5 invalidationHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = SBWindowLevelAssertion;
  v12 = [(SBWindowLevelAssertion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_priority = a3;
    v12->_windowLevel = a4;
    v14 = [v10 copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v16 = [v11 copy];
    invalidationHandler = v13->_invalidationHandler;
    v13->_invalidationHandler = v16;
  }

  return v13;
}

- (id)succinctDescription
{
  v2 = [(SBWindowLevelAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_reason withName:@"reason"];
  v5 = [v3 appendFloat:@"windowLevel" withName:self->_windowLevel];
  v6 = [v3 appendInteger:self->_priority withName:@"priority"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWindowLevelAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)invalidate
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v5 = [invalidationHandler copy];
    v4 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v5[2](v5, self);
  }
}

@end