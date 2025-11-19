@interface VFXMorpher
+ (Class)VFXUID_classForElementOfArray:(id)a3;
+ (id)morpher;
+ (id)morpherWithMorphRef:(__CFXMorph *)a3;
+ (id)presentationMorpherWithMorpherRef:(__CFXMorpher *)a3;
+ (id)weightIndexStringForIndex:(int64_t)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (NSArray)animationKeys;
- (NSArray)targets;
- (NSArray)weights;
- (VFXMorpher)init;
- (VFXMorpher)initWithCoder:(id)a3;
- (VFXMorpher)initWithMorphRef:(__CFXMorph *)a3;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (float)_presentationWeightForTargetAtIndex:(unint64_t)a3 token:(const void *)a4;
- (float)weightForTargetAtIndex:(unint64_t)a3;
- (float)weightForTargetNamed:(id)a3;
- (float)weightIncrementalThreshold;
- (id)_vfxAnimationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)a3;
- (id)correctives;
- (id)identifier;
- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)a3;
- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)a3;
- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)a3;
- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)a3;
- (id)initPresentationMorpherWithMorphRef:(__CFXMorph *)a3;
- (id)name;
- (id)presentationMorpher;
- (id)targetsAndInBetween;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)_weightIndexForTargetNamed:(id)a3;
- (int64_t)calculationMode;
- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)a3;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_copyBindingsFrom:(id)a3;
- (void)_customDecodingOfVFXMorpher:(id)a3;
- (void)_customEncodingOfVFXMorpher:(id)a3;
- (void)_didDecodeVFXMorpher:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setSourceObject:(id)a3 forBinding:(id)a4;
- (void)_syncObjCAnimations;
- (void)_updateCorrectivesAndInBetween:(id)a3;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateTargetsAndInBetween:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addWorldReference:(id)a3;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)clearCorrectives;
- (void)clearInBetweens;
- (void)convertToAdditiveWithBaseGeometry:(id)a3;
- (void)convertToSparseWithBaseGeometry:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnimationReferencesUsingBlock:(id)a3;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4;
- (void)removeWorldReference:(id)a3;
- (void)setCalculationMode:(int64_t)a3;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setTargets:(id)a3;
- (void)setTargetsAndInBetweens:(id)a3 inBetweenCounts:(id)a4 inBetweenWeights:(id)a5 correctives:(id)a6 driverCounts:(id)a7 driverIndices:(id)a8 inBetweenCounts:(id)a9 inBetweenWeights:(id)a10;
- (void)setUnifiesNormals:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setWeight:(float)a3 forTargetAtIndex:(unint64_t)a4;
- (void)setWeight:(float)a3 forTargetNamed:(id)a4;
- (void)setWeightIncrementalThreshold:(float)a3;
- (void)setWeights:(id)a3;
- (void)setWorld:(id)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation VFXMorpher

