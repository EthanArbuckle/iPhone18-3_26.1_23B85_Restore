@interface VFXPhysicsConeTwistJoint
+ (id)jointWithBody:(double)body frame:(double)frame;
+ (id)jointWithBodyA:(double)a frameA:(double)frameA bodyB:(double)b frameB:(double)frameB;
- (VFXPhysicsConeTwistJoint)init;
- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a frameA:(__n128)frameA bodyB:(__n128)b frameB:(__n128)frameB;
- (VFXPhysicsConeTwistJoint)initWithCoder:(id)coder;
- (__n128)initWithBody:(__n128)body frame:(__n128)frame;
- (btTypedConstraint)_createConstraint;
- (id)valueForKey:(id)key;
- (uint64_t)setFrameA:(uint64_t)a;
- (uint64_t)setFrameB:(uint64_t)b;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setMaximumAngularLimit1:(float)limit1;
- (void)setMaximumAngularLimit2:(float)limit2;
- (void)setMaximumTwistAngle:(float)angle;
- (void)setValue:(id)value forKey:(id)key;
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

- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a frameA:(__n128)frameA bodyB:(__n128)b frameB:(__n128)frameB
{
  v29.receiver = self;
  v29.super_class = VFXPhysicsConeTwistJoint;
  v14 = [(VFXPhysicsConeTwistJoint *)&v29 init];
  v17 = v14;
  if (v14)
  {
    objc_msgSend_setBodyA_(v14, v15, a11, v16);
    *&v17->_definition.maximumAngularLimit1 = a2;
    *&v17[1].super.super.isa = a;
    *&v17[1].super._constraint = frameA;
    *&v17[1].super._bodyB = b;
    objc_msgSend_setBodyB_(v17, v18, a12, v19);
    *&v17[1]._definition.maximumAngularLimit1 = frameB;
    *&v17[2].super.super.isa = a7;
    *&v17[2].super._constraint = a8;
    *&v17[2].super._bodyB = a9;
    *&v17[2]._definition.maximumAngularLimit1 = vdup_n_s32(0x3F490FDBu);
    v17[2]._definition.maximumTwistAngle = 0.7854;
  }

  return v17;
}

- (__n128)initWithBody:(__n128)body frame:(__n128)frame
{
  v17.receiver = self;
  v17.super_class = VFXPhysicsConeTwistJoint;
  v8 = [(VFXPhysicsConeTwistJoint *)&v17 init];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setBodyA_(v8, v9, a7, v10);
    v11[3] = a2;
    v11[4] = body;
    v11[5] = frame;
    v11[6] = a5;
  }

  return v11;
}

+ (id)jointWithBodyA:(double)a frameA:(double)frameA bodyB:(double)b frameB:(double)frameB
{
  v14 = [self alloc];
  v16 = objc_msgSend_initWithBodyA_frameA_bodyB_frameB_(v14, v15, a11, a12, a2, a, frameA, b, frameB, a7, a8, a9);

  return v16;
}

+ (id)jointWithBody:(double)body frame:(double)frame
{
  v8 = [self alloc];
  v11 = objc_msgSend_initWithBody_frame_(v8, v9, a7, v10, a2, body, frame, a5);

  return v11;
}

- (void)copyFrom:(id)from
{
  *&self->_definition.maximumAngularLimit1 = *(from + 3);
  v3 = *(from + 7);
  v5 = *(from + 4);
  v4 = *(from + 5);
  *&self[1].super._bodyB = *(from + 6);
  *&self[1]._definition.maximumAngularLimit1 = v3;
  *&self[1].super.super.isa = v5;
  *&self[1].super._constraint = v4;
  v6 = *(from + 11);
  v8 = *(from + 8);
  v7 = *(from + 9);
  *&self[2].super._bodyB = *(from + 10);
  *&self[2]._definition.maximumAngularLimit1 = v6;
  *&self[2].super.super.isa = v8;
  *&self[2].super._constraint = v7;
}

- (uint64_t)setFrameA:(uint64_t)a
{
  self[3] = a5;
  self[4] = a6;
  self[5] = a7;
  self[6] = a8;
  v9 = objc_msgSend_physicsWorld(self, a2, a, a4);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF35A81C;
  v17[3] = &unk_1E7A7E578;
  selfCopy = self;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return objc_msgSend__postCommandWithBlock_(v9, v10, v17, v11);
}

