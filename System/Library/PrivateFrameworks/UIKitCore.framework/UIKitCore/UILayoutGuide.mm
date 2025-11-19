@interface UILayoutGuide
- (BOOL)nsli_defaultResolvedValue:(double *)a3 forSymbolicConstant:(id)a4 inConstraint:(id)a5 error:(id *)a6;
- (BOOL)nsli_isRTL;
- (BOOL)nsli_lowerAttribute:(int)a3 intoExpression:(id)a4 withCoefficient:(double)a5 container:(id)a6;
- (BOOL)nsli_lowerAttribute:(int)a3 intoExpression:(id)a4 withCoefficient:(double)a5 forConstraint:(id)a6;
- (BOOL)nsli_removeConstraint:(id)a3;
- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4;
- (CGRect)frameInView:(id)a3;
- (CGRect)layoutFrame;
- (CGSize)nsli_convertSizeFromEngineSpace:(CGSize)a3;
- (CGSize)nsli_convertSizeToEngineSpace:(CGSize)a3;
- (CGSize)nsli_engineToUserScalingCoefficients;
- (NSArray)constraintsAffectingLayoutForAxis:(UILayoutConstraintAxis)axis;
- (NSLayoutDimension)heightAnchor;
- (NSLayoutDimension)widthAnchor;
- (NSLayoutXAxisAnchor)centerXAnchor;
- (NSLayoutXAxisAnchor)leadingAnchor;
- (NSLayoutXAxisAnchor)leftAnchor;
- (NSLayoutXAxisAnchor)rightAnchor;
- (NSLayoutXAxisAnchor)trailingAnchor;
- (NSLayoutYAxisAnchor)bottomAnchor;
- (NSLayoutYAxisAnchor)centerYAnchor;
- (NSLayoutYAxisAnchor)topAnchor;
- (NSString)description;
- (UILayoutGuide)init;
- (UILayoutGuide)initWithCoder:(id)a3;
- (UITraitCollection)traitCollection;
- (UIView)owningView;
- (id)_autolayoutTraceAtLevel:(int64_t)a3 recursively:(BOOL)a4;
- (id)_createAnchorWithClass:(Class)a3 attribute:(int64_t)a4;
- (id)_layoutRect;
- (id)_uili_existingBaseFrameVariables;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)nsis_descriptionOfVariable:(id)a3;
- (id)nsli_boundsHeightVariable;
- (id)nsli_boundsWidthVariable;
- (id)nsli_constraintWithAnchor:(id)a3 relatedBy:(int64_t)a4 toAnchor:(id)a5 withSystemSpacingMultipliedBy:(double)a6;
- (id)nsli_description;
- (id)nsli_layoutEngine;
- (id)nsli_minXVariable;
- (id)nsli_minYVariable;
- (id)nsli_superitem;
- (int)nsis_orientationHintForVariable:(id)a3;
- (void)_addConstraintToBeProcessedAfterDecoding:(id)a3;
- (void)_invalidateLayoutFrame;
- (void)_owningViewIsDeallocating;
- (void)_referenceView;
- (void)_setLockedToOwningView:(BOOL)a3;
- (void)_setManualLayoutFrame:(CGRect)a3;
- (void)_setOwningView:(id)a3;
- (void)_setSystemConstraints:(id)a3;
- (void)_snipReferencingConstraints;
- (void)_ui_addSubLayoutItem:(id)a3;
- (void)_ui_insertSubLayoutItem:(id)a3 atIndex:(int64_t)a4;
- (void)_ui_removeFromParentLayoutItem;
- (void)_uili_stashLayoutVariableObservation:(id)a3 forVariable:(id)a4;
- (void)_updateLayoutFrameInOwningView:(id)a3 fromEngine:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)nsis_valueOfVariable:(id)a3 didChangeInEngine:(id)a4;
- (void)nsli_addConstraint:(id)a3;
- (void)setOwningView:(UIView *)owningView;
@end

@implementation UILayoutGuide

- (NSLayoutYAxisAnchor)topAnchor
{
  topAnchor = self->_topAnchor;
  if (!topAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:3];
    v5 = self->_topAnchor;
    self->_topAnchor = v4;

    topAnchor = self->_topAnchor;
  }

  return topAnchor;
}

