@interface SBRevealContinuousExposeStripOverflowGestureModifier
- (BOOL)_hideDock;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUpdateAnimatableProperty:(id)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBRevealContinuousExposeStripOverflowGestureModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_finalScaleForFullScreenAppLayout;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)modelValueForAnimatableProperty:(id)a3 currentValue:(double)a4 creating:(BOOL)a5;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (id)_appSwitcherDefaults;
- (id)_layoutSettingsForAppLayout:(id)a3;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleAppLayouts;
- (int64_t)updateModeForAnimatableProperty:(id)a3;
@end

@implementation SBRevealContinuousExposeStripOverflowGestureModifier

- (SBRevealContinuousExposeStripOverflowGestureModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  v9 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:a3];
  if (v9)
  {
    if (!v8)
    {
      [SBRevealContinuousExposeStripOverflowGestureModifier initWithGestureID:a2 initialAppLayout:v9];
    }

    objc_storeStrong(&v9->_initialAppLayout, a4);
  }

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  v5 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType])
  {
    v6 = [v5 mutableCopy];
    v7 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self _layoutSettingsForAppLayout:v4];
    [v6 setLayoutSettings:v7];

    v5 = v6;
  }

  return v5;
}

- (id)_layoutSettingsForAppLayout:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v4 setDefaultValues];
  if (self->_showingAppSwitcherLayout)
  {
    [v4 setTrackingResponse:0.15];
    [v4 setTrackingDampingRatio:0.85];
  }

  if (self->_beginAnimatingAppSwitcherLayoutProperty)
  {
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)self presentationValueForAnimatableProperty:@"SBRevealContinuousExposeStripOverflowGestureModifierAnimatablePropertyIdentifier"];
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x277D65E60]);
    [v7 setDefaultValues];
    [v4 trackingResponse];
    v9 = v8;
    [v7 response];
    v11 = v6 * (v9 - v10);
    [v7 response];
    [v7 setTrackingResponse:v12 + v11];

    v4 = v7;
  }

  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v4 setFrameRateRange:1114113 highFrameRateReason:{*&v15.minimum, *&v15.maximum, *&v15.preferred}];

  return v4;
}

- (id)handleGestureEvent:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  v5 = [(SBGestureSwitcherModifier *)&v39 handleGestureEvent:v4];
  [v4 translationInContainerView];
  self->_translation = fabs(v6);
  if ([v4 phase] == 1)
  {
    v7 = objc_alloc_init(SBAppSwitcherContinuousExposeSwitcherModifier);
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    self->_continuousExposeAppSwitcherModifier = &v7->super;

    v9 = [(SBAppLayout *)self->_initialAppLayout itemForLayoutRole:1];
    v10 = [v9 bundleIdentifier];
    v11 = [v10 copy];
    appExposeBundleIdentifier = self->_appExposeBundleIdentifier;
    self->_appExposeBundleIdentifier = v11;

    v13 = [v4 selectedAppLayout];
    initialAppLayout = self->_initialAppLayout;
    self->_initialAppLayout = v13;

    self->_showingAppSwitcherLayout = 0;
    v15 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v15 stripWidth];
    self->_stripWidth = v16;

    goto LABEL_3;
  }

  if ([v4 phase] != 2)
  {
    if ([v4 phase] != 3)
    {
      goto LABEL_3;
    }

    if (([v4 isCanceled] & 1) != 0 || self->_translation <= 0.0)
    {
      v33 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:self->_initialAppLayout];
      v34 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v33 gestureInitiated:1];
      v23 = SBAppendSwitcherModifierResponse(v34, v5);

