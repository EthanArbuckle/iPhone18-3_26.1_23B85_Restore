@interface SBCoverSheetToAppSwitcherModifier
- (SBCoverSheetToAppSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 progress:(double)a5 velocity:(double)a6 supportsBlur:(BOOL)a7;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_blurAnimationSettings;
- (id)_blurParameters;
- (id)_opacityAnimationSettings;
- (id)_scaleAnimationSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBCoverSheetToAppSwitcherModifier

- (SBCoverSheetToAppSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 progress:(double)a5 velocity:(double)a6 supportsBlur:(BOOL)a7
{
  v14 = a4;
  v17.receiver = self;
  v17.super_class = SBCoverSheetToAppSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:a3];
  if (v15)
  {
    if (!v14)
    {
      [SBCoverSheetToAppSwitcherModifier initWithTransitionID:a2 appLayout:v15 progress:? velocity:? supportsBlur:?];
    }

    objc_storeStrong(&v15->_appLayout, a4);
    v15->_progress = a5;
    v15->_velocity = a6;
    v15->_supportsBlur = a7;
  }

  return v15;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBCoverSheetToAppSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (BSEqualObjects() && ((v7 = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation], v8 = [(SBTransitionSwitcherModifier *)self transitionPhase], v8 == 1) && !v7 || v8 == 2 && v7))
  {
    v9 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 coverSheetFlyInScale];
    v12 = v11;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBCoverSheetToAppSwitcherModifier;
    [(SBCoverSheetToAppSwitcherModifier *)&v15 scaleForIndex:a3];
    v12 = v13;
  }

  return v12;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (!BSEqualObjects() || (v9 = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation], v10 = [(SBTransitionSwitcherModifier *)self transitionPhase], v11 = 0.0, v10 != 1 || v9) && (v10 != 2 || !v9))
  {
    v14.receiver = self;
    v14.super_class = SBCoverSheetToAppSwitcherModifier;
    [(SBCoverSheetToAppSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBCoverSheetToAppSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, v4);

  if (BSEqualObjects())
  {
    v8 = [v5 mutableCopy];
    v9 = [(SBCoverSheetToAppSwitcherModifier *)self _scaleAnimationSettings];
    [v8 setScaleSettings:v9];

    [v8 setScaleUpdateMode:3];
    v10 = [(SBCoverSheetToAppSwitcherModifier *)self _opacityAnimationSettings];
    [v8 setOpacitySettings:v10];

    [v8 setOpacityUpdateMode:3];
    v5 = v8;
  }

  return v5;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBCoverSheetToAppSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  if (![(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    if (self->_supportsBlur)
    {
      v6 = [SBBlurItemContainerSwitcherEventResponse alloc];
      appLayout = self->_appLayout;
      v8 = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
      v9 = [(SBBlurItemContainerSwitcherEventResponse *)v6 initWithAppLayout:appLayout shouldBlur:1 blurParameters:v8 animationUpdateMode:2];

      v10 = SBAppendSwitcherModifierResponse(v9, v5);

      v5 = v10;
    }

    v3 = v5;
  }

  return v3;
}

- (id)transitionWillUpdate
{
  v18.receiver = self;
  v18.super_class = SBCoverSheetToAppSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v18 transitionWillUpdate];
  if (self->_supportsBlur)
  {
    v4 = [SBBlurItemContainerSwitcherEventResponse alloc];
    appLayout = self->_appLayout;
    v6 = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation];
    v7 = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
    v8 = [(SBBlurItemContainerSwitcherEventResponse *)v4 initWithAppLayout:appLayout shouldBlur:v6 blurParameters:v7 animationUpdateMode:3];

    v9 = SBAppendSwitcherModifierResponse(v8, v3);

    v3 = v9;
  }

  v10 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  v11 = [v10 animationSettings];

  [v11 coverSheetFlyInMaximumVelocity];
  [v11 coverSheetFlyInVelocityScaleFactor];
  SBVelocityMatrixForUniform2DScaling();
  v12 = [SBInjectVelocitySwitcherEventResponse alloc];
  memset(v17, 0, sizeof(v17));
  v13 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v17];
  v14 = [(SBInjectVelocitySwitcherEventResponse *)v12 initWithVelocity:v13 forKey:@"transform" appLayout:self->_appLayout];

  v15 = SBAppendSwitcherModifierResponse(v14, v3);

  return v15;
}

- (id)transitionDidEnd
{
  v10.receiver = self;
  v10.super_class = SBCoverSheetToAppSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v10 transitionDidEnd];
  if ([(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation])
  {
    v4 = [SBBlurItemContainerSwitcherEventResponse alloc];
    appLayout = self->_appLayout;
    v6 = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
    v7 = [(SBBlurItemContainerSwitcherEventResponse *)v4 initWithAppLayout:appLayout shouldBlur:0 blurParameters:v6 animationUpdateMode:2];

    v8 = SBAppendSwitcherModifierResponse(v7, v3);

    v3 = v8;
  }

  return v3;
}

- (id)_blurParameters
{
  v3 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  v4 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  v5 = [v4 animationSettings];
  [v5 coverSheetFlyInBlurRadius];
  [v3 setBlurRadius:?];

  v6 = [(SBCoverSheetToAppSwitcherModifier *)self _blurAnimationSettings];
  [v3 setBlurAnimationSettings:v6];

  return v3;
}

- (id)_scaleAnimationSettings
{
  v2 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 coverSheetFlyInScaleSettings];

  return v4;
}

- (id)_blurAnimationSettings
{
  v2 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 coverSheetFlyInBlurSettings];

  return v4;
}

- (id)_opacityAnimationSettings
{
  v2 = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 coverSheetFlyInOpacitySettings];

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 progress:velocity:supportsBlur:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetToAppSwitcherModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end