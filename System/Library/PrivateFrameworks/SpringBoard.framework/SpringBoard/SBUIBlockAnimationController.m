@interface SBUIBlockAnimationController
- (SBUIBlockAnimationController)initWithWorkspaceTransitionRequest:(id)a3;
- (SBUIBlockAnimationController)initWithWorkspaceTransitionRequest:(id)a3 animationSettings:(id)a4 animationBlock:(id)a5;
- (void)_didComplete;
- (void)_startAnimation;
@end

@implementation SBUIBlockAnimationController

- (void)_startAnimation
{
  animationBlock = self->_animationBlock;
  if (animationBlock)
  {
    v4 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
    animationSettings = self->_animationSettings;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__SBUIBlockAnimationController__startAnimation__block_invoke;
    v9[3] = &unk_2783A9398;
    v9[4] = self;
    animationBlock[2](animationBlock, self, v4, animationSettings, v9);

    v6 = self->_animationBlock;
    self->_animationBlock = 0;
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Animation ran with a nil animation block", v8, 2u);
    }

    [(SBUIAnimationController *)self _noteAnimationDidFail];
  }
}

uint64_t __47__SBUIBlockAnimationController__startAnimation__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _noteAnimationDidFinish];
  }

  else
  {
    return [v2 _noteAnimationDidFail];
  }
}

- (void)_didComplete
{
  animationBlock = self->_animationBlock;
  self->_animationBlock = 0;

  v4.receiver = self;
  v4.super_class = SBUIBlockAnimationController;
  [(SBUIBlockAnimationController *)&v4 _didComplete];
}

- (SBUIBlockAnimationController)initWithWorkspaceTransitionRequest:(id)a3 animationSettings:(id)a4 animationBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [SBUIBlockAnimationController initWithWorkspaceTransitionRequest:a2 animationSettings:self animationBlock:?];
  }

  v17.receiver = self;
  v17.super_class = SBUIBlockAnimationController;
  v12 = [(SBUIWorkspaceAnimationController *)&v17 initWithWorkspaceTransitionRequest:v9];
  if (v12)
  {
    v13 = v10;
    if (!v10)
    {
      v13 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    }

    objc_storeStrong(&v12->_animationSettings, v13);
    if (!v10)
    {
    }

    v14 = [v11 copy];
    animationBlock = v12->_animationBlock;
    v12->_animationBlock = v14;
  }

  return v12;
}

- (SBUIBlockAnimationController)initWithWorkspaceTransitionRequest:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE648];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%s is not a valid initializer. You must call -[%@ initWithWorkspaceTransitionRequest:animationSettings:animationBlock:].", "-[SBUIBlockAnimationController initWithWorkspaceTransitionRequest:]", v7}];

  return [(SBUIBlockAnimationController *)self initWithWorkspaceTransitionRequest:0 animationSettings:0 animationBlock:0];
}

- (void)initWithWorkspaceTransitionRequest:(uint64_t)a1 animationSettings:(uint64_t)a2 animationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIBlockAnimationController.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"animationBlock"}];
}

@end