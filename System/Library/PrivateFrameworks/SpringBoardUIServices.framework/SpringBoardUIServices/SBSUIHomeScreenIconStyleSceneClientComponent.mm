@interface SBSUIHomeScreenIconStyleSceneClientComponent
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
- (void)updateStyleTraitForSettings:(id)a3 inScene:(id)a4;
@end

@implementation SBSUIHomeScreenIconStyleSceneClientComponent

- (void)setScene:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SBSUIHomeScreenIconStyleSceneClientComponent;
  [(FBSSceneComponent *)&v6 setScene:v4];
  v5 = [v4 settings];
  if ([v5 conformsToProtocol:&unk_1F1E24F20])
  {
    [(SBSUIHomeScreenIconStyleSceneClientComponent *)self updateStyleTraitForSettings:v5 inScene:v4];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v7 containsProperty:sel_iconStyleConfiguration];

  if (v8)
  {
    v9 = [v6 settings];
    [(SBSUIHomeScreenIconStyleSceneClientComponent *)self updateStyleTraitForSettings:v9 inScene:v10];
  }
}

- (void)updateStyleTraitForSettings:(id)a3 inScene:(id)a4
{
  v5 = a4;
  v9 = [a3 iconStyleConfiguration];
  v6 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:v5];

  v7 = [v6 traitOverrides];
  v8 = objc_opt_self();
  if (v9)
  {
    [v7 setObject:v9 forTrait:v8];
  }

  else
  {
    [v7 removeTrait:v8];
  }
}

@end