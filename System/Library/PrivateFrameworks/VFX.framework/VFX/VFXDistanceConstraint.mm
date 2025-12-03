@interface VFXDistanceConstraint
+ (id)distanceConstraint;
+ (id)distanceConstraintWithTarget:(id)target;
- (VFXDistanceConstraint)init;
- (VFXDistanceConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfVFXDistanceConstraint:(id)constraint;
- (void)_customEncodingOfVFXDistanceConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setKeepTargetDirection:(BOOL)direction;
- (void)setMaximumDistance:(float)distance;
- (void)setMinimumDistance:(float)distance;
- (void)setTarget:(id)target;
- (void)setTargetDirection:(VFXDistanceConstraint *)self;
@end

@implementation VFXDistanceConstraint

- (VFXDistanceConstraint)init
{
  v13.receiver = self;
  v13.super_class = VFXDistanceConstraint;
  v2 = [(VFXConstraint *)&v13 init];
  if (v2)
  {
    *&v3 = sub_1AF153BCC();
    v2->_maximumDistance = 3.4028e38;
    v2->super._constraintRef = v4;
    v2->_minimumDistance = 0.0;
    LODWORD(v2[1].super.super.isa) = 1135869952;
    objc_msgSend_localFront(VFXNode, v5, v6, v7, v3);
    *&v2->_targetDirection[7] = v8;
    objc_msgSend_didInitConstraintRef(v2, v9, v10, v11);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXDistanceConstraint;
  [(VFXConstraint *)&v3 dealloc];
}

+ (id)distanceConstraint
{
  v2 = objc_alloc_init(VFXDistanceConstraint);

  return v2;
}

+ (id)distanceConstraintWithTarget:(id)target
{
  v4 = objc_alloc_init(VFXDistanceConstraint);
  objc_msgSend_setTarget_(v4, v5, target, v6);
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
    v10[2] = sub_1AF2BA1F0;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v10);
  }
}

- (void)setTargetDirection:(VFXDistanceConstraint *)self
{
  *&self->_targetDirection[7] = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA29C;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetDirection", v3);
}

- (void)setKeepTargetDirection:(BOOL)direction
{
  self->_keepTargetDirection = direction;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA34C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  directionCopy = direction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setMinimumDistance:(float)distance
{
  self->_minimumDistance = distance;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA400;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  distanceCopy = distance;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"minimumDistance", v3);
}

- (void)setMaximumDistance:(float)distance
{
  self->_maximumDistance = distance;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA4B4;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  distanceCopy = distance;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumDistance", v3);
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
      v6[2] = sub_1AF2BA574;
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
  objc_msgSend_maximumDistance(self, v11, v12, v13);
  objc_msgSend_setMaximumDistance_(v4, v14, v15, v16);
  objc_msgSend_minimumDistance(self, v17, v18, v19);
  objc_msgSend_setMinimumDistance_(v4, v20, v21, v22);
  objc_msgSend_copyTo_(self, v23, v4, v24);
  return v4;
}

- (void)_customEncodingOfVFXDistanceConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXDistanceConstraint:(id)constraint
{
  sub_1AF153BCC();
  self->super._constraintRef = v5;
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v7, v6, @"target");
  objc_msgSend_setTarget_(self, v9, v8, v10);

  objc_msgSend_finalizeDecodeConstraint_(self, v11, constraint, v12);
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = VFXDistanceConstraint;
  [(VFXConstraint *)&v13 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXDistanceConstraint_(self, v5, coder, v6);
  *&v7 = self->_minimumDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"minimumDistance", v9, v7);
  *&v10 = self->_maximumDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"maximumDistance", v12, v10);
}

- (VFXDistanceConstraint)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = VFXDistanceConstraint;
  v7 = [(VFXConstraint *)&v26 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXDistanceConstraint_(v7, v11, coder, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"minimumDistance", v14);
    objc_msgSend_setMinimumDistance_(v7, v15, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"maximumDistance", v19);
    objc_msgSend_setMaximumDistance_(v7, v20, v21, v22);
    objc_msgSend_setImmediateMode_(VFXTransaction, v23, v8, v24);
  }

  return v7;
}

@end