LABEL_26:
      v5 = v23;
      goto LABEL_3;
    }

    v20 = [SBPerformTransitionSwitcherEventResponse alloc];
    v21 = +[SBSwitcherTransitionRequest requestForActivatingAppSwitcher];
    v22 = [(SBPerformTransitionSwitcherEventResponse *)v20 initWithTransitionRequest:v21 gestureInitiated:1];

    v23 = SBAppendSwitcherModifierResponse(v22, v5);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self appLayouts];
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v36;
LABEL_14:
      v29 = 0;
      v30 = v27;
      while (1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v27 = *(*(&v35 + 1) + 8 * v29);

        if ([v27 environment] == 1)
        {
          break;
        }

        ++v29;
        v30 = v27;
        if (v26 == v29)
        {
          v26 = [v24 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v26)
          {
            goto LABEL_14;
          }

          break;
        }
      }

      if (!v27)
      {
        goto LABEL_25;
      }

      v31 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v27 alignment:0 animated:0];
      v32 = SBAppendSwitcherModifierResponse(v31, v23);

      v23 = v32;
    }

    else
    {
      v27 = v24;
    }

LABEL_25:
    goto LABEL_26;
  }

  showingAppSwitcherLayout = self->_showingAppSwitcherLayout;
  v19 = self->_translation > self->_stripWidth;
  self->_showingAppSwitcherLayout = v19;
  if (showingAppSwitcherLayout != v19)
  {
    self->_beginAnimatingAppSwitcherLayoutProperty = 1;
  }

LABEL_3:

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v16.receiver = self;
  v16.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v16 scaleForIndex:?];
  v20 = v5;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__SBRevealContinuousExposeStripOverflowGestureModifier_scaleForIndex___block_invoke;
    v15[3] = &unk_2783AA618;
    v15[4] = self;
    v15[5] = &v17;
    v15[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v15];
  }

  v7 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_initialAppLayout isOrContainsAppLayout:v8])
  {
    BSUIConstrainValueToIntervalWithRubberBand();
    v10 = v9;
    stripWidth = self->_stripWidth;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)self _finalScaleForFullScreenAppLayout];
    v13 = ((v12 + -1.0) * (v10 * (stripWidth + stripWidth) + 0.0) + 1.0) * v18[3];
    v18[3] = v13;
  }

  else
  {
    v13 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  return v13;
}

uint64_t __70__SBRevealContinuousExposeStripOverflowGestureModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x4010000000;
  v61 = &unk_21F9DA6A3;
  v62 = 0u;
  v63 = 0u;
  v57.receiver = self;
  v57.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v57 frameForIndex:?];
  *&v62 = v5;
  *(&v62 + 1) = v6;
  *&v63 = v7;
  *(&v63 + 1) = v8;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __70__SBRevealContinuousExposeStripOverflowGestureModifier_frameForIndex___block_invoke;
    v56[3] = &unk_2783AA618;
    v56[4] = self;
    v56[5] = &v58;
    v56[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v56];
  }

  v10 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self appLayouts];
  v11 = [v10 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_initialAppLayout isOrContainsAppLayout:v11])
  {
    BSUIConstrainValueToIntervalWithRubberBand();
    v13 = v12;
    stripWidth = self->_stripWidth;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)self _finalScaleForFullScreenAppLayout];
    v16 = v15;
    v17 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_initialAppLayout];
    v18 = [v17 configuration];
    [v18 containerBounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [(SBRevealContinuousExposeStripOverflowGestureModifier *)self containerViewBounds];
    v54 = v27;
    v55 = v16;
    v28 = v13;
    v29 = stripWidth;
    v64.origin.x = v20;
    v64.origin.y = v22;
    v64.size.width = v24;
    v64.size.height = v26;
    MaxX = CGRectGetMaxX(v64);
    v30 = v59[4];
    v65.origin.x = v20;
    v65.origin.y = v22;
    v65.size.width = v24;
    v65.size.height = v26;
    MidX = CGRectGetMidX(v65);
    v32 = MEMORY[0x277D76620];
    v33 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v34 = v28 * (v29 + v29) + 0.0;
    v35 = 1.0 - ((v55 + -1.0) * v34 + 1.0);
    v36 = -(v35 * (v30 - MidX));
    if (v33 != 1)
    {
      v36 = v35 * (v30 - MidX);
    }

    v37 = v59[5];
    v59[4] = v59[4] - v36;
    v66.origin.x = v20;
    v66.origin.y = v22;
    v66.size.width = v24;
    v66.size.height = v26;
    v59[5] = v59[5] - v35 * (v37 - CGRectGetMidY(v66));
    v38 = [*v32 userInterfaceLayoutDirection];
    v39 = v34 * ((1.0 - v55) * v24 * 0.5 + v54 - MaxX) + 0.0;
    if (v38 == 1)
    {
      v39 = -v39;
    }

    v59[4] = v39 + v59[4];
  }

  else
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v40 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v40 screenEdgePadding];
      BSUIConstrainValueToIntervalWithRubberBand();
      v41 = v59;
      v43 = v59[4] - v42;
    }

    else
    {
      v40 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v40 screenEdgePadding];
      BSUIConstrainValueToIntervalWithRubberBand();
      v41 = v59;
      v43 = v44 + v59[4];
    }

    v41[4] = v43;
  }

  v45 = v59[4];
  v46 = v59[5];
  v47 = v59[6];
  v48 = v59[7];

  _Block_object_dispose(&v58, 8);
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