- (NSLayoutDimension)widthAnchor
{
  widthAnchor = self->_widthAnchor;
  if (!widthAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:7];
    v5 = self->_widthAnchor;
    self->_widthAnchor = v4;

    widthAnchor = self->_widthAnchor;
  }

  return widthAnchor;
}

- (UILayoutGuide)init
{
  v6.receiver = self;
  v6.super_class = UILayoutGuide;
  v2 = [(UILayoutGuide *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &stru_1EFB14550;
  }

  return v3;
}

- (NSLayoutXAxisAnchor)centerXAnchor
{
  centerXAnchor = self->_centerXAnchor;
  if (!centerXAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:9];
    v5 = self->_centerXAnchor;
    self->_centerXAnchor = v4;

    centerXAnchor = self->_centerXAnchor;
  }

  return centerXAnchor;
}

- (NSLayoutDimension)heightAnchor
{
  heightAnchor = self->_heightAnchor;
  if (!heightAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:8];
    v5 = self->_heightAnchor;
    self->_heightAnchor = v4;

    heightAnchor = self->_heightAnchor;
  }

  return heightAnchor;
}

- (UIView)owningView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  return WeakRetained;
}

- (void)_invalidateLayoutFrame
{
  if (!self->_useManualLayoutFrame)
  {
    self->_isLayoutFrameValid = 0;
  }
}

- (NSLayoutXAxisAnchor)trailingAnchor
{
  trailingAnchor = self->_trailingAnchor;
  if (!trailingAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:6];
    v5 = self->_trailingAnchor;
    self->_trailingAnchor = v4;

    trailingAnchor = self->_trailingAnchor;
  }

  return trailingAnchor;
}

- (NSLayoutYAxisAnchor)centerYAnchor
{
  centerYAnchor = self->_centerYAnchor;
  if (!centerYAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:10];
    v5 = self->_centerYAnchor;
    self->_centerYAnchor = v4;

    centerYAnchor = self->_centerYAnchor;
  }

  return centerYAnchor;
}

- (NSLayoutXAxisAnchor)rightAnchor
{
  rightAnchor = self->_rightAnchor;
  if (!rightAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:2];
    v5 = self->_rightAnchor;
    self->_rightAnchor = v4;

    rightAnchor = self->_rightAnchor;
  }

  return rightAnchor;
}

- (NSLayoutXAxisAnchor)leftAnchor
{
  leftAnchor = self->_leftAnchor;
  if (!leftAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:1];
    v5 = self->_leftAnchor;
    self->_leftAnchor = v4;

    leftAnchor = self->_leftAnchor;
  }

  return leftAnchor;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  if (WeakRetained)
  {
    [(UILayoutGuide *)self _setLockedToOwningView:0];
    v4 = objc_loadWeakRetained(&self->_owningView);
    [v4 removeLayoutGuide:self];
  }

  [(NSISVariable *)self->_minXVariable setDelegate:0];
  [(NSISVariable *)self->_minYVariable setDelegate:0];
  [(NSISVariable *)self->_boundsWidthVariable setDelegate:0];
  [(NSISVariable *)self->_boundsHeightVariable setDelegate:0];
  v5.receiver = self;
  v5.super_class = UILayoutGuide;
  [(UILayoutGuide *)&v5 dealloc];
}

- (NSLayoutYAxisAnchor)bottomAnchor
{
  bottomAnchor = self->_bottomAnchor;
  if (!bottomAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:4];
    v5 = self->_bottomAnchor;
    self->_bottomAnchor = v4;

    bottomAnchor = self->_bottomAnchor;
  }

  return bottomAnchor;
}

- (NSLayoutXAxisAnchor)leadingAnchor
{
  leadingAnchor = self->_leadingAnchor;
  if (!leadingAnchor)
  {
    v4 = [(UILayoutGuide *)self _createAnchorWithClass:objc_opt_class() attribute:5];
    v5 = self->_leadingAnchor;
    self->_leadingAnchor = v4;

    leadingAnchor = self->_leadingAnchor;
  }

  return leadingAnchor;
}

- (id)nsli_layoutEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  v3 = [WeakRetained nsli_layoutEngine];

  return v3;
}

- (id)nsli_superitem
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  return WeakRetained;
}

