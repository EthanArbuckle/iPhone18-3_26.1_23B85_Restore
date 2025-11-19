@interface _UIDynamicButton
+ (void)_dynamicButtonFromHIDEvent:(uint64_t)a1;
- (CGPoint)_position;
- (CGPoint)_positionDelta;
- (NSString)debugDescription;
- (NSString)description;
- (_UIDynamicButton)init;
- (_UIEventComponentPhaseValue)_eventComponentPhase;
- (id)_eventComponentPhaseForValue:(int64_t)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_appendProemDescriptionSansSelfToFormatter:(uint64_t)result;
- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)a1;
- (void)_updateWithHIDEvent:(uint64_t)a1;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation _UIDynamicButton

- (_UIDynamicButton)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDynamicButton.m" lineNumber:228 description:{@"%s: init is not allowed on %@", "-[_UIDynamicButton init]", objc_opt_class()}];

  return 0;
}

+ (void)_dynamicButtonFromHIDEvent:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_UIDynamicButton alloc];
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _UIDynamicButton;
    v4 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    v4 = 0;
  }

  v5 = _UIEventHIDIsDynamicButtonEvent(a2);
  v6 = 5;
  if (!v5)
  {
    v6 = 0;
  }

  v4[3] = v6;
  v4[4] = _UIEventHIDGetChildAccessibilityVendorDefinedEvent(a2) != 0;
  [(_UIDynamicButton *)v4 _updateWithHIDEvent:a2];

  return v4;
}

- (void)_updateWithHIDEvent:(uint64_t)a1
{
  if (a1)
  {
    if (_UIEventHIDIsDynamicButtonEvent(a2))
    {
      v30 = BKSHIDEventGetBaseAttributes();
      v4 = _UIEventHIDUIWindowForHIDEvent();
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;

      *(a1 + 10) = IOHIDEventGetIntegerValue();
      *(a1 + 12) = IOHIDEventGetIntegerValue();
      *(a1 + 8) = IOHIDEventGetIntegerValue() > 0;
      IOHIDEventGetDoubleValue();
      v7 = v6;
      IOHIDEventGetDoubleValue();
      v9 = v8;
      *(a1 + 40) = _UITouchSensitiveButtonRadiusInPointsFromMM(*(a1 + 16), v7);
      *(a1 + 48) = _UITouchSensitiveButtonRadiusInPointsFromMM(*(a1 + 16), v9);
      IOHIDEventGetDoubleValue();
      v11 = v10;
      IOHIDEventGetDoubleValue();
      v13 = v12;
      IOHIDEventGetDoubleValue();
      v15 = v14;
      IOHIDEventGetDoubleValue();
      *(a1 + 144) = v11;
      *(a1 + 152) = v13;
      *(a1 + 160) = v15;
      *(a1 + 168) = v16;
      *(a1 + 56) = IOHIDEventGetIntegerValue() & 0x1FF;
      _UIEventHIDGetChildForceStageEvent(a2);
      IntegerValue = IOHIDEventGetIntegerValue();
      v18 = IOHIDEventGetIntegerValue();
      v19 = v18 == 1;
      v20 = v18 == 2;
      v21 = 2;
      if (!v20)
      {
        v21 = v19;
      }

      *(a1 + 64) = IntegerValue & ~(IntegerValue >> 63);
      *(a1 + 72) = v21;
      IOHIDEventGetDoubleValue();
      *(a1 + 88) = v22;
      IOHIDEventGetDoubleValue();
      *(a1 + 96) = v23;
      IOHIDEventGetDoubleValue();
      *(a1 + 104) = v24;
      IOHIDEventGetDoubleValue();
      *(a1 + 112) = v25;
      IOHIDEventGetDoubleValue();
      *(a1 + 120) = v26;
      TimeStamp = IOHIDEventGetTimeStamp();
      *(a1 + 128) = _UIMediaTimeForMachTime(TimeStamp);
      v28 = [v30 copy];
      v29 = *(a1 + 136);
      *(a1 + 136) = v28;
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:sel__updateWithHIDEvent_ object:a1 file:@"_UIDynamicButton.m" lineNumber:249 description:{@"Invalid hidEvent type for %@: %@", objc_opt_class(), a2}];
    }
  }
}

- (_UIEventComponentPhaseValue)_eventComponentPhase
{
  phase = self->_phase;
  v3 = _eventComponentPhaseMapping();
  v4 = _eventComponentPhaseForUnderlyingValue(phase, v3);

  return v4;
}

- (id)_eventComponentPhaseForValue:(int64_t)a3
{
  v4 = _eventComponentPhaseMapping();
  v5 = _eventComponentPhaseForValue(a3, v4);

  return v5;
}

