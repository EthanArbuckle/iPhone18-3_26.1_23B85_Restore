@interface SBSwitcherToActiveFloatingSwitcherModifier
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (SBSwitcherToActiveFloatingSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingDeckModifier:(id)a6;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBSwitcherToActiveFloatingSwitcherModifier

- (SBSwitcherToActiveFloatingSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingDeckModifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SBSwitcherToActiveFloatingSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  v14 = v13;
  if (v13)
  {
    v13->_direction = a4;
    objc_storeStrong(&v13->_fullScreenAppLayout, a5);
    objc_storeStrong(&v14->_floatingDeckModifier, a6);
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBSwitcherToActiveFloatingSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  if (self->_direction == 1)
  {
    v5 = self->_fullScreenAppLayout;
    if (v5)
    {
      v6 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v5 alignment:0 animated:0];
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  if (self->_direction == 1 && [(SBAppLayout *)self->_fullScreenAppLayout type]== 2)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:v7 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v8];

  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v9;
}

- (id)visibleAppLayouts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__63;
  v14 = __Block_byref_object_dispose__63;
  v15 = 0;
  floatingDeckModifier = self->_floatingDeckModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBSwitcherToActiveFloatingSwitcherModifier_visibleAppLayouts__block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:floatingDeckModifier usingBlock:v9];
  v4 = v11[5];
  v8.receiver = self;
  v8.super_class = SBSwitcherToActiveFloatingSwitcherModifier;
  v5 = [(SBSwitcherToActiveFloatingSwitcherModifier *)&v8 visibleAppLayouts];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __63__SBSwitcherToActiveFloatingSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBSwitcherToActiveFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBSwitcherToActiveFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBSwitcherToActiveFloatingSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 launchAppFromSwitcherSettings];

  return v4;
}

- (id)appLayoutsToCacheSnapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__63;
  v10 = __Block_byref_object_dispose__63;
  v11 = 0;
  floatingDeckModifier = self->_floatingDeckModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SBSwitcherToActiveFloatingSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:floatingDeckModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __72__SBSwitcherToActiveFloatingSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBSwitcherToActiveFloatingSwitcherModifier;
  return ([(SBTransitionSwitcherModifier *)&v4 asyncRenderingAttributesForAppLayout:a3]| 0x100);
}

@end