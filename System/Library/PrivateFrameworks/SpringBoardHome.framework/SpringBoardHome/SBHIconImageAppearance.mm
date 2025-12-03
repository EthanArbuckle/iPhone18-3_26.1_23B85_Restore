@interface SBHIconImageAppearance
+ (SBHIconImageAppearance)allocWithZone:(_NSZone *)zone;
+ (SBHIconImageAppearance)clearDarkAppearance;
+ (SBHIconImageAppearance)clearLightAppearance;
+ (SBHIconImageAppearance)darkAppearance;
+ (SBHIconImageAppearance)lightAppearance;
+ (SBHIconImageAppearance)tintableAppearance;
+ (id)clearAppearanceForUserInterfaceStyle:(int64_t)style;
+ (id)colorAppearanceForUserInterfaceStyle:(int64_t)style;
+ (id)sharedInstanceForAppearanceType:(int64_t)type;
+ (id)tintedDarkAppearanceWithTintColor:(id)color;
+ (id)tintedLightAppearanceWithTintColor:(id)color;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SBHIconImageAppearance)appearanceWithTintColor:(id)color;
- (SBHIconImageAppearance)initWithAppearanceType:(int64_t)type tintColor:(id)color;
- (SBHIconImageAppearance)initWithBSXPCCoder:(id)coder;
- (SBHIconImageAppearance)initWithCoder:(id)coder;
- (UIColor)opaqueTintColor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)iconGlassUserInterfaceStyle;
- (int64_t)userInterfaceStyle;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

  if (v3 == self)
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

+ (id)colorAppearanceForUserInterfaceStyle:(int64_t)style
{
  if (style == 2)
  {
    [self darkAppearance];
  }

  else
  {
    [self lightAppearance];
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

+ (id)clearAppearanceForUserInterfaceStyle:(int64_t)style
{
  if (style == 2)
  {
    [self clearDarkAppearance];
  }

  else
  {
    [self clearLightAppearance];
  }
  v3 = ;

  return v3;
}

+ (id)tintedLightAppearanceWithTintColor:(id)color
{
  colorCopy = color;
  v4 = [(SBHTintedIconImageAppearance *)[SBHTintedLightIconImageAppearance alloc] initWithAppearanceType:4 tintColor:colorCopy];

  return v4;
}

+ (id)tintedDarkAppearanceWithTintColor:(id)color
{
  colorCopy = color;
  v4 = [(SBHTintedIconImageAppearance *)[SBHTintedDarkIconImageAppearance alloc] initWithAppearanceType:5 tintColor:colorCopy];

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

+ (id)sharedInstanceForAppearanceType:(int64_t)type
{
  darkAppearance = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        darkAppearance = [self darkAppearance];
      }
    }

    else
    {
      darkAppearance = [self lightAppearance];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        darkAppearance = [self clearLightAppearance];
        break;
      case 3:
        darkAppearance = [self clearDarkAppearance];
        break;
      case 6:
        darkAppearance = [self tintableAppearance];
        break;
    }
  }

  return darkAppearance;
}

+ (SBHIconImageAppearance)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {
    v7 = reusablePlaceholderImageAppearance;

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SBHIconImageAppearance;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
  }
}

- (SBHIconImageAppearance)initWithAppearanceType:(int64_t)type tintColor:(id)color
{
  colorCopy = color;
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

  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v12 = +[SBHIconImageAppearance darkAppearance];
      }

      else
      {
        if (type != 2)
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
    if (type > 4)
    {
      if (type != 5)
      {
        if (type != 6)
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

    if (type != 3)
    {
      v10 = [SBHTintedLightIconImageAppearance alloc];
      v11 = 4;
LABEL_20:
      v12 = [(SBHTintedIconImageAppearance *)v10 initWithAppearanceType:v11 tintColor:colorCopy];
      goto LABEL_22;
    }

    v12 = +[SBHIconImageAppearance clearDarkAppearance];
  }

LABEL_22:
  type = v12;
LABEL_23:

  return type;
}

- (UIColor)opaqueTintColor
{
  tintColor = [(SBHIconImageAppearance *)self tintColor];
  v3 = tintColor;
  if (tintColor)
  {
    v4 = SBHOpaqueTintColorFromTintColor(tintColor);
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

- (SBHIconImageAppearance)appearanceWithTintColor:(id)color
{
  colorCopy = color;
  appearanceType = [(SBHIconImageAppearance *)self appearanceType];
  if ((appearanceType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithAppearanceType:appearanceType tintColor:colorCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  appearanceType = [(SBHIconImageAppearance *)self appearanceType];
  tintColor = [(SBHIconImageAppearance *)self tintColor];
  v5 = [tintColor hash];

  return v5 + appearanceType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      appearanceType = [(SBHIconImageAppearance *)self appearanceType];
      if (appearanceType == [(SBHIconImageAppearance *)v7 appearanceType])
      {
        tintColor = [(SBHIconImageAppearance *)self tintColor];
        tintColor2 = [(SBHIconImageAppearance *)v7 tintColor];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SBHIconImageAppearance appearanceType](self forKey:{"appearanceType"), @"appearanceType"}];
  tintColor = [(SBHIconImageAppearance *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBHIconImageAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"appearanceType"];
  if (v5 > 6)
  {
    selfCopy = 0;
  }

  else
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"tintColor"];

    self = [(SBHIconImageAppearance *)self initWithAppearanceType:v6 tintColor:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SBHIconImageAppearance appearanceType](self forKey:{"appearanceType"), @"appearanceType"}];
  tintColor = [(SBHIconImageAppearance *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (SBHIconImageAppearance)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"appearanceType"];
  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"tintColor"];

  v8 = [(SBHIconImageAppearance *)self initWithAppearanceType:v5 tintColor:v7];
  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconImageAppearance *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconImageAppearance *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconImageAppearance *)self succinctDescriptionBuilder];
  tintColor = [(SBHIconImageAppearance *)self tintColor];
  v6 = [succinctDescriptionBuilder appendObject:tintColor withName:@"tintColor" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end