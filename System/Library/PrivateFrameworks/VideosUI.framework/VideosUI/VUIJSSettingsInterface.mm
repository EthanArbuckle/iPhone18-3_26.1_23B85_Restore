@interface VUIJSSettingsInterface
- (BOOL)sportsScoreSpoilersAllowed;
- (VUIJSSettingsInterface)initWithAppContext:(id)context;
- (id)userPreferences;
- (void)_handleSettingsDidChange:(id)change;
- (void)dealloc;
- (void)updateFeaturesConfiguration:(id)configuration;
@end

@implementation VUIJSSettingsInterface

- (VUIJSSettingsInterface)initWithAppContext:(id)context
{
  v7.receiver = self;
  v7.super_class = VUIJSSettingsInterface;
  v3 = [(VUIJSObject *)&v7 initWithAppContext:context];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleSettingsDidChange_ name:*MEMORY[0x1E69E1728] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleSettingsDidChange_ name:*MEMORY[0x1E69E16C8] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIJSSettingsInterface;
  [(VUIJSSettingsInterface *)&v4 dealloc];
}

- (BOOL)sportsScoreSpoilersAllowed
{
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  sportsScoreSpoilersAllowed = [mEMORY[0x1E69E15F0] sportsScoreSpoilersAllowed];

  return sportsScoreSpoilersAllowed;
}

- (id)userPreferences
{
  v2 = +[VUISettingsManager sharedInstance];
  preferencesJSONData = [v2 preferencesJSONData];

  return preferencesJSONData;
}

- (void)updateFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [configurationCopy count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v5 = __54__VUIJSSettingsInterface_updateFeaturesConfiguration___block_invoke;
    v6 = &unk_1E872D768;
    v7 = configurationCopy;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __54__VUIJSSettingsInterface_updateFeaturesConfiguration___block_invoke(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.Update", "", buf, 2u);
  }

  v3 = +[VUIFeaturesConfiguration sharedInstance];
  [v3 updateWithDictionary:*(a1 + 32)];

  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.Update", "", v5, 2u);
  }
}

- (void)_handleSettingsDidChange:(id)change
{
  changeCopy = change;
  NSLog(&cfstr_Vuijssettingsi.isa);
  appContext = [(VUIJSObject *)self appContext];
  objc_initWeak(&location, appContext);

  objc_initWeak(&from, self);
  v6 = objc_loadWeakRetained(&location);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__VUIJSSettingsInterface__handleSettingsDidChange___block_invoke;
  v7[3] = &unk_1E8731CF0;
  objc_copyWeak(&v8, &from);
  [v6 evaluate:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__VUIJSSettingsInterface__handleSettingsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x1E696EB58] valueWithObject:? inContext:?];

  if ([v4 hasProperty:@"onSettingsChange"])
  {
    NSLog(&cfstr_Vuijssettingsi_0.isa);
    v5 = [v4 invokeMethod:@"onSettingsChange" withArguments:0];
  }
}

@end