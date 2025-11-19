@interface SBDropApplicationFloatingSwitcherModifier
- (SBDropApplicationFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBDropApplicationFloatingSwitcherModifier

- (SBDropApplicationFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBDropApplicationFloatingSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fromAppLayout, a4);
    objc_storeStrong(&v12->_toAppLayout, a5);
  }

  return v12;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBDropApplicationFloatingSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v19.receiver = self;
  v19.super_class = SBDropApplicationFloatingSwitcherModifier;
  [(SBDropApplicationFloatingSwitcherModifier *)&v19 opacityForLayoutRole:a3 inAppLayout:a4 atIndex:?];
  v8 = v7;
  v9 = [(SBDropApplicationFloatingSwitcherModifier *)self appLayouts];
  v10 = v9;
  fromAppLayout = self->_fromAppLayout;
  if (!fromAppLayout || ([v9 objectAtIndex:a5], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[SBAppLayout isEqual:](fromAppLayout, "isEqual:", v12), v12, v14 = 1.0, !v13))
  {
    toAppLayout = self->_toAppLayout;
    if (toAppLayout)
    {
      v16 = [v10 objectAtIndex:a5];
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