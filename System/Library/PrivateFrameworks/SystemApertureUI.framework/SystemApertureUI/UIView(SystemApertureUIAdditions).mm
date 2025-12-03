@interface UIView(SystemApertureUIAdditions)
+ (id)_sauiBlurInputRadiusKeyPath;
+ (id)_sauiBlurKeyPath;
- (BOOL)isSauiBlurConfigured;
- (double)sauiBlurRadius;
- (void)_configureBlurFilterIfNecessary;
- (void)setSauiBlurRadius:()SystemApertureUIAdditions;
@end

@implementation UIView(SystemApertureUIAdditions)

- (void)_configureBlurFilterIfNecessary
{
  if (([self isSauiBlurConfigured] & 1) == 0)
  {
    layer = [self layer];
    v2 = objc_alloc(MEMORY[0x277CD9EA0]);
    v3 = [v2 initWithType:*MEMORY[0x277CDA328]];
    filters = [layer filters];
    v5 = [filters mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v8 = v7;

    [v8 addObject:v3];
    [layer setFilters:v8];
  }
}

- (BOOL)isSauiBlurConfigured
{
  layer = [self layer];
  _sauiBlurKeyPath = [objc_opt_class() _sauiBlurKeyPath];
  v3 = [layer valueForKeyPath:_sauiBlurKeyPath];
  v4 = v3 != 0;

  return v4;
}

+ (id)_sauiBlurKeyPath
{
  if (_sauiBlurKeyPath_onceToken != -1)
  {
    +[UIView(SystemApertureUIAdditions) _sauiBlurKeyPath];
  }

  v1 = _sauiBlurKeyPath___sauiBlurKeyPath;

  return v1;
}

+ (id)_sauiBlurInputRadiusKeyPath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__UIView_SystemApertureUIAdditions___sauiBlurInputRadiusKeyPath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sauiBlurInputRadiusKeyPath_onceToken != -1)
  {
    dispatch_once(&_sauiBlurInputRadiusKeyPath_onceToken, block);
  }

  v1 = _sauiBlurInputRadiusKeyPath___sauiBlurInputRadiusKeyPath;

  return v1;
}

- (double)sauiBlurRadius
{
  v2 = 0.0;
  if ([self isSauiBlurConfigured])
  {
    layer = [self layer];
    _sauiBlurInputRadiusKeyPath = [objc_opt_class() _sauiBlurInputRadiusKeyPath];
    v5 = [layer valueForKeyPath:_sauiBlurInputRadiusKeyPath];
    [v5 floatValue];
    v2 = v6;
  }

  return v2;
}

- (void)setSauiBlurRadius:()SystemApertureUIAdditions
{
  if (a2 > 0.0)
  {
    [self _configureBlurFilterIfNecessary];
  }

  if ([self isSauiBlurConfigured])
  {
    layer = [self layer];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    _sauiBlurInputRadiusKeyPath = [objc_opt_class() _sauiBlurInputRadiusKeyPath];
    [layer setValue:v4 forKeyPath:_sauiBlurInputRadiusKeyPath];
  }
}

@end