- (VFXMorpher)init
{
  v8.receiver = self;
  v8.super_class = VFXMorpher;
  v2 = [(VFXMorpher *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF1B43A4();
    v2->_morpher = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
  }

  return v2;
}

- (VFXMorpher)initWithMorphRef:(__CFXMorph *)a3
{
  v13.receiver = self;
  v13.super_class = VFXMorpher;
  v4 = [(VFXMorpher *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_morpher = v5;
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

- (id)initPresentationMorpherWithMorphRef:(__CFXMorph *)a3
{
  v7.receiver = self;
  v7.super_class = VFXMorpher;
  v4 = [(VFXMorpher *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_morpher = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)morpherWithMorphRef:(__CFXMorph *)a3
{
  result = sub_1AF16CDEC(a3);
  if (!result)
  {
    v6 = [a1 alloc];
    v9 = objc_msgSend_initWithMorphRef_(v6, v7, a3, v8);

    return v9;
  }

  return result;
}

+ (id)morpher
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)clearInBetweens
{
  self->_mainTargetsAndInBetweens = 0;
  self->_inBetweenCounts = 0;
  self->_inBetweenInfluenceWeights = 0;
}

- (void)clearCorrectives
{
  self->_correctiveInBetweenInfluenceWeights = 0;
  *&self->_correctivesAndInBetweens = 0u;
  *&self->_correctiveDriverIndices = 0u;
}

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_morpher, 0);
      morpher = self->_morpher;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, morpher, v2);
  }

  objc_msgSend_clearInBetweens(self, a2, morpher, v2);
  objc_msgSend_clearCorrectives(self, v5, v6, v7);

  free(self->_weights);
  v8.receiver = self;
  v8.super_class = VFXMorpher;
  [(VFXMorpher *)&v8 dealloc];
}

- (void)setName:(id)a3
{
  name = self->_name;
  if (a3 | name)
  {
    if ((objc_msgSend_isEqual_(a3, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(a3, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2F9F98;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = a3;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)name
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

- (void)setIdentifier:(id)a3
{
  v5 = objc_msgSend___CFObject(self, a2, a3, v3);

  sub_1AF16CD6C(v5, a3);
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
        sub_1AFDF4558(v22, v23, v24, v25, v26, v27, v28, v29);
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

    if ((*(self + 28) & 1) == 0)
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
    v18[2] = sub_1AF2FA3E0;
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
      sub_1AFDF4BA4(self, v17);
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v23, MEMORY[0x1E69E9820], 3221225472, sub_1AF2FA764, &unk_1E7A7E1D0, self, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  }

  else
  {
    v20 = v19;
    v21 = objc_msgSend_timingFunction(VFXTransaction, v16, v17, v18);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, self, v24, v23[0], v23[1], v23[2], v23[3], v23[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2FA754, &unk_1E7A7E2E8, self, v21, *&v20);
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
    v22[2] = sub_1AF2FA854;
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
      v24[2] = sub_1AF2FA9F0;
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
    v25[2] = sub_1AF2FAE10;
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
  v10[2] = sub_1AF2FAF54;
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
  v4[2] = sub_1AF2FB020;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)a3
{
  v5 = objc_msgSend__vfxBindings(a3, a2, a3, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2FB0CC;
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
    v10[2] = sub_1AF2FB204;
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
  v5[2] = sub_1AF2FB340;
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

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  morpher = self->_morpher;
  if (!morpher)
  {
    goto LABEL_32;
  }

  self->_unifyNormal = sub_1AF1B5264(self->_morpher) ^ 1;
  self->_useSparseTargets = sub_1AF1B58F8(morpher);
  v8 = sub_1AF1B4CD4(morpher);
  if (v8)
  {
    v9 = v8;

    objc_msgSend_clearInBetweens(self, v10, v11, v12);
    objc_msgSend_clearCorrectives(self, v13, v14, v15);
    self->_mainTargets = sub_1AF2FB880(v9);
    Count = CFArrayGetCount(v9);
    v17 = Count < 1;
    if (Count >= 1)
    {
      v18 = Count;
      self->_weightCount = Count;
      v19 = 0;
      self->_weights = malloc_type_realloc(self->_weights, 4 * Count, 0x100004052888210uLL);
      do
      {
        self->_weights[v19] = sub_1AF1B4E7C(morpher, v19);
        ++v19;
      }

      while (v18 != v19);
    }

    CFRelease(v9);
  }

  else
  {
    v17 = 1;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  sub_1AF1B4434(morpher, &v95);
  v20 = DWORD1(v95);
  if (DWORD1(v95))
  {
    v21 = (v95 + DWORD1(v95));
    v22 = sub_1AF15B294(morpher);
    self->_mainTargetsAndInBetweens = sub_1AF2FBA68(v22, 0, v21, v23);
    v24 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_inBetweenCounts = objc_msgSend_initWithCapacity_(v24, v25, v95, v26);
    if (v95)
    {
      v29 = 0;
      do
      {
        inBetweenCounts = self->_inBetweenCounts;
        v31 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v27, *(*(&v95 + 1) + 4 * v29), v28);
        objc_msgSend_addObject_(inBetweenCounts, v32, v31, v33);
        ++v29;
      }

      while (v29 < v95);
    }

    v34 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_inBetweenInfluenceWeights = objc_msgSend_initWithCapacity_(v34, v35, DWORD1(v95), v36);
    v20 = DWORD1(v95);
    if (DWORD1(v95))
    {
      v41 = 0;
      do
      {
        LODWORD(v40) = *(v96 + 4 * v41);
        inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;
        v43 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v37, v38, v39, v40);
        objc_msgSend_addObject_(inBetweenInfluenceWeights, v44, v43, v45);
        ++v41;
        v20 = DWORD1(v95);
      }

      while (v41 < DWORD1(v95));
    }
  }

  if (DWORD2(v96))
  {
    v46 = (v20 + v95);
    v47 = (DWORD2(v98) + DWORD2(v96));
    v48 = sub_1AF15B294(morpher);
    self->_correctivesAndInBetweens = sub_1AF2FBA68(v48, v46, v47, v49);
    v50 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_correctiveDriverCounts = objc_msgSend_initWithCapacity_(v50, v51, DWORD2(v96), v52);
    if (DWORD2(v96))
    {
      v55 = 0;
      do
      {
        correctiveDriverCounts = self->_correctiveDriverCounts;
        v57 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v53, *(v97 + 4 * v55), v54);
        objc_msgSend_addObject_(correctiveDriverCounts, v58, v57, v59);
        ++v55;
      }

      while (v55 < DWORD2(v96));
    }

    v60 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_correctiveDriverIndices = objc_msgSend_initWithCapacity_(v60, v61, DWORD2(v97), v62);
    if (DWORD2(v97))
    {
      v65 = 0;
      do
      {
        correctiveDriverIndices = self->_correctiveDriverIndices;
        v67 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v63, *(v98 + 4 * v65), v64);
        objc_msgSend_addObject_(correctiveDriverIndices, v68, v67, v69);
        ++v65;
      }

      while (v65 < DWORD2(v97));
    }

    if (DWORD2(v98))
    {
      v70 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_correctiveInBetweenCounts = objc_msgSend_initWithCapacity_(v70, v71, DWORD2(v96), v72);
      if (DWORD2(v96))
      {
        v75 = 0;
        do
        {
          correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
          v77 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v73, *(v99 + 4 * v75), v74);
          objc_msgSend_addObject_(correctiveInBetweenCounts, v78, v77, v79);
          ++v75;
        }

        while (v75 < DWORD2(v96));
      }

      v80 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_correctiveInBetweenInfluenceWeights = objc_msgSend_initWithCapacity_(v80, v81, DWORD2(v98), v82);
      if (DWORD2(v98))
      {
        v87 = 0;
        do
        {
          LODWORD(v86) = *(*(&v99 + 1) + 4 * v87);
          correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;
          v89 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v83, v84, v85, v86);
          objc_msgSend_addObject_(correctiveInBetweenInfluenceWeights, v90, v89, v91);
          ++v87;
        }

        while (v87 < DWORD2(v98));
      }
    }
  }

  self->_calculationMode = sub_1AF1B4CCC(morpher) == 1;
  if (v17)
  {
LABEL_32:
    free(self->_weights);
    self->_weightCount = 0;
  }

  objc_msgSend__updateEntityModelFromPresentation(self, v92, v93, v94);
  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2FBC98;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)presentationMorpher
{
  v2 = self;
  if ((*(self + 28) & 1) == 0)
  {
    v3 = [VFXMorpher alloc];
    inited = objc_msgSend_initPresentationMorpherWithMorphRef_(v3, v4, v2[1], v5);

    return inited;
  }

  return self;
}

+ (id)presentationMorpherWithMorpherRef:(__CFXMorpher *)a3
{
  v3 = sub_1AF15B294(a3);
  v4 = [VFXMorpher alloc];
  inited = objc_msgSend_initPresentationMorpherWithMorphRef_(v4, v5, v3, v6);

  return inited;
}

- (void)setTargets:(id)a3
{
  objc_msgSend_clearInBetweens(self, a2, a3, v3);
  objc_msgSend_clearCorrectives(self, v6, v7, v8);

  self->_mainTargets = objc_msgSend_copy(a3, v9, v10, v11);
  self->_mainTargetNamesToIndexes = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF2FBE10;
  v13[3] = &unk_1E7A7E220;
  v13[4] = self;
  v13[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v13);
}

- (NSArray)targets
{
  if ((*(self + 28) & 1) == 0)
  {
    if (objc_msgSend_count(self->_mainTargets, a2, v2, v3))
    {
      return self->_mainTargets;
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  morpher = self->_morpher;
  if (!morpher || (v9 = sub_1AF1B4CD4(morpher)) == 0)
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = v9;
  v11 = sub_1AF2FB880(v9);
  CFRelease(v10);
  if (v7)
  {
LABEL_11:
    sub_1AF1CEA9C(v7);
  }

LABEL_12:
  result = v11;
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (NSArray)weights
{
  if (*(self + 28))
  {
    v20 = objc_msgSend_worldRef(self, a2, v2, v3);
    v21 = v20;
    if (v20)
    {
      sub_1AF1CEA20(v20);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v23 = sub_1AF1B4DEC(self->_morpher);
      v26 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v24, v23, v25);
      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          *&v28 = sub_1AF1B4E7C(morpher, i);
          v32 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v29, v30, v31, v28);
          objc_msgSend_addObject_(v26, v33, v32, v34);
        }
      }

      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (!v21)
      {
LABEL_17:
        if (v26)
        {
          return v26;
        }

        else
        {
          return MEMORY[0x1E695E0F0];
        }
      }
    }

    sub_1AF1CEA9C(v21);
    goto LABEL_17;
  }

  v5 = objc_msgSend_count(self->_mainTargets, a2, v2, v3);
  v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v6, self->_weightCount, v7);
  weightCount = self->_weightCount;
  if (weightCount)
  {
    for (j = 0; j < weightCount; ++j)
    {
      *&v12 = self->_weights[j];
      v15 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v8, v9, v10, v12);
      objc_msgSend_addObject_(v11, v16, v15, v17);
      weightCount = self->_weightCount;
    }
  }

  v18 = v5 > weightCount;
  v19 = v5 - weightCount;
  if (v18)
  {
    do
    {
      objc_msgSend_addObject_(v11, v8, &unk_1F25D4798, v10);
      --v19;
    }

    while (v19);
  }

  return v11;
}

