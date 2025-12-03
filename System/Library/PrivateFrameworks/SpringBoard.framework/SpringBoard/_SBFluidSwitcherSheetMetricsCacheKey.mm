@interface _SBFluidSwitcherSheetMetricsCacheKey
- (BOOL)isEqual:(id)equal;
- (_SBFluidSwitcherSheetMetricsCacheKey)initWithBoundsSize:(CGSize)size interfaceOrientation:(int64_t)orientation configuration:(int64_t)configuration userInterfaceIdiom:(int64_t)idiom displayScale:(double)scale displayEdgeInfo:(id)info;
@end

@implementation _SBFluidSwitcherSheetMetricsCacheKey

- (_SBFluidSwitcherSheetMetricsCacheKey)initWithBoundsSize:(CGSize)size interfaceOrientation:(int64_t)orientation configuration:(int64_t)configuration userInterfaceIdiom:(int64_t)idiom displayScale:(double)scale displayEdgeInfo:(id)info
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = _SBFluidSwitcherSheetMetricsCacheKey;
  v17 = [(_SBFluidSwitcherSheetMetricsCacheKey *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_boundsSize.width = width;
    v17->_boundsSize.height = height;
    v17->_interfaceOrientation = orientation;
    v17->_displayScale = scale;
    objc_storeStrong(&v17->_displayEdgeInfo, info);
    v18->_userInterfaceIdiom = idiom;
    v18->_configuration = configuration;
    builder = [MEMORY[0x277CF0C40] builder];
    v20 = [builder appendCGSize:{v18->_boundsSize.width, v18->_boundsSize.height}];
    v21 = [builder appendInteger:v18->_interfaceOrientation];
    v22 = [builder appendCGFloat:v18->_displayScale];
    v23 = [builder appendObject:v18->_displayEdgeInfo];
    v24 = [builder appendInteger:v18->_userInterfaceIdiom];
    v25 = [builder appendInteger:v18->_configuration];
    v18->_cachedHash = [builder hash];
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && SBSizeEqualsSize() && SBFloatEqualsFloat() && self->_interfaceOrientation == equalCopy->_interfaceOrientation && BSEqualObjects() && self->_userInterfaceIdiom == equalCopy->_userInterfaceIdiom && self->_configuration == equalCopy->_configuration;
  }

  return v5;
}

@end