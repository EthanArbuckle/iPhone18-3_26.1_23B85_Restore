@interface PREditingLookProperties
+ (PREditingLookProperties)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditingLookProperties)initWithProperties:(id)properties;
- (PREditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation PREditingLookProperties

+ (PREditingLookProperties)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PREditingLookProperties *)PRImmutableEditingLookProperties allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PREditingLookProperties;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (PREditingLookProperties)initWithTimeFontConfiguration:(id)configuration titlePosterColor:(id)color
{
  configurationCopy = configuration;
  colorCopy = color;
  v8 = objc_opt_self();
  v9 = [(PREditingLookProperties *)self isMemberOfClass:v8];

  if (v9)
  {
    v10 = [[PRImmutableEditingLookProperties alloc] initWithTimeFontConfiguration:configurationCopy titlePosterColor:colorCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PREditingLookProperties;
    v10 = [(PREditingLookProperties *)&v13 init];
    self = &v10->super;
  }

  p_super = &v10->super;

  return p_super;
}

- (PREditingLookProperties)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  timeFontConfiguration = [propertiesCopy timeFontConfiguration];
  titlePosterColor = [propertiesCopy titlePosterColor];

  v7 = [(PREditingLookProperties *)self initWithTimeFontConfiguration:timeFontConfiguration titlePosterColor:titlePosterColor];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      timeFontConfiguration = [(PREditingLookProperties *)self timeFontConfiguration];
      timeFontConfiguration2 = [(PREditingLookProperties *)v7 timeFontConfiguration];
      v10 = BSEqualObjects();

      if (v10)
      {
        titlePosterColor = [(PREditingLookProperties *)self titlePosterColor];
        titlePosterColor2 = [(PREditingLookProperties *)v7 titlePosterColor];
        v13 = BSEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  timeFontConfiguration = [(PREditingLookProperties *)self timeFontConfiguration];
  v4 = [timeFontConfiguration hash];
  titlePosterColor = [(PREditingLookProperties *)self titlePosterColor];
  v6 = [titlePosterColor hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PREditingLookProperties_description__block_invoke;
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
  v4 = [(PREditingLookProperties *)PRMutableEditingLookProperties allocWithZone:zone];

  return [(PREditingLookProperties *)v4 initWithProperties:self];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  timeFontConfiguration = [(PREditingLookProperties *)self timeFontConfiguration];
  v5 = [formatterCopy appendObject:timeFontConfiguration withName:@"timeFontConfiguration"];

  titlePosterColor = [(PREditingLookProperties *)self titlePosterColor];
  v7 = [formatterCopy appendObject:titlePosterColor withName:@"titlePosterColor"];
}

@end