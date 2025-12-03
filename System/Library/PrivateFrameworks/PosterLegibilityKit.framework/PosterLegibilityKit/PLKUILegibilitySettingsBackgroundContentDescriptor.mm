@interface PLKUILegibilitySettingsBackgroundContentDescriptor
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeForContentSize:(CGSize)size;
- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)settings strength:(double)strength;
- (id)cacheKey;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (unint64_t)hash;
- (void)plk_renderWithContext:(id)context;
@end

@implementation PLKUILegibilitySettingsBackgroundContentDescriptor

- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)settings strength:(double)strength
{
  settingsCopy = settings;
  shadowColor = [settingsCopy shadowColor];
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v8 = [(PLKLegibilityContentDescriptor *)&v11 initWithContentColor:shadowColor];

  if (v8)
  {
    v9 = settingsCopy;
    if (!settingsCopy)
    {
      v9 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    }

    objc_storeStrong(&v8->_legibilitySettings, v9);
    if (!settingsCopy)
    {
    }

    v8->_strength = strength;
  }

  return v8;
}

- (CGSize)sizeForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = MEMORY[0x277D755B8];
  style = [(_UILegibilitySettings *)self->_legibilitySettings style];

  [v5 _legibilityImageSizeForSize:style style:{width, height}];
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
    if ([(PLKLegibilityBackgroundContentDescriptor *)&v16 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = equalCopy;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)v9 legibilitySettings];
      legibilitySettings2 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
      if ([legibilitySettings isEqual:legibilitySettings2])
      {
        [(PLKUILegibilitySettingsBackgroundContentDescriptor *)v9 strength];
        v13 = v12;
        [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
        v8 = v13 == v14;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  v5 = [builder appendObject:legibilitySettings];

  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  *&v6 = v6;
  v7 = [builder appendFloat:v6];
  v8 = [builder hash];

  return v8;
}

- (id)cacheKey
{
  v13[2] = *MEMORY[0x277D85DE8];
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = MEMORY[0x277CCACA8];
    legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
    v13[0] = legibilitySettings;
    v6 = MEMORY[0x277CCABB0];
    [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
    v7 = [v6 numberWithDouble:?];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [v4 plk_sha256HashForObject:v8 error:0];
    v10 = self->_cacheKey;
    self->_cacheKey = v9;

    cacheKey = self->_cacheKey;
  }

  v11 = *MEMORY[0x277D85DE8];

  return cacheKey;
}

- (void)plk_renderWithContext:(id)context
{
  currentImage = [context currentImage];
  [currentImage size];
  plk_isAlphaMask = [currentImage plk_isAlphaMask];
  legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  [currentImage _drawImageForLegibilitySettings:legibilitySettings strength:plk_isAlphaMask size:? alphaOnly:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v4 = [(PLKLegibilityBackgroundContentDescriptor *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_legibilitySettings withName:@"legibilitySettings"];
  v6 = [v4 appendFloat:@"strength" withName:self->_strength];
  v7 = [v4 appendObject:self->_cacheKey withName:@"cacheKey"];
  v8 = [v4 appendBool:-[PLKUILegibilitySettingsBackgroundContentDescriptor usesUILegibility](self withName:{"usesUILegibility"), @"usesUILegibility"}];
  v9 = [v4 appendBool:-[PLKUILegibilitySettingsBackgroundContentDescriptor isRenderable](self withName:{"isRenderable"), @"isRenderable"}];

  return v4;
}

@end