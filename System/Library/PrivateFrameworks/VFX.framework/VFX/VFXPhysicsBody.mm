@interface VFXPhysicsBody
+ (VFXPhysicsBody)bodyWithType:(int64_t)type shape:(id)shape;
+ (id)_generateDefaultShapeForNode:(id)node;
+ (id)dynamicBody;
+ (id)kinematicBody;
+ (id)staticBody;
- (BOOL)isResting;
- (VFXPhysicsBody)init;
- (VFXPhysicsBody)initWithCoder:(id)coder;
- (VFXPhysicsBody)initWithType:(int64_t)type shape:(id)shape;
- (VFXPhysicsShape)physicsShape;
- (__n128)velocity;
- (id)angularVelocityFactorValue;
- (id)angularVelocityValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)momentOfInertiaValue;
- (id)valueForKey:(id)key;
- (id)velocityFactorValue;
- (id)velocityValue;
- (int8x16_t)angularVelocity;
- (uint64_t)moveToTransform:(float32x4_t)transform;
- (uint64_t)resetToTransform:(__n128)transform;
- (void)_activate;
- (void)_createBody;
- (void)_removeOwner;
- (void)_setBtShape:(id)shape;
- (void)_setOwner:(id)owner;
- (void)_setPhysicsShape:(id)shape;
- (void)_updateCollisionShape;
- (void)applyForce:(BOOL)force impulse:;
- (void)applyForce:(VFXPhysicsBody *)self atPosition:(SEL)position impulse:(BOOL)impulse;
- (void)applyForceValue:(id)value atPosition:(id)position impulse:(BOOL)impulse;
- (void)applyForceValue:(id)value impulse:(BOOL)impulse;
- (void)applyTorque:(BOOL)torque impulse:;
- (void)applyTorqueValue:(id)value impulse:(BOOL)impulse;
- (void)cleanCollisionCache;
- (void)clearAllForces;
- (void)commonInit;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateShape;
- (void)moveToPosition:(VFXPhysicsBody *)self;
- (void)resetTransform;
- (void)rotateToAxisAngle:(VFXPhysicsBody *)self;
- (void)setAffectedByGravity:(BOOL)gravity;
- (void)setAllowsResting:(BOOL)resting;
- (void)setAngularDamping:(float)damping;
- (void)setAngularRestingThreshold:(float)threshold;
- (void)setAngularVelocity:(VFXPhysicsBody *)self;
- (void)setAngularVelocityFactor:(VFXPhysicsBody *)self;
- (void)setAngularVelocityFactorValue:(id)value;
- (void)setAngularVelocityValue:(id)value;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setCenterOfMassOffset:(VFXPhysicsBody *)self;
- (void)setCharge:(float)charge;
- (void)setCollisionBitMask:(unint64_t)mask;
- (void)setContactTestBitMask:(unint64_t)mask;
- (void)setContinuousCollisionDetectionThreshold:(float)threshold;
- (void)setDamping:(float)damping;
- (void)setFriction:(float)friction;
- (void)setLinearRestingThreshold:(float)threshold;
- (void)setMass:(float)mass;
- (void)setMomentOfInertia:(VFXPhysicsBody *)self;
- (void)setMomentOfInertiaValue:(id)value;
- (void)setPhysicsShape:(id)DefaultShapeForNode;
- (void)setResting:(BOOL)resting;
- (void)setRestitution:(float)restitution;
- (void)setRollingFriction:(float)friction;
- (void)setType:(int64_t)type;
- (void)setUsesDefaultMomentOfInertia:(BOOL)inertia;
- (void)setValue:(id)value forKey:(id)key;
- (void)setVelocity:(VFXPhysicsBody *)self;
- (void)setVelocityFactor:(VFXPhysicsBody *)self;
- (void)setVelocityFactorValue:(id)value;
- (void)setVelocityValue:(id)value;
- (void)updateDefaultShape;
- (void)updateGlobalScale:(double)scale;
@end

@implementation VFXPhysicsBody

- (id)momentOfInertiaValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setMomentOfInertiaValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setMomentOfInertia_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)velocityValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setVelocityValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setVelocity_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)angularVelocityValue
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, a2, v2, v3);
  v37[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v37[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v37[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v37[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v37, 4);
}

- (void)setAngularVelocityValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v34 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v33 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(value, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);

  objc_msgSend_setAngularVelocity_(self, v30, v31, v32, COERCE_DOUBLE(__PAIR64__(v33, v34)));
}

- (id)velocityFactorValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setVelocityFactorValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setVelocityFactor_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)angularVelocityFactorValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setAngularVelocityFactorValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setAngularVelocityFactor_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (void)applyForceValue:(id)value impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v7 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, impulse);
  objc_msgSend_floatValue(v7, v8, v9, v10);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2, v18);
  objc_msgSend_floatValue(v19, v20, v21, v22);

  MEMORY[0x1EEE66B58](self, sel_applyForce_impulse_, impulseCopy, v23);
}

- (void)applyForceValue:(id)value atPosition:(id)position impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, position);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(value, v19, 2, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(position, v25, 0, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectAtIndexedSubscript_(position, v31, 1, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(position, v37, 2, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);

  MEMORY[0x1EEE66B58](self, sel_applyForce_atPosition_impulse_, impulseCopy, v43);
}

- (void)applyTorqueValue:(id)value impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v7 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, impulse);
  objc_msgSend_floatValue(v7, v8, v9, v10);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v17, 2, v18);
  objc_msgSend_floatValue(v19, v20, v21, v22);
  v25 = objc_msgSend_objectAtIndexedSubscript_(value, v23, 3, v24);
  objc_msgSend_floatValue(v25, v26, v27, v28);

  MEMORY[0x1EEE66B58](self, sel_applyTorque_impulse_, impulseCopy, v29);
}

