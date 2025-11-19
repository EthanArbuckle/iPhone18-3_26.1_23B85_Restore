@interface SBAppExposeToFullScreenSwitcherModifier
- (BOOL)_isEffectivelyFullScreen;
- (BOOL)_isIndexActive:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBAppExposeToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingAppLayout:(id)a6 bundleIdentifier:(id)a7 appExposeModifier:(id)a8 fullScreenModifier:(id)a9;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)plusButtonAlpha;
- (double)scaleForIndex:(unint64_t)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)appLayouts;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (void)_performBlockBySimulatingPreTransitionState:(id)a3;
@end

@implementation SBAppExposeToFullScreenSwitcherModifier

- (SBAppExposeToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingAppLayout:(id)a6 bundleIdentifier:(id)a7 appExposeModifier:(id)a8 fullScreenModifier:(id)a9
{
  v14 = a3;
  v15 = a5;
  v34 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v36.receiver = self;
  v36.super_class = SBAppExposeToFullScreenSwitcherModifier;
  v19 = [(SBTransitionSwitcherModifier *)&v36 initWithTransitionID:v14];
  if (!v19)
  {
    goto LABEL_9;
  }

  if (!v15)
  {
    [SBAppExposeToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v19 fullScreenAppLayout:? floatingAppLayout:? bundleIdentifier:? appExposeModifier:? fullScreenModifier:?];
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_11:
    [SBAppExposeToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v19 fullScreenAppLayout:? floatingAppLayout:? bundleIdentifier:? appExposeModifier:? fullScreenModifier:?];
    goto LABEL_4;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (!v18)
  {
    [SBAppExposeToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v19 fullScreenAppLayout:? floatingAppLayout:? bundleIdentifier:? appExposeModifier:? fullScreenModifier:?];
  }

  v19->_direction = a4;
  objc_storeStrong(&v19->_fullScreenAppLayout, a5);
  objc_storeStrong(&v19->_floatingAppLayout, a6);
  v20 = [v16 copy];
  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v20;

  objc_storeStrong(&v19->_appExposeModifier, a8);
  objc_storeStrong(&v19->_fullscreenModifier, a9);
  v22 = [SBRouteToAppExposeSwitcherModifier alloc];
  v23 = [(SBAppExposeToFullScreenSwitcherModifier *)v19 _newAppExposeModifier];
  v24 = [(SBRouteToAppExposeSwitcherModifier *)v22 initWithTransitionID:v14 appExposeModifier:v23];
  routeToAppExposeModifier = v19->_routeToAppExposeModifier;
  v19->_routeToAppExposeModifier = v24;

  [(SBChainableModifier *)v19 addChildModifier:v19->_routeToAppExposeModifier atLevel:0 key:0];
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v19->_fullScreenAppLayout, 0}];
  v27 = v26;
  floatingAppLayout = v19->_floatingAppLayout;
  if (floatingAppLayout)
  {
    [v26 insertObject:floatingAppLayout atIndex:0];
  }

  v29 = [SBGridToActiveAppLayoutsSwitcherModifier alloc];
  v30 = [(SBAppExposeToFullScreenSwitcherModifier *)v19 _newAppExposeModifier];
  v31 = [(SBGridToActiveAppLayoutsSwitcherModifier *)v29 initWithTransitionID:v14 direction:a4 activeAppLayouts:v27 gridModifier:v30];

  [(SBChainableModifier *)v19 addChildModifier:v31 atLevel:1 key:0];
LABEL_9:

  return v19;
}

- (id)transitionWillBegin
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SBAppExposeToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v25 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

  v6 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
  appLayoutsBeforeTransition = self->_appLayoutsBeforeTransition;
  self->_appLayoutsBeforeTransition = v6;

  if (self->_direction == 1)
  {
    v8 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
    v9 = [(SBAppExposeToFullScreenSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v8];

    v10 = self->_fullScreenAppLayout;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        v15 = 0;
        v16 = v10;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * v15);
          if ([v17 environment] == 1)
          {
            v10 = v16;
            goto LABEL_12;
          }

          v10 = v17;

          ++v15;
          v16 = v10;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (v10)
    {
      v18 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v10 alignment:0 animated:0];
      v19 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v18 toResponse:v5];

      v5 = v19;
    }
  }

  return v5;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBAppExposeToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (!self->_direction)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

    v3 = v5;
  }

  return v3;
}

