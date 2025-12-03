@interface SBShelfExpansionSwitcherModifier
- (BOOL)_isMovingFromLeadingToTrailing;
- (CGPoint)_bezierPointFromTime:(double)time start:(CGPoint)start target:(CGPoint)target;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBShelfExpansionSwitcherModifier)initWithTransitionID:(id)d expand:(BOOL)expand style:(unint64_t)style target:(CGPoint)target animationDelegate:(id)delegate;
- (SBShelfExpansionSwitcherModifierDelegate)animationDelegate;
- (double)_presentationValueForIndex:(unint64_t)index;
- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_visibleOrderedAppLayouts;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleAnimatablePropertyChangedEvent:(id)event;
- (id)settingsForAnimatableProperty:(id)property;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBShelfExpansionSwitcherModifier

- (SBShelfExpansionSwitcherModifier)initWithTransitionID:(id)d expand:(BOOL)expand style:(unint64_t)style target:(CGPoint)target animationDelegate:(id)delegate
{
  y = target.y;
  x = target.x;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = SBShelfExpansionSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:d];
  v15 = v14;
  if (v14)
  {
    v14->_expand = expand;
    v14->_target.x = x;
    v14->_target.y = y;
    v14->_style = style;
    objc_storeWeak(&v14->_animationDelegate, delegateCopy);
    v15->_topMostLayoutElements_lastAppLayoutsGenCount = 0x7FFFFFFFFFFFFFFFLL;
    v15->_topMostLayoutElements_lastOrientation = 0;
    v17 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 16);
    v15->_topMostLayoutElements_lastContainerViewBounds.origin = *MEMORY[0x277CBF398];
    v15->_topMostLayoutElements_lastContainerViewBounds.size = v16;
    v15->_topMostLayoutElements_lastSwitcherViewBounds.origin = v17;
    v15->_topMostLayoutElements_lastSwitcherViewBounds.size = v16;
    v15->_topMostLayoutElements_lastContentOffset = SBInvalidPoint;
    topMostLayoutElements_lastElements = v15->_topMostLayoutElements_lastElements;
    v15->_topMostLayoutElements_lastElements = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v23.receiver = self;
  v23.super_class = SBShelfExpansionSwitcherModifier;
  [(SBChainableModifier *)&v23 didMoveToParentModifier:?];
  if (modifier)
  {
    medusaSettings = [(SBShelfExpansionSwitcherModifier *)self medusaSettings];
    v6 = medusaSettings;
    if (self->_style == 1)
    {
      switcherShelfGenieRopeSettings = [medusaSettings switcherShelfGenieRopeSettings];
      ropeSettings = self->_ropeSettings;
      self->_ropeSettings = switcherShelfGenieRopeSettings;

      [v6 switcherShelfCardGenieDismissedScale];
      self->_dismissalScale = v9;
      [v6 switcherShelfCardGenieResponseIncrementScalar];
      self->_perIndexResponseIncrement = v10;
      if (self->_expand)
      {
        [v6 switcherShelfCardGeniePresentationSettings];
      }

      else
      {
        [v6 switcherShelfCardGenieDismissalSettings];
      }
      v11 = ;
      settings = self->_settings;
      self->_settings = v11;

      [v6 switcherShelfGenieBezierCurvePointYDeltaFromTarget];
      self->_bezierCurvePointYDeltaFromTarget = v18;
      [v6 switcherShelfGenieBezierCurveXExponent];
      self->_bezierCurveXExponent = v19;
      [v6 switcherShelfGenieBezierCurveYExponent];
      self->_bezierCurveYExponent = v20;
      [v6 switcherShelfGenieBezierCurveScaleExponent];
      self->_bezierCurveScaleExponent = v21;
    }

    else
    {
      switcherShelfNonGenieRopeSettings = [medusaSettings switcherShelfNonGenieRopeSettings];
      v13 = self->_ropeSettings;
      self->_ropeSettings = switcherShelfNonGenieRopeSettings;

      [v6 switcherShelfCardNonGenieDismissedScale];
      self->_dismissalScale = v14;
      [v6 switcherShelfCardNonGenieResponseIncrementScalar];
      self->_perIndexResponseIncrement = v15;
      if (self->_expand)
      {
        [v6 switcherShelfCardNonGeniePresentationSettings];
      }

      else
      {
        [v6 switcherShelfCardNonGenieDismissalSettings];
      }
      v16 = ;
      v22 = self->_settings;
      self->_settings = v16;
    }
  }
}

