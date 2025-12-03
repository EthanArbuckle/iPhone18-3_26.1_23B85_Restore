@interface VFXShape
+ (id)shapeWithPath:(id)path extrusionDepth:(float)depth;
- ($CB22053AE18FFFAA163CB47F1C1927D8)params;
- (BOOL)getBoundingBoxMin:(VFXShape *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXShape *)self radius:(SEL)radius;
- (UIBezierPath)chamferProfile;
- (UIBezierPath)path;
- (VFXShape)init;
- (VFXShape)initWithCoder:(id)coder;
- (float)chamferRadius;
- (float)discretizedStraightLineMaxLength;
- (float)extrusionDepth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__CFXShapeGeometry *)ref;
- (id)presentationModel;
- (int64_t)chamferMode;
- (int64_t)primitiveType;
- (uint64_t)__createCFObject;
- (void)_customDecodingOfVFXShape:(id)shape;
- (void)_customEncodingOfVFXShape:(id)shape;
- (void)_updateModelFromPresentation:(__CFXShapeGeometry *)presentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setChamferMode:(int64_t)mode;
- (void)setChamferProfile:(id)profile;
- (void)setChamferRadius:(float)radius;
- (void)setDiscretizedStraightLineMaxLength:(float)length;
- (void)setExtrusionDepth:(float)depth;
- (void)setPath:(id)path;
- (void)setPrimitiveType:(int64_t)type;
@end

@implementation VFXShape

- (uint64_t)__createCFObject
{
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  v0 = sub_1AF0D160C(qword_1ED73ABA8, 0x120uLL);
  sub_1AF1B2AF0(v0);
  *(v0 + 208) = 0;
  *(v0 + 212) = 1065353216;
  *(v0 + 220) = 0;
  *(v0 + 228) = 2139095039;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 120) = off_1F24E8338;
  return v0;
}

- (void)_updateModelFromPresentation:(__CFXShapeGeometry *)presentation
{
  self->_primitiveType = sub_1AF1C5A20(presentation);
  self->_chamferRadius = sub_1AF1C5804(presentation);
  self->_extrusionDepth = sub_1AF1C596C(presentation);
  self->_chamferProfile = sub_1AF1C5AD4(presentation);
  self->_discretizedStraightLineMaxLength = sub_1AF1C58B8(presentation);
  self->_path = sub_1AF16F0D8(presentation);
  self->_chamferMode = sub_1AF1C5750(presentation);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF32B73C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (VFXShape)init
{
  v3 = [VFXShape __createCFObject]_0();
  v14.receiver = self;
  v14.super_class = VFXShape;
  v4 = [(VFXModel *)&v14 initWithModelRef:v3];
  v5 = v4;
  if (v4)
  {
    v13.receiver = v4;
    v13.super_class = VFXShape;
    [(VFXModel *)&v13 _updateModelFromPresentation];
    v9 = objc_msgSend_modelRef(v5, v6, v7, v8);
    objc_msgSend__updateModelFromPresentation_(v5, v10, v9, v11);
  }

  CFRelease(v3);
  return v5;
}

- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__CFXShapeGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = VFXShape;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:ref];
}

- (id)presentationModel
{
  v3 = [VFXShape alloc];
  v7 = objc_msgSend_modelRef(self, v4, v5, v6);
  inited = objc_msgSend_initPresentationShapeGeometryWithShapeGeometryRef_(v3, v8, v7, v9);

  return inited;
}

