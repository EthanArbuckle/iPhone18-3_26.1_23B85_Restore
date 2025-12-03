@interface VFXPhysicsBallSocketJoint
+ (id)ballSocketWithBody:(id)body anchor:(id)anchor;
+ (id)ballSocketWithBodyA:(id)a anchorA:(id)anchorA bodyB:(id)b anchorB:(id)anchorB;
+ (id)jointWithBody:(id)body anchor:;
+ (id)jointWithBodyA:(id)a anchorA:(SEL)anchorA bodyB:(id)b anchorB:(id)anchorB;
- (VFXPhysicsBallSocketJoint)init;
- (VFXPhysicsBallSocketJoint)initWithBody:(id)body anchor:;
- (VFXPhysicsBallSocketJoint)initWithBodyA:(VFXPhysicsBallSocketJoint *)self anchorA:(SEL)a bodyB:(id)b anchorB:(id)anchorB;
- (VFXPhysicsBallSocketJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsBallSocketJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsBallSocketJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsBallSocketJoint

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

+ (id)ballSocketWithBodyA:(id)a anchorA:(id)anchorA bodyB:(id)b anchorB:(id)anchorB
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(anchorA, a2, 0, anchorA);
  objc_msgSend_floatValue(v10, v11, v12, v13);
  v16 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v14, 1, v15);
  objc_msgSend_floatValue(v16, v17, v18, v19);
  v22 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v20, 2, v21);
  objc_msgSend_floatValue(v22, v23, v24, v25);
  v28 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v26, 0, v27);
  objc_msgSend_floatValue(v28, v29, v30, v31);
  v34 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v32, 1, v33);
  objc_msgSend_floatValue(v34, v35, v36, v37);
  v40 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v38, 2, v39);
  objc_msgSend_floatValue(v40, v41, v42, v43);

  return MEMORY[0x1EEE66B58](VFXPhysicsBallSocketJoint, sel_jointWithBodyA_anchorA_bodyB_anchorB_, a, b);
}

+ (id)ballSocketWithBody:(id)body anchor:(id)anchor
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(anchor, a2, 0, anchor);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(anchor, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(anchor, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);

  return MEMORY[0x1EEE66B58](VFXPhysicsBallSocketJoint, sel_jointWithBody_anchor_, body, v22);
}

- (VFXPhysicsBallSocketJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsBallSocketJoint;
  return [(VFXPhysicsBallSocketJoint *)&v3 init];
}

- (VFXPhysicsBallSocketJoint)initWithBodyA:(VFXPhysicsBallSocketJoint *)self anchorA:(SEL)a bodyB:(id)b anchorB:(id)anchorB
{
  v15 = v4;
  v16 = v5;
  v17.receiver = self;
  v17.super_class = VFXPhysicsBallSocketJoint;
  v8 = [(VFXPhysicsBallSocketJoint *)&v17 init];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setBodyA_(v8, v9, b, v10);
    *&v11[1].super.super.isa = v15;
    objc_msgSend_setBodyB_(v11, v12, anchorB, v13);
    *&v11[1].super._constraint = v16;
  }

  return v11;
}

- (VFXPhysicsBallSocketJoint)initWithBody:(id)body anchor:
{
  v10 = v3;
  v11.receiver = self;
  v11.super_class = VFXPhysicsBallSocketJoint;
  v5 = [(VFXPhysicsBallSocketJoint *)&v11 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setBodyA_(v5, v6, body, v7);
    *&v8[1].super.super.isa = v10;
  }

  return v8;
}

+ (id)jointWithBodyA:(id)a anchorA:(SEL)anchorA bodyB:(id)b anchorB:(id)anchorB
{
  v12 = v4;
  v13 = v5;
  v8 = [a alloc];
  v10 = objc_msgSend_initWithBodyA_anchorA_bodyB_anchorB_(v8, v9, b, anchorB, v12, v13);

  return v10;
}

+ (id)jointWithBody:(id)body anchor:
{
  v10 = v3;
  v5 = [self alloc];
  v8 = objc_msgSend_initWithBody_anchor_(v5, v6, body, v7, v10);

  return v8;
}

- (void)copyFrom:(id)from
{
  v3 = *(from + 4);
  *&self[1].super.super.isa = *(from + 3);
  *&self[1].super._constraint = v3;
}

- (void)setAnchorA:(VFXPhysicsBallSocketJoint *)self
{
  v9 = v4;
  *&self[1].super.super.isa = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF355704;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (void)setAnchorB:(VFXPhysicsBallSocketJoint *)self
{
  v9 = v4;
  *&self[1].super._constraint = v4;
  v6 = objc_msgSend_physicsWorld(self, a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF3557E8;
  v10[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v11 = v9;
  objc_msgSend__postCommandWithBlock_(v6, v7, v10, v8);
}

- (btTypedConstraint)_createConstraint
{
  v5 = objc_msgSend_bodyA(self, a2, v2, v3);
  v9 = objc_msgSend_bodyB(self, v6, v7, v8);

  return sub_1AF355360(&self[1], v5, v9, v10);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = VFXPhysicsBallSocketJoint;
  [(VFXPhysicsJoint *)&v5 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"anchorA", *selfCopy);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[1]);
}

- (VFXPhysicsBallSocketJoint)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = VFXPhysicsBallSocketJoint;
  v7 = [(VFXPhysicsJoint *)&v16 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *&v11 = sub_1AF371BC4(coder, @"anchorA");
    *&v7[1].super.super.isa = v11;
    *&v12 = sub_1AF371BC4(coder, @"anchorB");
    *&v7[1].super._constraint = v12;
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, v8, v14);
  }

  return v7;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"anchorA", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_anchorA(self, v6, v7, v8);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v6, @"anchorB", v8))
    {
      v17.receiver = self;
      v17.super_class = VFXPhysicsBallSocketJoint;
      return [(VFXPhysicsBallSocketJoint *)&v17 valueForKey:key];
    }

    v9 = MEMORY[0x1E696B098];
    objc_msgSend_anchorB(self, v13, v14, v15);
  }

  return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"anchorA", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"anchorB", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v12, v13, v14);

    MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v15, v16);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VFXPhysicsBallSocketJoint;
    [(VFXPhysicsBallSocketJoint *)&v17 setValue:value forKey:key];
  }
}

@end