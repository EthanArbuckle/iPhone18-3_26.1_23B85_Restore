@interface SBSUIHomeScreenIconStyleSceneClientComponent
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
- (void)updateStyleTraitForSettings:(id)settings inScene:(id)scene;
@end

@implementation SBSUIHomeScreenIconStyleSceneClientComponent

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v6.receiver = self;
  v6.super_class = SBSUIHomeScreenIconStyleSceneClientComponent;
  [(FBSSceneComponent *)&v6 setScene:sceneCopy];
  settings = [sceneCopy settings];
  if ([settings conformsToProtocol:&unk_1F1E24F20])
  {
    [(SBSUIHomeScreenIconStyleSceneClientComponent *)self updateStyleTraitForSettings:settings inScene:sceneCopy];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [settingsDiff containsProperty:sel_iconStyleConfiguration];

  if (v8)
  {
    settings = [settingsCopy settings];
    [(SBSUIHomeScreenIconStyleSceneClientComponent *)self updateStyleTraitForSettings:settings inScene:sceneCopy];
  }
}

- (void)updateStyleTraitForSettings:(id)settings inScene:(id)scene
{
  sceneCopy = scene;
  iconStyleConfiguration = [settings iconStyleConfiguration];
  v6 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:sceneCopy];

  traitOverrides = [v6 traitOverrides];
  v8 = objc_opt_self();
  if (iconStyleConfiguration)
  {
    [traitOverrides setObject:iconStyleConfiguration forTrait:v8];
  }

  else
  {
    [traitOverrides removeTrait:v8];
  }
}

@end