@interface SBHLegibilitySettings
+ (double)legibilityStrengthForLegibilityStyle:(unint64_t)style;
+ (id)legibilitySettingsForLegibilitySettings:(id)settings ignoreFeatureFlags:(BOOL)flags;
+ (id)legibilitySettingsForPLKLegibilityDescriptor:(id)descriptor;
+ (id)legibilitySettingsForUILegibilitySettings:(id)settings;
+ (id)sharedInstanceForStyle:(unint64_t)style;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBHLegibilitySettings)initWithPrimaryColor:(id)color;
- (SBHLegibilitySettings)initWithStyle:(unint64_t)style contentColor:(id)color;
- (SBHLegibilitySettings)initWithStyle:(unint64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor;
- (SBHLegibilitySettings)settingsWithUpdatedPrimaryColor:(id)color;
- (SBHLegibilitySettings)settingsWithUpdatedStyle:(unint64_t)style primaryColor:(id)color;
- (UIColor)primaryColor;
- (UIColor)secondaryColor;
- (UIColor)shadowColor;
- (double)minFillHeight;
- (double)shadowSettings;
- (id)initWithLegibilitySettings:(char)settings ignoreFeatureFlags:;
- (unint64_t)hash;
- (unint64_t)style;
- (void)initWithLegibilitySettings:(void *)settings;
- (void)initWithPLKLegibilityDescriptor:(void *)descriptor;
@end

@implementation SBHLegibilitySettings

- (unint64_t)style
{
  legibilityDescriptor = self->_legibilityDescriptor;
  if (legibilityDescriptor)
  {
    v3 = legibilityDescriptor;
    if ([(PLKLegibilityDescriptor *)v3 sbh_isPLKLegibilityDescriptor])
    {
      foreground = [(PLKLegibilityDescriptor *)v3 foreground];
      contentColor = [foreground contentColor];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v7 = [contentColor _isSimilarToColor:whiteColor withinPercentage:0.00000011920929];

      if (v7)
      {
        style = 1;
      }

      else
      {
        style = 2;
      }
    }

    else if (([(PLKLegibilityDescriptor *)v3 sbh_isUILegibilitySettings]& 1) != 0 || [(PLKLegibilityDescriptor *)v3 sbh_isSBUILegibilitySettings])
    {
      style = [(PLKLegibilityDescriptor *)v3 style];
    }

    else
    {
      style = 0;
    }

    return style;
  }

  legibilitySettings = self->_legibilitySettings;
  if (!legibilitySettings)
  {
    return 0;
  }

  return [(_UILegibilitySettings *)legibilitySettings style];
}

- (UIColor)secondaryColor
{
  generatedSecondaryColor = self->_generatedSecondaryColor;
  if (generatedSecondaryColor)
  {
    goto LABEL_2;
  }

  legibilitySettings = self->_legibilitySettings;
  if (!legibilitySettings)
  {
    primaryColor = [(SBHLegibilitySettings *)self primaryColor];
    v8 = [primaryColor colorWithAlphaComponent:0.45];
    v9 = self->_generatedSecondaryColor;
    self->_generatedSecondaryColor = v8;

    generatedSecondaryColor = self->_generatedSecondaryColor;
LABEL_2:
    secondaryColor = generatedSecondaryColor;
    goto LABEL_5;
  }

  secondaryColor = [(_UILegibilitySettings *)legibilitySettings secondaryColor];
LABEL_5:

  return secondaryColor;
}

- (UIColor)primaryColor
{
  legibilityDescriptor = self->_legibilityDescriptor;
  if (legibilityDescriptor)
  {
    foreground = [(PLKLegibilityDescriptor *)legibilityDescriptor foreground];
    contentColor = [foreground contentColor];
  }

  else
  {
    legibilitySettings = self->_legibilitySettings;
    if (legibilitySettings)
    {
      contentColor = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    }

    else
    {
      contentColor = 0;
    }
  }

  return contentColor;
}

+ (id)legibilitySettingsForLegibilitySettings:(id)settings ignoreFeatureFlags:(BOOL)flags
{
  settingsCopy = settings;
  if ([settingsCopy sbh_isSBHLegibilitySettings])
  {
    v7 = settingsCopy;
  }

  else if (settingsCopy)
  {
    if ([settingsCopy sbh_isPLKLegibilityDescriptor])
    {
      v7 = [self legibilitySettingsForPLKLegibilityDescriptor:settingsCopy];
    }

    else if ([settingsCopy sbh_isUILegibilitySettings])
    {
      v7 = [(SBHLegibilitySettings *)[self alloc] initWithLegibilitySettings:settingsCopy ignoreFeatureFlags:flags];
    }

    else
    {
      if ([settingsCopy sbh_isSBUILegibilitySettings])
      {
        _UILegibilitySettings = [settingsCopy _UILegibilitySettings];
        if (_UILegibilitySettings)
        {
          v9 = _UILegibilitySettings;
          v10 = [(SBHLegibilitySettings *)[self alloc] initWithLegibilitySettings:_UILegibilitySettings ignoreFeatureFlags:flags];

          goto LABEL_14;
        }
      }

      v7 = [self sharedInstanceForStyle:0];
    }
  }

  else
  {
    v7 = +[SBHLegibilitySettings defaultLegibilitySettings];
  }

  v10 = v7;
LABEL_14:

  return v10;
}

- (id)initWithLegibilitySettings:(char)settings ignoreFeatureFlags:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (([v5 sbh_isUILegibilitySettings] & 1) == 0 && !objc_msgSend(v6, "sbh_isSBUILegibilitySettings") || objc_msgSend(v6, "sbh_isSBHLegibilitySettings"))
    {
      [SBHLegibilitySettings initWithLegibilitySettings:? ignoreFeatureFlags:?];
    }

    v8.receiver = self;
    v8.super_class = SBHLegibilitySettings;
    self = objc_msgSendSuper2(&v8, sel_init);
    if (self)
    {
      [(SBHLegibilitySettings *)settings initWithLegibilitySettings:self ignoreFeatureFlags:v6];
    }
  }

  return self;
}

