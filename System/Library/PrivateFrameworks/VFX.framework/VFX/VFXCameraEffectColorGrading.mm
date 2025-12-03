@interface VFXCameraEffectColorGrading
+ (id)colorGrading;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (VFXCameraEffectColorGrading)initWithCoder:(id)coder;
- (__n128)gainColor;
- (__n128)gammaColor;
- (__n128)liftColor;
- (double)createCFXObject;
- (float)contrast;
- (float)gainOffset;
- (float)gammaOffset;
- (float)liftOffset;
- (float)saturation;
- (float)whiteBalanceTemperature;
- (float)whiteBalanceTint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lookupTable;
- (id)valueForKey:(id)key;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setContrast:(float)contrast;
- (void)setGainColor:(VFXCameraEffectColorGrading *)self;
- (void)setGainOffset:(float)offset;
- (void)setGammaColor:(VFXCameraEffectColorGrading *)self;
- (void)setGammaOffset:(float)offset;
- (void)setLiftColor:(VFXCameraEffectColorGrading *)self;
- (void)setLiftOffset:(float)offset;
- (void)setLookupTable:(id)table;
- (void)setSaturation:(float)saturation;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWhiteBalanceTemperature:(float)temperature;
- (void)setWhiteBalanceTint:(float)tint;
@end

@implementation VFXCameraEffectColorGrading

- (double)createCFXObject
{
  if (qword_1ED73AE18 != -1)
  {
    sub_1AFDD6E60();
  }

  v0 = sub_1AF0D160C(qword_1ED73AE10, 0xB0uLL);
  *(v0 + 64) = 1;
  result = 0.00781250185;
  *(v0 + 72) = xmmword_1AFE20670;
  *(v0 + 184) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  return result;
}

- (void)dealloc
{
  objc_msgSend_parentWillDie_(self->_lookupTable, a2, self, v2);

  v4.receiver = self;
  v4.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v4 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  lookupTable = self->_lookupTable;
  if (lookupTable)
  {
    (*(block + 2))(block, lookupTable, 1, 0);
  }

  v8.receiver = self;
  v8.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v8 enumerateReferencesForOperation:operation usingBlock:block];
}

- (float)saturation
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

- (void)setSaturation:(float)saturation
{
  if (self->super._isPresentationObject || *(&self->super._enabled + 1) != saturation)
  {
    v7 = v3;
    v8 = v4;
    *(&self->super._enabled + 1) = saturation;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2108;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    saturationCopy = saturation;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"saturation", v5);
  }
}

- (float)contrast
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
  v11 = sub_1AF160C84(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setContrast:(float)contrast
{
  if (self->super._isPresentationObject || self->_saturation != contrast)
  {
    v7 = v3;
    v8 = v4;
    self->_saturation = contrast;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2268;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    contrastCopy = contrast;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"contrast", v5);
  }
}

- (float)whiteBalanceTemperature
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
  v11 = sub_1AF160D20(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setWhiteBalanceTemperature:(float)temperature
{
  if (self->super._isPresentationObject || self->_contrast != temperature)
  {
    v7 = v3;
    v8 = v4;
    self->_contrast = temperature;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B23C8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    temperatureCopy = temperature;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whiteBalanceTemperature", v5);
  }
}

- (float)whiteBalanceTint
{
  if (!self->super._isPresentationObject)
  {
    return self->_whiteBalanceTemperature;
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

- (void)setWhiteBalanceTint:(float)tint
{
  if (self->super._isPresentationObject || self->_whiteBalanceTemperature != tint)
  {
    v7 = v3;
    v8 = v4;
    self->_whiteBalanceTemperature = tint;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2528;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    tintCopy = tint;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"whiteBalanceTint", v5);
  }
}

- (__n128)liftColor
{
  if (self[1].n128_u8[12] == 1)
  {
    v5 = objc_msgSend_worldRef(self, a2, a3, a4);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
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
    return self[5];
  }

  return result;
}

- (void)setLiftColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_liftColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_liftColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2694;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"liftColor", v4);
  }
}

- (float)liftOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_liftOffset;
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

- (void)setLiftOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_liftOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_liftOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B27F4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    offsetCopy = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"liftOffset", v5);
  }
}

- (__n128)gammaColor
{
  if (self[1].n128_u8[12] == 1)
  {
    v5 = objc_msgSend_worldRef(self, a2, a3, a4);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
    result = sub_1AF1628E8(v10);
    if (v9)
    {
      v12 = result;
      sub_1AF1CEA9C(v9);
      return v12;
    }
  }

  else
  {
    return self[7];
  }

  return result;
}