- (void)commonInit
{
  *&self->_friction = 0x3F0000003F000000;
  self->_rollingFriction = 0.0;
  self->_damping = 0.1;
  __asm { FMOV            V0.4S, #1.0 }

  *self->_velocityFactor = _Q0;
  *self->_angularVelocityFactor = _Q0;
  self->_angularDamping = 0.1;
  *&self->_linearRestingThreshold = vdup_n_s32(0x3DCCCCCDu);
  self->_allowsResting = 1;
  self->_ignoreGravity = 0;
  self->_contactTestBitMask = 0;
}

- (VFXPhysicsBody)init
{
  v8.receiver = self;
  v8.super_class = VFXPhysicsBody;
  v2 = [(VFXPhysicsBody *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4, v5);
  }

  return v6;
}

- (VFXPhysicsBody)initWithType:(int64_t)type shape:(id)shape
{
  v21.receiver = self;
  v21.super_class = VFXPhysicsBody;
  v6 = [(VFXPhysicsBody *)&v21 init];
  v10 = v6;
  if (v6)
  {
    v6->_type = type;
    if (shape)
    {
      v6->_defaultShape = 0;
      shapeCopy = shape;
      *(v10 + 48) = shapeCopy;
      objc_msgSend_didAddToPhysicsBody_(shapeCopy, v12, v10, v13);
    }

    else
    {
      v6->_defaultShape = 1;
    }

    v14 = 0.0;
    if (type == 1)
    {
      v14 = 1.0;
    }

    *(v10 + 16) = v14;
    v15 = vdup_n_s32(type == 0);
    v16.i64[0] = v15.u32[0];
    v16.i64[1] = v15.u32[1];
    *(v10 + 208) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), xmmword_1AFE47BA0, xmmword_1AFE47B90);
    objc_msgSend_commonInit(v10, v7, v8, v9);
    *(v10 + 240) = objc_msgSend__createBody(v10, v17, v18, v19);
  }

  return v10;
}

- (void)dealloc
{
  body = self->_body;
  if (body)
  {
    v5 = body[67];
    if (!v5 || ((*(*v5 + 8))(body[67], a2), (body = self->_body) != 0))
    {
      (*(*body + 16))(body, a2);
    }
  }

  objc_msgSend_didRemoveFromPhysicsBody_(self->_physicsShape, a2, self, v2);

  v6.receiver = self;
  v6.super_class = VFXPhysicsBody;
  [(VFXPhysicsBody *)&v6 dealloc];
}

+ (VFXPhysicsBody)bodyWithType:(int64_t)type shape:(id)shape
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithType_shape_(v6, v7, type, shape);

  return v8;
}

+ (id)staticBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 0, 0);
}

+ (id)dynamicBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 1, 0);
}

+ (id)kinematicBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 2, 0);
}

- (void)setType:(int64_t)type
{
  self->_type = type;
  v4 = vmovn_s64(vceqq_s64(vdupq_n_s64(type), xmmword_1AFE22A20));
  v12 = v4.i8[0];
  v5 = vdup_lane_s32(v4, 1);
  v6.i64[0] = v5.i32[0];
  v6.i64[1] = v5.i32[1];
  *&self->_categoryBitMask = vbslq_s8(v6, xmmword_1AFE47BA0, xmmword_1AFE47B90);
  node = self->_node;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF35667C;
  v13[3] = &unk_1E7A7E248;
  v13[4] = self;
  v13[5] = type;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v13);
  v11 = 0.0;
  if (v12)
  {
    *&v11 = 1.0;
  }

  objc_msgSend_setMass_(self, v8, v9, v10, v11);
}

- (void)setMass:(float)mass
{
  v8 = *MEMORY[0x1E69E9840];
  self->_mass = mass;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3020000000;
  v7 = *&self->_momentOfInertia[3];
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356800;
  v4[3] = &unk_1E7A7F730;
  massCopy = mass;
  v4[4] = self;
  v4[5] = v6;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v6, 8);
}

- (void)setMomentOfInertia:(VFXPhysicsBody *)self
{
  v7 = *MEMORY[0x1E69E9840];
  *&self->_momentOfInertia[3] = v2;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3020000000;
  v6 = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356938;
  v4[3] = &unk_1E7A7F758;
  v4[4] = self;
  v4[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v5, 8);
}

- (void)setCenterOfMassOffset:(VFXPhysicsBody *)self
{
  *&self->_centerOfMassOffset[3] = v2;
  mass = self->_mass;
  v4 = *&self->_momentOfInertia[3];
  explicitMomentOfInertia = self->_explicitMomentOfInertia;
  node = self->_node;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF356A18;
  v7[3] = &unk_1E7A7F780;
  selfCopy = self;
  v11 = mass;
  v12 = explicitMomentOfInertia;
  v8 = v2;
  v9 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v7);
}

- (void)setUsesDefaultMomentOfInertia:(BOOL)inertia
{
  v7 = *MEMORY[0x1E69E9840];
  self->_explicitMomentOfInertia = !inertia;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3020000000;
  v6 = *&self->_momentOfInertia[3];
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356BD0;
  v4[3] = &unk_1E7A7F758;
  v4[4] = self;
  v4[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v5, 8);
}

