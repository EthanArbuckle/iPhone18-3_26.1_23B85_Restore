@interface _SBDisplayItemGridCacheKey
- (BOOL)isEqual:(id)equal;
- (_SBDisplayItemGridCacheKey)initWithBounds:(CGRect)bounds orientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
@end

@implementation _SBDisplayItemGridCacheKey

- (_SBDisplayItemGridCacheKey)initWithBounds:(CGRect)bounds orientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  infoCopy = info;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = _SBDisplayItemGridCacheKey;
  v18 = [(_SBDisplayItemGridCacheKey *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_bounds.origin.x = x;
    v18->_bounds.origin.y = y;
    v18->_bounds.size.width = width;
    v18->_bounds.size.height = height;
    v18->_orientation = orientation;
    objc_storeStrong(&v18->_layoutRestrictionInfo, info);
    v19->_screenScale = scale;
    objc_storeStrong(&v19->_windowingConfiguration, configuration);
    builder = [MEMORY[0x277CF0C40] builder];
    v21 = [builder appendCGRect:{v19->_bounds.origin.x, v19->_bounds.origin.y, v19->_bounds.size.width, v19->_bounds.size.height}];
    v22 = [builder appendInteger:v19->_orientation];
    v23 = [builder appendObject:v19->_layoutRestrictionInfo];
    v24 = [builder appendCGFloat:v19->_screenScale];
    if (v19->_windowingConfiguration)
    {
      v25 = [builder appendObject:?];
    }

    v19->_cachedHash = [builder hash];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (CGRectEqualToRect(self->_bounds, v5->_bounds) && self->_orientation == v5->_orientation && BSEqualObjects() && self->_screenScale == v5->_screenScale)
      {
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end