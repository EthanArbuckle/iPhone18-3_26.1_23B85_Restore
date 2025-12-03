@interface SBHomePeekToHomeTransitionModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBHomePeekToHomeTransitionModifier)initWithFromAppLayout:(id)layout fromConfiguration:(int64_t)configuration;
- (double)opacityForItem:(id)item;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForItem:(id)item;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBHomePeekToHomeTransitionModifier

- (SBHomePeekToHomeTransitionModifier)initWithFromAppLayout:(id)layout fromConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBHomePeekToHomeTransitionModifier;
  v9 = [(SBWindowingModifier *)&v12 init];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBHomePeekToHomeTransitionModifier initWithFromAppLayout:a2 fromConfiguration:v9];
    }

    objc_storeStrong(&v9->_fromAppLayout, layout);
    v10 = [[SBHomePeekWindowingModifier alloc] initWithPeekingAppLayout:layoutCopy configuration:configuration];
    [(SBChainableModifier *)v9 addChildModifier:v10];
  }

  return v9;
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

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v12 = [layoutCopy itemForLayoutRole:role];
  if ([(SBAppLayout *)self->_fromAppLayout containsItem:v12])
  {
    v37.receiver = self;
    v37.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBHomePeekToHomeTransitionModifier *)&v37 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    switcherSettings = [(SBHomePeekToHomeTransitionModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    [windowingSettings diffuseShadowRadius];
    v24 = v23 * 2.8;

    [(SBHomePeekToHomeTransitionModifier *)self containerViewBounds];
    if (v14 >= v25 * 0.5)
    {
      [(SBHomePeekToHomeTransitionModifier *)self containerViewBounds];
      v26 = v24 + v31;
    }

    else
    {
      v26 = -(v18 + v24);
    }
  }

  else
  {
    v36.receiver = self;
    v36.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBHomePeekToHomeTransitionModifier *)&v36 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v26 = v27;
    v16 = v28;
    v18 = v29;
    v20 = v30;
  }

  v32 = v26;
  v33 = v16;
  v34 = v18;
  v35 = v20;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:role];
  v8 = 1.0;
  if (![(SBAppLayout *)self->_fromAppLayout containsItem:v7])
  {
    v11.receiver = self;
    v11.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBHomePeekToHomeTransitionModifier *)&v11 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v8 = v9;
  }

  return v8;
}

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  if (![itemCopy isAppLayout] || (fromAppLayout = self->_fromAppLayout, objc_msgSend(itemCopy, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(fromAppLayout) = -[SBAppLayout isOrContainsAppLayout:](fromAppLayout, "isOrContainsAppLayout:", v6), v6, v7 = 1.0, (fromAppLayout & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBWindowingModifier *)&v10 opacityForItem:itemCopy];
    v7 = v8;
  }

  return v7;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isAppLayout] && (fromAppLayout = self->_fromAppLayout, objc_msgSend(itemCopy, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(fromAppLayout) = -[SBAppLayout isOrContainsAppLayout:](fromAppLayout, "isOrContainsAppLayout:", v6), v6, fromAppLayout))
  {
    v7 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
    [(SBSwitcherAnimationAttributes *)v7 setUpdateMode:3];
    switcherSettings = [(SBHomePeekToHomeTransitionModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    appToPeekLayoutSettings = [windowingSettings appToPeekLayoutSettings];
    [(SBSwitcherAnimationAttributes *)v7 setLayoutSettings:appToPeekLayoutSettings];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHomePeekToHomeTransitionModifier;
    v7 = [(SBWindowingModifier *)&v12 animationAttributesForItem:itemCopy];
  }

  return v7;
}

- (void)initWithFromAppLayout:(uint64_t)a1 fromConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomePeekToHomeTransitionModifier.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end