- (void)setCharge:(float)charge
{
  self->_charge = charge;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356CA4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  chargeCopy = charge;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (BOOL)isResting
{
  body = self->_body;
  if (!body)
  {
    return 0;
  }

  v3 = body[61];
  return v3 == 2 || v3 == 5;
}

- (void)updateGlobalScale:(double)scale
{
  v3 = *(self->_body + 67);
  if (v3)
  {
    scaleCopy = scale;
    *(v3 + 64) = scaleCopy;
  }
}

- (void)setAllowsResting:(BOOL)resting
{
  self->_allowsResting = resting;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356DFC;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  restingCopy = resting;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setFriction:(float)friction
{
  self->_friction = friction;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356EE8;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  frictionCopy = friction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setRestitution:(float)restitution
{
  self->_restitution = restitution;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356F8C;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  restitutionCopy = restitution;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setRollingFriction:(float)friction
{
  self->_rollingFriction = friction;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357030;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  frictionCopy = friction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setDamping:(float)damping
{
  self->_damping = damping;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3570D4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  dampingCopy = damping;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setAngularDamping:(float)damping
{
  self->_angularDamping = damping;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357180;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  dampingCopy = damping;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setLinearRestingThreshold:(float)threshold
{
  self->_linearRestingThreshold = threshold;
  angularRestingThreshold = self->_angularRestingThreshold;
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF357230;
  v5[3] = &unk_1E7A7E248;
  v5[4] = self;
  thresholdCopy = threshold;
  v7 = angularRestingThreshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)setAngularRestingThreshold:(float)threshold
{
  self->_angularRestingThreshold = threshold;
  linearRestingThreshold = self->_linearRestingThreshold;
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3572DC;
  v5[3] = &unk_1E7A7E248;
  v5[4] = self;
  v6 = linearRestingThreshold;
  thresholdCopy = threshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)_setBtShape:(id)shape
{
  btShapeWrapper = self->_btShapeWrapper;
  if (btShapeWrapper != shape)
  {

    self->_btShapeWrapper = shape;
  }
}

- (void)cleanCollisionCache
{
  v5 = objc_msgSend_world(self->_node, a2, v2, v3);
  v9 = objc_msgSend_physicsWorld(v5, v6, v7, v8);
  v13 = objc_msgSend__handle(v9, v10, v11, v12);
  if (v13)
  {
    v14 = *(v13 + 40);
    v15 = (*(**(v13 + 96) + 72))(*(v13 + 96));
    (*(*v15 + 80))(v15, *(self->_body + 25), v14);
    v16 = (*(*v15 + 56))(v15);
    v17 = *(v16 + 4);
    if (v17 >= 1)
    {
      v18 = v16;
      v19 = 0;
      for (i = 0; i < v17; ++i)
      {
        v21 = *(v18 + 16);
        v22 = **(v21 + v19);
        if (v22 == self->_body)
        {
          v22 = **(v21 + v19 + 8);
        }

        if (v22[61] != 4)
        {
          sub_1AFD73C3C(v22, 1);
          v17 = *(v18 + 4);
        }

        v19 += 32;
      }
    }
  }
}

- (void)invalidateShape
{
  objc_msgSend__updateCollisionShape(self, a2, v2, v3);

  objc_msgSend_cleanCollisionCache(self, v5, v6, v7);
}

- (void)_updateCollisionShape
{
  physicsShape = self->_physicsShape;
  mass = self->_mass;
  explicitMomentOfInertia = self->_explicitMomentOfInertia;
  v12 = *&self->_centerOfMassOffset[3];
  v13 = *&self->_momentOfInertia[3];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = objc_msgSend_nodeRef(self->_node, a2, v2, v3);
  v9 = v23[3];
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = v12;
  HIDWORD(v10) = 0;
  node = self->_node;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = sub_1AF3575D0;
  v14[3] = &unk_1F24EC450;
  selfCopy = self;
  v18 = physicsShape;
  v19 = &v22;
  v20 = mass;
  v21 = explicitMomentOfInertia;
  v15 = v13;
  v16 = v10;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, node, v14);
  _Block_object_dispose(&v22, 8);
}

- (void)setPhysicsShape:(id)DefaultShapeForNode
{
  if (self->_physicsShape != DefaultShapeForNode)
  {
    if (DefaultShapeForNode)
    {
      v6 = 0;
    }

    else
    {
      DefaultShapeForNode = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, a2, self->_node, v3);
      v6 = 1;
    }

    self->_defaultShape = v6;

    MEMORY[0x1EEE66B58](self, sel__setPhysicsShape_, DefaultShapeForNode, v3);
  }
}

- (VFXPhysicsShape)physicsShape
{
  if (self->_defaultShape)
  {
    return 0;
  }

  else
  {
    return self->_physicsShape;
  }
}

- (void)updateDefaultShape
{
  DefaultShapeForNode = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, a2, self->_node, v2);

  MEMORY[0x1EEE66B58](self, sel__setPhysicsShape_, DefaultShapeForNode, v5);
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  self->_categoryBitMask = mask;
  collisionBitMask = self->_collisionBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v8 = objc_msgSend_world(self->_node, a2, mask, v3);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v8, v9, 0, v10);
  if (IfNeeded)
  {
    node = self->_node;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF357974;
    v14[3] = &unk_1E7A7F7A8;
    v14[4] = self;
    v14[5] = IfNeeded;
    v14[6] = mask;
    v14[7] = collisionBitMask;
    v14[8] = contactTestBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, node, v14);
  }
}

- (void)setCollisionBitMask:(unint64_t)mask
{
  self->_collisionBitMask = mask;
  categoryBitMask = self->_categoryBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v8 = objc_msgSend_world(self->_node, a2, mask, v3);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v8, v9, 0, v10);
  if (IfNeeded)
  {
    node = self->_node;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF357AB0;
    v14[3] = &unk_1E7A7F7A8;
    v14[4] = self;
    v14[5] = IfNeeded;
    v14[6] = mask;
    v14[7] = categoryBitMask;
    v14[8] = contactTestBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, node, v14);
  }
}

- (void)setContactTestBitMask:(unint64_t)mask
{
  self->_contactTestBitMask = mask;
  categoryBitMask = self->_categoryBitMask;
  collisionBitMask = self->_collisionBitMask;
  v8 = objc_msgSend_world(self->_node, a2, mask, v3);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v8, v9, 0, v10);
  if (IfNeeded)
  {
    node = self->_node;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF357BE8;
    v14[3] = &unk_1E7A7F7A8;
    v14[4] = self;
    v14[5] = IfNeeded;
    v14[6] = mask;
    v14[7] = collisionBitMask;
    v14[8] = categoryBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, node, v14);
  }
}