- (id)_uili_existingBaseFrameVariables
{
  if (self->_minXVariable || self->_minYVariable || self->_boundsWidthVariable || self->_boundsHeightVariable)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = v3;
    if (self->_minXVariable)
    {
      [v3 addObject:?];
    }

    if (self->_minYVariable)
    {
      [v4 addObject:?];
    }

    if (self->_boundsWidthVariable)
    {
      [v4 addObject:?];
    }

    if (self->_boundsHeightVariable)
    {
      [v4 addObject:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  return WeakRetained;
}

- (id)nsli_boundsWidthVariable
{
  boundsWidthVariable = self->_boundsWidthVariable;
  if (!boundsWidthVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, [(UILayoutGuide *)self _allowsNegativeDimensions]^ 1, 1);
    v5 = self->_boundsWidthVariable;
    self->_boundsWidthVariable = v4;

    boundsWidthVariable = self->_boundsWidthVariable;
  }

  return boundsWidthVariable;
}

- (id)nsli_minXVariable
{
  minXVariable = self->_minXVariable;
  if (!minXVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, 0, 1);
    v5 = self->_minXVariable;
    self->_minXVariable = v4;

    minXVariable = self->_minXVariable;
  }

  return minXVariable;
}

- (id)nsli_boundsHeightVariable
{
  boundsHeightVariable = self->_boundsHeightVariable;
  if (!boundsHeightVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, [(UILayoutGuide *)self _allowsNegativeDimensions]^ 1, 1);
    v5 = self->_boundsHeightVariable;
    self->_boundsHeightVariable = v4;

    boundsHeightVariable = self->_boundsHeightVariable;
  }

  return boundsHeightVariable;
}

- (id)nsli_minYVariable
{
  minYVariable = self->_minYVariable;
  if (!minYVariable)
  {
    v4 = _UILayoutItemCreateAndObserveVariableWithValueRestriction(self, 0, 1);
    v5 = self->_minYVariable;
    self->_minYVariable = v4;

    minYVariable = self->_minYVariable;
  }

  return minYVariable;
}

- (void)_snipReferencingConstraints
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = self->_unsafeUnretainedOwningView;
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [v4 nsli_installedConstraints];
      if ([v6 count])
      {
        if (!v5)
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v14 + 1) + 8 * i);
              if ([v12 _referencesLayoutItem:self])
              {
                [v5 addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v9);
        }
      }

      v13 = [v4 nsli_superitem];

      v4 = v13;
    }

    while (v13);
  }

  else
  {
    v5 = 0;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:v5];
}

- (void)_owningViewIsDeallocating
{
  if (self->_unsafeUnretainedOwningView)
  {
    [(UILayoutGuide *)self _snipReferencingConstraints];
  }

  self->_unsafeUnretainedOwningView = 0;
}

- (CGRect)layoutFrame
{
  if (self->_useManualLayoutFrame)
  {
    x = self->_layoutFrame.origin.x;
    y = self->_layoutFrame.origin.y;
    width = self->_layoutFrame.size.width;
    height = self->_layoutFrame.size.height;
  }

  else
  {
    v7 = [(UILayoutGuide *)self nsli_layoutEngine];
    v8 = [v7 delegate];
    if ([(UIView *)v8 _usesLayoutEngineHostingConstraints])
    {
      [(UIView *)v8 _resetLayoutEngineHostConstraints];
    }

    v9 = [(UILayoutGuide *)self nsli_layoutEngine];
    [(NSISEngine *)v9 _UIKitPerformPendingChangeNotifications];

    if (!self->_isLayoutFrameValid)
    {
      v10 = *(MEMORY[0x1E695F058] + 16);
      self->_layoutFrame.origin = *MEMORY[0x1E695F058];
      self->_layoutFrame.size = v10;
      if (v7)
      {
        WeakRetained = objc_loadWeakRetained(&self->_owningView);
        v12 = WeakRetained;
        if ((WeakRetained[96] & 4) == 0 && (!v8 || (v8[96] & 0x20) == 0))
        {
          [(UIView *)WeakRetained _updateConstraintsAtEngineLevelIfNeededWithViewForVariableChangeNotifications:?];
        }

        [(UILayoutGuide *)self _updateLayoutFrameInOwningView:v12 fromEngine:v7];
      }
    }

    v13 = objc_loadWeakRetained(&self->_owningView);
    [v13 _layoutGuide:self adjustedLayoutFrameForFrame:{self->_layoutFrame.origin.x, self->_layoutFrame.origin.y, self->_layoutFrame.size.width, self->_layoutFrame.size.height}];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_ui_addSubLayoutItem:(id)a3
{
  v4 = a3;
  v5 = [(UILayoutGuide *)self owningView];
  [v4 _ui_addToView:v5 atIndex:-1];
}

- (void)_ui_insertSubLayoutItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(UILayoutGuide *)self owningView];
  [v6 _ui_addToView:v7 atIndex:a4];
}

