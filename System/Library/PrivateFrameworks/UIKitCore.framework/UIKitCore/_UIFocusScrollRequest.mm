@interface _UIFocusScrollRequest
- (CGPoint)originatingContentOffset;
- (CGPoint)resolveTargetContentOffsetUsingScrollOffsetResolverClamped:(BOOL)a3;
- (CGPoint)targetContentOffset;
- (CGRect)focusItemFrame;
- (CGRect)originatingBounds;
- (_UIFocusScrollRequest)initWithBaseRequest:(id)a3 environmentScrollableContainer:(id)a4;
- (_UIFocusScrollRequest)initWithEnvironmentScrollableContainer:(id)a3 focusItemInfo:(id)a4 focusMovement:(id)a5 focusItemFrame:(CGRect)a6 targetContentOffsetValue:(id)a7;
- (_UIFocusScrollRequest)initWithEnvironmentScrollableContainer:(id)a3 focusItemInfo:(id)a4 focusUpdateContext:(id)a5;
- (id)description;
- (void)reloadFocusItemInfo;
@end

@implementation _UIFocusScrollRequest

- (CGRect)originatingBounds
{
  x = self->_originatingBounds.origin.x;
  y = self->_originatingBounds.origin.y;
  width = self->_originatingBounds.size.width;
  height = self->_originatingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)originatingContentOffset
{
  x = self->_originatingContentOffset.x;
  y = self->_originatingContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)focusItemFrame
{
  if (CGRectIsNull(self->_focusItemFrame))
  {
    focusItemInfo = self->_focusItemInfo;
    if (focusItemInfo)
    {
      v4 = [(_UIFocusEnvironmentScrollableContainerTuple *)self->_environmentScrollableContainer scrollableContainer];
      v5 = [v4 coordinateSpace];
      [(_UIFocusItemInfo *)focusItemInfo focusedRectInCoordinateSpace:v5];
      x = v6;
      y = v8;
      width = v10;
      height = v12;
    }

    else
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    x = self->_focusItemFrame.origin.x;
    y = self->_focusItemFrame.origin.y;
    width = self->_focusItemFrame.size.width;
    height = self->_focusItemFrame.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UIFocusScrollRequest)initWithEnvironmentScrollableContainer:(id)a3 focusItemInfo:(id)a4 focusMovement:(id)a5 focusItemFrame:(CGRect)a6 targetContentOffsetValue:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v79.receiver = self;
  v79.super_class = _UIFocusScrollRequest;
  v20 = [(_UIFocusScrollRequest *)&v79 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v20->_environmentScrollableContainer, a3);
  objc_storeStrong(&v21->_focusMovement, a5);
  objc_storeStrong(&v21->_focusItemInfo, a4);
  v21->_focusItemFrame.origin.x = x;
  v21->_focusItemFrame.origin.y = y;
  v21->_focusItemFrame.size.width = width;
  v21->_focusItemFrame.size.height = height;
  if (v21->_focusItemInfo)
  {
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    if (!CGRectIsNull(v81))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_980);
      if (*CategoryCachedImpl)
      {
        v69 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v69, OS_LOG_TYPE_ERROR, "Creating a _UIFocusScrollRequest with non-nil focusItemInfo and non-null focusItemFrame. focusItemFrame will be used instead of converting the frame of the focusItemInfo to the scrollableContainer.coordinateSpace, which may result in stale self.focusItemFrame access after scrolling.", buf, 2u);
        }
      }
    }

    if (v21->_focusItemInfo)
    {
      goto LABEL_10;
    }

    x = v21->_focusItemFrame.origin.x;
    y = v21->_focusItemFrame.origin.y;
    width = v21->_focusItemFrame.size.width;
    height = v21->_focusItemFrame.size.height;
  }

  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  if (CGRectIsNull(v82))
  {
    v23 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49C718) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Creating a _UIFocusScrollRequest with nil focusItemInfo and null focusItemFrame. This is uselesss.", buf, 2u);
    }
  }

