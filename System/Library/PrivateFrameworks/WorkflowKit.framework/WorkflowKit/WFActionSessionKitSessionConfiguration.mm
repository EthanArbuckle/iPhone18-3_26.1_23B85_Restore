@interface WFActionSessionKitSessionConfiguration
- (WFActionSessionKitSessionConfiguration)initWithBundleIdentifier:(id)identifier toastDurationPerRunSource:(id)source;
- (double)toastDurationForRunSource:(id)source;
@end

@implementation WFActionSessionKitSessionConfiguration

- (double)toastDurationForRunSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionSessionKitSessionConfiguration.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"runSource"}];

    if (self)
    {
      goto LABEL_3;
    }
  }

  toastDurationPerRunSource = 0;
LABEL_4:
  v7 = [(NSDictionary *)toastDurationPerRunSource objectForKeyedSubscript:sourceCopy];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v7, v8);

  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v11 = [systemShortcutsUserDefaults valueForKey:@"WFShortcutsToastedBannerAutoCollapseDuration"];
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
  deviceHasDynamicIsland = [(WFActionSessionKitSessionConfiguration *)self deviceHasDynamicIsland];
  v18 = 5.0;
  if (deviceHasDynamicIsland)
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

- (WFActionSessionKitSessionConfiguration)initWithBundleIdentifier:(id)identifier toastDurationPerRunSource:(id)source
{
  identifierCopy = identifier;
  sourceCopy = source;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionSessionKitSessionConfiguration.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = WFActionSessionKitSessionConfiguration;
  v9 = [(WFActionSessionKitSessionConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v12 = [sourceCopy copy];
    toastDurationPerRunSource = v9->_toastDurationPerRunSource;
    v9->_toastDurationPerRunSource = v12;

    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    v9->_deviceHasDynamicIsland = [currentDevice hasSystemAperture];

    v15 = v9;
  }

  return v9;
}

@end