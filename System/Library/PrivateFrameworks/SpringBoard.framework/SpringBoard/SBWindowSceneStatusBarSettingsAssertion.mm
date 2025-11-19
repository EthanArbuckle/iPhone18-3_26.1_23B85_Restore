@interface SBWindowSceneStatusBarSettingsAssertion
- (SBWindowSceneStatusBarAssertionManager)assertionManager;
- (SBWindowSceneStatusBarSettingsAssertion)init;
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 settings:(id)a4 atLevel:(unint64_t)a5 reason:(id)a6;
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 statusBarHidden:(BOOL)a4 atLevel:(unint64_t)a5 reason:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)acquireWithAnimationParameters:(id)a3;
- (void)dealloc;
- (void)invalidateWithAnimationParameters:(id)a3;
- (void)modifySettingsWithBlock:(id)a3 animationParameters:(id)a4;
@end

@implementation SBWindowSceneStatusBarSettingsAssertion

- (void)dealloc
{
  [(SBWindowSceneStatusBarSettingsAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBWindowSceneStatusBarSettingsAssertion;
  [(SBWindowSceneStatusBarSettingsAssertion *)&v3 dealloc];
}

- (SBWindowSceneStatusBarSettingsAssertion)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBWindowSceneStatusBarSettingsAssertion.m" lineNumber:30 description:@"use initWithSettings:..."];

  return 0;
}

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 settings:(id)a4 atLevel:(unint64_t)a5 reason:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SBWindowSceneStatusBarSettingsAssertion;
  v14 = [(SBWindowSceneStatusBarSettingsAssertion *)&v22 init];
  if (v14)
  {
    if (a5 >= 0xE)
    {
      [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
      if (v12)
      {
LABEL_4:
        if (v13)
        {
LABEL_5:
          v15 = [v12 copy];
          settings = v14->_settings;
          v14->_settings = v15;

          v14->_level = a5;
          v17 = [v13 copy];
          reason = v14->_reason;
          v14->_reason = v17;

          v19 = [MEMORY[0x277CBEAA8] date];
          timestamp = v14->_timestamp;
          v14->_timestamp = v19;

          objc_storeWeak(&v14->_assertionManager, v11);
          goto LABEL_6;
        }

LABEL_9:
        [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
        goto LABEL_5;
      }
    }

    else if (v12)
    {
      goto LABEL_4;
    }

    [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v14;
}

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)a3 statusBarHidden:(BOOL)a4 atLevel:(unint64_t)a5 reason:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v12 = objc_alloc_init(SBMutableStatusBarSettings);
  v13 = 1.0;
  if (v7)
  {
    v13 = 0.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [(SBMutableStatusBarSettings *)v12 setAlpha:v14];

  v15 = [(SBWindowSceneStatusBarSettingsAssertion *)self _initWithWindowSceneStatusBarAssertionManager:v11 settings:v12 atLevel:a5 reason:v10];
  return v15;
}

- (void)acquireWithAnimationParameters:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
  [WeakRetained _addStatusBarSettingsAssertion:self withAnimationParameters:v4];
}

- (void)modifySettingsWithBlock:(id)a3 animationParameters:(id)a4
{
  if (a3)
  {
    settings = self->_settings;
    v7 = a4;
    v8 = a3;
    v12 = [(SBStatusBarSettings *)settings mutableCopy];
    v8[2](v8, v12);

    v9 = [v12 copy];
    v10 = self->_settings;
    self->_settings = v9;

    WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
    [WeakRetained _modifiedStatusBarSettingsAssertion:self withAnimationParameters:v7];
  }
}

- (void)invalidateWithAnimationParameters:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
  [WeakRetained _removeStatusBarSettingsAssertion:self withAnimationParameters:v4];
}

- (id)succinctDescription
{
  v2 = [(SBWindowSceneStatusBarSettingsAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWindowSceneStatusBarSettingsAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowSceneStatusBarSettingsAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBWindowSceneStatusBarSettingsAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __81__SBWindowSceneStatusBarSettingsAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"settings"];
  v3 = *(a1 + 32);
  v4 = SBWindowSceneStatusBarSettingsLevelDescription(*(*(a1 + 40) + 16));
  v5 = [v3 appendObject:v4 withName:@"level"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"reason"];
}

- (SBWindowSceneStatusBarAssertionManager)assertionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionManager);

  return WeakRetained;
}

- (void)_initWithWindowSceneStatusBarAssertionManager:(uint64_t)a1 settings:(uint64_t)a2 atLevel:reason:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarSettingsAssertion.m" lineNumber:36 description:@"invalid status bar settings level"];
}

- (void)_initWithWindowSceneStatusBarAssertionManager:(uint64_t)a1 settings:(uint64_t)a2 atLevel:reason:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarSettingsAssertion.m" lineNumber:37 description:@"invalid status bar settings"];
}

- (void)_initWithWindowSceneStatusBarAssertionManager:(uint64_t)a1 settings:(uint64_t)a2 atLevel:reason:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarSettingsAssertion.m" lineNumber:38 description:@"invalid reason"];
}

@end