+ (id)shapeWithPath:(id)path extrusionDepth:(float)depth
{
  v6 = objc_alloc_init(self);
  *&v7 = depth;
  objc_msgSend_setExtrusionDepth_(v6, v8, v9, v10, v7);
  objc_msgSend_setPath_(v6, v11, path, v12);
  return v6;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_modelDescription(self, a2, v2, v3);
  v10 = objc_msgSend_path(self, v7, v8, v9);
  objc_msgSend_extrusionDepth(self, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"<%@ | path=%@ extrusionDepth=%.3f> ", v16, v6, v10, v14);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_path(self, a2, zone, v3);
  objc_msgSend_extrusionDepth(self, v6, v7, v8);
  v32 = objc_msgSend_shapeWithPath_extrusionDepth_(VFXShape, v9, v5, v10);
  v14 = objc_msgSend_chamferMode(self, v11, v12, v13);
  objc_msgSend_setChamferMode_(v32, v15, v14, v16);
  objc_msgSend_chamferRadius(self, v17, v18, v19);
  objc_msgSend_setChamferRadius_(v32, v20, v21, v22);
  v26 = objc_msgSend_chamferProfile(self, v23, v24, v25);
  objc_msgSend_setChamferProfile_(v32, v27, v26, v28);
  objc_msgSend__setupObjCModelFrom_(v32, v29, self, v30);

  return v32;
}