- (void)setWeights:(id)a3
{
  v6 = objc_msgSend_count(a3, a2, a3, v3);
  self->_weightCount = v6;
  weights = self->_weights;
  if (v6)
  {
    self->_weights = malloc_type_realloc(weights, 4 * v6, 0x100004052888210uLL);
    if (self->_weightCount)
    {
      v10 = 0;
      do
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(a3, v8, v10, v9);
        objc_msgSend_floatValue(v11, v12, v13, v14);
        weightCount = self->_weightCount;
        self->_weights[v10++] = v16;
      }

      while (v10 < weightCount);
    }
  }

  else
  {
    free(weights);
    self->_weights = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF2FC2C8;
  v17[3] = &unk_1E7A7E220;
  v17[4] = self;
  v17[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v17);
}

- (int64_t)_weightIndexForTargetNamed:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  mainTargetNamesToIndexes = self->_mainTargetNamesToIndexes;
  if (!mainTargetNamesToIndexes)
  {
    v37 = a3;
    v6 = objc_msgSend_targets(self, a2, a3, v3);
    v7 = MEMORY[0x1E695DF90];
    v11 = objc_msgSend_count(v6, v8, v9, v10);
    v14 = objc_msgSend_dictionaryWithCapacity_(v7, v12, v11, v13);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v38, v42, 16);
    if (v16)
    {
      v20 = v16;
      v21 = 0;
      v22 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v6);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          if (objc_msgSend_name(v24, v17, v18, v19))
          {
            v25 = v21 + 1;
            v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, v21, v19);
            v30 = objc_msgSend_name(v24, v27, v28, v29);
            objc_msgSend_setObject_forKeyedSubscript_(v14, v31, v26, v30);
            v21 = v25;
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v17, &v38, v42, 16);
      }

      while (v20);
    }

    mainTargetNamesToIndexes = objc_msgSend_copy(v14, v17, v18, v19);
    self->_mainTargetNamesToIndexes = mainTargetNamesToIndexes;
    a3 = v37;
  }

  v32 = objc_msgSend_objectForKeyedSubscript_(mainTargetNamesToIndexes, a2, a3, v3);
  if (v32)
  {
    return objc_msgSend_integerValue(v32, v33, v34, v35);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setWeight:(float)a3 forTargetNamed:(id)a4
{
  v7 = objc_msgSend__weightIndexForTargetNamed_(self, a2, a4, v4);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *&v10 = a3;

    objc_msgSend_setWeight_forTargetAtIndex_(self, v8, v7, v9, v10);
  }
}

- (float)weightForTargetNamed:(id)a3
{
  v5 = objc_msgSend__weightIndexForTargetNamed_(self, a2, a3, v3);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  objc_msgSend_weightForTargetAtIndex_(self, v6, v5, v7);
  return result;
}

+ (id)weightIndexStringForIndex:(int64_t)a3
{
  if (qword_1EB658CA8 != -1)
  {
    sub_1AFDF7178();
  }

  if (a3 > 127)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"weights[%d]", v3, a3);
  }

  else
  {
    return qword_1EB6588A8[a3];
  }
}

