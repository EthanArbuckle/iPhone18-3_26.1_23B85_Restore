@interface VFXPhysicsSliderJoint
+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor;
+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
+ (id)sliderWithBody:(id)body axis:(id)axis anchor:(id)anchor;
+ (id)sliderWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB;
- (VFXPhysicsSliderJoint)init;
- (VFXPhysicsSliderJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsSliderJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)axisAValue;
- (id)axisBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsSliderJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsSliderJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setAxisA:(VFXPhysicsSliderJoint *)self;
- (void)setAxisAValue:(id)value;
- (void)setAxisB:(VFXPhysicsSliderJoint *)self;
- (void)setAxisBValue:(id)value;
- (void)setMaximumAngularLimit:(float)limit;
- (void)setMaximumLinearLimit:(float)limit;
- (void)setMinimumAngularLimit:(float)limit;
- (void)setMinimumLinearLimit:(float)limit;
- (void)setMotorMaximumForce:(float)force;
- (void)setMotorMaximumTorque:(float)torque;
- (void)setMotorTargetAngularVelocity:(float)velocity;
- (void)setMotorTargetLinearVelocity:(float)velocity;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsSliderJoint

+ (id)sliderWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB
{
  v15 = objc_msgSend_objectAtIndexedSubscript_(axisA, a2, 0, axisA);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(axisA, v19, 1, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(axisA, v25, 2, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v31, 0, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v37, 1, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  v45 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v43, 2, v44);
  objc_msgSend_floatValue(v45, v46, v47, v48);
  v51 = objc_msgSend_objectAtIndexedSubscript_(axisB, v49, 0, v50);
  objc_msgSend_floatValue(v51, v52, v53, v54);
  v57 = objc_msgSend_objectAtIndexedSubscript_(axisB, v55, 1, v56);
  objc_msgSend_floatValue(v57, v58, v59, v60);
  v63 = objc_msgSend_objectAtIndexedSubscript_(axisB, v61, 2, v62);
  objc_msgSend_floatValue(v63, v64, v65, v66);
  v69 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v67, 0, v68);
  objc_msgSend_floatValue(v69, v70, v71, v72);
  v75 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v73, 1, v74);
  objc_msgSend_floatValue(v75, v76, v77, v78);
  v81 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v79, 2, v80);
  objc_msgSend_floatValue(v81, v82, v83, v84);

  return MEMORY[0x1EEE66B58](self, sel_jointWithBodyA_axisA_anchorA_bodyB_axisB_anchorB_, a, b);
}

+ (id)sliderWithBody:(id)body axis:(id)axis anchor:(id)anchor
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(axis, a2, 0, axis);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(axis, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(axis, v19, 2, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(anchor, v25, 0, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectAtIndexedSubscript_(anchor, v31, 1, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(anchor, v37, 2, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);

  return MEMORY[0x1EEE66B58](self, sel_jointWithBody_axis_anchor_, body, v43);
}

- (id)axisAValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setAxisAValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_setAxisA_, v22, v23);
}

- (id)anchorAValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setAnchorAValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v22, v23);
}

- (id)axisBValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setAxisBValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_setAxisB_, v22, v23);
}

- (id)anchorBValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setAnchorBValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v22, v23);
}

- (VFXPhysicsSliderJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsSliderJoint;
  result = [(VFXPhysicsSliderJoint *)&v3 init];
  if (result)
  {
    *&result[1].super.super.isa = xmmword_1AFE20180;
    *&result[1].super._bodyB = xmmword_1AFE20180;
    *&result[2].super._constraint = xmmword_1AFE47CC0;
    *&result[2]._anon_28[4] = 1065353216;
    HIDWORD(result[2].super._bodyB) = 1065353216;
  }

  return result;
}

- (VFXPhysicsSliderJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v19 = v6;
  v20 = v7;
  v17 = v4;
  v18 = v5;
  v21.receiver = self;
  v21.super_class = VFXPhysicsSliderJoint;
  v10 = [(VFXPhysicsSliderJoint *)&v21 init];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setBodyA_(v10, v11, a, v12);
    *&v13[1].super.super.isa = v17;
    *&v13[1].super._constraint = v18;
    objc_msgSend_setBodyB_(v13, v14, axisA, v15);
    *&v13[1].super._bodyB = v19;
    *&v13[2].super.super.isa = v20;
    *&v13[2].super._constraint = xmmword_1AFE47CC0;
    *&v13[2]._anon_28[4] = 1065353216;
    HIDWORD(v13[2].super._bodyB) = 1065353216;
  }

  return v13;
}

