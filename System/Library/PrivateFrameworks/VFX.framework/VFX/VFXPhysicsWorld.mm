@interface VFXPhysicsWorld
- (BOOL)_isDefault;
- (BOOL)_needsRedraw;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination;
- (NSArray)physicsJoints;
- (VFXPhysicsWorld)initWithCoder:(id)coder;
- (VFXPhysicsWorld)initWithWorld:(id)world;
- (btVehicleRaycaster)_defaultVehicleRayCaster;
- (id)_physicsContact;
- (id)_rayTestWithSegmentFromPoint:(btVector3)point toPoint:(btVector3)toPoint options:(id)options;
- (id)contactTestBetweenBody:(id)body andBody:(id)andBody options:(id)options;
- (id)contactTestWithBody:(id)body options:(id)options;
- (id)gravityValue;
- (id)rayTestWithSegmentFrom:(id)from to:(id)to options:(id)options;
- (id)rayTestWithSegmentFromPoint:(VFXPhysicsWorld *)self toPoint:(SEL)point options:(id)options;
- (id)valueForUndefinedKey:(id)key;
- (uint64_t)convexSweepTestWithShape:(void *)shape fromTransform:(void *)transform toTransform:(int8x16_t)toTransform options:(int8x16_t)options;
- (void)_allowGhostObjects;
- (void)_createDynamicWorldIfNeeded;
- (void)_drawDebugInAuthoringEnvironment:(void *)environment;
- (void)_preTick:(double)tick;
- (void)_registerPhysicsJoints;
- (void)_reset;
- (void)_step:(double)_step;
- (void)activatePhysicsJoint:(id)joint;
- (void)addPhysicsBody:(id)body nodeRef:(__CFXNode *)ref colGroup:(unint64_t)group colMask:(unint64_t)mask colTest:(unint64_t)test;
- (void)addPhysicsJoint:(id)joint;
- (void)commonInit;
- (void)copyTo:(id)to withContext:(id)context;
- (void)deactivatePhysicsJoint:(id)joint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateBodiesUsingBlock:(id)block;
- (void)removePhysicsBody:(id)body handle:(void *)handle;
- (void)removePhysicsJoint:(id)joint;
- (void)setContactDelegate:(id)delegate;
- (void)setGravity:(VFXPhysicsWorld *)self;
- (void)setGravityValue:(id)value;
- (void)setScale:(float)scale;
- (void)setTimeStep:(double)step;
- (void)setUseFixedTimeStep:(BOOL)step;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)updateCollisionPairs;
- (void)wakeUpAllBodies;
- (void)worldWillDie;
@end

@implementation VFXPhysicsWorld

- (id)gravityValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setGravityValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setGravity_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (id)rayTestWithSegmentFrom:(id)from to:(id)to options:(id)options
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(from, a2, 0, to);
  objc_msgSend_floatValue(v9, v10, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(from, v13, 1, v14);
  objc_msgSend_floatValue(v15, v16, v17, v18);
  v21 = objc_msgSend_objectAtIndexedSubscript_(from, v19, 2, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(to, v25, 0, v26);
  objc_msgSend_floatValue(v27, v28, v29, v30);
  v33 = objc_msgSend_objectAtIndexedSubscript_(to, v31, 1, v32);
  objc_msgSend_floatValue(v33, v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(to, v37, 2, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);

  return MEMORY[0x1EEE66B58](self, sel_rayTestWithSegmentFromPoint_toPoint_options_, options, v43);
}

- (void)_preTick:(double)tick
{
  self->_elapsedTime = self->_elapsedTime + tick;
  v6 = objc_msgSend_world(self, a2, v3, v4);
  v10 = objc_msgSend_worldRef(v6, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_1AF1CEF88(v10))
    {
      sub_1AF369018(&v41, self->_btWorld + 320);
      v14 = sub_1AF1CF878(v11);
      if (v14)
      {
        if (SHIDWORD(v41) >= 1)
        {
          v18 = 0;
          v19 = 8 * HIDWORD(v41);
          do
          {
            v20 = *(v42 + v18);
            v21 = *(v20 + 200);
            if (v21)
            {
              v22 = *(v21 + 8);
            }

            else
            {
              v22 = 0xFFFFFFFFLL;
            }

            LODWORD(v16) = *(v20 + 532);
            elapsedTime = self->_elapsedTime;
            *&elapsedTime = elapsedTime;
            *&v15 = 1.0 / *(v20 + 384);
            LODWORD(v17) = 1.0;
            objc_msgSend_evaluateForceFieldsAtPosition_velocity_mass_charge_time_dt_categoryMask_(v14, v12, v22, v13, *(v20 + 64), *(v20 + 352), v15, v16, elapsedTime, v17);
            v24.i32[3] = 0;
            *(v20 + 464) = vaddq_f32(*(v20 + 464), vmulq_f32(v24, *(v20 + 400)));
            v18 += 8;
          }

          while (v19 != v18);
        }
      }

      else
      {
        v33 = sub_1AF0D5194();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAA8C(v33, v34, v35, v36, v37, v38, v39, v40);
        }
      }

      if (v42)
      {
        if (v43 == 1)
        {
          sub_1AFDA72A0(v42);
        }
      }
    }
  }

  else
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAAC4(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }
}

