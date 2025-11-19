@interface SBFlexibleWindowingToAppExposeWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (SBFlexibleWindowingToAppExposeWindowingModifier)initWithBundleIdentifier:(id)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)visibleItems;
- (void)didComplete;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
- (void)willBegin;
@end

@implementation SBFlexibleWindowingToAppExposeWindowingModifier

- (SBFlexibleWindowingToAppExposeWindowingModifier)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  v6 = [(SBWindowingModifier *)&v10 init];
  if (v6)
  {
    v7 = [[SBAppExposeWindowingModifier alloc] initWithBundleIdentifier:v5];
    appExposeModifier = v6->_appExposeModifier;
    v6->_appExposeModifier = v7;

    objc_storeStrong(&v6->_bundleId, a3);
  }

  return v6;
}

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)willBegin
{
  v5.receiver = self;
  v5.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  v3 = [(SBWindowingModifier *)&v5 visibleItems];
  appLayoutsVisibleBeforeTransition = self->_appLayoutsVisibleBeforeTransition;
  self->_appLayoutsVisibleBeforeTransition = v3;
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
  v3 = [(SBWindowingModifier *)&v6 visibleItems];
  v4 = [v3 setByAddingObjectsFromSet:self->_appLayoutsVisibleBeforeTransition];

  return v4;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;

  [(SBChainableModifier *)self addChildModifier:self->_appExposeModifier];
  v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v6];

  v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:0];
  [(SBWindowingModifier *)self appendResponse:v7];
}

- (void)transitionDidUpdate:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
  v4 = [(SBFlexibleWindowingToAppExposeWindowingModifier *)&v9 appLayouts];
  v5 = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self adjustedAppLayoutsForAppLayouts:v4];
  v6 = [v5 firstObject];

  v7 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v6 alignment:0 animated:0];
  [(SBWindowingModifier *)self appendResponse:v7];

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
  [(SBWindowingModifier *)self appendResponse:v8];
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
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
    v7 = [(SBAppExposeWindowingModifier *)self->_appExposeModifier appLayout];
    v8 = [v6 appLayout];
    if ([v7 isOrContainsAppLayout:v8])
    {
    }

    else
    {
      v9 = [(SBWindowingModifier *)self transitionPhase];

      if (v9 == 1)
      {
        v10 = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self isRTLEnabled];
        [(SBFlexibleWindowingToAppExposeWindowingModifier *)self switcherViewBounds];
        v12 = -v11;
        if (v10)
        {
          v12 = v11;
        }

        retstr->position.x = v12 + retstr->position.x;
      }
    }
  }

  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  if ([v4 isAppLayout])
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
    v5 = [(SBWindowingModifier *)&v11 animationAttributesForLayoutElement:v4];

    v6 = [v5 mutableCopy];
    v4 = [(SBFlexibleWindowingToAppExposeWindowingModifier *)self switcherSettings];
    v7 = [v4 animationSettings];
    v8 = [v7 toggleAppSwitcherSettings];
    [v6 setLayoutSettings:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingToAppExposeWindowingModifier;
    v6 = [(SBWindowingModifier *)&v10 animationAttributesForLayoutElement:v4];
  }

  return v6;
}

@end