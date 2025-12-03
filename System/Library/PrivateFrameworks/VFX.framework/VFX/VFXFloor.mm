@interface VFXFloor
+ (id)floor;
- (VFXFloor)init;
- (VFXFloor)initWithCoder:(id)coder;
- (VFXFloor)initWithFloorGeometryRef:(__CFXFloor *)ref;
- (float)length;
- (float)reflectionFalloffEnd;
- (float)reflectionFalloffStart;
- (float)reflectionResolutionScaleFactor;
- (float)reflectivity;
- (float)width;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)__createCFObject;
- (unint64_t)reflectionCategoryBitMask;
- (unint64_t)reflectionSampleCount;
- (void)_customDecodingOfVFXFloor:(id)floor;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLength:(float)length;
- (void)setReflectionCategoryBitMask:(unint64_t)mask;
- (void)setReflectionFalloffEnd:(float)end;
- (void)setReflectionFalloffStart:(float)start;
- (void)setReflectionResolutionScaleFactor:(float)factor;
- (void)setReflectionSampleCount:(unint64_t)count;
- (void)setReflectivity:(float)reflectivity;
- (void)setWidth:(float)width;
@end

@implementation VFXFloor

- (uint64_t)__createCFObject
{
  if (qword_1ED73ACD8 != -1)
  {
    sub_1AFDD8384();
  }

  v0 = sub_1AF0D160C(qword_1ED73ACD0, 0xE8uLL);
  sub_1AF1B2AF0(v0);
  *(v0 + 220) = 1065353216;
  *(v0 + 240) = -1;
  v1 = sub_1AF22917C(0, 10, 10, 0, 2.0, -2.0, 0.0);
  sub_1AF1B2C80(v0, v1);
  CFRelease(v1);
  sub_1AF16ED28(v0, 0.25);
  return v0;
}

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_modelRef(self, a2, v2, v3);
  self->_reflectivity = sub_1AF16EC88(v5);
  v9 = objc_msgSend_modelRef(self, v6, v7, v8);
  self->_reflectionFalloffStart = sub_1AF16EDB0(v9);
  v13 = objc_msgSend_modelRef(self, v10, v11, v12);
  self->_reflectionFalloffEnd = sub_1AF16EE80(v13);
  v17 = objc_msgSend_modelRef(self, v14, v15, v16);
  self->_reflectionResolutionScaleFactor = sub_1AF16EF50(v17);
  v21 = objc_msgSend_modelRef(self, v18, v19, v20);
  self->_reflectionCategoryBitMask = sub_1AF16F0D8(v21);
  v22.receiver = self;
  v22.super_class = VFXFloor;
  [(VFXModel *)&v22 _updateModelFromPresentation];
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF31755C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXFloor;
  [(VFXModel *)&v3 _updatePresentationFromModel];
}

- (VFXFloor)init
{
  v3 = [VFXFloor __createCFObject]_0();
  v28.receiver = self;
  v28.super_class = VFXFloor;
  v7 = [(VFXModel *)&v28 initWithModelRef:v3];
  if (v7)
  {
    v8 = objc_msgSend_material(VFXMaterial, v4, v5, v6);
    objc_msgSend_setDoubleSided_(v8, v9, 1, v10);
    v14 = objc_msgSend_diffuse(v8, v11, v12, v13);
    objc_msgSend_setMinificationFilter_(v14, v15, 2, v16);
    objc_msgSend_setMagnificationFilter_(v14, v17, 2, v18);
    objc_msgSend_setMipFilter_(v14, v19, 2, v20);
    objc_msgSend_setWrapS_(v14, v21, 2, v22);
    objc_msgSend_setWrapT_(v14, v23, 2, v24);
    objc_msgSend_setFirstMaterial_(v7, v25, v8, v26);
  }

  CFRelease(v3);
  return v7;
}

