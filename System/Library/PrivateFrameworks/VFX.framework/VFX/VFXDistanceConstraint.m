@interface VFXDistanceConstraint
+ (id)distanceConstraint;
+ (id)distanceConstraintWithTarget:(id)a3;
- (VFXDistanceConstraint)init;
- (VFXDistanceConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_customDecodingOfVFXDistanceConstraint:(id)a3;
- (void)_customEncodingOfVFXDistanceConstraint:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)setKeepTargetDirection:(BOOL)a3;
- (void)setMaximumDistance:(float)a3;
- (void)setMinimumDistance:(float)a3;
- (void)setTarget:(id)a3;
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

+ (id)distanceConstraintWithTarget:(id)a3
{
  v4 = objc_alloc_init(VFXDistanceConstraint);
  objc_msgSend_setTarget_(v4, v5, a3, v6);
  return v4;
}

- (void)setTarget:(id)a3
{
  target = self->_target;
  if (target != a3)
  {

    v6 = a3;
    self->_target = v6;
    if (v6)
    {
      v6 = objc_msgSend_nodeRef(v6, v7, v8, v9);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2BA1F0;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = v6;
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
  v5 = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetDirection", v3);
}

- (void)setKeepTargetDirection:(BOOL)a3
{
  self->_keepTargetDirection = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA34C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setMinimumDistance:(float)a3
{
  self->_minimumDistance = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA400;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"minimumDistance", v3);
}

- (void)setMaximumDistance:(float)a3
{
  self->_maximumDistance = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA4B4;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumDistance", v3);
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  if (!a3)
  {
    target = self->_target;
    if (target)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF2BA574;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(a4 + 2))(a4, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, a4, a4);
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)_customEncodingOfVFXDistanceConstraint:(id)a3
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXDistanceConstraint:(id)a3
{
  sub_1AF153BCC();
  self->super._constraintRef = v5;
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"target");
  objc_msgSend_setTarget_(self, v9, v8, v10);

  objc_msgSend_finalizeDecodeConstraint_(self, v11, a3, v12);
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = VFXDistanceConstraint;
  [(VFXConstraint *)&v13 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXDistanceConstraint_(self, v5, a3, v6);
  *&v7 = self->_minimumDistance;
  objc_msgSend_encodeFloat_forKey_(a3, v8, @"minimumDistance", v9, v7);
  *&v10 = self->_maximumDistance;
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"maximumDistance", v12, v10);
}

- (VFXDistanceConstraint)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = VFXDistanceConstraint;
  v7 = [(VFXConstraint *)&v26 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXDistanceConstraint_(v7, v11, a3, v12);
    objc_msgSend_decodeFloatForKey_(a3, v13, @"minimumDistance", v14);
    objc_msgSend_setMinimumDistance_(v7, v15, v16, v17);
    objc_msgSend_decodeFloatForKey_(a3, v18, @"maximumDistance", v19);
    objc_msgSend_setMaximumDistance_(v7, v20, v21, v22);
    objc_msgSend_setImmediateMode_(VFXTransaction, v23, v8, v24);
  }

  return v7;
}

@end