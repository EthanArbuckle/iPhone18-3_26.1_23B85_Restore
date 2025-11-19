@interface VFXCameraEffectColorFringe
+ (id)colorFringe;
- (VFXCameraEffectColorFringe)initWithCoder:(id)a3;
- (double)createCFXObject;
- (float)intensity;
- (float)strength;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setIntensity:(float)a3;
- (void)setStrength:(float)a3;
@end

@implementation VFXCameraEffectColorFringe

- (double)createCFXObject
{
  if (qword_1ED73AE28 != -1)
  {
    sub_1AFDD6E88();
  }

  v0 = sub_1AF0D160C(qword_1ED73AE20, 0x40uLL);
  *(v0 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 72) = result;
  return result;
}

- (float)strength
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
  v11 = sub_1AF160C84(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setStrength:(float)a3
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != a3)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B1A44;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"strength", v5);
  }
}

- (float)intensity
{
  if (!self->super._isPresentationObject)
  {
    return self->_strength;
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
  if (self->super._isPresentationObject || self->_strength != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_strength = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B1BA4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

+ (id)colorFringe
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = VFXCameraEffectColorFringe;
  v4 = [(VFXCameraEffect *)&v14 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setStrength_(v4, v6, v7, v8, v5);
  *&v9 = self->_strength;
  objc_msgSend_setIntensity_(v4, v10, v11, v12, v9);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectColorFringe;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160C84(self->super._cameraEffect);
  self->_strength = sub_1AF160FEC(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B1D60;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = VFXCameraEffectColorFringe;
  [(VFXCameraEffect *)&v11 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"strength", v7, v5);
  *&v8 = self->_strength;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"intensity", v10, v8);
}

- (VFXCameraEffectColorFringe)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = VFXCameraEffectColorFringe;
  v7 = [(VFXCameraEffect *)&v24 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"strength", v12);
    objc_msgSend_setStrength_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"intensity", v17);
    objc_msgSend_setIntensity_(v7, v18, v19, v20);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v8, v22);
  }

  return v7;
}

@end