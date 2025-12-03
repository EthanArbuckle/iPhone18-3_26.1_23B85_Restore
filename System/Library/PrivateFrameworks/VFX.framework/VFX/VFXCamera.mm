@interface VFXCamera
+ (id)camera;
+ (id)cameraWithCameraRef:(__CFXCamera *)ref;
+ (id)cameraWithMDLCamera:(id)camera;
+ (id)presentationCameraWithCameraRef:(__CFXCamera *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)automaticallyAdjustsZRange;
- (BOOL)rawFloat2ForKey:(id)key value:;
- (BOOL)usesOrthographicProjection;
- (BOOL)wantsHDR;
- (CGAffineTransform)postProjectionTransform;
- (NSArray)animationKeys;
- (NSString)description;
- (NSString)name;
- (VFXCamera)init;
- (VFXCamera)initWithCameraRef:(__CFXCamera *)ref;
- (VFXCamera)initWithCoder:(id)coder;
- (VFXCameraEffectBloom)bloom;
- (VFXCameraEffectColorFringe)colorFringe;
- (VFXCameraEffectColorGrading)colorGrading;
- (VFXCameraEffectDepthOfField)depthOfField;
- (VFXCameraEffectExposure)exposure;
- (VFXCameraEffectGrain)grain;
- (VFXCameraEffectMotionBlur)motionBlur;
- (VFXCameraEffectToneMapping)toneMapping;
- (VFXCameraEffectVignetting)vignetting;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (__n128)projectionTransformWithViewportSize:(uint64_t)size;
- (double)filmOffset;
- (float)fieldOfView;
- (float)focalLength;
- (float)focusDistance;
- (float)orthographicScale;
- (float)sensorHeight;
- (float)zFar;
- (float)zNear;
- (id)_valueForSimdVectorKeyPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)chromaticTransform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)doughnutBokeh;
- (id)identifier;
- (id)initPresentationCameraWithCameraRef:(__CFXCamera *)ref;
- (id)lensBlur;
- (id)presentationCamera;
- (id)projectionTransformValue;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (int64_t)fillMode;
- (uint64_t)setProjectionTransform:(__n128)transform;
- (unint64_t)categoryBitMask;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customEncodingOfVFXCamera:(id)camera;
- (void)_didDecodeVFXCamera:(id)camera;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateFieldOfView;
- (void)_updateFocalLength;
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
- (void)removeWorldReference:(id)reference;
- (void)setAutomaticallyAdjustsZRange:(BOOL)range;
- (void)setBloom:(id)bloom;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setChromaticTransform:(id)transform;
- (void)setColorFringe:(id)fringe;
- (void)setColorGrading:(id)grading;
- (void)setDepthOfField:(id)field;
- (void)setDoughnutBokeh:(id)bokeh;
- (void)setExposure:(id)exposure;
- (void)setFieldOfView:(float)view;
- (void)setFillMode:(int64_t)mode;
- (void)setFilmOffset:(VFXCamera *)self;
- (void)setFocalLength:(float)length;
- (void)setFocusDistance:(float)distance;
- (void)setGrain:(id)grain;
- (void)setIdentifier:(id)identifier;
- (void)setLensBlur:(id)blur;
- (void)setMotionBlur:(id)blur;
- (void)setName:(id)name;
- (void)setOrthographicScale:(float)scale;
- (void)setPostProjectionTransform:(CGAffineTransform *)transform;
- (void)setPostProjectionTransformScale:(VFXCamera *)self;
- (void)setPostProjectionTransformTranslation:(VFXCamera *)self;
- (void)setProjectionDirection:(int64_t)direction;
- (void)setProjectionTransformValue:(id)value;
- (void)setSensorHeight:(float)height;
- (void)setToneMapping:(id)mapping;
- (void)setUsesOrthographicProjection:(BOOL)projection;
- (void)setValue:(id)value forKey:(id)key;
- (void)setVignetting:(id)vignetting;
- (void)setWantsHDR:(BOOL)r;
- (void)setWorld:(id)world;
- (void)setZFar:(float)far;
- (void)setZNear:(float)near;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXCamera

- (VFXCamera)init
{
  v9.receiver = self;
  v9.super_class = VFXCamera;
  v2 = [(VFXCamera *)&v9 init];
  if (v2)
  {
    v7 = sub_1AF15C19C();
    v2->_camera = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6, v7);
  }

  return v2;
}

- (VFXCamera)initWithCameraRef:(__CFXCamera *)ref
{
  v13.receiver = self;
  v13.super_class = VFXCamera;
  v4 = [(VFXCamera *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_camera = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend__syncObjCAnimations(v4, v9, v10, v11);
  }

  return v4;
}

- (id)initPresentationCameraWithCameraRef:(__CFXCamera *)ref
{
  v7.receiver = self;
  v7.super_class = VFXCamera;
  v4 = [(VFXCamera *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_camera = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)cameraWithCameraRef:(__CFXCamera *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithCameraRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

+ (id)camera
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  camera = self->_camera;
  if (camera)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_camera, 0);
      camera = self->_camera;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, camera, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXCamera;
  [(VFXCamera *)&v5 dealloc];
}

- (NSString)description
{
  v5 = objc_msgSend_name(self, a2, v2, v3);
  v9 = objc_msgSend_length(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v16 = v12;
  if (!v9)
  {
    return objc_msgSend_stringWithFormat_(v10, v13, @"<%@: %p>", v15, v12, self);
  }

  v20 = objc_msgSend_name(self, v13, v14, v15);
  return objc_msgSend_stringWithFormat_(v10, v17, @"<%@: %p '%@'>", v18, v16, self, v20);
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
      v11[2] = sub_1AF2A16BC;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if ((*(self + 28) & 1) == 0)
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
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, a2, block, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v6, &v14, v18, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v13 = objc_msgSend_valueForKey_(self, v8, *(*(&v14 + 1) + 8 * v12), v9);
        if (v13)
        {
          (*(block + 2))(block, v13, 0, 0);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v8, &v14, v18, 16);
    }

    while (v10);
  }
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
  p_world = &self->_world;
  if (!reference || self->_world == reference)
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
      v9[2] = sub_1AF2A1B90;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2A1BF0;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
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

    if ((*(self + 28) & 1) == 0)
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
    v18[2] = sub_1AF2A1EF8;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2A227C, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2A226C, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF2A236C;
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
      v17[2] = sub_1AF2A2508;
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
    v25[2] = sub_1AF2A2928;
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
  v10[2] = sub_1AF2A2A6C;
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
  v4[2] = sub_1AF2A2B38;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v5 = objc_msgSend__vfxBindings(from, a2, from, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2A2BE4;
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
    v10[2] = sub_1AF2A2D1C;
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
  v5[2] = sub_1AF2A2E58;
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

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  self->_sensorSize = sub_1AF15DCD8(self->_camera);
  *&self->_filmOffset[4] = sub_1AF15DA84(self->_camera);
  *&self->_postProjectionTransformTranslation[4] = sub_1AF15DB20(self->_camera);
  *&self->_postProjectionTransformScale[4] = sub_1AF15DBBC(self->_camera);
  v7 = sub_1AF15E428(self->_camera);
  self->_orthographicScale = sub_1AF15E598(v7);
  v8 = sub_1AF15E428(self->_camera);
  self->_zFar = sub_1AF15E550(v8);
  v9 = sub_1AF15E428(self->_camera);
  self->_zNear = sub_1AF15E508(v9);
  self->_focalLength = sub_1AF15D76C(self->_camera);
  *&self->_categoryBitMask = sub_1AF15D9E8(self->_camera);
  LOBYTE(self[1].super.isa) = sub_1AF15D690(self->_camera);
  *(self + 28) = (16 * (sub_1AF15D938(self->_camera) & 7)) | *(self + 28) & 0x8F;
  self->_fieldOfView = sub_1AF15D850(self->_camera);
  v10 = sub_1AF15E428(self->_camera);
  if (sub_1AF15E5E0(v10))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  *(self + 28) = *(self + 28) & 0xFB | v14;
  objc_msgSend__updateFocalLength(self, v11, v12, v13);
  objc_msgSend__updateEntityModelFromPresentation(self, v15, v16, v17);
  if (v6)
  {

    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2A319C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)presentationCamera
{
  if ((*(self + 28) & 1) == 0)
  {
    return (MEMORY[0x1EEE66B58])(VFXCamera, sel_presentationCameraWithCameraRef_, *(self + 1));
  }

  return self;
}

+ (id)presentationCameraWithCameraRef:(__CFXCamera *)ref
{
  v4 = [VFXCamera alloc];
  inited = objc_msgSend_initPresentationCameraWithCameraRef_(v4, v5, ref, v6);

  return inited;
}

- (BOOL)automaticallyAdjustsZRange
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF15D454(self->_camera);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v5) = sub_1AF15D454(camera);
    }
  }

  else
  {
    return (v4 >> 3) & 1;
  }

  return v5;
}

