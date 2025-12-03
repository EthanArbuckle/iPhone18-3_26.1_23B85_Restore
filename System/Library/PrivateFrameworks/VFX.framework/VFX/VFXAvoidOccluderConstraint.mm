@interface VFXAvoidOccluderConstraint
+ (id)avoidOccluderConstraint;
+ (id)avoidOccluderConstraintWithTarget:(id)target;
- (VFXAvoidOccluderConstraint)init;
- (VFXAvoidOccluderConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfVFXAvoidOccluderConstraint:(id)constraint;
- (void)_customEncodingOfVFXAvoidOccluderConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBias:(float)bias;
- (void)setDelegate:(id)delegate;
- (void)setOccluderCategoryBitMask:(unint64_t)mask;
- (void)setTarget:(id)target;
@end

@implementation VFXAvoidOccluderConstraint

- (VFXAvoidOccluderConstraint)init
{
  v8.receiver = self;
  v8.super_class = VFXAvoidOccluderConstraint;
  v2 = [(VFXConstraint *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF157E28();
    v2->_categoryBitMask = 1;
    v2->super._constraintRef = v3;
    v2->_offset = 0.00001;
    objc_msgSend_didInitConstraintRef(v2, v4, v5, v6);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_delegate)
  {
    v5 = objc_msgSend_worldRef(self->_target, a2, v2, v3);
    if (v5)
    {
      v6 = v5;
      sub_1AF1CEA20(v5);
      sub_1AF157274(self->super._constraintRef, 0);
      sub_1AF1CEA9C(v6);
    }

    else
    {
      sub_1AF157274(self->super._constraintRef, 0);
    }
  }

  v7.receiver = self;
  v7.super_class = VFXAvoidOccluderConstraint;
  [(VFXConstraint *)&v7 dealloc];
}

+ (id)avoidOccluderConstraint
{
  v2 = objc_alloc_init(VFXAvoidOccluderConstraint);

  return v2;
}

+ (id)avoidOccluderConstraintWithTarget:(id)target
{
  v4 = objc_alloc_init(VFXAvoidOccluderConstraint);
  objc_msgSend_setTarget_(v4, v5, target, v6);
  return v4;
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
      v6[2] = sub_1AF2BC224;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block, block);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_target(self, v5, v6, v7);
  objc_msgSend_setTarget_(v4, v9, v8, v10);
  v14 = objc_msgSend_occluderCategoryBitMask(self, v11, v12, v13);
  objc_msgSend_setOccluderCategoryBitMask_(v4, v15, v14, v16);
  objc_msgSend_bias(self, v17, v18, v19);
  objc_msgSend_setBias_(v4, v20, v21, v22);
  objc_msgSend_copyTo_(self, v23, v4, v24);
  return v4;
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = sub_1AF2BC418;
      }

      else
      {
        v5 = 0;
      }

      v6 = (objc_opt_respondsToSelector() & 1) == 0;
      v8 = nullsub_187;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2BC4A4;
      v12[3] = &unk_1E7A7E5F0;
      if (v6)
      {
        v8 = 0;
      }

      v12[4] = self;
      v12[5] = v5;
      v12[6] = v8;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v12);
    }

    else
    {
      v9 = objc_msgSend_worldRef(self->_target, a2, 0, v3);
      if (v9)
      {
        v10 = v9;
        sub_1AF1CEA20(v9);
        sub_1AF157274(self->super._constraintRef, 0);

        sub_1AF1CEA9C(v10);
      }

      else
      {
        constraintRef = self->super._constraintRef;

        sub_1AF157274(constraintRef, 0);
      }
    }
  }
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
    v10[2] = sub_1AF2BC5C4;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v10);
  }
}

- (void)setOccluderCategoryBitMask:(unint64_t)mask
{
  self->_categoryBitMask = mask;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BC668;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = mask;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setBias:(float)bias
{
  self->_offset = bias;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BC70C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  biasCopy = bias;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)_customEncodingOfVFXAvoidOccluderConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXAvoidOccluderConstraint:(id)constraint
{
  v5 = objc_opt_class();
  self->_target = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v6, v5, @"target");
  v7 = sub_1AF157E28();
  self->super._constraintRef = v7;
  v11 = objc_msgSend_nodeRef(self->_target, v8, v9, v10);
  sub_1AF15001C(v7, v11);

  objc_msgSend_finalizeDecodeConstraint_(self, v12, constraint, v13);
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = VFXAvoidOccluderConstraint;
  [(VFXConstraint *)&v11 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXAvoidOccluderConstraint_(self, v5, coder, v6);
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_categoryBitMask, @"categoryBitMask");
  *&v8 = self->_offset;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"bias", v10, v8);
}

- (VFXAvoidOccluderConstraint)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = VFXAvoidOccluderConstraint;
  v7 = [(VFXConstraint *)&v26 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXAvoidOccluderConstraint_(v7, v11, coder, v12);
    v15 = objc_msgSend_decodeIntegerForKey_(coder, v13, @"categoryBitMask", v14);
    objc_msgSend_setOccluderCategoryBitMask_(v7, v16, v15, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"bias", v19);
    objc_msgSend_setBias_(v7, v20, v21, v22);
    objc_msgSend_setImmediateMode_(VFXTransaction, v23, v8, v24);
  }

  return v7;
}

@end