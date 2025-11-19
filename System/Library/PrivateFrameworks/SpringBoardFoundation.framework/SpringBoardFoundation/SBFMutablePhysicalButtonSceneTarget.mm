@interface SBFMutablePhysicalButtonSceneTarget
+ (id)targetWithScene:(id)a3;
+ (id)targetWithSceneIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addButtonTarget:(id)a3;
- (void)removeButtonTargetForButton:(unint64_t)a3;
@end

@implementation SBFMutablePhysicalButtonSceneTarget

+ (id)targetWithScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBFMutablePhysicalButtonSceneTarget targetWithScene:a2];
  }

  [(SBFMutablePhysicalButtonSceneTarget *)a1 targetWithScene:v5, &v7];
  return v7;
}

+ (id)targetWithSceneIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBFMutablePhysicalButtonSceneTarget targetWithSceneIdentity:a2];
  }

  [(SBFMutablePhysicalButtonSceneTarget *)a1 targetWithSceneIdentity:v5, &v7];
  return v7;
}

- (void)addButtonTarget:(id)a3
{
  if (a3)
  {
    targetsByButton = self->super._targetsByButton;
    v4 = MEMORY[0x1E696AD98];
    v5 = a3;
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "button")}];
    [(NSMutableDictionary *)targetsByButton setObject:v5 forKey:v6];
  }
}

- (void)removeButtonTargetForButton:(unint64_t)a3
{
  targetsByButton = self->super._targetsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)targetsByButton removeObjectForKey:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBFPhysicalButtonSceneTarget alloc];
  v5 = [(SBFPhysicalButtonSceneTarget *)self scene];
  v6 = [(SBFPhysicalButtonSceneTarget *)self sceneIdentity];
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