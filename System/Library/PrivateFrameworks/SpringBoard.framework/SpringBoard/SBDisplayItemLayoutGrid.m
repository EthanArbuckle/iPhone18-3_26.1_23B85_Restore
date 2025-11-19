@interface SBDisplayItemLayoutGrid
- (CGSize)maxGridSizeForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
- (CGSize)minGridSizeForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
- (CGSize)nearestGridSizeForProposedSize:(CGSize)a3 countOnStage:(unint64_t)a4 inBounds:(CGRect)a5 contentOrientation:(int64_t)a6 layoutRestrictionInfo:(id)a7 screenScale:(double)a8 windowingConfiguration:(id)a9;
- (SBDisplayItemLayoutGrid)init;
- (id)_gridForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
- (id)allGridHeightsForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
- (id)allGridWidthsForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (CGSize)nearestGridSizeForProposedSize:(CGSize)a3 countOnStage:(unint64_t)a4 inBounds:(CGRect)a5 contentOrientation:(int64_t)a6 layoutRestrictionInfo:(id)a7 screenScale:(double)a8 windowingConfiguration:(id)a9
{
  height = a3.height;
  width = a3.width;
  v12 = [(SBDisplayItemLayoutGrid *)self _gridForBounds:a6 contentOrientation:a7 layoutRestrictionInfo:a9 screenScale:a5.origin.x windowingConfiguration:a5.origin.y, a5.size.width, a5.size.height, a8];
  [v12 nearestGridSizeForSize:a4 countOnStage:{width, height}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)minGridSizeForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  v7 = [(SBDisplayItemLayoutGrid *)self _gridForBounds:a4 contentOrientation:a5 layoutRestrictionInfo:a7 screenScale:a3.origin.x windowingConfiguration:a3.origin.y, a3.size.width, a3.size.height, a6];
  [v7 minSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)maxGridSizeForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  v7 = [(SBDisplayItemLayoutGrid *)self _gridForBounds:a4 contentOrientation:a5 layoutRestrictionInfo:a7 screenScale:a3.origin.x windowingConfiguration:a3.origin.y, a3.size.width, a3.size.height, a6];
  [v7 maxSize];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)allGridWidthsForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  v7 = [(SBDisplayItemLayoutGrid *)self _gridForBounds:a4 contentOrientation:a5 layoutRestrictionInfo:a7 screenScale:a3.origin.x windowingConfiguration:a3.origin.y, a3.size.width, a3.size.height, a6];
  v8 = [v7 allWidths];

  return v8;
}

- (id)allGridHeightsForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  v7 = [(SBDisplayItemLayoutGrid *)self _gridForBounds:a4 contentOrientation:a5 layoutRestrictionInfo:a7 screenScale:a3.origin.x windowingConfiguration:a3.origin.y, a3.size.width, a3.size.height, a6];
  v8 = [v7 allHeights];

  return v8;
}

- (id)_gridForBounds:(CGRect)a3 contentOrientation:(int64_t)a4 layoutRestrictionInfo:(id)a5 screenScale:(double)a6 windowingConfiguration:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v16 = a7;
  v17 = [[_SBDisplayItemGridCacheKey alloc] initWithBounds:a4 orientation:v15 layoutRestrictionInfo:v16 screenScale:x windowingConfiguration:y, width, height, a6];
  v18 = [(NSMutableDictionary *)self->_gridCache objectForKey:v17];
  if (!v18)
  {
    v19 = [v15 layoutRestrictions];
    if (!v19)
    {
      if ([v16 isFlexibleWindowingEnabled])
      {
        v28 = _SBDisplayItemFreeFormGrid;
      }

      else
      {
        v28 = _SBDisplayItemFlexibleGrid;
      }

      v29 = [[v28 alloc] initWithBounds:v16 screenScale:x windowingConfiguration:{y, width, height, a6}];
      goto LABEL_21;
    }

    v20 = v19;
    if ((v19 & 4) != 0)
    {
      v25 = [_SBDisplayItemSingleSizeGrid alloc];
      v26 = width;
      v27 = height;
    }

    else
    {
      if ((v19 & 2) != 0)
      {
        [v15 restrictedSize];
        if ((a4 - 3) >= 2)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        if ((a4 - 3) >= 2)
        {
          v33 = v30;
        }

        else
        {
          v33 = v31;
        }

        v29 = [[_SBDisplayItemFixedAspectGrid alloc] initWithBounds:(v20 & 8) == 0 fixedSize:v16 screenScale:(v20 >> 4) & 1 supportsOrthogonalSizes:x windowingConfiguration:y allowsLetterboxing:width, height, v33, v32, a6];
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

    v29 = [(_SBDisplayItemSingleSizeGrid *)v25 initWithSize:v26, v27];
LABEL_21:
    v18 = v29;
    [(NSMutableDictionary *)self->_gridCache setObject:v29 forKey:v17];
  }

  return v18;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDisplayItemLayoutGrid *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_gridCache withName:@"gridCache"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBDisplayItemLayoutGrid *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end