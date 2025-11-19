@interface PREditingLook
+ (PREditingLook)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PREditingLook)initWithDisplayName:(id)a3 initialTimeFont:(id)a4 initialTitleColor:(id)a5;
- (PREditingLook)initWithDisplayName:(id)a3 initialTimeFontConfiguration:(id)a4 initialTitleColor:(id)a5;
- (PREditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFont:(id)a5 initialTitleColor:(id)a6;
- (PREditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFontConfiguration:(id)a5 initialTitleColor:(id)a6;
- (PREditingLook)initWithLook:(id)a3;
- (PRPosterColor)initialTitleColor;
- (PRTimeFontConfiguration)initialTimeFontConfiguration;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)titleStyleConfigurationWithExtensionBundle:(id)a3 luminance:(double)a4 timeNumberingSystem:(id)a5;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation PREditingLook

- (id)titleStyleConfigurationWithExtensionBundle:(id)a3 luminance:(double)a4 timeNumberingSystem:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PREditingLook *)self initialTimeFontConfiguration];
  v11 = [(PREditingLook *)self initialTitleColor];
  v12 = [v10 timeFontIdentifier];
  [v10 weight];
  v14 = v13;
  v15 = [v10 customFont];
  if (v15)
  {
    v16 = [[PRPosterCustomTimeFontConfiguration alloc] initWithFont:v15 extensionBundle:v8];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if (v12)
  {
    v16 = [[PRPosterSystemTimeFontConfiguration alloc] initWithTimeFontIdentifier:v12 weight:1 systemItem:v14];
    goto LABEL_5;
  }

  v17 = 0;
LABEL_6:
  v18 = +[PRPreferences sharedPreferences];
  v19 = [v18 isAlternateCalendarEnabled];

  v20 = [PRPosterTitleStyleConfiguration alloc];
  v21 = [(PREditingLook *)self groupName];
  LOBYTE(v24) = v19;
  v22 = [(PRPosterTitleStyleConfiguration *)v20 initWithTimeFontConfiguration:v17 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:v11 timeNumberingSystem:v9 userConfigured:0 contentsLuminance:a4 alternateDateEnabled:v24 groupName:v21];

  return v22;
}

+ (PREditingLook)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PREditingLook *)PRImmutableEditingLook allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PREditingLook;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (PREditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFontConfiguration:(id)a5 initialTitleColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_self();
  v15 = [(PREditingLook *)self isMemberOfClass:v14];

  if (v15)
  {
    v16 = [[PRImmutableEditingLook alloc] initWithIdentifier:v10 displayName:v11 initialTimeFontConfiguration:v12 initialTitleColor:v13];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PREditingLook;
    v16 = [(PREditingLook *)&v19 init];
    self = &v16->super;
  }

  p_super = &v16->super;

  return p_super;
}

- (PREditingLook)initWithDisplayName:(id)a3 initialTimeFontConfiguration:(id)a4 initialTitleColor:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [(PREditingLook *)self initWithIdentifier:v13 displayName:v11 initialTimeFontConfiguration:v10 initialTitleColor:v9];

  return v14;
}

- (PREditingLook)initWithIdentifier:(id)a3 displayName:(id)a4 initialTimeFont:(id)a5 initialTitleColor:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  if (v10)
  {
    v14 = [[PRTimeFontConfiguration alloc] initWithCustomFont:v10];
    v15 = [(PREditingLook *)self initWithIdentifier:v13 displayName:v12 initialTimeFontConfiguration:v14 initialTitleColor:v11];

    v16 = v15;
  }

  else
  {
    v17 = [(PREditingLook *)self initWithIdentifier:v13 displayName:v12 initialTimeFontConfiguration:0 initialTitleColor:v11];

    v16 = v17;
  }

  return v16;
}

- (PREditingLook)initWithDisplayName:(id)a3 initialTimeFont:(id)a4 initialTitleColor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if (v8)
  {
    v11 = [[PRTimeFontConfiguration alloc] initWithCustomFont:v8];
    v12 = [(PREditingLook *)self initWithDisplayName:v10 initialTimeFontConfiguration:v11 initialTitleColor:v9];

    v13 = v12;
  }

  else
  {
    v14 = [(PREditingLook *)self initWithDisplayName:v10 initialTimeFontConfiguration:0 initialTitleColor:v9];

    v13 = v14;
  }

  return v13;
}

- (PREditingLook)initWithLook:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 displayName];
  v7 = [v4 initialTimeFontConfiguration];
  v8 = [v4 initialTitleColor];

  v9 = [(PREditingLook *)self initWithIdentifier:v5 displayName:v6 initialTimeFontConfiguration:v7 initialTitleColor:v8];
  return v9;
}

- (PRTimeFontConfiguration)initialTimeFontConfiguration
{
  v2 = [(PREditingLook *)self initialProperties];
  v3 = [v2 timeFontConfiguration];

  return v3;
}

- (PRPosterColor)initialTitleColor
{
  v2 = [(PREditingLook *)self initialProperties];
  v3 = [v2 titlePosterColor];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PREditingLook *)self identifier];
      v9 = [(PREditingLook *)v7 identifier];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditingLook *)self displayName], v11 = objc_claimAutoreleasedReturnValue(), [(PREditingLook *)v7 displayName], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13))
      {
        v14 = [(PREditingLook *)self initialProperties];
        v15 = [(PREditingLook *)v7 initialProperties];
        v16 = BSEqualObjects();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(PREditingLook *)self identifier];
  v4 = [v3 hash];
  v5 = [(PREditingLook *)self displayName];
  v6 = [v5 hash] ^ v4;
  v7 = [(PREditingLook *)self initialProperties];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__PREditingLook_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PREditingLook *)PRMutableEditingLook allocWithZone:a3];

  return [(PREditingLook *)v4 initWithLook:self];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PREditingLook *)self identifier];
  [v8 appendString:v4 withName:@"identifier"];

  v5 = [(PREditingLook *)self displayName];
  [v8 appendString:v5 withName:@"displayName"];

  v6 = [(PREditingLook *)self initialProperties];
  v7 = [v8 appendObject:v6 withName:@"initialProperties"];
}

@end