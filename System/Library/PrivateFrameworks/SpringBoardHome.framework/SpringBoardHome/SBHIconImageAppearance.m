@interface SBHIconImageAppearance
+ (SBHIconImageAppearance)allocWithZone:(_NSZone *)a3;
+ (SBHIconImageAppearance)clearDarkAppearance;
+ (SBHIconImageAppearance)clearLightAppearance;
+ (SBHIconImageAppearance)darkAppearance;
+ (SBHIconImageAppearance)lightAppearance;
+ (SBHIconImageAppearance)tintableAppearance;
+ (id)clearAppearanceForUserInterfaceStyle:(int64_t)a3;
+ (id)colorAppearanceForUserInterfaceStyle:(int64_t)a3;
+ (id)sharedInstanceForAppearanceType:(int64_t)a3;
+ (id)tintedDarkAppearanceWithTintColor:(id)a3;
+ (id)tintedLightAppearanceWithTintColor:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SBHIconImageAppearance)appearanceWithTintColor:(id)a3;
- (SBHIconImageAppearance)initWithAppearanceType:(int64_t)a3 tintColor:(id)a4;
- (SBHIconImageAppearance)initWithBSXPCCoder:(id)a3;
- (SBHIconImageAppearance)initWithCoder:(id)a3;
- (UIColor)opaqueTintColor;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)iconGlassUserInterfaceStyle;
- (int64_t)userInterfaceStyle;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHIconImageAppearance

+ (SBHIconImageAppearance)lightAppearance
{
  if (lightAppearance_onceToken != -1)
  {
    +[SBHIconImageAppearance lightAppearance];
  }

  v3 = lightAppearance_lightAppearance;

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    reusablePlaceholderImageAppearance = [SBHPlaceholderIconImageAppearance alloc];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t __41__SBHIconImageAppearance_lightAppearance__block_invoke()
{
  lightAppearance_lightAppearance = objc_alloc_init(SBHLightIconImageAppearance);

  return MEMORY[0x1EEE66BB8]();
}

+ (SBHIconImageAppearance)darkAppearance
{
  if (darkAppearance_onceToken != -1)
  {
    +[SBHIconImageAppearance darkAppearance];
  }

  v3 = darkAppearance_darkAppearance;

  return v3;
}

uint64_t __40__SBHIconImageAppearance_darkAppearance__block_invoke()
{
  v0 = objc_alloc_init(SBHDarkIconImageAppearance);
  v1 = darkAppearance_darkAppearance;
  darkAppearance_darkAppearance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)colorAppearanceForUserInterfaceStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    [a1 darkAppearance];
  }

  else
  {
    [a1 lightAppearance];
  }
  v3 = ;

  return v3;
}

+ (SBHIconImageAppearance)clearLightAppearance
{
  if (clearLightAppearance_onceToken != -1)
  {
    +[SBHIconImageAppearance clearLightAppearance];
  }

  v3 = clearLightAppearance_clearAppearance;

  return v3;
}

uint64_t __46__SBHIconImageAppearance_clearLightAppearance__block_invoke()
{
  v0 = objc_alloc_init(SBHClearLightIconImageAppearance);
  v1 = clearLightAppearance_clearAppearance;
  clearLightAppearance_clearAppearance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (SBHIconImageAppearance)clearDarkAppearance
{
  if (clearDarkAppearance_onceToken[0] != -1)
  {
    +[SBHIconImageAppearance clearDarkAppearance];
  }

  v3 = clearDarkAppearance_clearAppearance;

  return v3;
}

uint64_t __45__SBHIconImageAppearance_clearDarkAppearance__block_invoke()
{
  v0 = objc_alloc_init(SBHClearDarkIconImageAppearance);
  v1 = clearDarkAppearance_clearAppearance;
  clearDarkAppearance_clearAppearance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)clearAppearanceForUserInterfaceStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    [a1 clearDarkAppearance];
  }

  else
  {
    [a1 clearLightAppearance];
  }
  v3 = ;

  return v3;
}

+ (id)tintedLightAppearanceWithTintColor:(id)a3
{
  v3 = a3;
  v4 = [(SBHTintedIconImageAppearance *)[SBHTintedLightIconImageAppearance alloc] initWithAppearanceType:4 tintColor:v3];

  return v4;
}

+ (id)tintedDarkAppearanceWithTintColor:(id)a3
{
  v3 = a3;
  v4 = [(SBHTintedIconImageAppearance *)[SBHTintedDarkIconImageAppearance alloc] initWithAppearanceType:5 tintColor:v3];

  return v4;
}

+ (SBHIconImageAppearance)tintableAppearance
{
  if (tintableAppearance_onceToken != -1)
  {
    +[SBHIconImageAppearance tintableAppearance];
  }

  v3 = tintableAppearance_tintableAppearance;

  return v3;
}