- (id)appLayouts
{
  if (self->_isSimulatingPreTransitionState)
  {
    v2 = self->_appLayoutsBeforeTransition;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBAppExposeToFullScreenSwitcherModifier;
    v2 = [(SBAppExposeToFullScreenSwitcherModifier *)&v4 appLayouts];
  }

  return v2;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  routeToAppExposeModifier = self->_routeToAppExposeModifier;
  v5 = a3;
  v6 = [(SBRouteToAppExposeSwitcherModifier *)routeToAppExposeModifier reversesFloatingCardDirection];
  [(SBRouteToAppExposeSwitcherModifier *)self->_routeToAppExposeModifier setReversesFloatingCardDirection:self->_direction == 1];
  v10.receiver = self;
  v10.super_class = SBAppExposeToFullScreenSwitcherModifier;
  v7 = [(SBTransitionSwitcherModifier *)&v10 adjustedAppLayoutsForAppLayouts:v5];

  [(SBRouteToAppExposeSwitcherModifier *)self->_routeToAppExposeModifier setReversesFloatingCardDirection:v6];
  if (self->_direction)
  {
    v8 = v7;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    if (([v8 containsObject:self->_fullScreenAppLayout] & 1) == 0)
    {
      [v8 addObject:self->_fullScreenAppLayout];
    }

    if (self->_floatingAppLayout && ([v8 containsObject:?] & 1) == 0)
    {
      [v8 insertObject:self->_floatingAppLayout atIndex:0];
    }
  }

  return v8;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if (!self->_direction)
  {
    v14 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
    v15 = [v14 objectAtIndex:a3];

    if ([v15 containsItemWithBundleIdentifier:self->_bundleIdentifier])
    {
      if ([(SBAppExposeToFullScreenSwitcherModifier *)self _isIndexActive:a3])
      {
        v28.receiver = self;
        v28.super_class = SBAppExposeToFullScreenSwitcherModifier;
        [(SBAppExposeToFullScreenSwitcherModifier *)&v28 frameForIndex:a3];
        v6 = v16;
        v8 = v17;
        v10 = v18;
        v12 = v19;
LABEL_11:

        goto LABEL_12;
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x4010000000;
      v34 = &unk_21F9DA6A3;
      v35 = 0u;
      v36 = 0u;
      v21 = [(NSArray *)self->_appLayoutsBeforeTransition indexOfObject:v15];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [MEMORY[0x277CCA890] currentHandler];
        [v26 handleFailureInMethod:a2 object:self file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:160 description:@"preTransitionIndex should be valid for an app layout whose bundle identifier matches what we're showing in app expose"];
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __57__SBAppExposeToFullScreenSwitcherModifier_frameForIndex___block_invoke_2;
      v29[3] = &unk_2783AA618;
      v29[5] = &v31;
      v29[6] = v21;
      v29[4] = self;
      [(SBAppExposeToFullScreenSwitcherModifier *)self _performBlockBySimulatingPreTransitionState:v29];
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x4010000000;
      v34 = &unk_21F9DA6A3;
      fullscreenModifier = self->_fullscreenModifier;
      v35 = 0u;
      v36 = 0u;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __57__SBAppExposeToFullScreenSwitcherModifier_frameForIndex___block_invoke;
      v30[3] = &unk_2783AA618;
      v30[4] = self;
      v30[5] = &v31;
      v30[6] = a3;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fullscreenModifier usingBlock:v30];
    }

    v6 = v32[4];
    v8 = v32[5];
    v10 = v32[6];
    v12 = v32[7];
    _Block_object_dispose(&v31, 8);
    goto LABEL_11;
  }

  v27.receiver = self;
  v27.super_class = SBAppExposeToFullScreenSwitcherModifier;
  [(SBAppExposeToFullScreenSwitcherModifier *)&v27 frameForIndex:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
LABEL_12:
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

uint64_t __57__SBAppExposeToFullScreenSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 208) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

id __57__SBAppExposeToFullScreenSwitcherModifier_frameForIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9.receiver = *(a1 + 32);
  v9.super_class = SBAppExposeToFullScreenSwitcherModifier;
  result = objc_msgSendSuper2(&v9, sel_frameForIndex_, v2);
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if (!self->_direction)
  {
    v8 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
    v9 = [v8 objectAtIndex:a3];

    if ([v9 containsItemWithBundleIdentifier:self->_bundleIdentifier])
    {
      if ([(SBAppExposeToFullScreenSwitcherModifier *)self _isIndexActive:a3])
      {
        v16.receiver = self;
        v16.super_class = SBAppExposeToFullScreenSwitcherModifier;
        [(SBAppExposeToFullScreenSwitcherModifier *)&v16 scaleForIndex:a3];
        v6 = v10;
LABEL_11:

        return v6;
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v12 = [(NSArray *)self->_appLayoutsBeforeTransition indexOfObject:v9];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:186 description:@"preTransitionIndex should be valid for an app layout whose bundle identifier matches what we're showing in app expose"];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__SBAppExposeToFullScreenSwitcherModifier_scaleForIndex___block_invoke_2;
      v17[3] = &unk_2783AA618;
      v17[5] = &v19;
      v17[6] = v12;
      v17[4] = self;
      [(SBAppExposeToFullScreenSwitcherModifier *)self _performBlockBySimulatingPreTransitionState:v17];
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      fullscreenModifier = self->_fullscreenModifier;
      v22 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __57__SBAppExposeToFullScreenSwitcherModifier_scaleForIndex___block_invoke;
      v18[3] = &unk_2783AA618;
      v18[4] = self;
      v18[5] = &v19;
      v18[6] = a3;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fullscreenModifier usingBlock:v18];
    }

    v6 = v20[3];
    _Block_object_dispose(&v19, 8);
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = SBAppExposeToFullScreenSwitcherModifier;
  [(SBAppExposeToFullScreenSwitcherModifier *)&v15 scaleForIndex:a3];
  return v5;
}