- (void)setWeight:(float)a3 forTargetAtIndex:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(self + 28))
  {
    v15 = objc_msgSend_morphRef(self, a2, a4, v4);
    if (v15)
    {

      sub_1AF1B4F44(v15, a4, a3);
    }
  }

  else
  {
    v8 = objc_msgSend_count(self->_mainTargets, a2, a4, v4);
    if (v8 <= a4)
    {
      v16 = v8;
      v17 = sub_1AF0D5194();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v21 = self;
        v22 = 1024;
        v23 = a4;
        v24 = 1024;
        v25 = v16;
        _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: %@ setWeight:forTargetAtIndex:%d - index out of bounds (%d)", buf, 0x18u);
      }
    }

    else
    {
      if (self->_weightCount <= a4)
      {
        v11 = malloc_type_realloc(self->_weights, 4 * (a4 + 1), 0x100004052888210uLL);
        self->_weights = v11;
        bzero(&v11[self->_weightCount], 4 * (a4 + 1 - self->_weightCount));
        self->_weightCount = a4 + 1;
      }

      weights = self->_weights;
      if (weights[a4] != a3)
      {
        weights[a4] = a3;
        v13 = objc_msgSend_weightIndexStringForIndex_(VFXMorpher, v9, a4, v10);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1AF2FC884;
        v18[3] = &unk_1E7A7EB88;
        v18[4] = self;
        v18[5] = a4;
        v19 = a3;
        objc_msgSend_postCommandWithObject_key_subscriptIndex_derivedKeyPath_applyBlock_(VFXTransaction, v14, self, @"weights", a4, v13, v18);
      }
    }
  }
}

- (float)weightForTargetAtIndex:(unint64_t)a3
{
  if (*(self + 28))
  {
    v7 = objc_msgSend_worldRef(self, a2, a3, v3);
    v8 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v6 = sub_1AF1B4E7C(morpher, a3);
      if (!v8)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0.0;
      if (!v8)
      {
        return v6;
      }
    }

    sub_1AF1CEA9C(v8);
    return v6;
  }

  v6 = 0.0;
  if (self->_weightCount > a3)
  {
    return self->_weights[a3];
  }

  return v6;
}

- (float)_presentationWeightForTargetAtIndex:(unint64_t)a3 token:(const void *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  morpher = self->_morpher;
  v8 = sub_1AF1C3FAC(morpher);
  if (*a4 != v8)
  {
    v9 = v8;
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AF16CDEC(morpher);
      v13 = objc_opt_class();
      v14 = sub_1AF16CDEC(morpher);
      v15 = sub_1AF16CDEC(v9);
      v16 = sub_1AF16CDEC(*a4);
      v17 = *a4;
      v18 = 136316930;
      v19 = "token->worldRef == worldRef";
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 2048;
      v25 = morpher;
      v26 = 2048;
      v27 = v15;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      _os_log_fault_impl(&dword_1AF0CE000, v10, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Presentation instance query on <%@ %p> (ref: %p) targets the wrong world %p (ref: %p) – has token for %p (%p)", &v18, 0x52u);
    }
  }

  v11 = self->_morpher;
  if (v11)
  {
    return sub_1AF1B4E7C(v11, a3);
  }

  else
  {
    return 0.0;
  }
}

- (id)targetsAndInBetween
{
  result = self->_mainTargetsAndInBetweens;
  if (!result)
  {
    return self->_mainTargets;
  }

  return result;
}

- (id)correctives
{
  v37 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(self->_correctivesAndInBetweens, a2, v2, v3))
  {
    return 0;
  }

  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, v5, v6, v7))
  {
    return self->_correctivesAndInBetweens;
  }

  v11 = MEMORY[0x1E695DF70];
  v12 = objc_msgSend_count(self->_correctiveDriverCounts, v8, v9, v10);
  v15 = objc_msgSend_arrayWithCapacity_(v11, v13, v12, v14);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(correctiveInBetweenCounts, v17, &v32, v36, 16);
  if (v18)
  {
    v22 = v18;
    v23 = 0;
    v24 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(correctiveInBetweenCounts);
        }

        v23 += objc_msgSend_unsignedIntegerValue(*(*(&v32 + 1) + 8 * i), v19, v20, v21);
        v28 = objc_msgSend_objectAtIndexedSubscript_(self->_correctivesAndInBetweens, v26, v23 - 1, v27);
        objc_msgSend_addObject_(v15, v29, v28, v30);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(correctiveInBetweenCounts, v19, &v32, v36, 16);
    }

    while (v22);
  }

  return v15;
}

- (void)_updateTargetsAndInBetween:(id)a3
{
  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  v7 = objc_msgSend_count(mainTargetsAndInBetweens, a2, a3, v3);
  if (v7 != objc_msgSend_count(a3, v8, v9, v10))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF718C(v12, v11, v13, v14, v15, v16, v17, v18);
    }
  }

  objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(self, v11, a3, self->_inBetweenCounts, self->_inBetweenInfluenceWeights, self->_correctivesAndInBetweens, self->_correctiveDriverCounts, self->_correctiveDriverIndices, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
}

- (void)_updateCorrectivesAndInBetween:(id)a3
{
  v6 = objc_msgSend_count(self->_correctivesAndInBetweens, a2, a3, v3);
  if (v6 != objc_msgSend_count(a3, v7, v8, v9))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7204(v11, v10, v12, v13, v14, v15, v16, v17);
    }
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(self, v10, mainTargetsAndInBetweens, self->_inBetweenCounts, self->_inBetweenInfluenceWeights, a3, self->_correctiveDriverCounts, self->_correctiveDriverIndices, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
}

- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_inBetweenCounts, a2, a3, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v6, a3, v7);
  v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
  v15 = v12 - 1;
  if (v12 == 1)
  {
    return 0;
  }

  v16 = 0;
  if (a3)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v13, v17, v14);
      v16 += objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21);
      ++v17;
    }

    while (a3 != v17);
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;

  return objc_msgSend_subarrayWithRange_(mainTargetsAndInBetweens, v13, v16, v15);
}

- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_inBetweenCounts, a2, a3, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v6, a3, v7);
  v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
  v15 = v12 - 1;
  if (v12 == 1)
  {
    return 0;
  }

  v16 = 0;
  if (a3)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v13, v17, v14);
      v16 = v16 + objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21) - 1;
      ++v17;
    }

    while (a3 != v17);
  }

  inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;

  return objc_msgSend_subarrayWithRange_(inBetweenInfluenceWeights, v13, v16, v15);
}

- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_correctiveDriverCounts, a2, a3, v3))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v6, a3, v7);

  return objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
}

- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_correctiveDriverCounts, a2, a3, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v6, a3, v7);
  v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
  if (!objc_msgSend_count(self->_correctiveDriverIndices, v13, v14, v15))
  {
    return 0;
  }

  v18 = 0;
  if (a3)
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v16, v19, v17);
      v18 += objc_msgSend_unsignedIntegerValue(v20, v21, v22, v23);
      ++v19;
    }

    while (a3 != v19);
  }

  correctiveDriverIndices = self->_correctiveDriverIndices;

  return objc_msgSend_subarrayWithRange_(correctiveDriverIndices, v16, v18, v12);
}

- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, a2, a3, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v6, a3, v7);
  v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
  v15 = v12 - 1;
  if (v12 == 1)
  {
    return 0;
  }

  v16 = 0;
  if (a3)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v13, v17, v14);
      v16 += objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21);
      ++v17;
    }

    while (a3 != v17);
  }

  correctivesAndInBetweens = self->_correctivesAndInBetweens;

  return objc_msgSend_subarrayWithRange_(correctivesAndInBetweens, v13, v16, v15);
}

- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, a2, a3, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v6, a3, v7);
  v12 = objc_msgSend_unsignedIntegerValue(v8, v9, v10, v11);
  v15 = v12 - 1;
  if (v12 == 1)
  {
    return 0;
  }

  v16 = 0;
  if (a3)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v13, v17, v14);
      v16 = v16 + objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21) - 1;
      ++v17;
    }

    while (a3 != v17);
  }

  correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;

  return objc_msgSend_subarrayWithRange_(correctiveInBetweenInfluenceWeights, v13, v16, v15);
}

- (void)setTargetsAndInBetweens:(id)a3 inBetweenCounts:(id)a4 inBetweenWeights:(id)a5 correctives:(id)a6 driverCounts:(id)a7 driverIndices:(id)a8 inBetweenCounts:(id)a9 inBetweenWeights:(id)a10
{
  v17 = a9;
  v126 = *MEMORY[0x1E69E9840];
  v121 = a4;
  v122 = a3;
  v119 = a6;
  v120 = a5;
  v18 = objc_msgSend_count(a4, a2, a3, a4);
  v22 = objc_msgSend_count(a6, v19, v20, v21);
  v28 = v22;
  if (v22)
  {
    v110 = a8;
    v109 = v22 != 0;
    v29 = objc_msgSend_count(v17, v23, v24, v25) != 0;
    if (!v18)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  if (v18)
  {
    v110 = a8;
    v109 = v22 != 0;
    v29 = 0;
LABEL_29:
    if (sub_1AFDF6ADC(self, a3, a4, a5, v26, v27))
    {
      v105 = v28;
      v107 = a7;
      sub_1AFDF6CFC(self, &v122, &v121, &v120);
      v106 = v29;
      if (v29)
      {
        sub_1AFDF6CFC(self, &v119, &a9, &a10);
      }

      v74 = objc_alloc(MEMORY[0x1E695DF70]);
      v75 = v121;
      v79 = objc_msgSend_count(v121, v76, v77, v78);
      v82 = objc_msgSend_initWithCapacity_(v74, v80, v79, v81);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v83, &v115, v125, 16);
      v31 = v122;
      if (v84)
      {
        v88 = v84;
        v89 = 0;
        v90 = *v116;
        do
        {
          for (i = 0; i != v88; ++i)
          {
            if (*v116 != v90)
            {
              objc_enumerationMutation(v75);
            }

            v89 += objc_msgSend_unsignedIntegerValue(*(*(&v115 + 1) + 8 * i), v85, v86, v87);
            if (v89 - 1 >= objc_msgSend_count(v31, v92, v93, v94))
            {
              v97 = sub_1AF0D5194();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDF727C(buf, &v124, v97);
              }
            }

            v98 = objc_msgSend_objectAtIndexedSubscript_(v31, v95, v89 - 1, v96);
            objc_msgSend_addObject_(v82, v99, v98, v100);
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v85, &v115, v125, 16);
        }

        while (v88);
      }

      self->_mainTargets = v82;
      mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
      if (mainTargetsAndInBetweens != v31)
      {

        self->_mainTargetsAndInBetweens = objc_msgSend_copy(v31, v102, v103, v104);
      }

      v108 = 1;
      a7 = v107;
      LOBYTE(v29) = v106;
      v28 = v105;
      goto LABEL_7;
    }

    v73 = sub_1AF0D5194();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AF0CE000, v73, OS_LOG_TYPE_ERROR, "Error: invalid in-between buffer, ignoring in-betweens", buf, 2u);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_3:
    if (!v29)
    {
LABEL_4:
      mainTargets = self->_mainTargets;
      v31 = v122;
      if (mainTargets != v122)
      {

        self->_mainTargets = objc_msgSend_copy(v31, v32, v33, v34);
      }

      v108 = 0;
      self->_mainTargetsAndInBetweens = 0;
LABEL_7:

      self->_mainTargetNamesToIndexes = 0;
      free(self->_weights);
      self->_weightCount = 0;
      self->_weights = 0;
      inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;
      v38 = v120;
      if (inBetweenInfluenceWeights != v120)
      {

        self->_inBetweenInfluenceWeights = objc_msgSend_copy(v38, v39, v40, v41);
      }

      inBetweenCounts = self->_inBetweenCounts;
      v43 = v121;
      if (inBetweenCounts != v121)
      {

        self->_inBetweenCounts = objc_msgSend_copy(v43, v44, v45, v46);
      }

      correctivesAndInBetweens = self->_correctivesAndInBetweens;
      v48 = v119;
      if (correctivesAndInBetweens != v119)
      {

        self->_correctivesAndInBetweens = objc_msgSend_copy(v48, v49, v50, v51);
      }

      correctiveDriverCounts = self->_correctiveDriverCounts;
      if (correctiveDriverCounts != a7)
      {

        self->_correctiveDriverCounts = objc_msgSend_copy(a7, v53, v54, v55);
      }

      correctiveDriverIndices = self->_correctiveDriverIndices;
      if (correctiveDriverIndices != v110)
      {

        self->_correctiveDriverIndices = objc_msgSend_copy(v110, v57, v58, v59);
      }

      v60 = a7;
      correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
      v62 = a9;
      if (correctiveInBetweenCounts != a9)
      {

        self->_correctiveInBetweenCounts = objc_msgSend_copy(v62, v63, v64, v65);
      }

      correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;
      v67 = a10;
      if (correctiveInBetweenInfluenceWeights != a10)
      {

        self->_correctiveInBetweenInfluenceWeights = objc_msgSend_copy(v67, v68, v69, v70);
      }

      if (v28)
      {
        v31 = objc_msgSend_arrayByAddingObjectsFromArray_(v31, v35, v48, v36);
      }

      v71 = sub_1AF2FBE8C(v31);
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = sub_1AF2FD708;
      v111[3] = &unk_1E7A7EBB0;
      v112 = v108;
      v111[4] = v43;
      v111[5] = v38;
      v113 = v109;
      v111[6] = v122;
      v111[7] = v60;
      v114 = v29;
      v111[8] = v110;
      v111[9] = v62;
      v111[10] = v67;
      v111[11] = self;
      v111[12] = v71;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v72, self, v111);

      return;
    }

