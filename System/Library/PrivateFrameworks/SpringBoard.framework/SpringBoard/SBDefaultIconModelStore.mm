@interface SBDefaultIconModelStore
+ (SBDefaultIconModelStore)sharedInstance;
- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)saveDesiredIconState:(id)state error:(id *)error;
- (SBDefaultIconModelStore)init;
- (id)loadCurrentIconState:(id *)state;
- (id)loadDesiredIconState:(id *)state;
- (void)_deleteLegacyState;
@end

@implementation SBDefaultIconModelStore

+ (SBDefaultIconModelStore)sharedInstance
{
  if (sharedInstance___once_8 != -1)
  {
    +[SBDefaultIconModelStore sharedInstance];
  }

  v3 = sharedInstance___instance_8;

  return v3;
}

uint64_t __41__SBDefaultIconModelStore_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBDefaultIconModelStore);
  v1 = sharedInstance___instance_8;
  sharedInstance___instance_8 = v0;

  return kdebug_trace();
}

- (SBDefaultIconModelStore)init
{
  v3 = MEMORY[0x277CBEBC0];
  stringByExpandingTildeInPath = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v5 = [v3 fileURLWithPath:stringByExpandingTildeInPath];
  v6 = MEMORY[0x277CBEBC0];
  stringByExpandingTildeInPath2 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v8 = [v6 fileURLWithPath:stringByExpandingTildeInPath2];
  v9 = [(SBIconModelPropertyListFileStore *)self initWithIconStateURL:v5 desiredIconStateURL:v8];

  return v9;
}

- (id)loadCurrentIconState:(id *)state
{
  v7.receiver = self;
  v7.super_class = SBDefaultIconModelStore;
  v3 = [(SBIconModelPropertyListFileStore *)&v7 loadCurrentIconState:state];
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Read current icon state from disk.", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)deleteDesiredIconStateWithOptions:(unint64_t)options error:(id *)error
{
  v7.receiver = self;
  v7.super_class = SBDefaultIconModelStore;
  v5 = [(SBIconModelPropertyListFileStore *)&v7 deleteDesiredIconStateWithOptions:options error:error];
  if (v5)
  {
    [(SBDefaultIconModelStore *)self _deleteLegacyState];
  }

  return v5;
}

- (BOOL)saveDesiredIconState:(id)state error:(id *)error
{
  v7.receiver = self;
  v7.super_class = SBDefaultIconModelStore;
  v5 = [(SBIconModelPropertyListFileStore *)&v7 saveDesiredIconState:state error:error];
  if (v5)
  {
    [(SBDefaultIconModelStore *)self _deleteLegacyState];
  }

  return v5;
}

- (id)loadDesiredIconState:(id *)state
{
  v5 = +[SBDefaults localDefaults];
  iconDefaults = [v5 iconDefaults];
  legacyIconState = [iconDefaults legacyIconState];

  if (legacyIconState)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Read desired icon state from legacy user-defaults [1].";
LABEL_10:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    }
  }

  else
  {
    v10 = +[SBDefaults localDefaults];
    iconDefaults2 = [v10 iconDefaults];
    legacyIconState = [iconDefaults2 legacyIconState2];

    if (legacyIconState)
    {
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "Read desired icon state from legacy user-defaults [2].";
        goto LABEL_10;
      }
    }

    else
    {
      v13.receiver = self;
      v13.super_class = SBDefaultIconModelStore;
      legacyIconState = [(SBIconModelPropertyListFileStore *)&v13 loadDesiredIconState:state];
      if (!legacyIconState)
      {
        goto LABEL_12;
      }

      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "Read desired icon state from disk.";
        goto LABEL_10;
      }
    }
  }

LABEL_12:

  return legacyIconState;
}

- (void)_deleteLegacyState
{
  v3 = +[SBDefaults localDefaults];
  iconDefaults = [v3 iconDefaults];
  [iconDefaults clearLegacyDefaults];
}

@end