- (id)animatablePropertyIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"SBShelfRopeAnimatableProperty", @"SBShelfBackgroundBlurAnimatableProperty", 0}];
  _visibleOrderedAppLayouts = [(SBShelfExpansionSwitcherModifier *)self _visibleOrderedAppLayouts];
  if ([_visibleOrderedAppLayouts count])
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v7 = [_visibleOrderedAppLayouts count];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", v7 + v6, @"-SBShelfExpansionSwitcherModifier"];
      [v3 addObject:v8];

      ++v5;
      --v6;
    }

    while (v5 < [_visibleOrderedAppLayouts count]);
  }

  return v3;
}

- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating
{
  creatingCopy = creating;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBShelfRopeAnimatableProperty"])
  {
    v8 = 0.0;
    if (self->_expand)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (!self->_expand)
    {
      v8 = 1.0;
    }

    if (creatingCopy)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_18;
  }

  if ([propertyCopy isEqualToString:@"SBShelfBackgroundBlurAnimatableProperty"])
  {
    if (creatingCopy)
    {
      v11 = !self->_expand;
      v12 = 1.0;
      v13 = 0.0;
      goto LABEL_15;
    }

    v10 = 0.0;
    if (self->_expand)
    {
      appLayouts = [(SBShelfExpansionSwitcherModifier *)self appLayouts];
      if ([appLayouts count])
      {
        v16 = [appLayouts count];
        _isMovingFromLeadingToTrailing = [(SBShelfExpansionSwitcherModifier *)self _isMovingFromLeadingToTrailing];
        v18 = -1;
        if (!_isMovingFromLeadingToTrailing)
        {
          v18 = -v16;
        }

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", v18 + v16, @"-SBShelfExpansionSwitcherModifier"];
        [(SBShelfExpansionSwitcherModifier *)self presentationValueForAnimatableProperty:v19];
        [(SBShelfExpansionSwitcherModifier *)self modelValueForAnimatableProperty:v19 currentValue:0 creating:?];
        v10 = v20;
      }

      else
      {
        v10 = 1.0;
      }
    }
  }

  else
  {
    if (creatingCopy)
    {
      v11 = ![(SBShelfExpansionSwitcherModifier *)self _isEffectivelyInShelf];
      v12 = 0.0;
      v13 = 1.0;
LABEL_15:
      if (v11)
      {
        v10 = v12;
      }

      else
      {
        v10 = v13;
      }

      goto LABEL_18;
    }

    v10 = 0.0;
    if (self->_expand)
    {
      v21 = _SBShelfExpansionIndexFromAnimatableIdentifier(propertyCopy);
      v10 = 1.0;
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v21;
        _visibleOrderedAppLayouts = [(SBShelfExpansionSwitcherModifier *)self _visibleOrderedAppLayouts];
        v24 = [_visibleOrderedAppLayouts count];

        [(SBShelfExpansionSwitcherModifier *)self presentationValueForAnimatableProperty:@"SBShelfRopeAnimatableProperty"];
        v26 = v25;
        v27 = 1.0 / (v24 + 1);
        _isMovingFromLeadingToTrailing2 = [(SBShelfExpansionSwitcherModifier *)self _isMovingFromLeadingToTrailing];
        if (!self->_style || _isMovingFromLeadingToTrailing2)
        {
          if (v22 <= vcvtmd_u64_f64(v26 / v27))
          {
            v10 = 1.0;
          }

          else
          {
            v10 = 0.0;
          }
        }

        else if (v22 >= ((v24 - 1) - floor(v26 / v27)))
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }
      }
    }
  }