- (void)setContinuousCollisionDetectionThreshold:(float)threshold
{
  self->_continuousCollisionDetectionThreshold = threshold;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357CE4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  thresholdCopy = threshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setVelocity:(VFXPhysicsBody *)self
{
  *self->_velocity = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357D94;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (__n128)velocity
{
  if (objc_msgSend_immediateMode(VFXTransaction, a2, a3, a4) && (v6 = self[15].n128_u64[0]) != 0)
  {
    result.n128_u64[0] = *(v6 + 352);
  }

  else
  {
    return self[9];
  }

  return result;
}

- (void)setAffectedByGravity:(BOOL)gravity
{
  self->_ignoreGravity = !gravity;
  node = self->_node;
  if (node)
  {
    v7 = objc_msgSend_world(node, a2, gravity, v3);
    node = objc_msgSend__physicsWorldCreateIfNeeded_(v7, v8, 0, v9);
    v10 = self->_node;
  }

  else
  {
    v10 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF357EDC;
  v11[3] = &unk_1E7A7F7D0;
  gravityCopy = gravity;
  v11[4] = self;
  v11[5] = node;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, v10, v11);
}

- (void)setAngularVelocity:(VFXPhysicsBody *)self
{
  *self->_angularVelocity = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF358004;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (int8x16_t)angularVelocity
{
  if (objc_msgSend_immediateMode(VFXTransaction, a2, a3, a4) && (v5 = self[15].i64[0]) != 0)
  {
    v6 = v5[23];
    result = vmulq_f32(v6, v6);
    v7 = sqrtf(vadd_f32(vpadd_f32(*result.i8, *result.i8), *&vextq_s8(result, result, 8uLL)).f32[0]);
    result.i64[0] = 0;
    if (v7 > 0.0)
    {
      result.i64[0] = vmulq_n_f32(v6, 1.0 / v7).u64[0];
    }
  }

  else
  {
    return self[5];
  }

  return result;
}

- (void)setVelocityFactor:(VFXPhysicsBody *)self
{
  *self->_velocityFactor = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF35811C;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setAngularVelocityFactor:(VFXPhysicsBody *)self
{
  *self->_angularVelocityFactor = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3581D4;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)applyForce:(BOOL)force impulse:
{
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF358280;
  v5[3] = &unk_1E7A7F7F8;
  selfCopy = self;
  forceCopy = force;
  v6 = v3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)applyForce:(VFXPhysicsBody *)self atPosition:(SEL)position impulse:(BOOL)impulse
{
  node = self->_node;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3583A8;
  v6[3] = &unk_1E7A7F820;
  selfCopy = self;
  impulseCopy = impulse;
  v7 = v3;
  v8 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, position, node, v6);
}

- (void)applyTorque:(BOOL)torque impulse:
{
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3585E8;
  v5[3] = &unk_1E7A7F7F8;
  selfCopy = self;
  v6 = v3;
  torqueCopy = torque;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)_activate
{
  body = self->_body;
  if (body)
  {
    sub_1AFD73C5C(body, 0);
  }
}

- (void)clearAllForces
{
  node = self->_node;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF358758;
  v3[3] = &unk_1E7A7E1D0;
  v3[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v3);
}

- (void)setResting:(BOOL)resting
{
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF358848;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  restingCopy = resting;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (uint64_t)resetToTransform:(__n128)transform
{
  v6 = *(self + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3588FC;
  v8[3] = &unk_1E7A7E578;
  selfCopy = self;
  transformCopy = transform;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, v6, v8);
}

- (void)resetTransform
{
  node = self->_node;
  if (node)
  {
    objc_msgSend_worldTransform(node, a2, v2, v3);
    v6 = self->_node;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF3589A8;
    v12[3] = &unk_1E7A7E578;
    selfCopy = self;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, v6, v12);
  }
}

- (void)moveToPosition:(VFXPhysicsBody *)self
{
  v5 = objc_msgSend_presentationNode(self->_node, a2, v2, v3);
  objc_msgSend_worldTransform(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](self, sel_moveToTransform_, v9, v10);
}

- (void)rotateToAxisAngle:(VFXPhysicsBody *)self
{
  v53 = v4;
  v6 = objc_msgSend_presentationNode(self->_node, a2, v2, v3);
  objc_msgSend_worldTransform(v6, v7, v8, v9);
  v56 = v10;
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v12)), v11, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v15 = vmulq_f32(v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
  v16 = vmulq_f32(v14, v14);
  v17 = vmulq_f32(v12, v12);
  *v13.i8 = vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8));
  v19 = vextq_s8(v16, v16, 8uLL);
  *v19.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v19.f32, *&vextq_s8(v17, v17, 8uLL)), *v13.i8));
  v18 = vmulq_f32(v11, v11);
  v19.i32[2] = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
  if ((v15.f32[2] + vaddv_f32(*v15.f32)) >= 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = -1.0;
  }

  v55 = vmulq_n_f32(v19, v20);
  v21 = v53.f32[3];
  v22 = vmulq_f32(v53, v53);
  v22.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
  v23 = vdupq_lane_s32(*v22.f32, 0);
  v23.i32[3] = 0;
  v24 = vrsqrteq_f32(v23);
  v25 = vmulq_f32(v24, vrsqrtsq_f32(v23, vmulq_f32(v24, v24)));
  v26 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v22.f32[0] != 0.0)), 0x1FuLL));
  v26.i32[3] = 0;
  v54 = vbslq_s8(vcltzq_s32(v26), vmulq_f32(vmulq_f32(v25, vrsqrtsq_f32(v23, vmulq_f32(v25, v25))), v53), v53);
  v29 = __sincosf_stret(v21);
  v30 = 0;
  v31 = v54;
  v32 = vmulq_f32(v31, v31);
  __asm { FMOV            V2.4S, #1.0 }

  v38 = vmlaq_n_f32(v32, vsubq_f32(_Q2, v32), v29.__cosval);
  v39 = (1.0 - v29.__cosval) * vmuls_lane_f32(v31.f32[0], *v31.f32, 1);
  v40 = (1.0 - v29.__cosval) * vmuls_lane_f32(v31.f32[0], v31, 2);
  _Q2.f32[0] = (1.0 - v29.__cosval) * vmuls_lane_f32(v54.f32[1], v54, 2);
  v41 = vmulq_n_f32(v54, -v29.__sinval);
  *&v42 = v40 + v41.f32[1];
  v43.f32[0] = v40 - v41.f32[1];
  v43.f32[1] = _Q2.f32[0] + v41.f32[0];
  v43.i64[1] = v38.u32[2];
  v45.i32[0] = v38.i32[0];
  *&v44 = _Q2.f32[0] - v41.f32[0];
  v45.f32[1] = v39 - v41.f32[2];
  v45.i64[1] = v42;
  v46.f32[0] = v39 + v41.f32[2];
  v46.i32[1] = v38.i32[1];
  v46.i64[1] = v44;
  v47 = vabsq_f32(v55);
  v47.i32[3] = 0;
  *&v48 = 0;
  v49.i64[0] = 0x8000000080000000;
  v49.i64[1] = 0x8000000080000000;
  v50 = vorrq_s8(vandq_s8(v55, v49), vabsq_f32(vmaxnmq_f32(v47, xmmword_1AFE20A30)));
  v41.i32[0] = 0;
  v41.i32[1] = v50.i32[1];
  *(&v48 + 1) = v50.u32[2];
  v57 = v50.u32[0];
  v58 = v41.u64[0];
  v59 = v48;
  v60 = xmmword_1AFE201A0;
  do
  {
    v61[v30 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v57 + v30))), v46, *(&v57 + v30), 1), v43, *(&v57 + v30), 2), xmmword_1AFE201A0, *(&v57 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v51 = 0;
  v52 = v56;
  v52.i32[3] = 1.0;
  v57 = v61[0];
  v58 = v61[1];
  v59 = v61[2];
  v60 = v61[3];
  do
  {
    v61[v51 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v57 + v51))), xmmword_1AFE20160, *(&v57 + v51), 1), xmmword_1AFE20180, *(&v57 + v51), 2), v52, *(&v57 + v51), 3);
    v51 += 16;
  }

  while (v51 != 64);

  (MEMORY[0x1EEE66B58])(self, sel_moveToTransform_, v27, v28);
}

