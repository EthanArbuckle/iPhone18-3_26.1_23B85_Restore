@interface _UIFocusScrollOffsetResolverCentered
- (CGPoint)contentOffsetForScrollRequest:(id)a3;
@end

@implementation _UIFocusScrollOffsetResolverCentered

- (CGPoint)contentOffsetForScrollRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 environmentScrollableContainer];
  v5 = [v4 scrollableContainer];

  v6 = [v3 environmentScrollableContainer];
  v7 = [v6 owningEnvironment];

  v8 = [v3 focusItemInfo];
  v9 = [v3 focusMovement];
  v10 = [v9 heading];

  [v3 focusItemFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v5);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v5);
  [v3 targetContentOffset];
  v22 = v21;
  v24 = v23;

  if (CanScrollX)
  {
    if (([v5 visibleSize], v26 = v12 + v16 * 0.5 - v25 * 0.5, _UIFocusHeadingIsEffectivelyLeft(v10, v7)) && v26 < v22 || _UIFocusHeadingIsEffectivelyRight(v10, v7) && v26 > v22)
    {
      v22 = v26;
    }
  }

  if (CanScrollY)
  {
    if (([v5 visibleSize], v27 = v14 + v18 * 0.5, v29 = v27 + v28 * -0.5, (v10) || (v10 & 0x20) != 0) && v29 < v24 || ((v10 & 2) != 0 || (v10 & 0x10) != 0) && v29 > v24)
    {
      v24 = v27 + v28 * -0.5;
    }
  }

  if (v8)
  {
    v22 = _UIFocusItemScrollableContainerAdjustedContentOffsetToShowFocusItem(v5, v8, v22, v24);
    v24 = v30;
  }

  v31 = v22;
  v32 = v24;
  result.y = v32;
  result.x = v31;
  return result;
}

@end