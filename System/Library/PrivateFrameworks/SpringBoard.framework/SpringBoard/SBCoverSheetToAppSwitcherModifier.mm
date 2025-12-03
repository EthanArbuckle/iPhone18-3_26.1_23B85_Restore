@interface SBCoverSheetToAppSwitcherModifier
- (SBCoverSheetToAppSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout progress:(double)progress velocity:(double)velocity supportsBlur:(BOOL)blur;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)_blurAnimationSettings;
- (id)_blurParameters;
- (id)_opacityAnimationSettings;
- (id)_scaleAnimationSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBCoverSheetToAppSwitcherModifier

- (SBCoverSheetToAppSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout progress:(double)progress velocity:(double)velocity supportsBlur:(BOOL)blur
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBCoverSheetToAppSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:d];
  if (v15)
  {
    if (!layoutCopy)
    {
      [SBCoverSheetToAppSwitcherModifier initWithTransitionID:a2 appLayout:v15 progress:? velocity:? supportsBlur:?];
    }

    objc_storeStrong(&v15->_appLayout, layout);
    v15->_progress = progress;
    v15->_velocity = velocity;
    v15->_supportsBlur = blur;
  }

  return v15;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBCoverSheetToAppSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (BSEqualObjects() && ((v7 = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation], v8 = [(SBTransitionSwitcherModifier *)self transitionPhase], v8 == 1) && !v7 || v8 == 2 && v7))
  {
    switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings coverSheetFlyInScale];
    v12 = v11;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBCoverSheetToAppSwitcherModifier;
    [(SBCoverSheetToAppSwitcherModifier *)&v15 scaleForIndex:index];
    v12 = v13;
  }

  return v12;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (!BSEqualObjects() || (v9 = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation], v10 = [(SBTransitionSwitcherModifier *)self transitionPhase], v11 = 0.0, v10 != 1 || v9) && (v10 != 2 || !v9))
  {
    v14.receiver = self;
    v14.super_class = SBCoverSheetToAppSwitcherModifier;
    [(SBCoverSheetToAppSwitcherModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v11 = v12;
  }

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v12.receiver = self;
  v12.super_class = SBCoverSheetToAppSwitcherModifier;
  elementCopy = element;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, elementCopy);

  if (BSEqualObjects())
  {
    v8 = [v5 mutableCopy];
    _scaleAnimationSettings = [(SBCoverSheetToAppSwitcherModifier *)self _scaleAnimationSettings];
    [v8 setScaleSettings:_scaleAnimationSettings];

    [v8 setScaleUpdateMode:3];
    _opacityAnimationSettings = [(SBCoverSheetToAppSwitcherModifier *)self _opacityAnimationSettings];
    [v8 setOpacitySettings:_opacityAnimationSettings];

    [v8 setOpacityUpdateMode:3];
    v5 = v8;
  }

  return v5;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBCoverSheetToAppSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  if (![(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
    v5 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

    if (self->_supportsBlur)
    {
      v6 = [SBBlurItemContainerSwitcherEventResponse alloc];
      appLayout = self->_appLayout;
      _blurParameters = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
      v9 = [(SBBlurItemContainerSwitcherEventResponse *)v6 initWithAppLayout:appLayout shouldBlur:1 blurParameters:_blurParameters animationUpdateMode:2];

      v10 = SBAppendSwitcherModifierResponse(v9, v5);

      v5 = v10;
    }

    transitionWillBegin = v5;
  }

  return transitionWillBegin;
}

- (id)transitionWillUpdate
{
  v18.receiver = self;
  v18.super_class = SBCoverSheetToAppSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v18 transitionWillUpdate];
  if (self->_supportsBlur)
  {
    v4 = [SBBlurItemContainerSwitcherEventResponse alloc];
    appLayout = self->_appLayout;
    _isFlyOutAnimation = [(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation];
    _blurParameters = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
    v8 = [(SBBlurItemContainerSwitcherEventResponse *)v4 initWithAppLayout:appLayout shouldBlur:_isFlyOutAnimation blurParameters:_blurParameters animationUpdateMode:3];

    v9 = SBAppendSwitcherModifierResponse(v8, transitionWillUpdate);

    transitionWillUpdate = v9;
  }

  switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [animationSettings coverSheetFlyInMaximumVelocity];
  [animationSettings coverSheetFlyInVelocityScaleFactor];
  SBVelocityMatrixForUniform2DScaling();
  v12 = [SBInjectVelocitySwitcherEventResponse alloc];
  memset(v17, 0, sizeof(v17));
  v13 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v17];
  v14 = [(SBInjectVelocitySwitcherEventResponse *)v12 initWithVelocity:v13 forKey:@"transform" appLayout:self->_appLayout];

  v15 = SBAppendSwitcherModifierResponse(v14, transitionWillUpdate);

  return v15;
}

- (id)transitionDidEnd
{
  v10.receiver = self;
  v10.super_class = SBCoverSheetToAppSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v10 transitionDidEnd];
  if ([(SBCoverSheetToAppSwitcherModifier *)self _isFlyOutAnimation])
  {
    v4 = [SBBlurItemContainerSwitcherEventResponse alloc];
    appLayout = self->_appLayout;
    _blurParameters = [(SBCoverSheetToAppSwitcherModifier *)self _blurParameters];
    v7 = [(SBBlurItemContainerSwitcherEventResponse *)v4 initWithAppLayout:appLayout shouldBlur:0 blurParameters:_blurParameters animationUpdateMode:2];

    v8 = SBAppendSwitcherModifierResponse(v7, transitionDidEnd);

    transitionDidEnd = v8;
  }

  return transitionDidEnd;
}

- (id)_blurParameters
{
  v3 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings coverSheetFlyInBlurRadius];
  [v3 setBlurRadius:?];

  _blurAnimationSettings = [(SBCoverSheetToAppSwitcherModifier *)self _blurAnimationSettings];
  [v3 setBlurAnimationSettings:_blurAnimationSettings];

  return v3;
}

- (id)_scaleAnimationSettings
{
  switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  coverSheetFlyInScaleSettings = [animationSettings coverSheetFlyInScaleSettings];

  return coverSheetFlyInScaleSettings;
}

- (id)_blurAnimationSettings
{
  switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  coverSheetFlyInBlurSettings = [animationSettings coverSheetFlyInBlurSettings];

  return coverSheetFlyInBlurSettings;
}

- (id)_opacityAnimationSettings
{
  switcherSettings = [(SBCoverSheetToAppSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  coverSheetFlyInOpacitySettings = [animationSettings coverSheetFlyInOpacitySettings];

  return coverSheetFlyInOpacitySettings;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 progress:velocity:supportsBlur:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCoverSheetToAppSwitcherModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end