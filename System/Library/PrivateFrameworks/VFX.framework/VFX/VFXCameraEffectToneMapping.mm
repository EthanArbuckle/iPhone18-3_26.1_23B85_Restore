@interface VFXCameraEffectToneMapping
+ (id)toneMapping;
- (VFXCameraEffectToneMapping)initWithCoder:(id)a3;
- (double)createCFXObject;
- (float)eval:(float)a3;
- (float)gamma;
- (float)shoulderAngle;
- (float)shoulderLength;
- (float)shoulderStrength;
- (float)toeLength;
- (float)toeStrength;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mode;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setGamma:(float)a3;
- (void)setMode:(int64_t)a3;
- (void)setShoulderAngle:(float)a3;
- (void)setShoulderLength:(float)a3;
- (void)setShoulderStrength:(float)a3;
- (void)setToeLength:(float)a3;
- (void)setToeStrength:(float)a3;
@end

@implementation VFXCameraEffectToneMapping

- (double)createCFXObject
{
  if (qword_1ED73ADA8 != -1)
  {
    sub_1AFDD6E38();
  }

  v0 = sub_1AF0D160C(qword_1ED73ADA0, 0xC0uLL);
  *(v0 + 64) = 1;
  *(v0 + 180) = xmmword_1AFE21520;
  *(v0 + 196) = 0x3F80000000000000;
  *(v0 + 76) = xmmword_1AFE21530;
  *&result = 1065353216;
  *(v0 + 92) = 1065353216;
  *(v0 + 100) = 0;
  return result;
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
  v11 = sub_1AF1618F4(v10);
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
    v5[2] = sub_1AF2AEEE0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"mode", v5);
  }
}

- (float)toeStrength
{
  if (!self->super._isPresentationObject)
  {
    return self->_toeStrength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF1619E0(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setToeStrength:(float)a3
{
  if (self->super._isPresentationObject || self->_toeStrength != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_toeStrength = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF040;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toeStrength", v5);
  }
}

- (float)toeLength
{
  if (!self->super._isPresentationObject)
  {
    return self->_toeLength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161A84(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setToeLength:(float)a3
{
  if (self->super._isPresentationObject || self->_toeLength != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_toeLength = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF1A0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"toeLength", v5);
  }
}

- (float)shoulderStrength
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderStrength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161B28(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setShoulderStrength:(float)a3
{
  if (self->super._isPresentationObject || self->_shoulderStrength != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderStrength = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF300;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderStrength", v5);
  }
}

- (float)shoulderLength
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderLength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161BCC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setShoulderLength:(float)a3
{
  if (self->super._isPresentationObject || self->_shoulderLength != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderLength = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF460;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderLength", v5);
  }
}

- (float)shoulderAngle
{
  if (!self->super._isPresentationObject)
  {
    return self->_shoulderAngle;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161C70(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setShoulderAngle:(float)a3
{
  if (self->super._isPresentationObject || self->_shoulderAngle != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shoulderAngle = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF5C0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shoulderAngle", v5);
  }
}

- (float)gamma
{
  if (!self->super._isPresentationObject)
  {
    return self->_gamma;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161D14(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setGamma:(float)a3
{
  if (self->super._isPresentationObject || self->_gamma != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_gamma = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AF720;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gamma", v5);
  }
}

+ (id)toneMapping
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (float)eval:(float)a3
{
  v7 = objc_msgSend_worldRef(self, a2, v3, v4);
  v8 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  cameraEffect = self->super._cameraEffect;
  if (cameraEffect)
  {
    a3 = sub_1AF161DB8(cameraEffect, a3);
  }

  if (v8)
  {
    sub_1AF1CEA9C(v8);
  }

  return a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32.receiver = self;
  v32.super_class = VFXCameraEffectToneMapping;
  v4 = [(VFXCameraEffect *)&v32 copyWithZone:a3];
  objc_msgSend_setMode_(v4, v5, self->_mode, v6);
  *&v7 = self->_toeStrength;
  objc_msgSend_setToeStrength_(v4, v8, v9, v10, v7);
  *&v11 = self->_toeLength;
  objc_msgSend_setToeLength_(v4, v12, v13, v14, v11);
  *&v15 = self->_shoulderStrength;
  objc_msgSend_setShoulderStrength_(v4, v16, v17, v18, v15);
  *&v19 = self->_shoulderLength;
  objc_msgSend_setShoulderLength_(v4, v20, v21, v22, v19);
  *&v23 = self->_shoulderAngle;
  objc_msgSend_setShoulderAngle_(v4, v24, v25, v26, v23);
  *&v27 = self->_gamma;
  objc_msgSend_setGamma_(v4, v28, v29, v30, v27);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectToneMapping;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  self->_mode = sub_1AF1618F4(self->super._cameraEffect);
  self->_toeStrength = sub_1AF1619E0(self->super._cameraEffect);
  self->_toeLength = sub_1AF161A84(self->super._cameraEffect);
  self->_shoulderStrength = sub_1AF161B28(self->super._cameraEffect);
  self->_shoulderLength = sub_1AF161BCC(self->super._cameraEffect);
  self->_shoulderAngle = sub_1AF161C70(self->super._cameraEffect);
  self->_gamma = sub_1AF161D14(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AFA0C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = VFXCameraEffectToneMapping;
  [(VFXCameraEffect *)&v24 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_mode, @"mode");
  *&v6 = self->_toeStrength;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"toeStrength", v8, v6);
  *&v9 = self->_toeLength;
  objc_msgSend_encodeFloat_forKey_(a3, v10, @"toeLength", v11, v9);
  *&v12 = self->_shoulderStrength;
  objc_msgSend_encodeFloat_forKey_(a3, v13, @"shoulderStrength", v14, v12);
  *&v15 = self->_shoulderLength;
  objc_msgSend_encodeFloat_forKey_(a3, v16, @"shoulderLength", v17, v15);
  *&v18 = self->_shoulderAngle;
  objc_msgSend_encodeFloat_forKey_(a3, v19, @"shoulderAngle", v20, v18);
  *&v21 = self->_gamma;
  objc_msgSend_encodeFloat_forKey_(a3, v22, @"gamma", v23, v21);
}

- (VFXCameraEffectToneMapping)initWithCoder:(id)a3
{
  v49.receiver = self;
  v49.super_class = VFXCameraEffectToneMapping;
  v7 = [(VFXCameraEffect *)&v49 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v13 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"mode", v12);
    objc_msgSend_setMode_(v7, v14, v13, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"toeStrength", v17);
    objc_msgSend_setToeStrength_(v7, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(a3, v21, @"toeLength", v22);
    objc_msgSend_setToeLength_(v7, v23, v24, v25);
    objc_msgSend_decodeFloatForKey_(a3, v26, @"shoulderStrength", v27);
    objc_msgSend_setShoulderStrength_(v7, v28, v29, v30);
    objc_msgSend_decodeFloatForKey_(a3, v31, @"shoulderLength", v32);
    objc_msgSend_setShoulderLength_(v7, v33, v34, v35);
    objc_msgSend_decodeFloatForKey_(a3, v36, @"shoulderAngle", v37);
    objc_msgSend_setShoulderAngle_(v7, v38, v39, v40);
    objc_msgSend_decodeFloatForKey_(a3, v41, @"gamma", v42);
    objc_msgSend_setGamma_(v7, v43, v44, v45);
    objc_msgSend_setImmediateMode_(VFXTransaction, v46, v8, v47);
  }

  return v7;
}

@end