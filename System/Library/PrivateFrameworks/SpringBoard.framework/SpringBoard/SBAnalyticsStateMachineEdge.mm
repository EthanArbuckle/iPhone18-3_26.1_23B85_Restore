@interface SBAnalyticsStateMachineEdge
+ (id)edgeFromState:(unint64_t)state toState:(unint64_t)toState uponEvent:(unint64_t)event;
+ (id)edgeFromState:(unint64_t)state transition:(id)transition;
- (SBAnalyticsStateMachineEdge)initWithFromState:(unint64_t)state transition:(id)transition;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBAnalyticsStateMachineEdge

+ (id)edgeFromState:(unint64_t)state toState:(unint64_t)toState uponEvent:(unint64_t)event
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SBAnalyticsStateMachineEdge_edgeFromState_toState_uponEvent___block_invoke;
  v7[3] = &__block_descriptor_40_e55_Q24__0Q8___SBFAnalyticsBackendEventContextProviding__16l;
  v7[4] = toState;
  v5 = [self edgeFromState:state transition:{v7, event}];

  return v5;
}

+ (id)edgeFromState:(unint64_t)state transition:(id)transition
{
  transitionCopy = transition;
  v6 = [[SBAnalyticsStateMachineEdge alloc] initWithFromState:state transition:transitionCopy];

  return v6;
}

- (SBAnalyticsStateMachineEdge)initWithFromState:(unint64_t)state transition:(id)transition
{
  transitionCopy = transition;
  v12.receiver = self;
  v12.super_class = SBAnalyticsStateMachineEdge;
  v7 = [(SBAnalyticsStateMachineEdge *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_fromState = state;
    v9 = [transitionCopy copy];
    transition = v8->_transition;
    v8->_transition = v9;
  }

  return v8;
}

- (unint64_t)handleEvent:(unint64_t)event withContext:(id)context
{
  v5 = (*(self->_transition + 2))();
  v6 = SBLogAnalytics();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SBAnalyticsStateMachineEdge *)self handleEvent:v5 withContext:v6];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAnalyticsStateMachineEdge *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBAnalyticsStateMachineEdge_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAnalyticsStateMachineEdge *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_fromState withName:@"fromState"];

  return v3;
}

- (void)handleEvent:(os_log_t)log withContext:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "edge transitioned from: %lu; to: %lu", &v4, 0x16u);
}

@end