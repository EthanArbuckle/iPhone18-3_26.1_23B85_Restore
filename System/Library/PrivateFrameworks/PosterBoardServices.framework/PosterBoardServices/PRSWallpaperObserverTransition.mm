@interface PRSWallpaperObserverTransition
- (PRSWallpaperObserverTransition)init;
- (id)_initWithChanged:(unint64_t)changed;
- (id)description;
@end

@implementation PRSWallpaperObserverTransition

- (PRSWallpaperObserverTransition)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"-init is not allowed on %@", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    selfCopy = self;
    v18 = 2114;
    v19 = @"PRSWallpaperObserver.m";
    v20 = 1024;
    v21 = 147;
    v22 = 2114;
    v23 = v7;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithChanged:(unint64_t)changed
{
  v5.receiver = self;
  v5.super_class = PRSWallpaperObserverTransition;
  result = [(PRSWallpaperObserverTransition *)&v5 init];
  if (result)
  {
    *(result + 1) = changed;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = PRSWallpaperObserverLocationsDescription(self->_changed);
  v7 = [v3 stringWithFormat:@"<%@:%p changed=(%@)>", v5, self, v6];

  return v7;
}

@end