- (void)setGammaColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_gammaColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_gammaColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2960;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gammaColor", v4);
  }
}

- (float)gammaOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_gammaOffset;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF16298C(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setGammaOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_gammaOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_gammaOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2AC0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    offsetCopy = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gammaOffset", v5);
  }
}

- (__n128)gainColor
{
  if (self[1].n128_u8[12] == 1)
  {
    v5 = objc_msgSend_worldRef(self, a2, a3, a4);
    v9 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5);
    }

    v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
    result = sub_1AF162A28(v10);
    if (v9)
    {
      v12 = result;
      sub_1AF1CEA9C(v9);
      return v12;
    }
  }

  else
  {
    return self[9];
  }

  return result;
}

- (void)setGainColor:(VFXCameraEffectColorGrading *)self
{
  if (self->super._isPresentationObject || (v3 = vceqq_f32(*self->_gainColor, v2), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) == 0))
  {
    *self->_gainColor = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2B2C2C;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gainColor", v4);
  }
}

- (float)gainOffset
{
  if (!self->super._isPresentationObject)
  {
    return self->_gainOffset;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF162ACC(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return v11;
}

- (void)setGainOffset:(float)offset
{
  if (self->super._isPresentationObject || self->_gainOffset != offset)
  {
    v7 = v3;
    v8 = v4;
    self->_gainOffset = offset;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B2D8C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    offsetCopy = offset;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"gainOffset", v5);
  }
}

- (id)lookupTable
{
  if (!self->super._isPresentationObject)
  {
    return self->_lookupTable;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_cfxObject(self, v6, v7, v8);
  v11 = sub_1AF162BF0(v10);
  if (v11)
  {
    v12 = sub_1AF16CDEC(v11);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_9;
  }

  v12 = 0;
  if (v9)
  {
LABEL_9:
    sub_1AF1CEA9C(v9);
  }

  return v12;
}

- (void)setLookupTable:(id)table
{
  lookupTable = self->_lookupTable;
  if (lookupTable != table || self->super._isPresentationObject)
  {

    self->_lookupTable = table;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2B2F0C;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = table;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor", v3))
  {
    objc_msgSend_liftColor(self, v7, v8, v9);
LABEL_7:
    *v4 = v10;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"gammaColor", v9))
  {
    objc_msgSend_gammaColor(self, v11, v12, v13);
    goto LABEL_7;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v11, @"gainColor", v13);
  if (isEqualToString)
  {
    objc_msgSend_gainColor(self, v15, v16, v17);
    goto LABEL_7;
  }

  return isEqualToString;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_liftColor(self, v6, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(key, v6, @"gammaColor", v8))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_gammaColor(self, v13, v14, v15);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v13, @"gainColor", v15))
    {
      v20.receiver = self;
      v20.super_class = VFXCameraEffectColorGrading;
      return [(VFXCameraEffectColorGrading *)&v20 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_gainColor(self, v16, v17, v18);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"liftColor", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setLiftColor_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"gammaColor", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14, v15);

    objc_msgSend_setGammaColor_(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"gainColor", v15))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20, v21);

    objc_msgSend_setGainColor_(self, v22, v23, v24);
  }

  else
  {
    v25.receiver = self;
    v25.super_class = VFXCameraEffectColorGrading;
    [(VFXCameraEffectColorGrading *)&v25 setValue:value forKey:key];
  }
}

+ (id)colorGrading
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v51.receiver = self;
  v51.super_class = VFXCameraEffectColorGrading;
  v4 = [(VFXCameraEffect *)&v51 copyWithZone:zone];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_setSaturation_(v4, v6, v7, v8, v5);
  *&v9 = self->_saturation;
  objc_msgSend_setContrast_(v4, v10, v11, v12, v9);
  *&v13 = self->_contrast;
  objc_msgSend_setWhiteBalanceTemperature_(v4, v14, v15, v16, v13);
  *&v17 = self->_whiteBalanceTemperature;
  objc_msgSend_setWhiteBalanceTint_(v4, v18, v19, v20, v17);
  objc_msgSend_setLiftColor_(v4, v21, v22, v23, *self->_liftColor);
  *&v24 = self->_liftOffset;
  objc_msgSend_setLiftOffset_(v4, v25, v26, v27, v24);
  objc_msgSend_setGammaColor_(v4, v28, v29, v30, *self->_gammaColor);
  *&v31 = self->_gammaOffset;
  objc_msgSend_setGammaOffset_(v4, v32, v33, v34, v31);
  objc_msgSend_setGainColor_(v4, v35, v36, v37, *self->_gainColor);
  *&v38 = self->_gainOffset;
  objc_msgSend_setGainOffset_(v4, v39, v40, v41, v38);
  v45 = objc_msgSend_copy(self->_lookupTable, v42, v43, v44);
  objc_msgSend__setParent_(v45, v46, v4, v47);
  objc_msgSend_setLookupTable_(v4, v48, v45, v49);

  return v4;
}

