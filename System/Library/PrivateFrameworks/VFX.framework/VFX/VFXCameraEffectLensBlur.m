@interface VFXCameraEffectLensBlur
+ (id)lensBlur;
- (VFXCameraEffectLensBlur)initWithCoder:(id)a3;
- (float)radius;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)filterQuality;
- (uint64_t)createCFXObject;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setFilterQuality:(int64_t)a3;
- (void)setRadius:(float)a3;
@end

@implementation VFXCameraEffectLensBlur

- (uint64_t)createCFXObject
{
  if (qword_1ED73ADC8 != -1)
  {
    sub_1AFDD6E9C();
  }

  result = sub_1AF0D160C(qword_1ED73ADC0, 0x40uLL);
  *(result + 64) = 1;
  *(result + 72) = 1065353216;
  *(result + 76) = 0;
  return result;
}

- (float)radius
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

- (void)setRadius:(float)a3
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != a3)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B3A68;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v5);
  }
}

- (int64_t)filterQuality
{
  if (!self->super._isPresentationObject)
  {
    return *&self->_radius;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF163080(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setFilterQuality:(int64_t)a3
{
  if (self->super._isPresentationObject || *&self->_radius != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    *&self->_radius = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B3BC0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"filterQuality", v5);
  }
}

+ (id)lensBlur
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = VFXCameraEffectLensBlur;
  v4 = [(VFXCameraEffect *)&v12 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setRadius_(v4, v6, v7, v8, v5);
  objc_msgSend_setFilterQuality_(v4, v9, *&self->_radius, v10);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectLensBlur;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  *&self->_radius = sub_1AF163080(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B3D80;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = VFXCameraEffectLensBlur;
  [(VFXCameraEffect *)&v11 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"radius", v7, v5);
  *&v8 = *&self->_radius;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"filterQuality", v10, v8);
}

- (VFXCameraEffectLensBlur)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = VFXCameraEffectLensBlur;
  v7 = [(VFXCameraEffect *)&v24 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"radius", v12);
    objc_msgSend_setRadius_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"filterQuality", v17);
    objc_msgSend_setFilterQuality_(v7, v19, v18, v20);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v8, v22);
  }

  return v7;
}

@end