- (void)setAutomaticallyAdjustsZRange:(BOOL)range
{
  v3 = *(self + 28);
  if ((v3 & 1) != 0 || ((((v3 & 8) == 0) ^ range) & 1) == 0)
  {
    if (range)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xF7 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A347C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    rangeCopy = range;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return *self->_anon_90;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D50C(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D50C(camera);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if ((*(self + 28) & 1) != 0 || *self->_anon_90 != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    *self->_anon_90 = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A35A4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)orthographicScale
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_orthographicScale;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D5A8(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D5A8(camera);
  }
}

- (void)setOrthographicScale:(float)scale
{
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  if ((v5 & 1) != 0 || self->_orthographicScale != scale)
  {
    v8 = v3;
    v9 = v4;
    self->_orthographicScale = scale;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A36E0;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    scaleCopy = scale;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"orthographicScale", v6);
  }
}

- (BOOL)usesOrthographicProjection
{
  v4 = *(self + 28);
  if (v4)
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    if (v7)
    {
      v8 = v7;
      sub_1AF1CEA20(v7);
      v9 = sub_1AF15D5F0(self->_camera);
      sub_1AF1CEA9C(v8);
      LOBYTE(v5) = v9;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v5) = sub_1AF15D5F0(camera);
    }
  }

  else
  {
    return (v4 >> 2) & 1;
  }

  return v5;
}

- (void)setUsesOrthographicProjection:(BOOL)projection
{
  v3 = *(self + 28);
  *(self + 28) = v3 & 0xFD;
  if ((v3 & 1) != 0 || ((((v3 & 4) == 0) ^ projection) & 1) == 0)
  {
    if (projection)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xF9 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A3828;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    projectionCopy = projection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)wantsHDR
{
  if ((*(self + 28) & 1) == 0)
  {
    return self[1].super.isa;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D690(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D690(camera);
  }
}

- (void)setWantsHDR:(BOOL)r
{
  if ((*(self + 28) & 1) != 0 || LOBYTE(self[1].super.isa) != r)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self[1].super.isa) = r;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A3954;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    rCopy = r;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)zFar
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zFar;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D6DC(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D6DC(camera);
  }
}

- (void)setZFar:(float)far
{
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  farCopy = far;
  if ((v5 & 1) != 0 || self->_zFar != farCopy)
  {
    v9 = v3;
    v10 = v4;
    self->_zFar = farCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2A3AA0;
    v7[3] = &unk_1E7A7E270;
    v7[4] = self;
    farCopy2 = far;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zFar", v7);
  }
}

- (float)zNear
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zNear;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D724(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D724(camera);
  }
}

- (void)setZNear:(float)near
{
  nearCopy = near;
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  v6 = v5 & 4;
  if (near == 0.0 && v6 == 0)
  {
    v8 = sub_1AF0D5194();
    nearCopy = 0.0001;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %@: zNear of 0 is not allowed", buf, 0xCu);
    }
  }

  v9 = nearCopy;
  if ((*(self + 28) & 1) != 0 || self->_zNear != v9)
  {
    self->_zNear = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2A3C90;
    v10[3] = &unk_1E7A7E270;
    v10[4] = self;
    v11 = nearCopy;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zNear", v10);
  }
}

- (double)filmOffset
{
  if ((*(self + 28) & 1) == 0)
  {
    return *(self + 104);
  }

  v6 = objc_msgSend_worldRef(self, a2, a3, a4);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15DA84(*(self + 8));
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    v9 = *(self + 8);

    return sub_1AF15DA84(v9);
  }
}

- (void)setFilmOffset:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_filmOffset[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_filmOffset[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A3DDC;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"filmOffset", v6);
  }
}

- (CGAffineTransform)postProjectionTransform
{
  selfCopy = self;
  v7 = MEMORY[0x1E695EFD0];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  if (BYTE4(self->d))
  {
    v11 = objc_msgSend_worldRef(self, a3, v3, v4);
    v12 = v11;
    if (v11)
    {
      sub_1AF1CEA20(v11);
    }

    v14 = sub_1AF15DB20(*&selfCopy->b);
    v13 = sub_1AF15DBBC(*&selfCopy->b);
    retstr->ty = *(&v14 + 1);
    retstr->a = *&v13;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&v13, *&v14, 4uLL));
    if (v12)
    {

      return sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    c = self[2].c;
    d = self[2].d;
    retstr->ty = *(&c + 1);
    retstr->a = *&d;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&d, *&c, 4uLL));
  }

  return self;
}

- (void)setPostProjectionTransform:(CGAffineTransform *)transform
{
  v4.f64[0] = transform->a;
  v4.f64[1] = transform->d;
  v5 = vcvt_f32_f64(*&transform->tx);
  v6 = *(self + 28);
  if ((v6 & 1) != 0 || (v7 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v5)), (vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0))
  {
    *&self->_postProjectionTransformTranslation[4] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2A4040;
    v12[3] = &unk_1E7A7E248;
    v12[4] = self;
    v12[5] = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformTranslation", v12, *&v4);
    v4 = v10;
    v6 = *(self + 28);
  }

  v8 = vcvt_f32_f64(v4);
  if ((v6 & 1) != 0 || (v9 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v8)), (vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0))
  {
    *&self->_postProjectionTransformScale[4] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2A4054;
    v11[3] = &unk_1E7A7E248;
    v11[4] = self;
    v11[5] = v8;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformScale", v11);
  }
}

- (void)setPostProjectionTransformTranslation:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_postProjectionTransformTranslation[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A4118;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformTranslation", v6);
  }
}

- (void)setPostProjectionTransformScale:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_postProjectionTransformScale[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A41DC;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformScale", v6);
  }
}

- (void)_updateFieldOfView
{
  focalLength = self->_focalLength;
  if (focalLength <= 0.0)
  {
    v5 = 3.14159274;
  }

  else
  {
    v4 = atan(self->_sensorSize * 0.5 / focalLength);
    *&v4 = v4 + v4;
    v5 = *&v4;
  }

  v6 = v5 / 3.14159265 * 180.0;
  self->_fieldOfView = v6;
}

