@interface VFXAccelerationConstraint
+ (id)accelerationConstraint;
- (VFXAccelerationConstraint)init;
- (VFXAccelerationConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDamping:(float)a3;
- (void)setDecelerationDistance:(float)a3;
- (void)setMaximumLinearAcceleration:(float)a3;
- (void)setMaximumLinearVelocity:(float)a3;
@end

@implementation VFXAccelerationConstraint

- (VFXAccelerationConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXAccelerationConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  if (v2)
  {
    v3 = sub_1AF154184();
    v2->_maximumLinearAcceleration = 3.4028e38;
    v2->_maximumLinearVelocity = 3.4028e38;
    v2->super._constraintRef = v4;
    v2->_damping = 0.1;
    objc_msgSend_didInitConstraintRef(v2, v5, v6, v7, v3);
  }

  return v2;
}

+ (id)accelerationConstraint
{
  v2 = objc_alloc_init(VFXAccelerationConstraint);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_maximumLinearVelocity(self, v5, v6, v7);
  objc_msgSend_setMaximumLinearVelocity_(v4, v8, v9, v10);
  objc_msgSend_maximumLinearAcceleration(self, v11, v12, v13);
  objc_msgSend_setMaximumLinearAcceleration_(v4, v14, v15, v16);
  objc_msgSend_decelerationDistance(self, v17, v18, v19);
  objc_msgSend_setDecelerationDistance_(v4, v20, v21, v22);
  objc_msgSend_damping(self, v23, v24, v25);
  objc_msgSend_setDamping_(v4, v26, v27, v28);
  objc_msgSend_copyTo_(self, v29, v4, v30);
  return v4;
}

- (void)setMaximumLinearVelocity:(float)a3
{
  self->_maximumLinearVelocity = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB634;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumLinearVelocity", v3);
}

- (void)setMaximumLinearAcceleration:(float)a3
{
  self->_maximumLinearAcceleration = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB6E8;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumLinearAcceleration", v3);
}

- (void)setDecelerationDistance:(float)a3
{
  self->_decelerationDistance = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB78C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"decelerationDistance", v3);
}

- (void)setDamping:(float)a3
{
  self->_damping = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB850;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"damping", v3);
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = VFXAccelerationConstraint;
  [(VFXConstraint *)&v17 encodeWithCoder:?];
  *&v5 = self->_maximumLinearVelocity;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"maximumLinearVelocity", v7, v5);
  *&v8 = self->_maximumLinearAcceleration;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"maximumLinearAcceleration", v10, v8);
  *&v11 = self->_decelerationDistance;
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"decelerationDistance", v13, v11);
  *&v14 = self->_damping;
  objc_msgSend_encodeFloat_forKey_(a3, v15, @"damping", v16, v14);
}

- (VFXAccelerationConstraint)initWithCoder:(id)a3
{
  v38.receiver = self;
  v38.super_class = VFXAccelerationConstraint;
  v7 = [(VFXConstraint *)&v38 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF154184();
    v7->super._constraintRef = v12;
    objc_msgSend_finalizeDecodeConstraint_(v7, v13, a3, v14, v11);
    objc_msgSend_decodeFloatForKey_(a3, v15, @"maximumLinearVelocity", v16);
    objc_msgSend_setMaximumLinearVelocity_(v7, v17, v18, v19);
    objc_msgSend_decodeFloatForKey_(a3, v20, @"maximumLinearAcceleration", v21);
    objc_msgSend_setMaximumLinearAcceleration_(v7, v22, v23, v24);
    objc_msgSend_decodeFloatForKey_(a3, v25, @"decelerationDistance", v26);
    objc_msgSend_setDecelerationDistance_(v7, v27, v28, v29);
    objc_msgSend_decodeFloatForKey_(a3, v30, @"damping", v31);
    objc_msgSend_setDamping_(v7, v32, v33, v34);
    objc_msgSend_setImmediateMode_(VFXTransaction, v35, v8, v36);
  }

  return v7;
}

@end