- (void)_createDynamicWorldIfNeeded
{
  if (!self->_btWorld)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_btWorld)
    {
      v3 = 0;
      v4 = 0;
      v5 = xmmword_1AFE47CE0;
      operator new();
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_physicsContact
{
  result = self->_contact;
  if (!result)
  {
    result = objc_alloc_init(VFXPhysicsContact);
    self->_contact = result;
  }

  return result;
}

- (void)commonInit
{
  if (qword_1ED737C08 != -1)
  {
    sub_1AFDFAAFC();
  }

  self->_lock._os_unfair_lock_opaque = 0;
  self->_registeredBodies = objc_alloc_init(MEMORY[0x1E695DFA8]);
}

- (VFXPhysicsWorld)initWithWorld:(id)world
{
  v15.receiver = self;
  v15.super_class = VFXPhysicsWorld;
  v4 = [(VFXPhysicsWorld *)&v15 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6, v7);
    *v8->_gravity = xmmword_1AFE47CF0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v8->_speed = _D0;
    v8->_useFixedTimeStep = 0;
    v8->_timeStep = 0.0166666667;
    v8->_vfxWorld = world;
  }

  return v8;
}

- (void)dealloc
{
  v35 = *MEMORY[0x1E69E9840];
  physicsJoints = self->_physicsJoints;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1AF362D84;
  v33[3] = &unk_1E7A796D8;
  v33[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(physicsJoints, a2, v33, v2);
  if (self->_btWorld)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    registeredBodies = self->_registeredBodies;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v5, &v29, v34, 16);
    if (v7)
    {
      v11 = v7;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(registeredBodies);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_msgSend__handle(v14, v8, v9, v10);
          if (v15)
          {
            (*(*self->_btWorld + 184))(self->_btWorld, v15);
          }

          objc_msgSend_flagAsActive_(v14, v16, 0, v17);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v8, &v29, v34, 16);
      }

      while (v11);
    }
  }

  vehicleRayCaster = self->_vehicleRayCaster;
  if (vehicleRayCaster)
  {
    (*(vehicleRayCaster->var0 + 1))(vehicleRayCaster);
  }

  debugDrawer = self->_debugDrawer;
  if (debugDrawer)
  {
    (*(debugDrawer->var0 + 1))(debugDrawer);
  }

  btWorld = self->_btWorld;
  if (btWorld)
  {
    v21 = btWorld[5];
    v22 = v21[1311];
    v23 = btWorld[12];
    v24 = (*(*btWorld + 200))(btWorld);
    if (self->_ghostPairCallback)
    {
      v25 = (*(*v23 + 72))(v23);
      (*(*v25 + 120))(v25, 0);
      ghostPairCallback = self->_ghostPairCallback;
      if (ghostPairCallback)
      {
        (*(ghostPairCallback->var0 + 1))(ghostPairCallback);
      }

      self->_ghostPairCallback = 0;
    }

    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    (*(*v21 + 8))(v21);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v27 = self->_btWorld;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  objc_storeWeak(&self->_contactDelegate, 0);
  v28.receiver = self;
  v28.super_class = VFXPhysicsWorld;
  [(VFXPhysicsWorld *)&v28 dealloc];
}

