@interface PRSWallpaperObserverState
- (PRSWallpaperObserverState)init;
- (id)_initWithSelectedLock:(id)lock selectedHome:(id)home activeLock:(id)activeLock activeHome:(id)activeHome;
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
    selfCopy = self;
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

- (id)_initWithSelectedLock:(id)lock selectedHome:(id)home activeLock:(id)activeLock activeHome:(id)activeHome
{
  lockCopy = lock;
  homeCopy = home;
  activeLockCopy = activeLock;
  activeHomeCopy = activeHome;
  v18.receiver = self;
  v18.super_class = PRSWallpaperObserverState;
  v15 = [(PRSWallpaperObserverState *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_selectedLock, lock);
    objc_storeStrong(p_isa + 2, home);
    objc_storeStrong(p_isa + 3, activeLock);
    objc_storeStrong(p_isa + 4, activeHome);
  }

  return p_isa;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _path = [(PRSPosterConfiguration *)self->_selectedLock _path];
  serverIdentity = [_path serverIdentity];
  _path2 = [(PRSPosterConfiguration *)self->_selectedHome _path];
  serverIdentity2 = [_path2 serverIdentity];
  _path3 = [(PRSPosterConfiguration *)self->_activeLock _path];
  serverIdentity3 = [_path3 serverIdentity];
  _path4 = [(PRSPosterConfiguration *)self->_activeHome _path];
  serverIdentity4 = [_path4 serverIdentity];
  v13 = [v15 stringWithFormat:@"<%@:%p sl=%@ sh=%@ al=%@ ah=%@>", v4, self, serverIdentity, serverIdentity2, serverIdentity3, serverIdentity4];

  return v13;
}

@end