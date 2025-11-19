@interface VFXCameraEffectBloom
+ (id)bloom;
- (BOOL)rawFloat3ForKey:(id)a3 value:;
- (BOOL)useHighQuality;
- (VFXCameraEffectBloom)initWithCoder:(id)a3;
- (__n128)colorFilter;
- (double)createCFXObject;
- (float)contrast;
- (float)intensity;
- (float)saturation;
- (float)threshold;
- (float)thresholdSmoothness;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForKey:(id)a3;
- (int64_t)iterationCount;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)encodeWithCoder:(id)a3;
- (void)setColorFilter:(VFXCameraEffectBloom *)self;
- (void)setContrast:(float)a3;
- (void)setIntensity:(float)a3;
- (void)setIterationCount:(int64_t)a3;
- (void)setSaturation:(float)a3;
- (void)setThreshold:(float)a3;
- (void)setThresholdSmoothness:(float)a3;
- (void)setUseHighQuality:(BOOL)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation VFXCameraEffectBloom

- (double)createCFXObject
{
  if (qword_1ED73AE48 != -1)
  {
    sub_1AFDD6E4C();
  }

  v0 = sub_1AF0D160C(qword_1ED73AE40, 0x70uLL);
  *(v0 + 64) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 72) = result;
  *(v0 + 80) = 1036831949;
  *(v0 + 84) = 1;
  __asm { FMOV            V1.4S, #1.0 }

  *(v0 + 96) = _Q1;
  *(v0 + 112) = result;
  *(v0 + 120) = 10;
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
    v5[2] = sub_1AF2AFE50;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)threshold
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

- (void)setThreshold:(float)a3
{
  if (self->super._isPresentationObject || self->_intensity != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2AFFB0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"threshold", v5);
  }
}

- (float)thresholdSmoothness
{
  if (!self->super._isPresentationObject)
  {
    return self->_threshold;
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

- (void)setThresholdSmoothness:(float)a3
{
  if (self->super._isPresentationObject || self->_threshold != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_threshold = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0110;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"thresholdSmoothness", v5);
  }
}

- (BOOL)useHighQuality
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
    thresholdSmoothness_low = sub_1AF1611EC(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9);
    }
  }

  else
  {
    thresholdSmoothness_low = LOBYTE(self->_thresholdSmoothness);
  }

  return thresholdSmoothness_low & 1;
}

- (void)setUseHighQuality:(BOOL)a3
{
  if (self->super._isPresentationObject || LOBYTE(self->_thresholdSmoothness) != a3)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self->_thresholdSmoothness) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B026C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"useHighQuality", v5);
  }
}

- (__n128)colorFilter
{
  if (a1[1].n128_u8[12] == 1)
  {
    v5 = objc_msgSend_worldRef(a1, a2, a3, a4);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_cfxObject(a1, v6, v7, v8);
    result = sub_1AF162408(v10);
    if (v9)
    {
      v12 = result;
      sub_1AF1CEA9C(v9);
      return v12;
    }
  }

  else
  {
    return a1[5];
  }

  return result;
}

- (void)setColorFilter:(VFXCameraEffectBloom *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*&self->_colorFilter[3], v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *&self->_colorFilter[3] = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B03D8;
    v4[3] = &unk_1E7A7E5C8;
    v6 = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"colorFilter", v4);
  }
}