LABEL_18:

  return v10;
}

- (id)settingsForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBShelfRopeAnimatableProperty"])
  {
    v5 = 224;
LABEL_11:
    v12 = *(&self->super.super.super.super.super.isa + v5);
LABEL_12:
    initWithDefaultValues2 = v12;
    goto LABEL_13;
  }

  if ([propertyCopy isEqualToString:@"SBShelfBackgroundBlurAnimatableProperty"])
  {
    if (self->_expand)
    {
      initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
      [initWithDefaultValues setDampingRatio:1.0];
      appLayouts = [(SBShelfExpansionSwitcherModifier *)self appLayouts];
      v8 = [appLayouts count];

      if (v8 >= 5)
      {
        v9 = 5;
      }

      else
      {
        v9 = v8;
      }

      [(SBFFluidBehaviorSettings *)self->_settings response];
      [initWithDefaultValues setResponse:v10 + v9 * self->_perIndexResponseIncrement];

      initWithDefaultValues2 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (self->_expand)
  {
LABEL_10:
    v5 = 216;
    goto LABEL_11;
  }

  v14 = _SBShelfExpansionIndexFromAnimatableIdentifier(propertyCopy);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27.receiver = self;
    v27.super_class = SBShelfExpansionSwitcherModifier;
    v12 = [(SBShelfExpansionSwitcherModifier *)&v27 settingsForAnimatableProperty:propertyCopy];
    goto LABEL_12;
  }

  v15 = v14;
  _visibleOrderedAppLayouts = [(SBShelfExpansionSwitcherModifier *)self _visibleOrderedAppLayouts];
  v17 = [_visibleOrderedAppLayouts count];

  v18 = v15;
  v19 = v17 + -1.0;
  v20 = 5 - (v15 / v19 * 5.0);
  _isMovingFromLeadingToTrailing = [(SBShelfExpansionSwitcherModifier *)self _isMovingFromLeadingToTrailing];
  v22 = (v18 / v19 * 5.0);
  if (_isMovingFromLeadingToTrailing)
  {
    v22 = v20;
  }

  if (self->_style == 1)
  {
    v20 = v22;
  }

  [(SBFFluidBehaviorSettings *)self->_settings dampingRatio];
  v24 = v23;
  [(SBFFluidBehaviorSettings *)self->_settings response];
  v26 = v25 + v20 * self->_perIndexResponseIncrement;
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues2 setResponse:v26];
  [initWithDefaultValues2 setDampingRatio:v24];
  v29 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues2 setFrameRateRange:1114113 highFrameRateReason:{*&v29.minimum, *&v29.maximum, *&v29.preferred}];