+ (id)sharedInstanceForStyle:(unint64_t)style
{
  if (sharedInstanceForStyle__onceToken != -1)
  {
    +[SBHLegibilitySettings sharedInstanceForStyle:];
  }

  if (style <= 2)
  {
    self = *off_1E8090C28[style];
  }

  return self;
}

void __48__SBHLegibilitySettings_sharedInstanceForStyle___block_invoke()
{
  if (SBHFeatureEnabled(0))
  {
    v0 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:0];
    v1 = [SBHLegibilitySettings legibilitySettingsForPLKLegibilityDescriptor:v0];
    v2 = sharedInstanceForStyle__defaultSettings;
    sharedInstanceForStyle__defaultSettings = v1;

    v3 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:0];
    v4 = [SBHLegibilitySettings legibilitySettingsForPLKLegibilityDescriptor:v3];
    v5 = sharedInstanceForStyle__lightContentDarkShadow;
    sharedInstanceForStyle__lightContentDarkShadow = v4;

    v6 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:1];
    v7 = [SBHLegibilitySettings legibilitySettingsForPLKLegibilityDescriptor:v6];
    v8 = sharedInstanceForStyle__darkContentLightShadow;
    sharedInstanceForStyle__darkContentLightShadow = v7;
  }

  if (sharedInstanceForStyle__lightContentDarkShadow)
  {
    v9 = sharedInstanceForStyle__darkContentLightShadow == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || sharedInstanceForStyle__defaultSettings == 0)
  {
    v11 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:0];
    v12 = [SBHLegibilitySettings legibilitySettingsForUILegibilitySettings:v11];
    v13 = sharedInstanceForStyle__defaultSettings;
    sharedInstanceForStyle__defaultSettings = v12;

    v14 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:1];
    v15 = [SBHLegibilitySettings legibilitySettingsForUILegibilitySettings:v14];
    v16 = sharedInstanceForStyle__lightContentDarkShadow;
    sharedInstanceForStyle__lightContentDarkShadow = v15;

    v17 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:2];
    v18 = [SBHLegibilitySettings legibilitySettingsForUILegibilitySettings:v17];
    v19 = sharedInstanceForStyle__darkContentLightShadow;
    sharedInstanceForStyle__darkContentLightShadow = v18;

    if (!sharedInstanceForStyle__lightContentDarkShadow || !sharedInstanceForStyle__darkContentLightShadow || !sharedInstanceForStyle__defaultSettings)
    {
      v20 = [MEMORY[0x1E69D4588] sharedInstanceForStyle:0];
      v21 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:v20];
      v22 = sharedInstanceForStyle__defaultSettings;
      sharedInstanceForStyle__defaultSettings = v21;

      v23 = [MEMORY[0x1E69D4588] sharedInstanceForStyle:1];
      v24 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:v23];
      v25 = sharedInstanceForStyle__lightContentDarkShadow;
      sharedInstanceForStyle__lightContentDarkShadow = v24;

      v28 = [MEMORY[0x1E69D4588] sharedInstanceForStyle:2];
      v26 = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:v28];
      v27 = sharedInstanceForStyle__darkContentLightShadow;
      sharedInstanceForStyle__darkContentLightShadow = v26;
    }
  }
}