- (uint64_t)_appendProemDescriptionSansSelfToFormatter:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = _NSStringFromUIPhysicalButton(*(result + 24));
    [a2 appendString:v4 withName:@"button"];

    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = _NSStringFromUIPhysicalButtonSource(v5);
      [a2 appendString:v6 withName:@"source"];
    }

    v7 = [a2 appendUnsignedInteger:*(v3 + 64) withName:@"stage"];
    v8 = *(v3 + 80);
    if (v8 > 4)
    {
      v9 = &stru_1EFB14550;
    }

    else
    {
      v9 = off_1E70FA360[v8];
    }

    [a2 appendString:v9 withName:@"phase"];
    v10 = [a2 appendBool:*(v3 + 8) withName:@"isTouching"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63___UIDynamicButton__appendProemDescriptionSansSelfToFormatter___block_invoke;
    v12[3] = &unk_1E70FA340;
    v12[4] = v3;
    [a2 appendCustomFormatWithName:@"position" block:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63___UIDynamicButton__appendProemDescriptionSansSelfToFormatter___block_invoke_2;
    v11[3] = &unk_1E70FA340;
    v11[4] = v3;
    return [a2 appendCustomFormatWithName:@"positionDelta" block:v11];
  }

  return result;
}

- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)a1
{
  if (a1)
  {
    v4 = [a2 appendBool:*(a1 + 8) withName:@"isTouching"];
    v5 = [a2 appendFloat:@"touchMajorRadius" withName:1 decimalPrecision:*(a1 + 40)];
    v6 = [a2 appendFloat:@"touchMinorRadius" withName:1 decimalPrecision:*(a1 + 48)];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59___UIDynamicButton__appendDebugBodyDescriptionToFormatter___block_invoke;
    v22[3] = &unk_1E70FA340;
    v22[4] = a1;
    [a2 appendCustomFormatWithName:@"position" block:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59___UIDynamicButton__appendDebugBodyDescriptionToFormatter___block_invoke_2;
    v21[3] = &unk_1E70FA340;
    v21[4] = a1;
    [a2 appendCustomFormatWithName:@"positionDelta" block:v21];
    v7 = _NSStringFromUITouchSenstiveButtonPositionHint(*(a1 + 56));
    v8 = [a2 appendObject:v7 withName:@"touchPositionHints"];

    v9 = [a2 appendFloat:@"normalizedForce" withName:3 decimalPrecision:*(a1 + 88)];
    v10 = [a2 appendFloat:@"normalizedForceVelocity" withName:3 decimalPrecision:*(a1 + 96)];
    v11 = [a2 appendFloat:@"releaseStageForceThreshold" withName:3 decimalPrecision:*(a1 + 104)];
    v12 = [a2 appendFloat:@"pressedStageForceThreshold" withName:3 decimalPrecision:*(a1 + 112)];
    v13 = [a2 appendFloat:@"nextStageForceThreshold" withName:3 decimalPrecision:*(a1 + 120)];
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = v14;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];
    }

    else
    {
      v19 = @"(nil)";
    }

    v20 = [a2 appendObject:v19 withName:@"window"];
  }
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___UIDynamicButton_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = self;
  v3[5] = a3;
  [a3 appendProem:self block:v3];
}

- (id)succinctDescription
{
  v2 = [(_UIDynamicButton *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIDynamicButton *)self _appendProemDescriptionSansSelfToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIDynamicButton *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIDynamicButton *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v6 = _NSStringFromUIPhysicalButton(self->_physicalButton);
  [v5 appendString:v6 withName:@"button"];

  physicalButtonSource = self->_physicalButtonSource;
  if (physicalButtonSource)
  {
    v8 = _NSStringFromUIPhysicalButtonSource(physicalButtonSource);
    [v5 appendString:v8 withName:@"source"];
  }

  v9 = [v5 appendUnsignedInteger:self->_stage withName:@"stage"];
  phase = self->_phase;
  if (phase > 4)
  {
    v11 = &stru_1EFB14550;
  }

  else
  {
    v11 = off_1E70FA360[phase];
  }

  [v5 appendString:v11 withName:@"phase"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58___UIDynamicButton_descriptionBuilderWithMultilinePrefix___block_invoke;
  v16[3] = &unk_1E70F35B8;
  v12 = v5;
  v17 = v12;
  v18 = self;
  v13 = [v12 modifyBody:v16];
  v14 = v12;

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [(_UIDynamicButton *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (NSString)debugDescription
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UIDynamicButton__appendDebugDescriptionToStream___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v8[5] = v3;
    [v3 appendProem:self block:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52___UIDynamicButton__appendDebugDescriptionToStream___block_invoke_2;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v7[5] = v4;
    [v4 appendBodySectionWithName:0 block:v7];
  }

  v5 = [v4 description];

  return v5;
}

- (CGPoint)_position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_positionDelta
{
  x = self->_positionDelta.x;
  y = self->_positionDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

@end