- (void)_ui_removeFromParentLayoutItem
{
  v3 = [(UILayoutGuide *)self owningView];
  [v3 removeLayoutGuide:self];
}

- (UITraitCollection)traitCollection
{
  v2 = [(UILayoutGuide *)self _ui_view];
  v3 = [v2 traitCollection];

  return v3;
}

- (NSArray)constraintsAffectingLayoutForAxis:(UILayoutConstraintAxis)axis
{
  result = [(UIView *)[(UILayoutGuide *)self owningView] constraintsAffectingLayoutForAxis:axis ofItem:self];
  if (!result)
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }

  return result;
}

- (id)_autolayoutTraceAtLevel:(int64_t)a3 recursively:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n", a4];
  if (a3 >= 1)
  {
    do
    {
      [v6 appendString:@"|   "];
      --a3;
    }

    while (a3);
  }

  v7 = _layoutVariablesWithAmbiguousValueForLayoutItem(self);
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E696AD60] string];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [v8 appendString:{objc_msgSend(*(*(&v16 + 1) + 8 * v12), "description")}];
          [v8 appendString:{@", "}];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 2, 2}];
    v13 = [(UILayoutGuide *)self _descriptionForLayoutTrace];
    if (v8)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"- AMBIGUOUS LAYOUT for %@", v8];
    }

    else
    {
      v14 = @" - AMBIGUOUS LAYOUT";
    }
  }

  else
  {
    v13 = [(UILayoutGuide *)self _descriptionForLayoutTrace];
    v14 = &stru_1EFB14550;
  }

  [v6 appendFormat:@"*%@%@", v13, v14];
  return v6;
}

- (void)setOwningView:(UIView *)owningView
{
  v4 = owningView;
  if (self->_allowOwningViewSetting || (v6 = v4, [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Do not use -[UILayoutGuide setOwningView:] directly. Use -[UIView add/removeLayoutGuide:] instead" userInfo:0], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "raise"), v5, v4 = v6, self->_allowOwningViewSetting))
  {
    if (!self->_isLockedToOwningView)
    {
      v7 = v4;
      [(UILayoutGuide *)self _setOwningView:v4];
      v4 = v7;
      self->_allowOwningViewSetting = 0;
    }
  }
}

- (void)_setOwningView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(UILayoutGuide *)self _snipReferencingConstraints];
    }

    objc_storeWeak(&self->_owningView, obj);
    self->_unsafeUnretainedOwningView = obj;
    [(UILayoutGuide *)self _invalidateLayoutFrame];
  }
}

- (void)_setLockedToOwningView:(BOOL)a3
{
  isLockedToOwningView = self->_isLockedToOwningView;
  if (isLockedToOwningView != a3)
  {
    if (!isLockedToOwningView)
    {
      systemConstraints = self->_systemConstraints;
      self->_systemConstraints = 0;
    }

    self->_isLockedToOwningView = a3;
  }
}

- (void)_setSystemConstraints:(id)a3
{
  v6 = a3;
  v12 = v6;
  if (self->_isLockedToOwningView || ([MEMORY[0x1E696AAA8] currentHandler], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"UILayoutGuide.m", 79, @"The layout guide must be locked to its owning view before retaining system constraints"), v11, v6 = v12, self->_isLockedToOwningView))
  {
    if ((systemConstraints = self->_systemConstraints, p_systemConstraints = &self->_systemConstraints, v7 = systemConstraints, !v6) && v7 || (v10 = [v6 isEqualToArray:v7], v6 = v12, (v10 & 1) == 0))
    {
      objc_storeStrong(p_systemConstraints, a3);
      v6 = v12;
    }
  }
}

