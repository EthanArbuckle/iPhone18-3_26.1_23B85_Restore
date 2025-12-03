@interface VFXCameraEffectDoughnutBokeh
+ (id)doughnutBokeh;
- (BOOL)maskEnabled;
- (BOOL)rawFloat2ForKey:(id)key value:;
- (VFXCameraEffectDoughnutBokeh)initWithCoder:(id)coder;
- (double)maskCenter;
- (float)maskRadius;
- (float)radius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (uint64_t)createCFXObject;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)coder;
- (void)setMaskCenter:(VFXCameraEffectDoughnutBokeh *)self;
- (void)setMaskEnabled:(BOOL)enabled;
- (void)setMaskRadius:(float)radius;
- (void)setRadius:(float)radius;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXCameraEffectDoughnutBokeh

- (uint64_t)createCFXObject
{
  if (qword_1ED73ADF8 != -1)
  {
    sub_1AFDD6EC4();
  }

  result = sub_1AF0D160C(qword_1ED73ADF0, 0x50uLL);
  *(result + 64) = 1;
  *(result + 72) = 1065353216;
  *(result + 80) = 0;
  *(result + 88) = 1065353216;
  *(result + 92) = 0;
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

- (void)setRadius:(float)radius
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != radius)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B652C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v5);
  }
}

- (double)maskCenter
{
  if (*(self + 28) != 1)
  {
    return *(self + 64);
  }

  v5 = objc_msgSend_worldRef(self, a2, a3, a4);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF163AA0(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setMaskCenter:(VFXCameraEffectDoughnutBokeh *)self
{
  if (self->super._isPresentationObject || (v3 = vceq_f32(*&self->_radius, v2), (vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0))
  {
    *&self->_radius = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B6694;
    v4[3] = &unk_1E7A7E248;
    v4[4] = self;
    v4[5] = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskCenter", v4);
  }
}

- (float)maskRadius
{
  if (!self->super._isPresentationObject)
  {
    return *&self->_maskCenter[4];
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

- (void)setMaskRadius:(float)radius
{
  if (self->super._isPresentationObject || *&self->_maskCenter[4] != radius)
  {
    v7 = v3;
    v8 = v4;
    *&self->_maskCenter[4] = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B67F4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskRadius", v5);
  }
}

- (BOOL)maskEnabled
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
    maskRadius_low = sub_1AF163B3C(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    maskRadius_low = LOBYTE(self->_maskRadius);
  }

  return maskRadius_low & 1;
}

- (void)setMaskEnabled:(BOOL)enabled
{
  if (self->super._isPresentationObject || LOBYTE(self->_maskRadius) != enabled)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_maskRadius) = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B6950;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    enabledCopy = enabled;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maskEnabled", v5);
  }
}

+ (id)doughnutBokeh
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)rawFloat2ForKey:(id)key value:
{
  v4 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(key, a2, @"maskCenter", v3);
  if (isEqualToString)
  {
    objc_msgSend_maskCenter(self, v6, v7, v8);
    *v4 = v10;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"maskCenter", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_maskCenter(self, v6, v7, v8);

    return MEMORY[0x1EEE66B58](v9, sel_valueWithVFXFloat2_, v10, v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXCameraEffectDoughnutBokeh;
    return [(VFXCameraEffectDoughnutBokeh *)&v13 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"maskCenter", key))
  {
    objc_msgSend_VFXFloat2Value(value, v7, v8, v9);

    objc_msgSend_setMaskCenter_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXCameraEffectDoughnutBokeh;
    [(VFXCameraEffectDoughnutBokeh *)&v13 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19.receiver = self;
  v19.super_class = VFXCameraEffectDoughnutBokeh;
  v4 = [(VFXCameraEffect *)&v19 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setRadius_(v4, v6, v7, v8, v5);
  objc_msgSend_setMaskCenter_(v4, v9, v10, v11, *&self->_radius);
  LODWORD(v12) = *&self->_maskCenter[4];
  objc_msgSend_setMaskRadius_(v4, v13, v14, v15, v12);
  objc_msgSend_setMaskEnabled_(v4, v16, LOBYTE(self->_maskRadius), v17);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectDoughnutBokeh;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  *&self->_radius = sub_1AF163AA0(self->super._cameraEffect);
  *&self->_maskCenter[4] = sub_1AF160E58(self->super._cameraEffect);
  LOBYTE(self->_maskRadius) = sub_1AF163B3C(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B6CE8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = VFXCameraEffectDoughnutBokeh;
  [(VFXCameraEffect *)&v12 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"radius", v7, v5);
  sub_1AF371A30(coder, @"maskCenter", *&self->_radius);
  LODWORD(v8) = *&self->_maskCenter[4];
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"maskRadius", v10, v8);
  objc_msgSend_encodeBool_forKey_(coder, v11, LOBYTE(self->_maskRadius), @"maskEnabled");
}

- (VFXCameraEffectDoughnutBokeh)initWithCoder:(id)coder
{
  v33.receiver = self;
  v33.super_class = VFXCameraEffectDoughnutBokeh;
  v7 = [(VFXCameraEffect *)&v33 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(coder, v11, @"radius", v12);
    objc_msgSend_setRadius_(v7, v13, v14, v15);
    v16 = sub_1AF371B84(coder, @"maskCenter");
    objc_msgSend_setMaskCenter_(v7, v17, v18, v19, v16);
    objc_msgSend_decodeFloatForKey_(coder, v20, @"maskRadius", v21);
    objc_msgSend_setMaskRadius_(v7, v22, v23, v24);
    v27 = objc_msgSend_decodeBoolForKey_(coder, v25, @"maskEnabled", v26);
    objc_msgSend_setMaskEnabled_(v7, v28, v27, v29);
    objc_msgSend_setImmediateMode_(VFXTransaction, v30, v8, v31);
  }

  return v7;
}

@end