uint64_t __70__SBRevealContinuousExposeStripOverflowGestureModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16 = &unk_21F9DA6A3;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__SBRevealContinuousExposeStripOverflowGestureModifier_anchorPointForIndex___block_invoke;
    v12[3] = &unk_2783AA618;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v12];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v11 anchorPointForIndex:a3];
    v4 = v6;
    v5 = v7;
    v8 = v14;
    v14[4] = v6;
    v8[5] = v7;
  }

  _Block_object_dispose(&v13, 8);
  v9 = v4;
  v10 = v5;
  result.y = v10;
  result.x = v9;
  return result;
}

uint64_t __76__SBRevealContinuousExposeStripOverflowGestureModifier_anchorPointForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) anchorPointForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4010000000;
  v22 = &unk_21F9DA6A3;
  v23 = 0u;
  v24 = 0u;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__SBRevealContinuousExposeStripOverflowGestureModifier_cornerRadiiForIndex___block_invoke;
    v18[3] = &unk_2783AA618;
    v18[4] = self;
    v18[5] = &v19;
    v18[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v18];
    v4 = v20[4];
    v5 = v20[5];
    v6 = v20[6];
    v7 = v20[7];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v17 cornerRadiiForIndex:a3];
    v4 = v8;
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v12 = v20;
    v20[4] = v8;
    v12[5] = v9;
    v12[6] = v10;
    v12[7] = v11;
  }

  _Block_object_dispose(&v19, 8);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  result.topRight = v16;
  result.bottomRight = v15;
  result.bottomLeft = v14;
  result.topLeft = v13;
  return result;
}

uint64_t __76__SBRevealContinuousExposeStripOverflowGestureModifier_cornerRadiiForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) cornerRadiiForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v24 = 0;
  v25 = 0;
  v23 = &unk_21F9DA6A3;
  v19.receiver = self;
  v19.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
  [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v19 perspectiveAngleForIndex:a3];
  v24 = v7;
  v25 = v8;
  v9 = self->_translation / self->_stripWidth;
  if (v9 <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9 + 0.0;
  }

  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__SBRevealContinuousExposeStripOverflowGestureModifier_perspectiveAngleForIndex___block_invoke;
    v18[3] = &unk_2783AA618;
    v18[4] = self;
    v18[5] = &v20;
    v18[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v18];
  }

  v12 = [(SBAppLayout *)self->_initialAppLayout isOrContainsAppLayout:v6];
  v13 = v21;
  v14 = v21[5];
  if (!v12)
  {
    v14 = v14 + fmin(v10, 1.0) * (v14 * 0.5 - v14);
    v21[5] = v14;
  }

  v15 = v13[4];
  _Block_object_dispose(&v20, 8);

  v16 = v15;
  v17 = v14;
  result.y = v17;
  result.x = v16;
  return result;
}

