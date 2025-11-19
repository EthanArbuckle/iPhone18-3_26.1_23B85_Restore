@interface VFXCameraEffectDepthOfField
+ (id)depthOfField;
- (BOOL)showCircleOfConfusion;
- (VFXCameraEffectDepthOfField)initWithCoder:(id)a3;
- (double)createCFXObject;
- (float)fStop;
- (float)inFocusDistance;
- (float)maximumBlurRadius;
- (float)outOfFocusDistance;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mode;
- (int64_t)quality;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setFStop:(float)a3;
- (void)setInFocusDistance:(float)a3;
- (void)setMaximumBlurRadius:(float)a3;
- (void)setMode:(int64_t)a3;
- (void)setOutOfFocusDistance:(float)a3;
- (void)setQuality:(int64_t)a3;
- (void)setShowCircleOfConfusion:(BOOL)a3;
@end

@implementation VFXCameraEffectDepthOfField

- (double)createCFXObject
{
  if (qword_1ED73AE08 != -1)
  {
    sub_1AFDD6CF8();
  }

  v0 = sub_1AF0D160C(qword_1ED73AE00, 0x50uLL);
  *(v0 + 64) = 1;
  *(v0 + 72) = 1;
  *(v0 + 74) = 0;
  result = 0.00781250188;
  *(v0 + 76) = xmmword_1AFE214F0;
  return result;
}

- (int64_t)quality
{
  if (!self->super._isPresentationObject)
  {
    return self->_quality;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160A74(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setQuality:(int64_t)a3
{
  if (self->super._isPresentationObject || self->_quality != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_quality = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2ABEAC;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"quality", v5);
  }
}

- (BOOL)showCircleOfConfusion
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
    showCircleOfConfusion = sub_1AF160BD4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    showCircleOfConfusion = self->_showCircleOfConfusion;
  }

  return showCircleOfConfusion & 1;
}

- (void)setShowCircleOfConfusion:(BOOL)a3
{
  if (self->super._isPresentationObject || self->_showCircleOfConfusion != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_showCircleOfConfusion = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC008;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"showCircleOfConfusion", v5);
  }
}