- (uint64_t)moveToTransform:(float32x4_t)transform
{
  result = self[30];
  if (result)
  {
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(transform)), a4, vextq_s8(vuzp1q_s32(transform, transform), transform, 0xCuLL));
    v12 = vmulq_f32(a2, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v13 = (v12.f32[2] + vaddv_f32(*v12.f32)) >= 0.0 ? 1.0 : -1.0;
    v14 = vmulq_f32(a2, a2);
    v15 = vmulq_f32(transform, transform);
    v16 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
    *a9.f32 = vsqrt_f32(v16);
    v17 = vmulq_f32(a4, a4);
    v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    a9.i32[2] = sqrtf(v18);
    v19 = vmulq_n_f32(a9, v13);
    if (v19.f32[0] != 0.0 && v19.f32[1] != 0.0)
    {
      v20 = v19.i32[2];
      if (v19.f32[2] != 0.0)
      {
        v40 = v19;
        v21 = vrsqrte_f32(v16.u32[0]);
        v22 = vmul_f32(v21, vrsqrts_f32(v16.u32[0], vmul_f32(v21, v21)));
        v23 = vmulq_n_f32(a2, vmul_f32(v22, vrsqrts_f32(v16.u32[0], vmul_f32(v22, v22))).f32[0]);
        v22.i32[0] = v16.i32[1];
        v24 = vrsqrte_f32(v16.u32[1]);
        v25 = vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24)));
        v26 = vmulq_n_f32(transform, vmul_f32(v25, vrsqrts_f32(v22.u32[0], vmul_f32(v25, v25))).f32[0]);
        v27 = v18;
        v28 = vrsqrte_f32(LODWORD(v18));
        v29 = vmul_f32(v28, vrsqrts_f32(LODWORD(v27), vmul_f32(v28, v28)));
        v41 = vzip1_s32(*v23.i8, *v26.i8);
        v30 = vmulq_n_f32(a4, vmul_f32(v29, vrsqrts_f32(LODWORD(v27), vmul_f32(v29, v29))).f32[0]);
        v42 = v30.i32[0];
        v43 = 0;
        v44 = vzip2_s32(*v23.i8, *v26.i8);
        v45 = v30.i32[1];
        v46 = 0;
        v47 = vzip2q_s32(v23, v26).u64[0];
        v48 = v30.i32[2];
        v49 = 0;
        v50 = a5.n128_u64[0];
        v51 = a5.n128_u32[2];
        v52 = 0;
        sub_1AFDA6AC0();
        v34 = self[30];
        v35 = *(v34 + 536);
        if (v35)
        {
          v36 = vmvnq_s8(vceqq_f32(v35[1], v40));
          v36.i32[3] = v36.i32[2];
          if ((vmaxvq_u32(v36) & 0x80000000) != 0)
          {
            v35[1] = v40;
            v37 = self[6];
            if (v37)
            {
              objc_msgSend__setNodeScale_(v37, v31, v32, v33);
            }

            else
            {
              v38 = self[31];
              if (v38)
              {
                v39 = objc_msgSend_btShape(v38, v31, v32, v33);
                v41 = *v40.f32;
                v42 = v20;
                v43 = 0;
                (*(*v39 + 48))(v39, &v41);
              }
            }
          }

          else if (self[7] == 2)
          {
            goto LABEL_17;
          }

          objc_msgSend_cleanCollisionCache(self, v31, v32, v33);
          v34 = self[30];
        }

