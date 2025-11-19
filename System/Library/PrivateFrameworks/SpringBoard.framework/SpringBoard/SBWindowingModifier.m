@interface SBWindowingModifier
- (BOOL)supportsHomeAffordanceForItem:(id)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForItem:(id)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)a3;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (SBWindowingItemShadow)shadowForItem:(id)a3;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3;
- (SBWindowingModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4;
- (double)dimmingAlphaForItem:(id)a3;
- (double)iconOpacityForIndex:(unint64_t)a3;
- (double)opacityForItem:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (id)activities;
- (id)animationAttributesForItem:(id)a3;
- (id)currentResponses;
- (id)flexibleAutoLayoutSpaceForAppLayout:(id)a3;
- (id)handleEvent:(id)a3;
- (id)spaceAccessoryViewModelForItem:(id)a3;
- (id)stateModel;
- (id)topMostItems;
- (id)update;
- (id)viewModelForItem:(id)a3;
- (id)viewModelItems;
- (id)visibleAppLayouts;
- (id)visibleItems;
- (id)windowingConfiguration;
- (int64_t)headerStyleForIndex:(unint64_t)a3;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
- (unint64_t)personalityDebugColorStyleForItem:(id)a3;
- (unint64_t)transitionPhase;
- (void)_evaluateInteroperability;
- (void)_handleGestureEvent:(id)a3;
- (void)_handleTransitionEvent:(id)a3;
- (void)_setSwitcherModifierInteroperabilityEnabled:(BOOL)a3 force:(BOOL)a4;
- (void)addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5;
- (void)appendResponse:(id)a3;
- (void)appendResponses:(id)a3;
- (void)complete;
- (void)currentResponses;
- (void)layoutViewModelsIfNeeded;
- (void)removeChildModifier:(id)a3;
- (void)removeResponse:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setViewModel:(id)a3 forItem:(id)a4;
- (void)update;
@end

@implementation SBWindowingModifier

- (SBWindowingModifier)init
{
  v5.receiver = self;
  v5.super_class = SBWindowingModifier;
  v2 = [(SBChainableModifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBWindowingModifier *)v2 _setSwitcherModifierInteroperabilityEnabled:0 force:1];
  }

  return v3;
}

- (id)visibleAppLayouts
{
  v2 = [(SBWindowingModifier *)self visibleItems];
  v3 = [v2 bs_compactMap:&__block_literal_global_106];

  return v3;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self frameForItem:v6];
  v7 = v9;
  v8 = v10;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self frameForItem:v6, 0, 0];
  v7 = 0.0 - 0.0 * 0.5;
  v8 = v7;
  v9 = 0.0;
  v10 = 0.0;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self frameForItem:v6];
  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self cornersForItem:v6];
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  result.topRight = v10;
  result.bottomRight = v9;
  result.bottomLeft = v8;
  result.topLeft = v7;
  return result;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self cornersForItem:v6];
  v7 = v9;

  return v7;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(SBWindowingModifier *)self appLayouts];
  v7 = [v6 objectAtIndex:a4];

  v8 = COERCE_DOUBLE([(SBWindowingModifier *)self shadowForItem:v7]);
  return v8;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v6 = [a4 leafAppLayoutForRole:a3];
  [(SBWindowingModifier *)self opacityForItem:v6];
  v8 = v7;

  return v8;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self perspectiveAngleForItem:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  [(SBWindowingModifier *)self wallpaperGradientAttributesForItem:v6];
  v8 = v7;
  v10 = v9;
  v11 = [v6 allItems];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = [v6 leafAppLayoutForRole:a3];
    [(SBWindowingModifier *)self wallpaperGradientAttributesForItem:v13];
    v15 = v14;
    v17 = v16;
    IsZero = BSFloatIsZero();
    v19 = v10 * v17;
    if (v17 >= v10 * v17)
    {
      v19 = v17;
    }

    if (!IsZero)
    {
      v10 = v19;
    }

    v20 = BSFloatIsZero();
    v21 = v8 * v15;
    if (v15 >= v8 * v15)
    {
      v21 = v15;
    }

    if (!v20)
    {
      v8 = v21;
    }
  }

  v22 = v8;
  v23 = v10;
  result.trailingAlpha = v23;
  result.leadingAlpha = v22;
  return result;
}

