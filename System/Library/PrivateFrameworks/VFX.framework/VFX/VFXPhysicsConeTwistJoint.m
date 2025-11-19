@interface VFXPhysicsConeTwistJoint
+ (id)jointWithBody:(double)a3 frame:(double)a4;
+ (id)jointWithBodyA:(double)a3 frameA:(double)a4 bodyB:(double)a5 frameB:(double)a6;
- (VFXPhysicsConeTwistJoint)init;
- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a3 frameA:(__n128)a4 bodyB:(__n128)a5 frameB:(__n128)a6;
- (VFXPhysicsConeTwistJoint)initWithCoder:(id)a3;
- (__n128)initWithBody:(__n128)a3 frame:(__n128)a4;
- (btTypedConstraint)_createConstraint;
- (id)valueForKey:(id)a3;
- (uint64_t)setFrameA:(uint64_t)a3;
- (uint64_t)setFrameB:(uint64_t)a3;
- (void)copyFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumAngularLimit1:(float)a3;
- (void)setMaximumAngularLimit2:(float)a3;
- (void)setMaximumTwistAngle:(float)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation VFXPhysicsConeTwistJoint

- (VFXPhysicsConeTwistJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsConeTwistJoint;
  result = [(VFXPhysicsConeTwistJoint *)&v3 init];
  if (result)
  {
    *&result->_definition.maximumAngularLimit1 = xmmword_1AFE20150;
    *&result[1].super.super.isa = xmmword_1AFE20160;
    *&result[1].super._constraint = xmmword_1AFE20180;
    *&result[1].super._bodyB = xmmword_1AFE201A0;
    *&result[1]._definition.maximumAngularLimit1 = xmmword_1AFE20150;
    *&result[2].super.super.isa = xmmword_1AFE20160;
    *&result[2].super._constraint = xmmword_1AFE20180;
    *&result[2].super._bodyB = xmmword_1AFE201A0;
    *&result[2]._definition.maximumAngularLimit1 = vdup_n_s32(0x3F490FDBu);
    result[2]._definition.maximumTwistAngle = 0.7854;
  }

  return result;
}

- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a3 frameA:(__n128)a4 bodyB:(__n128)a5 frameB:(__n128)a6
{
  v29.receiver = a1;
  v29.super_class = VFXPhysicsConeTwistJoint;
  v14 = [(VFXPhysicsConeTwistJoint *)&v29 init];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_setBodyA_(v14, v15, a11, v16);
    *&v17->_definition.maximumAngularLimit1 = a2;
    *&v17[1].super.super.isa = a3;
    *&v17[1].super._constraint = a4;
    *&v17[1].super._bodyB = a5;
    objc_msgSend_setBodyB_(v17, v18, a12, v19);
    *&v17[1]._definition.maximumAngularLimit1 = a6;
    *&v17[2].super.super.isa = a7;
    *&v17[2].super._constraint = a8;
    *&v17[2].super._bodyB = a9;
    *&v17[2]._definition.maximumAngularLimit1 = vdup_n_s32(0x3F490FDBu);
    v17[2]._definition.maximumTwistAngle = 0.7854;
  }

  return v17;
}

- (__n128)initWithBody:(__n128)a3 frame:(__n128)a4
{
  v17.receiver = a1;
  v17.super_class = VFXPhysicsConeTwistJoint;
  v8 = [(VFXPhysicsConeTwistJoint *)&v17 init];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setBodyA_(v8, v9, a7, v10);
    v11[3] = a2;
    v11[4] = a3;
    v11[5] = a4;
    v11[6] = a5;
  }

  return v11;
}

+ (id)jointWithBodyA:(double)a3 frameA:(double)a4 bodyB:(double)a5 frameB:(double)a6
{
  v14 = [a1 alloc];
  v16 = objc_msgSend_initWithBodyA_frameA_bodyB_frameB_(v14, v15, a11, a12, a2, a3, a4, a5, a6, a7, a8, a9);

  return v16;
}

+ (id)jointWithBody:(double)a3 frame:(double)a4
{
  v8 = [a1 alloc];
  v11 = objc_msgSend_initWithBody_frame_(v8, v9, a7, v10, a2, a3, a4, a5);

  return v11;
}

- (void)copyFrom:(id)a3
{
  *&self->_definition.maximumAngularLimit1 = *(a3 + 3);
  v3 = *(a3 + 7);
  v5 = *(a3 + 4);
  v4 = *(a3 + 5);
  *&self[1].super._bodyB = *(a3 + 6);
  *&self[1]._definition.maximumAngularLimit1 = v3;
  *&self[1].super.super.isa = v5;
  *&self[1].super._constraint = v4;
  v6 = *(a3 + 11);
  v8 = *(a3 + 8);
  v7 = *(a3 + 9);
  *&self[2].super._bodyB = *(a3 + 10);
  *&self[2]._definition.maximumAngularLimit1 = v6;
  *&self[2].super.super.isa = v8;
  *&self[2].super._constraint = v7;
}