- (void)_setManualLayoutFrame:(CGRect)a3
{
  self->_useManualLayoutFrame = 1;
  self->_isLayoutFrameValid = 1;
  self->_layoutFrame = a3;
}

- (void)_updateLayoutFrameInOwningView:(id)a3 fromEngine:(id)a4
{
  if (!self->_useManualLayoutFrame)
  {
    v13 = 0uLL;
    v11 = 0u;
    v12 = 0u;
    [(UIView *)a3 _nsis_center:&v11 bounds:a4 inEngine:self forLayoutGuide:?];
    v5 = v12;
    __asm { FMOV            V3.2D, #-0.5 }

    self->_layoutFrame.origin = vaddq_f64(v13, vmulq_f64(v12, _Q3));
    self->_layoutFrame.size = v5;
    self->_isLayoutFrameValid = 1;
  }
}

- (id)_layoutRect
{
  layoutRect = self->_layoutRect;
  if (!layoutRect)
  {
    v4 = MEMORY[0x1E69977B8];
    v5 = [(UILayoutGuide *)self leadingAnchor];
    v6 = [(UILayoutGuide *)self topAnchor];
    v7 = [(UILayoutGuide *)self widthAnchor];
    v8 = [(UILayoutGuide *)self heightAnchor];
    v9 = [v4 layoutRectWithLeadingAnchor:v5 topAnchor:v6 widthAnchor:v7 heightAnchor:v8];
    v10 = self->_layoutRect;
    self->_layoutRect = v9;

    layoutRect = self->_layoutRect;
  }

  return layoutRect;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  [v5 encodeObject:WeakRetained forKey:@"UILayoutGuideOwningView"];

  [v5 encodeObject:self->_identifier forKey:@"UILayoutGuideIdentifier"];
  [v5 encodeBool:self->_isLockedToOwningView forKey:@"UILayoutGuideOwningViewIsLocked"];
  [v5 encodeBool:self->__shouldBeArchived forKey:@"UILayoutGuideShouldBeArchived"];
  [v5 encodeBool:self->__allowsNegativeDimensions forKey:@"UILayoutGuideAllowsNegativeDimensions"];
  if (self->_isLockedToOwningView)
  {
    [v5 encodeObject:self->_systemConstraints forKey:@"UILayoutGuideSystemConstraints"];
  }
}

- (UILayoutGuide)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UILayoutGuide;
  v5 = [(UILayoutGuide *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UILayoutGuideOwningView"];
    objc_storeWeak(&v5->_owningView, v6);

    v7 = [v4 decodeObjectForKey:@"UILayoutGuideIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v5->_isLockedToOwningView = [v4 decodeBoolForKey:@"UILayoutGuideOwningViewIsLocked"];
    v5->__shouldBeArchived = [v4 decodeBoolForKey:@"UILayoutGuideShouldBeArchived"];
    v5->__allowsNegativeDimensions = [v4 decodeBoolForKey:@"UILayoutGuideAllowsNegativeDimensions"];
    if (v5->_isLockedToOwningView)
    {
      v9 = [v4 decodeObjectForKey:@"UILayoutGuideSystemConstraints"];
      systemConstraints = v5->_systemConstraints;
      v5->_systemConstraints = v9;
    }

    WeakRetained = objc_loadWeakRetained(&v5->_owningView);
    [(UIView *)WeakRetained _finishDecodingLayoutGuideConnections:v5];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v5->_constraintsToBeProcessedAfterDecoding;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v17 container];
          [v18 _faultInGuidesForConstraint:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    constraintsToBeProcessedAfterDecoding = v5->_constraintsToBeProcessedAfterDecoding;
    v5->_constraintsToBeProcessedAfterDecoding = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UILayoutGuide *)self identifier];
  [(UILayoutGuide *)self layoutFrame];
  v7 = NSStringFromCGRect(v12);
  v8 = [(UILayoutGuide *)self owningView];
  v9 = [v3 stringWithFormat:@"<%@: %p - %@, layoutFrame = %@, owningView = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)_addConstraintToBeProcessedAfterDecoding:(id)a3
{
  v4 = a3;
  if (v4)
  {
    constraintsToBeProcessedAfterDecoding = self->_constraintsToBeProcessedAfterDecoding;
    v8 = v4;
    if (!constraintsToBeProcessedAfterDecoding)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_constraintsToBeProcessedAfterDecoding;
      self->_constraintsToBeProcessedAfterDecoding = v6;

      constraintsToBeProcessedAfterDecoding = self->_constraintsToBeProcessedAfterDecoding;
    }

    [(NSMutableArray *)constraintsToBeProcessedAfterDecoding addObject:v8];
    v4 = v8;
  }
}

- (CGSize)nsli_convertSizeToEngineSpace:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  [WeakRetained nsli_convertSizeToEngineSpace:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)nsli_convertSizeFromEngineSpace:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  [WeakRetained nsli_convertSizeFromEngineSpace:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)nsli_defaultResolvedValue:(double *)a3 forSymbolicConstant:(id)a4 inConstraint:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [(UILayoutGuide *)self owningView];
  LOBYTE(a6) = [v12 nsli_defaultResolvedValue:a3 forSymbolicConstant:v11 inConstraint:v10 error:a6];

  return a6;
}

- (id)nsli_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UILayoutGuide *)self identifier];
  v7 = [v3 stringWithFormat:@"%@:%p'%@'", v5, self, v6];

  return v7;
}

