@interface PREditingLook
+ (PREditingLook)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditingLook)initWithDisplayName:(id)name initialTimeFont:(id)font initialTitleColor:(id)color;
- (PREditingLook)initWithDisplayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color;
- (PREditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFont:(id)font initialTitleColor:(id)color;
- (PREditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color;
- (PREditingLook)initWithLook:(id)look;
- (PRPosterColor)initialTitleColor;
- (PRTimeFontConfiguration)initialTimeFontConfiguration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)titleStyleConfigurationWithExtensionBundle:(id)bundle luminance:(double)luminance timeNumberingSystem:(id)system;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation PREditingLook

- (id)titleStyleConfigurationWithExtensionBundle:(id)bundle luminance:(double)luminance timeNumberingSystem:(id)system
{
  bundleCopy = bundle;
  systemCopy = system;
  initialTimeFontConfiguration = [(PREditingLook *)self initialTimeFontConfiguration];
  initialTitleColor = [(PREditingLook *)self initialTitleColor];
  timeFontIdentifier = [initialTimeFontConfiguration timeFontIdentifier];
  [initialTimeFontConfiguration weight];
  v14 = v13;
  customFont = [initialTimeFontConfiguration customFont];
  if (customFont)
  {
    v16 = [[PRPosterCustomTimeFontConfiguration alloc] initWithFont:customFont extensionBundle:bundleCopy];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if (timeFontIdentifier)
  {
    v16 = [[PRPosterSystemTimeFontConfiguration alloc] initWithTimeFontIdentifier:timeFontIdentifier weight:1 systemItem:v14];
    goto LABEL_5;
  }

  v17 = 0;
LABEL_6:
  v18 = +[PRPreferences sharedPreferences];
  isAlternateCalendarEnabled = [v18 isAlternateCalendarEnabled];

  v20 = [PRPosterTitleStyleConfiguration alloc];
  groupName = [(PREditingLook *)self groupName];
  LOBYTE(v24) = isAlternateCalendarEnabled;
  v22 = [(PRPosterTitleStyleConfiguration *)v20 initWithTimeFontConfiguration:v17 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:initialTitleColor timeNumberingSystem:systemCopy userConfigured:0 contentsLuminance:luminance alternateDateEnabled:v24 groupName:groupName];

  return v22;
}

+ (PREditingLook)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PREditingLook *)PRImmutableEditingLook allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PREditingLook;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (PREditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color
{
  identifierCopy = identifier;
  nameCopy = name;
  configurationCopy = configuration;
  colorCopy = color;
  v14 = objc_opt_self();
  v15 = [(PREditingLook *)self isMemberOfClass:v14];

  if (v15)
  {
    v16 = [[PRImmutableEditingLook alloc] initWithIdentifier:identifierCopy displayName:nameCopy initialTimeFontConfiguration:configurationCopy initialTitleColor:colorCopy];
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

- (PREditingLook)initWithDisplayName:(id)name initialTimeFontConfiguration:(id)configuration initialTitleColor:(id)color
{
  v8 = MEMORY[0x1E696AFB0];
  colorCopy = color;
  configurationCopy = configuration;
  nameCopy = name;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(PREditingLook *)self initWithIdentifier:uUIDString displayName:nameCopy initialTimeFontConfiguration:configurationCopy initialTitleColor:colorCopy];

  return v14;
}

- (PREditingLook)initWithIdentifier:(id)identifier displayName:(id)name initialTimeFont:(id)font initialTitleColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  nameCopy = name;
  identifierCopy = identifier;
  if (fontCopy)
  {
    v14 = [[PRTimeFontConfiguration alloc] initWithCustomFont:fontCopy];
    v15 = [(PREditingLook *)self initWithIdentifier:identifierCopy displayName:nameCopy initialTimeFontConfiguration:v14 initialTitleColor:colorCopy];

    v16 = v15;
  }

  else
  {
    v17 = [(PREditingLook *)self initWithIdentifier:identifierCopy displayName:nameCopy initialTimeFontConfiguration:0 initialTitleColor:colorCopy];

    v16 = v17;
  }

  return v16;
}

- (PREditingLook)initWithDisplayName:(id)name initialTimeFont:(id)font initialTitleColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  nameCopy = name;
  if (fontCopy)
  {
    v11 = [[PRTimeFontConfiguration alloc] initWithCustomFont:fontCopy];
    v12 = [(PREditingLook *)self initWithDisplayName:nameCopy initialTimeFontConfiguration:v11 initialTitleColor:colorCopy];

    v13 = v12;
  }

  else
  {
    v14 = [(PREditingLook *)self initWithDisplayName:nameCopy initialTimeFontConfiguration:0 initialTitleColor:colorCopy];

    v13 = v14;
  }

  return v13;
}

- (PREditingLook)initWithLook:(id)look
{
  lookCopy = look;
  identifier = [lookCopy identifier];
  displayName = [lookCopy displayName];
  initialTimeFontConfiguration = [lookCopy initialTimeFontConfiguration];
  initialTitleColor = [lookCopy initialTitleColor];

  v9 = [(PREditingLook *)self initWithIdentifier:identifier displayName:displayName initialTimeFontConfiguration:initialTimeFontConfiguration initialTitleColor:initialTitleColor];
  return v9;
}

- (PRTimeFontConfiguration)initialTimeFontConfiguration
{
  initialProperties = [(PREditingLook *)self initialProperties];
  timeFontConfiguration = [initialProperties timeFontConfiguration];

  return timeFontConfiguration;
}

- (PRPosterColor)initialTitleColor
{
  initialProperties = [(PREditingLook *)self initialProperties];
  titlePosterColor = [initialProperties titlePosterColor];

  return titlePosterColor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = [(PREditingLook *)self identifier];
      identifier2 = [(PREditingLook *)v7 identifier];
      v10 = BSEqualObjects();

      if (v10 && ([(PREditingLook *)self displayName], v11 = objc_claimAutoreleasedReturnValue(), [(PREditingLook *)v7 displayName], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13))
      {
        initialProperties = [(PREditingLook *)self initialProperties];
        initialProperties2 = [(PREditingLook *)v7 initialProperties];
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
  identifier = [(PREditingLook *)self identifier];
  v4 = [identifier hash];
  displayName = [(PREditingLook *)self displayName];
  v6 = [displayName hash] ^ v4;
  initialProperties = [(PREditingLook *)self initialProperties];
  v8 = [initialProperties hash];

  return v6 ^ v8;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__PREditingLook_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PREditingLook *)PRMutableEditingLook allocWithZone:zone];

  return [(PREditingLook *)v4 initWithLook:self];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PREditingLook *)self identifier];
  [formatterCopy appendString:identifier withName:@"identifier"];

  displayName = [(PREditingLook *)self displayName];
  [formatterCopy appendString:displayName withName:@"displayName"];

  initialProperties = [(PREditingLook *)self initialProperties];
  v7 = [formatterCopy appendObject:initialProperties withName:@"initialProperties"];
}

@end