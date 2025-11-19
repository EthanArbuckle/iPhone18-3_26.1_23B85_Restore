@interface _UIPhysicalButtonAction
+ (char)_actionFromPhysicalButtonBSAction:(uint64_t)a3 andDriver:;
+ (id)_actionFromDynamicButton:(void *)a3 withConfiguration:(uint64_t)a4 state:(uint64_t)a5 andDriver:;
- (CGPoint)_position;
- (CGPoint)_positionDelta;
- (_UIPhysicalButtonAction)init;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _UIPhysicalButtonAction

+ (char)_actionFromPhysicalButtonBSAction:(uint64_t)a3 andDriver:
{
  v5 = objc_opt_self();
  if (!a2)
  {
    v14 = v5;
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:sel__actionFromPhysicalButtonBSAction_andDriver_ object:v14 file:@"_UIPhysicalButtonInteraction.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"physicalButtonBSAction"}];
  }

  v6 = [_UIPhysicalButtonAction alloc];
  if (v6)
  {
    v16.receiver = v6;
    v16.super_class = _UIPhysicalButtonAction;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    v8 = [a2 button];
    if (v7)
    {
      *(v7 + 1) = v8;
      *(v7 + 2) = [a2 source];
      *(v7 + 3) = [a2 state];
      *(v7 + 4) = [a2 behavior];
      *(v7 + 5) = a3;
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
  v10 = [a2 state];
  if ((v9 & 1) == 0)
  {
    if (v10 >= 4)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    *(v7 + 10) = v11;
    v12 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v7 + 88) = v12;
    *(v7 + 104) = v12;
    *(v7 + 15) = 0x7FF8000000000000;
  }

  return v7;
}

+ (id)_actionFromDynamicButton:(void *)a3 withConfiguration:(uint64_t)a4 state:(uint64_t)a5 andDriver:
{
  v9 = objc_opt_self();
  if (!a2)
  {
    v35 = v9;
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:sel__actionFromDynamicButton_withConfiguration_state_andDriver_ object:v35 file:@"_UIPhysicalButtonInteraction.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"dynamicButton"}];
  }

  v10 = [_UIPhysicalButtonAction alloc];
  if (v10)
  {
    v37.receiver = v10;
    v37.super_class = _UIPhysicalButtonAction;
    v11 = objc_msgSendSuper2(&v37, sel_init);
    v12 = [a2 _physicalButton];
    if (v11)
    {
      *(v11 + 1) = v12;
      *(v11 + 2) = [a2 _physicalButtonSource];
      *(v11 + 3) = a4;
      *(v11 + 4) = [a3 _behavior];
      *(v11 + 5) = a5;
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
  [a3 _behavior];
  [a2 _timestamp];
  v11 = 0;
  v13 = 1;
LABEL_6:
  v15 = [[_UIPhysicalButtonContact alloc] _init];
  v16 = [a2 _isTouching];
  if (v15)
  {
    v15[8] = v16;
    [a2 _touchMajorRadius];
    *(v15 + 2) = v17;
    [a2 _touchMinorRadius];
    *(v15 + 3) = v18;
    [a2 _position];
    *(v15 + 5) = v19;
    *(v15 + 6) = v20;
    [a2 _positionDelta];
    *(v15 + 7) = v21;
    *(v15 + 8) = v22;
    *(v15 + 4) = [a2 _touchPositionHints];
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
    objc_storeStrong(v11 + 7, v15);
  }

LABEL_9:
  v23 = [a2 _stage];
  if (v13)
  {
    [v11 _button];
  }

  else
  {
    *(v11 + 8) = v23;
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

  v25 = [a2 _phase];
  v26 = 1;
  if (v25 <= 2)
  {
    if (!v25)
    {
      v26 = 0;
      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v25 == 2)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIPhysicalButtonStagePhase _UIPhysicalButtonStagePhaseForDynamicButtonPhase(_UIDynamicButtonPhase)"];
      [v33 handleFailureInFunction:v34 file:@"_UIPhysicalButtonInteraction.m" lineNumber:127 description:@"Invalid state: attempting to resolve physical button stage for stationary dynamic button"];

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
    if (v25 == 3)
    {
      v26 = 2;
      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v25 == 4)
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:269 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonAction init]", objc_opt_class()}];

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
  v2 = [(_UIPhysicalButtonAction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___UIPhysicalButtonAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end