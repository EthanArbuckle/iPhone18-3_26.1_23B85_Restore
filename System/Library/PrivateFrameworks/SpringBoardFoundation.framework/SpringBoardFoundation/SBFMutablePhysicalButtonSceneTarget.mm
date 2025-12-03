@interface SBFMutablePhysicalButtonSceneTarget
+ (id)targetWithScene:(id)scene;
+ (id)targetWithSceneIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addButtonTarget:(id)target;
- (void)removeButtonTargetForButton:(unint64_t)button;
@end

@implementation SBFMutablePhysicalButtonSceneTarget

+ (id)targetWithScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBFMutablePhysicalButtonSceneTarget targetWithScene:a2];
  }

  [(SBFMutablePhysicalButtonSceneTarget *)self targetWithScene:sceneCopy, &v7];
  return v7;
}

+ (id)targetWithSceneIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [SBFMutablePhysicalButtonSceneTarget targetWithSceneIdentity:a2];
  }

  [(SBFMutablePhysicalButtonSceneTarget *)self targetWithSceneIdentity:identityCopy, &v7];
  return v7;
}

- (void)addButtonTarget:(id)target
{
  if (target)
  {
    targetsByButton = self->super._targetsByButton;
    v4 = MEMORY[0x1E696AD98];
    targetCopy = target;
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(targetCopy, "button")}];
    [(NSMutableDictionary *)targetsByButton setObject:targetCopy forKey:v6];
  }
}

- (void)removeButtonTargetForButton:(unint64_t)button
{
  targetsByButton = self->super._targetsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:button];
  [(NSMutableDictionary *)targetsByButton removeObjectForKey:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBFPhysicalButtonSceneTarget alloc];
  scene = [(SBFPhysicalButtonSceneTarget *)self scene];
  sceneIdentity = [(SBFPhysicalButtonSceneTarget *)self sceneIdentity];
  v7 = OUTLINED_FUNCTION_0_9([(NSMutableDictionary *)self->super._targetsByButton mutableCopy]);

  return v7;
}

+ (id)targetWithScene:(id *)a3 .cold.1(objc_class *a1, void *a2, id **a3)
{
  v5 = [a1 alloc];
  v6 = [a2 identity];
  v7 = [(SBFPhysicalButtonSceneTarget *)v5 _initWithScene:a2 sceneIdentity:v6 targetsByButton:0];
  *a3 = v7;

  return v7;
}

+ (void)targetWithScene:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_6();
    v8 = @"SBFPhysicalButtonSceneTarget.m";
    v9 = 1024;
    v10 = 190;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (id)targetWithSceneIdentity:(id *)a3 .cold.1(objc_class *a1, void *a2, id **a3)
{
  v5 = [(SBFPhysicalButtonSceneTarget *)[a1 alloc] _initWithScene:a2 sceneIdentity:0 targetsByButton:?];
  *a3 = v5;

  return v5;
}

+ (void)targetWithSceneIdentity:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"sceneIdentity != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_6();
    v8 = @"SBFPhysicalButtonSceneTarget.m";
    v9 = 1024;
    v10 = 195;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end