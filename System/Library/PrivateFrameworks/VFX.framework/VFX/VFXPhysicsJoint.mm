@interface VFXPhysicsJoint
+ (id)joint;
- (VFXPhysicsJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addToPhysicsWorld:(id)world;
- (void)_removeConstraint;
- (void)_updateContraintAndAddToWorld:(id)world;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBodyA:(id)a;
- (void)setBodyB:(id)b;
@end

@implementation VFXPhysicsJoint

+ (id)joint
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  bodyA = self->_bodyA;
  if (bodyA)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF35C894;
    v9[3] = &unk_1E7A7C0C8;
    v9[4] = self;
    (*(block + 2))(block, bodyA, 1, v9);
  }

  bodyB = self->_bodyB;
  if (bodyB)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF35C8A0;
    v8[3] = &unk_1E7A7C0C8;
    v8[4] = self;
    (*(block + 2))(block, bodyB, 1, v8);
  }
}

- (btTypedConstraint)_createConstraint
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFA7E4(self, v3);
  }

  return 0;
}

- (void)dealloc
{
  if (self->_constraint)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA85C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11.receiver = self;
  v11.super_class = VFXPhysicsJoint;
  [(VFXPhysicsJoint *)&v11 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_bodyA(self, v5, v6, v7);
  objc_msgSend_setBodyA_(v4, v9, v8, v10);
  v14 = objc_msgSend_bodyB(self, v11, v12, v13);
  objc_msgSend_setBodyB_(v4, v15, v14, v16);
  objc_msgSend_copyFrom_(v4, v17, self, v18);
  return v4;
}

- (void)setBodyA:(id)a
{
  bodyA = self->_bodyA;
  if (bodyA != a)
  {
    v14[7] = v3;
    v14[8] = v4;

    self->_bodyA = a;
    physicsWorld = self->_physicsWorld;
    if (physicsWorld)
    {
      v12 = objc_msgSend_world(physicsWorld, v8, v9, v10);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF35CA8C;
      v14[3] = &unk_1E7A7E1D0;
      v14[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, v12, v14);
    }
  }
}

- (void)setBodyB:(id)b
{
  bodyB = self->_bodyB;
  if (bodyB != b)
  {
    v14[7] = v3;
    v14[8] = v4;

    self->_bodyB = b;
    physicsWorld = self->_physicsWorld;
    if (physicsWorld)
    {
      v12 = objc_msgSend_world(physicsWorld, v8, v9, v10);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF35CB4C;
      v14[3] = &unk_1E7A7E1D0;
      v14[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, v12, v14);
    }
  }
}

- (void)_addToPhysicsWorld:(id)world
{
  if (self->_physicsWorld)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA894(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    objc_msgSend__removeConstraint(self, v7, v8, v9);
  }

  if (self->_constraint)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA8CC(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    self->_physicsWorld = world;
    objc_msgSend__updateContraintAndAddToWorld_(self, a2, world, v3);
  }
}

- (void)_updateContraintAndAddToWorld:(id)world
{
  if (self->_physicsWorld)
  {
    objc_msgSend__removeConstraint(self, a2, world, v3);
    Constraint = objc_msgSend__createConstraint(self, v6, v7, v8);
    self->_constraint = Constraint;
    if (Constraint)
    {
      v13 = *(*objc_msgSend__handle(world, v10, v11, v12) + 112);

      v13();
    }
  }
}

- (void)_removeConstraint
{
  if (self->_constraint)
  {
    v5 = objc_msgSend__handle(self->_physicsWorld, a2, v2, v3);
    if (v5)
    {
      (*(*v5 + 120))(v5, self->_constraint);
    }

    constraint = self->_constraint;
    if (constraint)
    {
      (*(constraint->var0 + 1))(constraint);
    }

    self->_constraint = 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  bodyA = self->_bodyA;
  if (bodyA)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, bodyA, @"bodyA");
  }

  bodyB = self->_bodyB;
  if (bodyB)
  {

    objc_msgSend_encodeObject_forKey_(coder, a2, bodyB, @"bodyB");
  }
}

- (VFXPhysicsJoint)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXPhysicsJoint;
  v7 = [(VFXPhysicsJoint *)&v18 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = objc_opt_class();
    v7->_bodyA = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"bodyA");
    v13 = objc_opt_class();
    v7->_bodyB = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"bodyB");
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v8, v16);
  }

  return v7;
}

@end