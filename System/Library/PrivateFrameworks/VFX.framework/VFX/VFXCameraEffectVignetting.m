@interface VFXCameraEffectVignetting
+ (id)vignetting;
- (VFXCameraEffectVignetting)initWithCoder:(id)a3;
- (double)createCFXObject;
- (float)anamorphic;
- (float)intensity;
- (float)radius;
- (float)softness;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setAnamorphic:(float)a3;
- (void)setIntensity:(float)a3;
- (void)setRadius:(float)a3;
- (void)setSoftness:(float)a3;
@end

@implementation VFXCameraEffectVignetting

- (double)createCFXObject
{
  if (qword_1ED73AD98 != -1)
  {
    sub_1AFDD6E74();
  }

  v0 = sub_1AF0D160C(qword_1ED73AD90, 0x48uLL);
  *(v0 + 64) = 1;
  result = 0.00781250185;
  *(v0 + 72) = xmmword_1AFE21540;
  return result;
}

- (float)intensity
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

- (void)setIntensity:(float)a3
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != a3)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B10BC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)anamorphic
{
  if (!self->super._isPresentationObject)
  {
    return self->_intensity;
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

- (void)setAnamorphic:(float)a3
{
  if (self->super._isPresentationObject || self->_intensity != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B121C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"anamorphic", v5);
  }
}

- (float)softness
{
  if (!self->super._isPresentationObject)
  {
    return self->_anamorphic;
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

- (void)setSoftness:(float)a3
{
  if (self->super._isPresentationObject || self->_anamorphic != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_anamorphic = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B137C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"softness", v5);
  }
}

- (float)radius
{
  if (!self->super._isPresentationObject)
  {
    return self->_softness;
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

- (void)setRadius:(float)a3
{
  if (self->super._isPresentationObject || self->_softness != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_softness = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B14DC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v5);
  }
}

+ (id)vignetting
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22.receiver = self;
  v22.super_class = VFXCameraEffectVignetting;
  v4 = [(VFXCameraEffect *)&v22 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v8, v5);
  *&v9 = self->_intensity;
  objc_msgSend_setAnamorphic_(v4, v10, v11, v12, v9);
  *&v13 = self->_anamorphic;
  objc_msgSend_setSoftness_(v4, v14, v15, v16, v13);
  *&v17 = self->_softness;
  objc_msgSend_setRadius_(v4, v18, v19, v20, v17);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectVignetting;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect);
  self->_anamorphic = sub_1AF160D20(self->super._cameraEffect);
  self->_softness = sub_1AF160DBC(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B16E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = VFXCameraEffectVignetting;
  [(VFXCameraEffect *)&v17 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"intensity", v7, v5);
  *&v8 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"anamorphic", v10, v8);
  *&v11 = self->_anamorphic;
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"softness", v13, v11);
  *&v14 = self->_softness;
  objc_msgSend_encodeFloat_forKey_(a3, v15, @"radius", v16, v14);
}

- (VFXCameraEffectVignetting)initWithCoder:(id)a3
{
  v34.receiver = self;
  v34.super_class = VFXCameraEffectVignetting;
  v7 = [(VFXCameraEffect *)&v34 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"intensity", v12);
    objc_msgSend_setIntensity_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"anamorphic", v17);
    objc_msgSend_setAnamorphic_(v7, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(a3, v21, @"softness", v22);
    objc_msgSend_setSoftness_(v7, v23, v24, v25);
    objc_msgSend_decodeFloatForKey_(a3, v26, @"radius", v27);
    objc_msgSend_setRadius_(v7, v28, v29, v30);
    objc_msgSend_setImmediateMode_(VFXTransaction, v31, v8, v32);
  }

  return v7;
}

@end