- (id)nsli_constraintWithAnchor:(id)a3 relatedBy:(int64_t)a4 toAnchor:(id)a5 withSystemSpacingMultipliedBy:(double)a6
{
  v9 = _MergedGlobals_1377;
  v10 = a5;
  v11 = a3;
  if (v9 != -1)
  {
    dispatch_once(&_MergedGlobals_1377, &__block_literal_global_683);
  }

  v12 = [qword_1ED4A2A68 nsli_constraintWithAnchor:v11 relatedBy:a4 toAnchor:v10 withSystemSpacingMultipliedBy:a6];

  return v12;
}

void __92__UILayoutGuide_nsli_constraintWithAnchor_relatedBy_toAnchor_withSystemSpacingMultipliedBy___block_invoke()
{
  v0 = objc_alloc_init(UIView);
  v1 = qword_1ED4A2A68;
  qword_1ED4A2A68 = v0;
}

- (void)nsli_addConstraint:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  [WeakRetained nsli_addConstraint:v4];
}

- (BOOL)nsli_removeConstraint:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  v6 = [WeakRetained nsli_removeConstraint:v4];

  return v6;
}

- (BOOL)nsli_lowerAttribute:(int)a3 intoExpression:(id)a4 withCoefficient:(double)a5 forConstraint:(id)a6
{
  v8 = *&a3;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  v13 = [v11 container];
  if (!v13 || WeakRetained && ([WeakRetained isDescendantOfView:v13] & 1) != 0)
  {
    v14 = [WeakRetained nsli_lowerAttribute:v8 intoExpression:v10 withCoefficient:v11 forConstraint:self onBehalfOfLayoutGuide:a5];
  }

  else
  {
    v15 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &nsli_lowerAttribute_intoExpression_withCoefficient_forConstraint____s_category) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = [v13 performSelector:sel_recursiveDescription];
      v18 = v17;
      v19 = [WeakRetained superview];
      v20 = v19;
      v23 = 138413314;
      v21 = @"NO SUPERVIEW";
      v24 = self;
      if (v19)
      {
        v21 = v19;
      }

      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = WeakRetained;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "UILayoutGuide's owningView hierarchy unprepared for constraint.\n\tself = %@\n\tConstraint: %@\n\tContainer hierarchy: \n%@\n\tView not found in container hierarchy: %@\n\tThat view's superview: %@", &v23, 0x34u);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)nsli_lowerAttribute:(int)a3 intoExpression:(id)a4 withCoefficient:(double)a5 container:(id)a6
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &nsli_lowerAttribute_intoExpression_withCoefficient_container____s_category_0) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[UILayoutGuide nsli_lowerAttribute:intoExpression:withCoefficient:container:]";
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected call to %s", &v8, 0xCu);
  }

  return 0;
}

- (BOOL)nsli_isRTL
{
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  v3 = [WeakRetained nsli_isRTL];

  return v3;
}