- (void)worldWillDie
{
  self->_vfxWorld = 0;
  btWorld = self->_btWorld;
  if (btWorld)
  {
    v3 = btWorld[3];
    if (v3)
    {
      if (*(btWorld + 32) == 1)
      {
        sub_1AFDA72A0(v3);
      }
    }

    *(btWorld + 32) = 1;
    btWorld[3] = 0;
    *(btWorld + 3) = 0;
    *(btWorld + 4) = 0;
  }
}

- (BOOL)_isDefault
{
  v3 = VFXVector3EqualToVector3(*self->_gravity, xmmword_1AFE47CF0);
  if (v3)
  {
    LOBYTE(v3) = self->_speed == 1.0 && self->_scale == 1.0 && !self->_useFixedTimeStep && self->_timeStep == 0.0166666667 && objc_msgSend_count(self->_physicsJoints, v4, v5, v6) == 0;
  }

  return v3;
}

- (void)wakeUpAllBodies
{
  btWorld = self->_btWorld;
  if (btWorld)
  {
    sub_1AFDA4890(btWorld);
  }
}

- (void)setGravity:(VFXPhysicsWorld *)self
{
  *self->_gravity = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF362EE8;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v3;
  objc_msgSend__postCommandWithBlock_(self, a2, v4, v2);
}

- (void)setScale:(float)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF363078;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    scaleCopy = scale;
    objc_msgSend__postCommandWithBlock_(self, a2, v11, v3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF363090;
    v9[3] = &unk_1E7A7F8D8;
    scaleCopy2 = scale;
    objc_msgSend_enumerateBodiesUsingBlock_(self, v6, v9, v7);
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      debugDrawer->var2 = 1.0 / self->_scale;
    }
  }
}

- (void)setTimeStep:(double)step
{
  v5 = fmin(step, 0.0666666701);
  if (v5 >= 0.00416666688)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.00416666688;
  }

  self->_timeStep = v6;
  v7 = objc_msgSend_clock(self->_vfxWorld, a2, v3, v4);

  objc_msgSend_setTimeStep_(v7, v8, v9, v10, v6);
}

- (void)setUseFixedTimeStep:(BOOL)step
{
  stepCopy = step;
  self->_useFixedTimeStep = step;
  v5 = objc_msgSend_clock(self->_vfxWorld, a2, step, v3);

  objc_msgSend_setUseFixedTimeStep_(v5, v6, stepCopy, v7);
}

