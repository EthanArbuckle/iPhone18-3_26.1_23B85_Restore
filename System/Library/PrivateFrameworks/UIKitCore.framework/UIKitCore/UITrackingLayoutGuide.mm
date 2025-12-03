@interface UITrackingLayoutGuide
- (BOOL)changeOffsetConstants:(UIOffset)constants;
- (BOOL)changeSizingConstants:(CGSize)constants;
- (NSArray)constraintsActiveWhenAwayFromEdge:(NSDirectionalRectEdge)edge;
- (NSArray)constraintsActiveWhenNearEdge:(NSDirectionalRectEdge)edge;
- (NSDictionary)edgeConstraints;
- (UIEdgeInsets)triggerInsetsForLandscape;
- (UIEdgeInsets)triggerInsetsForPortrait;
- (UIEdgeInsets)triggerProportions;
- (UITrackingLayoutGuide)init;
- (id)_awayFromCombinedTrackedConstraintsForEdgeKey:(id)key;
- (id)_keysFromEdges:(unint64_t)edges;
- (id)_keysInvolvingEdges:(unint64_t)edges;
- (id)_nearEdgeCombinedTrackedConstraintsForEdgeKey:(id)key;
- (void)_createThresholdsFromProportions;
- (void)_layoutOwningViewAnimated:(BOOL)animated;
- (void)_setOwningView:(id)view;
- (void)_thresholdCheck;
- (void)_thresholdCheckForGuide:(CGRect)guide inContext:(CGRect)context;
- (void)_updateForOverlappingEdges:(unint64_t)edges;
- (void)pauseUpdatingConstraintsForEdges:(unint64_t)edges;
- (void)removeAllTrackedConstraints;
- (void)removeTrackedConstraintsFromViewBasedGuide:(id)guide;
- (void)resetAnimationOptions;
- (void)setConstrainedToWindowGuide:(BOOL)guide;
- (void)setConstraints:(NSArray *)trackingConstraints activeWhenAwayFromEdge:(NSDirectionalRectEdge)edge;
- (void)setConstraints:(NSArray *)trackingConstraints activeWhenNearEdge:(NSDirectionalRectEdge)edge;
- (void)setEdgeThresholds:(UIEdgeInsets)thresholds forOrientation:(int64_t)orientation;
- (void)startUpdatingConstraintsForEdges:(unint64_t)edges;
- (void)stopTrackingConstraintsForEdge:(unint64_t)edge;
- (void)trackConstraintsFromViewBasedGuide:(id)guide;
- (void)updateConstraintsForActiveEdges;
@end

@implementation UITrackingLayoutGuide

- (UITrackingLayoutGuide)init
{
  v8.receiver = self;
  v8.super_class = UITrackingLayoutGuide;
  v2 = [(UILayoutGuide *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nearEdgeConstraintsByEdge = v2->_nearEdgeConstraintsByEdge;
    v2->_nearEdgeConstraintsByEdge = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    awayFromConstraintsByEdge = v2->_awayFromConstraintsByEdge;
    v2->_awayFromConstraintsByEdge = v5;

    [(UITrackingLayoutGuide *)v2 resetAnimationOptions];
  }

  return v2;
}

- (void)resetAnimationOptions
{
  self->_animationDuration = 0.3;
  self->_animationOptions = 0;
  self->_animatesChanges = 1;
}

- (void)_thresholdCheck
{
  [(UILayoutGuide *)self layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  owningView = [(UILayoutGuide *)self owningView];
  [owningView bounds];
  [(UITrackingLayoutGuide *)self _thresholdCheckForGuide:v4 inContext:v6, v8, v10, v11, v12, v13, v14];
}

- (void)_createThresholdsFromProportions
{
  owningView = [(UILayoutGuide *)self owningView];

  if (owningView)
  {
    owningView2 = [(UILayoutGuide *)self owningView];
    [owningView2 bounds];
    v18 = v6;
    v19 = v5;

    v7.f64[0] = v19;
    v8 = *&self->_triggerProportions.top;
    v9 = *&self->_triggerProportions.bottom;
    v10.f64[0] = v18;
    v10.f64[1] = v19;
    v11 = vmulq_f64(v10, v9);
    v12 = vmulq_f64(v10, v8);
    v7.f64[1] = v18;
    v13 = vmulq_f64(v7, v9);
    v14 = v7;
    *&v7.f64[0] = vdup_n_s32(v19 > v18);
    v15 = vmulq_f64(v14, v8);
    v16.i64[0] = LODWORD(v7.f64[0]);
    v16.i64[1] = HIDWORD(v7.f64[0]);
    v17 = vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL));
    *&self->_triggerInsetsForPortrait.top = vbslq_s8(v17, v15, v12);
    *&self->_triggerInsetsForPortrait.bottom = vbslq_s8(v17, v13, v11);
    *&self->_triggerInsetsForLandscape.top = vbslq_s8(v17, v12, v15);
    *&self->_triggerInsetsForLandscape.bottom = vbslq_s8(v17, v11, v13);
  }
}