LABEL_32:
    sub_1AFDF6CFC(self, &v119, &a9, &a10);
    goto LABEL_4;
  }

  objc_msgSend_setTargets_(self, v23, a3, v25);
}

- (void)setCalculationMode:(int64_t)a3
{
  if (self->_calculationMode != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_calculationMode = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2FDB64;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)calculationMode
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v7 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v5 = sub_1AF1B4CCC(morpher) == 1;
      if (!v7)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
      if (!v7)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v7);
    return v5;
  }

  return self->_calculationMode;
}

- (void)setUnifiesNormals:(BOOL)a3
{
  if (self->_unifyNormal != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_unifyNormal = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2FDCCC;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)weightIncrementalThreshold
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    v7 = sub_1AF1B5C38(self->_morpher);
    sub_1AF1CEA9C(v6);
    return v7;
  }

  else
  {
    morpher = self->_morpher;

    return sub_1AF1B5C38(morpher);
  }
}

- (void)setWeightIncrementalThreshold:(float)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FDE3C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)convertToAdditiveWithBaseGeometry:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FDEF4;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)convertToSparseWithBaseGeometry:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FE048;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
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
      v9[2] = sub_1AF2FE294;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2FE2F4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_begin(VFXTransaction, v5, v6, v7);
  objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
  v4[169] = self->_useSparseTargets;
  inBetweenCounts = self->_inBetweenCounts;
  if (inBetweenCounts || self->_correctiveDriverCounts)
  {
    mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
    if (!mainTargetsAndInBetweens)
    {
      mainTargetsAndInBetweens = self->_mainTargets;
    }

    objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v4, v10, mainTargetsAndInBetweens, inBetweenCounts, self->_inBetweenInfluenceWeights, self->_correctivesAndInBetweens, self->_correctiveDriverCounts, self->_correctiveDriverIndices, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
  }

  else
  {
    v43 = objc_msgSend_targets(self, v10, v11, 0);
    objc_msgSend_setTargets_(v4, v44, v43, v45);
  }

  if (self->_weightCount)
  {
    v17 = 0;
    do
    {
      objc_msgSend_weightForTargetAtIndex_(self, v14, v17, v16);
      objc_msgSend_setWeight_forTargetAtIndex_(v4, v18, v17++, v19);
    }

    while (v17 < self->_weightCount);
  }

  v20 = objc_msgSend_calculationMode(self, v14, v15, v16);
  objc_msgSend_setCalculationMode_(v4, v21, v20, v22);
  v26 = objc_msgSend_name(self, v23, v24, v25);
  objc_msgSend_setName_(v4, v27, v26, v28);
  v32 = objc_msgSend_unifiesNormals(self, v29, v30, v31);
  objc_msgSend_setUnifiesNormals_(v4, v33, v32, v34);
  objc_msgSend__copyAnimationsFrom_(v4, v35, self, v36);
  objc_msgSend__copyBindingsFrom_(v4, v37, self, v38);
  objc_msgSend_commitImmediate(VFXTransaction, v39, v40, v41);
  return v4;
}