- (void)setContactDelegate:(id)delegate
{
  if (objc_loadWeak(&self->_contactDelegate) != delegate)
  {
    objc_storeWeak(&self->_contactDelegate, delegate);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF3631F4;
  v7[3] = &unk_1E7A7E220;
  v7[4] = self;
  v7[5] = delegate;
  objc_msgSend__postCommandWithBlock_(self, v5, v7, v6);
}

- (void)addPhysicsJoint:(id)joint
{
  v6 = objc_msgSend_physicsWorld(joint, a2, joint, v3);
  if (v6 != self)
  {
    objc_msgSend_removePhysicsJoint_(v6, v7, joint, v8);
    os_unfair_lock_lock(&self->_lock);
    physicsJoints = self->_physicsJoints;
    if (!physicsJoints)
    {
      physicsJoints = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_physicsJoints = physicsJoints;
    }

    objc_msgSend_addObject_(physicsJoints, v9, joint, v10);
    os_unfair_lock_unlock(&self->_lock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF3632DC;
    v14[3] = &unk_1E7A7E220;
    v14[4] = self;
    v14[5] = joint;
    objc_msgSend__postCommandWithBlock_(self, v12, v14, v13);
  }
}

- (void)activatePhysicsJoint:(id)joint
{
  if ((objc_msgSend_isActive(joint, a2, joint, v3) & 1) == 0)
  {
    objc_msgSend__addToPhysicsWorld_(joint, v6, self, v7);
    v11 = objc_msgSend_bodyA(joint, v8, v9, v10);
    objc_msgSend__activate(v11, v12, v13, v14);
    v18 = objc_msgSend_bodyB(joint, v15, v16, v17);

    objc_msgSend__activate(v18, v19, v20, v21);
  }
}

- (void)deactivatePhysicsJoint:(id)joint
{
  if (objc_msgSend_isActive(joint, a2, joint, v3))
  {
    objc_msgSend__willRemoveFromPhysicsWorld_(joint, v6, self, v7);
    v11 = objc_msgSend_bodyA(joint, v8, v9, v10);
    objc_msgSend__activate(v11, v12, v13, v14);
    v18 = objc_msgSend_bodyB(joint, v15, v16, v17);

    objc_msgSend__activate(v18, v19, v20, v21);
  }
}

- (void)removePhysicsJoint:(id)joint
{
  os_unfair_lock_lock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF36345C;
  v9[3] = &unk_1E7A7E220;
  v9[4] = self;
  v9[5] = joint;
  objc_msgSend__postCommandWithBlock_(self, v5, v9, v6);
  objc_msgSend_removeObject_(self->_physicsJoints, v7, joint, v8);
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination
{
  v8 = objc_msgSend_rangeOfString_(key, a2, @"[", path);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v12 = v8;
  v13 = v8 + 1;
  if (v8 + 1 >= objc_msgSend_length(key, v9, v10, v11))
  {
    return 0;
  }

  v16 = objc_msgSend_substringToIndex_(key, v14, v12, v15);
  v19 = objc_msgSend_substringFromIndex_(key, v17, v13, v18);
  v22 = objc_msgSend_rangeOfString_(v19, v20, @"]", v21);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v25 = objc_msgSend_substringToIndex_(v19, v23, v22, v24);
  v29 = objc_msgSend_intValue(v25, v26, v27, v28);
  v32 = objc_msgSend_valueForKey_(self, v30, v16, v31);
  if (objc_msgSend_count(v32, v33, v34, v35) <= v29)
  {
    return 0;
  }

  *destination = objc_msgSend_objectAtIndex_(v32, v36, v29, v37);
  return 1;
}

- (id)valueForUndefinedKey:(id)key
{
  v16 = 0;
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, a2, key, key, &v16))
  {
    return v16;
  }

  if (objc_msgSend_isEqual_(key, v5, @"gravity", v6))
  {
    v11 = MEMORY[0x1E696B098];
    objc_msgSend_gravity(self, v8, v9, v10);
    return objc_msgSend_valueWithVFXFloat3_(v11, v12, v13, v14);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VFXPhysicsWorld;
    return [(VFXPhysicsWorld *)&v15 valueForUndefinedKey:key];
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_isEqual_(key, a2, @"gravity", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setGravity_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXPhysicsWorld;
    [(VFXPhysicsWorld *)&v13 setValue:value forUndefinedKey:key];
  }
}

- (NSArray)physicsJoints
{
  if (self->_physicsJoints)
  {
    return &self->_physicsJoints->super;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)rayTestWithSegmentFromPoint:(VFXPhysicsWorld *)self toPoint:(SEL)point options:(id)options
{
  HIDWORD(v3) = 0;
  HIDWORD(v4) = 0;
  v6 = v4;
  v7 = v3;
  result = objc_msgSend__rayTestWithSegmentFromPoint_toPoint_options_(self, point, &v7, &v6, options);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (id)_rayTestWithSegmentFromPoint:(btVector3)point toPoint:(btVector3)toPoint options:(id)options
{
  v7 = v6;
  v8 = v5;
  v11 = objc_msgSend_world(self, a2, options, v5, *point.var0.var0, *&point.var0.var0[1], *&point.var0.var0[2], *&point.var0.var0[3], *toPoint.var0.var0, *&toPoint.var0.var0[1], *&toPoint.var0.var0[2], *&toPoint.var0.var0[3]);
  v15 = objc_msgSend_worldRef(v11, v12, v13, v14);
  if (!v15 || !self->_btWorld)
  {
    return 0;
  }

  v16 = v15;
  v17 = sub_1AF368664(v48, options, v8);
  v20 = objc_msgSend_objectForKey_(v7, v18, @"backfaceCulling", v19, v17);
  if (!v20 || objc_msgSend_BOOLValue(v20, v21, v22, v23))
  {
    v49 |= 1u;
  }

  v24 = objc_msgSend_objectForKey_(v7, v21, @"results", v23);
  if (objc_msgSend_isEqualToString_(v24, v25, @"all", v26))
  {
    v29 = 2;
  }

  else
  {
    v29 = objc_msgSend_isEqualToString_(v24, v27, @"closest", v28) ^ 1;
  }

  v50 = v29;
  v30 = objc_msgSend_objectForKey_(v7, v27, @"collisionBitMask", v28);
  if (v30)
  {
    v34 = objc_msgSend_unsignedIntegerValue(v30, v31, v32, v33);
  }

  else
  {
    v34 = -1;
  }

  v48[4] = v34;
  sub_1AF1CEA20(v16);
  (*(*self->_btWorld + 64))(self->_btWorld, options, v8, v48);
  sub_1AF1CEA9C(v16);
  if (v50 == 2)
  {
    v37 = v53;
    v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v35, v53, v36);
    if (v37 >= 1)
    {
      for (i = 0; i != v37; ++i)
      {
        v41 = sub_1AF3636D4(*(v54 + 8 * i), (v62 + 16 * i), (v58 + 16 * i));
        if (v41)
        {
          objc_msgSend_addObject_(v38, v40, v41, v42);
        }
      }
    }
  }

  else
  {
    v44 = sub_1AF3636D4(v48[2], &v52, &v51);
    if (!v44)
    {
      v38 = 0;
      v46 = 0;
      goto LABEL_22;
    }

    v38 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v43, v44, v45);
  }

  v46 = 1;
LABEL_22:
  v48[0] = &unk_1F24EC768;
  if (v66 && v67 == 1)
  {
    sub_1AFDA72A0(v66);
  }

  v67 = 1;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  if (v62 && v63 == 1)
  {
    sub_1AFDA72A0(v62);
  }

  v63 = 1;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  if (v58 && v59 == 1)
  {
    sub_1AFDA72A0(v58);
  }

  v59 = 1;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  if (v54 && v55 == 1)
  {
    sub_1AFDA72A0(v54);
  }

  if ((v46 & 1) == 0)
  {
    return 0;
  }

  return v38;
}

- (id)contactTestBetweenBody:(id)body andBody:(id)andBody options:(id)options
{
  v9 = objc_msgSend_world(self, a2, body, andBody);
  v13 = objc_msgSend_worldRef(v9, v10, v11, v12);
  if (v13)
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      v17 = v13;
      v18 = objc_msgSend_objectForKey_(options, v14, @"collisionBitMask", v15);
      if (v18)
      {
        v22 = objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21);
      }

      else
      {
        v22 = -1;
      }

      v32 = &unk_1F24EC798;
      v33 = xmmword_1AFE47B90;
      v34 = xmmword_1AFE21110;
      v35 = v22;
      v36 = 0;
      sub_1AF1CEA20(v17);
      v26 = objc_msgSend__handle(body, v23, v24, v25);
      v30 = objc_msgSend__handle(andBody, v27, v28, v29);
      if (v26 && v30)
      {
        sub_1AFD75F88(self->_btWorld, v26, v30, &v32);
      }

      sub_1AF1CEA9C(v17);
      btWorld = v36;
    }
  }

  else
  {
    btWorld = 0;
  }

  if (btWorld)
  {
    return btWorld;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)contactTestWithBody:(id)body options:(id)options
{
  v7 = objc_msgSend_world(self, a2, body, options);
  v11 = objc_msgSend_worldRef(v7, v8, v9, v10);
  if (v11)
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      v15 = v11;
      v16 = objc_msgSend_objectForKey_(options, v12, @"collisionBitMask", v13);
      if (v16)
      {
        v20 = objc_msgSend_unsignedIntegerValue(v16, v17, v18, v19);
      }

      else
      {
        v20 = -1;
      }

      v26 = &unk_1F24EC798;
      v27 = xmmword_1AFE47B90;
      v28 = xmmword_1AFE21110;
      v29 = v20;
      v30 = 0;
      sub_1AF1CEA20(v15);
      v24 = objc_msgSend__handle(body, v21, v22, v23);
      if (v24)
      {
        sub_1AFD75EC0(self->_btWorld, v24, &v26);
      }

      sub_1AF1CEA9C(v15);
      btWorld = v30;
    }
  }

  else
  {
    btWorld = 0;
  }

  if (btWorld)
  {
    return btWorld;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (uint64_t)convexSweepTestWithShape:(void *)shape fromTransform:(void *)transform toTransform:(int8x16_t)toTransform options:(int8x16_t)options
{
  v101 = *MEMORY[0x1E69E9840];
  v15 = objc_msgSend_world(self, a2, shape, transform);
  v19 = objc_msgSend_worldRef(v15, v16, v17, v18);
  if (!v19)
  {
    return MEMORY[0x1E695E0F0];
  }

  v22 = MEMORY[0x1E695E0F0];
  if (self[1])
  {
    v23 = v19;
    v24 = objc_msgSend_objectForKey_(transform, v20, @"ccdPenetration", v21);
    if (v24)
    {
      objc_msgSend_floatValue(v24, v25, v26, v27);
      v29 = v28;
    }

    else
    {
      v29 = 0.0;
    }

    v30 = objc_msgSend_objectForKey_(transform, v25, @"collisionBitMask", v27);
    if (v30)
    {
      v34 = objc_msgSend_unsignedIntegerValue(v30, v31, v32, v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = objc_msgSend_objectForKey_(transform, v31, @"results", v33);
    if (objc_msgSend_isEqualToString_(v35, v36, @"all", v37))
    {
      v40 = 2;
    }

    else
    {
      v40 = objc_msgSend_isEqualToString_(v35, v38, @"closest", v39) ^ 1;
    }

    sub_1AF1CEA20(v23);
    v43 = objc_msgSend__shapeHandle_(shape, v41, 0, v42);
    v47 = objc_msgSend_btShape(v43, v44, v45, v46);
    if (v47)
    {
      if (*(v47 + 8) > 19)
      {
        v49 = sub_1AF0D5194();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAB10(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }

      else
      {
        v79 = vzip1_s32(*toTransform.i8, *options.i8);
        v80 = a7.n128_u32[0];
        v81 = 0;
        v82 = vzip2_s32(*toTransform.i8, *options.i8);
        v83 = a7.n128_u32[1];
        v84 = 0;
        v85 = vzip1_s32(*&vextq_s8(toTransform, toTransform, 8uLL), *&vextq_s8(options, options, 8uLL));
        v86 = a7.n128_u32[2];
        v87 = 0;
        *&v88 = a8.n128_u64[0];
        *(&v88 + 1) = a8.n128_u32[2];
        v69 = vzip1_s32(*a9.i8, *a10.i8);
        v70 = a11.n128_u32[0];
        v71 = 0;
        v72 = vzip2_s32(*a9.i8, *a10.i8);
        v73 = a11.n128_u32[1];
        v74 = 0;
        v75 = vzip1_s32(*&vextq_s8(a9, a9, 8uLL), *&vextq_s8(a10, a10, 8uLL));
        v76 = a11.n128_u32[2];
        v77 = 0;
        *&v78 = a12.n128_u64[0];
        *(&v78 + 1) = a12.n128_u32[2];
        v90 = 1.0;
        v91 = 1;
        v92 = v34;
        v93 = 0;
        v94 = v88;
        v95 = v78;
        v97 = 0;
        v100 = 0;
        v89 = &unk_1F24EC7C8;
        v96 = v40;
        sub_1AFD75D50(self[1], v47, &v79, &v69, &v89, v29);
        if (v90 < 1.0)
        {
          if (v40 == 2)
          {
            v48 = v100;
            goto LABEL_21;
          }

          v59 = sub_1AF363F94(v97, 0, &v99, &v98, 0.0, v90);
          if (v59)
          {
            v48 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v58, v59, v60);
LABEL_21:
            sub_1AF1CEA9C(v23);
            if (v48)
            {
              return v48;
            }

            return v22;
          }
        }
      }
    }

    v48 = 0;
    goto LABEL_21;
  }

  return v22;
}

- (void)updateCollisionPairs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF3640E4;
  v3[3] = &unk_1E7A7E1D0;
  v3[4] = self;
  objc_msgSend__postCommandWithBlock_(self, a2, v3, v2);
}

- (BOOL)_needsRedraw
{
  if (self->_speed == 0.0)
  {
    LOBYTE(btWorld) = 0;
  }

  else
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      LOBYTE(btWorld) = btWorld[448];
    }
  }

  return btWorld & 1;
}

