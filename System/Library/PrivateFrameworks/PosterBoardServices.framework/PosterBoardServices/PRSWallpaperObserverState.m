@interface PRSWallpaperObserverState
- (PRSWallpaperObserverState)init;
- (id)_initWithSelectedLock:(id)a3 selectedHome:(id)a4 activeLock:(id)a5 activeHome:(id)a6;
- (id)description;
@end

@implementation PRSWallpaperObserverState

- (PRSWallpaperObserverState)init
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
    v17 = self;
    v18 = 2114;
    v19 = @"PRSWallpaperObserver.m";
    v20 = 1024;
    v21 = 110;
    v22 = 2114;
    v23 = v7;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithSelectedLock:(id)a3 selectedHome:(id)a4 activeLock:(id)a5 activeHome:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PRSWallpaperObserverState;
  v15 = [(PRSWallpaperObserverState *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_selectedLock, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PRSPosterConfiguration *)self->_selectedLock _path];
  v6 = [v5 serverIdentity];
  v7 = [(PRSPosterConfiguration *)self->_selectedHome _path];
  v8 = [v7 serverIdentity];
  v9 = [(PRSPosterConfiguration *)self->_activeLock _path];
  v10 = [v9 serverIdentity];
  v11 = [(PRSPosterConfiguration *)self->_activeHome _path];
  v12 = [v11 serverIdentity];
  v13 = [v15 stringWithFormat:@"<%@:%p sl=%@ sh=%@ al=%@ ah=%@>", v4, self, v6, v8, v10, v12];

  return v13;
}

@end