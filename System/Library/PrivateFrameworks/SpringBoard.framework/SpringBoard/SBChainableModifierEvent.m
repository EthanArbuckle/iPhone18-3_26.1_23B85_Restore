@interface SBChainableModifierEvent
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)unhandledCopy;
- (void)handleWithReason:(id)a3;
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

- (void)handleWithReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_handled)
  {
    [(SBChainableModifierEvent *)a2 handleWithReason:?];
  }

  self->_handled = 1;
  v6 = [v5 copy];
  handledReason = self->_handledReason;
  self->_handledReason = v6;

  v8 = [(SBChainableModifierEvent *)self loggingCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(SBChainableModifierEvent *)self description];
    v10 = self->_handledReason;
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Handling event: %@ for reason: %@", &v11, 0x16u);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = self->_handled;
  v5 = [(NSString *)self->_handledReason copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBChainableModifierEvent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:self->_handled withName:@"handled" ifEqualTo:1];
  [v4 appendString:self->_handledReason withName:@"reason" skipIfEmpty:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBChainableModifierEvent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)handleWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBChainableModifierEvent.m" lineNumber:18 description:@"Can't handle an event that has already been handled."];
}

@end