+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v17 = v7;
  v15 = v5;
  v16 = v6;
  v14 = v4;
  v10 = [self alloc];
  v12 = objc_msgSend_initWithBodyA_axisA_anchorA_bodyB_axisB_anchorB_(v10, v11, a, axisA, v14, v15, v16, v17);

  return v12;
}

+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor
{
  v11 = v3;
  v12 = v4;
  v6 = [body alloc];
  v9 = objc_msgSend_initWithBody_axis_anchor_(v6, v7, anchor, v8, v11, v12);

  return v9;
}

- (void)copyFrom:(id)from
{
  v3 = *(from + 4);
  *&self[1].super.super.isa = *(from + 3);
  *&self[1].super._constraint = v3;
  v4 = *(from + 8);
  v6 = *(from + 5);
  v5 = *(from + 6);
  *&self[2].super._constraint = *(from + 7);
  *&self[2].super._bodyB = v4;
  *&self[1].super._bodyB = v6;
  *&self[2].super.super.isa = v5;
}

- (void)setAxisA:(VFXPhysicsSliderJoint *)self
{
  v9 = v4;
  *&self[1].super.super.isa = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF360DCC;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAxisB:(VFXPhysicsSliderJoint *)self
{
  v9 = v4;
  *&self[1].super._bodyB = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF360FB4;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAnchorA:(VFXPhysicsSliderJoint *)self
{
  v9 = v4;
  *&self[1].super._constraint = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF36119C;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAnchorB:(VFXPhysicsSliderJoint *)self
{
  v9 = v4;
  *&self[2].super.super.isa = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3612D4;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setMinimumLinearLimit:(float)limit
{
  *&self[2].super._constraint = limit;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF361410;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumLinearLimit:(float)limit
{
  *(&self[2].super._constraint + 1) = limit;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3614F4;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMinimumAngularLimit:(float)limit
{
  *&self[2].super._bodyA = limit;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3615D8;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMaximumAngularLimit:(float)limit
{
  *(&self[2].super._bodyA + 1) = limit;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF36170C;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMotorTargetLinearVelocity:(float)velocity
{
  *&self[2].super._bodyB = velocity;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF361840;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  velocityCopy = velocity;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMotorMaximumForce:(float)force
{
  *(&self[2].super._bodyB + 1) = force;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF361930;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  forceCopy = force;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMotorTargetAngularVelocity:(float)velocity
{
  *self[2]._anon_28 = velocity;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF361A14;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  velocityCopy = velocity;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (void)setMotorMaximumTorque:(float)torque
{
  *&self[2]._anon_28[4] = torque;
  v7 = objc_msgSend_physicsWorld(self, a2, v3, v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF361B04;
  v10[3] = &unk_1E7A7E270;
  v10[4] = self;
  torqueCopy = torque;
  objc_msgSend__postCommandWithBlock_(v7, v8, v10, v9);
}

- (btTypedConstraint)_createConstraint
{
  v5 = objc_msgSend_bodyA(self, a2, v2, v3);
  v9 = objc_msgSend_bodyB(self, v6, v7, v8);
  if (!v5)
  {
    return 0;
  }

  v13 = v9;
  v14 = self + 1;
  v16 = *&self[1].super.super.isa;
  v15 = *&self[1].super._constraint;
  HIDWORD(v15) = 0;
  v75 = v15;
  v17 = *(&v16 + 1);
  v18 = fabsf(*(&v16 + 2)) <= 0.70711;
  *&v15 = (v17 * v17) + (*&v16 * *&v16);
  v19 = 1.0 / sqrtf(*&v15);
  v20 = -(*(&v16 + 1) * v19);
  v21 = *&v16 * v19;
  v22 = -(*(&v16 + 2) * (*&v16 * v19));
  v23 = *(&v16 + 2) * v20;
  v24 = *&v15 * v19;
  v25 = 0.0;
  v26 = (*(&v16 + 2) * *(&v16 + 2)) + (v17 * v17);
  v27 = 1.0 / sqrtf(v26);
  v28 = -(*(&v16 + 2) * v27);
  v29 = *(&v16 + 1) * v27;
  v30 = v26 * v27;
  v31 = -(*&v16 * (*(&v16 + 1) * v27));
  v32 = *&v16 * v28;
  if (v18)
  {
    v33 = 0.0;
  }

  else
  {
    v21 = v28;
    v20 = 0.0;
    v33 = v29;
  }

  if (!v18)
  {
    v24 = v32;
    v23 = v31;
    v22 = v30;
  }

  v69 = __PAIR64__(LODWORD(v20), v16);
  v70 = LODWORD(v22);
  v71 = __PAIR64__(LODWORD(v21), DWORD1(v16));
  v72 = LODWORD(v23);
  v73 = __PAIR64__(LODWORD(v33), DWORD2(v16));
  v74 = LODWORD(v24);
  v35 = *&self[1].super._bodyB;
  v34 = *&self[2].super.super.isa;
  HIDWORD(v34) = 0;
  v68 = v34;
  LODWORD(v34) = DWORD1(v35);
  v36 = fabsf(*(&v35 + 2)) <= 0.70711;
  v37 = (*&v34 * *&v34) + (*&v35 * *&v35);
  v38 = 1.0 / sqrtf(v37);
  v39 = -(*(&v35 + 1) * v38);
  v40 = *&v35 * v38;
  v41 = -(*(&v35 + 2) * (*&v35 * v38));
  v42 = *(&v35 + 2) * v39;
  v43 = v37 * v38;
  v44 = (*(&v35 + 2) * *(&v35 + 2)) + (*&v34 * *&v34);
  v45 = 1.0 / sqrtf(v44);
  v46 = -(*(&v35 + 2) * v45);
  v47 = *(&v35 + 1) * v45;
  v48 = v44 * v45;
  v49 = -(*&v35 * (*(&v35 + 1) * v45));
  if (v36)
  {
    v48 = v41;
  }

  else
  {
    v40 = v46;
    v39 = 0.0;
  }

  v63 = __PAIR64__(LODWORD(v39), v35);
  v64 = LODWORD(v48);
  v65 = __PAIR64__(LODWORD(v40), DWORD1(v35));
  v50 = *&v35 * v46;
  if (v36)
  {
    *&v35 = v42;
  }

  else
  {
    v25 = v47;
    *&v35 = v49;
  }

  v66 = v35;
  v67 = __PAIR64__(LODWORD(v25), DWORD2(v35));
  if (v36)
  {
    v51 = v43;
  }

  else
  {
    v51 = v50;
  }

  v55 = objc_msgSend__handle(v5, v10, v11, v12, v63, v64, v65, v66, v67, LODWORD(v51), v68, v69, v70, v71, v72, v73, v74, v75);
  if (v13)
  {
    v56 = objc_msgSend__handle(v13, v52, v53, v54);
    v57 = sub_1AFDA7294(1248, 16);
    sub_1AFDA0598(v57, v55, v56, &v69, &v63, 1);
  }

  else
  {
    v57 = sub_1AFDA7294(1248, 16);
    sub_1AFDA06B0(v57, v55, &v69, 1);
  }

  *(v57 + 212) = v14[1].super._constraint;
  v58 = fmodf(*&v14[1].super._bodyA, 6.2832);
  if (v58 >= -3.1416)
  {
    if (v58 > 3.1416)
    {
      v58 = v58 + -6.2832;
    }
  }

  else
  {
    v58 = v58 + 6.2832;
  }

  *(v57 + 220) = v58;
  v59 = fmodf(*(&v14[1].super._bodyA + 1), 6.2832);
  if (v59 >= -3.1416)
  {
    if (v59 > 3.1416)
    {
      v59 = v59 + -6.2832;
    }
  }

  else
  {
    v59 = v59 + 6.2832;
  }

  *(v57 + 224) = v59;
  v60 = *&v14[1].super._bodyB;
  if (v60 != 0.0)
  {
    *(v57 + 1216) = 1;
    *(v57 + 1220) = v60;
    *(v57 + 1224) = HIDWORD(v14[1].super._bodyB);
  }

  v61 = *v14[1]._anon_28;
  if (v61 != 0.0)
  {
    *(v57 + 1232) = 1;
    *(v57 + 1236) = v61;
    *(v57 + 1240) = *&v14[1]._anon_28[4];
  }

  return v57;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v21.receiver = self;
  v21.super_class = VFXPhysicsSliderJoint;
  [(VFXPhysicsJoint *)&v21 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"axisA", *selfCopy);
  sub_1AF371A8C(coder, @"axisB", selfCopy[2]);
  sub_1AF371A8C(coder, @"anchorA", selfCopy[1]);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[3]);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"minLinearLimit", v6, selfCopy[4].n128_f32[0]);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"maxLinearLimit", v8, selfCopy[4].n128_f32[1]);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"minAngularLimit", v10, selfCopy[4].n128_f32[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"maxAngularLimit", v12, selfCopy[4].n128_f32[3]);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"motorTargetLinearVelocity", v14, selfCopy[5].n128_f32[0]);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"motorMaximumForce", v16, selfCopy[5].n128_f32[1]);
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"motorTargetAngularVelocity", v18, selfCopy[5].n128_f32[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v19, @"motorMaximumTorque", v20, selfCopy[5].n128_f32[3]);
}

- (VFXPhysicsSliderJoint)initWithCoder:(id)coder
{
  v42.receiver = self;
  v42.super_class = VFXPhysicsSliderJoint;
  v7 = [(VFXPhysicsJoint *)&v42 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *&v11 = sub_1AF371BC4(coder, @"axisA");
    *&v7[1].super.super.isa = v11;
    *&v12 = sub_1AF371BC4(coder, @"axisB");
    *&v7[1].super._bodyB = v12;
    *&v13 = sub_1AF371BC4(coder, @"anchorA");
    *&v7[1].super._constraint = v13;
    *&v14 = sub_1AF371BC4(coder, @"anchorB");
    *&v7[2].super.super.isa = v14;
    objc_msgSend_decodeDoubleForKey_(coder, v15, @"minLinearLimit", v16);
    *&v17 = v17;
    LODWORD(v7[2].super._constraint) = LODWORD(v17);
    objc_msgSend_decodeDoubleForKey_(coder, v18, @"maxLinearLimit", v19);
    *&v20 = v20;
    HIDWORD(v7[2].super._constraint) = LODWORD(v20);
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"minAngularLimit", v22);
    *&v23 = v23;
    LODWORD(v7[2].super._bodyA) = LODWORD(v23);
    objc_msgSend_decodeDoubleForKey_(coder, v24, @"maxAngularLimit", v25);
    *&v26 = v26;
    HIDWORD(v7[2].super._bodyA) = LODWORD(v26);
    objc_msgSend_decodeDoubleForKey_(coder, v27, @"motorTargetLinearVelocity", v28);
    *&v29 = v29;
    LODWORD(v7[2].super._bodyB) = LODWORD(v29);
    objc_msgSend_decodeDoubleForKey_(coder, v30, @"motorMaximumForce", v31);
    *&v32 = v32;
    HIDWORD(v7[2].super._bodyB) = LODWORD(v32);
    objc_msgSend_decodeDoubleForKey_(coder, v33, @"motorTargetAngularVelocity", v34);
    *&v35 = v35;
    *v7[2]._anon_28 = LODWORD(v35);
    objc_msgSend_decodeDoubleForKey_(coder, v36, @"motorMaximumTorque", v37);
    *&v38 = v38;
    *&v7[2]._anon_28[4] = LODWORD(v38);
    objc_msgSend_setImmediateMode_(VFXTransaction, v39, v8, v40);
  }

  return v7;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"axisA", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_axisA(self, v6, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(key, v6, @"axisB", v8))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_axisB(self, v13, v14, v15);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"anchorA", v15))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_anchorA(self, v16, v17, v18);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v16, @"anchorB", v18))
    {
      v23.receiver = self;
      v23.super_class = VFXPhysicsSliderJoint;
      return [(VFXPhysicsSliderJoint *)&v23 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_anchorB(self, v19, v20, v21);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"axisA", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    MEMORY[0x1EEE66B58](self, sel_setAxisA_, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"axisB", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v12, v13, v14);

    MEMORY[0x1EEE66B58](self, sel_setAxisB_, v15, v16);
  }

  else if (objc_msgSend_isEqualToString_(key, v12, @"anchorA", v14))
  {
    objc_msgSend_VFXFloat3Value(value, v17, v18, v19);

    MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v20, v21);
  }

  else if (objc_msgSend_isEqualToString_(key, v17, @"anchorB", v19))
  {
    objc_msgSend_VFXFloat3Value(value, v22, v23, v24);

    MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v25, v26);
  }

  else
  {
    v27.receiver = self;
    v27.super_class = VFXPhysicsSliderJoint;
    [(VFXPhysicsSliderJoint *)&v27 setValue:value forKey:key];
  }
}

@end