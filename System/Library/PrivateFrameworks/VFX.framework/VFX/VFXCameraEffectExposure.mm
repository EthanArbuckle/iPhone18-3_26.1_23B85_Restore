@interface VFXCameraEffectExposure
+ (id)exposure;
- (BOOL)wantsAdaptation;
- (VFXCameraEffectExposure)initWithCoder:(id)coder;
- (double)createCFXObject;
- (float)adaptationBrighteningSpeedFactor;
- (float)adaptationDarkeningSpeedFactor;
- (float)adaptationMaximum;
- (float)adaptationMinimum;
- (float)averageGray;
- (float)offset;
- (float)value;
- (float)whitePoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setAdaptationBrighteningSpeedFactor:(float)factor;
- (void)setAdaptationDarkeningSpeedFactor:(float)factor;
- (void)setAdaptationMaximum:(float)maximum;
- (void)setAdaptationMinimum:(float)minimum;
- (void)setAverageGray:(float)gray;
- (void)setOffset:(float)offset;
- (void)setValue:(float)value;
- (void)setWantsAdaptation:(BOOL)adaptation;
- (void)setWhitePoint:(float)point;
@end

@implementation VFXCameraEffectExposure

- (double)createCFXObject
{
  if (qword_1ED73ADE8 != -1)
  {
    sub_1AFDD6E24();
  }

  v0 = sub_1AF0D160C(qword_1ED73ADE0, 0x60uLL);
  *(v0 + 64) = 1;
  *(v0 + 72) = xmmword_1AFE21500;
  result = 0.0000976562876;
  *(v0 + 88) = xmmword_1AFE21510;
  *(v0 + 104) = 0;
  return result;
}

- (float)value
{
  if (!self->super._isPresentationObject)
  {
    return *(&self->super._enabled + 1);
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160FEC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setValue:(float)value
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != value)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = value;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADC7C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    valueCopy = value;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"value", v5);
  }
}

- (float)offset
{
  if (!self->super._isPresentationObject)
  {
    return self->_value;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160C84(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_value != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_value = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADDDC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    offsetCopy = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"offset", v5);
  }
}