LABEL_13:

  return initWithDefaultValues2;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v15.receiver = self;
  v15.super_class = SBShelfExpansionSwitcherModifier;
  [(SBShelfExpansionSwitcherModifier *)&v15 frameForIndex:?];
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  [(SBShelfExpansionSwitcherModifier *)self _presentationValueForIndex:index];
  if (self->_style == 1)
  {
    v10 = 1.0 - v9;
    [(SBShelfExpansionSwitcherModifier *)self _bezierPointFromTime:pow(1.0 - v9 start:self->_bezierCurveXExponent) target:v6, v8, self->_target.x, self->_target.y];
    [(SBShelfExpansionSwitcherModifier *)self _bezierPointFromTime:pow(v10 start:self->_bezierCurveYExponent) target:v6, v8, self->_target.x, self->_target.y];
  }

  else
  {
    [(SBShelfExpansionSwitcherModifier *)self switcherViewBounds];
    [(SBShelfExpansionSwitcherModifier *)self switcherViewBounds];
  }

  UIRectCenteredAboutPoint();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  [(SBShelfExpansionSwitcherModifier *)self _presentationValueForIndex:?];
  if (self->_style == 1)
  {
    dismissalScale = self->_dismissalScale;
    v7 = dismissalScale + (1.0 - dismissalScale) * (1.0 - pow(1.0 - fmin(fmax(v5, 0.0), 1.0), self->_bezierCurveScaleExponent));
  }

  else
  {
    v7 = self->_dismissalScale + v5 * (1.0 - self->_dismissalScale);
  }

  v10.receiver = self;
  v10.super_class = SBShelfExpansionSwitcherModifier;
  [(SBShelfExpansionSwitcherModifier *)&v10 scaleForIndex:index];
  return v7 * v8;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  if (self->_style == 1)
  {
    return 1.0;
  }

  [(SBShelfExpansionSwitcherModifier *)self _presentationValueForIndex:index, layout];
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  [(SBShelfExpansionSwitcherModifier *)self _presentationValueForIndex:index];
  v8 = v7;
  v11.receiver = self;
  v11.super_class = SBShelfExpansionSwitcherModifier;
  [(SBShelfExpansionSwitcherModifier *)&v11 shadowOpacityForLayoutRole:role atIndex:index];
  return v8 * v9 + 0.0;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SBShelfExpansionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v6 animationAttributesForLayoutElement:element];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:1];

  return v4;
}

- (id)topMostLayoutElements
{
  appLayoutsGenerationCount = [(SBShelfExpansionSwitcherModifier *)self appLayoutsGenerationCount];
  switcherInterfaceOrientation = [(SBShelfExpansionSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBShelfExpansionSwitcherModifier *)self containerViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBShelfExpansionSwitcherModifier *)self switcherViewBounds];
  v28 = v14;
  v29 = v13;
  v16 = v15;
  v18 = v17;
  [(SBShelfExpansionSwitcherModifier *)self scrollViewContentOffset];
  v20 = v19;
  v22 = v21;
  if (*&self->_topMostLayoutElements_lastAppLayoutsGenCount != __PAIR128__(switcherInterfaceOrientation, appLayoutsGenerationCount) || (v32.origin.x = v6, v32.origin.y = v8, v32.size.width = v10, v32.size.height = v12, !CGRectEqualToRect(self->_topMostLayoutElements_lastContainerViewBounds, v32)) || (v33.origin.y = v28, v33.origin.x = v29, v33.size.width = v16, v33.size.height = v18, !CGRectEqualToRect(self->_topMostLayoutElements_lastSwitcherViewBounds, v33)) || (self->_topMostLayoutElements_lastContentOffset.x == v20 ? (v23 = self->_topMostLayoutElements_lastContentOffset.y == v22) : (v23 = 0), !v23))
  {
    self->_topMostLayoutElements_lastAppLayoutsGenCount = appLayoutsGenerationCount;
    self->_topMostLayoutElements_lastOrientation = switcherInterfaceOrientation;
    self->_topMostLayoutElements_lastContainerViewBounds.origin.x = v6;
    self->_topMostLayoutElements_lastContainerViewBounds.origin.y = v8;
    self->_topMostLayoutElements_lastContainerViewBounds.size.width = v10;
    self->_topMostLayoutElements_lastContainerViewBounds.size.height = v12;
    self->_topMostLayoutElements_lastSwitcherViewBounds.origin.x = v29;
    self->_topMostLayoutElements_lastSwitcherViewBounds.origin.y = v28;
    self->_topMostLayoutElements_lastSwitcherViewBounds.size.width = v16;
    self->_topMostLayoutElements_lastSwitcherViewBounds.size.height = v18;
    self->_topMostLayoutElements_lastContentOffset.x = v20;
    self->_topMostLayoutElements_lastContentOffset.y = v22;
    v30.receiver = self;
    v30.super_class = SBShelfExpansionSwitcherModifier;
    topMostLayoutElements = [(SBShelfExpansionSwitcherModifier *)&v30 topMostLayoutElements];
    topMostLayoutElements_lastElements = self->_topMostLayoutElements_lastElements;
    self->_topMostLayoutElements_lastElements = topMostLayoutElements;
  }

  v26 = self->_topMostLayoutElements_lastElements;

  return v26;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBShelfExpansionSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBPreemptAnimationSwitcherEventResponse alloc] initWithOptions:3];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)handleAnimatablePropertyChangedEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBShelfExpansionSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleAnimatablePropertyChangedEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:1];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)_visibleOrderedAppLayouts
{
  v13.receiver = self;
  v13.super_class = SBShelfExpansionSwitcherModifier;
  appLayoutsGenerationCount = [(SBShelfExpansionSwitcherModifier *)&v13 appLayoutsGenerationCount];
  v12.receiver = self;
  v12.super_class = SBShelfExpansionSwitcherModifier;
  [(SBShelfExpansionSwitcherModifier *)&v12 scrollViewContentOffset];
  if (self->_cached_appLayoutsGenCount != appLayoutsGenerationCount || (self->_cached_scrollViewContentOffset.x == v4 ? (v6 = self->_cached_scrollViewContentOffset.y == v5) : (v6 = 0), !v6 || (v7 = self->_cached_visibleOrderedAppLayouts) == 0))
  {
    self->_cached_appLayoutsGenCount = appLayoutsGenerationCount;
    self->_cached_scrollViewContentOffset.x = v4;
    self->_cached_scrollViewContentOffset.y = v5;
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    v9 = [WeakRetained orderedVisibleAppLayoutsForShelfExpansionModifier:self];
    cached_visibleOrderedAppLayouts = self->_cached_visibleOrderedAppLayouts;
    self->_cached_visibleOrderedAppLayouts = v9;

    v7 = self->_cached_visibleOrderedAppLayouts;
  }

  return v7;
}