- (void)enumerateBodiesUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredBodies = self->_registeredBodies;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v6, &v12, v17, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(registeredBodies);
      }

      (*(block + 2))(block, *(*(&v12 + 1) + 8 * v10), &v16);
      if (v16)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v11, &v12, v17, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_reset
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  registeredBodies = self->_registeredBodies;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v4, &v22, v26, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(registeredBodies);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_msgSend_clearAllForces(v12, v6, v7, v8);
        objc_msgSend_resetTransform(v12, v13, v14, v15);
        objc_msgSend_setVelocity_(v12, v16, v17, v18, 0.0);
        objc_msgSend_setAngularVelocity_(v12, v19, v20, v21, 0.0);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v6, &v22, v26, 16);
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_step:(double)_step
{
  btWorld = self->_btWorld;
  if (btWorld)
  {
    timeStep = self->_timeStep;
    speed = self->_speed;
    _step = speed * _step;
    *&_step = _step;
    v7 = vcvtps_s32_f32(speed * ((1.0 / timeStep) / 15.0));
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = btWorld[5];
    if (!self->_firstSimulationDone)
    {
      self->_firstSimulationDone = 1;
      if (timeStep >= *&_step)
      {
        *&_step = timeStep;
      }
    }

    (*(*btWorld + 104))(btWorld, v8, *&_step);
    if (objc_loadWeak(&self->_contactDelegate))
    {

      sub_1AF364630(v9, v10, v11, v12);
    }
  }
}

