@interface _UIFocusScrollBoundaryMetrics
- (BOOL)_checkScrollableBounds;
- (BOOL)checkOtherFocusItem:(id)a3;
- (BOOL)checkOtherRect:(CGRect)a3;
- (BOOL)consumeOtherMetrics:(id)a3;
- (BOOL)hasDisprovedAllRelevantAssumptions;
- (CGPoint)localFocusedCenter;
- (CGPoint)maxContentOffset;
- (CGPoint)minContentOffset;
- (CGRect)localFocusedRect;
- (_UIFocusScrollBoundaryMetrics)initWithFocusItem:(id)a3 owningEnvironment:(id)a4 scrollableContainer:(id)a5;
@end

@implementation _UIFocusScrollBoundaryMetrics

- (BOOL)_checkScrollableBounds
{
  [(UIFocusItemScrollableContainer *)self->_scrollableContainer visibleSize];
  v4 = v3;
  v6 = v5;
  x = self->_minContentOffset.x;
  y = self->_minContentOffset.y;
  v10 = self->_maxContentOffset.x;
  v9 = self->_maxContentOffset.y;
  _UIIntervalFromCGRect(1, x, y, v3, v5);
  v51 = v11;
  v13 = v12;
  _UIIntervalFromCGRect(1, v10, v9, v4, v6);
  v52 = v14;
  v16 = v15;
  _UIIntervalFromCGRect(2, x, y, v4, v6);
  v18 = v17;
  v20 = v19;
  _UIIntervalFromCGRect(2, v10, v9, v4, v6);
  v22 = v21;
  v24 = v23;
  _UIIntervalFromCGRect(1, self->_localFocusedRect.origin.x, self->_localFocusedRect.origin.y, self->_localFocusedRect.size.width, self->_localFocusedRect.size.height);
  v26 = v25;
  v28 = v27;
  _UIIntervalFromCGRect(2, self->_localFocusedRect.origin.x, self->_localFocusedRect.origin.y, self->_localFocusedRect.size.width, self->_localFocusedRect.size.height);
  v31 = v51 + v13;
  if (v13 >= 0.0)
  {
    v31 = v51;
  }

  v32 = v26 + v28;
  if (v28 >= 0.0)
  {
    v32 = v26;
  }

  v33 = -v13;
  if (v13 >= 0.0)
  {
    v33 = v13;
  }

  v34 = v31 + v33;
  v35 = -v28;
  if (v28 >= 0.0)
  {
    v36 = v28;
  }

  else
  {
    v36 = -v28;
  }

  v37 = v34 >= v32 + v36;
  if (v31 > v32)
  {
    v37 = 0;
  }

  self->_isMinX &= v37;
  v38 = v52 + v16;
  if (v16 >= 0.0)
  {
    v38 = v52;
  }

  v39 = -v16;
  if (v16 >= 0.0)
  {
    v39 = v16;
  }

  v40 = v38 + v39;
  if (v28 >= 0.0)
  {
    v35 = v28;
  }

  v41 = v40 >= v32 + v35;
  if (v38 > v32)
  {
    v41 = 0;
  }

  self->_isMaxX &= v41;
  if (v20 >= 0.0)
  {
    v42 = v18;
  }

  else
  {
    v42 = v18 + v20;
  }

  if (v30 < 0.0)
  {
    v29 = v29 + v30;
  }

  v43 = -v20;
  if (v20 >= 0.0)
  {
    v43 = v20;
  }

  if (v30 >= 0.0)
  {
    v44 = v30;
  }

  else
  {
    v44 = -v30;
  }

  v45 = v42 + v43 >= v29 + v44;
  if (v42 > v29)
  {
    v45 = 0;
  }

  self->_isMinY &= v45;
  v46 = v22 + v24;
  if (v24 >= 0.0)
  {
    v46 = v22;
  }

  if (v46 <= v29)
  {
    v48 = -v24;
    if (v24 >= 0.0)
    {
      v48 = v24;
    }

    v49 = v46 + v48;
    if (v30 < 0.0)
    {
      v30 = -v30;
    }

    v47 = v49 >= v29 + v30;
  }

  else
  {
    v47 = 0;
  }

  self->_isMaxY &= v47;

  return [(_UIFocusScrollBoundaryMetrics *)self hasDisprovedAllRelevantAssumptions];
}

