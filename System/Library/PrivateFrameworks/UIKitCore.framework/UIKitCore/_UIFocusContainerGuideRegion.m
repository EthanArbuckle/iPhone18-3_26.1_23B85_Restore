@interface _UIFocusContainerGuideRegion
- (BOOL)isEqual:(id)a3;
- (id)_fallbackFocusItemForMovementRequest:(id)a3 inFocusMap:(id)a4 withSnapshot:(id)a5;
- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4;
@end

@implementation _UIFocusContainerGuideRegion

- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIFocusContainerGuideRegion;
  v5 = [(_UIFocusGuideRegion *)&v9 _focusRegionWithAdjustedFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = [(_UIFocusContainerGuideRegion *)self fallbackRootRegionContainer];
  [v5 setFallbackRootRegionContainer:v6];

  v7 = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
  [v5 setContentFocusRegionContainer:v7];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UIFocusContainerGuideRegion;
  if ([(_UIFocusGuideRegion *)&v18 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[10];
    v7 = self->_contentFocusRegionContainer;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      v11 = [(_UIFocusRegionContainer *)v7 isEqual:v8];

      if (!v11)
      {
        v12 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    fallbackRootRegionContainer = self->_fallbackRootRegionContainer;
    v14 = v5[9];
    v7 = fallbackRootRegionContainer;
    v15 = v14;
    v9 = v15;
    if (v7 == v15)
    {
      v12 = 1;
      goto LABEL_19;
    }

    if (v7)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v12 = [(_UIFocusRegionContainer *)v7 isEqual:v15];
LABEL_19:

      goto LABEL_20;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)_fallbackFocusItemForMovementRequest:(id)a3 inFocusMap:(id)a4 withSnapshot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = _UIFocusContainerGuideRegion;
  v11 = [(_UIFocusGuideRegion *)&v27 _fallbackFocusItemForMovementRequest:v8 inFocusMap:v9 withSnapshot:v10];
  v12 = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
  v13 = v12;
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (!v14)
  {
    v15 = [(_UIFocusContainerGuideRegion *)self fallbackRootRegionContainer];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      v18 = [_UIFocusMap alloc];
      v19 = [v9 focusSystem];
      v20 = [(_UIFocusMap *)v18 initWithFocusSystem:v19 rootContainer:v17 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
    }

    else
    {
      v17 = [(_UIFocusContainerGuideRegion *)self contentFocusRegionContainer];
      v20 = v9;
    }

    v21 = [v10 originalRegionForRegion:self];
    v22 = [(_UIFocusMap *)v20 _allRegionsInContainer:v17 intersectingRegion:v21];

    v23 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __93___UIFocusContainerGuideRegion__fallbackFocusItemForMovementRequest_inFocusMap_withSnapshot___block_invoke;
    v26[3] = &__block_descriptor_40_e24_B16__0___UIFocusRegion_8lu32l8;
    v26[4] = v23;
    v24 = [v22 bs_filter:v26];

    v11 = [(_UIFocusMap *)v20 _nextFocusedItemForFocusMovementRequest:v8 inRegions:v24 withSnapshot:v10];
  }

  return v11;
}

@end