+ (id)legibilitySettingsForUILegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v5 = [(SBHLegibilitySettings *)[self alloc] initWithLegibilitySettings:settingsCopy];

  return v5;
}

- (void)initWithLegibilitySettings:(void *)settings
{
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    if (([v3 sbh_isUILegibilitySettings] & 1) == 0 && !objc_msgSend(v4, "sbh_isSBUILegibilitySettings") || objc_msgSend(v4, "sbh_isSBHLegibilitySettings"))
    {
      [SBHLegibilitySettings initWithLegibilitySettings:?];
    }

    v7.receiver = settings;
    v7.super_class = SBHLegibilitySettings;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    settings = v5;
    if (v5)
    {
      [(SBHLegibilitySettings *)v5 initWithLegibilitySettings:v4];
    }
  }

  return settings;
}

+ (id)legibilitySettingsForPLKLegibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(SBHLegibilitySettings *)[self alloc] initWithPLKLegibilityDescriptor:descriptorCopy];

  return v5;
}

+ (double)legibilityStrengthForLegibilityStyle:(unint64_t)style
{
  result = 0.3;
  if (style != 1)
  {
    return 0.0;
  }

  return result;
}

- (SBHLegibilitySettings)initWithStyle:(unint64_t)style contentColor:(id)color
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = SBHLegibilitySettings;
  v7 = [(SBHLegibilitySettings *)&v12 init];
  if (v7)
  {
    if (SBHFeatureEnabled(0))
    {
      v8 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:soft_PLKLegibilityStyleForUILegibilityStyle(style)];
      legibilityDescriptor = v7->_legibilityDescriptor;
      v7->_legibilityDescriptor = v8;
LABEL_4:

      goto LABEL_7;
    }

    if (!v7->_legibilityDescriptor && !v7->_legibilitySettings)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:style contentColor:colorCopy];
      legibilityDescriptor = v7->_legibilitySettings;
      v7->_legibilitySettings = v11;
      goto LABEL_4;
    }
  }

LABEL_7:

  return v7;
}