- (int64_t)headerStyleForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  v7 = v9;

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (double)iconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27.receiver = self;
  v27.super_class = SBWindowingModifier;
  v9 = a4;
  [(SBWindowingModifier *)&v27 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:v9];

  if (v18)
  {
    [v18 frame];
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:v7];
  v9 = v8;
  if (v8)
  {
    [v8 frame];
    v10 = v17;
    v11 = v18;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v10 = v12;
    v11 = v13;
  }

  v14 = v10;
  v15 = v11;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frame];
    v9 = v13;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v12 adjustedSpaceAccessoryViewScale:v6 forAppLayout:a3];
    v9 = v10;
  }

  return v9;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:v7];
  v9 = v8;
  if (v8)
  {
    [v8 perspectiveAngle];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewPerspectiveAngle:v7 forAppLayout:x, y];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_setSwitcherModifierInteroperabilityEnabled:(BOOL)a3 force:(BOOL)a4
{
  if (self->_switcherModifierInteroperabilityEnabled != a3 || a4)
  {
    self->_switcherModifierInteroperabilityEnabled = a3;
  }
}

- (void)setState:(int64_t)a3
{
  v5 = [(SBChainableModifier *)self state];
  if (v5 != a3)
  {
    v6 = v5;
    v7.receiver = self;
    v7.super_class = SBWindowingModifier;
    [(SBChainableModifier *)&v7 setState:a3];
    if (a3 == 1 && v6 != 1 && self->_hasBegun)
    {
      [(SBWindowingModifier *)self complete];
    }
  }
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBWindowingModifier handleEvent:];
  }

  v5 = [v4 switcherModifierEvent];
  if (!v5)
  {
    [SBWindowingModifier handleEvent:];
  }

  if (self->_currentEvent)
  {
    [SBWindowingModifier handleEvent:];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v5;
  v7 = v5;

  v8 = [(SBWindowingModifier *)self update];
  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  v10 = [v8 count];
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = [v8 firstObject];
    }

    else
    {
      v12 = [v8 firstObject];
      v11 = [objc_opt_class() newEventResponse];

      [v11 addChildResponses:v8];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addChildModifier:(id)a3 atLevel:(int64_t)a4 key:(id)a5
{
  v6.receiver = self;
  v6.super_class = SBWindowingModifier;
  [(SBChainableModifier *)&v6 addChildModifier:a3 atLevel:a4 key:a5];
  [(SBWindowingModifier *)self _evaluateInteroperability];
}

- (void)removeChildModifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  [(SBChainableModifier *)&v4 removeChildModifier:a3];
  [(SBWindowingModifier *)self _evaluateInteroperability];
}

- (void)_evaluateInteroperability
{
  v3 = [(SBChainableModifier *)self nextQueryModifier];
  -[SBWindowingModifier setSwitcherModifierInteroperabilityEnabled:](self, "setSwitcherModifierInteroperabilityEnabled:", [v3 isSwitcherModifier]);
}

- (id)activities
{
  v7.receiver = self;
  v7.super_class = SBWindowingModifier;
  v3 = [(SBWindowingModifier *)&v7 activities];
  v4 = v3;
  if (self->_currentEvent)
  {
    v5 = [v3 setByAddingObject:?];

    v4 = v5;
  }

  return v4;
}

- (id)flexibleAutoLayoutSpaceForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowingModifier *)self displayItemLayoutAttributesCalculator];
  v6 = [(SBWindowingModifier *)self appLayoutContainingAppLayout:v4];

  v7 = [(SBWindowingModifier *)self switcherInterfaceOrientation];
  [(SBWindowingModifier *)self floatingDockHeight];
  v36 = v8;
  [(SBWindowingModifier *)self screenScale];
  v35 = v9;
  [(SBWindowingModifier *)self containerViewBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBWindowingModifier *)self isDisplayEmbedded];
  v19 = [(SBWindowingModifier *)self prefersStripHidden];
  v20 = [(SBWindowingModifier *)self prefersDockHidden];
  [(SBWindowingModifier *)self leftStatusBarPartIntersectionRegion];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(SBWindowingModifier *)self rightStatusBarPartIntersectionRegion];
  v33 = [v5 flexibleWindowingAutoLayoutSpaceForAppLayout:v6 containerOrientation:v7 floatingDockHeight:v18 screenScale:v19 bounds:v20 isEmbeddedDisplay:v36 prefersStripHidden:v35 prefersDockHidden:v11 leftStatusBarPartIntersectionRegion:v13 rightStatusBarPartIntersectionRegion:{v15, v17, v22, v24, v26, v28, v29, v30, v31, v32}];

  return v33;
}