- (NSDictionary)edgeConstraints
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"UIKBNearEdgeConstraintsByEdge";
  nearEdgeConstraintsByEdge = [(UITrackingLayoutGuide *)self nearEdgeConstraintsByEdge];
  v4 = nearEdgeConstraintsByEdge;
  v5 = MEMORY[0x1E695E0F8];
  if (nearEdgeConstraintsByEdge)
  {
    v6 = nearEdgeConstraintsByEdge;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v12[1] = @"UIKBAwayFromEdgeConstraintsByEdge";
  v13[0] = v6;
  awayFromConstraintsByEdge = [(UITrackingLayoutGuide *)self awayFromConstraintsByEdge];
  v8 = awayFromConstraintsByEdge;
  if (awayFromConstraintsByEdge)
  {
    v9 = awayFromConstraintsByEdge;
  }

  else
  {
    v9 = v5;
  }

  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

- (void)setConstraints:(NSArray *)trackingConstraints activeWhenNearEdge:(NSDirectionalRectEdge)edge
{
  v18 = trackingConstraints;
  nearEdgeConstraintsByEdge = self->_nearEdgeConstraintsByEdge;
  if (!nearEdgeConstraintsByEdge)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_nearEdgeConstraintsByEdge;
    self->_nearEdgeConstraintsByEdge = v7;

    nearEdgeConstraintsByEdge = self->_nearEdgeConstraintsByEdge;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  [(NSMutableDictionary *)nearEdgeConstraintsByEdge setObject:v18 forKey:v9];

  owningView = [(UILayoutGuide *)self owningView];
  window = [owningView window];

  if (window)
  {
    [(UITrackingLayoutGuide *)self setConstrainedToWindowGuide:1];
  }

  owningView2 = [(UILayoutGuide *)self owningView];
  _window = [owningView2 _window];
  _primaryKeyboardTrackingGuide = [_window _primaryKeyboardTrackingGuide];
  [_primaryKeyboardTrackingGuide trackConstraintsFromViewBasedGuide:self];

  if ((self->_overlappingEdges & edge) != 0)
  {
    owningView3 = [(UILayoutGuide *)self owningView];
    _window2 = [owningView3 _window];
    _primaryKeyboardTrackingGuide2 = [_window2 _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide2 updateConstraintsForActiveEdges];
  }
}

- (NSArray)constraintsActiveWhenNearEdge:(NSDirectionalRectEdge)edge
{
  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    nearEdgeConstraintsByEdge = self->_nearEdgeConstraintsByEdge;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
    [(NSMutableDictionary *)nearEdgeConstraintsByEdge objectForKey:v6];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
    [(UITrackingLayoutGuide *)self _nearEdgeCombinedTrackedConstraintsForEdgeKey:v6];
  }
  v7 = ;

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (void)setConstraints:(NSArray *)trackingConstraints activeWhenAwayFromEdge:(NSDirectionalRectEdge)edge
{
  v18 = trackingConstraints;
  awayFromConstraintsByEdge = self->_awayFromConstraintsByEdge;
  if (!awayFromConstraintsByEdge)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_awayFromConstraintsByEdge;
    self->_awayFromConstraintsByEdge = v7;

    awayFromConstraintsByEdge = self->_awayFromConstraintsByEdge;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  [(NSMutableDictionary *)awayFromConstraintsByEdge setObject:v18 forKey:v9];

  owningView = [(UILayoutGuide *)self owningView];
  window = [owningView window];

  if (window)
  {
    [(UITrackingLayoutGuide *)self setConstrainedToWindowGuide:1];
  }

  owningView2 = [(UILayoutGuide *)self owningView];
  _window = [owningView2 _window];
  _primaryKeyboardTrackingGuide = [_window _primaryKeyboardTrackingGuide];
  [_primaryKeyboardTrackingGuide trackConstraintsFromViewBasedGuide:self];

  if ((self->_overlappingEdges & edge) == 0)
  {
    owningView3 = [(UILayoutGuide *)self owningView];
    _window2 = [owningView3 _window];
    _primaryKeyboardTrackingGuide2 = [_window2 _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide2 updateConstraintsForActiveEdges];
  }
}

- (NSArray)constraintsActiveWhenAwayFromEdge:(NSDirectionalRectEdge)edge
{
  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    awayFromConstraintsByEdge = self->_awayFromConstraintsByEdge;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
    [(NSMutableDictionary *)awayFromConstraintsByEdge objectForKey:v6];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
    [(UITrackingLayoutGuide *)self _awayFromCombinedTrackedConstraintsForEdgeKey:v6];
  }
  v7 = ;

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (void)stopTrackingConstraintsForEdge:(unint64_t)edge
{
  nearEdgeConstraintsByEdge = self->_nearEdgeConstraintsByEdge;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v18 = [(NSMutableDictionary *)nearEdgeConstraintsByEdge objectForKey:v6];

  if (v18)
  {
    firstObject = [v18 firstObject];
    isActive = [firstObject isActive];

    if (isActive)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:v18];
    }
  }

  awayFromConstraintsByEdge = self->_awayFromConstraintsByEdge;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  v11 = [(NSMutableDictionary *)awayFromConstraintsByEdge objectForKey:v10];

  if (v11)
  {
    firstObject2 = [v11 firstObject];
    isActive2 = [firstObject2 isActive];

    if (isActive2)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:v11];
    }
  }

  v14 = self->_nearEdgeConstraintsByEdge;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  [(NSMutableDictionary *)v14 removeObjectForKey:v15];

  v16 = self->_awayFromConstraintsByEdge;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  [(NSMutableDictionary *)v16 removeObjectForKey:v17];
}