- (btVehicleRaycaster)_defaultVehicleRayCaster
{
  result = self->_vehicleRayCaster;
  if (!result)
  {
    objc_msgSend__createDynamicWorldIfNeeded(self, a2, v2, v3);
    operator new();
  }

  return result;
}

- (void)_allowGhostObjects
{
  if (!self->_ghostPairCallback)
  {
    objc_msgSend__createDynamicWorldIfNeeded(self, a2, v2, v3);
    operator new();
  }
}

- (void)_drawDebugInAuthoringEnvironment:(void *)environment
{
  if (self->_btWorld)
  {
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      debugDrawer->var3 = environment;
      (*(*self->_btWorld + 32))(self->_btWorld, self->_debugDrawer);
      (*(*self->_btWorld + 48))(self->_btWorld);
      (*(*self->_btWorld + 32))(self->_btWorld, 0);
      self->_debugDrawer->var3 = 0;
    }
  }
}

- (void)addPhysicsBody:(id)body nodeRef:(__CFXNode *)ref colGroup:(unint64_t)group colMask:(unint64_t)mask colTest:(unint64_t)test
{
  v13 = objc_msgSend__handle(self, a2, body, ref);
  if (v13)
  {
    v17 = v13;
    objc_msgSend_centerOfMassOffset(body, v14, v15, v16);
    v27 = v18;
    v22 = objc_msgSend__handle(body, v19, v20, v21);
    sub_1AF3643E4(v17, v22, ref, group, mask, test, v27);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_addObject_(self->_registeredBodies, v23, body, v24);
  objc_msgSend_flagAsActive_(body, v25, 1, v26);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePhysicsBody:(id)body handle:(void *)handle
{
  v27 = *MEMORY[0x1E69E9840];
  btWorld = self->_btWorld;
  if (btWorld)
  {
    (*(*btWorld + 184))(btWorld, handle);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_removeObject_(self->_registeredBodies, v7, body, v8);
  objc_msgSend_flagAsActive_(body, v9, 0, v10);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  physicsJoints = self->_physicsJoints;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(physicsJoints, v12, &v22, v26, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(physicsJoints);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_bodyA(v20, v14, v15, v16) == body || objc_msgSend_bodyB(v20, v14, v21, v16) == body)
        {
          objc_msgSend_deactivatePhysicsJoint_(self, v14, v20, v16);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(physicsJoints, v14, &v22, v26, 16);
    }

    while (v17);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_gravity(self, a2, to, context);
  objc_msgSend_setGravity_(to, v6, v7, v8);
  objc_msgSend_speed(self, v9, v10, v11);
  objc_msgSend_setSpeed_(to, v12, v13, v14);
  v18 = objc_msgSend_useFixedTimeStep(self, v15, v16, v17);
  objc_msgSend_setUseFixedTimeStep_(to, v19, v18, v20);
  objc_msgSend_timeStep(self, v21, v22, v23);

  objc_msgSend_setTimeStep_(to, v24, v25, v26);
}

- (void)encodeWithCoder:(id)coder
{
  vfxWorld = self->_vfxWorld;
  if (vfxWorld)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, vfxWorld, @"world");
  }

  physicsJoints = self->_physicsJoints;
  if (physicsJoints)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, physicsJoints, @"joints");
  }

  sub_1AF371A8C(coder, @"gravity", *self->_gravity);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"speed", v8, self->_speed);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"scale", v10, self->_scale);
  objc_msgSend_encodeBool_forKey_(coder, v11, self->_useFixedTimeStep, @"useFixedTimeStep");
  timeStep = self->_timeStep;

  objc_msgSend_encodeDouble_forKey_(coder, v12, @"timeStep", v13, timeStep);
}

