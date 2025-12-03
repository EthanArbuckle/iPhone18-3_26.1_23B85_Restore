@interface VFXAnimationPlayer
+ (id)animationPlayerWithAnimation:(id)animation;
+ (id)animationPlayerWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref;
+ (id)animationPlayerWithVFXAnimation:(id)animation;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXAnimationPlayer)initWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref;
- (VFXAnimationPlayer)initWithCoder:(id)coder;
- (VFXAnimationPlayer)initWithVFXAnimation:(id)animation;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setAnimation:(id)animation;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)play;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setBlendFactor:(float)factor;
- (void)setPaused:(BOOL)paused;
- (void)setSpeed:(float)speed;
- (void)setTimeOrigin:(unint64_t)origin;
- (void)setTimeSource:(unint64_t)source;
- (void)setWorld:(id)world;
- (void)stop;
- (void)stopWithBlendOutDuration:(double)duration;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXAnimationPlayer

- (void)commonInit
{
  __asm { FMOV            V0.2S, #1.0 }

  *&self->_weight = _D0;
  self->_paused = 0;
  self->_timeSource = 0;
  self->_timeOrigin = 0;
}

+ (id)animationPlayerWithAnimation:(id)animation
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithVFXAnimation_(v4, v5, animation, v6);

  return v7;
}

- (VFXAnimationPlayer)initWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref
{
  v13.receiver = self;
  v13.super_class = VFXAnimationPlayer;
  v4 = [(VFXAnimationPlayer *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_playerRef = v5;
    v6 = sub_1AF11B17C(v5);
    v4->_animation = objc_msgSend_animationWithCFXAnimation_(VFXAnimation, v7, v6, v8);
    v4->_weight = sub_1AF11B4B8(ref);
    v4->_speed = sub_1AF11B3D4(ref);
    v4->_paused = sub_1AF11B5C0(ref);
    v4->_timeSource = sub_1AF11B874(ref);
    v4->_timeOrigin = sub_1AF11B950(ref);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
  }

  return v4;
}

+ (id)animationPlayerWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithAnimationPlayerRef_(v4, v5, ref, v6);

  return v7;
}

- (VFXAnimationPlayer)initWithVFXAnimation:(id)animation
{
  v13.receiver = self;
  v13.super_class = VFXAnimationPlayer;
  v7 = [(VFXAnimationPlayer *)&v13 init];
  if (v7)
  {
    v8 = objc_msgSend_animationRef(animation, v4, v5, v6);
    v7->_playerRef = sub_1AF11B050(v8);
    v7->_animation = animation;
    v7->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend_commonInit(v7, v9, v10, v11);
  }

  return v7;
}

+ (id)animationPlayerWithVFXAnimation:(id)animation
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithVFXAnimation_(v4, v5, animation, v6);

  return v7;
}

- (void)dealloc
{
  playerRef = self->_playerRef;
  if (playerRef)
  {
    CFRelease(playerRef);
    self->_playerRef = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXAnimationPlayer;
  [(VFXAnimationPlayer *)&v4 dealloc];
}

- (void)_setAnimation:(id)animation
{
  animation = self->_animation;
  if (animation != animation)
  {

    self->_animation = animation;
    playerRef = self->_playerRef;
    if (playerRef)
    {
      CFRelease(playerRef);
      self->_playerRef = 0;
    }

    if (animation)
    {
      v10 = objc_msgSend_animationRef(animation, v6, v7, v8);
      v11 = sub_1AF11B050(v10);
      self->_playerRef = v11;
      sub_1AF11B41C(v11, self->_weight);
      sub_1AF11B334(self->_playerRef, self->_speed);
      v12 = self->_playerRef;
      paused = self->_paused;

      sub_1AF11B500(v12, paused);
    }
  }
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  objc_msgSend_prepareWithTarget_implicitDuration_(self->_animation, a2, target, v4, duration);
  playerRef = self->_playerRef;
  v10 = objc_msgSend_animationRef(self->_animation, v7, v8, v9);

  sub_1AF11B0FC(playerRef, v10);
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_msgSend_begin(VFXTransaction, a2, zone, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1, v6);
  v7 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_animation(self, v8, v9, v10);
  v14 = objc_msgSend_initWithVFXAnimation_(v7, v12, v11, v13);
  objc_msgSend_weight(self, v15, v16, v17);
  objc_msgSend_setWeight_(v14, v18, v19, v20);
  objc_msgSend_speed(self, v21, v22, v23);
  objc_msgSend_setSpeed_(v14, v24, v25, v26);
  v30 = objc_msgSend_paused(self, v27, v28, v29);
  objc_msgSend_setPaused_(v14, v31, v30, v32);
  v36 = objc_msgSend_usesAbsoluteTime(self, v33, v34, v35);
  objc_msgSend_setUsesAbsoluteTime_(v14, v37, v36, v38);
  objc_msgSend_commit(VFXTransaction, v39, v40, v41);
  return v14;
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
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
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

    if ((*(self + 20) & 1) == 0)
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
    v18[2] = sub_1AF296FFC;
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
      sub_1AFDF45D0();
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
      sub_1AFDF4640();
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF297380, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF297370, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF297470;
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
        sub_1AFDF46B0(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = sub_1AF16D614(v11);
    if (v20)
    {
      v21 = v20;
      os_unfair_lock_lock(&self->_animationsLock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1AF29760C;
      v24[3] = &unk_1E7A7E338;
      v24[4] = self;
      sub_1AF375240(v21, v24, v22, v23);
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
    v25[2] = sub_1AF297A2C;
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
  v10[2] = sub_1AF297B70;
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
  v4[2] = sub_1AF297C3C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF297CE8;
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
    v10[2] = sub_1AF297E20;
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
  v5[2] = sub_1AF297F5C;
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

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v5 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v5;
      if (!v5)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4764();
      }
    }
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
      v9[2] = sub_1AF2982D8;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF298338;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 20) & 1) == 0)
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