- (void)_updateFocalLength
{
  v3 = self->_fieldOfView / 180.0 * 3.14159265;
  v4 = self->_sensorSize * 0.5;
  v5 = v4 / tanf(v3 * 0.5);
  self->_focalLength = v5;
}

- (float)fieldOfView
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_fieldOfView;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D850(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D850(camera);
  }
}

- (void)setFieldOfView:(float)view
{
  v7 = *(self + 28);
  *(self + 28) = v7 & 0xFD;
  if ((v7 & 1) != 0 || self->_fieldOfView != view)
  {
    self->_fieldOfView = view;
    objc_msgSend__updateFocalLength(self, a2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2A44A8;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    viewCopy = view;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"fieldOfView", v9);
  }
}

- (float)sensorHeight
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_sensorSize;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15DCD8(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15DCD8(camera);
  }
}

- (void)setSensorHeight:(float)height
{
  v7 = *(self + 28);
  *(self + 28) = v7 & 0xFD;
  if ((v7 & 1) != 0 || self->_sensorSize != height)
  {
    self->_sensorSize = height;
    objc_msgSend__updateFocalLength(self, a2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2A4608;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    heightCopy = height;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"sensorHeight", v9);
  }
}

- (float)focalLength
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_focalLength;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D76C(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D76C(camera);
  }
}

- (void)setFocalLength:(float)length
{
  v7 = *(self + 28);
  *(self + 28) = v7 & 0xFD;
  if ((v7 & 1) != 0 || self->_focalLength != length)
  {
    self->_focalLength = length;
    objc_msgSend__updateFieldOfView(self, a2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2A4768;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    lengthCopy = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"focalLength", v9);
  }
}

- (float)focusDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_categoryBitMask;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v7 = v6;
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15D9E8(self->_camera);
    sub_1AF1CEA9C(v7);
    return v8;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D9E8(camera);
  }
}

- (void)setFocusDistance:(float)distance
{
  if ((*(self + 28) & 1) != 0 || *&self->_categoryBitMask != distance)
  {
    v7 = v3;
    v8 = v4;
    *&self->_categoryBitMask = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A48A4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    distanceCopy = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"focusDistance", v5);
  }
}

- (int64_t)fillMode
{
  v4 = *(self + 28);
  if ((v4 & 1) == 0)
  {
    return (v4 >> 4) & 7;
  }

  v7 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v7)
  {
    return sub_1AF15D938(self->_camera);
  }

  v8 = v7;
  sub_1AF1CEA20(v7);
  v5 = sub_1AF15D938(self->_camera);
  sub_1AF1CEA9C(v8);
  return v5;
}

- (void)setFillMode:(int64_t)mode
{
  v5 = *(self + 28);
  if ((v5 & 1) != 0 || ((v5 >> 4) & 7) != mode)
  {
    v6[6] = v3;
    v6[7] = v4;
    *(self + 28) = v5 & 0x8F | (16 * (mode & 7));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A49C4;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setProjectionDirection:(int64_t)direction
{
  if (direction == 1)
  {
    objc_msgSend_setFillMode_(self, a2, 3, v3);
  }

  else
  {
    objc_msgSend_setFillMode_(self, a2, 2, v3);
  }
}

- (uint64_t)setProjectionTransform:(__n128)transform
{
  v7 = self[1].n128_u8[12];
  self[1].n128_u8[12] = v7 | 2;
  if ((v7 & 2) == 0 || (v10 = a4, v11 = a5, v12 = a6, v9 = transform, result = VFXMatrix4EqualToMatrix4(transform, a4, a5, a6, self[9], self[10], self[11], self[12]), transform = v9, a4 = v10, a5 = v11, a6 = v12, (result & 1) == 0))
  {
    self[9] = transform;
    self[10] = a4;
    self[11] = a5;
    self[12] = a6;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2A4AE8;
    v13[3] = &unk_1E7A7E578;
    selfCopy = self;
    transformCopy = transform;
    v15 = a4;
    v16 = a5;
    v17 = a6;
    return objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"projectionTransform", v13, *&v9, *&v10, *&v11, *&v12);
  }

  return result;
}

- (__n128)projectionTransformWithViewportSize:(uint64_t)size
{
  v7 = *(self + 28);
  if (v7)
  {
    v19 = *&a5.f64[0];
    v11 = objc_msgSend_worldRef(self, a2, size, a4);
    v12 = v11;
    if (v11)
    {
      sub_1AF1CEA20(v11);
    }

    *&v13.f64[0] = v19;
    v13.f64[1] = a6;
    v21 = vcvt_hight_f32_f64(0, v13);
    v14 = sub_1AF15E428(*(self + 8));
    v15 = sub_1AF15E62C(v14, &v21);
    v16 = &VFXMatrix4Identity;
    if (v15)
    {
      v16 = v15;
    }

    result = *v16;
    if (v12)
    {
      v18 = *v16;
      sub_1AF1CEA9C(v12);
      return v18;
    }
  }

  else if ((v7 & 2) != 0)
  {
    return *(self + 144);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v21.i8[0] = (v7 >> 1) & 0x38 | ((v7 & 4) != 0);
    *&v21.i32[1] = vcvt_f32_f64(*(self + 72));
    v8 = *(self + 88);
    DWORD2(v23) = *(self + 64);
    HIDWORD(v23) = v8;
    v9 = *(self + 112);
    *&v22 = *(self + 104);
    *(&v22 + 1) = v9;
    *&v23 = *(self + 120);
    a5.f64[1] = a6;
    v20 = vcvt_hight_f32_f64(0, a5);
    return *sub_1AF15E62C(&v21, &v20);
  }

  return result;
}

- (VFXCameraEffectMotionBlur)motionBlur
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_grain;
  }

  result = sub_1AF15C3C4(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectMotionBlur, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setMotionBlur:(id)blur
{
  if (self->_grain != blur)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, blur, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_grain, v8, v10, v9);
      }

      blurCopy = blur;
      self->_grain = blurCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(blurCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A4D74;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = blur;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectDepthOfField)depthOfField
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_motionBlur;
  }

  result = sub_1AF15C2CC(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectDepthOfField, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setDepthOfField:(id)field
{
  if (self->_motionBlur != field)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, field, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_motionBlur, v8, v10, v9);
      }

      fieldCopy = field;
      self->_motionBlur = fieldCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(fieldCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A4EE4;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = field;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectGrain)grain
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_exposure;
  }

  result = sub_1AF15C4BC(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectGrain, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setGrain:(id)grain
{
  if (self->_exposure != grain)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, grain, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_exposure, v8, v10, v9);
      }

      grainCopy = grain;
      self->_exposure = grainCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(grainCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5054;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = grain;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectExposure)exposure
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_toneMapping;
  }

  result = sub_1AF15C5B4(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectExposure, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setExposure:(id)exposure
{
  if (self->_toneMapping != exposure)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, exposure, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_toneMapping, v8, v10, v9);
      }

      exposureCopy = exposure;
      self->_toneMapping = exposureCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(exposureCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A51C4;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = exposure;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectToneMapping)toneMapping
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_bloom;
  }

  result = sub_1AF15C6AC(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectToneMapping, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setToneMapping:(id)mapping
{
  if (self->_bloom != mapping)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, mapping, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_bloom, v8, v10, v9);
      }

      mappingCopy = mapping;
      self->_bloom = mappingCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(mappingCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5334;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = mapping;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectBloom)bloom
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_colorGrading;
  }

  result = sub_1AF15C7A4(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectBloom, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setBloom:(id)bloom
{
  if (self->_colorGrading != bloom)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, bloom, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_colorGrading, v8, v10, v9);
      }

      bloomCopy = bloom;
      self->_colorGrading = bloomCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(bloomCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A54A4;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = bloom;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectVignetting)vignetting
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_lensBlur;
  }

  result = sub_1AF15C89C(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectVignetting, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setVignetting:(id)vignetting
{
  if (self->_lensBlur != vignetting)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, vignetting, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_lensBlur, v8, v10, v9);
      }

      vignettingCopy = vignetting;
      self->_lensBlur = vignettingCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(vignettingCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5614;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = vignetting;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (id)lensBlur
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_chromaticTransform;
  }

  result = sub_1AF15C994(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectLensBlur, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setLensBlur:(id)blur
{
  if (self->_chromaticTransform != blur)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, blur, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_chromaticTransform, v8, v10, v9);
      }

      blurCopy = blur;
      self->_chromaticTransform = blurCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(blurCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5784;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = blur;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectColorFringe)colorFringe
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_vignetting;
  }

  result = sub_1AF15CB84(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectColorFringe, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setColorFringe:(id)fringe
{
  if (self->_vignetting != fringe)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, fringe, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_vignetting, v8, v10, v9);
      }

      fringeCopy = fringe;
      self->_vignetting = fringeCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(fringeCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A58F4;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = fringe;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (VFXCameraEffectColorGrading)colorGrading
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_colorFringe;
  }

  result = sub_1AF15CA8C(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectColorGrading, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setColorGrading:(id)grading
{
  if (self->_colorFringe != grading)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, grading, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_colorFringe, v8, v10, v9);
      }

      gradingCopy = grading;
      self->_colorFringe = gradingCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(gradingCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5A64;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = grading;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (id)chromaticTransform
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_doughnutBokeh;
  }

  result = sub_1AF15CC7C(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectChromaticTransform, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setChromaticTransform:(id)transform
{
  if (self->_doughnutBokeh != transform)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, transform, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(self->_doughnutBokeh, v8, v10, v9);
      }

      transformCopy = transform;
      self->_doughnutBokeh = transformCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(transformCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5BD4;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = transform;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (id)doughnutBokeh
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_wantsHDR;
  }

  result = sub_1AF15CD74(self->_camera);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectDoughnutBokeh, sel_presentationCameraEffectWithCameraEffectRef_, result, v4);
  }

  return result;
}

