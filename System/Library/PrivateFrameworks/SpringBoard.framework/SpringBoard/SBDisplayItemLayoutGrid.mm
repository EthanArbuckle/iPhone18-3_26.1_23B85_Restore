@interface SBDisplayItemLayoutGrid
- (CGSize)maxGridSizeForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (CGSize)minGridSizeForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (CGSize)nearestGridSizeForProposedSize:(CGSize)size countOnStage:(unint64_t)stage inBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (SBDisplayItemLayoutGrid)init;
- (id)_gridForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (id)allGridHeightsForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (id)allGridWidthsForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBDisplayItemLayoutGrid

- (SBDisplayItemLayoutGrid)init
{
  v6.receiver = self;
  v6.super_class = SBDisplayItemLayoutGrid;
  v2 = [(SBDisplayItemLayoutGrid *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    gridCache = v2->_gridCache;
    v2->_gridCache = v3;
  }

  return v2;
}

- (CGSize)nearestGridSizeForProposedSize:(CGSize)size countOnStage:(unint64_t)stage inBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = size.height;
  width = size.width;
  scale = [(SBDisplayItemLayoutGrid *)self _gridForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:bounds.origin.x windowingConfiguration:bounds.origin.y, bounds.size.width, bounds.size.height, scale];
  [scale nearestGridSizeForSize:stage countOnStage:{width, height}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)minGridSizeForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  scale = [(SBDisplayItemLayoutGrid *)self _gridForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:bounds.origin.x windowingConfiguration:bounds.origin.y, bounds.size.width, bounds.size.height, scale];
  [scale minSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)maxGridSizeForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  scale = [(SBDisplayItemLayoutGrid *)self _gridForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:bounds.origin.x windowingConfiguration:bounds.origin.y, bounds.size.width, bounds.size.height, scale];
  [scale maxSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)allGridWidthsForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  scale = [(SBDisplayItemLayoutGrid *)self _gridForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:bounds.origin.x windowingConfiguration:bounds.origin.y, bounds.size.width, bounds.size.height, scale];
  allWidths = [scale allWidths];

  return allWidths;
}

- (id)allGridHeightsForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  scale = [(SBDisplayItemLayoutGrid *)self _gridForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:bounds.origin.x windowingConfiguration:bounds.origin.y, bounds.size.width, bounds.size.height, scale];
  allHeights = [scale allHeights];

  return allHeights;
}

- (id)_gridForBounds:(CGRect)bounds contentOrientation:(int64_t)orientation layoutRestrictionInfo:(id)info screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  infoCopy = info;
  configurationCopy = configuration;
  scale = [[_SBDisplayItemGridCacheKey alloc] initWithBounds:orientation orientation:infoCopy layoutRestrictionInfo:configurationCopy screenScale:x windowingConfiguration:y, width, height, scale];
  v18 = [(NSMutableDictionary *)self->_gridCache objectForKey:scale];
  if (!v18)
  {
    layoutRestrictions = [infoCopy layoutRestrictions];
    if (!layoutRestrictions)
    {
      if ([configurationCopy isFlexibleWindowingEnabled])
      {
        v28 = _SBDisplayItemFreeFormGrid;
      }

      else
      {
        v28 = _SBDisplayItemFlexibleGrid;
      }

      scale2 = [[v28 alloc] initWithBounds:configurationCopy screenScale:x windowingConfiguration:{y, width, height, scale}];
      goto LABEL_21;
    }

    v20 = layoutRestrictions;
    if ((layoutRestrictions & 4) != 0)
    {
      v25 = [_SBDisplayItemSingleSizeGrid alloc];
      v26 = width;
      v27 = height;
    }

    else
    {
      if ((layoutRestrictions & 2) != 0)
      {
        [infoCopy restrictedSize];
        if ((orientation - 3) >= 2)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        if ((orientation - 3) >= 2)
        {
          v33 = v30;
        }

        else
        {
          v33 = v31;
        }

        scale2 = [[_SBDisplayItemFixedAspectGrid alloc] initWithBounds:(v20 & 8) == 0 fixedSize:configurationCopy screenScale:(v20 >> 4) & 1 supportsOrthogonalSizes:x windowingConfiguration:y allowsLetterboxing:width, height, v33, v32, scale];
        goto LABEL_21;
      }

      v21 = SBLogCommon();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

      if (v22)
      {
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v23 = NSStringFromCGRect(v36);
        v24 = BSInterfaceOrientationDescription();
        NSLog(&cfstr_UnsupportedLay_0.isa, v20, v23, v24);
      }

      v25 = [_SBDisplayItemSingleSizeGrid alloc];
      v26 = 276.0;
      v27 = 314.0;
    }

    scale2 = [(_SBDisplayItemSingleSizeGrid *)v25 initWithSize:v26, v27];
LABEL_21:
    v18 = scale2;
    [(NSMutableDictionary *)self->_gridCache setObject:scale2 forKey:scale];
  }

  return v18;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDisplayItemLayoutGrid *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_gridCache withName:@"gridCache"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDisplayItemLayoutGrid *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end