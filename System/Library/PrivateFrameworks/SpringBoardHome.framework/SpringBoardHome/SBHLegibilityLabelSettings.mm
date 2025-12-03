@interface SBHLegibilityLabelSettings
+ (id)generatedLegibilitySettingsForSettings:(id)settings existingSettings:(id)existingSettings;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHLegibilityLabelSettings

- (void)setDefaultValues
{
  [(SBHLegibilityLabelSettings *)self setOverrideLegibilitySettings:0];
  [(SBHLegibilityLabelSettings *)self setOverrideContentColor:0];
  [(SBHLegibilityLabelSettings *)self setOverrideContentColorRed:255.0];
  [(SBHLegibilityLabelSettings *)self setOverrideContentColorGreen:0.0];
  [(SBHLegibilityLabelSettings *)self setOverrideContentColorBlue:255.0];
  [(SBHLegibilityLabelSettings *)self setShouldOverrideLegibilityStyle:0];
  [(SBHLegibilityLabelSettings *)self setOverriddenLegibilityStyle:0];
  [(SBHLegibilityLabelSettings *)self setOverrideLegibilityEngine:0];
  if (SBHFeatureEnabled(0))
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(SBHLegibilityLabelSettings *)self setOverriddenLegibilityStyle:v3];
}

+ (id)settingsControllerModule
{
  v51[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = MEMORY[0x1E69C6638];
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Legibility" valueKeyPath:@"overrideLegibilitySettings"];
  v51[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v6 = [v3 sectionWithRows:v5 title:@"Override"];

  v40 = v6;
  [v2 addObject:v6];
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Content Color" valueKeyPath:@"overrideContentColor"];
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"red" valueKeyPath:@"overrideContentColorRed"];
  v9 = [MEMORY[0x1E69C66A0] rowWithTitle:@"green" valueKeyPath:@"overrideContentColorGreen"];
  v10 = [MEMORY[0x1E69C66A0] rowWithTitle:@"blue" valueKeyPath:@"overrideContentColorBlue"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v49[0] = v8;
  v49[1] = v9;
  v49[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        [v16 setMinValue:0.0];
        [v16 setMaxValue:255.0];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v13);
  }

  v17 = MEMORY[0x1E69C6638];
  v48[0] = v7;
  v48[1] = v8;
  v48[2] = v9;
  v48[3] = v10;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  v19 = [v17 sectionWithRows:v18 title:@"Content Color"];

  [v2 addObject:v19];
  v20 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Style" valueKeyPath:@"shouldOverrideLegibilityStyle"];
  v21 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Style" valueKeyPath:@"overriddenLegibilityStyle"];
  [v21 setPossibleTitles:&unk_1F3DB2CD8];
  v22 = [v21 possibleValues:&unk_1F3DB2CF0 titles:&unk_1F3DB2CD8];
  v23 = MEMORY[0x1E69C6638];
  v47[0] = v20;
  v47[1] = v21;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v25 = [v23 sectionWithRows:v24 title:@"Style"];

  [v2 addObject:v25];
  if (SBHFeatureEnabled(0))
  {
    v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Legibility Engine" valueKeyPath:@"shouldOverrideLegibilityEngine"];
    v27 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Engine" valueKeyPath:@"overrideLegibilityEngine"];
    [v27 setPossibleTitles:&unk_1F3DB2D08];
    v28 = [v27 possibleValues:&unk_1F3DB2D20 titles:&unk_1F3DB2D08];
    v29 = MEMORY[0x1E69C6638];
    v46[0] = v26;
    v46[1] = v27;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v31 = [v29 sectionWithRows:v30 title:@"Engine"];

    [v2 addObject:v31];
  }

  v32 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v34 = [v32 rowWithTitle:@"Restore Defaults" action:action];

  v35 = MEMORY[0x1E69C6638];
  v45 = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v37 = [v35 sectionWithRows:v36];

  [v2 addObject:v37];
  v38 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Icons" contents:v2];

  return v38;
}

+ (id)generatedLegibilitySettingsForSettings:(id)settings existingSettings:(id)existingSettings
{
  settingsCopy = settings;
  existingSettingsCopy = existingSettings;
  if (![settingsCopy overrideLegibilitySettings])
  {
    v10 = 0;
    goto LABEL_44;
  }

  v7 = off_1E8087000;
  v8 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:existingSettingsCopy ignoreFeatureFlags:1];
  if ([settingsCopy shouldOverrideLegibilityStyle])
  {
    overriddenLegibilityStyle = [settingsCopy overriddenLegibilityStyle];
  }

  else
  {
    overriddenLegibilityStyle = [v8 style];
  }

  v11 = overriddenLegibilityStyle;
  if ([settingsCopy overrideContentColor] && (objc_msgSend(settingsCopy, "overrideContentColorRed"), v13 = v12, objc_msgSend(settingsCopy, "overrideContentColorGreen"), v15 = v14, objc_msgSend(settingsCopy, "overrideContentColorBlue"), objc_msgSend(MEMORY[0x1E69DC888], "colorWithRed:green:blue:alpha:", v13 / 255.0, v15 / 255.0, v16 / 255.0, 1.0), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v40 = 0;
    primaryColor = 0;
    secondaryColor = 0;
    shadowColor = 0;
  }

  else
  {
    primaryColor = [v8 primaryColor];
    secondaryColor = [v8 secondaryColor];
    shadowColor = [v8 shadowColor];
    v18 = 0;
    v40 = 1;
  }

  _UILegibilitySettings = [v8 _UILegibilitySettings];
  if (_UILegibilitySettings)
  {
    _UILegibilitySettings2 = [v8 _UILegibilitySettings];
    [_UILegibilitySettings2 minFillHeight];
    v25 = v24;

    v7 = off_1E8087000;
  }

  else
  {
    v25 = 0.0;
  }

  if (![settingsCopy shouldOverrideLegibilityEngine] || !SBHFeatureEnabled(0))
  {
    goto LABEL_39;
  }

  overrideLegibilityEngine = [settingsCopy overrideLegibilityEngine];
  if (overrideLegibilityEngine > 1)
  {
    if (overrideLegibilityEngine != 2)
    {
      if (overrideLegibilityEngine == 3)
      {
        v28 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:PLKLegibilityStyleForUILegibilityStyle()];
LABEL_31:
        v34 = v28;
        goto LABEL_38;
      }

LABEL_39:
      v37 = objc_alloc(MEMORY[0x1E69DD5B8]);
      if (v40)
      {
        v38 = [v37 initWithStyle:v11 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];
      }

      else
      {
        v38 = [v37 initWithStyle:v11 contentColor:v18];
      }

      v34 = v38;
      [v38 setMinFillHeight:v25];
      goto LABEL_43;
    }

    if (primaryColor)
    {
      v31 = 0;
    }

    else
    {
      v31 = v40;
    }

    v32 = objc_alloc(MEMORY[0x1E69DD5B8]);
    if (v31 == 1)
    {
      v33 = [v32 initWithStyle:v11];
    }

    else if (primaryColor)
    {
      v33 = [v32 initWithStyle:v11 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];
    }

    else
    {
      v33 = [v32 initWithStyle:v11 contentColor:v18];
    }

    v35 = v33;
    [v33 setMinFillHeight:v25];
    v36 = MEMORY[0x1E69C5428];
    [SBHLegibilitySettings legibilityStrengthForLegibilityStyle:v11];
    v34 = [v36 legibilityDescriptorForSettings:v35 strength:?];

    v7 = off_1E8087000;
  }

  else
  {
    if (overrideLegibilityEngine)
    {
      if (overrideLegibilityEngine == 1)
      {
        v27 = objc_alloc(MEMORY[0x1E69D4588]);
        if (v40)
        {
          v28 = [v27 initWithStyle:v11 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];
        }

        else
        {
          v28 = [v27 initWithStyle:v11 contentColor:v18];
        }

        goto LABEL_31;
      }

      goto LABEL_39;
    }

    v29 = objc_alloc(MEMORY[0x1E69DD5B8]);
    if (v40)
    {
      v30 = [v29 initWithStyle:v11 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];
    }

    else
    {
      v30 = [v29 initWithStyle:v11 contentColor:v18];
    }

    v34 = v30;
    [v30 setMinFillHeight:v25];
  }

LABEL_38:
  if (!v34)
  {
    goto LABEL_39;
  }

LABEL_43:
  v10 = [(__objc2_class *)v7[2] legibilitySettingsForLegibilitySettings:v34 ignoreFeatureFlags:1];

LABEL_44:

  return v10;
}

@end