- (void)setDoughnutBokeh:(id)bokeh
{
  if (*&self->_wantsHDR != bokeh)
  {
    v14[10] = v4;
    v14[11] = v5;
    if ((*(self + 28) & 1) == 0)
    {
      v10 = objc_msgSend_world(self, a2, bokeh, v3);
      if (v10)
      {
        objc_msgSend_removeWorldReference_(*&self->_wantsHDR, v8, v10, v9);
      }

      bokehCopy = bokeh;
      *&self->_wantsHDR = bokehCopy;
      if (v10)
      {
        objc_msgSend_addWorldReference_(bokehCopy, v12, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AF2A5D44;
      v14[3] = &unk_1E7A7E220;
      v14[4] = self;
      v14[5] = bokeh;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v14);
    }
  }
}

- (BOOL)rawFloat2ForKey:(id)key value:
{
  v4 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(key, a2, @"filmOffset", v3);
  if (isEqualToString)
  {
    objc_msgSend_filmOffset(self, v6, v7, v8);
    *v4 = v10;
  }

  return isEqualToString;
}

- (id)_valueForSimdVectorKeyPath:(id)path
{
  v19 = 0;
  v20 = 0;
  sub_1AF3716AC(path, &v20, &v19, v3);
  if (qword_1ED73B300 != -1)
  {
    sub_1AFDF4DA0();
  }

  if (!v19)
  {
    return 0;
  }

  if (!objc_msgSend_containsObject_(qword_1ED73B2F8, v5, v19, v6))
  {
    return 0;
  }

  v18 = 0.0;
  if (!objc_msgSend_rawFloat2ForKey_value_(self, v7, v20, &v18))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v19, v8, @"x", v9))
  {
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v12, v18);
  }

  if (!objc_msgSend_isEqualToString_(v19, v10, @"y", v12))
  {
    return 0;
  }

  LODWORD(v17) = HIDWORD(v18);
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16, v17);
}

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  result = objc_msgSend__valueForSimdVectorKeyPath_(self, a2, path, v3);
  if (!result)
  {
    v7.receiver = self;
    v7.super_class = VFXCamera;
    return [(VFXCamera *)&v7 valueForKeyPath:path];
  }

  return result;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"filmOffset", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_filmOffset(self, v6, v7, v8);

    return MEMORY[0x1EEE66B58](v9, sel_valueWithVFXFloat2_, v10, v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXCamera;
    return [(VFXCamera *)&v13 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"filmOffset", key))
  {
    objc_msgSend_VFXFloat2Value(value, v7, v8, v9);

    objc_msgSend_setFilmOffset_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXCamera;
    [(VFXCamera *)&v13 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)copyTo:(id)to withContext:(id)context
{
  v121 = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, to, context);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1, v8);
  v12 = objc_msgSend_name(self, v9, v10, v11);
  objc_msgSend_setName_(to, v13, v12, v14);
  v18 = objc_msgSend_name(self, v15, v16, v17);
  objc_msgSend_setName_(to, v19, v18, v20);
  objc_msgSend_focusDistance(self, v21, v22, v23);
  objc_msgSend_setFocusDistance_(to, v24, v25, v26);
  objc_msgSend_sensorHeight(self, v27, v28, v29);
  objc_msgSend_setSensorHeight_(to, v30, v31, v32);
  objc_msgSend_fieldOfView(self, v33, v34, v35);
  objc_msgSend_setFieldOfView_(to, v36, v37, v38);
  objc_msgSend_filmOffset(self, v39, v40, v41);
  objc_msgSend_setFilmOffset_(to, v42, v43, v44);
  if (self)
  {
    objc_msgSend_postProjectionTransform(self, v45, v46, v47);
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
  }

  v116[0] = v117;
  v116[1] = v118;
  v116[2] = v119;
  objc_msgSend_setPostProjectionTransform_(to, v45, v116, v47);
  v51 = objc_msgSend_fillMode(self, v48, v49, v50);
  objc_msgSend_setFillMode_(to, v52, v51, v53);
  objc_msgSend_zNear(self, v54, v55, v56);
  objc_msgSend_setZNear_(to, v57, v58, v59);
  objc_msgSend_zFar(self, v60, v61, v62);
  objc_msgSend_setZFar_(to, v63, v64, v65);
  objc_msgSend_orthographicScale(self, v66, v67, v68);
  objc_msgSend_setOrthographicScale_(to, v69, v70, v71);
  v75 = objc_msgSend_automaticallyAdjustsZRange(self, v72, v73, v74);
  objc_msgSend_setAutomaticallyAdjustsZRange_(to, v76, v75, v77);
  v81 = objc_msgSend_usesOrthographicProjection(self, v78, v79, v80);
  objc_msgSend_setUsesOrthographicProjection_(to, v82, v81, v83);
  v87 = objc_msgSend_wantsHDR(self, v84, v85, v86);
  objc_msgSend_setWantsHDR_(to, v88, v87, v89);
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v90, &v112, v120, 16);
  if (v91)
  {
    v95 = v91;
    v96 = *v113;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v113 != v96)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v98 = *(*(&v112 + 1) + 8 * i);
        v99 = objc_msgSend_valueForKey_(self, v92, v98, v94);
        if (v99)
        {
          v100 = sub_1AF2BED30(v99, context);
          objc_msgSend_setValue_forKey_(to, v101, v100, v98);
        }
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v92, &v112, v120, 16);
    }

    while (v95);
  }

  v102 = objc_msgSend_categoryBitMask(self, v92, v93, v94);
  objc_msgSend_setCategoryBitMask_(to, v103, v102, v104);
  objc_msgSend__copyAnimationsFrom_(to, v105, self, v106);
  objc_msgSend__copyBindingsFrom_(to, v107, self, v108);
  objc_msgSend_commitImmediate(VFXTransaction, v109, v110, v111);
}