uint64_t __44__SBHIconImageAppearance_tintableAppearance__block_invoke()
{
  v0 = objc_alloc_init(SBHTintableIconImageAppearance);
  v1 = tintableAppearance_tintableAppearance;
  tintableAppearance_tintableAppearance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sharedInstanceForAppearanceType:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [a1 darkAppearance];
      }
    }

    else
    {
      v4 = [a1 lightAppearance];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v4 = [a1 clearLightAppearance];
        break;
      case 3:
        v4 = [a1 clearDarkAppearance];
        break;
      case 6:
        v4 = [a1 tintableAppearance];
        break;
    }
  }

  return v4;
}

+ (SBHIconImageAppearance)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {
    v7 = reusablePlaceholderImageAppearance;

    return v7;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SBHIconImageAppearance;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
  }
}

- (SBHIconImageAppearance)initWithAppearanceType:(int64_t)a3 tintColor:(id)a4
{
  v6 = a4;
  v7 = objc_opt_self();
  if ([(SBHIconImageAppearance *)self isMemberOfClass:v7])
  {
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [(SBHIconImageAppearance *)self isMemberOfClass:v8];

    if (!v9)
    {
      v14.receiver = self;
      v14.super_class = SBHIconImageAppearance;
      v12 = [(SBHIconImageAppearance *)&v14 init];
      self = v12;
      goto LABEL_22;
    }
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v12 = +[SBHIconImageAppearance darkAppearance];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_23;
        }

        v12 = +[SBHIconImageAppearance clearLightAppearance];
      }
    }

    else
    {
      v12 = +[SBHIconImageAppearance lightAppearance];
    }
  }

  else
  {
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          goto LABEL_23;
        }

        v12 = +[SBHIconImageAppearance tintableAppearance];
        goto LABEL_22;
      }

      v10 = [SBHTintedDarkIconImageAppearance alloc];
      v11 = 5;
      goto LABEL_20;
    }

    if (a3 != 3)
    {
      v10 = [SBHTintedLightIconImageAppearance alloc];
      v11 = 4;
LABEL_20:
      v12 = [(SBHTintedIconImageAppearance *)v10 initWithAppearanceType:v11 tintColor:v6];
      goto LABEL_22;
    }

    v12 = +[SBHIconImageAppearance clearDarkAppearance];
  }

LABEL_22:
  a3 = v12;
LABEL_23:

  return a3;
}

- (UIColor)opaqueTintColor
{
  v2 = [(SBHIconImageAppearance *)self tintColor];
  v3 = v2;
  if (v2)
  {
    v4 = SBHOpaqueTintColorFromTintColor(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)userInterfaceStyle
{
  if ([(SBHIconImageAppearance *)self isDark])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)iconGlassUserInterfaceStyle
{
  if ([(SBHIconImageAppearance *)self isDark])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBHIconImageAppearance)appearanceWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconImageAppearance *)self appearanceType];
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithAppearanceType:v5 tintColor:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(SBHIconImageAppearance *)self appearanceType];
  v4 = [(SBHIconImageAppearance *)self tintColor];
  v5 = [v4 hash];

  return v5 + v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBHIconImageAppearance *)self appearanceType];
      if (v8 == [(SBHIconImageAppearance *)v7 appearanceType])
      {
        v9 = [(SBHIconImageAppearance *)self tintColor];
        v10 = [(SBHIconImageAppearance *)v7 tintColor];
        v11 = BSEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SBHIconImageAppearance appearanceType](self forKey:{"appearanceType"), @"appearanceType"}];
  v5 = [(SBHIconImageAppearance *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBHIconImageAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"appearanceType"];
  if (v5 > 6)
  {
    v9 = 0;
  }

  else
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = [v4 decodeObjectOfClass:v7 forKey:@"tintColor"];

    self = [(SBHIconImageAppearance *)self initWithAppearanceType:v6 tintColor:v8];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SBHIconImageAppearance appearanceType](self forKey:{"appearanceType"), @"appearanceType"}];
  v5 = [(SBHIconImageAppearance *)self tintColor];
  [v4 encodeObject:v5 forKey:@"tintColor"];
}

- (SBHIconImageAppearance)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"appearanceType"];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"tintColor"];

  v8 = [(SBHIconImageAppearance *)self initWithAppearanceType:v5 tintColor:v7];
  return v8;
}

- (id)succinctDescription
{
  v2 = [(SBHIconImageAppearance *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconImageAppearance *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconImageAppearance *)self succinctDescriptionBuilder];
  v5 = [(SBHIconImageAppearance *)self tintColor];
  v6 = [v4 appendObject:v5 withName:@"tintColor" skipIfNil:1];

  return v4;
}

@end