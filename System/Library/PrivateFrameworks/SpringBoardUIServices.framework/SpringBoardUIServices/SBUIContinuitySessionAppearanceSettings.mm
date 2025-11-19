@interface SBUIContinuitySessionAppearanceSettings
- (BOOL)isEqual:(id)a3;
- (SBUIContinuitySessionAppearanceSettings)init;
- (SBUIContinuitySessionAppearanceSettings)initWithBSXPCCoder:(id)a3;
- (id)_initWithBSSettings:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)userInterfaceStyle;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
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
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBUIContinuitySessionAppearanceSettings *)self userInterfaceStyle];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBUIContinuitySessionAppearanceSettings_isEqual___block_invoke;
    v10[3] = &unk_1E789FAF8;
    v11 = v4;
    v7 = [v5 appendUnsignedInteger:v6 counterpart:v10];
    v8 = [v5 isEqual];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[SBUIContinuitySessionAppearanceSettings userInterfaceStyle](self, "userInterfaceStyle")}];
  v5 = [v3 hash];

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  mutableSettings = self->_mutableSettings;
  v4 = a3;
  v5 = [(BSMutableSettings *)mutableSettings copy];
  [v4 encodeObject:v5 forKey:@"settings"];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SBUIContinuitySessionAppearanceSettings_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __69__SBUIContinuitySessionAppearanceSettings_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) userInterfaceStyle];
  v2 = SBFStringForUIUserInterfaceStyle();
  [v1 appendString:v2 withName:@"userInterfaceStyle"];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"userInterfaceStyle";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
  {
    [a4 integerValue];
    v7 = SBFStringForUIUserInterfaceStyle();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithBSSettings:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__initWithBSSettings_ object:a1 file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
    }

    v9.receiver = a1;
    v9.super_class = SBUIContinuitySessionAppearanceSettings;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v5 = [v4 mutableCopy];
      v6 = a1[1];
      a1[1] = v5;

      [a1[1] setDescriptionProvider:a1];
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBUIContinuitySessionAppearanceSettings alloc];
  mutableSettings = self->_mutableSettings;

  return [(SBUIContinuitySessionAppearanceSettings *)&v4->super.isa _initWithBSSettings:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBUIMutableContinuitySessionAppearanceSettings alloc];
  mutableSettings = self->_mutableSettings;

  return [(SBUIContinuitySessionAppearanceSettings *)&v4->super.super.isa _initWithBSSettings:?];
}

- (SBUIContinuitySessionAppearanceSettings)initWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"settings"];

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SBUIContinuitySessionAppearanceSettings.m" lineNumber:113 description:@"Unable to decode settings"];
  }

  v7 = [(SBUIContinuitySessionAppearanceSettings *)&self->super.isa _initWithBSSettings:v6];

  return v7;
}

- (id)succinctDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x1E698E688];
    v3 = [MEMORY[0x1E698E690] succinctStyle];
    v1 = [v2 descriptionForRootObject:v1 withStyle:v3];
  }

  return v1;
}

@end