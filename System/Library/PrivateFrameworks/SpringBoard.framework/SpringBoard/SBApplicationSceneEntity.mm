@interface SBApplicationSceneEntity
- (BOOL)isEqual:(id)equal;
- (Class)viewControllerClass;
- (id)_initWithSceneHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)entityGenerator;
- (int64_t)flagForProcessSetting:(int64_t)setting;
- (unint64_t)hash;
- (void)_initializeWithSceneHandle:(id)handle;
- (void)addActions:(id)actions;
- (void)applyProcessSettings:(id)settings;
- (void)removeActions:(id)actions;
- (void)setFlag:(int64_t)flag forProcessSetting:(int64_t)setting;
- (void)setObject:(id)object forProcessSetting:(int64_t)setting;
- (void)translateActivationSettingsToActions;
@end

@implementation SBApplicationSceneEntity

- (unint64_t)hash
{
  sceneHandle = [(SBApplicationSceneEntity *)self sceneHandle];
  v3 = [sceneHandle hash];

  return v3;
}

- (void)translateActivationSettingsToActions
{
  v3 = [(SBWorkspaceEntity *)self objectForActivationSetting:5];
  actions = [(SBApplicationSceneEntity *)self actions];
  v5 = [actions copy];

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
  isFrozen = [(SBApplicationSceneEntity *)self isFrozen];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__SBApplicationSceneEntity_entityGenerator__block_invoke;
  v10[3] = &unk_2783C2108;
  v11 = v3;
  v12 = v4;
  v13 = isFrozen;
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

- (void)_initializeWithSceneHandle:(id)handle
{
  handleCopy = handle;
  objc_storeStrong(&self->_sceneHandle, handle);
  v5 = objc_alloc_init(SBProcessSettings);
  processSettings = self->_processSettings;
  self->_processSettings = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  actions = self->_actions;
  self->_actions = v7;

  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  info = [application info];
  if ([info wantsLaunchWithoutPNG])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:7];
  }

  if ([info shouldLaunchWithLiveContentASAP])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:10];
  }

  if ([info shouldLaunchSuspendedAlways])
  {
    [(SBWorkspaceEntity *)self setFlag:1 forActivationSetting:3];
  }
}

- (id)_initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    [(SBApplicationSceneEntity *)a2 _initWithSceneHandle:?];
  }

  sceneIdentifier = [handleCopy sceneIdentifier];
  v9.receiver = self;
  v9.super_class = SBApplicationSceneEntity;
  v7 = [(SBWorkspaceEntity *)&v9 initWithIdentifier:sceneIdentifier displayChangeSettings:0];

  if (v7)
  {
    [(SBApplicationSceneEntity *)v7 _initializeWithSceneHandle:handleCopy];
  }

  return v7;
}

- (void)setFlag:(int64_t)flag forProcessSetting:(int64_t)setting
{
  if (flag != 0x7FFFFFFFFFFFFFFFLL && !self->_processSettings)
  {
    v7 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v7;
  }

  v9 = self->_processSettings;

  [(SBProcessSettings *)v9 setFlag:flag forProcessSetting:setting];
}

- (int64_t)flagForProcessSetting:(int64_t)setting
{
  processSettings = self->_processSettings;
  if (processSettings)
  {
    return [(SBProcessSettings *)processSettings flagForProcessSetting:setting];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)object forProcessSetting:(int64_t)setting
{
  objectCopy = object;
  v9 = objectCopy;
  if (objectCopy && !self->_processSettings)
  {
    v7 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v7;

    objectCopy = v9;
  }

  [(SBProcessSettings *)self->_processSettings setObject:objectCopy forProcessSetting:setting];
}

- (void)applyProcessSettings:(id)settings
{
  settingsCopy = settings;
  v7 = settingsCopy;
  if (settingsCopy && !self->_processSettings)
  {
    v5 = objc_alloc_init(SBProcessSettings);
    processSettings = self->_processSettings;
    self->_processSettings = v5;

    settingsCopy = v7;
  }

  [(SBProcessSettings *)self->_processSettings applyProcessSettings:settingsCopy];
}

- (void)addActions:(id)actions
{
  if (actions)
  {
    [(NSMutableSet *)self->_actions unionSet:?];
  }
}

- (void)removeActions:(id)actions
{
  if (actions)
  {
    [(NSMutableSet *)self->_actions minusSet:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sceneHandle = [(SBApplicationSceneEntity *)self sceneHandle];
    sceneHandle2 = [v5 sceneHandle];

    v8 = [sceneHandle isEqual:sceneHandle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SBApplicationSceneEntity;
  v4 = [(SBWorkspaceEntity *)&v6 copyWithZone:zone];
  [v4 _initializeWithSceneHandle:self->_sceneHandle];
  [v4 applyProcessSettings:self->_processSettings];
  [v4 addActions:self->_actions];
  [v4 setFrozen:self->_frozen];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v10.receiver = self;
  v10.super_class = SBApplicationSceneEntity;
  v5 = [(SBWorkspaceEntity *)&v10 descriptionBuilderWithMultilinePrefix:prefixCopy];
  processSettings = self->_processSettings;
  if (processSettings && ![(SBProcessSettings *)processSettings isEmpty]|| [(NSMutableSet *)self->_actions count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__SBApplicationSceneEntity_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = v5;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
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