- (VFXFloor)initWithFloorGeometryRef:(__CFXFloor *)ref
{
  v9.receiver = self;
  v9.super_class = VFXFloor;
  v3 = [(VFXModel *)&v9 initWithModelRef:ref];
  v7 = v3;
  if (v3)
  {
    objc_msgSend__updateModelFromPresentation(v3, v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VFXFloor;
  [(VFXModel *)&v2 dealloc];
}

+ (id)floor
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setReflectionResolutionScaleFactor:(float)factor
{
  if (self->_reflectionResolutionScaleFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionResolutionScaleFactor = factor;
    *(self + 176) = *(self + 176) & 0xFD | (2 * (factor != 0.0));
    v5[1] = 3221225472;
    v5[0] = MEMORY[0x1E69E9820];
    v5[2] = sub_1AF317868;
    v5[3] = &unk_1E7A7E270;
    if (factor == 0.0)
    {
      factor = 0.5;
    }

    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setReflectionCategoryBitMask:(unint64_t)mask
{
  if (self->_reflectionCategoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_reflectionCategoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF31793C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)reflectionCategoryBitMask
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionCategoryBitMask;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16F0D8(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setWidth:(float)width
{
  if (self->_width != width)
  {
    v7 = v3;
    v8 = v4;
    self->_width = width;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317A98;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    widthCopy = width;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"width", v5);
  }
}

- (float)width
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_width;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16F0B8(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setLength:(float)length
{
  if (self->_length != length)
  {
    v7 = v3;
    v8 = v4;
    self->_length = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317BFC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    lengthCopy = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"length", v5);
  }
}

- (float)length
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_length;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16F0C8(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (float)reflectionFalloffEnd
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionFalloffEnd;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16EE80(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setReflectionFalloffEnd:(float)end
{
  if (self->_reflectionFalloffEnd != end)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionFalloffEnd = end;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317DD8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    endCopy = end;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectionFalloffEnd", v5);
  }
}

- (float)reflectionFalloffStart
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionFalloffStart;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16EDB0(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setReflectionFalloffStart:(float)start
{
  if (self->_reflectionFalloffStart != start)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectionFalloffStart = start;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF317F34;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    startCopy = start;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectionFalloffStart", v5);
  }
}

- (float)reflectionResolutionScaleFactor
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionResolutionScaleFactor;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16EF50(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (unint64_t)reflectionSampleCount
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectionSampleCount;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16F008(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setReflectionSampleCount:(unint64_t)count
{
  if (self->_reflectionSampleCount != count)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_reflectionSampleCount = count;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF318100;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = count;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)reflectivity
{
  if ((*(self + 176) & 1) == 0)
  {
    return self->_reflectivity;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend_modelRef(self, v7, v8, v9);
  v5 = sub_1AF16EC88(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setReflectivity:(float)reflectivity
{
  if (self->_reflectivity != reflectivity)
  {
    v7 = v3;
    v8 = v4;
    self->_reflectivity = reflectivity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF31825C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    reflectivityCopy = reflectivity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"reflectivity", v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_begin(VFXTransaction, v5, v6, v7);
  objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
  objc_msgSend__setupObjCModelFrom_(v4, v10, self, v11);
  objc_msgSend_reflectivity(self, v12, v13, v14);
  objc_msgSend_setReflectivity_(v4, v15, v16, v17);
  objc_msgSend_reflectionFalloffEnd(self, v18, v19, v20);
  objc_msgSend_setReflectionFalloffEnd_(v4, v21, v22, v23);
  objc_msgSend_reflectionFalloffStart(self, v24, v25, v26);
  objc_msgSend_setReflectionFalloffStart_(v4, v27, v28, v29);
  objc_msgSend_reflectionResolutionScaleFactor(self, v30, v31, v32);
  objc_msgSend_setReflectionResolutionScaleFactor_(v4, v33, v34, v35);
  v39 = objc_msgSend_reflectionSampleCount(self, v36, v37, v38);
  objc_msgSend_setReflectionSampleCount_(v4, v40, v39, v41);
  v45 = objc_msgSend_reflectionCategoryBitMask(self, v42, v43, v44);
  objc_msgSend_setReflectionCategoryBitMask_(v4, v46, v45, v47);
  objc_msgSend_width(self, v48, v49, v50);
  objc_msgSend_setWidth_(v4, v51, v52, v53);
  objc_msgSend_length(self, v54, v55, v56);
  objc_msgSend_setLength_(v4, v57, v58, v59);
  objc_msgSend__copyAnimationsFrom_(v4, v60, self, v61);
  objc_msgSend__copyBindingsFrom_(v4, v62, self, v63);
  objc_msgSend_commitImmediate(VFXTransaction, v64, v65, v66);
  return v4;
}

- (void)_customDecodingOfVFXFloor:(id)floor
{
  v5 = objc_msgSend_modelRef(self, a2, floor, v3);
  self->_reflectivity = sub_1AF16EC88(v5);
  v9 = objc_msgSend_modelRef(self, v6, v7, v8);
  self->_reflectionCategoryBitMask = sub_1AF16F0D8(v9);
}

- (void)encodeWithCoder:(id)coder
{
  v24.receiver = self;
  v24.super_class = VFXFloor;
  [(VFXModel *)&v24 encodeWithCoder:?];
  *&v5 = self->_reflectivity;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"reflectivity", v7, v5);
  *&v8 = self->_reflectionFalloffStart;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"reflectionFalloffStart", v10, v8);
  *&v11 = self->_reflectionFalloffEnd;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"reflectionFalloffEnd", v13, v11);
  *&v14 = self->_width;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"width", v16, v14);
  *&v17 = self->_length;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"length", v19, v17);
  objc_msgSend_encodeInteger_forKey_(coder, v20, self->_reflectionCategoryBitMask, @"reflectionCategoryBitMask");
  if ((*(self + 176) & 2) != 0)
  {
    *&v23 = self->_reflectionResolutionScaleFactor;
    objc_msgSend_encodeFloat_forKey_(coder, v21, @"reflectionResolutionScaleFactor", v22, v23);
  }
}

- (VFXFloor)initWithCoder:(id)coder
{
  v50.receiver = self;
  v50.super_class = VFXFloor;
  v7 = [(VFXModel *)&v50 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXFloor_(v7, v11, coder, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"reflectivity", v14);
    objc_msgSend_setReflectivity_(v7, v15, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"reflectionFalloffStart", v19);
    objc_msgSend_setReflectionFalloffStart_(v7, v20, v21, v22);
    objc_msgSend_decodeFloatForKey_(coder, v23, @"reflectionFalloffEnd", v24);
    objc_msgSend_setReflectionFalloffEnd_(v7, v25, v26, v27);
    objc_msgSend_decodeFloatForKey_(coder, v28, @"width", v29);
    objc_msgSend_setWidth_(v7, v30, v31, v32);
    objc_msgSend_decodeFloatForKey_(coder, v33, @"length", v34);
    objc_msgSend_setLength_(v7, v35, v36, v37);
    if (objc_msgSend_containsValueForKey_(coder, v38, @"reflectionCategoryBitMask", v39))
    {
      v42 = objc_msgSend_decodeIntegerForKey_(coder, v40, @"reflectionCategoryBitMask", v41);
      objc_msgSend_setReflectionCategoryBitMask_(v7, v43, v42, v44);
    }

    if (objc_msgSend_containsValueForKey_(coder, v40, @"reflectionResolutionScaleFactor", v41))
    {
      objc_msgSend_decodeFloatForKey_(coder, v45, @"reflectionResolutionScaleFactor", v46);
      if (v48 != 0.0)
      {
        objc_msgSend_setReflectionResolutionScaleFactor_(v7, v45, v47, v46);
        *(v7 + 176) |= 2u;
      }
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v45, v8, v46);
  }

  return v7;
}

@end