- (void)_updateModelFromPresentation
{
  v3.receiver = self;
  v3.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v3 _updateModelFromPresentation];
  *(&self->super._enabled + 1) = sub_1AF160FEC(self->super._cameraEffect);
  self->_saturation = sub_1AF160C84(self->super._cameraEffect);
  self->_contrast = sub_1AF160D20(self->super._cameraEffect);
  self->_whiteBalanceTemperature = sub_1AF160DBC(self->super._cameraEffect);
  *self->_liftColor = sub_1AF162408(self->super._cameraEffect);
  self->_liftOffset = sub_1AF1624AC(self->super._cameraEffect);
  *self->_gammaColor = sub_1AF1628E8(self->super._cameraEffect);
  self->_gammaOffset = sub_1AF16298C(self->super._cameraEffect);
  *self->_gainColor = sub_1AF162A28(self->super._cameraEffect);
  self->_gainOffset = sub_1AF162ACC(self->super._cameraEffect);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B34E4;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)encodeWithCoder:(id)coder
{
  v28.receiver = self;
  v28.super_class = VFXCameraEffectColorGrading;
  [(VFXCameraEffect *)&v28 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._enabled + 1);
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"saturation", v7, v5);
  *&v8 = self->_saturation;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"contrast", v10, v8);
  *&v11 = self->_contrast;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"whiteBalanceTemperature", v13, v11);
  *&v14 = self->_whiteBalanceTemperature;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"whiteBalanceTint", v16, v14);
  sub_1AF371A8C(coder, @"liftColor", *self->_liftColor);
  *&v17 = self->_liftOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"liftOffset", v19, v17);
  sub_1AF371A8C(coder, @"gammaColor", *self->_gammaColor);
  *&v20 = self->_gammaOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"gammaOffset", v22, v20);
  sub_1AF371A8C(coder, @"gainColor", *self->_gainColor);
  *&v23 = self->_gainOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v24, @"gainOffset", v25, v23);
  lookupTable = self->_lookupTable;
  if (lookupTable)
  {
    objc_msgSend_encodeObject_forKey_(coder, v26, lookupTable, @"lookupTable");
  }
}

- (VFXCameraEffectColorGrading)initWithCoder:(id)coder
{
  v68.receiver = self;
  v68.super_class = VFXCameraEffectColorGrading;
  v7 = [(VFXCameraEffect *)&v68 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(coder, v11, @"saturation", v12);
    objc_msgSend_setSaturation_(v7, v13, v14, v15);
    objc_msgSend_decodeFloatForKey_(coder, v16, @"contrast", v17);
    objc_msgSend_setContrast_(v7, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"whiteBalanceTemperature", v22);
    objc_msgSend_setWhiteBalanceTemperature_(v7, v23, v24, v25);
    objc_msgSend_decodeFloatForKey_(coder, v26, @"whiteBalanceTint", v27);
    objc_msgSend_setWhiteBalanceTint_(v7, v28, v29, v30);
    v31 = sub_1AF371BC4(coder, @"liftColor");
    objc_msgSend_setLiftColor_(v7, v32, v33, v34, v31);
    objc_msgSend_decodeFloatForKey_(coder, v35, @"liftOffset", v36);
    objc_msgSend_setLiftOffset_(v7, v37, v38, v39);
    v40 = sub_1AF371BC4(coder, @"gammaColor");
    objc_msgSend_setGammaColor_(v7, v41, v42, v43, v40);
    objc_msgSend_decodeFloatForKey_(coder, v44, @"gammaOffset", v45);
    objc_msgSend_setGammaOffset_(v7, v46, v47, v48);
    v49 = sub_1AF371BC4(coder, @"gainColor");
    objc_msgSend_setGainColor_(v7, v50, v51, v52, v49);
    objc_msgSend_decodeFloatForKey_(coder, v53, @"gainOffset", v54);
    objc_msgSend_setGainOffset_(v7, v55, v56, v57);
    if (objc_msgSend_containsValueForKey_(coder, v58, @"lookupTable", v59))
    {
      v62 = objc_opt_class();
      v64 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v63, v62, @"lookupTable");
      objc_msgSend_setLookupTable_(v7, v65, v64, v66);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v60, v8, v61);
  }

  return v7;
}

@end