@interface SBContinuousExposeAppToInlineAppExposeSwitcherModifier
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBContinuousExposeAppToInlineAppExposeSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 activeAppLayout:(id)a5 appExposeBundleIdentifier:(id)a6;
- (id)_inlineAppExposeAppLayouts;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBContinuousExposeAppToInlineAppExposeSwitcherModifier

- (SBContinuousExposeAppToInlineAppExposeSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 activeAppLayout:(id)a5 appExposeBundleIdentifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SBContinuousExposeAppToInlineAppExposeSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  v14 = v13;
  if (v13)
  {
    v13->_direction = a4;
    objc_storeStrong(&v13->_activeAppLayout, a5);
    objc_storeStrong(&v14->_appExposeBundleIdentifier, a6);
  }

  return v14;
}

- (id)transitionWillBegin
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeAppToInlineAppExposeSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v9 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
    v7 = SBAppendSwitcherModifierResponse(v6, v5);

    v5 = v7;
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBContinuousExposeAppToInlineAppExposeSwitcherModifier;
  v3 = [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)&v8 visibleAppLayouts];
  v4 = v3;
  if (self->_direction)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self _inlineAppExposeAppLayouts];
    v5 = [v4 setByAddingObjectsFromArray:v6];
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_direction == 1)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeAppToInlineAppExposeSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v9 adjustedAppLayoutsForAppLayouts:v4];
  }

  v7 = v6;

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v29.receiver = self;
  v29.super_class = SBContinuousExposeAppToInlineAppExposeSwitcherModifier;
  [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)&v29 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  v15 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  if (([v14 isEqual:self->_activeAppLayout] & 1) == 0)
  {
    v16 = [v14 continuousExposeIdentifier];
    v17 = [v16 containsString:self->_appExposeBundleIdentifier];

    if ((v17 & 1) == 0)
    {
      v18 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v18 stripWidth];
      v20 = v19;

      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self containerViewBounds];
        v22 = v10 * 0.5 + v21;
      }

      else
      {
        v22 = v10 * -0.5 - v20;
      }

      direction = self->_direction;
      if (direction || v15 != 2)
      {
        if (v15 == 1 && direction == 1)
        {
          v6 = v22;
        }
      }

      else
      {
        v6 = v22;
      }
    }
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self appLayouts];
  v7 = [v6 indexOfObject:v5];

  [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self frameForIndex:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_inlineAppExposeAppLayouts
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SBContinuousExposeAppToInlineAppExposeSwitcherModifier *)self appLayouts];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 continuousExposeIdentifier];
        if ([v9 containsString:self->_appExposeBundleIdentifier])
        {
          v10 = [v8 isEqual:self->_activeAppLayout];

          if ((v10 & 1) == 0)
          {
            [v12 addObject:v8];
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v12;
}

@end