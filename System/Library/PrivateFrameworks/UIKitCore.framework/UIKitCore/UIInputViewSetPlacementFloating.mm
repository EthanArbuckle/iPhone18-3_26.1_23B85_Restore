@interface UIInputViewSetPlacementFloating
+ (CGRect)frameAtOffset:(CGPoint)a3 keyboardSize:(CGSize)a4 screenSize:(CGSize)a5;
+ (id)infoWithPoint:(CGPoint)a3 forOwner:(id)a4;
+ (id)placementWithUndockedOffset:(CGPoint)a3 chromeBuffer:(UIEdgeInsets)a4 floatingWidth:(double)a5;
- (BOOL)isEqual:(id)a3;
- (CGRect)adjustBoundsForNotificationsWithOwner:(id)a3;
- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4;
- (UIInputViewSetPlacementFloating)initWithCoder:(id)a3;
- (UIResponder)responderToFollow;
- (id)applicatorInfoForOwner:(id)a3;
- (id)expiringPlacement;
- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (id)subPlacements;
- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5;
- (unint64_t)indexForPurpose:(unint64_t)a3;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)checkSizeForOwner:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSubPlacements:(id)a3;
- (void)updateChromeBuffer;
@end

@implementation UIInputViewSetPlacementFloating

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  if (WeakRetained != v6)
  {
    if ((a3->var0 & 0x80) != 0)
    {
      v9 = [(UIInputViewSetPlacement *)self delegate];
      [v9 placementNeedsUpdate:self];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_responderToFollow);
      [(UIView *)v8 _removeGeometryChangeObserver:?];

      objc_storeWeak(&self->_responderToFollow, 0);
    }
  }
}

- (void)checkSizeForOwner:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hostView];
  [v5 bounds];
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
  v15 = [v4 containerView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = [v4 applicator];
  v21 = [v20 constraints];

  v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        v27 = [v26 firstAttribute];
        if (v27 == 4)
        {
          [v26 constant];
          v13 = fabs(v29) / v19;
        }

        else if (v27 == 1)
        {
          [v26 constant];
          v14 = fabs(v28) / v17;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
    v34 = [(UIInputViewSetPlacement *)self delegate];
    [v34 placementNeedsUpdate:self];
  }

LABEL_23:
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v6 _removeGeometryChangeObserver:?];

    objc_storeWeak(&self->_responderToFollow, 0);
  }

  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementFloating;
  [(UIInputViewSetPlacement *)&v9 setDelegate:v4];
  if (v4)
  {
    v7 = [(UIInputViewSetPlacementFloating *)self currentResponderView];
    objc_storeWeak(&self->_responderToFollow, v7);

    v8 = objc_loadWeakRetained(&self->_responderToFollow);
    [(UIView *)v8 _addGeometryChangeObserver:?];
  }
}