- (void)_customEncodingOfVFXCamera:(id)camera
{
  if ((*(self + 28) & 2) != 0)
  {
    sub_1AF371B50(camera, @"projectionTransform", *&self->_anon_90[8], *&self->_anon_90[24], *&self->_anon_90[40], *&self->_anon_90[56]);
  }
}

- (void)_didDecodeVFXCamera:(id)camera
{
  if (objc_msgSend_containsValueForKey_(camera, a2, @"projectionTransform", v3))
  {
    sub_1AF371C4C(camera, @"projectionTransform");

    MEMORY[0x1EEE66B58](self, sel_setProjectionTransform_, v6, v7);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v64 = *MEMORY[0x1E69E9840];
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder, v3);
  }

  objc_msgSend__customEncodingOfVFXCamera_(self, a2, coder, v3);
  objc_msgSend_encodeInt_forKey_(coder, v6, (*(self + 28) >> 2) & 1, @"usesOrthographicProjection");
  objc_msgSend_encodeInt_forKey_(coder, v7, (*(self + 28) >> 3) & 1, @"automaticallyAdjustsZRange");
  objc_msgSend_encodeInt_forKey_(coder, v8, (*(self + 28) >> 4) & 7, @"fill");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, name, @"name");
  }

  *&v11 = self->_fieldOfView;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"fov", v10, v11);
  *&v13 = self->_sensorSize;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"sensorSize", v15, v13);
  v18 = vmvn_s8(vceqz_f32(*&self->_filmOffset[4]));
  if ((vpmax_u32(v18, v18).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"filmOffsetX", v17);
    LODWORD(v19) = *self->_postProjectionTransformTranslation;
    objc_msgSend_encodeFloat_forKey_(coder, v20, @"filmOffsetY", v21, v19);
  }

  v22 = vmvn_s8(vceqz_f32(*&self->_postProjectionTransformTranslation[4]));
  if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"postProjectionTransformTranslationX", v17);
    LODWORD(v23) = *self->_postProjectionTransformScale;
    objc_msgSend_encodeFloat_forKey_(coder, v24, @"postProjectionTransformTranslationY", v25, v23);
  }

  v26 = *&self->_postProjectionTransformScale[4];
  __asm { FMOV            V1.2S, #1.0 }

  v32 = vmvn_s8(vceq_f32(*&v26, _D1));
  if ((vpmax_u32(v32, v32).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"postProjectionTransformScaleX", v17);
    *&v33 = self->_focusDistance;
    objc_msgSend_encodeFloat_forKey_(coder, v34, @"postProjectionTransformScaleY", v35, v33);
  }

  *&v26 = self->_orthographicScale;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"orthographicScale", v17, v26);
  zNear = self->_zNear;
  *&zNear = zNear;
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"zNear", v38, zNear);
  zFar = self->_zFar;
  *&zFar = zFar;
  objc_msgSend_encodeFloat_forKey_(coder, v40, @"zFar", v41, zFar);
  LODWORD(v42) = self->_categoryBitMask;
  objc_msgSend_encodeFloat_forKey_(coder, v43, @"focusDistance", v44, v42);
  objc_msgSend_encodeBool_forKey_(coder, v45, LOBYTE(self[1].super.isa), @"HDR");
  objc_msgSend_encodeInteger_forKey_(coder, v46, *self->_anon_90, @"categoryBitMask");
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v47, &v59, v63, 16);
  if (v48)
  {
    v52 = v48;
    v53 = *v60;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v55 = *(*(&v59 + 1) + 8 * i);
        v56 = objc_msgSend_valueForKey_(self, v49, v55, v51);
        if (v56)
        {
          objc_msgSend_encodeObject_forKey_(coder, v49, v56, v55);
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v49, &v59, v63, 16);
    }

    while (v52);
  }

  sub_1AF372440(coder, self, v50, v51);
  sub_1AF3728B4(coder, self, v57, v58);
}

