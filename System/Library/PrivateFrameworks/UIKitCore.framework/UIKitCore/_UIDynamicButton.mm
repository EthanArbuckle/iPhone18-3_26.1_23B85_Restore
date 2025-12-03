@interface _UIDynamicButton
+ (void)_dynamicButtonFromHIDEvent:(uint64_t)event;
- (CGPoint)_position;
- (CGPoint)_positionDelta;
- (NSString)debugDescription;
- (NSString)description;
- (_UIDynamicButton)init;
- (_UIEventComponentPhaseValue)_eventComponentPhase;
- (id)_eventComponentPhaseForValue:(int64_t)value;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_appendProemDescriptionSansSelfToFormatter:(uint64_t)result;
- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)formatter;
- (void)_updateWithHIDEvent:(uint64_t)event;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _UIDynamicButton

- (_UIDynamicButton)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDynamicButton.m" lineNumber:228 description:{@"%s: init is not allowed on %@", "-[_UIDynamicButton init]", objc_opt_class()}];

  return 0;
}

+ (void)_dynamicButtonFromHIDEvent:(uint64_t)event
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

- (void)_updateWithHIDEvent:(uint64_t)event
{
  if (event)
  {
    if (_UIEventHIDIsDynamicButtonEvent(a2))
    {
      currentHandler = BKSHIDEventGetBaseAttributes();
      v4 = _UIEventHIDUIWindowForHIDEvent();
      v5 = *(event + 16);
      *(event + 16) = v4;

      *(event + 10) = IOHIDEventGetIntegerValue();
      *(event + 12) = IOHIDEventGetIntegerValue();
      *(event + 8) = IOHIDEventGetIntegerValue() > 0;
      IOHIDEventGetDoubleValue();
      v7 = v6;
      IOHIDEventGetDoubleValue();
      v9 = v8;
      *(event + 40) = _UITouchSensitiveButtonRadiusInPointsFromMM(*(event + 16), v7);
      *(event + 48) = _UITouchSensitiveButtonRadiusInPointsFromMM(*(event + 16), v9);
      IOHIDEventGetDoubleValue();
      v11 = v10;
      IOHIDEventGetDoubleValue();
      v13 = v12;
      IOHIDEventGetDoubleValue();
      v15 = v14;
      IOHIDEventGetDoubleValue();
      *(event + 144) = v11;
      *(event + 152) = v13;
      *(event + 160) = v15;
      *(event + 168) = v16;
      *(event + 56) = IOHIDEventGetIntegerValue() & 0x1FF;
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

      *(event + 64) = IntegerValue & ~(IntegerValue >> 63);
      *(event + 72) = v21;
      IOHIDEventGetDoubleValue();
      *(event + 88) = v22;
      IOHIDEventGetDoubleValue();
      *(event + 96) = v23;
      IOHIDEventGetDoubleValue();
      *(event + 104) = v24;
      IOHIDEventGetDoubleValue();
      *(event + 112) = v25;
      IOHIDEventGetDoubleValue();
      *(event + 120) = v26;
      TimeStamp = IOHIDEventGetTimeStamp();
      *(event + 128) = _UIMediaTimeForMachTime(TimeStamp);
      v28 = [currentHandler copy];
      v29 = *(event + 136);
      *(event + 136) = v28;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__updateWithHIDEvent_ object:event file:@"_UIDynamicButton.m" lineNumber:249 description:{@"Invalid hidEvent type for %@: %@", objc_opt_class(), a2}];
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

- (id)_eventComponentPhaseForValue:(int64_t)value
{
  v4 = _eventComponentPhaseMapping();
  v5 = _eventComponentPhaseForValue(value, v4);

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

- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)formatter
{
  if (formatter)
  {
    v4 = [a2 appendBool:*(formatter + 8) withName:@"isTouching"];
    v5 = [a2 appendFloat:@"touchMajorRadius" withName:1 decimalPrecision:*(formatter + 40)];
    v6 = [a2 appendFloat:@"touchMinorRadius" withName:1 decimalPrecision:*(formatter + 48)];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59___UIDynamicButton__appendDebugBodyDescriptionToFormatter___block_invoke;
    v22[3] = &unk_1E70FA340;
    v22[4] = formatter;
    [a2 appendCustomFormatWithName:@"position" block:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59___UIDynamicButton__appendDebugBodyDescriptionToFormatter___block_invoke_2;
    v21[3] = &unk_1E70FA340;
    v21[4] = formatter;
    [a2 appendCustomFormatWithName:@"positionDelta" block:v21];
    v7 = _NSStringFromUITouchSenstiveButtonPositionHint(*(formatter + 56));
    v8 = [a2 appendObject:v7 withName:@"touchPositionHints"];

    v9 = [a2 appendFloat:@"normalizedForce" withName:3 decimalPrecision:*(formatter + 88)];
    v10 = [a2 appendFloat:@"normalizedForceVelocity" withName:3 decimalPrecision:*(formatter + 96)];
    v11 = [a2 appendFloat:@"releaseStageForceThreshold" withName:3 decimalPrecision:*(formatter + 104)];
    v12 = [a2 appendFloat:@"pressedStageForceThreshold" withName:3 decimalPrecision:*(formatter + 112)];
    v13 = [a2 appendFloat:@"nextStageForceThreshold" withName:3 decimalPrecision:*(formatter + 120)];
    v14 = *(formatter + 16);
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

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___UIDynamicButton_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = self;
  v3[5] = formatter;
  [formatter appendProem:self block:v3];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIDynamicButton *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIDynamicButton *)self _appendProemDescriptionSansSelfToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIDynamicButton *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIDynamicButton *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
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
  selfCopy = self;
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