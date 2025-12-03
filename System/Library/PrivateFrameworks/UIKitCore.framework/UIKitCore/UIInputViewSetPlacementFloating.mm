@interface UIInputViewSetPlacementFloating
+ (CGRect)frameAtOffset:(CGPoint)offset keyboardSize:(CGSize)size screenSize:(CGSize)screenSize;
+ (id)infoWithPoint:(CGPoint)point forOwner:(id)owner;
+ (id)placementWithUndockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer floatingWidth:(double)width;
- (BOOL)isEqual:(id)equal;
- (CGRect)adjustBoundsForNotificationsWithOwner:(id)owner;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v;
- (UIInputViewSetPlacementFloating)initWithCoder:(id)coder;
- (UIResponder)responderToFollow;
- (id)applicatorInfoForOwner:(id)owner;
- (id)expiringPlacement;
- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (id)subPlacements;
- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView;
- (unint64_t)indexForPurpose:(unint64_t)purpose;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)checkSizeForOwner:(id)owner;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDelegate:(id)delegate;
- (void)setSubPlacements:(id)placements;
- (void)updateChromeBuffer;
@end

@implementation UIInputViewSetPlacementFloating

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  if (WeakRetained != ancestorCopy)
  {
    if ((changed->var0 & 0x80) != 0)
    {
      delegate = [(UIInputViewSetPlacement *)self delegate];
      [delegate placementNeedsUpdate:self];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_responderToFollow);
      [(UIView *)v8 _removeGeometryChangeObserver:?];

      objc_storeWeak(&self->_responderToFollow, 0);
    }
  }
}

- (void)checkSizeForOwner:(id)owner
{
  v40 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  hostView = [ownerCopy hostView];
  [hostView bounds];
  v7 = v6;
  v9 = v8;
  width = self->_lastSize.width;
  height = self->_lastSize.height;

  if (width != v7 || height != v9)
  {
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  containerView = [ownerCopy containerView];
  [containerView bounds];
  v17 = v16;
  v19 = v18;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  applicator = [ownerCopy applicator];
  constraints = [applicator constraints];

  v22 = [constraints countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(constraints);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        firstAttribute = [v26 firstAttribute];
        if (firstAttribute == 4)
        {
          [v26 constant];
          v13 = fabs(v29) / v19;
        }

        else if (firstAttribute == 1)
        {
          [v26 constant];
          v14 = fabs(v28) / v17;
        }
      }

      v23 = [constraints countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }

  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);
  if (!WeakRetained)
  {
    [(UIInputViewSetPlacementUndocked *)self setNormalizedOffset:v14, v13];
    goto LABEL_23;
  }

  [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
  if (v32 != v14 || v31 != v13)
  {
    v33 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v33 _removeGeometryChangeObserver:?];

    objc_storeWeak(&self->_responderToFollow, 0);
    [(UIInputViewSetPlacementUndocked *)self setNormalizedOffset:v14, v13];
LABEL_21:
    delegate = [(UIInputViewSetPlacement *)self delegate];
    [delegate placementNeedsUpdate:self];
  }

LABEL_23:
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v6 _removeGeometryChangeObserver:?];

    objc_storeWeak(&self->_responderToFollow, 0);
  }

  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementFloating;
  [(UIInputViewSetPlacement *)&v9 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    currentResponderView = [(UIInputViewSetPlacementFloating *)self currentResponderView];
    objc_storeWeak(&self->_responderToFollow, currentResponderView);

    v8 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v8 _addGeometryChangeObserver:?];
  }
}