- (id)applicatorInfoForOwner:(id)a3
{
  v4 = a3;
  if ([v4 keyboardController])
  {
    WeakRetained = objc_loadWeakRetained(&self->_responderToFollow);

    if (WeakRetained)
    {
      v6 = [(UIInputViewSetPlacementFloating *)self currentResponderView];
      v7 = v6;
      if (v6)
      {
        [v6 bounds];
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
  v15 = v4;
  v74 = v15;
  [UIView performWithoutAnimation:v73];
  v16 = [v15 containerView];
  [v16 frame];
  v18 = v17;
  v20 = v19;

  if ([v15 keyboardController] && (v21 = objc_loadWeakRetained(&self->_responderToFollow), v21, v21))
  {
    v22 = [v15 containerView];
    v23 = [v22 layer];
    [v23 convertRect:0 fromLayer:{self->_responderRect.origin.x, self->_responderRect.origin.y, self->_responderRect.size.width, self->_responderRect.size.height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = MEMORY[0x1E695DF90];
    v33 = [v15 hostView];
    [v33 bounds];
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

    v47 = [v15 applicator];
    [v47 contentInsets];
    v49 = v48;
    v51 = v50;

    v52 = [v36 objectForKey:@"Origin"];
    [v52 CGPointValue];
    v54 = v53;

    v55 = [v15 hostView];
    [v55 bounds];
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
  v67 = [v15 hostView];
  [v67 frame];
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

+ (id)placementWithUndockedOffset:(CGPoint)a3 chromeBuffer:(UIEdgeInsets)a4 floatingWidth:(double)a5
{
  v6 = [a1 placementWithUndockedOffset:a3.x chromeBuffer:{a3.y, a4.top, a4.left, a4.bottom, a4.right}];
  [v6 setFloatingWidth:a5];

  return v6;
}

+ (CGRect)frameAtOffset:(CGPoint)a3 keyboardSize:(CGSize)a4 screenSize:(CGSize)a5
{
  [UIKeyboardPopoverContainer frameAtOffset:a3.x keyboardSize:a3.y screenSize:a4.width, a4.height, a5.width, a5.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIInputViewSetPlacementFloating)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacementFloating;
  v5 = [(UIInputViewSetPlacementUndocked *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"FloatingWidth"];
    v5->_floatingWidth = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacementFloating;
  v4 = a3;
  [(UIInputViewSetPlacementUndocked *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"FloatingWidth" forKey:{self->_floatingWidth, v5.receiver, v5.super_class}];
}

- (void)updateChromeBuffer
{
  +[UIPeripheralHost floatingChromeBuffer];

  [(UIInputViewSetPlacementUndocked *)self setChromeBuffer:?];
}

- (id)horizontalConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  v7 = a5;
  if (a4)
  {
    v8 = a4;
    +[UIKeyboardImpl floatingWidth];
    v10 = v9;
    [v7 bounds];
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

    v15 = [MEMORY[0x1E69977A0] constraintWithItem:v8 attribute:1 relatedBy:0 toItem:v7 attribute:1 multiplier:1.0 constant:v12 * v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)widthConstraintForInputViewSet:(id)a3 hostView:(id)a4 containerView:(id)a5
{
  if (a4)
  {
    v6 = [a4 widthAnchor];
    v7 = [v6 constraintEqualToConstant:self->_floatingWidth];

    LODWORD(v8) = 1144750080;
    [v7 setPriority:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIInputViewSetPlacementFloating;
  if ([(UIInputViewSetPlacementUndocked *)&v9 isEqual:v4]&& *(v4 + 11) == self->_floatingWidth)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 12);
    v6 = objc_loadWeakRetained(&self->_responderToFollow);
    v7 = WeakRetained == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)infoWithPoint:(CGPoint)a3 forOwner:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = [UIInputViewSetPlacementUndocked infoWithPoint:x, y];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = [v7 containerView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v15 = [v7 hostView];

  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = [UIKeyboardPopoverContainer propertiesForSpecificKeyboardFrame:x onScreenSize:y, v17, v19, v12, v14];
  [v9 addEntriesFromDictionary:v20];

  return v9;
}

- (void)setSubPlacements:(id)a3
{
  v4 = [a3 copy];
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

- (unint64_t)indexForPurpose:(unint64_t)a3
{
  result = 0;
  if (a3 <= 99)
  {
    if (a3 < 4)
    {
      return result;
    }

    return 1;
  }

  if (a3 > 101)
  {
    if (a3 != 103)
    {
      if (a3 == 102)
      {
        return [(NSArray *)self->_subPlacements count:v3]!= 0;
      }

      return 1;
    }
  }

  else if (a3 != 100)
  {
    return 1;
  }

  return result;
}

- (id)expiringPlacement
{
  if ([(UIInputViewSetPlacement *)self isVisible])
  {
    v3 = [UIInputViewSetPlacementInvisible placementWithPlacement:self];
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (CGRect)adjustBoundsForNotificationsWithOwner:(id)a3
{
  v31.receiver = self;
  v31.super_class = UIInputViewSetPlacementFloating;
  v3 = a3;
  [(UIInputViewSetPlacement *)&v31 adjustBoundsForNotificationsWithOwner:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 containerView];

  [v12 frame];
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

- (CGRect)remoteIntrinsicContentSizeForInputViewInSet:(id)a3 includingIAV:(BOOL)a4
{
  v17.receiver = self;
  v17.super_class = UIInputViewSetPlacementFloating;
  [(UIInputViewSetPlacementUndocked *)&v17 remoteIntrinsicContentSizeForInputViewInSet:a3 includingIAV:a4];
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