LABEL_17:
        sub_1AF3561F8(v34);
        return sub_1AFD73C5C(self[30], 1);
      }
    }
  }

  return result;
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to, context);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  v12 = objc_msgSend_type(self, v9, v10, v11);
  objc_msgSend_setType_(to, v13, v12, v14);
  v18 = objc_msgSend_physicsShape(self, v15, v16, v17);
  v19 = sub_1AF2BED30(v18, context);
  objc_msgSend_setPhysicsShape_(to, v20, v19, v21);
  objc_msgSend_mass(self, v22, v23, v24);
  objc_msgSend_setMass_(to, v25, v26, v27);
  objc_msgSend_charge(self, v28, v29, v30);
  objc_msgSend_setCharge_(to, v31, v32, v33);
  objc_msgSend_friction(self, v34, v35, v36);
  objc_msgSend_setFriction_(to, v37, v38, v39);
  objc_msgSend_restitution(self, v40, v41, v42);
  objc_msgSend_setRestitution_(to, v43, v44, v45);
  objc_msgSend_rollingFriction(self, v46, v47, v48);
  objc_msgSend_setRollingFriction_(to, v49, v50, v51);
  objc_msgSend_damping(self, v52, v53, v54);
  objc_msgSend_setDamping_(to, v55, v56, v57);
  objc_msgSend_angularVelocity(self, v58, v59, v60);
  objc_msgSend_setAngularVelocity_(to, v61, v62, v63);
  objc_msgSend_angularDamping(self, v64, v65, v66);
  objc_msgSend_setAngularDamping_(to, v67, v68, v69);
  objc_msgSend_linearRestingThreshold(self, v70, v71, v72);
  objc_msgSend_setLinearRestingThreshold_(to, v73, v74, v75);
  objc_msgSend_angularRestingThreshold(self, v76, v77, v78);
  objc_msgSend_setAngularRestingThreshold_(to, v79, v80, v81);
  objc_msgSend_velocityFactor(self, v82, v83, v84);
  objc_msgSend_setVelocityFactor_(to, v85, v86, v87);
  objc_msgSend_angularVelocityFactor(self, v88, v89, v90);
  objc_msgSend_setAngularVelocityFactor_(to, v91, v92, v93);
  objc_msgSend_velocity(self, v94, v95, v96);
  objc_msgSend_setVelocity_(to, v97, v98, v99);
  v103 = objc_msgSend_categoryBitMask(self, v100, v101, v102);
  objc_msgSend_setCategoryBitMask_(to, v104, v103, v105);
  v109 = objc_msgSend_collisionBitMask(self, v106, v107, v108);
  objc_msgSend_setCollisionBitMask_(to, v110, v109, v111);
  v115 = objc_msgSend_contactTestBitMask(self, v112, v113, v114);
  objc_msgSend_setContactTestBitMask_(to, v116, v115, v117);
  v121 = objc_msgSend_allowsResting(self, v118, v119, v120);
  objc_msgSend_setAllowsResting_(to, v122, v121, v123);
  objc_msgSend_angularVelocity(self, v124, v125, v126);
  objc_msgSend_setAngularVelocity_(to, v127, v128, v129);
  isAffectedByGravity = objc_msgSend_isAffectedByGravity(self, v130, v131, v132);
  objc_msgSend_setAffectedByGravity_(to, v134, isAffectedByGravity, v135);
  v139 = objc_msgSend_usesDefaultMomentOfInertia(self, v136, v137, v138);
  objc_msgSend_setUsesDefaultMomentOfInertia_(to, v140, v139, v141);
  objc_msgSend_momentOfInertia(self, v142, v143, v144);
  objc_msgSend_setMomentOfInertia_(to, v145, v146, v147);
  objc_msgSend_centerOfMassOffset(self, v148, v149, v150);
  objc_msgSend_setCenterOfMassOffset_(to, v151, v152, v153);
  objc_msgSend_continuousCollisionDetectionThreshold(self, v154, v155, v156);
  objc_msgSend_setContinuousCollisionDetectionThreshold_(to, v157, v158, v159);
  *(to + 30) = objc_msgSend__createBody(to, v160, v161, v162);

  objc_msgSend_commitImmediate(VFXTransaction, v163, v164, v165);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)_createBody
{
  mass = self->_mass;
  v14 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v28 = 0;
  v29 = xmmword_1AFE47BB0;
  v15 = xmmword_1AFE20150;
  v16 = xmmword_1AFE20160;
  v17 = xmmword_1AFE20180;
  v18 = 0;
  angularDamping = self->_angularDamping;
  damping = self->_damping;
  v24 = angularDamping;
  v27 = *&self->_linearRestingThreshold;
  friction = self->_friction;
  v26 = vrev64_s32(*&self->_restitution);
  v4 = sub_1AFDA7294(704, 16);
  sub_1AFDA6574(v4, &mass);
  sub_1AF356184(v4, self->_type);
  v5 = *self->_velocity;
  HIDWORD(v5) = 0;
  *(v4 + 352) = v5;
  v6 = *self->_angularVelocity;
  HIDWORD(v6) = 0;
  *(v4 + 368) = v6;
  v7 = *self->_velocityFactor;
  v8 = vmulq_n_f32(v7, *(v4 + 384));
  v7.i32[3] = 0;
  *(v4 + 400) = v7;
  v8.i32[3] = 0;
  *(v4 + 640) = v8;
  v9 = *self->_angularVelocityFactor;
  HIDWORD(v9) = 0;
  *(v4 + 624) = v9;
  if (self->_allowsResting)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  sub_1AFD73C3C(v4, v10);
  *(v4 + 532) = self->_charge;
  *(v4 + 288) = self->_continuousCollisionDetectionThreshold;
  if (self->_ignoreGravity)
  {
    *(v4 + 576) = 1;
    v12 = 0uLL;
    sub_1AFDA68D8(v4, &v12);
  }

  return v4;
}

- (void)_removeOwner
{
  node = self->_node;
  v6 = objc_msgSend_world(node, a2, v2, v3);
  v10 = objc_msgSend_physicsWorld(v6, v7, v8, v9);
  self->_node = 0;
  body = self->_body;
  if (body)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF3593B4;
    v13[3] = &unk_1E7A7E310;
    v13[4] = node;
    v13[5] = v10;
    v13[6] = self;
    v13[7] = body;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, node, v13);
  }
}

- (void)_setOwner:(id)owner
{
  if (self->_node)
  {
    if (self->_body)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDFA608(v6, a2, owner, v3, v7, v8, v9, v10);
      }
    }
  }

  self->_node = owner;
  v11 = objc_msgSend_nodeRef(owner, a2, owner, v3);
  body = self->_body;
  v16 = objc_msgSend_categoryBitMask(self, v13, v14, v15);
  v20 = objc_msgSend_collisionBitMask(self, v17, v18, v19);
  v24 = objc_msgSend_contactTestBitMask(self, v21, v22, v23);
  node = self->_node;
  if (node)
  {
    v28 = v24;
    mass = self->_mass;
    explicitMomentOfInertia = self->_explicitMomentOfInertia;
    v31 = *&self->_momentOfInertia[3];
    v32 = *&self->_centerOfMassOffset[3];
    HIDWORD(v32) = 0;
    if (!self->_physicsShape)
    {
      v37 = v32;
      v38 = *&self->_momentOfInertia[3];
      v33 = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, v25, node, v26);
      self->_physicsShape = v33;
      objc_msgSend_didAddToPhysicsBody_(v33, v34, self, v35);
      v32 = v37;
      v31 = v38;
      node = self->_node;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3321888768;
    v39[2] = sub_1AF3595B4;
    v39[3] = &unk_1F24EC488;
    ownerCopy = owner;
    selfCopy = self;
    v44 = v11;
    v45 = body;
    v49 = mass;
    v50 = explicitMomentOfInertia;
    v40 = v31;
    v41 = v32;
    v46 = v16;
    v47 = v20;
    v48 = v28;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v25, node, v39);
  }

  else
  {
    v36 = sub_1AF0D5194();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA680();
    }
  }
}