- (SBHLegibilitySettings)initWithStyle:(unint64_t)style primaryColor:(id)color secondaryColor:(id)secondaryColor shadowColor:(id)shadowColor
{
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  shadowColorCopy = shadowColor;
  v18.receiver = self;
  v18.super_class = SBHLegibilitySettings;
  v13 = [(SBHLegibilitySettings *)&v18 init];
  if (v13)
  {
    if (SBHFeatureEnabled(0))
    {
      v14 = [MEMORY[0x1E69C5428] defaultLegibilityDescriptorForStyle:soft_PLKLegibilityStyleForUILegibilityStyle(style)];
      legibilityDescriptor = v13->_legibilityDescriptor;
      v13->_legibilityDescriptor = v14;
LABEL_4:

      goto LABEL_7;
    }

    if (!v13->_legibilityDescriptor && !v13->_legibilitySettings)
    {
      v17 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:style primaryColor:colorCopy secondaryColor:secondaryColorCopy shadowColor:shadowColorCopy];
      legibilityDescriptor = v13->_legibilitySettings;
      v13->_legibilitySettings = v17;
      goto LABEL_4;
    }
  }

LABEL_7:

  return v13;
}

- (SBHLegibilitySettings)initWithPrimaryColor:(id)color
{
  v4 = MEMORY[0x1E69D4588];
  colorCopy = color;
  v6 = [[v4 alloc] initWithContentColor:colorCopy];

  v7 = [(SBHLegibilitySettings *)self initWithLegibilitySettings:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      builder = [MEMORY[0x1E698E6A0] builder];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __33__SBHLegibilitySettings_isEqual___block_invoke;
      v14[3] = &unk_1E8090C08;
      v6 = equalCopy;
      v15 = v6;
      selfCopy = self;
      v7 = [builder appendEqualsBlocks:{v14, 0}];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__SBHLegibilitySettings_isEqual___block_invoke_2;
      v11[3] = &unk_1E8090C08;
      v12 = v6;
      selfCopy2 = self;
      v8 = [builder appendEqualsBlocks:{v11, 0}];
      v9 = [builder isEqual];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __33__SBHLegibilitySettings_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _UILegibilitySettings];
  v3 = [*(a1 + 40) _UILegibilitySettings];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __33__SBHLegibilitySettings_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) legibilityDescriptor];
  v3 = [*(a1 + 40) legibilityDescriptor];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SBHLegibilitySettings;
  v3 = [(SBHLegibilitySettings *)&v9 hash];
  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings || (legibilitySettings = self->_legibilityDescriptor) != 0)
  {
    v5 = [(_UILegibilitySettings *)legibilitySettings hash];
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
    return v3 ^ (v6 >> 31) ^ v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHLegibilitySettings;
    return [(SBHLegibilitySettings *)&v8 hash];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_legibilitySettings withName:@"_legibilitySettings" skipIfNil:1];
  v5 = [v3 appendObject:self->_legibilityDescriptor withName:@"_legibilityDescriptor" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (SBHLegibilitySettings)settingsWithUpdatedPrimaryColor:(id)color
{
  colorCopy = color;
  v5 = [(SBHLegibilitySettings *)self settingsWithUpdatedStyle:[(SBHLegibilitySettings *)self style] primaryColor:colorCopy];

  return v5;
}

- (SBHLegibilitySettings)settingsWithUpdatedStyle:(unint64_t)style primaryColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (self->_legibilityDescriptor)
  {
    [(SBHLegibilitySettings *)colorCopy settingsWithUpdatedStyle:v14 primaryColor:?];
    v8 = *&v14[0];
  }

  else if (self->_legibilitySettings)
  {
    v10 = objc_alloc(MEMORY[0x1E69D4588]);
    secondaryColor = [(_UILegibilitySettings *)self->_legibilitySettings secondaryColor];
    shadowColor = [(_UILegibilitySettings *)self->_legibilitySettings shadowColor];
    [(SBHLegibilitySettings *)self shadowSettings];
    v13 = [v10 initWithStyle:style primaryColor:v7 secondaryColor:secondaryColor shadowColor:shadowColor shadowSettings:v14 minFillHeight:-[SBHLegibilitySettings minFillHeight](self)];

    v8 = [[SBHLegibilitySettings alloc] initWithLegibilitySettings:v13];
  }

  else
  {
    v8 = +[SBHLegibilitySettings defaultLegibilitySettings];
  }

  return v8;
}