- (void)removeAllTrackedConstraints
{
  owningView = [(UILayoutGuide *)self owningView];
  window = [owningView window];

  if (window)
  {
    owningView2 = [(UILayoutGuide *)self owningView];
    window2 = [owningView2 window];
    _primaryKeyboardTrackingGuide = [window2 _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide removeTrackedConstraintsFromViewBasedGuide:self];
  }

  [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge removeAllObjects];
  awayFromConstraintsByEdge = self->_awayFromConstraintsByEdge;

  [(NSMutableDictionary *)awayFromConstraintsByEdge removeAllObjects];
}

- (void)setConstrainedToWindowGuide:(BOOL)guide
{
  if (self->_constrainedToWindowGuide != guide)
  {
    self->_constrainedToWindowGuide = guide;
  }
}

- (id)_nearEdgeCombinedTrackedConstraintsForEdgeKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  owningView = [(UILayoutGuide *)self owningView];
  window = [owningView window];
  if (window)
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  constrainedToWindowGuide = [(UITrackingLayoutGuide *)self constrainedToWindowGuide];

  if (constrainedToWindowGuide)
  {
    goto LABEL_4;
  }

  v10 = [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge objectForKey:keyCopy];
  if (v10)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [v10 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v16 = [v10 objectForKey:*(*(&v17 + 1) + 8 * i)];
          if ([v16 count])
          {
            [v8 addObjectsFromArray:v16];
          }
        }

        v13 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    if ([v8 count])
    {
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_21:

LABEL_5:

  return v8;
}