- (CGSize)nsli_engineToUserScalingCoefficients
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  WeakRetained = objc_loadWeakRetained(&self->_owningView);

  if (has_internal_diagnostics)
  {
    if (!WeakRetained)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unexpected access to UILayoutGuide without an owning view", buf, 2u);
      }
    }
  }

  else if (!WeakRetained)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &nsli_engineToUserScalingCoefficients___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpected access to UILayoutGuide without an owning view", v15, 2u);
    }
  }

  v5 = objc_loadWeakRetained(&self->_owningView);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_owningView);
    [v6 nsli_engineToUserScalingCoefficients];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    objc_opt_self();
    v8 = 0x3F66C16C16C16C17;
    v10 = 0x3F66C16C16C16C17;
  }

  v11 = *&v8;
  v12 = *&v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_uili_stashLayoutVariableObservation:(id)a3 forVariable:(id)a4
{
  v10 = a3;
  v6 = a4;
  stashedLayoutVariableObservations = self->_stashedLayoutVariableObservations;
  if (!stashedLayoutVariableObservations)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:4];
    v9 = self->_stashedLayoutVariableObservations;
    self->_stashedLayoutVariableObservations = v8;

    stashedLayoutVariableObservations = self->_stashedLayoutVariableObservations;
  }

  [(NSMapTable *)stashedLayoutVariableObservations setObject:v10 forKey:v6];
}

- (void)nsis_valueOfVariable:(id)a3 didChangeInEngine:(id)a4
{
  v5 = a4;
  v6 = [(UILayoutGuide *)self nsli_layoutEngine];

  if (v6 == v5)
  {

    [(UILayoutGuide *)self _invalidateLayoutFrame];
  }
}

- (id)nsis_descriptionOfVariable:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owningView);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_owningView);
    v7 = [v6 nsis_descriptionOfVariable:v4];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  v8 = MEMORY[0x1E696AEC0];
  if (self->_identifier)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@, ", self->_identifier];
    v7 = [v8 stringWithFormat:@"variable for UILayoutGuide%@ with no owning view.", v6];
    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"variable for UILayoutGuide%@ with no owning view.", &stru_1EFB14550];
LABEL_6:

  return v9;
}

- (int)nsis_orientationHintForVariable:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_minXVariable == v4 || self->_boundsWidthVariable == v4)
  {
    goto LABEL_10;
  }

  if (self->_minYVariable == v4 || self->_boundsHeightVariable == v4)
  {
    v9 = 1;
    goto LABEL_12;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v8 = [(NSISVariable *)v5 delegate];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%@ got asked for the orientationHint of a variable it doesn't know about: %@, which is owned by:%@", &v11, 0x20u);
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v6 = *(__UILogGetCategoryCachedImpl("Assert", &nsis_orientationHintForVariable____s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [(NSISVariable *)v5 delegate];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@ got asked for the orientationHint of a variable it doesn't know about: %@, which is owned by:%@", &v11, 0x20u);
    goto LABEL_8;
  }

LABEL_10:
  v9 = 0;
LABEL_12:

  return v9;
}

- (void)forwardInvocation:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    v9.receiver = self;
    v9.super_class = UILayoutGuide;
    [(UILayoutGuide *)&v9 forwardInvocation:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_owningView);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_owningView);
      [v4 invokeWithTarget:v6];
    }

    else
    {
      v6 = [v4 methodSignature];
      v7 = [v6 methodReturnLength];
      if (v7)
      {
        memset(v10, 0, sizeof(v10));
        if (v7 <= 0x20)
        {
          [v4 setReturnValue:v10];
        }

        else
        {
          v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
          [v4 setReturnValue:v8];
          free(v8);
        }
      }
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (dyld_program_sdk_at_least())
  {
    v10.receiver = self;
    v10.super_class = UILayoutGuide;
    v5 = [(UILayoutGuide *)&v10 methodSignatureForSelector:a3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_owningView);

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_owningView);
      v8 = [v7 methodSignatureForSelector:a3];

      goto LABEL_7;
    }

    v5 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v8 = v5;
LABEL_7:

  return v8;
}

- (id)_createAnchorWithClass:(Class)a3 attribute:(int64_t)a4
{
  v4 = [[a3 alloc] initWithItem:self attribute:a4];

  return v4;
}

- (CGRect)frameInView:(id)a3
{
  [(UILayoutGuide *)self _frameInCoordinateSpace:a3 window:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4
{
  v5 = a3;
  v6 = [(UILayoutGuide *)self owningView];
  [(UILayoutGuide *)self layoutFrame];
  [v6 convertRect:v5 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end