- (VFXCamera)initWithCoder:(id)coder
{
  v435 = *MEMORY[0x1E69E9840];
  v433.receiver = self;
  v433.super_class = VFXCamera;
  v7 = [(VFXCamera *)&v433 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v15 = sub_1AF15C19C();
    v7->_camera = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14, v15);
    v18 = objc_msgSend_decodeIntForKey_(coder, v16, @"usesOrthographicProjection", v17) != 0;
    objc_msgSend_setUsesOrthographicProjection_(v7, v19, v18, v20);
    v23 = objc_msgSend_decodeIntForKey_(coder, v21, @"automaticallyAdjustsZRange", v22) != 0;
    objc_msgSend_setAutomaticallyAdjustsZRange_(v7, v24, v23, v25);
    if (objc_msgSend_containsValueForKey_(coder, v26, @"projectionDirection", v27))
    {
      v30 = objc_msgSend_decodeIntForKey_(coder, v28, @"projectionDirection", v29);
      objc_msgSend_setProjectionDirection_(v7, v31, v30, v32);
    }

    else
    {
      v33 = objc_msgSend_decodeIntForKey_(coder, v28, @"fill", v29);
      objc_msgSend_setFillMode_(v7, v34, v33, v35);
    }

    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"name");
    objc_msgSend_setName_(v7, v39, v38, v40);
    objc_msgSend_decodeFloatForKey_(coder, v41, @"sensorSize", v42);
    objc_msgSend_setSensorHeight_(v7, v43, v44, v45);
    objc_msgSend_decodeFloatForKey_(coder, v46, @"fov", v47);
    objc_msgSend_setFieldOfView_(v7, v48, v49, v50);
    if (objc_msgSend_containsValueForKey_(coder, v51, @"filmOffsetX", v52))
    {
      objc_msgSend_decodeFloatForKey_(coder, v53, @"filmOffsetX", v54);
      v425 = v55;
      objc_msgSend_decodeFloatForKey_(coder, v56, @"filmOffsetY", v57);
      objc_msgSend_setFilmOffset_(v7, v58, v59, v60, COERCE_DOUBLE(__PAIR64__(v61, v425)));
    }

    else
    {
      *&v7->_filmOffset[4] = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v53, @"postProjectionTransformTranslationX", v54))
    {
      objc_msgSend_decodeFloatForKey_(coder, v62, @"postProjectionTransformTranslationX", v63);
      v426 = v64;
      objc_msgSend_decodeFloatForKey_(coder, v65, @"postProjectionTransformTranslationY", v66);
      objc_msgSend_setPostProjectionTransformTranslation_(v7, v67, v68, v69, COERCE_DOUBLE(__PAIR64__(v70, v426)));
    }

    else
    {
      *&v7->_postProjectionTransformTranslation[4] = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v62, @"postProjectionTransformScaleX", v63))
    {
      objc_msgSend_decodeFloatForKey_(coder, v71, @"postProjectionTransformScaleX", v72);
      v427 = v73;
      objc_msgSend_decodeFloatForKey_(coder, v74, @"postProjectionTransformScaleY", v75);
      objc_msgSend_setPostProjectionTransformScale_(v7, v76, v77, v78, COERCE_DOUBLE(__PAIR64__(v79, v427)));
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }

      *&v7->_postProjectionTransformScale[4] = _D0;
    }

    objc_msgSend_decodeFloatForKey_(coder, v71, @"orthographicScale", v72);
    objc_msgSend_setOrthographicScale_(v7, v85, v86, v87);
    objc_msgSend_decodeFloatForKey_(coder, v88, @"zNear", v89);
    objc_msgSend_setZNear_(v7, v90, v91, v92);
    objc_msgSend_decodeFloatForKey_(coder, v93, @"zFar", v94);
    objc_msgSend_setZFar_(v7, v95, v96, v97);
    objc_msgSend_decodeFloatForKey_(coder, v98, @"focusDistance", v99);
    objc_msgSend_setFocusDistance_(v7, v100, v101, v102);
    v105 = objc_msgSend_decodeIntegerForKey_(coder, v103, @"categoryBitMask", v104);
    objc_msgSend_setCategoryBitMask_(v7, v106, v105, v107);
    v110 = objc_msgSend_containsValueForKey_(coder, v108, @"HDR", v109);
    v113 = objc_msgSend_decodeBoolForKey_(coder, v111, @"HDR", v112);
    objc_msgSend_setWantsHDR_(v7, v114, v113, v115);
    if (v110)
    {
      v431 = 0u;
      v432 = 0u;
      v429 = 0u;
      v430 = 0u;
      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v116, &v429, v434, 16);
      if (v118)
      {
        v119 = v118;
        v120 = *v430;
        do
        {
          for (i = 0; i != v119; ++i)
          {
            if (*v430 != v120)
            {
              objc_enumerationMutation(&unk_1F25D46C0);
            }

            v122 = *(*(&v429 + 1) + 8 * i);
            if (objc_msgSend_containsValueForKey_(coder, v116, v122, v117))
            {
              v123 = objc_opt_class();
              v125 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v124, v123, v122);
              objc_msgSend_setValue_forKey_(v7, v126, v125, v122);
            }
          }

          v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v116, &v429, v434, 16);
        }

        while (v119);
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v116, @"wantsHDR", v117))
    {
      v129 = objc_msgSend_decodeBoolForKey_(coder, v127, @"wantsHDR", v128);
      objc_msgSend_setWantsHDR_(v7, v130, v129, v131);
      objc_msgSend_decodeFloatForKey_(coder, v132, @"dofIntensity", v133);
      if (v137 > 0.0)
      {
        v138 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v134, v135, v136);
        objc_msgSend_setDepthOfField_(v7, v139, v138, v140);
        objc_msgSend_decodeFloatForKey_(coder, v141, @"fStop", v142);
        v144 = v143;
        v148 = objc_msgSend_depthOfField(v7, v145, v146, v147);
        LODWORD(v149) = v144;
        objc_msgSend_setFStop_(v148, v150, v151, v152, v149);
      }

      objc_msgSend_decodeFloatForKey_(coder, v134, @"exposureOffset", v136);
      if (v156 != 0.0)
      {
        v157 = v156;
        v158 = objc_msgSend_exposure(VFXCameraEffectExposure, v153, v154, v155);
        objc_msgSend_setExposure_(v7, v159, v158, v160);
        v164 = objc_msgSend_exposure(v7, v161, v162, v163);
        *&v165 = v157;
        objc_msgSend_setOffset_(v164, v166, v167, v168, v165);
      }

      if (objc_msgSend_containsValueForKey_(coder, v153, @"toneMappingMode", v155))
      {
        v172 = objc_msgSend_decodeIntegerForKey_(coder, v169, @"toneMappingMode", v170);
        if (v172)
        {
          v173 = objc_msgSend_toneMapping(VFXCameraEffectToneMapping, v169, v171, v170);
          objc_msgSend_setToneMapping_(v7, v174, v173, v175);
          v179 = objc_msgSend_toneMapping(v7, v176, v177, v178);
          objc_msgSend_setMode_(v179, v180, v172 - 1, v181);
          objc_msgSend_decodeFloatForKey_(coder, v182, @"toneMappingToeStrength", v183);
          v185 = v184;
          v189 = objc_msgSend_toneMapping(v7, v186, v187, v188);
          LODWORD(v190) = v185;
          objc_msgSend_setToeStrength_(v189, v191, v192, v193, v190);
          objc_msgSend_decodeFloatForKey_(coder, v194, @"toneMappingToeLength", v195);
          v197 = v196;
          v201 = objc_msgSend_toneMapping(v7, v198, v199, v200);
          LODWORD(v202) = v197;
          objc_msgSend_setToeLength_(v201, v203, v204, v205, v202);
          objc_msgSend_decodeFloatForKey_(coder, v206, @"toneMappingShoulderStrength", v207);
          v209 = v208;
          v213 = objc_msgSend_toneMapping(v7, v210, v211, v212);
          LODWORD(v214) = v209;
          objc_msgSend_setShoulderStrength_(v213, v215, v216, v217, v214);
          objc_msgSend_decodeFloatForKey_(coder, v218, @"toneMappingShoulderLength", v219);
          v221 = v220;
          v225 = objc_msgSend_toneMapping(v7, v222, v223, v224);
          LODWORD(v226) = v221;
          objc_msgSend_setShoulderLength_(v225, v227, v228, v229, v226);
          objc_msgSend_decodeFloatForKey_(coder, v230, @"toneMappingShoulderAngle", v231);
          v233 = v232;
          v237 = objc_msgSend_toneMapping(v7, v234, v235, v236);
          LODWORD(v238) = v233;
          objc_msgSend_setShoulderAngle_(v237, v239, v240, v241, v238);
          objc_msgSend_decodeFloatForKey_(coder, v242, @"toneMappingGamma", v243);
          v245 = v244;
          v249 = objc_msgSend_toneMapping(v7, v246, v247, v248);
          LODWORD(v250) = v245;
          objc_msgSend_setGamma_(v249, v251, v252, v253, v250);
        }
      }

      objc_msgSend_decodeFloatForKey_(coder, v169, @"bloomIntensity", v170);
      if (v255 > 0.0)
      {
        v256 = v255;
        v257 = objc_msgSend_bloom(VFXCameraEffectBloom, v127, v254, v128);
        objc_msgSend_setBloom_(v7, v258, v257, v259);
        v263 = objc_msgSend_bloom(v7, v260, v261, v262);
        *&v264 = v256;
        objc_msgSend_setIntensity_(v263, v265, v266, v267, v264);
        objc_msgSend_decodeFloatForKey_(coder, v268, @"bloomThreshold", v269);
        v271 = v270;
        v275 = objc_msgSend_bloom(v7, v272, v273, v274);
        LODWORD(v276) = v271;
        objc_msgSend_setThreshold_(v275, v277, v278, v279, v276);
        if (objc_msgSend_containsValueForKey_(coder, v280, @"bloomThresholdSmoothness", v281))
        {
          objc_msgSend_decodeFloatForKey_(coder, v282, @"bloomThresholdSmoothness", v283);
          v285 = v284;
          v289 = objc_msgSend_bloom(v7, v286, v287, v288);
          LODWORD(v290) = v285;
          objc_msgSend_setThresholdSmoothness_(v289, v291, v292, v293, v290);
        }

        if (objc_msgSend_containsValueForKey_(coder, v282, @"bloomUseHighQuality", v283))
        {
          v296 = objc_msgSend_decodeBoolForKey_(coder, v294, @"bloomUseHighQuality", v295);
          v300 = objc_msgSend_bloom(v7, v297, v298, v299);
          objc_msgSend_setUseHighQuality_(v300, v301, v296, v302);
          v428 = sub_1AF371BC4(coder, @"bloomColorFilter");
          v306 = objc_msgSend_bloom(v7, v303, v304, v305);
          objc_msgSend_setColorFilter_(v306, v307, v308, v309, v428);
          objc_msgSend_decodeFloatForKey_(coder, v310, @"bloomContrast", v311);
          v313 = v312;
          v317 = objc_msgSend_bloom(v7, v314, v315, v316);
          LODWORD(v318) = v313;
          objc_msgSend_setContrast_(v317, v319, v320, v321, v318);
          objc_msgSend_decodeFloatForKey_(coder, v322, @"bloomSaturation", v323);
          v325 = v324;
          v329 = objc_msgSend_bloom(v7, v326, v327, v328);
          LODWORD(v330) = v325;
          objc_msgSend_setSaturation_(v329, v331, v332, v333, v330);
        }

        v334 = objc_msgSend_decodeIntegerForKey_(coder, v294, @"bloomIteration", v295);
        v338 = objc_msgSend_bloom(v7, v335, v336, v337);
        objc_msgSend_setIterationCount_(v338, v339, v334, v340);
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v127, @"vignettingIntensity", v128))
    {
      objc_msgSend_decodeFloatForKey_(coder, v341, @"vignettingIntensity", v342);
      if (v344 > 0.0)
      {
        v345 = v344;
        v346 = objc_msgSend_vignetting(VFXCameraEffectVignetting, v341, v343, v342);
        objc_msgSend_setVignetting_(v7, v347, v346, v348);
        v352 = objc_msgSend_vignetting(v7, v349, v350, v351);
        *&v353 = v345;
        objc_msgSend_setIntensity_(v352, v354, v355, v356, v353);
        if (objc_msgSend_containsValueForKey_(coder, v357, @"vignettingAnamorphic", v358))
        {
          objc_msgSend_decodeFloatForKey_(coder, v341, @"vignettingAnamorphic", v342);
          v360 = v359;
          v364 = objc_msgSend_vignetting(v7, v361, v362, v363);
          LODWORD(v365) = v360;
          objc_msgSend_setAnamorphic_(v364, v366, v367, v368, v365);
          objc_msgSend_decodeFloatForKey_(coder, v369, @"vignettingSoftness", v370);
          v372 = v371;
          v376 = objc_msgSend_vignetting(v7, v373, v374, v375);
          LODWORD(v377) = v372;
          objc_msgSend_setSoftness_(v376, v378, v379, v380, v377);
          objc_msgSend_decodeFloatForKey_(coder, v381, @"vignettingRadius", v382);
          v384 = v383;
          v388 = objc_msgSend_vignetting(v7, v385, v386, v387);
          LODWORD(v389) = v384;
          objc_msgSend_setRadius_(v388, v390, v391, v392, v389);
        }
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v341, @"lensBlurRadius", v342))
    {
      objc_msgSend_decodeFloatForKey_(coder, v393, @"lensBlurRadius", v394);
      if (v398 > 0.0)
      {
        v399 = v398;
        v400 = objc_msgSend_lensBlur(VFXCameraEffectLensBlur, v395, v396, v397);
        objc_msgSend_setLensBlur_(v7, v401, v400, v402);
        v406 = objc_msgSend_lensBlur(v7, v403, v404, v405);
        *&v407 = v399;
        objc_msgSend_setRadius_(v406, v408, v409, v410, v407);
        v413 = objc_msgSend_decodeIntegerForKey_(coder, v411, @"lensBlurFilterQuality", v412);
        v417 = objc_msgSend_lensBlur(v7, v414, v415, v416);
        objc_msgSend_setFilterQuality_(v417, v418, v413, v419);
      }
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v7);
    sub_1AF372B94(coder, v7);
    objc_msgSend__didDecodeVFXCamera_(v7, v420, coder, v421);
    objc_msgSend_setImmediateMode_(VFXTransaction, v422, v8, v423);
  }

  return v7;
}

