@interface SBWindowSceneStatusBarSettingsAssertion
- (SBWindowSceneStatusBarAssertionManager)assertionManager;
- (SBWindowSceneStatusBarSettingsAssertion)init;
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager settings:(id)settings atLevel:(unint64_t)level reason:(id)reason;
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager statusBarHidden:(BOOL)hidden atLevel:(unint64_t)level reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)acquireWithAnimationParameters:(id)parameters;
- (void)dealloc;
- (void)invalidateWithAnimationParameters:(id)parameters;
- (void)modifySettingsWithBlock:(id)block animationParameters:(id)parameters;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWindowSceneStatusBarSettingsAssertion.m" lineNumber:30 description:@"use initWithSettings:..."];

  return 0;
}

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager settings:(id)settings atLevel:(unint64_t)level reason:(id)reason
{
  managerCopy = manager;
  settingsCopy = settings;
  reasonCopy = reason;
  v22.receiver = self;
  v22.super_class = SBWindowSceneStatusBarSettingsAssertion;
  v14 = [(SBWindowSceneStatusBarSettingsAssertion *)&v22 init];
  if (v14)
  {
    if (level >= 0xE)
    {
      [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
      if (settingsCopy)
      {
LABEL_4:
        if (reasonCopy)
        {
LABEL_5:
          v15 = [settingsCopy copy];
          settings = v14->_settings;
          v14->_settings = v15;

          v14->_level = level;
          v17 = [reasonCopy copy];
          reason = v14->_reason;
          v14->_reason = v17;

          date = [MEMORY[0x277CBEAA8] date];
          timestamp = v14->_timestamp;
          v14->_timestamp = date;

          objc_storeWeak(&v14->_assertionManager, managerCopy);
          goto LABEL_6;
        }

LABEL_9:
        [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
        goto LABEL_5;
      }
    }

    else if (settingsCopy)
    {
      goto LABEL_4;
    }

    [SBWindowSceneStatusBarSettingsAssertion _initWithWindowSceneStatusBarAssertionManager:a2 settings:v14 atLevel:? reason:?];
    if (reasonCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v14;
}

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager statusBarHidden:(BOOL)hidden atLevel:(unint64_t)level reason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  managerCopy = manager;
  v12 = objc_alloc_init(SBMutableStatusBarSettings);
  v13 = 1.0;
  if (hiddenCopy)
  {
    v13 = 0.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [(SBMutableStatusBarSettings *)v12 setAlpha:v14];

  v15 = [(SBWindowSceneStatusBarSettingsAssertion *)self _initWithWindowSceneStatusBarAssertionManager:managerCopy settings:v12 atLevel:level reason:reasonCopy];
  return v15;
}

- (void)acquireWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
  [WeakRetained _addStatusBarSettingsAssertion:self withAnimationParameters:parametersCopy];
}

- (void)modifySettingsWithBlock:(id)block animationParameters:(id)parameters
{
  if (block)
  {
    settings = self->_settings;
    parametersCopy = parameters;
    blockCopy = block;
    v12 = [(SBStatusBarSettings *)settings mutableCopy];
    blockCopy[2](blockCopy, v12);

    v9 = [v12 copy];
    v10 = self->_settings;
    self->_settings = v9;

    WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
    [WeakRetained _modifiedStatusBarSettingsAssertion:self withAnimationParameters:parametersCopy];
  }
}

- (void)invalidateWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  WeakRetained = objc_loadWeakRetained(&self->_assertionManager);
  [WeakRetained _removeStatusBarSettingsAssertion:self withAnimationParameters:parametersCopy];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarSettingsAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWindowSceneStatusBarSettingsAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarSettingsAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBWindowSceneStatusBarSettingsAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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