- (void)setBlendFactor:(float)factor
{
  if (self->_weight != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_weight = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2984AC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    factorCopy = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"blendFactor", v5);
  }
}

- (void)setSpeed:(float)speed
{
  if (self->_speed != speed)
  {
    v7 = v3;
    v8 = v4;
    self->_speed = speed;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298560;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    speedCopy = speed;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"speed", v5);
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    v7 = v3;
    v8 = v4;
    self->_paused = paused;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298610;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    pausedCopy = paused;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)play
{
  self->_paused = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2986A0;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)stop
{
  self->_paused = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF29872C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)stopWithBlendOutDuration:(double)duration
{
  self->_paused = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2987BC;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = duration;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setTimeSource:(unint64_t)source
{
  if (self->_timeSource != source)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_timeSource = source;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF29886C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = source;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setTimeOrigin:(unint64_t)origin
{
  if (self->_timeOrigin != origin)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_timeOrigin = origin;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298918;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = origin;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"weight", v3, self->_weight);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"speed", v7, self->_speed);
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_paused, @"paused");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_timeSource, @"timeSource");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_timeOrigin, @"timeOrigin");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_animation, @"animation");

  sub_1AF3728B4(coder, self, v12, v13);
}

- (VFXAnimationPlayer)initWithCoder:(id)coder
{
  v57.receiver = self;
  v57.super_class = VFXAnimationPlayer;
  v4 = [(VFXAnimationPlayer *)&v57 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6, v7);
    v12 = objc_msgSend_immediateMode(VFXTransaction, v9, v10, v11);
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, 1, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"animation");
    v8->_animation = v17;
    if (v17)
    {
      v8->_animationsLock._os_unfair_lock_opaque = 0;
      v21 = objc_msgSend_animationRef(v17, v18, v19, v20);
      v8->_playerRef = sub_1AF11B050(v21);
      objc_msgSend_decodeDoubleForKey_(coder, v22, @"weight", v23);
      *&v24 = v24;
      objc_msgSend_setWeight_(v8, v25, v26, v27, v24);
      objc_msgSend_decodeDoubleForKey_(coder, v28, @"speed", v29);
      *&v30 = v30;
      objc_msgSend_setSpeed_(v8, v31, v32, v33, v30);
      v36 = objc_msgSend_decodeBoolForKey_(coder, v34, @"paused", v35);
      objc_msgSend_setPaused_(v8, v37, v36, v38);
      if (objc_msgSend_containsValueForKey_(coder, v39, @"usesAbsoluteTime", v40))
      {
        objc_msgSend_setTimeSource_(v8, v41, 0, v42);
        v46 = objc_msgSend_decodeBoolForKey_(coder, v43, @"usesAbsoluteTime", v44);
      }

      else
      {
        v49 = objc_msgSend_decodeIntegerForKey_(coder, v41, @"timeSource", v42);
        objc_msgSend_setTimeSource_(v8, v50, v49, v51);
        v46 = objc_msgSend_decodeIntegerForKey_(coder, v52, @"timeOrigin", v53);
      }

      objc_msgSend_setTimeOrigin_(v8, v45, v46, v47);
      sub_1AF372B94(coder, v8);
      objc_msgSend_setImmediateMode_(VFXTransaction, v54, v12, v55);
    }

    else
    {
      v48 = sub_1AF0D5194();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF47EC();
      }

      return 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_animation(self, a2, v2, v3);
  return objc_msgSend_stringWithFormat_(v5, v7, @"<VFXAnimationPlayer(%p) animation=%@>", v8, self, v6);
}

@end