- (uint64_t)setFrameA:(uint64_t)a3
{
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  v9 = objc_msgSend_physicsWorld(a1, a2, a3, a4);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF35A81C;
  v17[3] = &unk_1E7A7E578;
  v22 = a1;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return objc_msgSend__postCommandWithBlock_(v9, v10, v17, v11);
}

- (uint64_t)setFrameB:(uint64_t)a3
{
  a1[7] = a5;
  a1[8] = a6;
  a1[9] = a7;
  a1[10] = a8;
  v9 = objc_msgSend_physicsWorld(a1, a2, a3, a4);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF35AA04;
  v17[3] = &unk_1E7A7E578;
  v22 = a1;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return objc_msgSend__postCommandWithBlock_(v9, v10, v17, v11);
}

- (void)setMaximumAngularLimit1:(float)a3
{
  self[2]._definition.maximumAngularLimit1 = a3;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35ABDC;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  v11 = a3;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumAngularLimit2:(float)a3
{
  self[2]._definition.maximumAngularLimit2 = a3;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35ACF0;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  v11 = a3;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumTwistAngle:(float)a3
{
  self[2]._definition.maximumTwistAngle = a3;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35AE08;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  v11 = a3;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (btTypedConstraint)_createConstraint
{
  v5 = objc_msgSend_bodyA(self, a2, v2, v3);
  v9 = objc_msgSend_bodyB(self, v6, v7, v8);

  return sub_1AF35A280(&self->_definition, v5, v9, v10);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  v14.receiver = self;
  v14.super_class = VFXPhysicsConeTwistJoint;
  [(VFXPhysicsJoint *)&v14 encodeWithCoder:?];
  v4 += 3;
  LODWORD(v5) = v4[8].n128_u32[0];
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"maximumAngularLimit1", v7, v5);
  LODWORD(v8) = v4[8].n128_u32[1];
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"maximumAngularLimit2", v10, v8);
  LODWORD(v11) = v4[8].n128_u32[2];
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"maximumTwistAngle", v13, v11);
  sub_1AF371B50(a3, @"frameA", *v4, v4[1], v4[2], v4[3]);
  sub_1AF371B50(a3, @"frameB", v4[4], v4[5], v4[6], v4[7]);
}

- (VFXPhysicsConeTwistJoint)initWithCoder:(id)a3
{
  v29.receiver = self;
  v29.super_class = VFXPhysicsConeTwistJoint;
  v7 = [(VFXPhysicsJoint *)&v29 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(a3, v11, @"maximumAngularLimit1", v12);
    v7[2]._definition.maximumAngularLimit1 = v13;
    objc_msgSend_decodeFloatForKey_(a3, v14, @"maximumAngularLimit2", v15);
    v7[2]._definition.maximumAngularLimit2 = v16;
    objc_msgSend_decodeFloatForKey_(a3, v17, @"maximumTwistAngle", v18);
    v7[2]._definition.maximumTwistAngle = v19;
    *&v7->_definition.maximumAngularLimit1 = sub_1AF371C4C(a3, @"frameA");
    *&v7[1].super.super.isa = v20;
    *&v7[1].super._constraint = v21;
    *&v7[1].super._bodyB = v22;
    *&v7[1]._definition.maximumAngularLimit1 = sub_1AF371C4C(a3, @"frameB");
    *&v7[2].super.super.isa = v23;
    *&v7[2].super._constraint = v24;
    *&v7[2].super._bodyB = v25;
    objc_msgSend_setImmediateMode_(VFXTransaction, v26, v8, v27);
  }

  return v7;
}

- (id)valueForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"frameA", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_frameA(self, v6, v7, v8);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(a3, v6, @"frameB", v8))
    {
      v17.receiver = self;
      v17.super_class = VFXPhysicsConeTwistJoint;
      return [(VFXPhysicsConeTwistJoint *)&v17 valueForKey:a3];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_frameB(self, v13, v14, v15);
  }

  return objc_msgSend_valueWithVFXMatrix4_(v9, v10, v11, v12);
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (objc_msgSend_isEqualToString_(a4, a2, @"frameA", a4))
  {
    objc_msgSend_VFXMatrix4Value(a3, v7, v8, v9);

    MEMORY[0x1EEE66B58](self, sel_setFrameA_, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(a4, v7, @"frameB", v9))
  {
    objc_msgSend_VFXMatrix4Value(a3, v12, v13, v14);

    MEMORY[0x1EEE66B58](self, sel_setFrameB_, v15, v16);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VFXPhysicsConeTwistJoint;
    [(VFXPhysicsConeTwistJoint *)&v17 setValue:a3 forKey:a4];
  }
}

@end