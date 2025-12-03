@interface _UIFocusScrollOffsetResolverPaging
- (CGPoint)contentOffsetForScrollRequest:(id)request;
@end

@implementation _UIFocusScrollOffsetResolverPaging

- (CGPoint)contentOffsetForScrollRequest:(id)request
{
  requestCopy = request;
  environmentScrollableContainer = [requestCopy environmentScrollableContainer];
  scrollableContainer = [environmentScrollableContainer scrollableContainer];

  [requestCopy focusItemFrame];
  v47 = v7;
  v48 = v6;
  v45 = v9;
  v46 = v8;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(scrollableContainer);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(scrollableContainer);
  __isKindOfUIScrollView = [scrollableContainer __isKindOfUIScrollView];
  if (__isKindOfUIScrollView)
  {
    v13 = scrollableContainer;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (__isKindOfUIScrollView)
  {
    [scrollableContainer _interpageSpacing];
    v16 = v15;
    v44 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v44 = *(MEMORY[0x1E695F060] + 8);
  }

  [scrollableContainer visibleSize];
  v19 = v18;
  [scrollableContainer visibleSize];
  v42 = v20;
  if (__isKindOfUIScrollView)
  {
    [scrollableContainer _pagingOrigin];
    v22 = v21;
    v24 = v23;
    [scrollableContainer _firstPageOffset];
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

  [requestCopy targetContentOffset];
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