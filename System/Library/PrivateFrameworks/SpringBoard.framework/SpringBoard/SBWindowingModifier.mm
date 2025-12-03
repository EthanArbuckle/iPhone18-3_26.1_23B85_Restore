@interface SBWindowingModifier
- (BOOL)supportsHomeAffordanceForItem:(id)item;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForItem:(id)item;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemShadow)shadowForItem:(id)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (SBWindowingModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout;
- (double)dimmingAlphaForItem:(id)item;
- (double)iconOpacityForIndex:(unint64_t)index;
- (double)opacityForItem:(id)item;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (id)activities;
- (id)animationAttributesForItem:(id)item;
- (id)currentResponses;
- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout;
- (id)handleEvent:(id)event;
- (id)spaceAccessoryViewModelForItem:(id)item;
- (id)stateModel;
- (id)topMostItems;
- (id)update;
- (id)viewModelForItem:(id)item;
- (id)viewModelItems;
- (id)visibleAppLayouts;
- (id)visibleItems;
- (id)windowingConfiguration;
- (int64_t)headerStyleForIndex:(unint64_t)index;
- (unint64_t)maskedCornersForIndex:(unint64_t)index;
- (unint64_t)personalityDebugColorStyleForItem:(id)item;
- (unint64_t)transitionPhase;
- (void)_evaluateInteroperability;
- (void)_handleGestureEvent:(id)event;
- (void)_handleTransitionEvent:(id)event;
- (void)_setSwitcherModifierInteroperabilityEnabled:(BOOL)enabled force:(BOOL)force;
- (void)addChildModifier:(id)modifier atLevel:(int64_t)level key:(id)key;
- (void)appendResponse:(id)response;
- (void)appendResponses:(id)responses;
- (void)complete;
- (void)currentResponses;
- (void)layoutViewModelsIfNeeded;
- (void)removeChildModifier:(id)modifier;
- (void)removeResponse:(id)response;
- (void)setState:(int64_t)state;
- (void)setViewModel:(id)model forItem:(id)item;
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
  visibleItems = [(SBWindowingModifier *)self visibleItems];
  v3 = [visibleItems bs_compactMap:&__block_literal_global_106];

  return v3;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self frameForItem:v6];
  v7 = v9;
  v8 = v10;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

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

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self frameForItem:v6];
  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

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

