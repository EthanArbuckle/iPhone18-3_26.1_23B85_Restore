@interface SBDropApplicationFloatingSwitcherModifier
- (SBDropApplicationFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBDropApplicationFloatingSwitcherModifier

- (SBDropApplicationFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14.receiver = self;
  v14.super_class = SBDropApplicationFloatingSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:d];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromAppLayout, layout);
    objc_storeStrong(&v12->_toAppLayout, appLayout);
  }

  return v12;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBDropApplicationFloatingSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = v3;
  if (self->_toAppLayout)
  {
    [v3 addObject:?];
  }

  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v19.receiver = self;
  v19.super_class = SBDropApplicationFloatingSwitcherModifier;
  [(SBDropApplicationFloatingSwitcherModifier *)&v19 opacityForLayoutRole:role inAppLayout:layout atIndex:?];
  v8 = v7;
  appLayouts = [(SBDropApplicationFloatingSwitcherModifier *)self appLayouts];
  v10 = appLayouts;
  fromAppLayout = self->_fromAppLayout;
  if (!fromAppLayout || ([appLayouts objectAtIndex:index], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[SBAppLayout isEqual:](fromAppLayout, "isEqual:", v12), v12, v14 = 1.0, !v13))
  {
    toAppLayout = self->_toAppLayout;
    if (toAppLayout)
    {
      v16 = [v10 objectAtIndex:index];
      v17 = [(SBAppLayout *)toAppLayout isEqual:v16];

      if (v17)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = v8;
      }
    }

    else
    {
      v14 = v8;
    }
  }

  return v14;
}

@end