- (int64_t)mode
{
  if (!self->super._isPresentationObject)
  {
    return self->_mode;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF160B24(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setMode:(int64_t)a3
{
  if (self->super._isPresentationObject || self->_mode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_mode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC160;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"mode", v5);
  }
}

- (float)fStop
{
  if (!self->super._isPresentationObject)
  {
    return self->_fStop;
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

- (void)setFStop:(float)a3
{
  if (self->super._isPresentationObject || self->_fStop != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_fStop = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC2C0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fStop", v5);
  }
}

- (float)inFocusDistance
{
  if (!self->super._isPresentationObject)
  {
    return self->_inFocusDistance;
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

- (void)setInFocusDistance:(float)a3
{
  if (self->super._isPresentationObject || self->_inFocusDistance != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_inFocusDistance = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC420;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"inFocusDistance", v5);
  }
}

- (float)outOfFocusDistance
{
  if (!self->super._isPresentationObject)
  {
    return self->_outOfFocusDistance;
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

- (void)setOutOfFocusDistance:(float)a3
{
  if (self->super._isPresentationObject || self->_outOfFocusDistance != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_outOfFocusDistance = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC580;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"outOfFocusDistance", v5);
  }
}

- (float)maximumBlurRadius
{
  if (!self->super._isPresentationObject)
  {
    return self->_maximumBlurRadius;
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

- (void)setMaximumBlurRadius:(float)a3
{
  if (self->super._isPresentationObject || self->_maximumBlurRadius != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_maximumBlurRadius = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AC6E0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumBlurRadius", v5);
  }
}

+ (id)depthOfField
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = VFXCameraEffectDepthOfField;
  v4 = [(VFXCameraEffect *)&v28 copyWithZone:a3];
  objc_msgSend_setQuality_(v4, v5, self->_quality, v6);
  objc_msgSend_setShowCircleOfConfusion_(v4, v7, self->_showCircleOfConfusion, v8);
  objc_msgSend_setMode_(v4, v9, self->_mode, v10);
  *&v11 = self->_fStop;
  objc_msgSend_setFStop_(v4, v12, v13, v14, v11);
  *&v15 = self->_inFocusDistance;
  objc_msgSend_setInFocusDistance_(v4, v16, v17, v18, v15);
  *&v19 = self->_outOfFocusDistance;
  objc_msgSend_setOutOfFocusDistance_(v4, v20, v21, v22, v19);
  *&v23 = self->_maximumBlurRadius;
  objc_msgSend_setMaximumBlurRadius_(v4, v24, v25, v26, v23);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectDepthOfField;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  self->_quality = sub_1AF160A74(self->super._cameraEffect);
  self->_showCircleOfConfusion = sub_1AF160BD4(self->super._cameraEffect);
  self->_mode = sub_1AF160B24(self->super._cameraEffect);
  self->_fStop = sub_1AF160C84(self->super._cameraEffect);
  self->_inFocusDistance = sub_1AF160D20(self->super._cameraEffect);
  self->_outOfFocusDistance = sub_1AF160DBC(self->super._cameraEffect);
  self->_maximumBlurRadius = sub_1AF160E58(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AC96C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = VFXCameraEffectDepthOfField;
  [(VFXCameraEffect *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_quality, @"quality");
  objc_msgSend_encodeBool_forKey_(a3, v6, self->_showCircleOfConfusion, @"showCircleOfConfusion");
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->_mode, @"mode");
  *&v8 = self->_fStop;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"fStop", v10, v8);
  *&v11 = self->_inFocusDistance;
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"inFocusDistance", v13, v11);
  *&v14 = self->_outOfFocusDistance;
  objc_msgSend_encodeFloat_forKey_(a3, v15, @"outOfFocusDistance", v16, v14);
  *&v17 = self->_maximumBlurRadius;
  objc_msgSend_encodeFloat_forKey_(a3, v18, @"maximumBlurRadius", v19, v17);
}

- (VFXCameraEffectDepthOfField)initWithCoder:(id)a3
{
  v49.receiver = self;
  v49.super_class = VFXCameraEffectDepthOfField;
  v7 = [(VFXCameraEffect *)&v49 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v13 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"quality", v12);
    objc_msgSend_setQuality_(v7, v14, v13, v15);
    v18 = objc_msgSend_decodeBoolForKey_(a3, v16, @"showCircleOfConfusion", v17);
    objc_msgSend_setShowCircleOfConfusion_(v7, v19, v18, v20);
    objc_msgSend_decodeFloatForKey_(a3, v21, @"fStop", v22);
    objc_msgSend_setFStop_(v7, v23, v24, v25);
    if (objc_msgSend_containsValueForKey_(a3, v26, @"mode", v27))
    {
      v30 = objc_msgSend_decodeIntegerForKey_(a3, v28, @"mode", v29);
      objc_msgSend_setMode_(v7, v31, v30, v32);
    }

    if (objc_msgSend_containsValueForKey_(a3, v28, @"inFocusDistance", v29))
    {
      objc_msgSend_decodeFloatForKey_(a3, v33, @"inFocusDistance", v34);
      objc_msgSend_setInFocusDistance_(v7, v35, v36, v37);
    }

    if (objc_msgSend_containsValueForKey_(a3, v33, @"outOfFocusDistance", v34))
    {
      objc_msgSend_decodeFloatForKey_(a3, v38, @"outOfFocusDistance", v39);
      objc_msgSend_setOutOfFocusDistance_(v7, v40, v41, v42);
    }

    if (objc_msgSend_containsValueForKey_(a3, v38, @"maximumBlurRadius", v39))
    {
      objc_msgSend_decodeFloatForKey_(a3, v43, @"maximumBlurRadius", v44);
      objc_msgSend_setMaximumBlurRadius_(v7, v45, v46, v47);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v43, v8, v44);
  }

  return v7;
}

@end