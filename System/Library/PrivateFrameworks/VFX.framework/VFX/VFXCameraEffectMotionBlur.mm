@interface VFXCameraEffectMotionBlur
+ (id)motionBlur;
- (VFXCameraEffectMotionBlur)initWithCoder:(id)a3;
- (float)intensity;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)createCFXObject;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setIntensity:(float)a3;
@end

@implementation VFXCameraEffectMotionBlur

- (uint64_t)createCFXObject
{
  if (qword_1ED73ADB8 != -1)
  {
    sub_1AFDD6DFC();
  }

  result = sub_1AF0D160C(qword_1ED73ADB0, 0x40uLL);
  *(result + 64) = 1;
  *(result + 72) = 1065353216;
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
    v5[2] = sub_1AF2ACE08;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

+ (id)motionBlur
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = VFXCameraEffectMotionBlur;
  v4 = [(VFXCameraEffect *)&v10 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v8, v5);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectMotionBlur;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2ACF9C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = VFXCameraEffectMotionBlur;
  [(VFXCameraEffect *)&v8 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"intensity", v7, v5);
}

- (VFXCameraEffectMotionBlur)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = VFXCameraEffectMotionBlur;
  v7 = [(VFXCameraEffect *)&v19 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"intensity", v12);
    objc_msgSend_setIntensity_(v7, v13, v14, v15);
    objc_msgSend_setImmediateMode_(VFXTransaction, v16, v8, v17);
  }

  return v7;
}

@end