uint64_t __81__SBRevealContinuousExposeStripOverflowGestureModifier_perspectiveAngleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) perspectiveAngleForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)visibleAppLayouts
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBRevealContinuousExposeStripOverflowGestureModifier_visibleAppLayouts__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    v3 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v7 visibleAppLayouts];
    v4 = v10[5];
    v10[5] = v3;
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __73__SBRevealContinuousExposeStripOverflowGestureModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = v11;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4010000000;
  v39 = &unk_21F9DA6A3;
  v40 = 0u;
  v41 = 0u;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __98__SBRevealContinuousExposeStripOverflowGestureModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v28[3] = &unk_2783AA640;
    v30 = &v36;
    v31 = a3;
    v28[4] = self;
    v29 = v11;
    v32 = x;
    v33 = y;
    v34 = width;
    v35 = height;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v28];

    v14 = v37[4];
    v15 = v37[5];
    v16 = v37[6];
    v17 = v37[7];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v27 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v22 = v37;
    v37[4] = v18;
    v22[5] = v19;
    v22[6] = v20;
    v22[7] = v21;
  }

  _Block_object_dispose(&v36, 8);

  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

uint64_t __98__SBRevealContinuousExposeStripOverflowGestureModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__SBRevealContinuousExposeStripOverflowGestureModifier_scaleForLayoutRole_inAppLayout___block_invoke;
    v13[3] = &unk_2783AA668;
    v15 = &v17;
    v16 = a3;
    v13[4] = self;
    v14 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v13];

    v9 = v18[3];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v12 scaleForLayoutRole:a3 inAppLayout:v6];
    v9 = v10;
    v18[3] = v10;
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __87__SBRevealContinuousExposeStripOverflowGestureModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) scaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBRevealContinuousExposeStripOverflowGestureModifier_shouldPinLayoutRolesToSpace___block_invoke;
    v7[3] = &unk_2783AA618;
    v7[4] = self;
    v7[5] = &v8;
    v7[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v7];
    v4 = *(v9 + 24);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    v4 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
    *(v9 + 24) = v4;
  }

  _Block_object_dispose(&v8, 8);
  return v4 & 1;
}

uint64_t __84__SBRevealContinuousExposeStripOverflowGestureModifier_shouldPinLayoutRolesToSpace___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) shouldPinLayoutRolesToSpace:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__SBRevealContinuousExposeStripOverflowGestureModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
    v15[3] = &unk_2783AA690;
    v17 = &v20;
    v18 = a3;
    v15[4] = self;
    v16 = v8;
    v19 = a5;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v15];

    v11 = v21[3];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
    v21[3] = v12;
  }

  _Block_object_dispose(&v20, 8);

  return v11;
}

uint64_t __97__SBRevealContinuousExposeStripOverflowGestureModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) opacityForLayoutRole:a1[7] inAppLayout:a1[5] atIndex:a1[8]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__SBRevealContinuousExposeStripOverflowGestureModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
    v9[3] = &unk_2783AA6B8;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = a3;
    v9[7] = a4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v9];
    v5 = v11[3];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v8 shadowOpacityForLayoutRole:a3 atIndex:a4];
    v5 = v6;
    v11[3] = v6;
  }

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __91__SBRevealContinuousExposeStripOverflowGestureModifier_shadowOpacityForLayoutRole_atIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) shadowOpacityForLayoutRole:a1[6] atIndex:a1[7]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_21F9DA6A3;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __109__SBRevealContinuousExposeStripOverflowGestureModifier_wallpaperGradientAttributesForLayoutRole_inAppLayout___block_invoke;
    v17[3] = &unk_2783AA668;
    v19 = &v21;
    v20 = a3;
    v17[4] = self;
    v18 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v17];

    v9 = v22[4];
    v10 = v22[5];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v16 wallpaperGradientAttributesForLayoutRole:a3 inAppLayout:v6];
    v9 = v11;
    v10 = v12;
    v13 = v22;
    v22[4] = v11;
    v13[5] = v12;
  }

  _Block_object_dispose(&v21, 8);

  v14 = v9;
  v15 = v10;
  result.trailingAlpha = v15;
  result.leadingAlpha = v14;
  return result;
}