- (id)applicatorInfoForOwner:(id)owner
{
  ownerCopy = owner;
  if ([ownerCopy keyboardController])
  {
    WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

    if (WeakRetained)
    {
      currentResponderView = [(UIInputViewSetPlacementFloating *)self currentResponderView];
      v7 = currentResponderView;
      if (currentResponderView)
      {
        [currentResponderView bounds];
        [v7 _convertViewPointToSceneSpaceForKeyboard:?];
        self->_responderRect.origin.x = v8;
        self->_responderRect.origin.y = v9;
        self->_responderRect.size.width = v10;
        self->_responderRect.size.height = v11;
        v12 = objc_loadWeakRetained(&self->_responderToFollow);

        if (v12 != v7)
        {
          v13 = objc_loadWeakRetained(&self->_responderToFollow);
          [(UIView *)v13 _removeGeometryChangeObserver:?];

          v14 = objc_storeWeak(&self->_responderToFollow, v7);
          [(UIView *)v7 _addGeometryChangeObserver:?];
        }
      }
    }
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __58__UIInputViewSetPlacementFloating_applicatorInfoForOwner___block_invoke;
  v73[3] = &unk_1E70F3590;
  v15 = ownerCopy;
  v74 = v15;
  [UIView performWithoutAnimation:v73];
  containerView = [v15 containerView];
  [containerView frame];
  v18 = v17;
  v20 = v19;

  if ([v15 keyboardController] && (v21 = objc_loadWeakRetained(&self->_responderToFollow), v21, v21))
  {
    containerView2 = [v15 containerView];
    layer = [containerView2 layer];
    [layer convertRect:0 fromLayer:{self->_responderRect.origin.x, self->_responderRect.origin.y, self->_responderRect.size.width, self->_responderRect.size.height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = MEMORY[0x1E695DF90];
    hostView = [v15 hostView];
    [hostView bounds];
    v35 = [UIKeyboardPopoverContainer propertiesForTargetRect:v25 withHeight:v27 onScreenSize:v29, v31, v34, v18, v20];
    v36 = [v32 dictionaryWithDictionary:v35];

    v37 = [v36 objectForKey:_UIKeyboardPopoverKeyboardRect];
    [v37 rectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = [MEMORY[0x1E696B098] valueWithPoint:{v39, v41 + v43 - v20}];
    [v36 setObject:v44 forKey:@"Origin"];

    [(UIInputViewSetPlacementUndocked *)self setNormalizedOffset:fabs(v39) / v18, vabdd_f64(v41 + v43, v20) / v20];
  }

  else
  {
    v45 = MEMORY[0x1E695DF90];
    v72.receiver = self;
    v72.super_class = UIInputViewSetPlacementFloating;
    v46 = [(UIInputViewSetPlacementUndocked *)&v72 applicatorInfoForOwner:v15, *&v20];
    v36 = [v45 dictionaryWithDictionary:v46];

    applicator = [v15 applicator];
    [applicator contentInsets];
    v49 = v48;
    v51 = v50;

    v52 = [v36 objectForKey:@"Origin"];
    [v52 CGPointValue];
    v54 = v53;

    hostView2 = [v15 hostView];
    [hostView2 bounds];
    v57 = v56;

    +[UIKeyboardImpl floatingWidth];
    v59 = v58;
    v60 = 0.0;
    v61 = 0.0;
    if (v18 > 0.0)
    {
      v60 = (v18 - v51 - v58) / v18;
      v61 = v49 / v18;
    }

    [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
    if (v62 >= v60)
    {
      v62 = v60;
    }

    if (v62 < v61)
    {
      v62 = v61;
    }

    v63 = v18 * v62;
    v64 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18 * v62, v54}];
    [v36 setObject:v64 forKey:@"Origin"];

    v65 = [UIKeyboardPopoverContainer propertiesForSpecificKeyboardFrame:v63 onScreenSize:v54, v59, v57, v18, v71];
    [v36 addEntriesFromDictionary:v65];
  }

  p_lastSize = &self->_lastSize;
  hostView3 = [v15 hostView];
  [hostView3 frame];
  p_lastSize->width = v68;
  p_lastSize->height = v69;

  return v36;
}

void __58__UIInputViewSetPlacementFloating_applicatorInfoForOwner___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hostView];
  [v1 layoutIfNeeded];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v4 _removeGeometryChangeObserver:?];

    objc_storeWeak(&self->_responderToFollow, 0);
  }

  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementFloating;
  [(UIInputViewSetPlacementFloating *)&v5 dealloc];
}

+ (id)placementWithUndockedOffset:(CGPoint)offset chromeBuffer:(UIEdgeInsets)buffer floatingWidth:(double)width
{
  v6 = [self placementWithUndockedOffset:offset.x chromeBuffer:{offset.y, buffer.top, buffer.left, buffer.bottom, buffer.right}];
  [v6 setFloatingWidth:width];

  return v6;
}

