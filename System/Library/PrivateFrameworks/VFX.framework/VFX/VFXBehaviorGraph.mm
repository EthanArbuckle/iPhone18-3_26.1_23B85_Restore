@interface VFXBehaviorGraph
+ (VFXBehaviorGraph)behaviorGraphWithEntityHandle:(id)handle;
+ (VFXBehaviorGraph)behaviorGraphWithEntityObject:(id)object;
+ (id)presentationBehaviorGraphWithEntityHandle:(id)handle;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXBehaviorGraph)init;
- (VFXBehaviorGraph)initWithCoder:(id)coder;
- (VFXBehaviorGraph)initWithCoreEntityHandle:(id)handle;
- (VFXBehaviorGraph)initWithTag:(id)tag;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entityManager;
- (id)identifier;
- (id)initPresentationBehaviorGraphWithCoreEntityHandle:(id)handle;
- (id)name;
- (id)presentationObject;
- (id)unsafeParameterHandleForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)entity;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)resolveTag:(id)tag remap:(id)remap;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXBehaviorGraph

- (VFXBehaviorGraph)init
{
  v3.receiver = self;
  v3.super_class = VFXBehaviorGraph;
  result = [(VFXBehaviorGraph *)&v3 init];
  if (result)
  {
    result->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (VFXBehaviorGraph)initWithCoreEntityHandle:(id)handle
{
  v9.receiver = self;
  v9.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v9 init];
  if (v4)
  {
    v4->_coreHandle = handle;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v5, v6, v7);
  }

  return v4;
}

- (VFXBehaviorGraph)initWithTag:(id)tag
{
  v9.receiver = self;
  v9.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v9 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v4->_coreHandle = objc_msgSend_initWithTag_(v5, v6, tag, v7);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)initPresentationBehaviorGraphWithCoreEntityHandle:(id)handle
{
  v7.receiver = self;
  v7.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 24) |= 1u;
    v4->_coreHandle = handle;
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXBehaviorGraph)behaviorGraphWithEntityObject:(id)object
{
  v4 = [self alloc];
  v7 = objc_msgSend_handleWithEntityObject_(VFXCoreEntityHandle, v5, object, v6);
  v10 = objc_msgSend_initWithCoreEntityHandle_(v4, v8, v7, v9);

  return v10;
}

+ (VFXBehaviorGraph)behaviorGraphWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithCoreEntityHandle_(v4, v5, handle, v6);

  return v7;
}

+ (id)presentationBehaviorGraphWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  inited = objc_msgSend_initPresentationBehaviorGraphWithCoreEntityHandle_(v4, v5, handle, v6);

  return inited;
}

- (void)resolveTag:(id)tag remap:(id)remap
{
  objc_msgSend_resolveTag_remap_(self->_coreHandle, a2, tag, remap);

  objc_msgSend__updateModelFromPresentation(self, v5, v6, v7);
}

