@interface SBFlexibleWindowingToAppExposeWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (SBFlexibleWindowingToAppExposeWindowingModifier)initWithBundleIdentifier:(id)identifier;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)visibleItems;
- (void)didComplete;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBFlexibleWindowingToAppExposeWindowingModifier

- (SBFlexibleWindowingToAppExposeWindowingModifier)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  v6 = [(SBWindowingModifier *)&v10 init];
  if (v6)
  {
    v7 = [[SBAppExposeWindowingModifier alloc] initWithBundleIdentifier:identifierCopy];
    appExposeModifier = v6->_appExposeModifier;
    v6->_appExposeModifier = v7;

    objc_storeStrong(&v6->_bundleId, identifier);
  }

  return v6;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)willBegin
{
  v5.receiver = self;
  v5.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  visibleItems = [(SBWindowingModifier *)&v5 visibleItems];
  appLayoutsVisibleBeforeTransition = self->_appLayoutsVisibleBeforeTransition;
  self->_appLayoutsVisibleBeforeTransition = visibleItems;
}

- (void)didComplete
{
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v3];
}

- (id)visibleItems
{
  v6.receiver = self;
  v6.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  visibleItems = [(SBWindowingModifier *)&v6 visibleItems];
  v4 = [visibleItems setByAddingObjectsFromSet:self->_appLayoutsVisibleBeforeTransition];

  return v4;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;

  [(SBChainableModifier *)self addChildModifier:self->_appExposeModifier];
  v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v6];

  v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v7];
}

- (void)transitionDidUpdate:(id)update
{
  v9.receiver = self;
  v9.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  appLayouts = [(SBFlexibleWindowingToAppExposeWindowingModifier *)&v9 appLayouts];
  v5 = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self adjustedAppLayoutsForAppLayouts:appLayouts];
  firstObject = [v5 firstObject];

  v7 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:firstObject alignment:0 animated:0];
  [(SBWindowingModifier *)self appendResponse:v7];

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
  [(SBWindowingModifier *)self appendResponse:v8];
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  retstr->bounds.origin = 0u;
  retstr->bounds.size = 0u;
  retstr->position = 0u;
  retstr->anchorPoint = 0u;
  retstr->scale = 0u;
  retstr->translation = 0u;
  v14.receiver = self;
  v14.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  [(SBWindowingItemFrame *)&v14 frameForItem:v6];
  if (self->_appExposeModifier && [v6 isAppLayout])
  {
    appLayout = [(SBAppExposeWindowingModifier *)self->_appExposeModifier appLayout];
    appLayout2 = [v6 appLayout];
    if ([appLayout isOrContainsAppLayout:appLayout2])
    {
    }

    else
    {
      transitionPhase = [(SBWindowingModifier *)self transitionPhase];

      if (transitionPhase == 1)
      {
        isRTLEnabled = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self isRTLEnabled];
        [(SBFlexibleWindowingToAppExposeWindowingModifier *)self switcherViewBounds];
        v12 = -v11;
        if (isRTLEnabled)
        {
          v12 = v11;
        }

        retstr->position.x = v12 + retstr->position.x;
      }
    }
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isAppLayout])
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
    v5 = [(SBWindowingModifier *)&v11 animationAttributesForLayoutElement:elementCopy];

    v6 = [v5 mutableCopy];
    elementCopy = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self switcherSettings];
    animationSettings = [elementCopy animationSettings];
    toggleAppSwitcherSettings = [animationSettings toggleAppSwitcherSettings];
    [v6 setLayoutSettings:toggleAppSwitcherSettings];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
    v6 = [(SBWindowingModifier *)&v10 animationAttributesForLayoutElement:elementCopy];
  }

  return v6;
}

@end