+ (CGRect)frameAtOffset:(CGPoint)offset keyboardSize:(CGSize)size screenSize:(CGSize)screenSize
{
  [UIKeyboardPopoverContainer frameAtOffset:offset.x keyboardSize:offset.y screenSize:size.width, size.height, screenSize.width, screenSize.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIInputViewSetPlacementFloating)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementFloating;
  v5 = [(UIInputViewSetPlacementUndocked *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"FloatingWidth"];
    v5->_floatingWidth = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementFloating;
  coderCopy = coder;
  [(UIInputViewSetPlacementUndocked *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"FloatingWidth" forKey:{self->_floatingWidth, v5.receiver, v5.super_class}];
}

- (void)updateChromeBuffer
{
  +[UIPeripheralHost floatingChromeBuffer];

  [(UIInputViewSetPlacementUndocked *)self setChromeBuffer:?];
}

- (id)horizontalConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  containerViewCopy = containerView;
  if (view)
  {
    viewCopy = view;
    +[UIKeyboardImpl floatingWidth];
    v10 = v9;
    [containerViewCopy bounds];
    v12 = v11;
    v13 = 0.0;
    if (v11 > 0.0)
    {
      v13 = (v11 - v10) / v11;
    }

    [(UIInputViewSetPlacementUndocked *)self normalizedOffset];
    if (v14 >= v13)
    {
      v14 = v13;
    }

    v15 = [MEMORY[0x1E69977A0] constraintWithItem:viewCopy attribute:1 relatedBy:0 toItem:containerViewCopy attribute:1 multiplier:1.0 constant:v12 * v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)widthConstraintForInputViewSet:(id)set hostView:(id)view containerView:(id)containerView
{
  if (view)
  {
    widthAnchor = [view widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:self->_floatingWidth];

    LODWORD(v8) = 1144750080;
    [v7 setPriority:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementFloating;
  if ([(UIInputViewSetPlacementUndocked *)&v9 isEqual:equalCopy]&& *(equalCopy + 11) == self->_floatingWidth)
  {
    WeakRetained = objc_loadWeakRetained(equalCopy + 12);
    v6 = objc_loadWeakRetained(&self->_responderToFollow);
    v7 = WeakRetained == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)infoWithPoint:(CGPoint)point forOwner:(id)owner
{
  y = point.y;
  x = point.x;
  v6 = MEMORY[0x1E695DF90];
  ownerCopy = owner;
  v8 = [UIInputViewSetPlacementUndocked infoWithPoint:x, y];
  v9 = [v6 dictionaryWithDictionary:v8];

  containerView = [ownerCopy containerView];
  [containerView bounds];
  v12 = v11;
  v14 = v13;

  hostView = [ownerCopy hostView];

  [hostView frame];
  v17 = v16;
  v19 = v18;

  v20 = [UIKeyboardPopoverContainer propertiesForSpecificKeyboardFrame:x onScreenSize:y, v17, v19, v12, v14];
  [v9 addEntriesFromDictionary:v20];

  return v9;
}

- (void)setSubPlacements:(id)placements
{
  v4 = [placements copy];
  subPlacements = self->_subPlacements;
  self->_subPlacements = v4;
}

- (id)subPlacements
{
  v9[1] = *MEMORY[0x1E69E9840];
  subPlacements = self->_subPlacements;
  if (subPlacements)
  {
    v3 = subPlacements;
  }

  else
  {
    cachedSecondaryPlacement = self->_cachedSecondaryPlacement;
    if (!cachedSecondaryPlacement)
    {
      v6 = +[UIInputViewSetPlacementOnScreen placement];
      v7 = self->_cachedSecondaryPlacement;
      self->_cachedSecondaryPlacement = v6;

      cachedSecondaryPlacement = self->_cachedSecondaryPlacement;
    }

    v9[0] = cachedSecondaryPlacement;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v3;
}

- (unint64_t)indexForPurpose:(unint64_t)purpose
{
  result = 0;
  if (purpose <= 99)
  {
    if (purpose < 4)
    {
      return result;
    }

    return 1;
  }

  if (purpose > 101)
  {
    if (purpose != 103)
    {
      if (purpose == 102)
      {
        return [(NSArray *)self->_subPlacements count:v3]!= 0;
      }

      return 1;
    }
  }

  else if (purpose != 100)
  {
    return 1;
  }

  return result;
}

- (id)expiringPlacement
{
  if ([(UIInputViewSetPlacement *)self isVisible])
  {
    selfCopy = [UIInputViewSetPlacementInvisible placementWithPlacement:self];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (CGRect)adjustBoundsForNotificationsWithOwner:(id)owner
{
  v31.receiver = self;
  v31.super_class = UIInputViewSetPlacementFloating;
  ownerCopy = owner;
  [(UIInputViewSetPlacement *)&v31 adjustBoundsForNotificationsWithOwner:ownerCopy];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  containerView = [ownerCopy containerView];

  [containerView frame];
  v14 = v13;
  v16 = v15;

  v17 = [UIKeyboardPopoverContainer propertiesForSpecificKeyboardFrame:v5 onScreenSize:v7, v9, v11, v14, v16];
  v18 = [v17 objectForKeyedSubscript:@"PopoverRect"];
  [v18 CGRectValue];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v16 - (v11 + v22);
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)set includingIAV:(BOOL)v
{
  v17.receiver = self;
  v17.super_class = UIInputViewSetPlacementFloating;
  [(UIInputViewSetPlacementUndocked *)&v17 remoteIntrinsicContentSizeForInputViewInSet:set includingIAV:v];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  +[UIKeyboardImpl floatingWidth];
  if (v9 <= v12)
  {
    v13 = v11 + 53.0;
  }

  else
  {
    v13 = v11;
  }

  if (v9 <= v12)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v5;
  v16 = v9;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (UIResponder)responderToFollow
{
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  return WeakRetained;
}

@end