- (id)presentationObject
{
  selfCopy = self;
  if ((*(self + 24) & 1) == 0)
  {
    Weak = objc_loadWeak(self + 9);
    if (Weak)
    {
      v7 = objc_msgSend_presentationObject(Weak, v4, v5, v6);

      return objc_msgSend_behaviorGraph(v7, v8, v9, v10);
    }

    else
    {
      v11 = [VFXBehaviorGraph alloc];
      inited = objc_msgSend_initPresentationBehaviorGraphWithCoreEntityHandle_(v11, v12, selfCopy[1], v13);

      return inited;
    }
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXBehaviorGraph;
  [(VFXBehaviorGraph *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v7, v5, self);
}

- (void)_updateModelFromPresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_bindings(self->_coreHandle, a2, v2, v3);
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    if (!self->_valueForKey)
    {
      self->_valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v27, v31, 16);
    if (v10)
    {
      v14 = v10;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          coreHandle = self->_coreHandle;
          v19 = objc_msgSend_bindingName(v17, v11, v12, v13);
          v22 = objc_msgSend_bindingValueForKey_(coreHandle, v20, v19, v21);
          if (v22)
          {
            v23 = v22;
            valueForKey = self->_valueForKey;
            v25 = objc_msgSend_bindingName(v17, v11, v12, v13);
            objc_msgSend_setValue_forKey_(valueForKey, v26, v23, v25);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v27, v31, 16);
      }

      while (v14);
    }
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF29E8E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (int64_t)entity
{
  v4 = *(self + 24);
  v5 = objc_msgSend_entityObject(self->_coreHandle, a2, v2, v3);
  if (v4)
  {
    v5 = objc_msgSend_presentationProperties(v5, v6, v7, v8);
  }

  return objc_msgSend_objectID(v5, v6, v7, v8);
}

- (id)entityManager
{
  v4 = *(self + 24);
  v5 = objc_msgSend_entityObject(self->_coreHandle, a2, v2, v3);
  if (v4)
  {
    v5 = objc_msgSend_presentationProperties(v5, v6, v7, v8);
  }

  return objc_msgSend_opaqueEntityManager(v5, v6, v7, v8);
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF29EB6C;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)name
{
  if ((*(self + 24) & 1) == 0)
  {
    return self->_name;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend___CFObject(self, v7, v8, v9);
  v5 = sub_1AF16CBEC(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v5 = objc_msgSend___CFObject(self, a2, identifier, v3);

  sub_1AF16CD6C(v5, identifier);
}

- (id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF16CD08(v4, v5, v6, v7);
}

- (void)_updateEntityModelFromPresentation
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);

  self->_name = sub_1AF16CBEC(v5);
}

- (void)_updateEntityPresentationFromModel
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);
  name = self->_name;

  sub_1AF16CC34(v5, name);
}

- (void)makeUniqueID
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  sub_1AF16CD6C(v4, v12);
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  coreHandle = self->_coreHandle;
  if (coreHandle)
  {
    (*(block + 2))(block, coreHandle, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, coreHandle, block, block);
}

- (void)addWorldReference:(id)reference
{
  if (self->_world != reference)
  {
    objc_msgSend_setWorld_(self, a2, reference, v3);
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF29EEA0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29EF00;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 24) & 1) == 0)
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

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, key, v8);
  v15 = objc_msgSend_animation(v9, v10, v11, v12) == animation;
  if (v15)
  {
    objc_msgSend_removeWorldReference_(v9, v13, self->_world, v14);
    objc_msgSend_removeObjectForKey_(self->_animations, v16, key, v17);
    v21 = objc_msgSend___CFObject(self, v18, v19, v20);
    if ((sub_1AF16D234(v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v22);
      }
    }

    sub_1AF16D870(v21, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v15;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if ((*(self + 24) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v11, self->_world, v12);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v13, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v15 = objc_msgSend_timingFunction(VFXTransaction, a2, player, key);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF29F214;
    v18[3] = &unk_1E7A7E2C0;
    v18[4] = player;
    v18[5] = self;
    v18[6] = keyCopy;
    v18[7] = v15;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v18);
  }

  else
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4BA4(self, v17);
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation, 0);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, animationCopy, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, animationCopy, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, keyCopy);

    objc_msgSend_play(v13, v15, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4C1C(self, v18);
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF29F598, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF29F588, &unk_1E7A7E2E8, self, v21, *&v20);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, key, v6);
      objc_msgSend_removeWorldReference_(v8, v9, self->_world, v10);
      objc_msgSend_removeObjectForKey_(self->_animations, v11, key, v12);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v16 = objc_msgSend_timingFunction(VFXTransaction, v13, v14, v15);
    objc_msgSend_animationDuration(VFXTransaction, v17, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF29F688;
    v22[3] = &unk_1E7A7E310;
    v22[7] = v20;
    v22[4] = self;
    v22[5] = key;
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
      v17[2] = sub_1AF29F824;
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

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
      keyCopy = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(from, a2, from, v3, 0);
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
        v15 = objc_msgSend_animationPlayerForKey_(from, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy, v6);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation, key);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, key, animationCopy, nodeCopy, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, path, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, keyPath, v19);
    objc_msgSend_setOptions_(v13, v20, options, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, path);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF29FC44;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = object;
    v25[6] = path;
    v25[7] = keyPath;
    v25[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF29FD88;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF29FE54;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF29FF00;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object, binding) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2A0038;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = binding;
    v10[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2A0174;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, duration);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, duration);
  objc_msgSend_removeAnimationForKey_(self, v11, key, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  sub_1AF3716AC(path, &v14, &v13, v3);
  if (v13)
  {
    v8 = objc_msgSend_valueForKey_(self, v6, v14, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return objc_msgSend_VFX_valueForKey_(v8, v9, v13, v10);
    }
  }

  v12.receiver = self;
  v12.super_class = VFXBehaviorGraph;
  return [(VFXBehaviorGraph *)&v12 valueForKeyPath:path];
}

