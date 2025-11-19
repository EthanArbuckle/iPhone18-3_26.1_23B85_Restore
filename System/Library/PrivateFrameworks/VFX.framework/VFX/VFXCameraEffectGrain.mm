@interface VFXCameraEffectGrain
+ (id)grain;
- (BOOL)isColored;
- (VFXCameraEffectGrain)initWithCoder:(id)a3;
- (double)createCFXObject;
- (float)intensity;
- (float)scale;
- (float)slice;
- (id)copyWithZone:(_NSZone *)a3;
- (id)texture;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setColored:(BOOL)a3;
- (void)setIntensity:(float)a3;
- (void)setScale:(float)a3;
- (void)setSlice:(float)a3;
- (void)setTexture:(id)a3;
@end

@implementation VFXCameraEffectGrain

- (double)createCFXObject
{
  if (qword_1ED73ADD8 != -1)
  {
    sub_1AFDD6E10();
  }

  v0 = sub_1AF0D160C(qword_1ED73ADD0, 0x50uLL);
  *(v0 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 72) = result;
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
    v5[2] = sub_1AF2AD1E8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)scale
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

- (void)setScale:(float)a3
{
  if (self->super._isPresentationObject || self->_intensity != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD348;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"scale", v5);
  }
}

- (float)slice
{
  if (!self->super._isPresentationObject)
  {
    return self->_scale;
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

- (void)setSlice:(float)a3
{
  if (self->super._isPresentationObject || self->_scale != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_scale = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD4A8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"slice", v5);
  }
}

- (BOOL)isColored
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
    slice_low = sub_1AF1611EC(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    slice_low = LOBYTE(self->_slice);
  }

  return slice_low & 1;
}

- (void)setColored:(BOOL)a3
{
  if (self->super._isPresentationObject || LOBYTE(self->_slice) != a3)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_slice) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD604;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"isColored", v5);
  }
}

- (id)texture
{
  if (!self->super._isPresentationObject)
  {
    return self->_texture;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF161288(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setTexture:(id)a3
{
  if (self->super._isPresentationObject || self->_texture != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_texture = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AD754;
    v5[3] = &unk_1E7A7E220;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

+ (id)grain
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectGrain;
  v4 = [(VFXCameraEffect *)&v10 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v8, v5);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectGrain;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect);
  LOBYTE(self->_slice) = sub_1AF1611EC(self->super._cameraEffect);
  self->_scale = sub_1AF160D20(self->super._cameraEffect);
  self->_texture = sub_1AF161288(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2AD938;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = VFXCameraEffectGrain;
  [(VFXCameraEffect *)&v12 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"intensity", v7, v5);
  *&v8 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"scale", v10, v8);
  objc_msgSend_encodeBool_forKey_(a3, v11, LOBYTE(self->_slice), @"colored");
}

- (VFXCameraEffectGrain)initWithCoder:(id)a3
{
  v29.receiver = self;
  v29.super_class = VFXCameraEffectGrain;
  v7 = [(VFXCameraEffect *)&v29 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"intensity", v12);
    objc_msgSend_setIntensity_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"scale", v17);
    objc_msgSend_setScale_(v7, v18, v19, v20);
    v23 = objc_msgSend_decodeBoolForKey_(a3, v21, @"colored", v22);
    objc_msgSend_setColored_(v7, v24, v23, v25);
    objc_msgSend_setImmediateMode_(VFXTransaction, v26, v8, v27);
  }

  return v7;
}

@end