- (id)projectionTransformValue
{
  v142[16] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, a2, v2, v3);
  v142[0] = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v9 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v10, v11, v12);
  LODWORD(v13) = HIDWORD(v13);
  v142[1] = objc_msgSend_numberWithFloat_(v9, v14, v15, v16, v13);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v18, v19, v20);
  LODWORD(v22) = v21;
  v142[2] = objc_msgSend_numberWithFloat_(v17, v23, v24, v25, v22);
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v27, v28, v29);
  LODWORD(v31) = v30;
  v142[3] = objc_msgSend_numberWithFloat_(v26, v32, v33, v34, v31);
  v35 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v36, v37, v38);
  v142[4] = objc_msgSend_numberWithFloat_(v35, v39, v40, v41, v42);
  v43 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v44, v45, v46);
  LODWORD(v48) = v47;
  v142[5] = objc_msgSend_numberWithFloat_(v43, v49, v50, v51, v48);
  v52 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v53, v54, v55);
  LODWORD(v57) = v56;
  v142[6] = objc_msgSend_numberWithFloat_(v52, v58, v59, v60, v57);
  v61 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v62, v63, v64);
  LODWORD(v66) = v65;
  v142[7] = objc_msgSend_numberWithFloat_(v61, v67, v68, v69, v66);
  v70 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v71, v72, v73);
  v142[8] = objc_msgSend_numberWithFloat_(v70, v74, v75, v76, v77);
  v78 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v79, v80, v81);
  LODWORD(v83) = v82;
  v142[9] = objc_msgSend_numberWithFloat_(v78, v84, v85, v86, v83);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v88, v89, v90);
  LODWORD(v92) = v91;
  v142[10] = objc_msgSend_numberWithFloat_(v87, v93, v94, v95, v92);
  v96 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v97, v98, v99);
  LODWORD(v101) = v100;
  v142[11] = objc_msgSend_numberWithFloat_(v96, v102, v103, v104, v101);
  v105 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v106, v107, v108);
  v142[12] = objc_msgSend_numberWithFloat_(v105, v109, v110, v111, v112);
  v113 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v114, v115, v116);
  LODWORD(v118) = v117;
  v142[13] = objc_msgSend_numberWithFloat_(v113, v119, v120, v121, v118);
  v122 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v123, v124, v125);
  LODWORD(v127) = v126;
  v142[14] = objc_msgSend_numberWithFloat_(v122, v128, v129, v130, v127);
  v131 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v132, v133, v134);
  LODWORD(v136) = v135;
  v142[15] = objc_msgSend_numberWithFloat_(v131, v137, v138, v139, v136);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v140, v142, 16);
}