- (id)_awayFromCombinedTrackedConstraintsForEdgeKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  owningView = [(UILayoutGuide *)self owningView];
  window = [owningView window];
  if (window)
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  constrainedToWindowGuide = [(UITrackingLayoutGuide *)self constrainedToWindowGuide];

  if (constrainedToWindowGuide)
  {
    goto LABEL_4;
  }

  v10 = [(NSMutableDictionary *)self->_awayFromConstraintsByEdge objectForKey:keyCopy];
  if (v10)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [v10 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v16 = [v10 objectForKey:*(*(&v17 + 1) + 8 * i)];
          if ([v16 count])
          {
            [v8 addObjectsFromArray:v16];
          }
        }

        v13 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    if ([v8 count])
    {
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_21:

LABEL_5:

  return v8;
}

- (UIEdgeInsets)triggerInsetsForPortrait
{
  top = self->_triggerInsetsForPortrait.top;
  left = self->_triggerInsetsForPortrait.left;
  bottom = self->_triggerInsetsForPortrait.bottom;
  right = self->_triggerInsetsForPortrait.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)triggerInsetsForLandscape
{
  top = self->_triggerInsetsForLandscape.top;
  left = self->_triggerInsetsForLandscape.left;
  bottom = self->_triggerInsetsForLandscape.bottom;
  right = self->_triggerInsetsForLandscape.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)triggerProportions
{
  top = self->_triggerProportions.top;
  left = self->_triggerProportions.left;
  bottom = self->_triggerProportions.bottom;
  right = self->_triggerProportions.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setOwningView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = UITrackingLayoutGuide;
  [(UILayoutGuide *)&v6 _setOwningView:viewCopy];
  window = [viewCopy window];

  if (window)
  {
    [(UITrackingLayoutGuide *)self setConstrainedToWindowGuide:1];
  }

  self->_owningViewInterfaceLayoutDirection = [viewCopy effectiveUserInterfaceLayoutDirection];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_triggerProportions.top), vceqzq_f64(*&self->_triggerProportions.bottom))))))
  {
    [(UITrackingLayoutGuide *)self _createThresholdsFromProportions];
  }
}

- (void)trackConstraintsFromViewBasedGuide:(id)guide
{
  v40 = *MEMORY[0x1E69E9840];
  guideCopy = guide;
  if (guideCopy != self && ![(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    guideCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", guideCopy];
    edgeConstraints = [(UITrackingLayoutGuide *)guideCopy edgeConstraints];
    v7 = [edgeConstraints objectForKey:@"UIKBNearEdgeConstraintsByEdge"];

    v29 = v7;
    v26 = guideCopy;
    if ([v7 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = [v7 allKeys];
      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v35;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v35 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v34 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge objectForKey:v12];
            v14 = [v13 mutableCopy];

            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            v15 = [v29 objectForKey:v12];
            [v14 setObject:v15 forKey:guideCopy];

            [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge setObject:v14 forKey:v12];
          }

          v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v9);
      }
    }

    edgeConstraints2 = [(UITrackingLayoutGuide *)guideCopy edgeConstraints];
    v17 = [edgeConstraints2 objectForKey:@"UIKBAwayFromEdgeConstraintsByEdge"];

    if ([v17 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obja = [v17 allKeys];
      v18 = [obja countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(obja);
            }

            v22 = *(*(&v30 + 1) + 8 * j);
            v23 = [(NSMutableDictionary *)self->_awayFromConstraintsByEdge objectForKey:v22];
            v24 = [v23 mutableCopy];

            if (!v24)
            {
              v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            v25 = [v17 objectForKey:v22];
            [v24 setObject:v25 forKey:guideCopy];

            [(NSMutableDictionary *)self->_awayFromConstraintsByEdge setObject:v24 forKey:v22];
          }

          v19 = [obja countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v19);
      }

      guideCopy = v26;
    }
  }
}

