@interface PRSWallpaperObserverConfiguration
+ (id)configurationWithHandler:(id)a3;
- (PRSWallpaperObserverConfiguration)init;
- (unint64_t)locations;
- (void)setLocations:(unint64_t)a3;
- (void)setQueue:(id)a3;
@end

@implementation PRSWallpaperObserverConfiguration

- (PRSWallpaperObserverConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PRSWallpaperObserverConfiguration;
  v2 = [(PRSWallpaperObserverConfiguration *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(17, 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)configurationWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PRSWallpaperObserverConfiguration);
  v5 = objc_alloc_init(PRSWallpaperLocationStateObserver);
  [(PRSWallpaperLocationStateObserver *)v5 setHandler:v3];

  [(PRSWallpaperObserverConfiguration *)v4 setLocationStateObserver:v5];

  return v4;
}

- (void)setQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSWallpaperObserverConfiguration setQueue:a2];
  }

  queue = self->_queue;
  self->_queue = v5;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocations:(unint64_t)a3
{
  v5 = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(PRSWallpaperObserverConfiguration *)self setLocationStateObserver:v6];
  }

  v7 = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];
  [v7 setLocations:a3];
}

- (unint64_t)locations
{
  v2 = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];
  v3 = [v2 locations];

  return v3;
}

- (void)setQueue:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"queue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end