- (id)windowingConfiguration
{
  v3 = [(SBWindowingModifier *)self switcherInterfaceOrientation];

  return [(SBWindowingModifier *)self windowingConfigurationForInterfaceOrientation:v3];
}

- (id)stateModel
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  v2 = [(SBWindowingModifier *)&v4 stateModel];

  return v2;
}

- (id)visibleItems
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  v2 = [(SBWindowingModifier *)&v4 visibleItems];

  return v2;
}

- (id)topMostItems
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  v2 = [(SBWindowingModifier *)&v4 topMostItems];

  return v2;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_viewModels objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 frame];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBWindowingModifier;
    [(SBWindowingItemFrame *)&v9 frameForItem:v5];
  }

  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_viewModels objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 corners];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBWindowingModifier;
    [(SBWindowingItemCorners *)&v9 cornersForItem:v5];
  }

  return result;
}

- (SBWindowingItemShadow)shadowForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shadow];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    v7 = [(SBWindowingModifier *)&v13 shadowForItem:v4];
  }

  v9 = *&v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.shadowStyle = v12;
  result.shadowOpacity = v11;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_viewModels objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 titleStyle];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBWindowingModifier;
    [(SBWindowingItemTitleStyle *)&v9 titleStyleForItem:v5];
  }

  return result;
}

- (double)opacityForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [v5 opacity];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v10 opacityForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [v5 wallpaperGradientAttributes];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v13 wallpaperGradientAttributesForItem:v4];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [v5 perspectiveAngle];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v13 perspectiveAngleForItem:v4];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)dimmingAlphaForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    [v5 dimmingAlpha];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v10 dimmingAlphaForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 animationAttributes];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    v7 = [(SBWindowingModifier *)&v10 animationAttributesForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)supportsHomeAffordanceForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 supportsHomeAffordance];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    v7 = [(SBWindowingModifier *)&v10 supportsHomeAffordanceForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (id)spaceAccessoryViewModelForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 spaceAccessoryViewModel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    v7 = [(SBWindowingModifier *)&v10 spaceAccessoryViewModelForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)personalityDebugColorStyleForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 personalityDebugColorStyle];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    v7 = [(SBWindowingModifier *)&v10 personalityDebugColorStyleForItem:v4];
  }

  v8 = v7;

  return v8;
}