- (void)removeTrackedConstraintsFromViewBasedGuide:(id)guide
{
  v39 = *MEMORY[0x1E69E9840];
  guideCopy = guide;
  if (guideCopy == self)
  {
    [(UITrackingLayoutGuide *)self removeAllTrackedConstraints];
  }

  else if (![(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", guideCopy];
    v28 = v27 = guideCopy;
    edgeConstraints = [(UITrackingLayoutGuide *)guideCopy edgeConstraints];
    v6 = [edgeConstraints objectForKey:@"UIKBNearEdgeConstraintsByEdge"];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v6;
    allKeys = [v6 allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge objectForKey:v12];
          v14 = [v13 mutableCopy];

          if (v14)
          {
            [v14 removeObjectForKey:v28];
            [(NSMutableDictionary *)self->_nearEdgeConstraintsByEdge setObject:v14 forKey:v12];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    edgeConstraints2 = [(UITrackingLayoutGuide *)v27 edgeConstraints];
    v16 = [edgeConstraints2 objectForKey:@"UIKBAwayFromEdgeConstraintsByEdge"];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v16;
    allKeys2 = [v16 allKeys];
    v18 = [allKeys2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(allKeys2);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = [(NSMutableDictionary *)self->_awayFromConstraintsByEdge objectForKey:v22];
          v24 = [v23 mutableCopy];

          if (v24)
          {
            [v24 removeObjectForKey:v28];
            [(NSMutableDictionary *)self->_awayFromConstraintsByEdge setObject:v24 forKey:v22];
          }
        }

        v19 = [allKeys2 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v19);
    }

    guideCopy = v27;
  }
}

- (void)pauseUpdatingConstraintsForEdges:(unint64_t)edges
{
  self->_pausedEdges = edges;
  self->_overlappingEdges = 0;
  [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:1];

  [(UITrackingLayoutGuide *)self _thresholdCheck];
}

- (void)startUpdatingConstraintsForEdges:(unint64_t)edges
{
  if (edges == 15)
  {
    self->_pausedEdges = 0;
  }

  else
  {
    self->_pausedEdges &= ~edges;
  }

  self->_overlappingEdges = 0;
  [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:1];

  [(UITrackingLayoutGuide *)self _thresholdCheck];
}

- (void)updateConstraintsForActiveEdges
{
  self->_overlappingEdges = 0;
  [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:1];

  [(UITrackingLayoutGuide *)self _thresholdCheck];
}

- (BOOL)changeOffsetConstants:(UIOffset)constants
{
  if (constants.horizontal >= 0.0)
  {
    horizontal = constants.horizontal;
  }

  else
  {
    horizontal = 0.0;
  }

  if (constants.vertical >= 0.0)
  {
    vertical = constants.vertical;
  }

  else
  {
    vertical = 0.0;
  }

  _systemConstraints = [(UILayoutGuide *)self _systemConstraints];
  v7 = [_systemConstraints objectAtIndexedSubscript:1];
  [v7 constant];
  v9 = v8;
  _systemConstraints2 = [(UILayoutGuide *)self _systemConstraints];
  v11 = [_systemConstraints2 objectAtIndexedSubscript:2];
  [v11 constant];
  v13 = v12;

  v14 = v13 == vertical && v9 == horizontal;
  _systemConstraints3 = [(UILayoutGuide *)self _systemConstraints];
  v16 = [_systemConstraints3 objectAtIndexedSubscript:1];
  [v16 setConstant:horizontal];

  _systemConstraints4 = [(UILayoutGuide *)self _systemConstraints];
  v18 = [_systemConstraints4 objectAtIndexedSubscript:2];
  [v18 setConstant:vertical];

  if (!v14)
  {
    [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:1];
  }

  [(UITrackingLayoutGuide *)self _thresholdCheck];
  return v14;
}

- (BOOL)changeSizingConstants:(CGSize)constants
{
  height = constants.height;
  width = constants.width;
  _systemConstraints = [(UILayoutGuide *)self _systemConstraints];
  v7 = [_systemConstraints objectAtIndexedSubscript:0];
  [v7 constant];
  v9 = v8;
  _systemConstraints2 = [(UILayoutGuide *)self _systemConstraints];
  v11 = [_systemConstraints2 objectAtIndexedSubscript:3];
  [v11 constant];
  v13 = v12;

  v14 = v13 != height || v9 != width;
  _systemConstraints3 = [(UILayoutGuide *)self _systemConstraints];
  v16 = [_systemConstraints3 objectAtIndexedSubscript:0];
  [v16 setConstant:width];

  _systemConstraints4 = [(UILayoutGuide *)self _systemConstraints];
  v18 = [_systemConstraints4 objectAtIndexedSubscript:3];
  [v18 setConstant:height];

  if (!v14)
  {
    [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:1];
  }

  [(UITrackingLayoutGuide *)self _thresholdCheck];
  return v14;
}

- (void)_layoutOwningViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UITrackingLayoutGuide_Internal___layoutOwningViewAnimated___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
  {
    if (!self->_animatingConstraintsChange && self->_animatesChanges && [(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      self->_animatingConstraintsChange = 1;
      animationDuration = self->_animationDuration;
      animationOptions = self->_animationOptions;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__UITrackingLayoutGuide_Internal___layoutOwningViewAnimated___block_invoke_2;
      v10[3] = &unk_1E70F0F78;
      v11 = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61__UITrackingLayoutGuide_Internal___layoutOwningViewAnimated___block_invoke_3;
      v9[3] = &unk_1E70F5AC0;
      v9[4] = self;
      [UIView animateWithDuration:animationOptions delay:v10 options:v9 animations:animationDuration completion:0.0];
    }
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

void __61__UITrackingLayoutGuide_Internal___layoutOwningViewAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) constrainedToWindowGuide];
  v3 = [*(a1 + 32) owningView];
  v5 = v3;
  if (v2)
  {
    [v3 layoutIfNeeded];
  }

  else
  {
    v4 = [v3 _window];
    [v4 layoutViewsForTrackedGuides];
  }
}

- (void)setEdgeThresholds:(UIEdgeInsets)thresholds forOrientation:(int64_t)orientation
{
  if ((orientation - 1) >= 2)
  {
    if ((orientation - 3) > 1)
    {
      return;
    }

    v4 = &OBJC_IVAR___UITrackingLayoutGuide__triggerInsetsForLandscape;
  }

  else
  {
    v4 = &OBJC_IVAR___UITrackingLayoutGuide__triggerInsetsForPortrait;
  }

  *(&self->super.super.isa + *v4) = thresholds;
}

- (void)_thresholdCheckForGuide:(CGRect)guide inContext:(CGRect)context
{
  height = context.size.height;
  width = context.size.width;
  y = context.origin.y;
  x = context.origin.x;
  v30 = context.origin.x;
  v7 = guide.origin.x;
  v9 = 3;
  if (context.size.width > context.size.height)
  {
    v9 = 4;
  }

  v10 = (self + OBJC_IVAR___UITrackingLayoutGuide__nearEdgeConstraintsByEdge[v9]);
  v40 = *v10;
  v38 = v10[1];
  v41 = v10[2];
  v39 = v10[3];
  v31 = guide.origin.x;
  v32 = guide.size.width;
  v11 = guide.origin.y;
  v12 = guide.size.width;
  v13 = guide.size.height;
  v33 = guide.size.height;
  MinY = CGRectGetMinY(guide);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v37 = MinY - CGRectGetMinY(v43);
  v44.origin.x = v7;
  v44.origin.y = v11;
  v44.size.width = v12;
  v44.size.height = v13;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v30;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v36 = MinX - CGRectGetMinX(v45);
  v46.origin.x = v30;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MaxY = CGRectGetMaxY(v46);
  v47.origin.x = v31;
  v47.origin.y = v11;
  v47.size.width = v32;
  v47.size.height = v33;
  v35 = MaxY - CGRectGetMaxY(v47);
  v48.origin.x = v30;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v31;
  v49.origin.y = v11;
  v49.size.width = v32;
  v49.size.height = v33;
  v18 = MaxX - CGRectGetMaxX(v49);
  _isRTL = [(UITrackingLayoutGuide *)self _isRTL];
  v20 = 2;
  if (_isRTL)
  {
    v21 = 8;
  }

  else
  {
    v21 = 2;
  }

  if (!_isRTL)
  {
    v20 = 8;
  }

  pausedEdges = self->_pausedEdges;
  if (v36 >= v38 || (pausedEdges & v21) != 0)
  {
    v21 = 0;
  }

  if (v18 >= v39 || (pausedEdges & v20) != 0)
  {
    v20 = 0;
  }

  v25 = v21 | v20;
  v26 = v37 <= v40 && (self->_pausedEdges & 1) == 0;
  v27 = v25 | v26;
  v28 = (pausedEdges >> 2) & 1;
  if (v35 > v41)
  {
    LODWORD(v28) = 1;
  }

  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 | 4;
  }

  [(UITrackingLayoutGuide *)self _updateForOverlappingEdges:v29, v41, v35];
}

- (void)_updateForOverlappingEdges:(unint64_t)edges
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->_overlappingEdges != edges)
  {
    v5 = [(UITrackingLayoutGuide *)self validatedOverlappingEdges:?];
    self->_overlappingEdges = v5;
    if (edges)
    {
      v6 = self->_pausedEdges | v5 ^ 0xF;
    }

    else
    {
      v6 = 15;
    }

    v7 = [(UITrackingLayoutGuide *)self _keysInvolvingEdges:v5];
    v8 = [(UITrackingLayoutGuide *)self _keysFromEdges:self->_overlappingEdges];
    v9 = [(UITrackingLayoutGuide *)self _keysInvolvingEdges:v6];
    v36 = [(UITrackingLayoutGuide *)self _keysFromEdges:v6];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(UITrackingLayoutGuide *)self _awayFromCombinedTrackedConstraintsForEdgeKey:*(*(&v50 + 1) + 8 * i), v36];
          if (v17)
          {
            [v10 addObjectsFromArray:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v14);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(UITrackingLayoutGuide *)self _nearEdgeCombinedTrackedConstraintsForEdgeKey:*(*(&v46 + 1) + 8 * j), v36];
          if (v23)
          {
            [v11 addObjectsFromArray:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v20);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = v9;
    v25 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [(UITrackingLayoutGuide *)self _nearEdgeCombinedTrackedConstraintsForEdgeKey:*(*(&v42 + 1) + 8 * k), v36];
          if (v29)
          {
            [v10 addObjectsFromArray:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v26);
    }

    v37 = v12;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v36;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [(UITrackingLayoutGuide *)self _awayFromCombinedTrackedConstraintsForEdgeKey:*(*(&v38 + 1) + 8 * m), v36, v37, v38];
          if (v35)
          {
            [v11 addObjectsFromArray:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v32);
    }

    if ([v10 count])
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:v10];
      if (![v11 count])
      {
        goto LABEL_49;
      }
    }

    else if (![v11 count])
    {
LABEL_50:
      [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:0, v36];

      return;
    }

    [MEMORY[0x1E69977A0] activateConstraints:{v11, v36}];
