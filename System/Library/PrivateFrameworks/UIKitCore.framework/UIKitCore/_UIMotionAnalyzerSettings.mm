@interface _UIMotionAnalyzerSettings
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)setDefaultValues;
@end

@implementation _UIMotionAnalyzerSettings

- (unint64_t)hash
{
  v2 = vcvtmd_u64_f64(self->_inputSmoothingFactor * 100.0);
  if (self->_referenceShiftEnabled)
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  v4 = vcvtmd_u64_f64(self->_referenceShiftSpeed * 100.0) - (v3 - v2 + 32 * v2) + 32 * (v3 - v2 + 32 * v2);
  v5 = vcvtmd_u64_f64(self->_referenceShiftDistanceDependence * 100.0) - v4 + 32 * v4;
  v6 = vcvtmd_u64_f64(self->_idleLeeway * 100.0) - v5 + 32 * v5;
  v7 = vcvtmd_u64_f64(self->_delayBeforeIdle * 100.0) - v6 + 32 * v6;
  if (self->_showIdleIndicator)
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  v9 = v8 - v7 + 32 * v7;
  if (self->_jumpEnabled)
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = vcvtmd_u64_f64(self->_jumpThreshold * 100.0) - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  if (self->_playJumpSound)
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  v13 = v12 - v11 + 32 * v11;
  if (self->_directionalLockEnabled)
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = vcvtmd_u64_f64(self->_directionalLockThreshold * 100.0) - (v14 - v13 + 32 * v13) + 32 * (v14 - v13 + 32 * v13);
  v16 = vcvtmd_u64_f64(self->_directionalLockStickiness * 100.0) - v15 + 32 * v15;
  v17 = vcvtmd_u64_f64(self->_directionalLockSharpness * 100.0) - v16 + 32 * v16;
  if (self->_showDirectionalLockIndicators)
  {
    v18 = 1231;
  }

  else
  {
    v18 = 1237;
  }

  return v18 - v17 + 32 * v17 + 0xDED414BE191DDDFLL;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIMotionAnalyzerSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIMotionAnalyzerSettings *)self setInputSmoothingFactor:0.0];
  [(_UIMotionAnalyzerSettings *)self setReferenceShiftEnabled:1];
  [(_UIMotionAnalyzerSettings *)self setReferenceShiftSpeed:0.3];
  [(_UIMotionAnalyzerSettings *)self setReferenceShiftDistanceDependence:0.5];
  [(_UIMotionAnalyzerSettings *)self setIdleLeeway:0.1];
  [(_UIMotionAnalyzerSettings *)self setDelayBeforeIdle:0.3];
  [(_UIMotionAnalyzerSettings *)self setShowIdleIndicator:0];
  [(_UIMotionAnalyzerSettings *)self setJumpEnabled:1];
  [(_UIMotionAnalyzerSettings *)self setJumpThreshold:0.5];
  [(_UIMotionAnalyzerSettings *)self setPlayJumpSound:0];
  [(_UIMotionAnalyzerSettings *)self setDirectionalLockEnabled:1];
  [(_UIMotionAnalyzerSettings *)self setDirectionalLockThreshold:0.3];
  [(_UIMotionAnalyzerSettings *)self setDirectionalLockStickiness:0.5];
  [(_UIMotionAnalyzerSettings *)self setDirectionalLockSharpness:0.1];
  [(_UIMotionAnalyzerSettings *)self setShowDirectionalLockIndicators:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(_UIMotionAnalyzerSettings *)self inputSmoothingFactor];
    v7 = v6;
    [v5 inputSmoothingFactor];
    if (v7 == v8 && (v9 = -[_UIMotionAnalyzerSettings referenceShiftEnabled](self, "referenceShiftEnabled"), v9 == [v5 referenceShiftEnabled]) && (-[_UIMotionAnalyzerSettings referenceShiftSpeed](self, "referenceShiftSpeed"), v11 = v10, objc_msgSend(v5, "referenceShiftSpeed"), v11 == v12) && (-[_UIMotionAnalyzerSettings referenceShiftDistanceDependence](self, "referenceShiftDistanceDependence"), v14 = v13, objc_msgSend(v5, "referenceShiftDistanceDependence"), v14 == v15) && (-[_UIMotionAnalyzerSettings idleLeeway](self, "idleLeeway"), v17 = v16, objc_msgSend(v5, "idleLeeway"), v17 == v18) && (-[_UIMotionAnalyzerSettings delayBeforeIdle](self, "delayBeforeIdle"), v20 = v19, objc_msgSend(v5, "delayBeforeIdle"), v20 == v21) && (v22 = -[_UIMotionAnalyzerSettings showIdleIndicator](self, "showIdleIndicator"), v22 == objc_msgSend(v5, "showIdleIndicator")) && (v23 = -[_UIMotionAnalyzerSettings jumpEnabled](self, "jumpEnabled"), v23 == objc_msgSend(v5, "jumpEnabled")) && (-[_UIMotionAnalyzerSettings jumpThreshold](self, "jumpThreshold"), v25 = v24, objc_msgSend(v5, "jumpThreshold"), v25 == v26) && (v27 = -[_UIMotionAnalyzerSettings playJumpSound](self, "playJumpSound"), v27 == objc_msgSend(v5, "playJumpSound")) && (v28 = -[_UIMotionAnalyzerSettings directionalLockEnabled](self, "directionalLockEnabled"), v28 == objc_msgSend(v5, "directionalLockEnabled")) && (-[_UIMotionAnalyzerSettings directionalLockThreshold](self, "directionalLockThreshold"), v30 = v29, objc_msgSend(v5, "directionalLockThreshold"), v30 == v31) && (-[_UIMotionAnalyzerSettings directionalLockStickiness](self, "directionalLockStickiness"), v33 = v32, objc_msgSend(v5, "directionalLockStickiness"), v33 == v34))
    {
      [(_UIMotionAnalyzerSettings *)self directionalLockSharpness];
      v36 = v35;
      [v5 directionalLockSharpness];
      v38 = v36 == v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end