- (id)update
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_hasBegun)
  {
    [SBWindowingModifier update];
  }

  self->_hasBegun = 1;
  if (!self->_hasCompleted)
  {
    self->_hasCompleted = 1;
    [(SBWindowingModifier *)self willBegin];
  }

  [(SBWindowingModifier *)self willUpdate];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [(SBWindowingModifier *)self activities];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        if ([(SBWindowingModifierActivity *)v9 activityIndex]> self->_activityIndex)
        {
          if (!v6)
          {
            v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count] >= 2)
  {
    [v6 sortUsingComparator:&__block_literal_global_190];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v11)
  {
    goto LABEL_71;
  }

  v12 = v11;
  v13 = *v37;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      if ([(SBWindowingModifier *)self shouldInterruptForActivity:v15])
      {
        if (self->_transition)
        {
          [(SBWindowingModifier *)self transitionDidComplete:?];
          transition = self->_transition;
          self->_transition = 0;
        }

        if (self->_gesture)
        {
          [(SBWindowingModifier *)self gestureDidComplete:?];
          gesture = self->_gesture;
          self->_gesture = 0;
        }

        [(SBWindowingModifier *)self complete];
        goto LABEL_71;
      }

      if ([v15 isSwitcherModifierEvent])
      {
        v16 = [v15 switcherModifierEvent];
        v17 = [v16 type];
        if (v17 > 15)
        {
          if (v17 <= 30)
          {
            if (v17 > 18)
            {
              if (v17 == 19)
              {
                v18 = v16;
                self->_isScrolling = [v18 phase] == 0;
                [(SBWindowingModifier *)self didScroll:v18];
              }

              else if (v17 == 26)
              {
                [(SBWindowingModifier *)self didEdgeProtectSlideOverTongue:v16];
              }
            }

            else if (v17 == 16)
            {
              [(SBWindowingModifier *)self tappedOutsideToDismiss:v16];
            }

            else if (v17 == 17)
            {
              [(SBWindowingModifier *)self appLayoutTapped:v16];
            }

            goto LABEL_46;
          }

          if (v17 > 40)
          {
            if (v17 == 41)
            {
              if ([v16 phase])
              {
                [(SBWindowingModifier *)self stripDidChange:v16];
              }

              else
              {
                [(SBWindowingModifier *)self stripWillChange:v16];
              }
            }

            else if (v17 == 43)
            {
              [(SBWindowingModifier *)self userDidInteractWithApp:v16];
            }

            goto LABEL_46;
          }

          if (v17 != 31)
          {
            if (v17 == 36)
            {
              [(SBWindowingModifier *)self appLayoutHeaderTapped:v16];
            }

            goto LABEL_46;
          }
        }

        else
        {
          if (v17 > 10)
          {
            if (v17 > 13)
            {
              if (v17 == 14)
              {
                [(SBWindowingModifier *)self itemRemoved:v16];
              }

              else
              {
                [(SBWindowingModifier *)self timerFired:v16];
              }
            }

            else if (v17 == 11)
            {
              [(SBWindowingModifier *)self highlightDidChange:v16];
            }

            else if (v17 == 13)
            {
              [(SBWindowingModifier *)self itemInserted:v16];
            }

            goto LABEL_46;
          }

          if ((v17 - 2) >= 4)
          {
            if (v17 == 1)
            {
              [(SBWindowingModifier *)self _handleTransitionEvent:v16];
            }

            goto LABEL_46;
          }
        }

        [(SBWindowingModifier *)self _handleGestureEvent:v16];
LABEL_46:
      }

      self->_activityIndex = [(SBWindowingModifierActivity *)v15 activityIndex];
      ++v14;
    }

    while (v12 != v14);
    v19 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v12 = v19;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_71:

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __29__SBWindowingModifier_update__block_invoke_2;
  v35[3] = &unk_2783B7BF0;
  v35[4] = self;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v35];
  if (!self->_switcherModifierInteroperabilityEnabled || !self->_currentEvent)
  {
    goto LABEL_82;
  }

  v22 = [(SBChainableModifier *)self nextQueryModifier];
  v23 = v22;
  if (!v22 || ([v22 isWindowingModifier] & 1) != 0)
  {
LABEL_81:

LABEL_82:
    v34.receiver = self;
    v34.super_class = SBWindowingModifier;
    v23 = [(SBWindowingModifier *)&v34 update];
    [(SBWindowingModifier *)self appendResponses:v23];
    goto LABEL_83;
  }

  v24 = [(SBChainableModifier *)self parentModifier];
  if (!v24)
  {
    goto LABEL_78;
  }

  v25 = [v23 parentModifier];
  v26 = v25;
  if (v25 == v24)
  {

    goto LABEL_80;
  }

  v27 = [v24 isWindowingModifier];

  if (v27)
  {
LABEL_80:

    goto LABEL_81;
  }

LABEL_78:
  v28 = [v23 handleEvent:self->_currentEvent];
  [(SBWindowingModifier *)self appendResponse:v28];

LABEL_83:
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __29__SBWindowingModifier_update__block_invoke_3;
  v33[3] = &unk_2783B7BF0;
  v33[4] = self;
  [(SBChainableModifier *)self enumerateChildModifiersWithBlock:v33];
  if ([(SBChainableModifier *)self completesWhenChildrenComplete]&& ![(SBChainableModifier *)self childModifierCount])
  {
    [(SBWindowingModifier *)self complete];
  }

  [(SBWindowingModifier *)self didUpdate];
  self->_hasBegun = 0;
  if (self->_currentResponses)
  {
    currentResponses = self->_currentResponses;
  }

  else
  {
    currentResponses = MEMORY[0x277CBEBF8];
  }

  v30 = currentResponses;
  v31 = self->_currentResponses;
  self->_currentResponses = 0;

  return currentResponses;
}

BOOL __29__SBWindowingModifier_update__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [(SBWindowingModifierActivity *)a2 activityIndex];
  v6 = [(SBWindowingModifierActivity *)v4 activityIndex];

  return v5 > v6;
}

void __29__SBWindowingModifier_update__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    [*(a1 + 32) removeChildModifier:v3];
  }
}

void __29__SBWindowingModifier_update__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    [*(a1 + 32) removeChildModifier:v3];
  }
}

- (void)complete
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (unint64_t)transitionPhase
{
  result = self->_transition;
  if (result)
  {
    return [result phase];
  }

  return result;
}

