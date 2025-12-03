@interface _UIPhysicalButtonAction
+ (char)_actionFromPhysicalButtonBSAction:(uint64_t)action andDriver:;
+ (id)_actionFromDynamicButton:(void *)button withConfiguration:(uint64_t)configuration state:(uint64_t)state andDriver:;
- (CGPoint)_position;
- (CGPoint)_positionDelta;
- (_UIPhysicalButtonAction)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _UIPhysicalButtonAction

+ (char)_actionFromPhysicalButtonBSAction:(uint64_t)action andDriver:
{
  v5 = objc_opt_self();
  if (!a2)
  {
    v14 = v5;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__actionFromPhysicalButtonBSAction_andDriver_ object:v14 file:@"_UIPhysicalButtonInteraction.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"physicalButtonBSAction"}];
  }

  v6 = [_UIPhysicalButtonAction alloc];
  if (v6)
  {
    v16.receiver = v6;
    v16.super_class = _UIPhysicalButtonAction;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    button = [a2 button];
    if (v7)
    {
      *(v7 + 1) = button;
      *(v7 + 2) = [a2 source];
      *(v7 + 3) = [a2 state];
      *(v7 + 4) = [a2 behavior];
      *(v7 + 5) = action;
      *(v7 + 6) = CACurrentMediaTime();
      objc_storeStrong(v7 + 7, 0);
      v9 = 0;
      *(v7 + 4) = vdupq_n_s64(1uLL);
      goto LABEL_6;
    }
  }

  else
  {
    [a2 button];
  }

  [a2 source];
  [a2 state];
  [a2 behavior];
  CACurrentMediaTime();
  v7 = 0;
  v9 = 1;
LABEL_6:
  state = [a2 state];
  if ((v9 & 1) == 0)
  {
    if (state >= 4)
    {
      v11 = 1;
    }

    else
    {
      v11 = state;
    }

    *(v7 + 10) = v11;
    v12 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v7 + 88) = v12;
    *(v7 + 104) = v12;
    *(v7 + 15) = 0x7FF8000000000000;
  }

  return v7;
}

+ (id)_actionFromDynamicButton:(void *)button withConfiguration:(uint64_t)configuration state:(uint64_t)state andDriver:
{
  v9 = objc_opt_self();
  if (!a2)
  {
    v35 = v9;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__actionFromDynamicButton_withConfiguration_state_andDriver_ object:v35 file:@"_UIPhysicalButtonInteraction.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"dynamicButton"}];
  }

  v10 = [_UIPhysicalButtonAction alloc];
  if (v10)
  {
    v37.receiver = v10;
    v37.super_class = _UIPhysicalButtonAction;
    v11 = objc_msgSendSuper2(&v37, sel_init);
    _physicalButton = [a2 _physicalButton];
    if (v11)
    {
      *(v11 + 1) = _physicalButton;
      *(v11 + 2) = [a2 _physicalButtonSource];
      *(v11 + 3) = configuration;
      *(v11 + 4) = [button _behavior];
      *(v11 + 5) = state;
      [a2 _timestamp];
      v13 = 0;
      *(v11 + 6) = v14;
      goto LABEL_6;
    }
  }

  else
  {
    [a2 _physicalButton];
  }

  [a2 _physicalButtonSource];
  [button _behavior];
  [a2 _timestamp];
  v11 = 0;
  v13 = 1;
LABEL_6:
  _init = [[_UIPhysicalButtonContact alloc] _init];
  _isTouching = [a2 _isTouching];
  if (_init)
  {
    _init[8] = _isTouching;
    [a2 _touchMajorRadius];
    *(_init + 2) = v17;
    [a2 _touchMinorRadius];
    *(_init + 3) = v18;
    [a2 _position];
    *(_init + 5) = v19;
    *(_init + 6) = v20;
    [a2 _positionDelta];
    *(_init + 7) = v21;
    *(_init + 8) = v22;
    *(_init + 4) = [a2 _touchPositionHints];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [a2 _touchMajorRadius];
  [a2 _touchMinorRadius];
  [a2 _position];
  [a2 _positionDelta];
  [a2 _touchPositionHints];
  if (v11)
  {
LABEL_8:
    objc_storeStrong(v11 + 7, _init);
  }

LABEL_9:
  _stage = [a2 _stage];
  if (v13)
  {
    [v11 _button];
  }

  else
  {
    *(v11 + 8) = _stage;
    if ([v11 _button] == 5)
    {
      v24 = 5;
    }

    else
    {
      v24 = 1;
    }

    *(v11 + 9) = v24;
  }

  _phase = [a2 _phase];
  v26 = 1;
  if (_phase <= 2)
  {
    if (!_phase)
    {
      v26 = 0;
      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (_phase == 2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIPhysicalButtonStagePhase _UIPhysicalButtonStagePhaseForDynamicButtonPhase(_UIDynamicButtonPhase)"];
      [currentHandler2 handleFailureInFunction:v34 file:@"_UIPhysicalButtonInteraction.m" lineNumber:127 description:@"Invalid state: attempting to resolve physical button stage for stationary dynamic button"];

      v26 = 1;
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (_phase == 3)
    {
      v26 = 2;
      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (_phase == 4)
    {
      v26 = 3;
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_26:
      *(v11 + 10) = v26;
      [a2 _normalizedForce];
      *(v11 + 11) = v27;
      [a2 _normalizedForceVelocity];
      *(v11 + 12) = v28;
      [a2 _releaseStageNormalizedForceThreshold];
      *(v11 + 13) = v29;
      [a2 _pressedStageNormalizedForceThreshold];
      *(v11 + 14) = v30;
      [a2 _nextStageNormalizedForceThreshold];
      *(v11 + 15) = v31;
      goto LABEL_27;
    }
  }

  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_31:
  [a2 _normalizedForce];
  [a2 _normalizedForceVelocity];
  [a2 _releaseStageNormalizedForceThreshold];
  [a2 _pressedStageNormalizedForceThreshold];
  [a2 _nextStageNormalizedForceThreshold];
LABEL_27:

  return v11;
}

- (_UIPhysicalButtonAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:269 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonAction init]", objc_opt_class()}];

  return 0;
}

- (CGPoint)_position
{
  [(_UIPhysicalButtonContact *)self->_contact position];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_positionDelta
{
  [(_UIPhysicalButtonContact *)self->_contact positionDelta];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _NSStringFromUIPhysicalButton(self->_button);
  [v3 appendString:v4 withName:@"button"];
  source = self->_source;
  if (source)
  {
    v6 = _NSStringFromUIPhysicalButtonSource(source);
    [v3 appendString:v6 withName:@"source"];
  }

  v7 = _NSStringFromUIPhysicalButtonBehavior(self->_behavior);
  [v3 appendString:v7 withName:@"behavior"];
  v8 = [v3 appendUnsignedInteger:self->_stage withName:@"stage"];
  v9 = [v3 appendUnsignedInteger:self->_numberOfStages withName:@"numberOfStages"];
  stagePhase = self->_stagePhase;
  if (stagePhase > 3)
  {
    v11 = &stru_1EFB14550;
  }

  else
  {
    v11 = off_1E71230F8[stagePhase];
  }

  [v3 appendString:v11 withName:@"stagePhase"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___UIPhysicalButtonAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end