@interface PRPosterRenderingConfiguration
+ (PRPosterRenderingConfiguration)allocWithZone:(_NSZone *)a3;
+ (id)renderingConfigurationFromDictionaryRepresentation:(id)a3;
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterRenderingConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4;
- (PRPosterRenderingConfiguration)initWithRenderingConfiguration:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRPosterRenderingConfiguration

+ (PRPosterRenderingConfiguration)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PRPosterRenderingConfiguration *)PRImmutablePosterRenderingConfiguration allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PRPosterRenderingConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (PRPosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_opt_self();
  v8 = [(PRPosterRenderingConfiguration *)self isMemberOfClass:v7];

  if (v8)
  {
    v9 = [[PRImmutablePosterRenderingConfiguration alloc] initWithDepthEffectDisabled:v5 motionEffectsDisabled:v4];
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

- (PRPosterRenderingConfiguration)initWithRenderingConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 isDepthEffectDisabled];
  v6 = [v4 areMotionEffectsDisabled];

  return [(PRPosterRenderingConfiguration *)self initWithDepthEffectDisabled:v5 motionEffectsDisabled:v6];
}

+ (id)renderingConfigurationFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"depthEffectDisabled"];
  if (v4)
  {
    v5 = [v3 bs_BOOLForKey:@"depthEffectDisabled"];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v3 objectForKey:@"motionEffectsDisabled"];
  if (v6)
  {
    v7 = [v3 bs_BOOLForKey:@"motionEffectsDisabled"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[PRPosterRenderingConfiguration alloc] initWithDepthEffectDisabled:v5 motionEffectsDisabled:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
      if (v8 == [(PRPosterRenderingConfiguration *)v7 isDepthEffectDisabled])
      {
        v10 = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
        v9 = v10 ^ [(PRPosterRenderingConfiguration *)v7 areMotionEffectsDisabled]^ 1;
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
  v3 = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
  v4 = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__PRPosterRenderingConfiguration_description__block_invoke;
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
  v4 = [(PRPosterRenderingConfiguration *)PRMutablePosterRenderingConfiguration allocWithZone:a3];

  return [(PRPosterRenderingConfiguration *)v4 initWithRenderingConfiguration:self];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  v4 = [(PRPosterRenderingConfiguration *)self isDepthEffectDisabled];
  [v6 encodeBool:v4 forKey:*MEMORY[0x1E69C54D0]];
  v5 = [(PRPosterRenderingConfiguration *)self areMotionEffectsDisabled];
  [v6 encodeBool:v5 forKey:*MEMORY[0x1E69C54C8]];
}

- (PRPosterRenderingConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:*MEMORY[0x1E69C54D0]];
  v6 = *MEMORY[0x1E69C54C8];
  if ([v4 containsValueForKey:*MEMORY[0x1E69C54C8]])
  {
    v7 = [v4 decodeBoolForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PRPosterRenderingConfiguration *)self initWithDepthEffectDisabled:v5 motionEffectsDisabled:v7];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendBool:-[PRPosterRenderingConfiguration isDepthEffectDisabled](self withName:{"isDepthEffectDisabled"), @"depthEffectDisabled"}];
  v5 = [v6 appendBool:-[PRPosterRenderingConfiguration areMotionEffectsDisabled](self withName:{"areMotionEffectsDisabled"), @"motionEffectsDisabled"}];
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDB24();
  v4 = a3;
  sub_1A8BDDB14();
}

@end