@interface _SBDisplayItemGridCacheKey
- (BOOL)isEqual:(id)a3;
- (_SBDisplayItemGridCacheKey)initWithBounds:(CGRect)a3 orientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
@end

@implementation _SBDisplayItemGridCacheKey

- (_SBDisplayItemGridCacheKey)initWithBounds:(CGRect)a3 orientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a5;
  v17 = a7;
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
    v18->_orientation = a4;
    objc_storeStrong(&v18->_layoutRestrictionInfo, a5);
    v19->_screenScale = a6;
    objc_storeStrong(&v19->_windowingConfiguration, a7);
    v20 = [MEMORY[0x277CF0C40] builder];
    v21 = [v20 appendCGRect:{v19->_bounds.origin.x, v19->_bounds.origin.y, v19->_bounds.size.width, v19->_bounds.size.height}];
    v22 = [v20 appendInteger:v19->_orientation];
    v23 = [v20 appendObject:v19->_layoutRestrictionInfo];
    v24 = [v20 appendCGFloat:v19->_screenScale];
    if (v19->_windowingConfiguration)
    {
      v25 = [v20 appendObject:?];
    }

    v19->_cachedHash = [v20 hash];
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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