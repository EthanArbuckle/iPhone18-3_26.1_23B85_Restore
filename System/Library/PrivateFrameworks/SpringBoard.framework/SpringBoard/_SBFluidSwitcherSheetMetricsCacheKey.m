@interface _SBFluidSwitcherSheetMetricsCacheKey
- (BOOL)isEqual:(id)a3;
- (_SBFluidSwitcherSheetMetricsCacheKey)initWithBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8;
@end

@implementation _SBFluidSwitcherSheetMetricsCacheKey

- (_SBFluidSwitcherSheetMetricsCacheKey)initWithBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8
{
  height = a3.height;
  width = a3.width;
  v16 = a8;
  v27.receiver = self;
  v27.super_class = _SBFluidSwitcherSheetMetricsCacheKey;
  v17 = [(_SBFluidSwitcherSheetMetricsCacheKey *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_boundsSize.width = width;
    v17->_boundsSize.height = height;
    v17->_interfaceOrientation = a4;
    v17->_displayScale = a7;
    objc_storeStrong(&v17->_displayEdgeInfo, a8);
    v18->_userInterfaceIdiom = a6;
    v18->_configuration = a5;
    v19 = [MEMORY[0x277CF0C40] builder];
    v20 = [v19 appendCGSize:{v18->_boundsSize.width, v18->_boundsSize.height}];
    v21 = [v19 appendInteger:v18->_interfaceOrientation];
    v22 = [v19 appendCGFloat:v18->_displayScale];
    v23 = [v19 appendObject:v18->_displayEdgeInfo];
    v24 = [v19 appendInteger:v18->_userInterfaceIdiom];
    v25 = [v19 appendInteger:v18->_configuration];
    v18->_cachedHash = [v19 hash];
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && SBSizeEqualsSize() && SBFloatEqualsFloat() && self->_interfaceOrientation == v4->_interfaceOrientation && BSEqualObjects() && self->_userInterfaceIdiom == v4->_userInterfaceIdiom && self->_configuration == v4->_configuration;
  }

  return v5;
}

@end