LABEL_10:
  v76 = v18;
  v77 = v17;
  v78 = v16;
  v24 = v21;
  v25 = v19;
  v26 = [(_UIFocusEnvironmentScrollableContainerTuple *)v21->_environmentScrollableContainer scrollableContainer];
  v27 = [(_UIFocusEnvironmentScrollableContainerTuple *)v21->_environmentScrollableContainer owningEnvironment];
  v28 = _UIFocusEnvironmentContainingView(v27);
  v29 = [v28 window];

  v30 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v27];
  v31 = [v30 scrollManager];
  v24->_scrollOffsetResolver = _UIFocusItemScrollableContainerScrollOffsetResolverTypeForFocusMovement(v21->_environmentScrollableContainer, v21->_focusMovement);
  [v31 targetContentOffsetForScrollableContainer:v26];
  v24->_originatingContentOffset.x = v32;
  v24->_originatingContentOffset.y = v33;
  *buf = v24->_originatingContentOffset;
  [v26 visibleSize];
  v24->_originatingBounds.origin = *buf;
  v24->_originatingBounds.size.width = v34;
  v24->_originatingBounds.size.height = v35;
  [v26 contentOffset];
  v37 = v36;
  v39 = v38;
  [v26 visibleSize];
  v41 = v40;
  v43 = v42;
  v44 = [v26 coordinateSpace];
  [v29 convertRect:v44 fromCoordinateSpace:{v37, v39, v41, v43}];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v29 bounds];
  v93.origin.x = v53;
  v93.origin.y = v54;
  v93.size.width = v55;
  v93.size.height = v56;
  v83.origin.x = v46;
  v83.origin.y = v48;
  v83.size.width = v50;
  v83.size.height = v52;
  v84 = CGRectIntersection(v83, v93);
  v57 = v84.origin.x;
  v58 = v84.origin.y;
  v59 = v84.size.width;
  v60 = v84.size.height;
  if (!CGRectIsNull(v84))
  {
    v85.origin.x = v57;
    v85.origin.y = v58;
    v85.size.width = v59;
    v85.size.height = v60;
    MinY = CGRectGetMinY(v85);
    v86.origin.x = v46;
    v86.origin.y = v48;
    v86.size.width = v50;
    v86.size.height = v52;
    v75 = MinY - CGRectGetMinY(v86);
    v87.origin.x = v57;
    v87.origin.y = v58;
    v87.size.width = v59;
    v87.size.height = v60;
    MinX = CGRectGetMinX(v87);
    v88.origin.x = v46;
    v88.origin.y = v48;
    v88.size.width = v50;
    v88.size.height = v52;
    v73 = MinX - CGRectGetMinX(v88);
    v89.origin.x = v46;
    v89.origin.y = v48;
    v89.size.width = v50;
    v89.size.height = v52;
    MaxY = CGRectGetMaxY(v89);
    v90.origin.x = v57;
    v90.origin.y = v58;
    v90.size.width = v59;
    v90.size.height = v60;
    v71 = MaxY - CGRectGetMaxY(v90);
    v91.origin.x = v46;
    v91.origin.y = v48;
    v91.size.width = v50;
    v91.size.height = v52;
    MaxX = CGRectGetMaxX(v91);
    v92.origin.x = v57;
    v92.origin.y = v58;
    v92.size.width = v59;
    v92.size.height = v60;
    v62 = CGRectGetMaxX(v92);
    v63 = v75 + v24->_originatingBounds.origin.y;
    v64 = v24->_originatingBounds.size.width - (v73 + MaxX - v62);
    v65 = v24->_originatingBounds.size.height - (v75 + v71);
    v24->_originatingBounds.origin.x = v73 + v24->_originatingBounds.origin.x;
    v24->_originatingBounds.origin.y = v63;
    v24->_originatingBounds.size.width = v64;
    v24->_originatingBounds.size.height = v65;
  }

  v16 = v78;
  if (v25)
  {
    [v25 CGPointValue];
    v24->_targetContentOffset.x = v66;
    v24->_targetContentOffset.y = v67;
  }

  else
  {
    v24->_targetContentOffset = v24->_originatingContentOffset;
  }

  v18 = v76;
  v17 = v77;
LABEL_16:

  return v21;
}

- (_UIFocusScrollRequest)initWithBaseRequest:(id)a3 environmentScrollableContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 environmentScrollableContainer];
  v9 = [v8 scrollableContainer];
  v10 = [v9 coordinateSpace];

  v11 = [v7 scrollableContainer];
  v12 = [v11 coordinateSpace];

  v13 = v6[9];
  v14 = v6[10];
  v15 = v6[11];
  v16 = v6[12];
  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = v15;
  v29.size.height = v16;
  if (CGRectIsNull(v29))
  {
    v17 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [v12 convertRect:v10 fromCoordinateSpace:{v13, v14, v15, v16}];
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
  }

  v25 = [v6 focusItemInfo];
  v26 = [v6 focusMovement];
  v27 = [(_UIFocusScrollRequest *)self initWithEnvironmentScrollableContainer:v7 focusItemInfo:v25 focusMovement:v26 focusItemFrame:0 targetContentOffsetValue:v17, v18, v19, v20];

  return v27;
}

