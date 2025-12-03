@interface VFXPhysicsHingeJoint
+ (id)hingeWithBody:(id)body axis:(id)axis anchor:(id)anchor;
+ (id)hingeWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB;
+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor;
+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsHingeJoint)init;
- (VFXPhysicsHingeJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsHingeJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)axisAValue;
- (id)axisBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsHingeJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsHingeJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setAxisA:(VFXPhysicsHingeJoint *)self;
- (void)setAxisAValue:(id)value;
- (void)setAxisB:(VFXPhysicsHingeJoint *)self;
- (void)setAxisBValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsHingeJoint

+ (id)hingeWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB
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

+ (id)hingeWithBody:(id)body axis:(id)axis anchor:(id)anchor
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

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VFXPhysicsHingeJoint;
  [(VFXPhysicsJoint *)&v2 dealloc];
}

- (VFXPhysicsHingeJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsHingeJoint;
  result = [(VFXPhysicsHingeJoint *)&v3 init];
  if (result)
  {
    *&result[1].super._bodyB = xmmword_1AFE20180;
    *&result[2].super.super.isa = xmmword_1AFE20180;
    *&result[1].super.super.isa = 0u;
    *&result[1].super._constraint = 0u;
  }

  return result;
}

- (void)copyFrom:(id)from
{
  v3 = *(from + 6);
  v5 = *(from + 3);
  v4 = *(from + 4);
  *&self[1].super._bodyB = *(from + 5);
  *&self[2].super.super.isa = v3;
  *&self[1].super.super.isa = v5;
  *&self[1].super._constraint = v4;
}

- (VFXPhysicsHingeJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v19 = v6;
  v20 = v7;
  v17 = v4;
  v18 = v5;
  v21.receiver = self;
  v21.super_class = VFXPhysicsHingeJoint;
  v10 = [(VFXPhysicsHingeJoint *)&v21 init];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setBodyA_(v10, v11, a, v12);
    *&v13[1].super._bodyB = v17;
    *&v13[1].super.super.isa = v18;
    objc_msgSend_setBodyB_(v13, v14, axisA, v15);
    *&v13[2].super.super.isa = v19;
    *&v13[1].super._constraint = v20;
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

- (void)setAxisA:(VFXPhysicsHingeJoint *)self
{
  v9 = v4;
  *&self[1].super._bodyB = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35B96C;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAxisB:(VFXPhysicsHingeJoint *)self
{
  v9 = v4;
  *&self[2].super.super.isa = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35BF70;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAnchorA:(VFXPhysicsHingeJoint *)self
{
  v9 = v4;
  *&self[1].super.super.isa = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35C068;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAnchorB:(VFXPhysicsHingeJoint *)self
{
  v9 = v4;
  *&self[1].super._constraint = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF35C17C;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
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
  v18 = objc_msgSend__handle(v5, v10, v11, v12);
  v19 = *&v14->super._bodyB;
  bodyB = v14->super._bodyB;
  v36 = DWORD2(v19);
  v37 = 0;
  v20 = *&v14->super.super.isa;
  isa = v14->super.super.isa;
  v33 = DWORD2(v20);
  v34 = 0;
  if (v13)
  {
    v21 = objc_msgSend__handle(v13, v15, v16, v17);
    v22 = *&v14[1].super.super.isa;
    v29 = v14[1].super.super.isa;
    v30 = DWORD2(v22);
    v31 = 0;
    v23 = *&v14->super._constraint;
    constraint = v14->super._constraint;
    v27 = DWORD2(v23);
    v28 = 0;
    v24 = sub_1AFDA7294(880, 16);
    (sub_1AFD99E1C)(v24, v18, v21, &isa, &constraint, &bodyB, &v29, 0);
  }

  else
  {
    v24 = sub_1AFDA7294(880, 16);
    sub_1AFD9A22C(v24, v18, &isa, &bodyB, 0);
  }

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = VFXPhysicsHingeJoint;
  [(VFXPhysicsJoint *)&v5 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"axisA", selfCopy[2]);
  sub_1AF371A8C(coder, @"axisB", selfCopy[3]);
  sub_1AF371A8C(coder, @"anchorA", *selfCopy);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[1]);
}

- (VFXPhysicsHingeJoint)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXPhysicsHingeJoint;
  v7 = [(VFXPhysicsJoint *)&v18 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *&v11 = sub_1AF371BC4(coder, @"axisA");
    *&v7[1].super._bodyB = v11;
    *&v12 = sub_1AF371BC4(coder, @"axisB");
    *&v7[2].super.super.isa = v12;
    *&v13 = sub_1AF371BC4(coder, @"anchorA");
    *&v7[1].super.super.isa = v13;
    *&v14 = sub_1AF371BC4(coder, @"anchorB");
    *&v7[1].super._constraint = v14;
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v8, v16);
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
      v23.super_class = VFXPhysicsHingeJoint;
      return [(VFXPhysicsHingeJoint *)&v23 valueForKey:key];
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
    v27.super_class = VFXPhysicsHingeJoint;
    [(VFXPhysicsHingeJoint *)&v27 setValue:value forKey:key];
  }
}

@end