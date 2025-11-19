@interface VFXConstraint
+ (id)presentationConstraintWithConstraintRef:(__CFXConstraint *)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)isEnabled;
- (BOOL)isIncremental;
- (NSArray)animationKeys;
- (VFXConstraint)init;
- (VFXConstraint)initWithCoder:(id)a3;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (float)influenceFactor;
- (id)_vfxAnimationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPresentationConstraintWithConstraintRef:(__CFXConstraint *)a3;
- (id)presentationConstraint;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_copyBindingsFrom:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setSourceObject:(id)a3 forBinding:(id)a4;
- (void)_syncObjCAnimations;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addWorldReference:(id)a3;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)commonInit;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)didInitConstraintRef;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnimationReferencesUsingBlock:(id)a3;
- (void)finalizeDecodeConstraint:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4;
- (void)removeWorldReference:(id)a3;
- (void)setConstraintRef:(__CFXConstraint *)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setIncremental:(BOOL)a3;
- (void)setInfluenceFactor:(float)a3;
- (void)setName:(id)a3;
- (void)setWorld:(id)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation VFXConstraint

- (void)commonInit
{
  *&self->_enabled = 257;
  self->_influenceFactor = 1.0;
  self->_animationsLock._os_unfair_lock_opaque = 0;
}

- (VFXConstraint)init
{
  v8.receiver = self;
  v8.super_class = VFXConstraint;
  v2 = [(VFXConstraint *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4, v5);
  }

  return v6;
}

- (void)didInitConstraintRef
{
  constraintRef = self->_constraintRef;
  if (constraintRef)
  {
    sub_1AF16CDFC(constraintRef, self);
  }
}

