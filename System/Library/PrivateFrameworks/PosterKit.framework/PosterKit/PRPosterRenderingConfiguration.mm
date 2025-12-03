@interface PRPosterRenderingConfiguration
+ (PRPosterRenderingConfiguration)allocWithZone:(_NSZone *)zone;
+ (id)renderingConfigurationFromDictionaryRepresentation:(id)representation;
+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterRenderingConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled;
- (PRPosterRenderingConfiguration)initWithRenderingConfiguration:(id)configuration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRPosterRenderingConfiguration

+ (PRPosterRenderingConfiguration)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PRPosterRenderingConfiguration *)PRImmutablePosterRenderingConfiguration allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PRPosterRenderingConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (PRPosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled
{
  effectsDisabledCopy = effectsDisabled;
  disabledCopy = disabled;
  v7 = objc_opt_self();
  v8 = [(PRPosterRenderingConfiguration *)self isMemberOfClass:v7];

  if (v8)
  {
    v9 = [[PRImmutablePosterRenderingConfiguration alloc] initWithDepthEffectDisabled:disabledCopy motionEffectsDisabled:effectsDisabledCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PRPosterRenderingConfiguration;
    v9 = [(PRPosterRenderingConfiguration *)&v12 init];
    self = &v9->super;
  }

  p_super = &v9->super;

  return p_super;
}

- (PRPosterRenderingConfiguration)initWithRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  isDepthEffectDisabled = [configurationCopy isDepthEffectDisabled];
  areMotionEffectsDisabled = [configurationCopy areMotionEffectsDisabled];

  return [(PRPosterRenderingConfiguration *)self initWithDepthEffectDisabled:isDepthEffectDisabled motionEffectsDisabled:areMotionEffectsDisabled];
}

+ (id)renderingConfigurationFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"depthEffectDisabled"];
  if (v4)
  {
    v5 = [representationCopy bs_BOOLForKey:@"depthEffectDisabled"];
  }

  else
  {
    v5 = 1;
  }

  v6 = [representationCopy objectForKey:@"motionEffectsDisabled"];
  if (v6)
  {
    v7 = [representationCopy bs_BOOLForKey:@"motionEffectsDisabled"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[PRPosterRenderingConfiguration alloc] initWithDepthEffectDisabled:v5 motionEffectsDisabled:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      isDepthEffectDisabled = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
      if (isDepthEffectDisabled == [(PRPosterRenderingConfiguration *)v7 isDepthEffectDisabled])
      {
        areMotionEffectsDisabled = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
        v9 = areMotionEffectsDisabled ^ [(PRPosterRenderingConfiguration *)v7 areMotionEffectsDisabled]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  isDepthEffectDisabled = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
  areMotionEffectsDisabled = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
  v5 = 2;
  if (!areMotionEffectsDisabled)
  {
    v5 = 0;
  }

  return v5 | isDepthEffectDisabled;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__PRPosterRenderingConfiguration_description__block_invoke;
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
  v4 = [(PRPosterRenderingConfiguration *)PRMutablePosterRenderingConfiguration allocWithZone:zone];

  return [(PRPosterRenderingConfiguration *)v4 initWithRenderingConfiguration:self];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  isDepthEffectDisabled = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
  [coderCopy encodeBool:isDepthEffectDisabled forKey:*MEMORY[0x1E69C54D0]];
  areMotionEffectsDisabled = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
  [coderCopy encodeBool:areMotionEffectsDisabled forKey:*MEMORY[0x1E69C54C8]];
}

- (PRPosterRenderingConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C54D0]];
  v6 = *MEMORY[0x1E69C54C8];
  if ([coderCopy containsValueForKey:*MEMORY[0x1E69C54C8]])
  {
    v7 = [coderCopy decodeBoolForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PRPosterRenderingConfiguration *)self initWithDepthEffectDisabled:v5 motionEffectsDisabled:v7];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendBool:-[PRPosterRenderingConfiguration isDepthEffectDisabled](self withName:{"isDepthEffectDisabled"), @"depthEffectDisabled"}];
  v5 = [formatterCopy appendBool:-[PRPosterRenderingConfiguration areMotionEffectsDisabled](self withName:{"areMotionEffectsDisabled"), @"motionEffectsDisabled"}];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver
{
  sub_1A8BDDB24();
  unarchiverCopy = unarchiver;
  sub_1A8BDDB14();
}

@end