uint64_t __57__SBAppExposeToFullScreenSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 208) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

id __57__SBAppExposeToFullScreenSwitcherModifier_scaleForIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5.receiver = *(a1 + 32);
  v5.super_class = SBAppExposeToFullScreenSwitcherModifier;
  result = objc_msgSendSuper2(&v5, sel_scaleForIndex_, v2);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v9 = a4;
  if (self->_direction)
  {
    v18.receiver = self;
    v18.super_class = SBAppExposeToFullScreenSwitcherModifier;
    [(SBAppExposeToFullScreenSwitcherModifier *)&v18 opacityForLayoutRole:a3 inAppLayout:v9 atIndex:a5];
    v11 = v10;
  }

  else
  {
    v12 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
    v13 = [v12 objectAtIndex:a5];

    if ([v13 containsItemWithBundleIdentifier:self->_bundleIdentifier])
    {
      if ([(SBAppExposeToFullScreenSwitcherModifier *)self _isIndexActive:a5])
      {
        v19.receiver = self;
        v19.super_class = SBAppExposeToFullScreenSwitcherModifier;
        [(SBAppExposeToFullScreenSwitcherModifier *)&v19 opacityForLayoutRole:a3 inAppLayout:v13 atIndex:a5];
        v11 = v14;
      }

      else
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v15 = [(NSArray *)self->_appLayoutsBeforeTransition indexOfObject:v13];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:208 description:@"preTransitionIndex should be valid for an app layout whose bundle identifier matches what we're showing in app expose"];
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __84__SBAppExposeToFullScreenSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
        v20[3] = &unk_2783AA690;
        v23 = &v26;
        v24 = a3;
        v25 = v15;
        v21 = v13;
        v22 = self;
        [(SBAppExposeToFullScreenSwitcherModifier *)self _performBlockBySimulatingPreTransitionState:v20];
        v11 = v27[3];

        _Block_object_dispose(&v26, 8);
      }
    }

    else if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }
  }

  return v11;
}

id __84__SBAppExposeToFullScreenSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v7.receiver = *(a1 + 40);
  v7.super_class = SBAppExposeToFullScreenSwitcherModifier;
  result = objc_msgSendSuper2(&v7, sel_opacityForLayoutRole_inAppLayout_atIndex_, v3, v2, v4);
  *(*(*(a1 + 48) + 8) + 24) = v6;
  return result;
}

- (double)plusButtonAlpha
{
  v2 = [(SBAppExposeToFullScreenSwitcherModifier *)self _isEffectivelyFullScreen];
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v7.receiver = self;
  v7.super_class = SBAppExposeToFullScreenSwitcherModifier;
  v4 = [(SBAppExposeToFullScreenSwitcherModifier *)&v7 visibleAppLayouts];
  v5 = [v3 initWithSet:v4];

  [v5 addObject:self->_fullScreenAppLayout];
  if (self->_floatingAppLayout)
  {
    [v5 addObject:?];
  }

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2810000000;
  v14 = &unk_21F9DA6A3;
  v15 = 0;
  appExposeModifier = self->_appExposeModifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBAppExposeToFullScreenSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783AB258;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v8];
  LOWORD(self) = *(v12 + 16);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __80__SBAppExposeToFullScreenSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 200) asyncRenderingAttributesForAppLayout:a1[5]];
  *(*(a1[6] + 8) + 32) = result;
  return result;
}

- (BOOL)_isEffectivelyFullScreen
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 0;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

- (BOOL)_isIndexActive:(unint64_t)a3
{
  v5 = [(SBAppExposeToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_fullScreenAppLayout isEqual:v6])
  {
    v7 = 1;
  }

  else
  {
    floatingAppLayout = self->_floatingAppLayout;
    if (floatingAppLayout)
    {
      v7 = [(SBAppLayout *)floatingAppLayout isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_performBlockBySimulatingPreTransitionState:(id)a3
{
  isSimulatingPreTransitionState = self->_isSimulatingPreTransitionState;
  self->_isSimulatingPreTransitionState = 1;
  (*(a3 + 2))(a3, a2);
  self->_isSimulatingPreTransitionState = isSimulatingPreTransitionState;
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:bundleIdentifier:appExposeModifier:fullScreenModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:bundleIdentifier:appExposeModifier:fullScreenModifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"appExposeModifier"}];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:bundleIdentifier:appExposeModifier:fullScreenModifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToFullScreenSwitcherModifier.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"fullScreenModifier"}];
}

@end