- (id)valueForUndefinedKey:(id)key
{
  if ((*(self + 24) & 1) != 0 || (v6 = objc_msgSend_valueForKey_(self->_valueForKey, a2, key, v3)) == 0)
  {
    v7 = objc_msgSend_worldRef(self, a2, key, v3);
    v10 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7);
    }

    coreHandle = self->_coreHandle;
    if (*(self + 24))
    {
      v12 = objc_msgSend_bindingPresentationValueForKey_(coreHandle, v8, key, v9);
    }

    else
    {
      v12 = objc_msgSend_bindingValueForKey_(coreHandle, v8, key, v9);
    }

    v6 = v12;
    if (!v12)
    {
      v6 = objc_msgSend_valueForKeyPath_(self->_coreHandle, v13, key, v14);
    }

    if (v10)
    {
      sub_1AF1CEA9C(v10);
    }
  }

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_setBindingValue_forKey_(self->_coreHandle, a2, value, key))
  {
    valueForKey = self->_valueForKey;
    if (!valueForKey)
    {
      valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valueForKey = valueForKey;
    }

    objc_msgSend_setValue_forKey_(valueForKey, v7, value, key);
  }

  else
  {
    coreHandle = self->_coreHandle;

    objc_msgSend_setValue_forKeyPath_(coreHandle, v7, value, key);
  }
}

- (id)unsafeParameterHandleForKey:(id)key
{
  v4 = *(self + 24);
  coreHandle = self->_coreHandle;
  if (v4)
  {
    return objc_msgSend_presentationBindingForKey_(coreHandle, a2, key, v3);
  }

  else
  {
    return (MEMORY[0x1EEE66B58])(coreHandle, sel_bindingForKey_, key);
  }
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to, context);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  *(to + 1) = sub_1AF2BED30(self->_coreHandle, context);
  objc_msgSend__updateModelFromPresentation(to, v9, v10, v11);
  objc_msgSend__copyAnimationsFrom_(to, v12, self, v13);
  objc_msgSend__copyBindingsFrom_(to, v14, self, v15);

  *(to + 5) = objc_msgSend_mutableCopy(self->_valueForKey, v16, v17, v18);

  objc_msgSend_commitImmediate(VFXTransaction, v19, v20, v21);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 24))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder, v3);
  }

  objc_msgSend_encodeObject_forKey_(coder, a2, self->_coreHandle, @"coreHandle");
  sub_1AF372440(coder, self, v6, v7);

  sub_1AF3728B4(coder, self, v8, v9);
}

- (VFXBehaviorGraph)initWithCoder:(id)coder
{
  v28.receiver = self;
  v28.super_class = VFXBehaviorGraph;
  v7 = [(VFXBehaviorGraph *)&v28 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    if (objc_msgSend_containsValueForKey_(coder, v11, @"rootIdentifier", v12))
    {
      v13 = objc_opt_class();
      v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"rootIdentifier");
      v16 = [VFXCoreEntityHandle alloc];
      v19 = objc_msgSend_initWithTag_(v16, v17, v15, v18);
    }

    else
    {
      v23 = objc_opt_class();
      v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v24, v23, @"coreHandle");
    }

    v7->_coreHandle = v19;
    objc_msgSend__updateModelFromPresentation(v7, v20, v21, v22);
    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v7);
    sub_1AF372B94(coder, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v25, v8, v26);
  }

  return v7;
}

@end