- (float)averageGray
{
  if (!self->super._isPresentationObject)
  {
    return self->_offset;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160D20(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAverageGray:(float)gray
{
  if (self->super._isPresentationObject || self->_offset != gray)
  {
    v7 = v3;
    v8 = v4;
    self->_offset = gray;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ADF3C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    grayCopy = gray;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"averageGray", v5);
  }
}

- (float)whitePoint
{
  if (!self->super._isPresentationObject)
  {
    return self->_averageGray;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160DBC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setWhitePoint:(float)point
{
  if (self->super._isPresentationObject || self->_averageGray != point)
  {
    v7 = v3;
    v8 = v4;
    self->_averageGray = point;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE09C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    pointCopy = point;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whitePoint", v5);
  }
}

- (BOOL)wantsAdaptation
{
  if (self->super._isPresentationObject)
  {
    v5 = objc_msgSend_worldRef(self, a2, v2, v3);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
    adaptationMaximum_low = sub_1AF1616C4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    adaptationMaximum_low = LOBYTE(self->_adaptationMaximum);
  }

  return adaptationMaximum_low & 1;
}

- (void)setWantsAdaptation:(BOOL)adaptation
{
  if (self->super._isPresentationObject || LOBYTE(self->_adaptationMaximum) != adaptation)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_adaptationMaximum) = adaptation;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE1F8;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    adaptationCopy = adaptation;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"wantsAdaptation", v5);
  }
}

- (float)adaptationBrighteningSpeedFactor
{
  if (!self->super._isPresentationObject)
  {
    return self->_whitePoint;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160E58(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAdaptationBrighteningSpeedFactor:(float)factor
{
  if (self->super._isPresentationObject || self->_whitePoint != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_whitePoint = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE358;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationBrighteningSpeedFactor", v5);
  }
}

- (float)adaptationDarkeningSpeedFactor
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationBrighteningSpeedFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF1614F0(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAdaptationDarkeningSpeedFactor:(float)factor
{
  if (self->super._isPresentationObject || self->_adaptationBrighteningSpeedFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationBrighteningSpeedFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE4B8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationDarkeningSpeedFactor", v5);
  }
}

- (float)adaptationMinimum
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationDarkeningSpeedFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF16158C(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAdaptationMinimum:(float)minimum
{
  if (self->super._isPresentationObject || self->_adaptationDarkeningSpeedFactor != minimum)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationDarkeningSpeedFactor = minimum;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE618;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    minimumCopy = minimum;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationMinimum", v5);
  }
}

- (float)adaptationMaximum
{
  if (!self->super._isPresentationObject)
  {
    return self->_adaptationMinimum;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161628(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setAdaptationMaximum:(float)maximum
{
  if (self->super._isPresentationObject || self->_adaptationMinimum != maximum)
  {
    v7 = v3;
    v8 = v4;
    self->_adaptationMinimum = maximum;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AE778;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    maximumCopy = maximum;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"adaptationMaximum", v5);
  }
}

+ (id)exposure
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36.receiver = self;
  v36.super_class = VFXCameraEffectExposure;
  v4 = [(VFXCameraEffect *)&v36 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setValue_(v4, v6, v7, v8, v5);
  *&v9 = self->_value;
  objc_msgSend_setOffset_(v4, v10, v11, v12, v9);
  *&v13 = self->_offset;
  objc_msgSend_setAverageGray_(v4, v14, v15, v16, v13);
  *&v17 = self->_whitePoint;
  objc_msgSend_setAdaptationBrighteningSpeedFactor_(v4, v18, v19, v20, v17);
  *&v21 = self->_adaptationBrighteningSpeedFactor;
  objc_msgSend_setAdaptationDarkeningSpeedFactor_(v4, v22, v23, v24, v21);
  *&v25 = self->_adaptationDarkeningSpeedFactor;
  objc_msgSend_setAdaptationMinimum_(v4, v26, v27, v28, v25);
  *&v29 = self->_adaptationMinimum;
  objc_msgSend_setAdaptationMaximum_(v4, v30, v31, v32, v29);
  objc_msgSend_setWantsAdaptation_(v4, v33, LOBYTE(self->_adaptationMaximum), v34);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectExposure;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  self->_value = sub_1AF160C84(self->super._cameraEffect);
  self->_offset = sub_1AF160D20(self->super._cameraEffect);
  LOBYTE(self->_adaptationMaximum) = sub_1AF1616C4(self->super._cameraEffect);
  self->_whitePoint = sub_1AF160E58(self->super._cameraEffect);
  self->_adaptationBrighteningSpeedFactor = sub_1AF1614F0(self->super._cameraEffect);
  self->_adaptationDarkeningSpeedFactor = sub_1AF16158C(self->super._cameraEffect);
  self->_adaptationMinimum = sub_1AF161628(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AEA24;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = VFXCameraEffectExposure;
  [(VFXCameraEffect *)&v30 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"value", v7, v5);
  *&v8 = self->_value;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"offset", v10, v8);
  *&v11 = self->_offset;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"averageGray", v13, v11);
  *&v14 = self->_averageGray;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"whitePoint", v16, v14);
  objc_msgSend_encodeBool_forKey_(coder, v17, LOBYTE(self->_adaptationMaximum), @"wantsAdaptation");
  *&v18 = self->_whitePoint;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"adaptationBrighteningSpeedFactor", v20, v18);
  *&v21 = self->_adaptationBrighteningSpeedFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"adaptationDarkeningSpeedFactor", v23, v21);
  *&v24 = self->_adaptationDarkeningSpeedFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"adaptationMinimum", v26, v24);
  *&v27 = self->_adaptationMinimum;
  objc_msgSend_encodeFloat_forKey_(coder, v28, @"adaptationMaximum", v29, v27);
}

- (VFXCameraEffectExposure)initWithCoder:(id)coder
{
  v59.receiver = self;
  v59.super_class = VFXCameraEffectExposure;
  v7 = [(VFXCameraEffect *)&v59 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(coder, v11, @"value", v12);
    objc_msgSend_setValue_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(coder, v16, @"offset", v17);
    objc_msgSend_setOffset_(v7, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"averageGray", v22);
    objc_msgSend_setAverageGray_(v7, v23, v24, v25);
    objc_msgSend_decodeFloatForKey_(coder, v26, @"whitePoint", v27);
    objc_msgSend_setWhitePoint_(v7, v28, v29, v30);
    v33 = objc_msgSend_decodeBoolForKey_(coder, v31, @"wantsAdaptation", v32);
    objc_msgSend_setWantsAdaptation_(v7, v34, v33, v35);
    objc_msgSend_decodeFloatForKey_(coder, v36, @"adaptationBrighteningSpeedFactor", v37);
    objc_msgSend_setAdaptationBrighteningSpeedFactor_(v7, v38, v39, v40);
    objc_msgSend_decodeFloatForKey_(coder, v41, @"adaptationDarkeningSpeedFactor", v42);
    objc_msgSend_setAdaptationDarkeningSpeedFactor_(v7, v43, v44, v45);
    objc_msgSend_decodeFloatForKey_(coder, v46, @"adaptationMinimum", v47);
    objc_msgSend_setAdaptationMinimum_(v7, v48, v49, v50);
    objc_msgSend_decodeFloatForKey_(coder, v51, @"adaptationMaximum", v52);
    objc_msgSend_setAdaptationMaximum_(v7, v53, v54, v55);
    objc_msgSend_setImmediateMode_(VFXTransaction, v56, v8, v57);
  }

  return v7;
}

@end