- (unint64_t)maskedCornersForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self cornersForItem:v6];
  v7 = v9;

  return v7;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v7 = [appLayouts objectAtIndex:index];

  v8 = COERCE_DOUBLE([(SBWindowingModifier *)self shadowForItem:v7]);
  return v8;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v6 = [layout leafAppLayoutForRole:role];
  [(SBWindowingModifier *)self opacityForItem:v6];
  v8 = v7;

  return v8;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self perspectiveAngleForItem:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  [(SBWindowingModifier *)self wallpaperGradientAttributesForItem:layoutCopy];
  v8 = v7;
  v10 = v9;
  allItems = [layoutCopy allItems];
  v12 = [allItems count];

  if (v12 >= 2)
  {
    v13 = [layoutCopy leafAppLayoutForRole:role];
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

- (int64_t)headerStyleForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  v7 = v9;

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (double)iconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBWindowingModifier *)self titleStyleForItem:v6];
  return v8;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27.receiver = self;
  v27.super_class = SBWindowingModifier;
  layoutCopy = layout;
  [(SBWindowingModifier *)&v27 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:layoutCopy];

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

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:layoutCopy];
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
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v10 = v12;
    v11 = v13;
  }

  v14 = v10;
  v15 = v11;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:layoutCopy];
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
    [(SBWindowingModifier *)&v12 adjustedSpaceAccessoryViewScale:layoutCopy forAppLayout:scale];
    v9 = v10;
  }

  return v9;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v8 = [(SBWindowingModifier *)self spaceAccessoryViewModelForItem:layoutCopy];
  v9 = v8;
  if (v8)
  {
    [v8 perspectiveAngle];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v16 adjustedSpaceAccessoryViewPerspectiveAngle:layoutCopy forAppLayout:x, y];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_setSwitcherModifierInteroperabilityEnabled:(BOOL)enabled force:(BOOL)force
{
  if (self->_switcherModifierInteroperabilityEnabled != enabled || force)
  {
    self->_switcherModifierInteroperabilityEnabled = enabled;
  }
}

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state != state)
  {
    v6 = state;
    v7.receiver = self;
    v7.super_class = SBWindowingModifier;
    [(SBChainableModifier *)&v7 setState:state];
    if (state == 1 && v6 != 1 && self->_hasBegun)
    {
      [(SBWindowingModifier *)self complete];
    }
  }
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [SBWindowingModifier handleEvent:];
  }

  switcherModifierEvent = [eventCopy switcherModifierEvent];
  if (!switcherModifierEvent)
  {
    [SBWindowingModifier handleEvent:];
  }

  if (self->_currentEvent)
  {
    [SBWindowingModifier handleEvent:];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = switcherModifierEvent;
  v7 = switcherModifierEvent;

  update = [(SBWindowingModifier *)self update];
  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  v10 = [update count];
  if (v10)
  {
    if (v10 == 1)
    {
      firstObject = [update firstObject];
    }

    else
    {
      firstObject2 = [update firstObject];
      firstObject = [objc_opt_class() newEventResponse];

      [firstObject addChildResponses:update];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)addChildModifier:(id)modifier atLevel:(int64_t)level key:(id)key
{
  v6.receiver = self;
  v6.super_class = SBWindowingModifier;
  [(SBChainableModifier *)&v6 addChildModifier:modifier atLevel:level key:key];
  [(SBWindowingModifier *)self _evaluateInteroperability];
}

- (void)removeChildModifier:(id)modifier
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  [(SBChainableModifier *)&v4 removeChildModifier:modifier];
  [(SBWindowingModifier *)self _evaluateInteroperability];
}

- (void)_evaluateInteroperability
{
  nextQueryModifier = [(SBChainableModifier *)self nextQueryModifier];
  -[SBWindowingModifier setSwitcherModifierInteroperabilityEnabled:](self, "setSwitcherModifierInteroperabilityEnabled:", [nextQueryModifier isSwitcherModifier]);
}

- (id)activities
{
  v7.receiver = self;
  v7.super_class = SBWindowingModifier;
  activities = [(SBWindowingModifier *)&v7 activities];
  v4 = activities;
  if (self->_currentEvent)
  {
    v5 = [activities setByAddingObject:?];

    v4 = v5;
  }

  return v4;
}

- (id)flexibleAutoLayoutSpaceForAppLayout:(id)layout
{
  layoutCopy = layout;
  displayItemLayoutAttributesCalculator = [(SBWindowingModifier *)self displayItemLayoutAttributesCalculator];
  v6 = [(SBWindowingModifier *)self appLayoutContainingAppLayout:layoutCopy];

  switcherInterfaceOrientation = [(SBWindowingModifier *)self switcherInterfaceOrientation];
  [(SBWindowingModifier *)self floatingDockHeight];
  v36 = v8;
  [(SBWindowingModifier *)self screenScale];
  v35 = v9;
  [(SBWindowingModifier *)self containerViewBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  isDisplayEmbedded = [(SBWindowingModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBWindowingModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBWindowingModifier *)self prefersDockHidden];
  [(SBWindowingModifier *)self leftStatusBarPartIntersectionRegion];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(SBWindowingModifier *)self rightStatusBarPartIntersectionRegion];
  v33 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:v6 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:v36 prefersStripHidden:v35 prefersDockHidden:v11 leftStatusBarPartIntersectionRegion:v13 rightStatusBarPartIntersectionRegion:{v15, v17, v22, v24, v26, v28, v29, v30, v31, v32}];

  return v33;
}

- (id)windowingConfiguration
{
  switcherInterfaceOrientation = [(SBWindowingModifier *)self switcherInterfaceOrientation];

  return [(SBWindowingModifier *)self windowingConfigurationForInterfaceOrientation:switcherInterfaceOrientation];
}

- (id)stateModel
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  stateModel = [(SBWindowingModifier *)&v4 stateModel];

  return stateModel;
}

- (id)visibleItems
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  visibleItems = [(SBWindowingModifier *)&v4 visibleItems];

  return visibleItems;
}

- (id)topMostItems
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  topMostItems = [(SBWindowingModifier *)&v4 topMostItems];

  return topMostItems;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
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

- (SBWindowingItemCorners)cornersForItem:(SEL)item
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

