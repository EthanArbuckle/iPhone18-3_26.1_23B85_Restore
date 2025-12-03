@interface VFXLookAtConstraint
+ (id)lookAtConstraintWithTarget:(id)target;
- (VFXLookAtConstraint)initWithCoder:(id)coder;
- (VFXLookAtConstraint)initWithTarget:(id)target;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localFrontValue;
- (id)targetOffsetValue;
- (id)upVectorValue;
- (id)valueForKey:(id)key;
- (void)_customDecodingOfVFXLookAtConstraint:(id)constraint;
- (void)_customEncodingOfVFXLookAtConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setGimbalLockEnabled:(BOOL)enabled;
- (void)setLocalFront:(VFXLookAtConstraint *)self;
- (void)setLocalFrontValue:(id)value;
- (void)setTarget:(id)target;
- (void)setTargetOffset:(VFXLookAtConstraint *)self;
- (void)setTargetOffsetValue:(id)value;
- (void)setUpVectorValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorldUp:(VFXLookAtConstraint *)self;
@end

@implementation VFXLookAtConstraint

- (VFXLookAtConstraint)initWithTarget:(id)target
{
  v13.receiver = self;
  v13.super_class = VFXLookAtConstraint;
  v4 = [(VFXConstraint *)&v13 init];
  if (v4)
  {
    targetCopy = target;
    v4->_target = targetCopy;
    if (targetCopy)
    {
      targetCopy = objc_msgSend_nodeRef(targetCopy, v6, v7, v8);
    }

    v4->_gimbalLockEnabled = 0;
    *v4->_targetOffset = 0u;
    *v4->_localFront = xmmword_1AFE206C0;
    *v4->_upVector = xmmword_1AFE20160;
    v4->super._constraintRef = sub_1AF14F61C(targetCopy);
    objc_msgSend_didInitConstraintRef(v4, v9, v10, v11);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXLookAtConstraint;
  [(VFXConstraint *)&v3 dealloc];
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
      v6[2] = sub_1AF2B9628;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block, block);
}

+ (id)lookAtConstraintWithTarget:(id)target
{
  v4 = [VFXLookAtConstraint alloc];
  v7 = objc_msgSend_initWithTarget_(v4, v5, target, v6);

  return v7;
}

- (void)setGimbalLockEnabled:(BOOL)enabled
{
  self->_gimbalLockEnabled = enabled;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9714;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  enabledCopy = enabled;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
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
    v10[2] = sub_1AF2B97F4;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v10);
  }
}

- (void)setTargetOffset:(VFXLookAtConstraint *)self
{
  *self->_targetOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B98A0;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetOffset", v3);
}

- (void)setWorldUp:(VFXLookAtConstraint *)self
{
  *self->_upVector = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9954;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"worldUp", v3);
}

- (void)setLocalFront:(VFXLookAtConstraint *)self
{
  *self->_localFront = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9A10;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"localFront", v3);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"targetOffset", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_targetOffset(self, v6, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(key, v6, @"localFront", v8))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_localFront(self, v13, v14, v15);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v13, @"worldUp", v15))
    {
      v20.receiver = self;
      v20.super_class = VFXLookAtConstraint;
      return [(VFXLookAtConstraint *)&v20 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_worldUp(self, v16, v17, v18);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"targetOffset", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setTargetOffset_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"localFront", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14, v15);

    objc_msgSend_setLocalFront_(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"worldUp", v15))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20, v21);

    MEMORY[0x1EEE66B58](self, sel_setWorldUp_, v22, v23);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = VFXLookAtConstraint;
    [(VFXLookAtConstraint *)&v24 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithTarget_(v4, v5, self->_target, v6);
  v11 = objc_msgSend_gimbalLockEnabled(self, v8, v9, v10);
  objc_msgSend_setGimbalLockEnabled_(v7, v12, v11, v13);
  objc_msgSend_targetOffset(self, v14, v15, v16);
  objc_msgSend_setTargetOffset_(v7, v17, v18, v19);
  objc_msgSend_upVector(self, v20, v21, v22);
  objc_msgSend_setUpVector_(v7, v23, v24, v25);
  objc_msgSend_localFront(self, v26, v27, v28);
  objc_msgSend_setLocalFront_(v7, v29, v30, v31);
  objc_msgSend_copyTo_(self, v32, v7, v33);
  return v7;
}

- (void)_customEncodingOfVFXLookAtConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXLookAtConstraint:(id)constraint
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v6, v5, @"target");
  self->_target = v7;
  v11 = objc_msgSend_nodeRef(v7, v8, v9, v10);
  self->super._constraintRef = sub_1AF14F61C(v11);

  objc_msgSend_finalizeDecodeConstraint_(self, v12, constraint, v13);
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXLookAtConstraint;
  [(VFXConstraint *)&v8 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXLookAtConstraint_(self, v5, coder, v6);
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_gimbalLockEnabled, @"gimbalLockEnabled");
  sub_1AF371A8C(coder, @"targetOffset", *self->_targetOffset);
  sub_1AF371A8C(coder, @"upVector", *self->_upVector);
  sub_1AF371A8C(coder, @"localFront", *self->_localFront);
}

- (VFXLookAtConstraint)initWithCoder:(id)coder
{
  v51.receiver = self;
  v51.super_class = VFXLookAtConstraint;
  v7 = [(VFXConstraint *)&v51 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXLookAtConstraint_(v7, v11, coder, v12);
    v15 = objc_msgSend_decodeBoolForKey_(coder, v13, @"gimbalLockEnabled", v14);
    objc_msgSend_setGimbalLockEnabled_(v7, v16, v15, v17);
    if (objc_msgSend_containsValueForKey_(coder, v18, @"targetOffset", v19))
    {
      v22 = sub_1AF371BC4(coder, @"targetOffset");
      objc_msgSend_setTargetOffset_(v7, v23, v24, v25, v22);
    }

    if (objc_msgSend_containsValueForKey_(coder, v20, @"upVector", v21))
    {
      v29 = sub_1AF371BC4(coder, @"upVector");
    }

    else
    {
      v29 = 0.0078125;
    }

    objc_msgSend_setUpVector_(v7, v26, v27, v28, v29);
    if (objc_msgSend_containsValueForKey_(coder, v30, @"localFront", v31))
    {
      v35 = sub_1AF371BC4(coder, @"localFront");
      objc_msgSend_setLocalFront_(v7, v36, v37, v38, v35);
    }

    else
    {
      objc_msgSend_setUpVector_(v7, v32, v33, v34, 0.0);
    }

    objc_msgSend_upVector(v7, v39, v40, v41);
    if (VFXVector3EqualToVector3(v42, 0))
    {
      objc_msgSend_setUpVector_(v7, v43, v44, v45, 0.0078125);
    }

    objc_msgSend_localFront(v7, v43, v44, v45);
    if (VFXVector3EqualToVector3(v46, 0))
    {
      objc_msgSend_setLocalFront_(v7, v47, v48, v49, 0.0);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v47, v8, v49);
  }

  return v7;
}

- (id)targetOffsetValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setTargetOffsetValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setTargetOffset_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)localFrontValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setLocalFrontValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setLocalFront_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)upVectorValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setUpVectorValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setUpVector_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

@end