@interface PRSWallpaperObserverConfiguration
+ (id)configurationWithHandler:(id)handler;
- (PRSWallpaperObserverConfiguration)init;
- (unint64_t)locations;
- (void)setLocations:(unint64_t)locations;
- (void)setQueue:(id)queue;
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

+ (id)configurationWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(PRSWallpaperObserverConfiguration);
  v5 = objc_alloc_init(PRSWallpaperLocationStateObserver);
  [(PRSWallpaperLocationStateObserver *)v5 setHandler:handlerCopy];

  [(PRSWallpaperObserverConfiguration *)v4 setLocationStateObserver:v5];

  return v4;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [PRSWallpaperObserverConfiguration setQueue:a2];
  }

  queue = self->_queue;
  self->_queue = queueCopy;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocations:(unint64_t)locations
{
  locationStateObserver = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];

  if (!locationStateObserver)
  {
    v6 = objc_opt_new();
    [(PRSWallpaperObserverConfiguration *)self setLocationStateObserver:v6];
  }

  locationStateObserver2 = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];
  [locationStateObserver2 setLocations:locations];
}

- (unint64_t)locations
{
  locationStateObserver = [(PRSWallpaperObserverConfiguration *)self locationStateObserver];
  locations = [locationStateObserver locations];

  return locations;
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