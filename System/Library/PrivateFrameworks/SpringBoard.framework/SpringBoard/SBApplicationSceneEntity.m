@interface SBApplicationSceneEntity
- (BOOL)isEqual:(id)a3;
- (Class)viewControllerClass;
- (id)_initWithSceneHandle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)entityGenerator;
- (int64_t)flagForProcessSetting:(int64_t)a3;
- (unint64_t)hash;
- (void)_initializeWithSceneHandle:(id)a3;
- (void)addActions:(id)a3;
- (void)applyProcessSettings:(id)a3;
- (void)removeActions:(id)a3;
- (void)setFlag:(int64_t)a3 forProcessSetting:(int64_t)a4;
- (void)setObject:(id)a3 forProcessSetting:(int64_t)a4;
- (void)translateActivationSettingsToActions;
@end

@implementation SBApplicationSceneEntity

- (unint64_t)hash
{
  v2 = [(SBApplicationSceneEntity *)self sceneHandle];
  v3 = [v2 hash];

  return v3;
}

- (void)translateActivationSettingsToActions
{
  v3 = [(SBWorkspaceEntity *)self objectForActivationSetting:5];
  v4 = [(SBApplicationSceneEntity *)self actions];
  v5 = [v4 copy];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBApplicationSceneEntity_Actions__translateActivationSettingsToActions__block_invoke;
  v9[3] = &unk_2783ADC90;
  v9[4] = self;
  v6 = v3;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];
  if (v6 && (v13[3] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v6];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [(SBApplicationSceneEntity *)self addActions:v8];
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (id)entityGenerator
{
  v3 = self->_sceneHandle;
  v4 = objc_opt_class();
  v5 = [(SBApplicationSceneEntity *)self isFrozen];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__SBApplicationSceneEntity_entityGenerator__block_invoke;
  v10[3] = &unk_2783C2108;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v6 = v3;
  v7 = MEMORY[0x223D6F7F0](v10);
  v8 = MEMORY[0x223D6F7F0]();

  return v8;
}

id __43__SBApplicationSceneEntity_entityGenerator__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 40)) _initWithSceneHandle:*(a1 + 32)];
  [v2 setFrozen:*(a1 + 48)];

  return v2;
}

void __73__SBApplicationSceneEntity_Actions__translateActivationSettingsToActions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 UIActionType] == 6)
  {
    [*(a1 + 32) setFlag:1 forActivationSetting:41];
  }

  if (*(a1 + 40) && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 url];
      *(*(*(a1 + 48) + 8) + 24) = [v3 isEqual:*(a1 + 40)];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }
}

- (void)_initializeWithSceneHandle:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_sceneHandle, a3);
  v5 = objc_alloc_init(SBProcessSettings);
  processSettings = self->_processSettings;
  self->_processSettings = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  actions = self->_actions;
  self->_actions = v7;

  v9 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v10 = [v9 info];
  if ([v10 wantsLaunchWithoutPNG])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:7];
  }

  if ([v10 shouldLaunchWithLiveContentASAP])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:10];
  }

  if ([v10 shouldLaunchSuspendedAlways])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:3];
  }
}

- (id)_initWithSceneHandle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBApplicationSceneEntity *)a2 _initWithSceneHandle:?];
  }

  v6 = [v5 sceneIdentifier];
  v9.receiver = self;
  v9.super_class = SBApplicationSceneEntity;
  v7 = [(SBWorkspaceEntity *)&v9 initWithIdentifier:v6 displayChangeSettings:0];

  if (v7)
  {
    [(SBApplicationSceneEntity *)v7 _initializeWithSceneHandle:v5];
  }

  return v7;
}

- (void)setFlag:(int64_t)a3 forProcessSetting:(int64_t)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && !self->_processSettings)
  {
    v7 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v7;
  }

  v9 = self->_processSettings;

  [(SBProcessSettings *)v9 setFlag:a3 forProcessSetting:a4];
}

- (int64_t)flagForProcessSetting:(int64_t)a3
{
  processSettings = self->_processSettings;
  if (processSettings)
  {
    return [(SBProcessSettings *)processSettings flagForProcessSetting:a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)a3 forProcessSetting:(int64_t)a4
{
  v6 = a3;
  v9 = v6;
  if (v6 && !self->_processSettings)
  {
    v7 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v7;

    v6 = v9;
  }

  [(SBProcessSettings *)self->_processSettings setObject:v6 forProcessSetting:a4];
}

- (void)applyProcessSettings:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && !self->_processSettings)
  {
    v5 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v5;

    v4 = v7;
  }

  [(SBProcessSettings *)self->_processSettings applyProcessSettings:v4];
}

- (void)addActions:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_actions unionSet:?];
  }
}

- (void)removeActions:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_actions minusSet:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SBApplicationSceneEntity *)self sceneHandle];
    v7 = [v5 sceneHandle];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SBApplicationSceneEntity;
  v4 = [(SBWorkspaceEntity *)&v6 copyWithZone:a3];
  [v4 _initializeWithSceneHandle:self->_sceneHandle];
  [v4 applyProcessSettings:self->_processSettings];
  [v4 addActions:self->_actions];
  [v4 setFrozen:self->_frozen];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBApplicationSceneEntity;
  v5 = [(SBWorkspaceEntity *)&v10 descriptionBuilderWithMultilinePrefix:v4];
  processSettings = self->_processSettings;
  if (processSettings && ![(SBProcessSettings *)processSettings isEmpty]|| [(NSMutableSet *)self->_actions count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__SBApplicationSceneEntity_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = v5;
    [v9 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];
  }

  return v5;
}

id __66__SBApplicationSceneEntity_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 56) isEmpty] & 1) == 0)
  {
    v2 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 56) withName:@"processSettings" skipIfNil:1];
  }

  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 48) allObjects];
  [v3 appendArraySection:v4 withName:@"actions" skipIfEmpty:1];

  v5 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 40) withName:@"sceneHandle"];
  return [*(a1 + 40) appendBool:*(*(a1 + 32) + 64) withName:@"frozen" ifEqualTo:1];
}

- (Class)viewControllerClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_initWithSceneHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneEntity.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"sceneHandle"}];
}

@end