- (VFXPhysicsWorld)initWithCoder:(id)coder
{
  v50.receiver = self;
  v50.super_class = VFXPhysicsWorld;
  v7 = [(VFXPhysicsWorld *)&v50 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend_commonInit(v7, v11, v12, v13);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"world");
    objc_msgSend_setWorld_(v7, v17, v16, v18);
    v19 = sub_1AF371BC4(coder, @"gravity");
    objc_msgSend_setGravity_(v7, v20, v21, v22, v19);
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"speed", v24);
    *&v25 = v25;
    objc_msgSend_setSpeed_(v7, v26, v27, v28, v25);
    objc_msgSend_decodeDoubleForKey_(coder, v29, @"scale", v30);
    *&v31 = v31;
    objc_msgSend_setScale_(v7, v32, v33, v34, v31);
    v37 = objc_msgSend_decodeBoolForKey_(coder, v35, @"useFixedTimeStep", v36);
    objc_msgSend_setUseFixedTimeStep_(v7, v38, v37, v39);
    objc_msgSend_decodeDoubleForKey_(coder, v40, @"timeStep", v41);
    objc_msgSend_setTimeStep_(v7, v42, v43, v44);
    v45 = objc_opt_class();
    v7->_tempLoadedJoints = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v46, v45, @"joints");
    objc_msgSend_setImmediateMode_(VFXTransaction, v47, v8, v48);
  }

  return v7;
}

- (void)_registerPhysicsJoints
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  tempLoadedJoints = self->_tempLoadedJoints;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(tempLoadedJoints, a2, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(tempLoadedJoints);
        }

        objc_msgSend_addPhysicsJoint_(self, v5, *(*(&v10 + 1) + 8 * i), v6);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(tempLoadedJoints, v5, &v10, v14, 16);
    }

    while (v7);
  }

  self->_tempLoadedJoints = 0;
}

@end