- (int64_t)chamferMode
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_chamferMode;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5750(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setChamferMode:(int64_t)mode
{
  if (self->_chamferMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_chamferMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BBC4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)chamferRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_chamferRadius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5804(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setChamferRadius:(float)radius
{
  if (self->_chamferRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_chamferRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BD18;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"chamferRadius", v5);
  }
}

- (float)discretizedStraightLineMaxLength
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_discretizedStraightLineMaxLength;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C58B8(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setDiscretizedStraightLineMaxLength:(float)length
{
  if (self->_discretizedStraightLineMaxLength != length)
  {
    v7 = v3;
    v8 = v4;
    self->_discretizedStraightLineMaxLength = length;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BE64;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    lengthCopy = length;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)extrusionDepth
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_extrusionDepth;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C596C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setExtrusionDepth:(float)depth
{
  if (self->_extrusionDepth != depth)
  {
    v7 = v3;
    v8 = v4;
    self->_extrusionDepth = depth;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32BFB8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    depthCopy = depth;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"extrusionDepth", v5);
  }
}

- (int64_t)primitiveType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_primitiveType;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5A20(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setPrimitiveType:(int64_t)type
{
  if (self->_primitiveType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_primitiveType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF32C0FC;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (UIBezierPath)path
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    path = sub_1AF16F0D8(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    path = self->_path;
  }

  v15 = objc_msgSend_copy(path, v5, v6, v7);

  return v15;
}

- (void)setPath:(id)path
{
  self->_path = objc_msgSend_copy(path, v5, v6, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF32C268;
  v9[3] = &unk_1E7A7E1D0;
  v9[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
}

- (UIBezierPath)chamferProfile
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    chamferProfile = sub_1AF1C5AD4(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    chamferProfile = self->_chamferProfile;
  }

  v15 = objc_msgSend_copy(chamferProfile, v5, v6, v7);

  return v15;
}

- (void)setChamferProfile:(id)profile
{
  self->_chamferProfile = objc_msgSend_copy(profile, v5, v6, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF32C3E0;
  v9[3] = &unk_1E7A7E1D0;
  v9[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
}

- ($CB22053AE18FFFAA163CB47F1C1927D8)params
{
  retstr->var6 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  result = objc_msgSend_isPresentationObject(self, a3, v3, v4);
  if (result)
  {
    v11 = objc_msgSend_modelRef(self, v8, v9, v10);

    sub_1AF1C5230(v11, retstr);
  }

  else
  {
    retstr->var0 = self->_primitiveType;
    chamferRadius = self->_chamferRadius;
    retstr->var1 = self->_extrusionDepth;
    retstr->var2 = chamferRadius;
    discretizedStraightLineMaxLength = self->_discretizedStraightLineMaxLength;
    retstr->var3 = self->_chamferMode;
    path = self->_path;
    chamferProfile = self->_chamferProfile;
    retstr->var4 = discretizedStraightLineMaxLength;
    retstr->var5 = path;
    retstr->var6 = chamferProfile;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXShape *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, max, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  DWORD2(v21) = 0;
  *&v21 = 0;
  DWORD2(v20) = 0;
  *&v20 = 0;
  v15 = objc_msgSend_modelRef(self, v8, v9, v10);
  if (self)
  {
    objc_msgSend_params(self, v12, v13, v14);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  v16 = sub_1AF1C67A8(v15, &v21, &v20, v18);
  if (v16)
  {
    if (v5)
    {
      *v5 = v21;
    }

    if (v4)
    {
      *v4 = v20;
    }
  }

  if (v11)
  {
    sub_1AF1CEA9C(v11);
  }

  return v16;
}

- (BOOL)getBoundingSphereCenter:(VFXShape *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v20 = 0uLL;
  v15 = objc_msgSend_modelRef(self, v8, v9, v10);
  if (self)
  {
    objc_msgSend_params(self, v12, v13, v14);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  v16 = sub_1AF1C6804(v15, &v20, v18);
  if (v16)
  {
    if (v5)
    {
      *v5 = v20;
    }

    if (v4)
    {
      *v4 = HIDWORD(v20);
    }
  }

  if (v11)
  {
    sub_1AF1CEA9C(v11);
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXShape;
  [(VFXModel *)&v3 dealloc];
}

- (void)_customDecodingOfVFXShape:(id)shape
{
  v5 = sub_1AF3723C4(shape, @"chamferProfile");
  objc_msgSend_setChamferProfile_(self, v6, v5, v7);
  v9 = sub_1AF3723C4(shape, @"path");

  objc_msgSend_setPath_(self, v8, v9, v10);
}

- (void)_customEncodingOfVFXShape:(id)shape
{
  sub_1AF3721F0(shape, self->_chamferProfile, @"chamferProfile", v3);
  path = self->_path;

  sub_1AF3721F0(shape, path, @"path", v6);
}

- (void)encodeWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = VFXShape;
  [(VFXModel *)&v25 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6, v7))
  {
    v11 = objc_msgSend_modelRef(self, v8, v9, v10);
    objc_msgSend__updateModelFromPresentation_(self, v12, v11, v13);
  }

  objc_msgSend__customEncodingOfVFXShape_(self, v8, coder, v10);
  *&v14 = self->_chamferRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"chamferRadius", v16, v14);
  *&v17 = self->_extrusionDepth;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"extrusionDepth", v19, v17);
  *&v20 = self->_discretizedStraightLineMaxLength;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"discretizedStraightLineMaxLength", v22, v20);
  objc_msgSend_encodeInteger_forKey_(coder, v23, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeInteger_forKey_(coder, v24, self->_chamferMode, @"chamferMode");
}

- (VFXShape)initWithCoder:(id)coder
{
  v41.receiver = self;
  v41.super_class = VFXShape;
  v7 = [(VFXModel *)&v41 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXShape_(v7, v11, coder, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"chamferRadius", v14);
    objc_msgSend_setChamferRadius_(v7, v15, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"extrusionDepth", v19);
    objc_msgSend_setExtrusionDepth_(v7, v20, v21, v22);
    objc_msgSend_decodeFloatForKey_(coder, v23, @"discretizedStraightLineMaxLength", v24);
    objc_msgSend_setDiscretizedStraightLineMaxLength_(v7, v25, v26, v27);
    v30 = objc_msgSend_decodeIntegerForKey_(coder, v28, @"primitiveType", v29);
    objc_msgSend_setPrimitiveType_(v7, v31, v30, v32);
    v35 = objc_msgSend_decodeIntegerForKey_(coder, v33, @"chamferMode", v34);
    objc_msgSend_setChamferMode_(v7, v36, v35, v37);
    objc_msgSend_setImmediateMode_(VFXTransaction, v38, v8, v39);
  }

  return v7;
}

@end