- (_UIFocusScrollRequest)initWithEnvironmentScrollableContainer:(id)a3 focusItemInfo:(id)a4 focusUpdateContext:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 _focusMovement];
  v11 = [(_UIFocusScrollRequest *)self initWithEnvironmentScrollableContainer:v9 focusItemInfo:v8 focusMovement:v10 focusItemFrame:0 targetContentOffsetValue:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

  return v11;
}

- (CGPoint)resolveTargetContentOffsetUsingScrollOffsetResolverClamped:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(_UIFocusScrollRequest *)self environmentScrollableContainer];
  v6 = [v5 scrollableContainer];

  v7 = _UIFocusScrollOffsetResolverForOffsetResolverType([(_UIFocusScrollRequest *)self scrollOffsetResolver]);
  v8 = v7;
  if (v7)
  {
    [v7 contentOffsetForScrollRequest:self];
    x = v9;
    y = v11;
  }

  else
  {
    x = self->_targetContentOffset.x;
    y = self->_targetContentOffset.y;
    v13 = *(__UILogGetCategoryCachedImpl("UIFocus", &resolveTargetContentOffsetUsingScrollOffsetResolverClamped____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = _UIFocusScrollOffsetResolverStringForOffsetResolverType([(_UIFocusScrollRequest *)self scrollOffsetResolver]);
      v22 = 138412290;
      v23 = v15;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Failed to get scroll offset resolver for type: %@", &v22, 0xCu);
    }
  }

  if (v3)
  {
    v16 = _UIFocusItemScrollableContainerMinimumContentOffset(v6);
    v18 = v17;
    x = fmax(v16, fmin(x, _UIFocusItemScrollableContainerMaximumContentOffset(v6)));
    y = fmax(v18, fmin(y, v19));
  }

  self->_targetContentOffset.x = x;
  self->_targetContentOffset.y = y;

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)reloadFocusItemInfo
{
  v3 = [(_UIFocusItemInfo *)self->_focusItemInfo item];
  v7 = v3;
  if (v3)
  {
    v4 = [(_UIFocusScrollRequest *)self focusItemInfo];
    v5 = [v4 useFallbackAncestorScroller];

    v3 = [_UIFocusItemInfo infoWithItem:v7 useFallbackAncestorScroller:v5];
  }

  focusItemInfo = self->_focusItemInfo;
  self->_focusItemInfo = v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_UIFocusScrollRequest *)self environmentScrollableContainer];
  v5 = [v4 owningEnvironment];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v3 appendObject:v9 withName:@"owningEnvironment"];

  v11 = [(_UIFocusScrollRequest *)self environmentScrollableContainer];
  v12 = [v11 scrollableContainer];
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
  }

  else
  {
    v16 = @"(nil)";
  }

  v17 = [v3 appendObject:v16 withName:@"scrollableContainer"];

  v18 = _UIFocusScrollOffsetResolverStringForOffsetResolverType([(_UIFocusScrollRequest *)self scrollOffsetResolver]);
  v19 = [v3 appendObject:v18 withName:@"scrollOffsetResolver"];

  v20 = [(_UIFocusScrollRequest *)self focusItemInfo];
  v21 = [v20 shortDescription];
  v22 = [v3 appendObject:v21 withName:@"focusItemInfo"];

  v23 = [(_UIFocusScrollRequest *)self focusMovement];
  v24 = [v3 appendObject:v23 withName:@"focusMovement"];

  [(_UIFocusScrollRequest *)self originatingContentOffset];
  v25 = NSStringFromCGPoint(v36);
  v26 = [v3 appendObject:v25 withName:@"originatingContentOffset"];

  [(_UIFocusScrollRequest *)self targetContentOffset];
  v27 = NSStringFromCGPoint(v37);
  v28 = [v3 appendObject:v27 withName:@"targetContentOffset"];

  [(_UIFocusScrollRequest *)self originatingBounds];
  v29 = NSStringFromCGRect(v38);
  v30 = [v3 appendObject:v29 withName:@"originatingBounds"];

  [(_UIFocusScrollRequest *)self focusItemFrame];
  v31 = NSStringFromCGRect(v39);
  v32 = [v3 appendObject:v31 withName:@"focusItemFrame"];

  v33 = [v3 build];

  return v33;
}

@end