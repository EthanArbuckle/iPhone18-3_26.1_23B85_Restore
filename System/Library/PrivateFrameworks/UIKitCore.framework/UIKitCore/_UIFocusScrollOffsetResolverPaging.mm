@interface _UIFocusScrollOffsetResolverPaging
- (CGPoint)contentOffsetForScrollRequest:(id)a3;
@end

@implementation _UIFocusScrollOffsetResolverPaging

- (CGPoint)contentOffsetForScrollRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 environmentScrollableContainer];
  v5 = [v4 scrollableContainer];

  [v3 focusItemFrame];
  v47 = v7;
  v48 = v6;
  v45 = v9;
  v46 = v8;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v5);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v5);
  v12 = [v5 __isKindOfUIScrollView];
  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v12)
  {
    [v5 _interpageSpacing];
    v16 = v15;
    v44 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v44 = *(MEMORY[0x1E695F060] + 8);
  }

  [v5 visibleSize];
  v19 = v18;
  [v5 visibleSize];
  v42 = v20;
  if (v12)
  {
    [v5 _pagingOrigin];
    v22 = v21;
    v24 = v23;
    [v5 _firstPageOffset];
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = *MEMORY[0x1E695EFF8];
    v24 = *(MEMORY[0x1E695EFF8] + 8);
    v26 = 0.0;
    v28 = 0.0;
  }

  [v3 targetContentOffset];
  v31 = v30;
  if (!CanScrollX)
  {
    v36 = v29;
    if (!CanScrollY)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v32 = v16 + v19;
  v50.origin.y = v47;
  v50.origin.x = v48;
  v50.size.height = v45;
  v50.size.width = v46;
  v33 = (CGRectGetMidX(v50) - v22) / v32;
  v34 = vcvtmd_s64_f64(v33);
  v35 = v32 * floor(v33);
  if (!v34)
  {
    v35 = v26;
  }

  v36 = v22 + v35;
  if (CanScrollY)
  {
LABEL_16:
    v51.origin.y = v47;
    v51.origin.x = v48;
    v51.size.height = v45;
    v51.size.width = v46;
    v37 = (CGRectGetMidY(v51) - v24) / (v44 + v43);
    v38 = vcvtmd_s64_f64(v37);
    v39 = (v44 + v43) * floor(v37);
    if (!v38)
    {
      v39 = v28;
    }

    v31 = v24 + v39;
  }

LABEL_19:

  v40 = v36;
  v41 = v31;
  result.y = v41;
  result.x = v40;
  return result;
}

@end