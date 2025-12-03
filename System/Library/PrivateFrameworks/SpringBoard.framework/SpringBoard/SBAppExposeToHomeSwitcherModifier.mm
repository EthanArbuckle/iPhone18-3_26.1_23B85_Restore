@interface SBAppExposeToHomeSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (SBAppExposeToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction bundleIdentifier:(id)identifier appExposeModifier:(id)modifier;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)plusButtonAlpha;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
@end

@implementation SBAppExposeToHomeSwitcherModifier

- (SBAppExposeToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction bundleIdentifier:(id)identifier appExposeModifier:(id)modifier
{
  dCopy = d;
  identifierCopy = identifier;
  modifierCopy = modifier;
  v24.receiver = self;
  v24.super_class = SBAppExposeToHomeSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v24 initWithTransitionID:dCopy];
  if (v14)
  {
    if (!modifierCopy)
    {
      [SBAppExposeToHomeSwitcherModifier initWithTransitionID:a2 direction:v14 bundleIdentifier:? appExposeModifier:?];
    }

    v14->_direction = direction;
    v15 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    objc_storeStrong(&v14->_appExposeModifier, modifier);
    v17 = [SBRouteToAppExposeSwitcherModifier alloc];
    _newAppExposeModifier = [(SBAppExposeToHomeSwitcherModifier *)v14 _newAppExposeModifier];
    v19 = [(SBRouteToAppExposeSwitcherModifier *)v17 initWithTransitionID:dCopy appExposeModifier:_newAppExposeModifier];

    [(SBChainableModifier *)v14 addChildModifier:v19 atLevel:0 key:0];
    v20 = [SBHomeToGridSwitcherModifier alloc];
    _newAppExposeModifier2 = [(SBAppExposeToHomeSwitcherModifier *)v14 _newAppExposeModifier];
    v22 = [(SBHomeToSwitcherSwitcherModifier *)v20 initWithTransitionID:dCopy direction:direction multitaskingModifier:_newAppExposeModifier2];

    [(SBChainableModifier *)v14 addChildModifier:v22 atLevel:1 key:0];
  }

  return v14;
}

- (id)transitionWillBegin
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = SBAppExposeToHomeSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v23 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:transitionWillBegin toResponse:v4];

  appLayouts = [(SBAppExposeToHomeSwitcherModifier *)self appLayouts];
  v7 = [(SBTransitionSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:appLayouts];

  firstObject = [v7 firstObject];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      v13 = 0;
      v14 = firstObject;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v13);
        if ([v15 environment] == 1)
        {
          firstObject = v14;
          goto LABEL_11;
        }

        firstObject = v15;

        ++v13;
        v14 = firstObject;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (firstObject)
  {
    v16 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:firstObject alignment:0 animated:0];
    v17 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v16 toResponse:v5];

    v5 = v17;
  }

  return v5;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBAppExposeToHomeSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (!self->_direction)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:transitionDidEnd toResponse:v4];

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (double)plusButtonAlpha
{
  _isEffectivelyHome = [(SBAppExposeToHomeSwitcherModifier *)self _isEffectivelyHome];
  result = 1.0;
  if (_isEffectivelyHome)
  {
    return 0.0;
  }

  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2810000000;
  v14 = &unk_21F9DA6A3;
  v15 = 0;
  appExposeModifier = self->_appExposeModifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBAppExposeToHomeSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783AB258;
  v10 = &v11;
  v8[4] = self;
  v6 = layoutCopy;
  v9 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v8];
  LOWORD(self) = *(v12 + 16);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __74__SBAppExposeToHomeSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) asyncRenderingAttributesForAppLayout:a1[5]];
  *(*(a1[6] + 8) + 32) = result;
  return result;
}

- (BOOL)_isEffectivelyHome
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

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 bundleIdentifier:appExposeModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToHomeSwitcherModifier.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"appExposeModifier"}];
}

@end