- (void)dealloc
{
  if ((*(self + 40) & 1) == 0)
  {
    constraintRef = self->_constraintRef;
    if (constraintRef)
    {
      sub_1AF16CDFC(constraintRef, 0);
    }
  }

  v4 = self->_constraintRef;
  if (v4)
  {
    CFRelease(v4);
    self->_constraintRef = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXConstraint;
  [(VFXConstraint *)&v5 dealloc];
}

- (id)initPresentationConstraintWithConstraintRef:(__CFXConstraint *)a3
{
  v7.receiver = self;
  v7.super_class = VFXConstraint;
  v4 = [(VFXConstraint *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_constraintRef = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  self->_enabled = sub_1AF14F350(self->_constraintRef);
  self->_incremental = sub_1AF14F360(self->_constraintRef);
  self->_influenceFactor = sub_1AF14F370(self->_constraintRef);
  if (v6)
  {

    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B76E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)copyTo:(id)a3
{
  isEnabled = objc_msgSend_isEnabled(self, a2, a3, v3);
  objc_msgSend_setEnabled_(a3, v7, isEnabled, v8);
  objc_msgSend_influenceFactor(self, v9, v10, v11);
  objc_msgSend_setInfluenceFactor_(a3, v12, v13, v14);
  isIncremental = objc_msgSend_isIncremental(self, v15, v16, v17);

  objc_msgSend_setIncremental_(a3, v18, isIncremental, v20);
}

- (void)setName:(id)a3
{
  constraintRef = self->_constraintRef;
  v5 = objc_msgSend_copy(a3, a2, a3, v3);

  sub_1AF14F2BC(constraintRef, v5);
}

- (void)setConstraintRef:(__CFXConstraint *)a3
{
  constraintRef = self->_constraintRef;
  if (constraintRef != a3)
  {
    if (constraintRef)
    {
      CFRelease(constraintRef);
      self->_constraintRef = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_constraintRef = v6;
  }
}

- (BOOL)isEnabled
{
  if (!self->_presentationObject)
  {
    return self->_enabled;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF14F350(self->_constraintRef);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F350(constraintRef);
  }
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7950;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (BOOL)isIncremental
{
  if (!self->_presentationObject)
  {
    return self->_incremental;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF14F360(self->_constraintRef);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F360(constraintRef);
  }
}

- (void)setIncremental:(BOOL)a3
{
  self->_incremental = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7A64;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (float)influenceFactor
{
  if (!self->_presentationObject)
  {
    return self->_influenceFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF14F370(self->_constraintRef);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F370(constraintRef);
  }
}

- (void)setInfluenceFactor:(float)a3
{
  if (self->_influenceFactor != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_influenceFactor = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B7B98;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"influenceFactor", v5);
  }
}

- (void)finalizeDecodeConstraint:(id)a3
{
  v6 = objc_msgSend_decodeBoolForKey_(a3, a2, @"enabled", v3);
  objc_msgSend_setEnabled_(self, v7, v6, v8);
  objc_msgSend_decodeDoubleForKey_(a3, v9, @"influenceFactor", v10);
  *&v11 = v11;
  objc_msgSend_setInfluenceFactor_(self, v12, v13, v14, v11);
  if (objc_msgSend_containsValueForKey_(a3, v15, @"incremental", v16))
  {
    v19 = objc_msgSend_decodeBoolForKey_(a3, v17, @"incremental", v18);
    objc_msgSend_setIncremental_(self, v20, v19, v21);
  }

  self->_animationsLock._os_unfair_lock_opaque = 0;
  sub_1AF372B94(a3, self);

  objc_msgSend_didInitConstraintRef(self, v22, v23, v24);
}

- (VFXConstraint)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXConstraint;
  v3 = [(VFXConstraint *)&v9 init];
  v7 = v3;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5, v6);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeBool_forKey_(a3, a2, self->_enabled, @"enabled");
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"influenceFactor", v6, self->_influenceFactor);
  objc_msgSend_encodeBool_forKey_(a3, v7, self->_incremental, @"incremental");

  sub_1AF3728B4(a3, self, v8, v9);
}

- (id)presentationConstraint
{
  v2 = self;
  if ((*(self + 40) & 1) == 0)
  {
    v3 = objc_opt_class();
    v6 = v2[1];

    return objc_msgSend_presentationConstraintWithConstraintRef_(v3, v4, v6, v5);
  }

  return self;
}

+ (id)presentationConstraintWithConstraintRef:(__CFXConstraint *)a3
{
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initPresentationConstraintWithConstraintRef_(v4, v5, a3, v6);

  return inited;
}

- (void)addWorldReference:(id)a3
{
  world = self->_world;
  if (world == a3)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, a3, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)a3
{
  p_world = &self->_world;
  if (!a3 || self->_world == a3)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)a3
{
  world = self->_world;
  if (world != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2B7FD4;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2B8034;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 40) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF1CF830(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, a4, v8);
  v15 = objc_msgSend_animation(v9, v10, v11, v12) == a3;
  if (v15)
  {
    objc_msgSend_removeWorldReference_(v9, v13, self->_world, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, a4, v17);
    v21 = objc_msgSend___CFObject(self, v18, v19, v20);
    if ((sub_1AF16D234(v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v22);
      }
    }

    sub_1AF16D870(v21, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v15;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if ((*(self + 40) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(a3, v11, self->_world, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v13, a3, v5);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v15 = objc_msgSend_timingFunction(VFXTransaction, a2, a3, a4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF2B8334;
    v18[3] = &unk_1E7A7E2C0;
    v18[4] = a3;
    v18[5] = self;
    v18[6] = v5;
    v18[7] = v15;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v18);
  }

  else
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4E4C();
    }
  }
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, v6, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, v6, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, v5);

    objc_msgSend_play(v13, v15, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4EC0();
    }
  }
}

- (void)removeAllAnimations
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  world = self->_world;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  animations = self->_animations;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v5, &v25, v29, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v25 + 1) + 8 * i), v7, world, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v7, &v25, v29, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(self->_animations, v7, v8, v9);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v13, v14, v15);
  if (v19 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2B86B8, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2B86A8, &unk_1E7A7E2E8, self, v21, *&v20);
  }
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, a3, v6);
      objc_msgSend_removeWorldReference_(v8, v9, self->_world, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v11, a3, v12);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v16 = objc_msgSend_timingFunction(VFXTransaction, v13, v14, v15);
    objc_msgSend_animationDuration(VFXTransaction, v17, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF2B87A8;
    v22[3] = &unk_1E7A7E310;
    v22[7] = v20;
    v22[4] = self;
    v22[5] = a3;
    v22[6] = v16;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, self, v22);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v6 = objc_msgSend_allKeys(self->_animations, v3, v4, v5);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v10 = objc_msgSend___CFObject(self, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_1AF16D234(v10) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4C94(v12);
      }
    }

    v13 = sub_1AF16D614(v11);
    if (v13)
    {
      v14 = v13;
      os_unfair_lock_lock(&self->_animationsLock);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1AF2B8944;
      v17[3] = &unk_1E7A7E338;
      v17[4] = self;
      sub_1AF375240(v14, v17, v15, v16);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (id)_vfxAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
      v3 = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(a3, a2, a3, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_msgSend_animationPlayerForKey_(a3, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = objc_msgSend___CFObject(self, a2, a3, a4);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, a4, v7, v5, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, a4, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, a3, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, a5, v19);
    objc_msgSend_setOptions_(v13, v20, a6, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, a3);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF2B8D64;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = a4;
    v25[6] = a3;
    v25[7] = a5;
    v25[8] = a6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)a3
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, a3, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2B8EA8;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2B8F74;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)a3
{
  v5 = objc_msgSend__vfxBindings(a3, a2, a3, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2B9020;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)a3 forBinding:(id)a4
{
  if (objc_msgSend_sourceObject(a4, a2, a3, a4) != a3)
  {
    objc_msgSend_setSourceObject_(a4, v7, a3, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2B9158;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = a4;
    v10[6] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)a3
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2B9294;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)a3
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, a3);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4
{
  objc_msgSend_begin(VFXTransaction, a2, a3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, a4);
  objc_msgSend_removeAnimationForKey_(self, v11, a3, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF4F9C();
  }

  return 0;
}

@end