- (void)appendResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasBegun)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v4;
    [SBWindowingModifier appendResponse:];
    v5 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  currentResponses = self->_currentResponses;
  v9 = v5;
  if (!currentResponses)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_currentResponses;
    self->_currentResponses = v7;

    currentResponses = self->_currentResponses;
  }

  [(NSMutableArray *)currentResponses addObject:v9];
LABEL_6:

  MEMORY[0x2821F9730]();
}

- (void)appendResponses:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->_hasBegun)
  {
    [SBWindowingModifier appendResponses:];
    v4 = v8;
  }

  if ([v4 count])
  {
    currentResponses = self->_currentResponses;
    if (!currentResponses)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_currentResponses;
      self->_currentResponses = v6;

      currentResponses = self->_currentResponses;
    }

    [(NSMutableArray *)currentResponses addObjectsFromArray:v8];
  }
}

- (id)currentResponses
{
  if (!self->_hasBegun)
  {
    [SBWindowingModifier currentResponses];
  }

  if (self->_currentResponses)
  {
    currentResponses = self->_currentResponses;
  }

  else
  {
    currentResponses = MEMORY[0x277CBEBF8];
  }

  return currentResponses;
}

- (void)removeResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBWindowingModifier removeResponse:];
    v4 = 0;
  }

  if (!self->_hasBegun)
  {
    [SBWindowingModifier removeResponse:];
    v4 = v5;
  }

  [(NSMutableArray *)self->_currentResponses removeObject:v4];
}

- (void)layoutViewModelsIfNeeded
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  [(SBWindowingModifier *)&v4 layoutViewModelsIfNeeded];
  viewModels = self->_viewModels;
  self->_viewModels = 0;
}

- (id)viewModelForItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:v4];
  if (!v5)
  {
    v5 = [[SBWindowingItemViewModelModifier alloc] initWithItem:v4];
    [(SBChainableModifier *)v5 setDelegate:self];
  }

  return v5;
}

- (void)setViewModel:(id)a3 forItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  viewModels = self->_viewModels;
  if (!viewModels)
  {
    v8 = objc_opt_new();
    v9 = self->_viewModels;
    self->_viewModels = v8;

    viewModels = self->_viewModels;
  }

  [(NSMutableDictionary *)viewModels setObject:v10 forKey:v6];
}

- (id)viewModelItems
{
  viewModels = self->_viewModels;
  if (viewModels)
  {
    v4 = [(NSMutableDictionary *)viewModels allKeys];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_handleTransitionEvent:(id)a3
{
  v7 = a3;
  v5 = [v7 phase];
  if (!self->_transition && ([v7 isAnimated] & 1) != 0)
  {
    objc_storeStrong(&self->_transition, a3);
    [(SBWindowingModifier *)self transitionWillBegin:self->_transition];
    if (v5 != 3)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

LABEL_10:
      [(SBWindowingModifier *)self transitionDidUpdate:self->_transition];
      goto LABEL_12;
    }

LABEL_11:
    [(SBWindowingModifier *)self transitionDidComplete:self->_transition];
    transition = self->_transition;
    self->_transition = 0;

    goto LABEL_12;
  }

  objc_storeStrong(&self->_transition, a3);
  switch(v5)
  {
    case 3:
      goto LABEL_11;
    case 2:
      goto LABEL_10;
    case 1:
      [(SBWindowingModifier *)self transitionWillBegin:self->_transition];
      break;
  }

LABEL_12:
}

- (void)_handleGestureEvent:(id)a3
{
  v8 = a3;
  if ([v8 phase])
  {
    gesture = self->_gesture;
    objc_storeStrong(&self->_gesture, a3);
    if (!gesture)
    {
      [(SBWindowingModifier *)self gestureWillBegin:self->_gesture];
    }

    v6 = [(SBGestureSwitcherModifierEvent *)self->_gesture phase];
    if (v6 == 3)
    {
      [(SBWindowingModifier *)self gestureDidComplete:self->_gesture];
      v7 = self->_gesture;
      self->_gesture = 0;
    }

    else if (v6 == 2)
    {
      [(SBWindowingModifier *)self gestureDidUpdate:self->_gesture];
    }
  }
}

- (void)handleEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"event" object:? file:? lineNumber:? description:?];
}

- (void)handleEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)handleEvent:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)update
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)appendResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)appendResponses:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)currentResponses
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"response" object:? file:? lineNumber:? description:?];
}

- (void)removeResponse:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end