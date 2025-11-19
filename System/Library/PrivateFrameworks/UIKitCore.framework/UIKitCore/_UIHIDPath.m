@interface _UIHIDPath
- (CGPoint)position;
- (_UIHIDPath)init;
- (void)updateWithHIDEvent:(__IOHIDEvent *)a3;
@end

@implementation _UIHIDPath

- (_UIHIDPath)init
{
  v3.receiver = self;
  v3.super_class = _UIHIDPath;
  result = [(_UIHIDPath *)&v3 init];
  if (result)
  {
    result->_deliveryPhase = 0;
  }

  return result;
}

- (void)updateWithHIDEvent:(__IOHIDEvent *)a3
{
  Type = IOHIDEventGetType();
  if (Type == 7)
  {
    v26 = [(_UIHIDPath *)self overridePathId];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &unk_1EFE32E00;
    }

    objc_storeStrong(&self->_pathId, v28);

    v29 = _UIEventHIDGetChildPointerEvent(a3);
    if (dyld_program_sdk_at_least())
    {
      if (!v29)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:a2 object:self file:@"_UIHIDPath.m" lineNumber:128 description:@"scale event missing child pointer event"];
      }
    }

    else if (!v29)
    {
      v35 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1260) + 8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "scale event missing child pointer event", v36, 2u);
      }
    }

    IOHIDEventGetFloatValue();
    v32 = v31;
    IOHIDEventGetFloatValue();
    self->_position.x = v32;
    self->_position.y = v33;
    *&self->_majorRadius = xmmword_18A6814E0;
    *&self->_density = xmmword_18A6814F0;
    self->_twist = 90.0;
    self->_generationCount = 0;
    *&self->_force = xmmword_18A681500;
    self->_identity = 0;
    _ZF = (IOHIDEventGetPhase() & 0xC) == 0;
LABEL_22:
    v34 = !_ZF;
    self->_touching = v34;
    return;
  }

  if (Type != 17)
  {
    if (Type != 11)
    {
      return;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDEventGetIntegerValue()];
    pathId = self->_pathId;
    self->_pathId = v7;

    IOHIDEventGetFloatValue();
    v10 = v9;
    IOHIDEventGetFloatValue();
    self->_position.x = v10;
    self->_position.y = v11;
    IOHIDEventGetFloatValue();
    self->_majorRadius = v12;
    self->_generationCount = IOHIDEventGetIntegerValue();
    IOHIDEventGetFloatValue();
    self->_force = v13;
    self->_identity = IOHIDEventGetIntegerValue();
    _ZF = IOHIDEventGetIntegerValue() == 0;
    goto LABEL_22;
  }

  v15 = [(_UIHIDPath *)self overridePathId];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &unk_1EFE32E00;
  }

  objc_storeStrong(&self->_pathId, v17);

  IOHIDEventGetFloatValue();
  v19 = v18;
  IOHIDEventGetFloatValue();
  self->_position.x = v19;
  self->_position.y = v20;
  __asm { FMOV            V1.2D, #1.5 }

  *&self->_minorRadius = xmmword_18A681510;
  *&self->_quality = _Q1;
  *&self->_irregularity = xmmword_18A681520;
  self->_generationCount = 0;
  self->_identity = 0;
  self->_touching = IOHIDEventGetIntegerValue() != 0;
  self->_force = 0.0;
  if (qword_1ED4A05B8 != -1)
  {
    dispatch_once(&qword_1ED4A05B8, &__block_literal_global_491);
  }

  if (_UIHIDPathShouldPopulatePointerForce_shouldPopulate == 1)
  {
    BKSHIDEventGetDigitizerAttributes();

    if (_os_feature_enabled_impl())
    {
      if (!_UIEventHIDGetChildForceStageEvent(a3))
      {
        return;
      }

      IOHIDEventGetDoubleValue();
    }

    else
    {
      if (!_UIEventHIDGetChildVendorDefinedForceStageEvent(a3))
      {
        return;
      }

      v25 = *(IOHIDEventGetDataValue() + 32);
    }

    self->_force = v25 * 1000.0;
  }
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end