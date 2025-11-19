@interface WFActionSessionKitSessionConfiguration
- (WFActionSessionKitSessionConfiguration)initWithBundleIdentifier:(id)a3 toastDurationPerRunSource:(id)a4;
- (double)toastDurationForRunSource:(id)a3;
@end

@implementation WFActionSessionKitSessionConfiguration

- (double)toastDurationForRunSource:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self)
    {
LABEL_3:
      toastDurationPerRunSource = self->_toastDurationPerRunSource;
      goto LABEL_4;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFActionSessionKitSessionConfiguration.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"runSource"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  toastDurationPerRunSource = 0;
LABEL_4:
  v7 = [(NSDictionary *)toastDurationPerRunSource objectForKeyedSubscript:v5];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v7, v8);

  v10 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v11 = [v10 valueForKey:@"WFShortcutsToastedBannerAutoCollapseDuration"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  [v14 doubleValue];
  v16 = v15;
  v17 = [(WFActionSessionKitSessionConfiguration *)self deviceHasDynamicIsland];
  v18 = 5.0;
  if (v17)
  {
    v18 = 0.0;
  }

  v19 = v16 + v18;
  if (v16 > 0.0)
  {
    v16 = v19;
  }

  return v16;
}

- (WFActionSessionKitSessionConfiguration)initWithBundleIdentifier:(id)a3 toastDurationPerRunSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFActionSessionKitSessionConfiguration.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFActionSessionKitSessionConfiguration;
  v9 = [(WFActionSessionKitSessionConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [v7 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v12 = [v8 copy];
    toastDurationPerRunSource = v9->_toastDurationPerRunSource;
    v9->_toastDurationPerRunSource = v12;

    v14 = [MEMORY[0x1E69E0A90] currentDevice];
    v9->_deviceHasDynamicIsland = [v14 hasSystemAperture];

    v15 = v9;
  }

  return v9;
}

@end