- (float)contrast
{
  if (!self->super._isPresentationObject)
  {
    return self->_contrast;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF1624AC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setContrast:(float)a3
{
  if (self->super._isPresentationObject || self->_contrast != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_contrast = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0538;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"contrast", v5);
  }
}

- (float)saturation
{
  if (!self->super._isPresentationObject)
  {
    return self->_saturation;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF162548(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setSaturation:(float)a3
{
  if (self->super._isPresentationObject || self->_saturation != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_saturation = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B0698;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"saturation", v5);
  }
}

- (int64_t)iterationCount
{
  if (!self->super._isPresentationObject)
  {
    return self->_iterationCount;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF1625E4(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setIterationCount:(int64_t)a3
{
  if (self->super._isPresentationObject || self->_iterationCount != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_iterationCount = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B07F0;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"iterationCount", v5);
  }
}

- (BOOL)rawFloat3ForKey:(id)a3 value:
{
  v4 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(a3, a2, @"colorFilter", v3);
  if (isEqualToString)
  {
    objc_msgSend_colorFilter(self, v6, v7, v8);
    *v4 = v10;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"colorFilter", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_colorFilter(self, v6, v7, v8);

    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VFXCameraEffectBloom;
    return [(VFXCameraEffectBloom *)&v14 valueForKey:a3];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (objc_msgSend_isEqualToString_(a4, a2, @"colorFilter", a4))
  {
    objc_msgSend_VFXFloat3Value(a3, v7, v8, v9);

    objc_msgSend_setColorFilter_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXCameraEffectBloom;
    [(VFXCameraEffectBloom *)&v13 setValue:a3 forKey:a4];
  }
}

+ (id)bloom
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33.receiver = self;
  v33.super_class = VFXCameraEffectBloom;
  v4 = [(VFXCameraEffect *)&v33 copyWithZone:a3];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setIntensity_(v4, v6, v7, v8, v5);
  *&v9 = self->_intensity;
  objc_msgSend_setThreshold_(v4, v10, v11, v12, v9);
  *&v13 = self->_threshold;
  objc_msgSend_setThresholdSmoothness_(v4, v14, v15, v16, v13);
  objc_msgSend_setUseHighQuality_(v4, v17, LOBYTE(self->_thresholdSmoothness), v18);
  objc_msgSend_setColorFilter_(v4, v19, v20, v21, *&self->_colorFilter[3]);
  *&v22 = self->_contrast;
  objc_msgSend_setContrast_(v4, v23, v24, v25, v22);
  *&v26 = self->_saturation;
  objc_msgSend_setSaturation_(v4, v27, v28, v29, v26);
  objc_msgSend_setIterationCount_(v4, v30, self->_iterationCount, v31);
  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectBloom;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  self->_intensity = sub_1AF160C84(self->super._cameraEffect);
  self->_threshold = sub_1AF160D20(self->super._cameraEffect);
  LOBYTE(self->_thresholdSmoothness) = sub_1AF1611EC(self->super._cameraEffect);
  *&self->_colorFilter[3] = sub_1AF162408(self->super._cameraEffect);
  self->_contrast = sub_1AF1624AC(self->super._cameraEffect);
  self->_saturation = sub_1AF162548(self->super._cameraEffect);
  self->_iterationCount = sub_1AF1625E4(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B0C28;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = VFXCameraEffectBloom;
  [(VFXCameraEffect *)&v22 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"intensity", v7, v5);
  *&v8 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"threshold", v10, v8);
  *&v11 = self->_threshold;
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"thresholdSmoothness", v13, v11);
  objc_msgSend_encodeBool_forKey_(a3, v14, LOBYTE(self->_thresholdSmoothness), @"useHighQuality");
  sub_1AF371A8C(a3, @"colorFilter", *&self->_colorFilter[3]);
  *&v15 = self->_contrast;
  objc_msgSend_encodeFloat_forKey_(a3, v16, @"contrast", v17, v15);
  *&v18 = self->_saturation;
  objc_msgSend_encodeFloat_forKey_(a3, v19, @"saturation", v20, v18);
  objc_msgSend_encodeInteger_forKey_(a3, v21, self->_iterationCount, @"iterationCount");
}

- (VFXCameraEffectBloom)initWithCoder:(id)a3
{
  v53.receiver = self;
  v53.super_class = VFXCameraEffectBloom;
  v7 = [(VFXCameraEffect *)&v53 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"intensity", v12);
    objc_msgSend_setIntensity_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"threshold", v17);
    objc_msgSend_setThreshold_(v7, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(a3, v21, @"thresholdSmoothness", v22);
    objc_msgSend_setThresholdSmoothness_(v7, v23, v24, v25);
    v28 = objc_msgSend_decodeBoolForKey_(a3, v26, @"useHighQuality", v27);
    objc_msgSend_setUseHighQuality_(v7, v29, v28, v30);
    v31 = sub_1AF371BC4(a3, @"colorFilter");
    objc_msgSend_setColorFilter_(v7, v32, v33, v34, v31);
    objc_msgSend_decodeFloatForKey_(a3, v35, @"contrast", v36);
    objc_msgSend_setContrast_(v7, v37, v38, v39);
    objc_msgSend_decodeFloatForKey_(a3, v40, @"saturation", v41);
    objc_msgSend_setSaturation_(v7, v42, v43, v44);
    v47 = objc_msgSend_decodeIntegerForKey_(a3, v45, @"iterationCount", v46);
    objc_msgSend_setIterationCount_(v7, v48, v47, v49);
    objc_msgSend_setImmediateMode_(VFXTransaction, v50, v8, v51);
  }

  return v7;
}

@end