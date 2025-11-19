@interface SBFloatingDockBehaviorAssertion
- (SBFloatingDockBehaviorAssertion)initWithFloatingDockController:(id)a3 visibleProgress:(double)a4 animated:(BOOL)a5 gesturePossible:(BOOL)a6 atLevel:(unint64_t)a7 reason:(id)a8 withCompletion:(id)a9;
- (SBFloatingDockController)floatingDockController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidateWithCompletion:(id)a3;
- (void)modifyProgress:(double)a3 interactive:(BOOL)a4 completion:(id)a5;
@end

@implementation SBFloatingDockBehaviorAssertion

- (SBFloatingDockBehaviorAssertion)initWithFloatingDockController:(id)a3 visibleProgress:(double)a4 animated:(BOOL)a5 gesturePossible:(BOOL)a6 atLevel:(unint64_t)a7 reason:(id)a8 withCompletion:(id)a9
{
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = SBFloatingDockBehaviorAssertion;
  v20 = [(SBFloatingDockBehaviorAssertion *)&v26 init];
  if (v20)
  {
    if (a7 >= 0xE)
    {
      [SBFloatingDockBehaviorAssertion initWithFloatingDockController:a2 visibleProgress:v20 animated:? gesturePossible:? atLevel:? reason:? withCompletion:?];
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else if (v18)
    {
LABEL_4:
      v20->_progress = a4;
      v20->_level = a7;
      v21 = [v18 copy];
      reason = v20->_reason;
      v20->_reason = v21;

      v23 = [MEMORY[0x277CBEAA8] date];
      timestamp = v20->_timestamp;
      v20->_timestamp = v23;

      v20->_gesturePossible = a6;
      objc_storeWeak(&v20->_floatingDockController, v17);
      v20->_animated = a5;
      [v17 _addFloatingDockBehaviorAssertion:v20 withCompletion:v19];
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

- (void)invalidateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockBehaviorAssertion *)self floatingDockController];
  [v5 _removeFloatingDockBehaviorAssertion:self withCompletion:v4];
}

- (void)modifyProgress:(double)a3 interactive:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v9 = a5;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_progress = a3;
    v8 = [(SBFloatingDockBehaviorAssertion *)self floatingDockController];
    [v8 _updateFloatingDockBehaviorAssertionsInteractive:v5 completion:v9];
  }
}

- (id)succinctDescription
{
  v2 = [(SBFloatingDockBehaviorAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFloatingDockBehaviorAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockBehaviorAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBFloatingDockBehaviorAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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