- (SBWindowingItemShadow)shadowForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    shadow = [v5 shadow];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    shadow = [(SBWindowingModifier *)&v13 shadowForItem:itemCopy];
  }

  v9 = *&shadow;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.shadowStyle = v12;
  result.shadowOpacity = v11;
  return result;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
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

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    [v5 opacity];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v10 opacityForItem:itemCopy];
  }

  v8 = v7;

  return v8;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    [v5 wallpaperGradientAttributes];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v13 wallpaperGradientAttributesForItem:itemCopy];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (CGPoint)perspectiveAngleForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    [v5 perspectiveAngle];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v13 perspectiveAngleForItem:itemCopy];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)dimmingAlphaForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    [v5 dimmingAlpha];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    [(SBWindowingModifier *)&v10 dimmingAlphaForItem:itemCopy];
  }

  v8 = v7;

  return v8;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    animationAttributes = [v5 animationAttributes];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    animationAttributes = [(SBWindowingModifier *)&v10 animationAttributesForItem:itemCopy];
  }

  v8 = animationAttributes;

  return v8;
}

- (BOOL)supportsHomeAffordanceForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    supportsHomeAffordance = [v5 supportsHomeAffordance];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    supportsHomeAffordance = [(SBWindowingModifier *)&v10 supportsHomeAffordanceForItem:itemCopy];
  }

  v8 = supportsHomeAffordance;

  return v8;
}

- (id)spaceAccessoryViewModelForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    spaceAccessoryViewModel = [v5 spaceAccessoryViewModel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    spaceAccessoryViewModel = [(SBWindowingModifier *)&v10 spaceAccessoryViewModelForItem:itemCopy];
  }

  v8 = spaceAccessoryViewModel;

  return v8;
}

- (unint64_t)personalityDebugColorStyleForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    personalityDebugColorStyle = [v5 personalityDebugColorStyle];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBWindowingModifier;
    personalityDebugColorStyle = [(SBWindowingModifier *)&v10 personalityDebugColorStyleForItem:itemCopy];
  }

  v8 = personalityDebugColorStyle;

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
  activities = [(SBWindowingModifier *)self activities];
  v4 = [activities countByEnumeratingWithState:&v40 objects:v45 count:16];
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
          objc_enumerationMutation(activities);
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

      v5 = [activities countByEnumeratingWithState:&v40 objects:v45 count:16];
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
        switcherModifierEvent = [v15 switcherModifierEvent];
        type = [switcherModifierEvent type];
        if (type > 15)
        {
          if (type <= 30)
          {
            if (type > 18)
            {
              if (type == 19)
              {
                v18 = switcherModifierEvent;
                self->_isScrolling = [v18 phase] == 0;
                [(SBWindowingModifier *)self didScroll:v18];
              }

              else if (type == 26)
              {
                [(SBWindowingModifier *)self didEdgeProtectSlideOverTongue:switcherModifierEvent];
              }
            }

            else if (type == 16)
            {
              [(SBWindowingModifier *)self tappedOutsideToDismiss:switcherModifierEvent];
            }

            else if (type == 17)
            {
              [(SBWindowingModifier *)self appLayoutTapped:switcherModifierEvent];
            }

            goto LABEL_46;
          }

          if (type > 40)
          {
            if (type == 41)
            {
              if ([switcherModifierEvent phase])
              {
                [(SBWindowingModifier *)self stripDidChange:switcherModifierEvent];
              }

              else
              {
                [(SBWindowingModifier *)self stripWillChange:switcherModifierEvent];
              }
            }

            else if (type == 43)
            {
              [(SBWindowingModifier *)self userDidInteractWithApp:switcherModifierEvent];
            }

            goto LABEL_46;
          }

          if (type != 31)
          {
            if (type == 36)
            {
              [(SBWindowingModifier *)self appLayoutHeaderTapped:switcherModifierEvent];
            }

            goto LABEL_46;
          }
        }

        else
        {
          if (type > 10)
          {
            if (type > 13)
            {
              if (type == 14)
              {
                [(SBWindowingModifier *)self itemRemoved:switcherModifierEvent];
              }

              else
              {
                [(SBWindowingModifier *)self timerFired:switcherModifierEvent];
              }
            }

            else if (type == 11)
            {
              [(SBWindowingModifier *)self highlightDidChange:switcherModifierEvent];
            }

            else if (type == 13)
            {
              [(SBWindowingModifier *)self itemInserted:switcherModifierEvent];
            }

            goto LABEL_46;
          }

          if ((type - 2) >= 4)
          {
            if (type == 1)
            {
              [(SBWindowingModifier *)self _handleTransitionEvent:switcherModifierEvent];
            }

            goto LABEL_46;
          }
        }

        [(SBWindowingModifier *)self _handleGestureEvent:switcherModifierEvent];
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

  nextQueryModifier = [(SBChainableModifier *)self nextQueryModifier];
  update = nextQueryModifier;
  if (!nextQueryModifier || ([nextQueryModifier isWindowingModifier] & 1) != 0)
  {
LABEL_81:

LABEL_82:
    v34.receiver = self;
    v34.super_class = SBWindowingModifier;
    update = [(SBWindowingModifier *)&v34 update];
    [(SBWindowingModifier *)self appendResponses:update];
    goto LABEL_83;
  }

  parentModifier = [(SBChainableModifier *)self parentModifier];
  if (!parentModifier)
  {
    goto LABEL_78;
  }

  parentModifier2 = [update parentModifier];
  v26 = parentModifier2;
  if (parentModifier2 == parentModifier)
  {

    goto LABEL_80;
  }

  isWindowingModifier = [parentModifier isWindowingModifier];

  if (isWindowingModifier)
  {
LABEL_80:

    goto LABEL_81;
  }

