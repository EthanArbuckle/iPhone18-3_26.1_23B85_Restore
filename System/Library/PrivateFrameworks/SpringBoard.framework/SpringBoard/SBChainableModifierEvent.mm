@interface SBChainableModifierEvent
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)unhandledCopy;
- (void)handleWithReason:(id)reason;
@end

@implementation SBChainableModifierEvent

- (id)unhandledCopy
{
  v2 = [(SBChainableModifierEvent *)self copy];
  *(v2 + 8) = 0;
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  return v2;
}

- (void)handleWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (self->_handled)
  {
    [(SBChainableModifierEvent *)a2 handleWithReason:?];
  }

  self->_handled = 1;
  v6 = [reasonCopy copy];
  handledReason = self->_handledReason;
  self->_handledReason = v6;

  loggingCategory = [(SBChainableModifierEvent *)self loggingCategory];
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
  {
    v9 = [(SBChainableModifierEvent *)self description];
    v10 = self->_handledReason;
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, loggingCategory, OS_LOG_TYPE_INFO, "Handling event: %@ for reason: %@", &v11, 0x16u);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = self->_handled;
  v5 = [(NSString *)self->_handledReason copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBChainableModifierEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:self->_handled withName:@"handled" ifEqualTo:1];
  [v4 appendString:self->_handledReason withName:@"reason" skipIfEmpty:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBChainableModifierEvent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)handleWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBChainableModifierEvent.m" lineNumber:18 description:@"Can't handle an event that has already been handled."];
}

@end