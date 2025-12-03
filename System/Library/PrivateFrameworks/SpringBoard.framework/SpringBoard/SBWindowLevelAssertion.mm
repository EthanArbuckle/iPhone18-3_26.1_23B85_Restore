@interface SBWindowLevelAssertion
- (SBWindowLevelAssertion)initWithPriority:(int64_t)priority windowLevel:(double)level reason:(id)reason invalidationHandler:(id)handler;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
@end

@implementation SBWindowLevelAssertion

- (SBWindowLevelAssertion)initWithPriority:(int64_t)priority windowLevel:(double)level reason:(id)reason invalidationHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SBWindowLevelAssertion;
  v12 = [(SBWindowLevelAssertion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_priority = priority;
    v12->_windowLevel = level;
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v16 = [handlerCopy copy];
    invalidationHandler = v13->_invalidationHandler;
    v13->_invalidationHandler = v16;
  }

  return v13;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWindowLevelAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_reason withName:@"reason"];
  v5 = [v3 appendFloat:@"windowLevel" withName:self->_windowLevel];
  v6 = [v3 appendInteger:self->_priority withName:@"priority"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWindowLevelAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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