- (BOOL)hasDisprovedAllRelevantAssumptions
{
  isMinX = self->_isMinX;
  if (isMinX || (isMaxX = self->_isMaxX) || (self->_isMinY || self->_isMaxY) && (isMinX || self->_shouldSearchY || isMaxX))
  {
    return !self->_shouldSearchX && !self->_isMinY && !self->_isMaxY;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)minContentOffset
{
  x = self->_minContentOffset.x;
  y = self->_minContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UIFocusScrollBoundaryMetrics)initWithFocusItem:(id)a3 owningEnvironment:(id)a4 scrollableContainer:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31.receiver = self;
  v31.super_class = _UIFocusScrollBoundaryMetrics;
  v13 = [(_UIFocusScrollBoundaryMetrics *)&v31 init];
  if (!v13)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:v13 file:@"_UIFocusScrollBoundaryMetrics.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment"}];

    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:v13 file:@"_UIFocusScrollBoundaryMetrics.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"scrollableContainer"}];

    goto LABEL_5;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:v13 file:@"_UIFocusScrollBoundaryMetrics.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"focusItem"}];

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  *(v13 + 10) = 16843009;
  objc_storeStrong(v13 + 2, a3);
  objc_storeStrong(v13 + 3, a4);
  objc_storeStrong(v13 + 4, a5);
  v14 = [v12 coordinateSpace];
  *(v13 + 11) = _UIFocusItemFrameInCoordinateSpace(v10, v14);
  *(v13 + 12) = v15;
  *(v13 + 13) = v16;
  *(v13 + 14) = v17;

  __asm { FMOV            V2.2D, #0.5 }

  *(v13 + 40) = vaddq_f64(*(v13 + 88), vmulq_f64(*(v13 + 104), _Q2));
  if ([v12 __isKindOfUICollectionView])
  {
    v23 = v12;
    if ([v23 _canDeriveVisibleBoundsFromContainingScrollView])
    {
      CanScrollY = 1;
      v13[8] = 1;
    }

    else
    {
      v13[8] = _UIFocusItemScrollableContainerCanScrollX(v23);
      CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v23);
    }

    v13[9] = CanScrollY;
  }

  else
  {
    v13[8] = _UIFocusItemScrollableContainerCanScrollX(v12);
    v13[9] = _UIFocusItemScrollableContainerCanScrollY(v12);
  }

  *(v13 + 7) = _UIFocusItemScrollableContainerMinimumContentOffset(v12);
  *(v13 + 8) = v25;
  *(v13 + 9) = _UIFocusItemScrollableContainerMaximumContentOffset(v12);
  *(v13 + 10) = v26;
  [v13 _checkScrollableBounds];
LABEL_12:

  return v13;
}

- (BOOL)consumeOtherMetrics:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (v5 != self)
    {
      [(_UIFocusScrollBoundaryMetrics *)self setIsMinX:[(_UIFocusScrollBoundaryMetrics *)v5 isMinX]& [(_UIFocusScrollBoundaryMetrics *)self isMinX]];
      [(_UIFocusScrollBoundaryMetrics *)self setIsMaxX:[(_UIFocusScrollBoundaryMetrics *)v6 isMaxX]& [(_UIFocusScrollBoundaryMetrics *)self isMaxX]];
      [(_UIFocusScrollBoundaryMetrics *)self setIsMinY:[(_UIFocusScrollBoundaryMetrics *)v6 isMinY]& [(_UIFocusScrollBoundaryMetrics *)self isMinY]];
      [(_UIFocusScrollBoundaryMetrics *)self setIsMaxY:[(_UIFocusScrollBoundaryMetrics *)v6 isMaxY]& [(_UIFocusScrollBoundaryMetrics *)self isMaxY]];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusScrollBoundaryMetrics.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"otherMetrics != nil"}];
  }

  v7 = [(_UIFocusScrollBoundaryMetrics *)self hasDisprovedAllRelevantAssumptions];

  return v7;
}

- (BOOL)checkOtherRect:(CGRect)a3
{
  v3 = a3.origin.x + a3.size.width * 0.5;
  v4 = a3.size.height * 0.5;
  x = self->_localFocusedCenter.x;
  if (v3 < x)
  {
    self->_isMinX = 0;
  }

  v6 = a3.origin.y + v4;
  if (v3 > x)
  {
    self->_isMaxX = 0;
  }

  y = self->_localFocusedCenter.y;
  if (v6 < y)
  {
    self->_isMinY = 0;
  }

  if (v6 > y)
  {
    self->_isMaxY = 0;
  }

  return [(_UIFocusScrollBoundaryMetrics *)self hasDisprovedAllRelevantAssumptions];
}

- (BOOL)checkOtherFocusItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusScrollBoundaryMetrics.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"otherItem != nil"}];

    goto LABEL_5;
  }

  v6 = [(_UIFocusScrollBoundaryMetrics *)self focusItem];

  if (v6 == v5)
  {
LABEL_5:
    v9 = [(_UIFocusScrollBoundaryMetrics *)self hasDisprovedAllRelevantAssumptions];
    goto LABEL_6;
  }

  v7 = [(_UIFocusScrollBoundaryMetrics *)self scrollableContainer];
  v8 = [v7 coordinateSpace];

  v9 = [(_UIFocusScrollBoundaryMetrics *)self checkOtherRect:_UIFocusItemFrameInCoordinateSpace(v5, v8)];
LABEL_6:

  return v9;
}

- (CGRect)localFocusedRect
{
  x = self->_localFocusedRect.origin.x;
  y = self->_localFocusedRect.origin.y;
  width = self->_localFocusedRect.size.width;
  height = self->_localFocusedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)localFocusedCenter
{
  x = self->_localFocusedCenter.x;
  y = self->_localFocusedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)maxContentOffset
{
  x = self->_maxContentOffset.x;
  y = self->_maxContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end