uint64_t __109__SBRevealContinuousExposeStripOverflowGestureModifier_wallpaperGradientAttributesForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) wallpaperGradientAttributesForLayoutRole:a1[7] inAppLayout:a1[5]];
  v3 = *(a1[6] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  v6 = a3;
  v7 = v6;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__SBRevealContinuousExposeStripOverflowGestureModifier_contentPageViewScaleForAppLayout_withScale___block_invoke;
    v13[3] = &unk_2783AA668;
    v15 = &v17;
    v13[4] = self;
    v14 = v6;
    v16 = a4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v13];

    v9 = v18[3];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v12 contentPageViewScaleForAppLayout:v6 withScale:a4];
    v9 = v10;
    v18[3] = v10;
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __99__SBRevealContinuousExposeStripOverflowGestureModifier_contentPageViewScaleForAppLayout_withScale___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) contentPageViewScaleForAppLayout:*(a1 + 40) withScale:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __94__SBRevealContinuousExposeStripOverflowGestureModifier_dimmingAlphaForLayoutRole_inAppLayout___block_invoke;
    v13[3] = &unk_2783AA668;
    v15 = &v17;
    v16 = a3;
    v13[4] = self;
    v14 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v13];

    v9 = v18[3];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v12 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
    v9 = v10;
    v18[3] = v10;
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __94__SBRevealContinuousExposeStripOverflowGestureModifier_dimmingAlphaForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) dimmingAlphaForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__SBRevealContinuousExposeStripOverflowGestureModifier_titleOpacityForIndex___block_invoke;
    v8[3] = &unk_2783AA618;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v7 titleOpacityForIndex:a3];
    v4 = v5;
    v10[3] = v5;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __77__SBRevealContinuousExposeStripOverflowGestureModifier_titleOpacityForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) titleOpacityForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__SBRevealContinuousExposeStripOverflowGestureModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke;
    v7[3] = &unk_2783AA618;
    v7[4] = self;
    v7[5] = &v8;
    v7[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v7];
    v4 = *(v9 + 24);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    v4 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
    *(v9 + 24) = v4;
  }

  _Block_object_dispose(&v8, 8);
  return v4 & 1;
}

uint64_t __100__SBRevealContinuousExposeStripOverflowGestureModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) shouldPinLayoutRolesToSpace:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  v33 = 0;
  v34 = &v33;
  v35 = 0x4010000000;
  v36 = &unk_21F9DA6A3;
  v37 = 0u;
  v38 = 0u;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __101__SBRevealContinuousExposeStripOverflowGestureModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke;
    v26[3] = &unk_2783AA6E0;
    v28 = &v33;
    v26[4] = self;
    v29 = x;
    v30 = y;
    v31 = width;
    v32 = height;
    v27 = v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v26];

    v12 = v34[4];
    v13 = v34[5];
    v14 = v34[6];
    v15 = v34[7];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v25 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v20 = v34;
    v34[4] = v16;
    v20[5] = v17;
    v20[6] = v18;
    v20[7] = v19;
  }

  _Block_object_dispose(&v33, 8);

  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