+ (id)_generateDefaultShapeForNode:(id)node
{
  if (objc_msgSend_model(node, a2, node, v3))
  {

    return objc_msgSend_shapeWithModel_(VFXPhysicsShape, v5, 0, v6);
  }

  else
  {

    return objc_msgSend_shapeWithNode_flattened_(VFXPhysicsShape, v5, node, 0);
  }
}

- (void)_setPhysicsShape:(id)shape
{
  if (!shape)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA6F4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (self->_physicsShape == shape)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA76C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  physicsShape = self->_physicsShape;
  self->_physicsShape = shape;
  objc_msgSend_didRemoveFromPhysicsBody_(physicsShape, v22, self, v23);
  objc_msgSend_didAddToPhysicsBody_(self->_physicsShape, v24, self, v25);

  objc_msgSend__updateCollisionShape(self, v26, v27, v28);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"momentOfInertia", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_momentOfInertia(self, v6, v7, v8);
LABEL_5:

    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
  }

  if (objc_msgSend_isEqualToString_(key, v6, @"velocity", v8))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_velocity(self, v13, v14, v15);
    goto LABEL_5;
  }

  if (!objc_msgSend_isEqualToString_(key, v13, @"angularVelocity", v15))
  {
    if (objc_msgSend_isEqualToString_(key, v17, @"velocityFactor", v19))
    {
      v9 = MEMORY[0x1E696B098];
      objc_msgSend_velocityFactor(self, v24, v25, v26);
    }

    else if (objc_msgSend_isEqualToString_(key, v24, @"angularVelocityFactor", v26))
    {
      v9 = MEMORY[0x1E696B098];
      objc_msgSend_angularVelocityFactor(self, v27, v28, v29);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(key, v27, @"centerOfMassOffset", v29))
      {
        v33.receiver = self;
        v33.super_class = VFXPhysicsBody;
        return [(VFXPhysicsBody *)&v33 valueForKey:key];
      }

      v9 = MEMORY[0x1E696B098];
      objc_msgSend_centerOfMassOffset(self, v30, v31, v32);
    }

    goto LABEL_5;
  }

  v20 = MEMORY[0x1E696B098];
  objc_msgSend_angularVelocity(self, v17, v18, v19);

  return objc_msgSend_valueWithVFXFloat4_(v20, v21, v22, v23);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"momentOfInertia", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setMomentOfInertia_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"velocity", v9))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14, v15);

    objc_msgSend_setVelocity_(self, v16, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"angularVelocity", v15))
  {
    objc_msgSend_VFXFloat4Value(value, v19, v20, v21);

    objc_msgSend_setAngularVelocity_(self, v22, v23, v24);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"velocityFactor", v21))
  {
    objc_msgSend_VFXFloat3Value(value, v25, v26, v27);

    objc_msgSend_setVelocityFactor_(self, v28, v29, v30);
  }

  else if (objc_msgSend_isEqualToString_(key, v25, @"angularVelocityFactor", v27))
  {
    objc_msgSend_VFXFloat3Value(value, v31, v32, v33);

    objc_msgSend_setAngularVelocityFactor_(self, v34, v35, v36);
  }

  else if (objc_msgSend_isEqualToString_(key, v31, @"centerOfMassOffset", v33))
  {
    objc_msgSend_VFXFloat3Value(value, v37, v38, v39);

    objc_msgSend_setCenterOfMassOffset_(self, v40, v41, v42);
  }

  else
  {
    v43.receiver = self;
    v43.super_class = VFXPhysicsBody;
    [(VFXPhysicsBody *)&v43 setValue:value forKey:key];
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"mass", v3, self->_mass);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"charge", v7, self->_charge);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"friction", v9, self->_friction);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"restitution", v11, self->_restitution);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"rollingFriction", v13, self->_rollingFriction);
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"ccdThreshold", v15, self->_continuousCollisionDetectionThreshold);
  if (!self->_defaultShape)
  {
    objc_msgSend_encodeObject_forKey_(coder, v16, self->_physicsShape, @"physicsShape");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v16, self->_type, @"type");
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"damping", v18, self->_damping);
  sub_1AF371AF4(coder, @"angularVelocity", *self->_angularVelocity);
  objc_msgSend_encodeDouble_forKey_(coder, v19, @"angularDamping", v20, self->_angularDamping);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"linearRestingThreshold", v22, self->_linearRestingThreshold);
  objc_msgSend_encodeDouble_forKey_(coder, v23, @"angularRestingThreshold", v24, self->_angularRestingThreshold);
  sub_1AF371A8C(coder, @"velocityFactor", *self->_velocityFactor);
  sub_1AF371A8C(coder, @"angularVelocityFactor", *self->_angularVelocityFactor);
  sub_1AF371A8C(coder, @"velocity", *self->_velocity);
  objc_msgSend_encodeBool_forKey_(coder, v25, self->_ignoreGravity, @"ignoreGravity");
  objc_msgSend_encodeBool_forKey_(coder, v26, self->_explicitMomentOfInertia, @"explicitMomentOfInertia");
  sub_1AF371A8C(coder, @"momentOfInertia", *&self->_momentOfInertia[3]);
  sub_1AF371A8C(coder, @"centerOfMassOffset", *&self->_centerOfMassOffset[3]);
  objc_msgSend_encodeInteger_forKey_(coder, v27, self->_categoryBitMask, @"categoryBitMask");
  objc_msgSend_encodeInteger_forKey_(coder, v28, self->_collisionBitMask, @"collisionBitMask");
  objc_msgSend_encodeInteger_forKey_(coder, v29, self->_contactTestBitMask, @"contactTestBitMask");
  objc_msgSend_encodeBool_forKey_(coder, v30, self->_allowsResting, @"allowsResting");
  defaultShape = self->_defaultShape;

  objc_msgSend_encodeBool_forKey_(coder, v31, defaultShape, @"defaultShape");
}