- (double)shadowSettings
{
  if (self)
  {
    v3 = [MEMORY[0x1E69D4588] sharedInstanceForStyle:{objc_msgSend(self, "style")}];
    if (v3)
    {
      v5 = v3;
      [v3 shadowSettings];
      v3 = v5;
    }

    else
    {
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

- (UIColor)shadowColor
{
  legibilityDescriptor = self->_legibilityDescriptor;
  if (legibilityDescriptor)
  {
    background = [(PLKLegibilityDescriptor *)legibilityDescriptor background];
    contentColor = [background contentColor];
  }

  else
  {
    legibilitySettings = self->_legibilitySettings;
    if (legibilitySettings)
    {
      contentColor = [(_UILegibilitySettings *)legibilitySettings shadowColor];
    }

    else
    {
      contentColor = 0;
    }
  }

  return contentColor;
}

- (void)initWithPLKLegibilityDescriptor:(void *)descriptor
{
  v3 = a2;
  if (descriptor)
  {
    v7.receiver = descriptor;
    v7.super_class = SBHLegibilitySettings;
    descriptor = objc_msgSendSuper2(&v7, sel_init);
    if (descriptor)
    {
      v4 = [v3 copy];
      v5 = descriptor[3];
      descriptor[3] = v4;
    }
  }

  return descriptor;
}

- (double)minFillHeight
{
  if (!self)
  {
    return 0.0;
  }

  if (self[2])
  {
    v2 = self[2];

    [v2 minFillHeight];
  }

  else
  {
    v4 = [MEMORY[0x1E69D4588] sharedInstanceForStyle:{objc_msgSend(self, "style")}];
    [v4 minFillHeight];
    v6 = v5;

    return v6;
  }

  return result;
}

- (void)initWithLegibilitySettings:(const char *)a1 ignoreFeatureFlags:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"([legibilitySettings sbh_isUILegibilitySettings]||[legibilitySettings sbh_isSBUILegibilitySettings]) && __objc_no == [legibilitySettings sbh_isSBHLegibilitySettings]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v8 = @"SBHLegibility.m";
    v9 = 1024;
    v10 = 268;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithLegibilitySettings:(void *)a3 ignoreFeatureFlags:.cold.2(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) != 0 || (SBHFeatureEnabled(0) & 1) == 0)
  {
    v6 = [a3 copy];
    v7 = 16;
  }

  else
  {
    v5 = MEMORY[0x1E69C5428];
    [a3 style];
    v6 = [v5 defaultLegibilityDescriptorForStyle:PLKLegibilityStyleForUILegibilityStyle()];
    v7 = 24;
  }

  v8 = *(a2 + v7);
  *(a2 + v7) = v6;
}

- (void)initWithLegibilitySettings:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"([legibilitySettings sbh_isUILegibilitySettings]||[legibilitySettings sbh_isSBUILegibilitySettings]) && __objc_no == [legibilitySettings sbh_isSBHLegibilitySettings]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v8 = @"SBHLegibility.m";
    v9 = 1024;
    v10 = 244;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithLegibilitySettings:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  if (SBHFeatureEnabled(0))
  {
    v4 = MEMORY[0x1E69C5428];
    [a2 style];
    v5 = [v4 defaultLegibilityDescriptorForStyle:PLKLegibilityStyleForUILegibilityStyle()];
    v6 = 24;
  }

  else
  {
    v5 = [a2 copy];
    v6 = 16;
  }

  v7 = *(a1 + v6);
  *(a1 + v6) = v5;
}

- (void)settingsWithUpdatedStyle:(void *)a3 primaryColor:.cold.1(uint64_t a1, id *a2, void *a3)
{
  v8 = [MEMORY[0x1E69C5430] contentDescriptorForColor:a1];
  v5 = objc_alloc(MEMORY[0x1E69C5428]);
  v6 = [*a2 background];
  v7 = [v5 initWithForegroundContentDescriptor:v8 backgroundContentDescriptor:v6];

  *a3 = [[SBHLegibilitySettings alloc] initWithPLKLegibilityDescriptor:v7];
}

@end