@interface SBHomePeekToHomeTransitionModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBHomePeekToHomeTransitionModifier)initWithFromAppLayout:(id)a3 fromConfiguration:(int64_t)a4;
- (double)opacityForItem:(id)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)animationAttributesForItem:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBHomePeekToHomeTransitionModifier

- (SBHomePeekToHomeTransitionModifier)initWithFromAppLayout:(id)a3 fromConfiguration:(int64_t)a4
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SBHomePeekToHomeTransitionModifier;
  v9 = [(SBWindowingModifier *)&v12 init];
  if (v9)
  {
    if (!v8)
    {
      [SBHomePeekToHomeTransitionModifier initWithFromAppLayout:a2 fromConfiguration:v9];
    }

    objc_storeStrong(&v9->_fromAppLayout, a3);
    v10 = [[SBHomePeekWindowingModifier alloc] initWithPeekingAppLayout:v8 configuration:a4];
    [(SBChainableModifier *)v9 addChildModifier:v10];
  }

  return v9;
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

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  if ([(SBAppLayout *)self->_fromAppLayout containsItem:v12])
  {
    v37.receiver = self;
    v37.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBHomePeekToHomeTransitionModifier *)&v37 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(SBHomePeekToHomeTransitionModifier *)self switcherSettings];
    v22 = [v21 windowingSettings];
    [v22 diffuseShadowRadius];
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
    [(SBHomePeekToHomeTransitionModifier *)&v36 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
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

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  v8 = 1.0;
  if (![(SBAppLayout *)self->_fromAppLayout containsItem:v7])
  {
    v11.receiver = self;
    v11.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBHomePeekToHomeTransitionModifier *)&v11 scaleForLayoutRole:a3 inAppLayout:v6];
    v8 = v9;
  }

  return v8;
}

- (double)opacityForItem:(id)a3
{
  v4 = a3;
  if (![v4 isAppLayout] || (fromAppLayout = self->_fromAppLayout, objc_msgSend(v4, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(fromAppLayout) = -[SBAppLayout isOrContainsAppLayout:](fromAppLayout, "isOrContainsAppLayout:", v6), v6, v7 = 1.0, (fromAppLayout & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = SBHomePeekToHomeTransitionModifier;
    [(SBWindowingModifier *)&v10 opacityForItem:v4];
    v7 = v8;
  }

  return v7;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = a3;
  if ([v4 isAppLayout] && (fromAppLayout = self->_fromAppLayout, objc_msgSend(v4, "appLayout"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(fromAppLayout) = -[SBAppLayout isOrContainsAppLayout:](fromAppLayout, "isOrContainsAppLayout:", v6), v6, fromAppLayout))
  {
    v7 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
    [(SBSwitcherAnimationAttributes *)v7 setUpdateMode:3];
    v8 = [(SBHomePeekToHomeTransitionModifier *)self switcherSettings];
    v9 = [v8 windowingSettings];
    v10 = [v9 appToPeekLayoutSettings];
    [(SBSwitcherAnimationAttributes *)v7 setLayoutSettings:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHomePeekToHomeTransitionModifier;
    v7 = [(SBWindowingModifier *)&v12 animationAttributesForItem:v4];
  }

  return v7;
}

- (void)initWithFromAppLayout:(uint64_t)a1 fromConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomePeekToHomeTransitionModifier.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end