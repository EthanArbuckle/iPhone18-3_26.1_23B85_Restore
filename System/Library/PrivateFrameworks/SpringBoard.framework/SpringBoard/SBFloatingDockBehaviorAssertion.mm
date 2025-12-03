@interface SBFloatingDockBehaviorAssertion
- (SBFloatingDockBehaviorAssertion)initWithFloatingDockController:(id)controller visibleProgress:(double)progress animated:(BOOL)animated gesturePossible:(BOOL)possible atLevel:(unint64_t)level reason:(id)reason withCompletion:(id)completion;
- (SBFloatingDockController)floatingDockController;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidateWithCompletion:(id)completion;
- (void)modifyProgress:(double)progress interactive:(BOOL)interactive completion:(id)completion;
@end

@implementation SBFloatingDockBehaviorAssertion

- (SBFloatingDockBehaviorAssertion)initWithFloatingDockController:(id)controller visibleProgress:(double)progress animated:(BOOL)animated gesturePossible:(BOOL)possible atLevel:(unint64_t)level reason:(id)reason withCompletion:(id)completion
{
  controllerCopy = controller;
  reasonCopy = reason;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = SBFloatingDockBehaviorAssertion;
  v20 = [(SBFloatingDockBehaviorAssertion *)&v26 init];
  if (v20)
  {
    if (level >= 0xE)
    {
      [SBFloatingDockBehaviorAssertion initWithFloatingDockController:a2 visibleProgress:v20 animated:? gesturePossible:? atLevel:? reason:? withCompletion:?];
      if (reasonCopy)
      {
        goto LABEL_4;
      }
    }

    else if (reasonCopy)
    {
LABEL_4:
      v20->_progress = progress;
      v20->_level = level;
      v21 = [reasonCopy copy];
      reason = v20->_reason;
      v20->_reason = v21;

      date = [MEMORY[0x277CBEAA8] date];
      timestamp = v20->_timestamp;
      v20->_timestamp = date;

      v20->_gesturePossible = possible;
      objc_storeWeak(&v20->_floatingDockController, controllerCopy);
      v20->_animated = animated;
      [controllerCopy _addFloatingDockBehaviorAssertion:v20 withCompletion:completionCopy];
      goto LABEL_5;
    }

    [SBFloatingDockBehaviorAssertion initWithFloatingDockController:a2 visibleProgress:v20 animated:? gesturePossible:? atLevel:? reason:? withCompletion:?];
    goto LABEL_4;
  }

LABEL_5:

  return v20;
}

- (void)dealloc
{
  [(SBFloatingDockBehaviorAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFloatingDockBehaviorAssertion;
  [(SBFloatingDockBehaviorAssertion *)&v3 dealloc];
}

- (void)invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  floatingDockController = [(SBFloatingDockBehaviorAssertion *)self floatingDockController];
  [floatingDockController _removeFloatingDockBehaviorAssertion:self withCompletion:completionCopy];
}

- (void)modifyProgress:(double)progress interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  completionCopy = completion;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_progress = progress;
    floatingDockController = [(SBFloatingDockBehaviorAssertion *)self floatingDockController];
    [floatingDockController _updateFloatingDockBehaviorAssertionsInteractive:interactiveCopy completion:completionCopy];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFloatingDockBehaviorAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFloatingDockBehaviorAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFloatingDockBehaviorAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBFloatingDockBehaviorAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __73__SBFloatingDockBehaviorAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:BSFloatIsOne() withName:@"pinned"];
  v3 = [*(a1 + 32) appendBool:BSFloatIsOne() withName:@"animated"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"gesture possible"];
  v5 = [*(a1 + 32) appendFloat:@"visible progress" withName:*(*(a1 + 40) + 24)];
  v6 = *(a1 + 32);
  v7 = SBFloatingDockBehaviorLevelDescription(*(*(a1 + 40) + 16));
  v8 = [v6 appendObject:v7 withName:@"level"];

  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"reason"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"timestamp"];
}

- (SBFloatingDockController)floatingDockController
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingDockController);

  return WeakRetained;
}

- (void)initWithFloatingDockController:(uint64_t)a1 visibleProgress:(uint64_t)a2 animated:gesturePossible:atLevel:reason:withCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFloatingDockBehaviorAssertion.m" lineNumber:26 description:@"invalid floating dock pinned level"];
}

- (void)initWithFloatingDockController:(uint64_t)a1 visibleProgress:(uint64_t)a2 animated:gesturePossible:atLevel:reason:withCompletion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFloatingDockBehaviorAssertion.m" lineNumber:27 description:@"invalid reason"];
}

@end