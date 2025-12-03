@interface SBUIContinuitySessionAppearanceSettings
- (BOOL)isEqual:(id)equal;
- (SBUIContinuitySessionAppearanceSettings)init;
- (SBUIContinuitySessionAppearanceSettings)initWithBSXPCCoder:(id)coder;
- (id)_initWithBSSettings:(id *)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)userInterfaceStyle;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBUIContinuitySessionAppearanceSettings

- (SBUIContinuitySessionAppearanceSettings)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(SBUIContinuitySessionAppearanceSettings *)&self->super.isa _initWithBSSettings:v3];

  return v4;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_mutableSettings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = SBUIContinuitySessionAppearanceSettings;
  [(SBUIContinuitySessionAppearanceSettings *)&v3 dealloc];
}

- (int64_t)userInterfaceStyle
{
  v2 = [(BSMutableSettings *)self->_mutableSettings objectForSetting:1];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    userInterfaceStyle = [(SBUIContinuitySessionAppearanceSettings *)self userInterfaceStyle];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBUIContinuitySessionAppearanceSettings_isEqual___block_invoke;
    v10[3] = &unk_1E789FAF8;
    v11 = equalCopy;
    v7 = [v5 appendUnsignedInteger:userInterfaceStyle counterpart:v10];
    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[SBUIContinuitySessionAppearanceSettings userInterfaceStyle](self, "userInterfaceStyle")}];
  v5 = [builder hash];

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  mutableSettings = self->_mutableSettings;
  coderCopy = coder;
  v5 = [(BSMutableSettings *)mutableSettings copy];
  [coderCopy encodeObject:v5 forKey:@"settings"];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SBUIContinuitySessionAppearanceSettings_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

void __69__SBUIContinuitySessionAppearanceSettings_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) userInterfaceStyle];
  v2 = SBFStringForUIUserInterfaceStyle();
  [v1 appendString:v2 withName:@"userInterfaceStyle"];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"userInterfaceStyle";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    [object integerValue];
    v7 = SBFStringForUIUserInterfaceStyle();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithBSSettings:(id *)settings
{
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithBSSettings_ object:settings file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
    }

    v9.receiver = settings;
    v9.super_class = SBUIContinuitySessionAppearanceSettings;
    settings = objc_msgSendSuper2(&v9, sel_init);
    if (settings)
    {
      v5 = [v4 mutableCopy];
      v6 = settings[1];
      settings[1] = v5;

      [settings[1] setDescriptionProvider:settings];
    }
  }

  return settings;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBUIContinuitySessionAppearanceSettings alloc];
  mutableSettings = self->_mutableSettings;

  return [(SBUIContinuitySessionAppearanceSettings *)&v4->super.isa _initWithBSSettings:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBUIMutableContinuitySessionAppearanceSettings alloc];
  mutableSettings = self->_mutableSettings;

  return [(SBUIContinuitySessionAppearanceSettings *)&v4->super.super.isa _initWithBSSettings:?];
}

- (SBUIContinuitySessionAppearanceSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settings"];

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:113 description:@"Unable to decode settings"];
  }

  v7 = [(SBUIContinuitySessionAppearanceSettings *)&self->super.isa _initWithBSSettings:v6];

  return v7;
}

- (id)succinctDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = MEMORY[0x1E698E688];
    succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
    selfCopy = [v2 descriptionForRootObject:selfCopy withStyle:succinctStyle];
  }

  return selfCopy;
}

@end