- (void)_customDecodingOfVFXMorpher:(id)a3
{
  v4 = sub_1AF1B43A4();
  self->_morpher = v4;
  if (v4)
  {

    sub_1AF16CDFC(v4, self);
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if (objc_msgSend_rangeOfString_(a3, a2, @"weights[", v3) || (v9 = v6, objc_msgSend_length(a3, v6, v7, v8) < 2) || (v12 = objc_msgSend_substringFromIndex_(a3, v10, v9, v11), v15 = objc_msgSend_rangeOfString_(v12, v13, @"]", v14), v15 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v36.receiver = self;
    v36.super_class = VFXMorpher;
    return [(VFXMorpher *)&v36 valueForUndefinedKey:a3];
  }

  else
  {
    v19 = objc_msgSend_substringToIndex_(v12, v16, v15, v17);
    if (objc_msgSend_length(v19, v20, v21, v22) >= 3 && objc_msgSend_characterAtIndex_(v19, v23, 0, v25) == 34)
    {
      v26 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v19, v23, @"", &stru_1F2575650);
      objc_msgSend_weightForTargetNamed_(self, v27, v26, v28);
    }

    else
    {
      v32 = objc_msgSend_integerValue(v19, v23, v24, v25);
      objc_msgSend_weightForTargetAtIndex_(self, v33, v32, v34);
    }

    v35 = MEMORY[0x1E696AD98];

    return objc_msgSend_numberWithFloat_(v35, v29, v30, v31);
  }
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if (objc_msgSend_rangeOfString_(a4, a2, @"weights[", a4) || (v10 = v7, objc_msgSend_length(a4, v7, v8, v9) < 2) || (v13 = objc_msgSend_substringFromIndex_(a4, v11, v10, v12), v16 = objc_msgSend_rangeOfString_(v13, v14, @"]", v15), v16 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v37.receiver = self;
    v37.super_class = VFXMorpher;
    [(VFXMorpher *)&v37 setValue:a3 forUndefinedKey:a4];
  }

  else
  {
    v19 = objc_msgSend_substringToIndex_(v13, v17, v16, v18);
    if (objc_msgSend_length(v19, v20, v21, v22) >= 3 && objc_msgSend_characterAtIndex_(v19, v23, 0, v25) == 34)
    {
      v26 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v19, v23, @"", &stru_1F2575650);
      objc_msgSend_floatValue(a3, v27, v28, v29);

      MEMORY[0x1EEE66B58](self, sel_setWeight_forTargetNamed_, v26, v30);
    }

    else
    {
      v31 = objc_msgSend_integerValue(v19, v23, v24, v25);
      objc_msgSend_floatValue(a3, v32, v33, v34);

      objc_msgSend_setWeight_forTargetAtIndex_(self, v35, v31, v36);
    }
  }
}

- (void)_customEncodingOfVFXMorpher:(id)a3
{
  v4 = sub_1AF1B4C94(self->_morpher);
  if (v4)
  {
    v5 = sub_1AF16CCC0(v4);
    if (v5)
    {

      objc_msgSend_encodeObject_forKey_(a3, v6, v5, @"weightID");
    }
  }
}

- (void)_didDecodeVFXMorpher:(id)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"weightID");
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AF1B4C94(self->_morpher);
    if (v9)
    {

      sub_1AF16CD6C(v9, v8);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, a3, v3);
  }

  objc_msgSend__customEncodingOfVFXMorpher_(self, a2, a3, v3);
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_calculationMode, @"calculationMode");
  objc_msgSend_encodeBool_forKey_(a3, v7, self->_useSparseTargets, @"useSparseTargets");
  if (self->_weightCount)
  {
    v11 = objc_msgSend_weights(self, v8, v9, v10);
    objc_msgSend_encodeObject_forKey_(a3, v12, v11, @"weights");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_msgSend_skipMorphTargets(a3, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  if (objc_msgSend_count(self->_inBetweenCounts, v13, v14, v15) && objc_msgSend_count(self->_inBetweenInfluenceWeights, v17, v18, v19))
  {
    if ((v16 & 1) == 0)
    {
      objc_msgSend_encodeObject_forKey_(a3, v17, self->_mainTargetsAndInBetweens, @"targetMeshes");
    }

    objc_msgSend_encodeObject_forKey_(a3, v17, self->_inBetweenCounts, @"inBetweenCounts");
    objc_msgSend_encodeObject_forKey_(a3, v20, self->_inBetweenInfluenceWeights, @"inBetweenInfluenceWeights");
  }

  else if ((v16 & 1) == 0)
  {
    objc_msgSend_encodeObject_forKey_(a3, v17, self->_mainTargets, @"targetMeshes");
  }

  if (objc_msgSend_count(self->_correctiveDriverCounts, v17, v18, v19) && objc_msgSend_count(self->_correctiveDriverIndices, v21, v22, v23))
  {
    if ((v16 & 1) == 0)
    {
      objc_msgSend_encodeObject_forKey_(a3, v21, self->_correctivesAndInBetweens, @"correctiveMeshes");
    }

    objc_msgSend_encodeObject_forKey_(a3, v21, self->_correctiveDriverCounts, @"correctiveDriverCounts");
    objc_msgSend_encodeObject_forKey_(a3, v24, self->_correctiveDriverIndices, @"correctiveDriverIndices");
    if (objc_msgSend_count(self->_correctiveInBetweenCounts, v25, v26, v27) && objc_msgSend_count(self->_correctiveInBetweenInfluenceWeights, v21, v28, v29))
    {
      objc_msgSend_encodeObject_forKey_(a3, v21, self->_correctiveInBetweenCounts, @"correctiveInBetweenCounts");
      objc_msgSend_encodeObject_forKey_(a3, v30, self->_correctiveInBetweenInfluenceWeights, @"correctiveInBetweenInfluenceWeights");
    }
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(a3, v21, name, @"name");
  }

  objc_msgSend_encodeBool_forKey_(a3, v21, !self->_unifyNormal, @"shouldMorphNormals");
  sub_1AF372440(a3, self, v32, v33);

  sub_1AF3728B4(a3, self, v34, v35);
}

- (VFXMorpher)initWithCoder:(id)a3
{
  v139 = *MEMORY[0x1E69E9840];
  v137.receiver = self;
  v137.super_class = VFXMorpher;
  v7 = [(VFXMorpher *)&v137 init];
  if (!v7)
  {
    return v7;
  }

  v8 = 0x1E7A77000uLL;
  v9 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v10, 1, v11);
  objc_msgSend__customDecodingOfVFXMorpher_(v7, v12, a3, v13);
  v7->_useSparseTargets = objc_msgSend_decodeBoolForKey_(a3, v14, @"useSparseTargets", v15);
  v18 = objc_msgSend_decodeIntegerForKey_(a3, v16, @"calculationMode", v17);
  objc_msgSend_setCalculationMode_(v7, v19, v18, v20);
  v21 = objc_opt_class();
  v23 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v22, v21, @"inBetweenCounts");
  v24 = objc_opt_class();
  v26 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v25, v24, @"inBetweenInfluenceWeights");
  if (v23 | v26)
  {
    v41 = v26;
    goto LABEL_16;
  }

  v129 = v9;
  v27 = objc_opt_class();
  v23 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v28, v27, @"channelTargetCounts");
  v29 = objc_opt_class();
  v31 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v30, v29, @"channelTargetWeights");
  if (!objc_msgSend_count(v23, v32, v33, v34) || !objc_msgSend_count(v31, v35, v36, v37))
  {
    v41 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  v41 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40);
  if (!objc_msgSend_count(v23, v42, v43, v44))
  {
LABEL_15:
    v9 = v129;
    goto LABEL_16;
  }

  v47 = 0;
  v48 = 0;
  do
  {
    v49 = objc_msgSend_objectAtIndexedSubscript_(v23, v45, v48, v46);
    v53 = objc_msgSend_unsignedIntegerValue(v49, v50, v51, v52);
    v57 = v53 - 1;
    if (v53 != 1)
    {
      v58 = v57 + v47;
      do
      {
        v59 = objc_msgSend_objectAtIndexedSubscript_(v31, v54, v47, v56);
        objc_msgSend_addObject_(v41, v60, v59, v61);
        ++v47;
        --v57;
      }

      while (v57);
      v47 = v58;
    }

    ++v47;
    ++v48;
  }

  while (v48 < objc_msgSend_count(v23, v54, v55, v56));
  v8 = 0x1E7A77000;
  v9 = v129;
