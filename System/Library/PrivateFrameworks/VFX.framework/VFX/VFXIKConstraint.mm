@interface VFXIKConstraint
+ (id)inverseKinematicsConstraintWithChainRootNode:(id)a3;
- (VFXIKConstraint)init;
- (VFXIKConstraint)initWithChainRootNode:(id)a3;
- (VFXIKConstraint)initWithCoder:(id)a3;
- (float)maxAllowedRotationAngleForJoint:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jointForNode:(id)a3;
- (id)targetPositionValue;
- (void)_customDecodingOfVFXIKConstraint:(id)a3;
- (void)_customEncodingOfVFXIKConstraint:(id)a3;
- (void)_didDecodeVFXIKConstraint:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)setChainRootNode:(id)a3;
- (void)setMaxAllowedRotationAngle:(float)a3 forJoint:(id)a4;
- (void)setTargetPosition:(VFXIKConstraint *)self;
- (void)setTargetPositionValue:(id)a3;
@end

@implementation VFXIKConstraint

- (VFXIKConstraint)init
{
  v10.receiver = self;
  v10.super_class = VFXIKConstraint;
  v2 = [(VFXConstraint *)&v10 init];
  if (v2)
  {
    v2->super._constraintRef = sub_1AF1525A8();
    v2->_jointsPerNode = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4, v5);
    objc_msgSend_didInitConstraintRef(v2, v6, v7, v8);
  }

  return v2;
}

- (void)dealloc
{
  self->_chainRootNode = 0;

  v3.receiver = self;
  v3.super_class = VFXIKConstraint;
  [(VFXConstraint *)&v3 dealloc];
}

+ (id)inverseKinematicsConstraintWithChainRootNode:(id)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithChainRootNode_(v4, v5, a3, v6);

  return v7;
}

- (VFXIKConstraint)initWithChainRootNode:(id)a3
{
  v5 = objc_msgSend_init(self, a2, a3, v3);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setChainRootNode_(v5, v6, a3, v7);
  }

  return v8;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  if (!a3)
  {
    chainRootNode = self->_chainRootNode;
    if (chainRootNode)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF2BE358;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(a4 + 2))(a4, chainRootNode, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, chainRootNode, a4, a4);
}

- (void)setChainRootNode:(id)a3
{
  if (self->_chainRootNode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_chainRootNode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2BE40C;
    v5[3] = &unk_1E7A7E220;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setTargetPosition:(VFXIKConstraint *)self
{
  *self->_ikTarget = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BE4EC;
  v3[3] = &unk_1E7A7E5C8;
  v5 = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetPosition", v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_targetPosition(self, v5, v6, v7);
  objc_msgSend_setTargetPosition_(v4, v8, v9, v10);
  v14 = objc_msgSend_chainRootNode(self, v11, v12, v13);
  objc_msgSend_setChainRootNode_(v4, v15, v14, v16);
  objc_msgSend_copyTo_(self, v17, v4, v18);
  return v4;
}

- (id)jointForNode:(id)a3
{
  v6 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], a2, a3, v3);
  v9 = objc_msgSend_objectForKey_(self->_jointsPerNode, v7, v6, v8);
  if (!v9)
  {
    v9 = objc_alloc_init(VFXIKJoint);
    objc_msgSend_setJoint_(v9, v10, a3, v11);
    LODWORD(v12) = 1127481344;
    objc_msgSend_setMaxAllowedRotationAngle_(v9, v13, v14, v15, v12);
    objc_msgSend_setObject_forKey_(self->_jointsPerNode, v16, v9, v6);
  }

  return v9;
}

- (void)setMaxAllowedRotationAngle:(float)a3 forJoint:(id)a4
{
  v8 = objc_msgSend_jointForNode_(self, a2, a4, v4);
  *&v9 = a3;
  objc_msgSend_setMaxAllowedRotationAngle_(v8, v10, v11, v12, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF2BE6A4;
  v14[3] = &unk_1E7A7E660;
  v15 = a3;
  v14[4] = self;
  v14[5] = a4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, self, v14);
}

- (float)maxAllowedRotationAngleForJoint:(id)a3
{
  v4 = objc_msgSend_jointForNode_(self, a2, a3, v3);
  if (!v4)
  {
    return 180.0;
  }

  objc_msgSend_maxAllowedRotationAngle(v4, v5, v6, v7);
  return result;
}

- (void)_didDecodeVFXIKConstraint:(id)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"node%d", v7, 0);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v5, v8);
  if (v10)
  {
    v13 = v10;
    do
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"angle%d", v12, 0);
      objc_msgSend_decodeFloatForKey_(a3, v15, v14, v16);
      objc_msgSend_setMaxAllowedRotationAngle_forJoint_(self, v17, v13, v18);
      v19 = objc_opt_class();
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"node%d", v21, 0);
      v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v23, v19, v22);
    }

    while (v13);
  }
}

- (void)_customEncodingOfVFXIKConstraint:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = objc_msgSend_allKeys(self->_jointsPerNode, a2, a3, v3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v35, v39, 16);
  if (v7)
  {
    v10 = v7;
    v11 = 0;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = objc_msgSend_objectForKey_(self->_jointsPerNode, v8, *(*(&v35 + 1) + 8 * v13), v9);
        objc_msgSend_maxAllowedRotationAngle(v14, v15, v16, v17);
        v19 = v18;
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"angle%d", v21, v11);
        LODWORD(v23) = v19;
        objc_msgSend_encodeFloat_forKey_(a3, v24, v22, v25, v23);
        v29 = objc_msgSend_joint(v14, v26, v27, v28);
        v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"node%d", v31, v11);
        objc_msgSend_encodeObject_forKey_(a3, v33, v29, v32);
        v11 = (v11 + 1);
        ++v13;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v35, v39, 16);
    }

    while (v10);
  }

  sub_1AF371A8C(a3, @"ikTarget", *self->_ikTarget);
}

- (void)_customDecodingOfVFXIKConstraint:(id)a3
{
  self->super._constraintRef = sub_1AF1525A8();
  v5 = sub_1AF371BC4(a3, @"ikTarget");
  objc_msgSend_setTargetPosition_(self, v6, v7, v8, v5);

  objc_msgSend_finalizeDecodeConstraint_(self, v9, a3, v10);
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXIKConstraint;
  [(VFXConstraint *)&v9 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXIKConstraint_(self, v5, a3, v6);
  chainRootNode = self->_chainRootNode;
  if (chainRootNode)
  {
    objc_msgSend_encodeObject_forKey_(a3, v7, chainRootNode, @"chainRootNode");
  }
}

- (VFXIKConstraint)initWithCoder:(id)a3
{
  v23.receiver = self;
  v23.super_class = VFXIKConstraint;
  v7 = [(VFXConstraint *)&v23 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXIKConstraint_(v7, v11, a3, v12);
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"chainRootNode");
    objc_msgSend_setChainRootNode_(v7, v16, v15, v17);
    objc_msgSend__didDecodeVFXIKConstraint_(v7, v18, a3, v19);
    objc_msgSend_setImmediateMode_(VFXTransaction, v20, v8, v21);
  }

  return v7;
}

- (id)targetPositionValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setTargetPositionValue:(id)a3
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setTargetPosition_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

@end