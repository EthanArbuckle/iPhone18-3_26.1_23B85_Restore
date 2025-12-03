@interface SBFluidSwitcherGesture
- (SBFluidSwitcherGesture)initWithType:(int64_t)type eventProvider:(id)provider;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)gestureEvent;
- (id)studyLogData;
- (id)succinctDescription;
- (void)gestureEvent;
@end

@implementation SBFluidSwitcherGesture

- (SBFluidSwitcherGesture)initWithType:(int64_t)type eventProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [SBFluidSwitcherGesture initWithType:a2 eventProvider:self];
  }

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherGesture;
  v8 = [(SBFluidSwitcherGesture *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = [providerCopy copy];
    eventProvider = v9->_eventProvider;
    v9->_eventProvider = v10;

    v9->_state = 1;
  }

  return v9;
}

- (id)gestureEvent
{
  v4 = (*(self->_eventProvider + 2))();
  if (!v4)
  {
    [(SBFluidSwitcherGesture *)a2 gestureEvent];
  }

  return v4;
}

- (id)studyLogData
{
  if (self->_gestureRecognizerForStudyLog)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_gestureRecognizerForStudyLog];
    [dictionary setObject:v4 forKeyedSubscript:@"address"];

    name = [(UIGestureRecognizer *)self->_gestureRecognizerForStudyLog name];
    v6 = name;
    if (name)
    {
      v7 = name;
    }

    else
    {
      v7 = &stru_283094718;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"name"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIGestureRecognizer state](self->_gestureRecognizerForStudyLog, "state")}];
    [dictionary setObject:v8 forKeyedSubscript:@"state"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFluidSwitcherGesture *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFluidSwitcherGesture *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFluidSwitcherGesture *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBFluidSwitcherGesture_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __64__SBFluidSwitcherGesture_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SBStringForFluidSwitcherGestureType(*(*(a1 + 40) + 40));
  [v1 appendString:v2 withName:@"type"];
}

- (void)initWithType:(uint64_t)a1 eventProvider:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherGesture.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"eventProvider"}];
}

- (void)gestureEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFluidSwitcherGesture.m" lineNumber:107 description:@"The event provider must return a gesture event."];
}

@end