uint64_t __101__SBRevealContinuousExposeStripOverflowGestureModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) adjustedSpaceAccessoryViewFrame:*(a1 + 40) forAppLayout:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v27 = 0;
  v28 = 0;
  v26 = &unk_21F9DA6A3;
  if (self->_showingAppSwitcherLayout)
  {
    continuousExposeAppSwitcherModifier = self->_continuousExposeAppSwitcherModifier;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__SBRevealContinuousExposeStripOverflowGestureModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke;
    v18[3] = &unk_2783AA690;
    v20 = &v23;
    v18[4] = self;
    v21 = x;
    v22 = y;
    v19 = v7;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:continuousExposeAppSwitcherModifier usingBlock:v18];

    v10 = v24[4];
    v11 = v24[5];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v17 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    v10 = v12;
    v11 = v13;
    v14 = v24;
    v24[4] = v12;
    v14[5] = v13;
  }

  _Block_object_dispose(&v23, 8);

  v15 = v10;
  v16 = v11;
  result.y = v16;
  result.x = v15;
  return result;
}

uint64_t __107__SBRevealContinuousExposeStripOverflowGestureModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) adjustedSpaceAccessoryViewAnchorPoint:*(a1 + 40) forAppLayout:{*(a1 + 56), *(a1 + 64)}];
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)animatablePropertyIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"SBRevealContinuousExposeStripOverflowGestureModifierAnimatablePropertyIdentifier", 0}];

  return v2;
}

- (double)modelValueForAnimatableProperty:(id)a3 currentValue:(double)a4 creating:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([v8 isEqualToString:@"SBRevealContinuousExposeStripOverflowGestureModifierAnimatablePropertyIdentifier"])
  {
    if (v5)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v12 modelValueForAnimatableProperty:v8 currentValue:v5 creating:a4];
    v9 = v10;
  }

  return v9;
}

- (int64_t)updateModeForAnimatableProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"SBRevealContinuousExposeStripOverflowGestureModifierAnimatablePropertyIdentifier"])
  {
    v5 = 3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    v5 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v7 updateModeForAnimatableProperty:v4];
  }

  return v5;
}

- (BOOL)shouldUpdateAnimatableProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"SBRevealContinuousExposeStripOverflowGestureModifierAnimatablePropertyIdentifier"])
  {
    v5 = self->_showingAppSwitcherLayout != self->_translation > self->_stripWidth;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRevealContinuousExposeStripOverflowGestureModifier;
    v5 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)&v7 shouldUpdateAnimatableProperty:v4];
  }

  return v5;
}

- (double)_finalScaleForFullScreenAppLayout
{
  v3 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_initialAppLayout];
  v4 = [v3 configuration];
  [v4 containerBounds];
  v6 = v5;

  [(SBRevealContinuousExposeStripOverflowGestureModifier *)self containerViewBounds];
  v8 = v7;
  if (![(SBRevealContinuousExposeStripOverflowGestureModifier *)self _hideDock])
  {
    [(SBRevealContinuousExposeStripOverflowGestureModifier *)self floatingDockHeight];
    v8 = v8 - v9;
  }

  v10 = [(SBSwitcherModifier *)self windowingConfiguration];
  [v10 stripVerticalEdgeSpacing];
  v12 = v8 + v11 * -2.0;

  return v12 / v6;
}

- (id)_appSwitcherDefaults
{
  appSwitcherDefaults = self->_appSwitcherDefaults;
  if (!appSwitcherDefaults)
  {
    v4 = +[SBDefaults localDefaults];
    v5 = [v4 appSwitcherDefaults];
    v6 = self->_appSwitcherDefaults;
    self->_appSwitcherDefaults = v5;

    appSwitcherDefaults = self->_appSwitcherDefaults;
  }

  return appSwitcherDefaults;
}

- (BOOL)_hideDock
{
  v3 = [(SBAppLayout *)self->_initialAppLayout preferredDisplayOrdinal];
  v4 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)self _appSwitcherDefaults];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 chamoisHideDockExternal];
  }

  else
  {
    v6 = [v4 chamoisHideDock];
  }

  v7 = v6;

  return v7;
}

- (void)initWithGestureID:(uint64_t)a1 initialAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRevealContinuousExposeStripOverflowGestureModifier.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"initialAppLayout"}];
}

@end