@interface PLKUILegibilitySettingsBackgroundContentDescriptor
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeForContentSize:(CGSize)a3;
- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)a3 strength:(double)a4;
- (id)cacheKey;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (unint64_t)hash;
- (void)plk_renderWithContext:(id)a3;
@end

@implementation PLKUILegibilitySettingsBackgroundContentDescriptor

- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)a3 strength:(double)a4
{
  v6 = a3;
  v7 = [v6 shadowColor];
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v8 = [(PLKLegibilityContentDescriptor *)&v11 initWithContentColor:v7];

  if (v8)
  {
    v9 = v6;
    if (!v6)
    {
      v9 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    }

    objc_storeStrong(&v8->_legibilitySettings, v9);
    if (!v6)
    {
    }

    v8->_strength = a4;
  }

  return v8;
}

- (CGSize)sizeForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = MEMORY[0x277D755B8];
  v6 = [(_UILegibilitySettings *)self->_legibilitySettings style];

  [v5 _legibilityImageSizeForSize:v6 style:{width, height}];
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
    if ([(PLKLegibilityBackgroundContentDescriptor *)&v16 isEqual:v4])
    {
      v5 = objc_opt_class();
      v6 = v4;
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

      v10 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)v9 legibilitySettings];
      v11 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
      if ([v10 isEqual:v11])
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  v5 = [v3 appendObject:v4];

  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  *&v6 = v6;
  v7 = [v3 appendFloat:v6];
  v8 = [v3 hash];

  return v8;
}

- (id)cacheKey
{
  v13[2] = *MEMORY[0x277D85DE8];
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
    v13[0] = v5;
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

- (void)plk_renderWithContext:(id)a3
{
  v6 = [a3 currentImage];
  [v6 size];
  v4 = [v6 plk_isAlphaMask];
  v5 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  [v6 _drawImageForLegibilitySettings:v5 strength:v4 size:? alphaOnly:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v4 = [(PLKLegibilityBackgroundContentDescriptor *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_legibilitySettings withName:@"legibilitySettings"];
  v6 = [v4 appendFloat:@"strength" withName:self->_strength];
  v7 = [v4 appendObject:self->_cacheKey withName:@"cacheKey"];
  v8 = [v4 appendBool:-[PLKUILegibilitySettingsBackgroundContentDescriptor usesUILegibility](self withName:{"usesUILegibility"), @"usesUILegibility"}];
  v9 = [v4 appendBool:-[PLKUILegibilitySettingsBackgroundContentDescriptor isRenderable](self withName:{"isRenderable"), @"isRenderable"}];

  return v4;
}

@end