- (VFXPhysicsBody)initWithCoder:(id)coder
{
  v147.receiver = self;
  v147.super_class = VFXPhysicsBody;
  v7 = [(VFXPhysicsBody *)&v147 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"charge", v12);
    *&v13 = v13;
    objc_msgSend_setCharge_(v7, v14, v15, v16, v13);
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"friction", v18);
    *&v19 = v19;
    objc_msgSend_setFriction_(v7, v20, v21, v22, v19);
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"restitution", v24);
    *&v25 = v25;
    objc_msgSend_setRestitution_(v7, v26, v27, v28, v25);
    objc_msgSend_decodeDoubleForKey_(coder, v29, @"rollingFriction", v30);
    *&v31 = v31;
    objc_msgSend_setRollingFriction_(v7, v32, v33, v34, v31);
    if (objc_msgSend_containsValueForKey_(coder, v35, @"defaultShape", v36))
    {
      v7->_defaultShape = objc_msgSend_decodeBoolForKey_(coder, v37, @"defaultShape", v38);
    }

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v40, v39, @"physicsShape");
    if (v41)
    {
      objc_msgSend_setPhysicsShape_(v7, v42, v41, v43);
    }

    if (objc_msgSend_containsValueForKey_(coder, v42, @"ccdThreshold", v43))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v44, @"ccdThreshold", v45);
      *&v46 = v46;
      objc_msgSend_setContinuousCollisionDetectionThreshold_(v7, v47, v48, v49, v46);
    }

    v50 = objc_msgSend_decodeIntegerForKey_(coder, v44, @"type", v45);
    objc_msgSend_setType_(v7, v51, v50, v52);
    objc_msgSend_decodeDoubleForKey_(coder, v53, @"mass", v54);
    *&v55 = v55;
    objc_msgSend_setMass_(v7, v56, v57, v58, v55);
    objc_msgSend_decodeDoubleForKey_(coder, v59, @"damping", v60);
    *&v61 = v61;
    objc_msgSend_setDamping_(v7, v62, v63, v64, v61);
    *&v65 = sub_1AF371C0C(coder, @"angularVelocity").n128_u64[0];
    objc_msgSend_setAngularVelocity_(v7, v66, v67, v68, v65);
    objc_msgSend_decodeDoubleForKey_(coder, v69, @"angularDamping", v70);
    *&v71 = v71;
    objc_msgSend_setAngularDamping_(v7, v72, v73, v74, v71);
    v75 = @"linearRestingThreshold";
    if ((objc_msgSend_containsValueForKey_(coder, v76, @"linearRestingThreshold", v77) & 1) != 0 || (v75 = @"linearSleepingThreshold", objc_msgSend_containsValueForKey_(coder, v78, @"linearSleepingThreshold", v79)))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v78, v75, v79);
      *&v80 = v80;
      objc_msgSend_setLinearRestingThreshold_(v7, v81, v82, v83, v80);
    }

    v84 = @"angularRestingThreshold";
    if ((objc_msgSend_containsValueForKey_(coder, v78, @"angularRestingThreshold", v79) & 1) != 0 || (v84 = @"angularSleepingThreshold", objc_msgSend_containsValueForKey_(coder, v85, @"angularSleepingThreshold", v86)))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v85, v84, v86);
      *&v87 = v87;
      objc_msgSend_setAngularRestingThreshold_(v7, v88, v89, v90, v87);
    }

    v91 = sub_1AF371BC4(coder, @"velocityFactor");
    objc_msgSend_setVelocityFactor_(v7, v92, v93, v94, v91);
    v95 = sub_1AF371BC4(coder, @"angularVelocityFactor");
    objc_msgSend_setAngularVelocityFactor_(v7, v96, v97, v98, v95);
    v99 = sub_1AF371BC4(coder, @"velocity");
    objc_msgSend_setVelocity_(v7, v100, v101, v102, v99);
    v105 = objc_msgSend_decodeBoolForKey_(coder, v103, @"ignoreGravity", v104);
    objc_msgSend_setAffectedByGravity_(v7, v106, v105 ^ 1u, v107);
    v110 = objc_msgSend_decodeBoolForKey_(coder, v108, @"explicitMomentOfInertia", v109);
    objc_msgSend_setUsesDefaultMomentOfInertia_(v7, v111, v110 ^ 1u, v112);
    v113 = sub_1AF371BC4(coder, @"momentOfInertia");
    objc_msgSend_setMomentOfInertia_(v7, v114, v115, v116, v113);
    v117 = sub_1AF371BC4(coder, @"centerOfMassOffset");
    objc_msgSend_setCenterOfMassOffset_(v7, v118, v119, v120, v117);
    v123 = objc_msgSend_decodeIntegerForKey_(coder, v121, @"categoryBitMask", v122);
    objc_msgSend_setCategoryBitMask_(v7, v124, v123, v125);
    v128 = objc_msgSend_decodeIntegerForKey_(coder, v126, @"collisionBitMask", v127);
    objc_msgSend_setCollisionBitMask_(v7, v129, v128, v130);
    v133 = objc_msgSend_decodeIntegerForKey_(coder, v131, @"contactTestBitMask", v132);
    objc_msgSend_setContactTestBitMask_(v7, v134, v133, v135);
    v138 = objc_msgSend_decodeBoolForKey_(coder, v136, @"allowsResting", v137);
    objc_msgSend_setAllowsResting_(v7, v139, v138, v140);
    v7->_body = objc_msgSend__createBody(v7, v141, v142, v143);
    objc_msgSend_setImmediateMode_(VFXTransaction, v144, v8, v145);
  }

  return v7;
}

@end