LABEL_16:
  v62 = objc_opt_class();
  v132 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v63, v62, @"correctiveDriverCounts");
  v64 = objc_opt_class();
  objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v65, v64, @"correctiveDriverIndices");
  v66 = objc_opt_class();
  v68 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v67, v66, @"correctiveInBetweenCounts");
  v69 = objc_opt_class();
  v131 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v70, v69, @"correctiveInBetweenInfluenceWeights");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v74 = objc_msgSend_allTargetsFromAnimCodec(a3, v71, v72, v73)) == 0)
  {
    if (objc_msgSend_containsValueForKey_(a3, v71, @"targets", v73))
    {
      v93 = objc_opt_class();
      v95 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v94, v93, @"targets");
      v76 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v95, v96, &unk_1F24EC118, v97);
      v98 = objc_opt_class();
      v100 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v99, v98, @"correctives");
      v103 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v100, v101, &unk_1F24EC138, v102);
    }

    else
    {
      v104 = sub_1AF2C11F4();
      v76 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(a3, v105, v104, @"targetMeshes");
      v103 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(a3, v106, v104, @"correctiveMeshes");
    }

    v92 = v103;
    goto LABEL_36;
  }

  v76 = v74;
  if (objc_msgSend_count(v68, v71, v75, v73))
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v77, &v133, v138, 16);
    if (!v80)
    {
      v92 = 0;
      goto LABEL_36;
    }

    v84 = v80;
    v130 = v9;
    v85 = 0;
    v86 = *v134;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v134 != v86)
        {
          objc_enumerationMutation(v68);
        }

        v85 += objc_msgSend_unsignedIntegerValue(*(*(&v133 + 1) + 8 * i), v81, v82, v83);
      }

      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v81, &v133, v138, 16);
    }

    while (v84);
    if (v85)
    {
      goto LABEL_27;
    }

LABEL_33:
    v92 = 0;
    goto LABEL_34;
  }

  v130 = v9;
  v85 = objc_msgSend_count(v132, v77, v78, v79);
  if (!v85)
  {
    goto LABEL_33;
  }

LABEL_27:
  v88 = objc_msgSend_count(v76, v81, v82, v83) - v85;
  v90 = objc_msgSend_subarrayWithRange_(v76, v89, 0, v88);
  v92 = objc_msgSend_subarrayWithRange_(v76, v91, v88, v85);
  v76 = v90;
LABEL_34:
  v8 = 0x1E7A77000;
  v9 = v130;
LABEL_36:
  if (v23 | v92)
  {
    objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v7, v81, v76, v23, v41, v68, v131);
  }

  else
  {
    objc_msgSend_setTargets_(v7, v81, v76, v83);
  }

  v107 = objc_opt_class();
  v109 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v108, v107, @"weights");
  objc_msgSend_setWeights_(v7, v110, v109, v111);
  v112 = objc_opt_class();
  v114 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v113, v112, @"name");
  objc_msgSend_setName_(v7, v115, v114, v116);
  if (objc_msgSend_containsValueForKey_(a3, v117, @"shouldMorphNormals", v118))
  {
    v121 = objc_msgSend_decodeBoolForKey_(a3, v119, @"shouldMorphNormals", v120);
    objc_msgSend_setUnifiesNormals_(v7, v122, v121 ^ 1u, v123);
  }

  v7->_animationsLock._os_unfair_lock_opaque = 0;
  sub_1AF37249C(a3, v7);
  sub_1AF372B94(a3, v7);
  objc_msgSend__didDecodeVFXMorpher_(v7, v124, a3, v125);
  objc_msgSend_setImmediateMode_(*(v8 + 3192), v126, v9, v127);
  return v7;
}

+ (Class)VFXUID_classForElementOfArray:(id)a3
{
  if ((objc_msgSend_isEqualToString_(a3, a2, @"weights", v3) & 1) == 0 && (objc_msgSend_isEqualToString_(a3, v5, @"channelTargetWeights", v6) & 1) == 0 && !objc_msgSend_isEqualToString_(a3, v7, @"channelTargetCounts", v8))
  {
    return 0;
  }

  return objc_opt_class();
}

@end