LABEL_78:
  v28 = [update handleEvent:self->_currentEvent];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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

- (void)appendResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (self->_hasBegun)
  {
    if (!responseCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = responseCopy;
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

- (void)appendResponses:(id)responses
{
  responsesCopy = responses;
  v8 = responsesCopy;
  if (!self->_hasBegun)
  {
    [SBWindowingModifier appendResponses:];
    responsesCopy = v8;
  }

  if ([responsesCopy count])
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

- (void)removeResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (!responseCopy)
  {
    [SBWindowingModifier removeResponse:];
    responseCopy = 0;
  }

  if (!self->_hasBegun)
  {
    [SBWindowingModifier removeResponse:];
    responseCopy = v5;
  }

  [(NSMutableArray *)self->_currentResponses removeObject:responseCopy];
}

- (void)layoutViewModelsIfNeeded
{
  v4.receiver = self;
  v4.super_class = SBWindowingModifier;
  [(SBWindowingModifier *)&v4 layoutViewModelsIfNeeded];
  viewModels = self->_viewModels;
  self->_viewModels = 0;
}

- (id)viewModelForItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableDictionary *)self->_viewModels objectForKey:itemCopy];
  if (!v5)
  {
    v5 = [[SBWindowingItemViewModelModifier alloc] initWithItem:itemCopy];
    [(SBChainableModifier *)v5 setDelegate:self];
  }

  return v5;
}

- (void)setViewModel:(id)model forItem:(id)item
{
  modelCopy = model;
  itemCopy = item;
  viewModels = self->_viewModels;
  if (!viewModels)
  {
    v8 = objc_opt_new();
    v9 = self->_viewModels;
    self->_viewModels = v8;

    viewModels = self->_viewModels;
  }

  [(NSMutableDictionary *)viewModels setObject:modelCopy forKey:itemCopy];
}

- (id)viewModelItems
{
  viewModels = self->_viewModels;
  if (viewModels)
  {
    allKeys = [(NSMutableDictionary *)viewModels allKeys];
  }

  else
  {
    allKeys = MEMORY[0x277CBEBF8];
  }

  return allKeys;
}

- (void)_handleTransitionEvent:(id)event
{
  eventCopy = event;
  phase = [eventCopy phase];
  if (!self->_transition && ([eventCopy isAnimated] & 1) != 0)
  {
    objc_storeStrong(&self->_transition, event);
    [(SBWindowingModifier *)self transitionWillBegin:self->_transition];
    if (phase != 3)
    {
      if (phase != 2)
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

  objc_storeStrong(&self->_transition, event);
  switch(phase)
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

- (void)_handleGestureEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase])
  {
    gesture = self->_gesture;
    objc_storeStrong(&self->_gesture, event);
    if (!gesture)
    {
      [(SBWindowingModifier *)self gestureWillBegin:self->_gesture];
    }

    phase = [(SBGestureSwitcherModifierEvent *)self->_gesture phase];
    if (phase == 3)
    {
      [(SBWindowingModifier *)self gestureDidComplete:self->_gesture];
      v7 = self->_gesture;
      self->_gesture = 0;
    }

    else if (phase == 2)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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