- (uint64_t)setFrameB:(uint64_t)b
{
  self[7] = a5;
  self[8] = a6;
  self[9] = a7;
  self[10] = a8;
  v9 = objc_msgSend_physicsWorld(self, a2, b, a4);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF35AA04;
  v17[3] = &unk_1E7A7E578;
  selfCopy = self;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return objc_msgSend__postCommandWithBlock_(v9, v10, v17, v11);
}

- (void)setMaximumAngularLimit1:(float)limit1
{
  self[2]._definition.maximumAngularLimit1 = limit1;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35ABDC;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limit1Copy = limit1;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumAngularLimit2:(float)limit2
{
  self[2]._definition.maximumAngularLimit2 = limit2;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35ACF0;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limit2Copy = limit2;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumTwistAngle:(float)angle
{
  self[2]._definition.maximumTwistAngle = angle;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35AE08;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  angleCopy = angle;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (btTypedConstraint)_createConstraint
{
  v5 = objc_msgSend_bodyA(self, a2, v2, v3);
  v9 = objc_msgSend_bodyB(self, v6, v7, v8);

  return sub_1AF35A280(&self->_definition, v5, v9, v10);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v14.receiver = self;
  v14.super_class = VFXPhysicsConeTwistJoint;
  [(VFXPhysicsJoint *)&v14 encodeWithCoder:?];
  selfCopy += 3;
  LODWORD(v5) = selfCopy[8].n128_u32[0];
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"maximumAngularLimit1", v7, v5);
  LODWORD(v8) = selfCopy[8].n128_u32[1];
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"maximumAngularLimit2", v10, v8);
  LODWORD(v11) = selfCopy[8].n128_u32[2];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"maximumTwistAngle", v13, v11);
  sub_1AF371B50(coder, @"frameA", *selfCopy, selfCopy[1], selfCopy[2], selfCopy[3]);
  sub_1AF371B50(coder, @"frameB", selfCopy[4], selfCopy[5], selfCopy[6], selfCopy[7]);
}

- (VFXPhysicsConeTwistJoint)initWithCoder:(id)coder
{
  v29.receiver = self;
  v29.super_class = VFXPhysicsConeTwistJoint;
  v7 = [(VFXPhysicsJoint *)&v29 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeFloatForKey_(coder, v11, @"maximumAngularLimit1", v12);
    v7[2]._definition.maximumAngularLimit1 = v13;
    objc_msgSend_decodeFloatForKey_(coder, v14, @"maximumAngularLimit2", v15);
    v7[2]._definition.maximumAngularLimit2 = v16;
    objc_msgSend_decodeFloatForKey_(coder, v17, @"maximumTwistAngle", v18);
    v7[2]._definition.maximumTwistAngle = v19;
    *&v7->_definition.maximumAngularLimit1 = sub_1AF371C4C(coder, @"frameA");
    *&v7[1].super.super.isa = v20;
    *&v7[1].super._constraint = v21;
    *&v7[1].super._bodyB = v22;
    *&v7[1]._definition.maximumAngularLimit1 = sub_1AF371C4C(coder, @"frameB");
    *&v7[2].super.super.isa = v23;
    *&v7[2].super._constraint = v24;
    *&v7[2].super._bodyB = v25;
    objc_msgSend_setImmediateMode_(VFXTransaction, v26, v8, v27);
  }

  return v7;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"frameA", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_frameA(self, v6, v7, v8);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v6, @"frameB", v8))
    {
      v17.receiver = self;
      v17.super_class = VFXPhysicsConeTwistJoint;
      return [(VFXPhysicsConeTwistJoint *)&v17 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_frameB(self, v13, v14, v15);
  }

  return objc_msgSend_valueWithVFXMatrix4_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"frameA", key))
  {
    objc_msgSend_VFXMatrix4Value(value, v7, v8, v9);

    MEMORY[0x1EEE66B58](self, sel_setFrameA_, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"frameB", v9))
  {
    objc_msgSend_VFXMatrix4Value(value, v12, v13, v14);

    MEMORY[0x1EEE66B58](self, sel_setFrameB_, v15, v16);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VFXPhysicsConeTwistJoint;
    [(VFXPhysicsConeTwistJoint *)&v17 setValue:value forKey:key];
  }
}

@end