@interface VFXReplicatorConstraint
+ (id)replicatorConstraint;
+ (id)replicatorConstraintWithTarget:(id)target;
- (VFXReplicatorConstraint)init;
- (VFXReplicatorConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (uint64_t)setOrientationOffset:(__n128)offset;
- (void)_customDecodingOfVFXReplicatorConstraint:(id)constraint;
- (void)_customEncodingOfVFXReplicatorConstraint:(id)constraint;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setPositionOffset:(VFXReplicatorConstraint *)self;
- (void)setReplicatesOrientation:(BOOL)orientation;
- (void)setReplicatesPosition:(BOOL)position;
- (void)setReplicatesScale:(BOOL)scale;
- (void)setScaleOffset:(VFXReplicatorConstraint *)self;
- (void)setTarget:(id)target;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXReplicatorConstraint

- (VFXReplicatorConstraint)init
{
  v13.receiver = self;
  v13.super_class = VFXReplicatorConstraint;
  v2 = [(VFXConstraint *)&v13 init];
  if (v2)
  {
    sub_1AF155220();
    v2->super._constraintRef = v3;
    v2->_replicateOrientation = 1;
    v2->_replicatePosition = 1;
    v2->_replicateScale = 1;
    *v2->_anon_60 = xmmword_1AFE201A0;
    *v2->_positionOffset = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *v2->_scaleOffset = _Q0;
    objc_msgSend_didInitConstraintRef(v2, v9, v10, v11);
  }

  return v2;
}

+ (id)replicatorConstraint
{
  v2 = objc_alloc_init(VFXReplicatorConstraint);

  return v2;
}

+ (id)replicatorConstraintWithTarget:(id)target
{
  v5 = objc_msgSend_replicatorConstraint(self, a2, target, v3);
  objc_msgSend_setTarget_(v5, v6, target, v7);
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_target(self, v5, v6, v7);
  objc_msgSend_setTarget_(v4, v9, v8, v10);
  v14 = objc_msgSend_replicatesOrientation(self, v11, v12, v13);
  objc_msgSend_setReplicatesOrientation_(v4, v15, v14, v16);
  v20 = objc_msgSend_replicatesPosition(self, v17, v18, v19);
  objc_msgSend_setReplicatesPosition_(v4, v21, v20, v22);
  v26 = objc_msgSend_replicatesScale(self, v23, v24, v25);
  objc_msgSend_setReplicatesScale_(v4, v27, v26, v28);
  objc_msgSend_orientationOffset(self, v29, v30, v31);
  objc_msgSend_setOrientationOffset_(v4, v32, v33, v34);
  objc_msgSend_positionOffset(self, v35, v36, v37);
  objc_msgSend_setPositionOffset_(v4, v38, v39, v40);
  objc_msgSend_scaleOffset(self, v41, v42, v43);
  objc_msgSend_setScaleOffset_(v4, v44, v45, v46);
  objc_msgSend_copyTo_(self, v47, v4, v48);
  return v4;
}

- (void)setTarget:(id)target
{
  target = self->_target;
  if (target != target)
  {

    targetCopy = target;
    self->_target = targetCopy;
    if (targetCopy)
    {
      targetCopy = objc_msgSend_nodeRef(targetCopy, v7, v8, v9);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2BAA6C;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v10);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (!operation)
  {
    target = self->_target;
    if (target)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF2BAB34;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block, block);
}

- (void)setReplicatesOrientation:(BOOL)orientation
{
  self->_replicateOrientation = orientation;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BABCC;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  orientationCopy = orientation;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setReplicatesPosition:(BOOL)position
{
  self->_replicatePosition = position;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAC7C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  positionCopy = position;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setReplicatesScale:(BOOL)scale
{
  self->_replicateScale = scale;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAD2C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  scaleCopy = scale;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (uint64_t)setOrientationOffset:(__n128)offset
{
  self[6] = offset;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2BADE0;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  offsetCopy = offset;
  return objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"orientationOffset", v4);
}

- (void)setPositionOffset:(VFXReplicatorConstraint *)self
{
  *self->_positionOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAE94;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"positionOffset", v3);
}

- (void)setScaleOffset:(VFXReplicatorConstraint *)self
{
  *self->_scaleOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAF48;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"scaleOffset", v3);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"positionOffset", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_positionOffset(self, v6, v7, v8);
LABEL_3:

    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
  }

  if (!objc_msgSend_isEqualToString_(key, v6, @"orientationOffset", v8))
  {
    if (!objc_msgSend_isEqualToString_(key, v14, @"scaleOffset", v16))
    {
      v24.receiver = self;
      v24.super_class = VFXReplicatorConstraint;
      return [(VFXReplicatorConstraint *)&v24 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_scaleOffset(self, v21, v22, v23);
    goto LABEL_3;
  }

  v17 = MEMORY[0x1E696B098];
  objc_msgSend_orientationOffset(self, v14, v15, v16);

  return objc_msgSend_valueWithVFXFloat4_(v17, v18, v19, v20);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"positionOffset", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setPositionOffset_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"orientationOffset", v9))
  {
    objc_msgSend_VFXFloat4Value(value, v13, v14, v15);

    objc_msgSend_setOrientationOffset_(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"scaleOffset", v15))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20, v21);

    objc_msgSend_setScaleOffset_(self, v22, v23, v24);
  }

  else
  {
    v25.receiver = self;
    v25.super_class = VFXReplicatorConstraint;
    [(VFXReplicatorConstraint *)&v25 setValue:value forKey:key];
  }
}

- (void)_customEncodingOfVFXReplicatorConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXReplicatorConstraint:(id)constraint
{
  sub_1AF155220();
  self->super._constraintRef = v5;
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v7, v6, @"target");
  objc_msgSend_setTarget_(self, v9, v8, v10);

  objc_msgSend_finalizeDecodeConstraint_(self, v11, constraint, v12);
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXReplicatorConstraint;
  [(VFXConstraint *)&v10 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXReplicatorConstraint_(self, v5, coder, v6);
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_replicateOrientation, @"replicatesOrientation");
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_replicateScale, @"replicatesScale");
  objc_msgSend_encodeBool_forKey_(coder, v9, self->_replicatePosition, @"replicatesPosition");
  sub_1AF371AF4(coder, @"orientationOffset", *self->_anon_60);
  sub_1AF371A8C(coder, @"positionOffset", *self->_positionOffset);
  sub_1AF371A8C(coder, @"scaleOffset", *self->_scaleOffset);
}

- (VFXReplicatorConstraint)initWithCoder:(id)coder
{
  v43.receiver = self;
  v43.super_class = VFXReplicatorConstraint;
  v7 = [(VFXConstraint *)&v43 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXReplicatorConstraint_(v7, v11, coder, v12);
    v15 = objc_msgSend_decodeBoolForKey_(coder, v13, @"replicatesOrientation", v14);
    objc_msgSend_setReplicatesOrientation_(v7, v16, v15, v17);
    v20 = objc_msgSend_decodeBoolForKey_(coder, v18, @"replicatesScale", v19);
    objc_msgSend_setReplicatesScale_(v7, v21, v20, v22);
    v25 = objc_msgSend_decodeBoolForKey_(coder, v23, @"replicatesPosition", v24);
    objc_msgSend_setReplicatesPosition_(v7, v26, v25, v27);
    *&v28 = sub_1AF371C0C(coder, @"orientationOffset").n128_u64[0];
    objc_msgSend_setOrientationOffset_(v7, v29, v30, v31, v28);
    v32 = sub_1AF371BC4(coder, @"positionOffset");
    objc_msgSend_setPositionOffset_(v7, v33, v34, v35, v32);
    v36 = sub_1AF371BC4(coder, @"scaleOffset");
    objc_msgSend_setScaleOffset_(v7, v37, v38, v39, v36);
    objc_msgSend_setImmediateMode_(VFXTransaction, v40, v8, v41);
  }

  return v7;
}

@end