LABEL_49:
    [(UITrackingLayoutGuide *)self _layoutOwningViewAnimated:[(UITrackingLayoutGuide *)self skipAnimationOnNextPassOnly]^ 1];
    goto LABEL_50;
  }

  [(UITrackingLayoutGuide *)self setSkipAnimationOnNextPassOnly:0];
}

- (id)_keysFromEdges:(unint64_t)edges
{
  edgesCopy = edges;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if ((edgesCopy & 1) == 0)
  {
    v6 = edgesCopy & 2;
    goto LABEL_17;
  }

  [v4 addObject:&unk_1EFE2FC38];
  if ((edgesCopy & 2) != 0)
  {
    [v5 addObject:&unk_1EFE2FC50];
    if ((edgesCopy & 8) != 0)
    {
      [v5 addObject:&unk_1EFE2FC68];
      if ((edgesCopy & 4) == 0)
      {
        [v5 addObject:&unk_1EFE2FCB0];
LABEL_18:
        [v5 addObject:&unk_1EFE2FCF8];
        if ((edgesCopy & 8) == 0)
        {
          if ((edgesCopy & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_23;
        }

        [v5 addObject:&unk_1EFE2FD10];
        if ((edgesCopy & 4) != 0)
        {
          [v5 addObject:&unk_1EFE2FD28];
LABEL_23:
          v8 = edgesCopy & 8;
          [v5 addObject:&unk_1EFE2FD40];
LABEL_27:
          [v5 addObject:&unk_1EFE2FD58];
          if (!v8)
          {
            goto LABEL_30;
          }

          [v5 addObject:&unk_1EFE2FD70];
        }

LABEL_29:
        [v5 addObject:&unk_1EFE2FD88];
        goto LABEL_30;
      }

      [v5 addObject:&unk_1EFE2FC80];
    }

    else if ((edgesCopy & 4) == 0)
    {
      goto LABEL_18;
    }

    v7 = edgesCopy & 8;
    [v5 addObject:&unk_1EFE2FC98];
  }

  else
  {
    v7 = edgesCopy & 8;
  }

  v6 = edgesCopy & 2;
  if (v7)
  {
    [v5 addObject:&unk_1EFE2FCB0];
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_17;
    }

    [v5 addObject:&unk_1EFE2FCC8];
  }

  else if ((edgesCopy & 4) == 0)
  {
    goto LABEL_17;
  }

  [v5 addObject:&unk_1EFE2FCE0];
LABEL_17:
  if (v6)
  {
    goto LABEL_18;
  }

  v8 = edgesCopy & 8;
  if ((edgesCopy & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((edgesCopy & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v5;
}

- (id)_keysInvolvingEdges:(unint64_t)edges
{
  edgesCopy = edges;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (edgesCopy)
  {
    [v4 addObject:&unk_1EFE2FC38];
    [v5 addObject:&unk_1EFE2FC50];
    [v5 addObject:&unk_1EFE2FCE0];
    [v5 addObject:&unk_1EFE2FCB0];
    [v5 addObject:&unk_1EFE2FC68];
    [v5 addObject:&unk_1EFE2FC98];
    [v5 addObject:&unk_1EFE2FCC8];
    if ((edgesCopy & 2) == 0)
    {
LABEL_3:
      if ((edgesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((edgesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:&unk_1EFE2FCF8];
  [v5 addObject:&unk_1EFE2FD40];
  [v5 addObject:&unk_1EFE2FD10];
  [v5 addObject:&unk_1EFE2FD28];
  [v5 addObject:&unk_1EFE2FC50];
  [v5 addObject:&unk_1EFE2FC98];
  [v5 addObject:&unk_1EFE2FC68];
  if ((edgesCopy & 4) == 0)
  {
LABEL_4:
    if ((edgesCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v5 addObject:&unk_1EFE2FD58];
  [v5 addObject:&unk_1EFE2FCE0];
  [v5 addObject:&unk_1EFE2FD40];
  [v5 addObject:&unk_1EFE2FD70];
  [v5 addObject:&unk_1EFE2FC98];
  [v5 addObject:&unk_1EFE2FCC8];
  [v5 addObject:&unk_1EFE2FD28];
  if ((edgesCopy & 8) != 0)
  {
LABEL_5:
    [v5 addObject:&unk_1EFE2FD88];
    [v5 addObject:&unk_1EFE2FCB0];
    [v5 addObject:&unk_1EFE2FD10];
    [v5 addObject:&unk_1EFE2FD70];
    [v5 addObject:&unk_1EFE2FC68];
    [v5 addObject:&unk_1EFE2FCC8];
    [v5 addObject:&unk_1EFE2FD28];
  }

LABEL_6:
  if ([v5 count])
  {
    [v5 addObject:&unk_1EFE2FC80];
  }

  return v5;
}

@end