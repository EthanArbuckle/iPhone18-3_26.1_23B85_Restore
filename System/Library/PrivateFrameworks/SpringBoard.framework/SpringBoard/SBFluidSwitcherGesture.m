@interface SBFluidSwitcherGesture
- (SBFluidSwitcherGesture)initWithType:(int64_t)a3 eventProvider:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)gestureEvent;
- (id)studyLogData;
- (id)succinctDescription;
- (void)gestureEvent;
@end

@implementation SBFluidSwitcherGesture

- (SBFluidSwitcherGesture)initWithType:(int64_t)a3 eventProvider:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [SBFluidSwitcherGesture initWithType:a2 eventProvider:self];
  }

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherGesture;
  v8 = [(SBFluidSwitcherGesture *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v10 = [v7 copy];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_gestureRecognizerForStudyLog];
    [v3 setObject:v4 forKeyedSubscript:@"address"];

    v5 = [(UIGestureRecognizer *)self->_gestureRecognizerForStudyLog name];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_283094718;
    }

    [v3 setObject:v7 forKeyedSubscript:@"name"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIGestureRecognizer state](self->_gestureRecognizerForStudyLog, "state")}];
    [v3 setObject:v8 forKeyedSubscript:@"state"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBFluidSwitcherGesture *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFluidSwitcherGesture *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGesture *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBFluidSwitcherGesture_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherGesture.m" lineNumber:107 description:@"The event provider must return a gesture event."];
}

@end