- (BOOL)_isMovingFromLeadingToTrailing
{
  x = self->_target.x;
  [(SBShelfExpansionSwitcherModifier *)self switcherViewBounds];
  return [(SBShelfExpansionSwitcherModifier *)self isRTLEnabled]^ (x >= v4 * 0.5);
}

- (CGPoint)_bezierPointFromTime:(double)time start:(CGPoint)start target:(CGPoint)target
{
  y = start.y;
  x = start.x;
  v7 = fmin(fmax(time, 0.0), 1.0);
  v8 = target.x - start.x;
  v9 = v8 * 3.0;
  v10 = -(v8 * 3.0 - (target.x - target.x) * 3.0);
  v17 = v8 - v8 * 3.0 - v10;
  v11 = (y - y) * 3.0;
  v12 = -(v11 - (target.y + self->_bezierCurvePointYDeltaFromTarget - start.y) * 3.0);
  v13 = target.y - start.y - v11 - v12;
  v14 = pow(v7, 3.0);
  v15 = y + v7 * v7 * v12 + v13 * v14 + v11 * v7;
  v16 = x + v10 * (v7 * v7) + v17 * v14 + v9 * v7;
  result.y = v15;
  result.x = v16;
  return result;
}

- (double)_presentationValueForIndex:(unint64_t)index
{
  _visibleOrderedAppLayouts = [(SBShelfExpansionSwitcherModifier *)self _visibleOrderedAppLayouts];
  if ([_visibleOrderedAppLayouts count])
  {
    if ([_visibleOrderedAppLayouts count] <= index)
    {
      index = [_visibleOrderedAppLayouts count] - 1;
    }

    v6 = [_visibleOrderedAppLayouts count];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", v6 + ~index, @"-SBShelfExpansionSwitcherModifier"];
    [(SBShelfExpansionSwitcherModifier *)self presentationValueForAnimatableProperty:v7];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (SBShelfExpansionSwitcherModifierDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end