- (void)setProjectionTransformValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v12 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1, v11);
  objc_msgSend_floatValue(v12, v13, v14, v15);
  v18 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2, v17);
  objc_msgSend_floatValue(v18, v19, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(value, v22, 3, v23);
  objc_msgSend_floatValue(v24, v25, v26, v27);
  v30 = objc_msgSend_objectAtIndexedSubscript_(value, v28, 4, v29);
  objc_msgSend_floatValue(v30, v31, v32, v33);
  v36 = objc_msgSend_objectAtIndexedSubscript_(value, v34, 5, v35);
  objc_msgSend_floatValue(v36, v37, v38, v39);
  v42 = objc_msgSend_objectAtIndexedSubscript_(value, v40, 6, v41);
  objc_msgSend_floatValue(v42, v43, v44, v45);
  v48 = objc_msgSend_objectAtIndexedSubscript_(value, v46, 7, v47);
  objc_msgSend_floatValue(v48, v49, v50, v51);
  v54 = objc_msgSend_objectAtIndexedSubscript_(value, v52, 8, v53);
  objc_msgSend_floatValue(v54, v55, v56, v57);
  v60 = objc_msgSend_objectAtIndexedSubscript_(value, v58, 9, v59);
  objc_msgSend_floatValue(v60, v61, v62, v63);
  v66 = objc_msgSend_objectAtIndexedSubscript_(value, v64, 10, v65);
  objc_msgSend_floatValue(v66, v67, v68, v69);
  v72 = objc_msgSend_objectAtIndexedSubscript_(value, v70, 11, v71);
  objc_msgSend_floatValue(v72, v73, v74, v75);
  v78 = objc_msgSend_objectAtIndexedSubscript_(value, v76, 12, v77);
  objc_msgSend_floatValue(v78, v79, v80, v81);
  v84 = objc_msgSend_objectAtIndexedSubscript_(value, v82, 13, v83);
  objc_msgSend_floatValue(v84, v85, v86, v87);
  v90 = objc_msgSend_objectAtIndexedSubscript_(value, v88, 14, v89);
  objc_msgSend_floatValue(v90, v91, v92, v93);
  v96 = objc_msgSend_objectAtIndexedSubscript_(value, v94, 15, v95);
  objc_msgSend_floatValue(v96, v97, v98, v99);

  MEMORY[0x1EEE66B58](self, sel_setProjectionTransform_, v100, v101);
}

+ (id)cameraWithMDLCamera:(id)camera
{
  v5 = objc_msgSend_camera(self, a2, camera, v3);
  objc_msgSend_focalLength(camera, v6, v7, v8);
  objc_msgSend_setFocalLength_(v5, v9, v10, v11);
  objc_msgSend_sensorVerticalAperture(camera, v12, v13, v14);
  objc_msgSend_setSensorHeight_(v5, v15, v16, v17);
  objc_msgSend_focusDistance(camera, v18, v19, v20);
  objc_msgSend_setFocusDistance_(v5, v21, v22, v23);
  v27 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v24, v25, v26);
  objc_msgSend_setDepthOfField_(v5, v28, v27, v29);
  v33 = objc_msgSend_depthOfField(v5, v30, v31, v32);
  objc_msgSend_setEnabled_(v33, v34, 0, v35);
  objc_msgSend_fStop(camera, v36, v37, v38);
  v40 = v39;
  v44 = objc_msgSend_depthOfField(v5, v41, v42, v43);
  LODWORD(v45) = v40;
  objc_msgSend_setFStop_(v44, v46, v47, v48, v45);
  objc_msgSend_nearVisibilityDistance(camera, v49, v50, v51);
  objc_msgSend_setZNear_(v5, v52, v53, v54);
  objc_msgSend_farVisibilityDistance(camera, v55, v56, v57);
  objc_msgSend_setZFar_(v5, v58, v59, v60);
  v64 = objc_msgSend_projection(camera, v61, v62, v63) == 1;
  objc_msgSend_setUsesOrthographicProjection_(v5, v65, v64, v66);
  if (objc_msgSend_focalLengthAnimation(camera, v67, v68, v69))
  {
    objc_msgSend_focalLengthAnimation(camera, v70, v71, v72);
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v73, v75, v74, v76))
    {
      v77 = objc_msgSend_focalLengthAnimation(camera, v70, v71, v72);
      v81 = objc_msgSend_values(v77, v78, v79, v80);
      v85 = objc_msgSend_count(v81, v82, v83, v84);
      v88 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v86, v85, v87);
      objc_msgSend_sensorVerticalAperture(camera, v89, v90, v91);
      if (v85)
      {
        v96 = v95;
        for (i = 0; i != v85; ++i)
        {
          v98 = objc_msgSend_objectAtIndex_(v81, v92, i, v94);
          objc_msgSend_floatValue(v98, v99, v100, v101);
          *&v103 = (atanf(v96 / (v102 + v102)) * 360.0) / 3.1416;
          v107 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v104, v105, v106, v103);
          objc_msgSend_addObject_(v88, v108, v107, v109);
        }
      }

      v110 = objc_msgSend_animation(MEMORY[0x1E6979390], v92, v93, v94);
      objc_msgSend_setKeyPath_(v110, v111, @"fieldOfView", v112);
      objc_msgSend_setValues_(v110, v113, v88, v114);
      v118 = objc_msgSend_keyTimes(v77, v115, v116, v117);
      objc_msgSend_setKeyTimes_(v110, v119, v118, v120);
      objc_msgSend_duration(v77, v121, v122, v123);
      objc_msgSend_setDuration_(v110, v124, v125, v126);
      objc_msgSend_setRemovedOnCompletion_(v110, v127, 0, v128);
      objc_msgSend_addAnimation_forKey_(v5, v129, v110, 0);
    }
  }

  if (objc_msgSend_focalDistanceAnimation(camera, v70, v71, v72))
  {
    v133 = objc_msgSend_focalDistanceAnimation(camera, v130, v131, v132);
    objc_msgSend_addAnimation_forKey_(v5, v134, v133, @"focalDistance");
  }

  if (objc_msgSend_fStopAnimation(camera, v130, v131, v132))
  {
    v138 = objc_msgSend_fStopAnimation(camera, v135, v136, v137);
    objc_msgSend_addAnimation_forKey_(v5, v139, v138, @"fstop");
  }

  return v5;
}

- (id)debugQuickLookObject
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v5)
  {
    return 0;
  }

  v8 = objc_msgSend_worldWithWorldRef_(VFXWorld, v6, v5, v7);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_1AF3B4C3C;
  v25 = sub_1AF3B4C4C;
  v26 = 0;
  v12 = objc_msgSend_rootNode(v8, v9, v10, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1AF3B4C58;
  v20[3] = &unk_1E7A7EDE8;
  v20[4] = self;
  v20[5] = &v21;
  objc_msgSend_enumerateChildNodesUsingBlock_(v12, v13, v20, v14);
  v17 = v22[5];
  if (!v17)
  {
    _Block_object_dispose(&v21, 8);
    return 0;
  }

  v18 = objc_msgSend_debugQuickLookObjectWithPointOfView_(v8, v15, v17, v16);
  _Block_object_dispose(&v21, 8);
  return v18;
}

- (id)debugQuickLookData
{
  v4 = objc_msgSend_debugQuickLookObject(self, a2, v2, v3);

  return UIImagePNGRepresentation(v4);
}

@end